//
// Created by Marco Siracusa on 9/6/19.
//

#include "ChunkOpsLoweringPass.hpp"

#include <llvm/IR/Instructions.h>
#include <llvm/IR/Operator.h>

struct ChunkCopy
{
   llvm::LoadInst* load_inst;
   llvm::BitCastOperator* load_bitcast_op;
   llvm::Value* loaded_ptr;
   llvm::StoreInst* store_inst;
   llvm::BitCastOperator* store_bitcast_op;
   llvm::Value* stored_ptr;
   llvm::Type* src_ty;
   llvm::Type* dest_ty;

   ChunkCopy(llvm::LoadInst* load_inst, llvm::BitCastOperator* load_bitcast_op, llvm::Value* loaded_ptr, llvm::StoreInst* store_inst, llvm::BitCastOperator* store_bitcast_op, llvm::Value* stored_ptr, llvm::Type* src_ty, llvm::Type* dest_ty)
       : load_inst(load_inst), load_bitcast_op(load_bitcast_op), loaded_ptr(loaded_ptr), store_inst(store_inst), store_bitcast_op(store_bitcast_op), stored_ptr(stored_ptr), src_ty(src_ty), dest_ty(dest_ty)
   {
   }
};

struct ChunkInit
{
   llvm::StoreInst* store_inst;
   llvm::BitCastOperator* store_bitcast_op;
   llvm::Value* stored_ptr;
   llvm::ConstantInt* stored_value;
   llvm::Type* src_ty;
   llvm::Type* dest_ty;

   ChunkInit(llvm::StoreInst* store_inst, llvm::BitCastOperator* store_bitcast_op, llvm::Value* stored_ptr, llvm::ConstantInt* stored_value, llvm::Type* src_ty, llvm::Type* dest_ty)
       : store_inst(store_inst), store_bitcast_op(store_bitcast_op), stored_ptr(stored_ptr), stored_value(stored_value), src_ty(src_ty), dest_ty(dest_ty)
   {
   }
};

void recursive_copy_lowering(llvm::Type* type, std::vector<unsigned long long> gepi_idxs, llvm::Value* load_ptr, llvm::Value* store_ptr, llvm::LoadInst* load_inst, llvm::StoreInst* store_inst)
{
   if(type->isAggregateType())
   {
      gepi_idxs.push_back(0);

      if(type->isStructTy())
      {
         for(unsigned long long idx = 0; idx < type->getStructNumElements(); ++idx)
         {
            gepi_idxs.back() = idx;
            recursive_copy_lowering(type->getStructElementType(idx), gepi_idxs, load_ptr, store_ptr, load_inst, store_inst);
         }
      }
      else if(type->isArrayTy())
      {
         for(unsigned long long idx = 0; idx < type->getArrayNumElements(); ++idx)
         {
            gepi_idxs.back() = idx;
            recursive_copy_lowering(type->getArrayElementType(), gepi_idxs, load_ptr, store_ptr, load_inst, store_inst);
         }
      }
      else
      {
         llvm::errs() << "ERR wrong type\n";
         exit(-1);
      }
   }
   else
   {
      std::string gepi_name = "ccgepi";
      std::vector<llvm::Value*> gepi_value_idxs;
      for(unsigned long long idx : gepi_idxs)
      {
         gepi_name += "." + std::to_string(idx);
         gepi_value_idxs.push_back(llvm::ConstantInt::get(llvm::IntegerType::get(load_ptr->getContext(), 32), idx));
      }

      llvm::GetElementPtrInst* load_gep_inst = llvm::GetElementPtrInst::Create(nullptr, load_ptr, gepi_value_idxs, gepi_name, load_inst);
      llvm::GetElementPtrInst* store_gep_inst = llvm::GetElementPtrInst::Create(nullptr, store_ptr, gepi_value_idxs, gepi_name, store_inst);

      llvm::LoadInst* lowered_load = new llvm::LoadInst(load_gep_inst, "ccload." + gepi_name, load_inst);
      llvm::StoreInst* lowered_store = new llvm::StoreInst(lowered_load, store_gep_inst, store_inst);
   }
}

void recursive_init_lowering(llvm::Type* type, llvm::ConstantInt* init_value, std::vector<unsigned long long> gepi_idxs, llvm::Value* store_ptr, llvm::StoreInst* store_inst, unsigned long long lo_bit, unsigned long long hi_bit)
{
   if(type->isAggregateType())
   {
      gepi_idxs.push_back(0);

      const llvm::DataLayout& DL = store_inst->getModule()->getDataLayout();

      if(type->isStructTy())
      {
         for(unsigned long long idx = 0; idx < type->getStructNumElements(); ++idx)
         {
            gepi_idxs.back() = idx;

            const llvm::StructLayout* struct_layout = DL.getStructLayout(llvm::dyn_cast<llvm::StructType>(type));

            const llvm::APInt& ap_val = init_value->getValue();

            unsigned long long el_lo_bit = lo_bit + struct_layout->getElementOffset(idx) * 8;
            unsigned long long el_hi_bit = (idx + 1 == type->getStructNumElements() ? hi_bit : lo_bit + struct_layout->getElementOffset(idx + 1) * 8);

            llvm::APInt ap_mask = llvm::APInt::getBitsSet(ap_val.getBitWidth(), el_lo_bit, el_hi_bit);
            llvm::APInt ap_el_val = ap_val & ap_mask;
            llvm::ConstantInt* el_init_value = llvm::dyn_cast<llvm::ConstantInt>(llvm::ConstantInt::get(init_value->getType(), ap_el_val));

            recursive_init_lowering(type->getStructElementType(idx), el_init_value, gepi_idxs, store_ptr, store_inst, el_lo_bit, el_hi_bit);
         }
      }
      else if(type->isArrayTy())
      {
         unsigned long long el_bitwidth = DL.getTypeSizeInBits(type->getArrayElementType());
         unsigned long long el_offset = lo_bit;

         for(unsigned long long idx = 0; idx < type->getArrayNumElements(); ++idx)
         {
            gepi_idxs.back() = idx;

            const llvm::APInt& ap_val = init_value->getValue();

            unsigned long long el_lo_bit = el_offset;
            el_offset += el_bitwidth;
            unsigned long long el_hi_bit = el_offset;

            llvm::APInt ap_mask = llvm::APInt::getBitsSet(ap_val.getBitWidth(), el_lo_bit, el_hi_bit);
            llvm::APInt ap_el_val = ap_val & ap_mask;
            llvm::ConstantInt* el_init_value = llvm::dyn_cast<llvm::ConstantInt>(llvm::ConstantInt::get(init_value->getType(), ap_el_val));

            recursive_init_lowering(type->getArrayElementType(), el_init_value, gepi_idxs, store_ptr, store_inst, el_lo_bit, el_hi_bit);
         }
      }
      else
      {
         llvm::errs() << "ERR wrong type\n";
         exit(-1);
      }
   }
   else
   {
      std::string gepi_name = "ccgepi";
      std::vector<llvm::Value*> gepi_value_idxs;
      for(unsigned long long idx : gepi_idxs)
      {
         gepi_name += "." + std::to_string(idx);
         gepi_value_idxs.push_back(llvm::ConstantInt::get(llvm::IntegerType::get(store_ptr->getContext(), 32), idx));
      }

      llvm::GetElementPtrInst* store_gep_inst = llvm::GetElementPtrInst::Create(nullptr, store_ptr, gepi_value_idxs, gepi_name, store_inst);

      llvm::APInt cast_ap_int = llvm::APInt(store_gep_inst->getType()->getPointerElementType()->getIntegerBitWidth(), init_value->getValue().getSExtValue());
      llvm::Constant* cast_init_val = llvm::ConstantInt::get(store_gep_inst->getType()->getPointerElementType(), cast_ap_int);
      llvm::StoreInst* lowered_store = new llvm::StoreInst(cast_init_val, store_gep_inst, store_inst);
   }
}

void lower_chunk_copy(const ChunkCopy& chunk_copy)
{
   recursive_copy_lowering(chunk_copy.src_ty->getPointerElementType(), std::vector<unsigned long long>(1, 0), chunk_copy.loaded_ptr, chunk_copy.stored_ptr, chunk_copy.load_inst, chunk_copy.store_inst);

   chunk_copy.store_inst->eraseFromParent();
   if(llvm::BitCastInst* store_bitcast = llvm::dyn_cast<llvm::BitCastInst>(chunk_copy.store_bitcast_op))
   {
      store_bitcast->eraseFromParent();
   }
   chunk_copy.load_inst->eraseFromParent();
   if(llvm::BitCastInst* load_bitcast = llvm::dyn_cast<llvm::BitCastInst>(chunk_copy.load_bitcast_op))
   {
      load_bitcast->eraseFromParent();
   }
}

void lower_chunk_init(const ChunkInit& chunk_init)
{
   const llvm::DataLayout& DL = chunk_init.store_inst->getModule()->getDataLayout();
   unsigned long long lo_bit = 0;
   unsigned long long hi_bit = DL.getTypeSizeInBits(chunk_init.src_ty->getPointerElementType());
   recursive_init_lowering(chunk_init.src_ty->getPointerElementType(), chunk_init.stored_value, std::vector<unsigned long long>(1, 0), chunk_init.stored_ptr, chunk_init.store_inst, lo_bit, hi_bit);

   chunk_init.store_inst->eraseFromParent();
   if(llvm::BitCastInst* store_bitcast = llvm::dyn_cast<llvm::BitCastInst>(chunk_init.store_bitcast_op))
   {
      store_bitcast->eraseFromParent();
   }
}

bool ChunkOpsLoweringPass::runOnFunction(llvm::Function& function)
{
   const llvm::DataLayout& DL = function.getParent()->getDataLayout();

   if(!DL.isLittleEndian())
   {
      return false;
   }

   std::vector<ChunkCopy> chunk_copy_vec;
   std::vector<ChunkInit> chunk_init_vec;

   for(llvm::BasicBlock& bb : function)
   {
      for(llvm::Instruction& i : bb)
      {
         if(llvm::BitCastOperator* store_bitcast_op = llvm::dyn_cast<llvm::BitCastOperator>(&i))
         {
            if(store_bitcast_op->hasOneUse())
            {
               llvm::User* bitcast_single_user = store_bitcast_op->use_begin()->getUser();

               if(llvm::StoreInst* store_inst = llvm::dyn_cast<llvm::StoreInst>(bitcast_single_user))
               {
                  if(llvm::ConstantInt* constant_store_val = llvm::dyn_cast<llvm::ConstantInt>(store_inst->getValueOperand()))
                  {
                     llvm::Type* src_ty = store_bitcast_op->getSrcTy();
                     llvm::Type* dest_ty = store_bitcast_op->getDestTy();
                     chunk_init_vec.push_back(ChunkInit(store_inst, store_bitcast_op, store_bitcast_op->getOperand(0), constant_store_val, src_ty, dest_ty));
                  }
                  else if(llvm::LoadInst* load_inst = llvm::dyn_cast<llvm::LoadInst>(store_inst->getValueOperand()))
                  {
                     if(load_inst->hasOneUse())
                     {
                        if(llvm::BitCastOperator* load_bitcast_op = llvm::dyn_cast<llvm::BitCastOperator>(load_inst->getPointerOperand()))
                        {
                           if(load_bitcast_op->hasOneUse())
                           {
                              if(load_bitcast_op->getSrcTy() == store_bitcast_op->getSrcTy())
                              {
                                 llvm::Type* src_ty = load_bitcast_op->getSrcTy();

                                 if(load_bitcast_op->getDestTy() == store_bitcast_op->getDestTy())
                                 {
                                    llvm::Type* dest_ty = load_bitcast_op->getDestTy();

                                    if(DL.getTypeAllocSize(src_ty) == DL.getTypeAllocSize(dest_ty))
                                    {
                                       llvm::Value* loaded_ptr = load_bitcast_op->getOperand(0);
                                       llvm::Value* stored_ptr = store_bitcast_op->getOperand(0);

                                       chunk_copy_vec.push_back(ChunkCopy(load_inst, load_bitcast_op, loaded_ptr, store_inst, store_bitcast_op, stored_ptr, src_ty, dest_ty));
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
      }
   }

   for(const ChunkCopy& chunk_copy : chunk_copy_vec)
   {
      lower_chunk_copy(chunk_copy);
   }

   for(const ChunkInit& chunk_init : chunk_init_vec)
   {
      lower_chunk_init(chunk_init);
   }

   return !chunk_copy_vec.empty() or !chunk_init_vec.empty();
}

llvm::Pass* createChunkOpsLoweringPass()
{
   return new ChunkOpsLoweringPass();
}