//
// Created by Marco Siracusa on 3/29/20.
//

#ifndef SCALAR_REPLACEMENT_OF_AGGREGATES_PTRITERATORSIMPLIFICATIONPASS_HPP
#define SCALAR_REPLACEMENT_OF_AGGREGATES_PTRITERATORSIMPLIFICATIONPASS_HPP

#include "llvm/Analysis/LoopPass.h"
#include "llvm/IR/PassManager.h"
#include "llvm/Transforms/Scalar/LoopPassManager.h"

class PtrIteratorSimplifyPass : public llvm::LoopPass {

    std::string get_val_string(llvm::Value* value)
    {
       std::string str;
       llvm::raw_string_ostream rso(str);
       value->print(rso);
       return rso.str();
    }

    std::string get_ty_string(llvm::Type* ty)
    {
       std::string str;
       llvm::raw_string_ostream rso(str);
       ty->print(rso);
       return rso.str();
    }

    void iterator_canonicalization(llvm::Use &iter_use, /// the gepi or cmp instructions along the path
                                   llvm::Value *ptr_iter_init, /// pointer iterator initialization
                                   llvm::Value *int_ind_var, /// integer iterator
                                   llvm::PHINode *first_phi_node,
                                   llvm::PHINode *new_phi_node,
                                   std::map<llvm::CmpInst *, std::vector<llvm::Use *>> &encountered_cmps,
                                   std::set<llvm::PHINode *> &encountered_phis,
                                   std::set<llvm::Instruction *> &inst_to_remove,
                                   llvm::LoopInfo &LI,
                                   const llvm::Loop *loop) {

       llvm::User *user = iter_use.getUser();
       unsigned long op_num = iter_use.getOperandNo();

       if (llvm::GetElementPtrInst *gepi_inst = llvm::dyn_cast<llvm::GetElementPtrInst>(user)) {
          std::vector<llvm::Value*> gepi_idx_vec(std::next(gepi_inst->op_begin(), 1), gepi_inst->op_end());
          llvm::Value *first_idx = gepi_idx_vec.at(0);

          llvm::Value *new_idx = int_ind_var;
          if (!llvm::isa<llvm::ConstantInt>(first_idx) or llvm::dyn_cast<llvm::ConstantInt>(first_idx)->getSExtValue() != 0) {
             llvm::Value *trunc_first_idx = first_idx;
             if (llvm::ConstantInt *const_first_idx = llvm::dyn_cast<llvm::ConstantInt>(trunc_first_idx)) {
                trunc_first_idx = llvm::ConstantInt::getSigned(int_ind_var->getType(), const_first_idx->getSExtValue());
             } else {
                if (int_ind_var->getType() != first_idx->getType()) {
                   trunc_first_idx = llvm::CastInst::Create(llvm::CastInst::Trunc, trunc_first_idx, int_ind_var->getType(),
                                                            ".trunc", gepi_inst);
                }
             }

             std::string add_inst_name = gepi_inst->getName().str() + ".add";
             new_idx = llvm::BinaryOperator::Create(llvm::Instruction::Add, int_ind_var,
                                                    trunc_first_idx, add_inst_name, gepi_inst);
          }

          std::vector<llvm::Value*> new_gepi_idx_vec = gepi_idx_vec;
          /*
          if (new_gepi_idx_vec.at(0)->getType() != add_inst->getType()) {
             new_gepi_idx_vec.at(0)->getType()->dump();
             add_inst->getType()->dump();
             add_inst = llvm::SExtInst::Create(llvm::CastInst::SExt, add_inst, new_gepi_idx_vec.at(0)->getType(), add_inst_name + ".sext", gepi_inst);
          }
           */
          new_gepi_idx_vec.at(0) = new_idx;
          std::string new_gepi_name = gepi_inst->getName().str() + ".gepi";
          // llvm::Type* gepi_type = llvm::cast<llvm::PointerType>(init_ptr->getType()->getScalarType())->getElementType();
          llvm::GetElementPtrInst* new_gepi = llvm::GetElementPtrInst::CreateInBounds(nullptr, ptr_iter_init, new_gepi_idx_vec, new_gepi_name, gepi_inst);

          llvm::dbgs() << "INFO: Expanding GEPI: "; gepi_inst->dump();
          llvm::dbgs() << "      With new GEPI: "; new_gepi->dump();
          llvm::dbgs() << "      Having index: "; new_idx->dump();

          gepi_inst->replaceAllUsesWith(new_gepi);

          for (llvm::Use &use : new_gepi->uses()) {
             llvm::dbgs() << "      Replaced use #" << use.getOperandNo() << " in user: "; use.getUser()->dump();
             iterator_canonicalization(use, ptr_iter_init, new_idx, first_phi_node, new_phi_node, encountered_cmps,
                                       encountered_phis, inst_to_remove, LI, loop);
          }

          inst_to_remove.insert(gepi_inst);
          return;

       } else if (llvm::PHINode *phi_node = llvm::dyn_cast<llvm::PHINode>(user)) {
          if (phi_node == first_phi_node) {
             new_phi_node->setOperand(op_num, int_ind_var);
             llvm::dbgs() << "      Setting init PHI: "; new_phi_node->dump();
             return;
          } else {
             if (LI.getLoopFor(phi_node->getParent()) != loop) {
                return;
             }

             llvm::dbgs() << "      Expanding conditional PHI: "; new_phi_node->dump();
             llvm::PHINode *new_phi = llvm::PHINode::Create(int_ind_var->getType(), 2, phi_node->getName().str() + ".phi", phi_node);
             if (phi_node->getIncomingValue(0) == ptr_iter_init) {
                new_phi->addIncoming(llvm::ConstantInt::get(int_ind_var->getType(), 0, true), phi_node->getIncomingBlock(0));
                new_phi->addIncoming(int_ind_var, phi_node->getIncomingBlock(1));
             } else {
                new_phi->addIncoming(int_ind_var, phi_node->getIncomingBlock(0));
                new_phi->addIncoming(llvm::ConstantInt::get(int_ind_var->getType(), 0, true), phi_node->getIncomingBlock(1));
             }

             inst_to_remove.insert(phi_node);

             std::vector<llvm::Value*> new_gepi_idx_vec;
             new_gepi_idx_vec.push_back(new_phi);

             std::string new_gepi_name = new_phi->getName().str() + ".phigepi";
             // llvm::Type* gepi_type = llvm::cast<llvm::PointerType>(init_ptr->getType()->getScalarType())->getElementType();
             llvm::GetElementPtrInst* new_gepi = llvm::GetElementPtrInst::CreateInBounds(nullptr, ptr_iter_init, new_gepi_idx_vec, new_gepi_name, phi_node->getParent()->getFirstNonPHI());
             phi_node->replaceAllUsesWith(new_gepi);

             for (llvm::Use &use : new_gepi->uses()) {
                llvm::dbgs() << "      Replaced use# " << use.getOperandNo() << " in user: "; use.getUser()->dump();
                iterator_canonicalization(use, ptr_iter_init, new_phi, first_phi_node, new_phi_node, encountered_cmps,
                                          encountered_phis, inst_to_remove, LI, loop);
             }
             return;
          }
       } else if (llvm::CmpInst *cmp_inst = llvm::dyn_cast<llvm::CmpInst>(user)) {
          encountered_cmps[cmp_inst].push_back(&iter_use);
          return;
       }
/*
   llvm::Instruction *inst_before = llvm::dyn_cast<llvm::Instruction>(user);
   if (llvm::PHINode *phi_node = llvm::dyn_cast<llvm::PHINode>(user)) {
      if (phi_node == first_phi_node) {
         new_phi_node->setOperand(op_num, int_ind_var);
         llvm::dbgs() << "Seti init PHI: "; new_phi_node->dump();
         return;
      }
   }
*/
       return;
    }

    bool ptr_iterator_simplification(llvm::Function& function, llvm::LoopInfo &LI)
    {
       std::set<llvm::Instruction*> inst_to_remove;
       std::map<llvm::CmpInst *, std::vector<llvm::Use *>> encountered_cmps;
       std::set<llvm::PHINode*> encountered_phis;
       unsigned long long transformation_count = 0;

       for (const llvm::Loop *loop : LI) {
          llvm::BasicBlock *header = loop->getHeader();

          std::vector<llvm::PHINode*> one_op_phi_vec;
          std::vector<llvm::PHINode*> two_op_phi_vec;

          for (llvm::BasicBlock *bb : loop->blocks()) {
             for (llvm::Instruction &instruction : *bb) {
                if (llvm::PHINode *phi_node = llvm::dyn_cast<llvm::PHINode>(&instruction)) {
                   if (phi_node->getType()->isPointerTy()) {
                      if (!phi_node->getType()->getPointerElementType()->isAggregateType()) {
                         switch (phi_node->getNumOperands()) {
                            case 1:
                               one_op_phi_vec.push_back(phi_node);
                               break;
                            case 2:
                               two_op_phi_vec.push_back(phi_node);
                               break;
                         }
                      }
                   }
                } else {
                   break;
                }
             }
          }

          for(llvm::PHINode* phi_node : two_op_phi_vec) {
             std::vector<llvm::GetElementPtrInst*> gepi_vector;

             llvm::Value* init_ptr = nullptr;    /// The initialization of the pointer iterator
             llvm::Value* other_ptr = nullptr;    /// The other value of the phi node

             llvm::CmpInst* cmp_inst = nullptr;  /// The cmp inst in case the pointer is the indvar
             llvm::Value* base_ptr = nullptr;
             llvm::Value* init_val = nullptr;
             llvm::Value* stop_val = nullptr;

             bool income_0_in_loop = false;
             {
                llvm::Value *income_val = phi_node->getIncomingValue(0);
                if (llvm::Instruction *income_inst = llvm::dyn_cast<llvm::Instruction>(income_val)) {
                   llvm::Loop *income_loop = LI.getLoopFor(income_inst->getParent());
                   income_0_in_loop = income_loop == loop;
                } else {
                   while (llvm::GEPOperator *gep_op = llvm::dyn_cast<llvm::GEPOperator>(income_val)) {
                      income_val = gep_op->getPointerOperand();
                   }

                   if (llvm::Instruction *income_inst = llvm::dyn_cast<llvm::Instruction>(income_val)) {
                      llvm::Loop *income_loop = LI.getLoopFor(income_inst->getParent());
                      income_0_in_loop = income_loop == loop;
                   }
                }
             }
             bool income_1_in_loop = false;
             {
                llvm::Value *income_val = phi_node->getIncomingValue(1);
                if (llvm::Instruction *income_inst = llvm::dyn_cast<llvm::Instruction>(income_val)) {
                   llvm::Loop *income_loop = LI.getLoopFor(income_inst->getParent());
                   income_1_in_loop = income_loop == loop;
                } else {
                   while (llvm::GEPOperator *gep_op = llvm::dyn_cast<llvm::GEPOperator>(income_val)) {
                      income_val = gep_op->getPointerOperand();
                   }

                   if (llvm::Instruction *income_inst = llvm::dyn_cast<llvm::Instruction>(income_val)) {
                      llvm::Loop *income_loop = LI.getLoopFor(income_inst->getParent());
                      income_1_in_loop = income_loop == loop;
                   }
                }
             }

             //llvm::GetElementPtrInst *indvar_gepi = nullptr;
             if (income_0_in_loop xor income_1_in_loop) {
                llvm::Type *idx_ty = llvm::Type::getInt32Ty(phi_node->getContext());

                std::string new_phi_node_name = phi_node->getName().str() + ".phi";
                llvm::PHINode* new_phi_node = llvm::PHINode::Create(idx_ty, 2, new_phi_node_name, phi_node);

                if (income_0_in_loop) {
                   //indvar_gepi = llvm::dyn_cast<llvm::GetElementPtrInst>(income_0);
                   other_ptr = phi_node->getIncomingValue(0);
                   init_ptr = phi_node->getIncomingValue(1);
                   new_phi_node->addIncoming(llvm::ConstantInt::get(idx_ty, 0, true), phi_node->getIncomingBlock(0)); // It shouldnt be null, will be replaced
                   new_phi_node->addIncoming(llvm::ConstantInt::get(idx_ty, 0, true), phi_node->getIncomingBlock(1));
                } else {
                   //indvar_gepi = llvm::dyn_cast<llvm::GetElementPtrInst>(income_1);
                   init_ptr = phi_node->getIncomingValue(0);
                   other_ptr = phi_node->getIncomingValue(1);
                   new_phi_node->addIncoming(llvm::ConstantInt::get(idx_ty, 0, true), phi_node->getIncomingBlock(0));
                   new_phi_node->addIncoming(llvm::ConstantInt::get(idx_ty, 0, true), phi_node->getIncomingBlock(1)); // It shouldnt be null, will be replaced
                }

                {
                   llvm::Value *iter_rec = other_ptr;

                   do {
                      if (llvm::GetElementPtrInst *gep_step = llvm::dyn_cast<llvm::GetElementPtrInst>(iter_rec)) {
                         iter_rec = gep_step->getPointerOperand();
                      } else if (llvm::PHINode *phi_step = llvm::dyn_cast<llvm::PHINode>(iter_rec)) {
                         if (phi_step != phi_node and phi_step->getIncomingValue(0) == init_ptr) {
                            iter_rec = phi_step->getIncomingValue(1);
                         } else {
                            break;
                         }
                      } else {
                         break;
                      }
                   } while(true);

                   if (iter_rec != phi_node) {
                      continue;
                   }

/*
               signed long gepi_offset = 0;
               bool all_constant_idxs = true;
               for (auto gep_it = gep_vec.rbegin(); gep_it != gep_vec.rend(); ++gep_it) {
                  llvm::GEPOperator *gep_op = *gep_it;
                  unsigned int bw = function.getParent()->getDataLayout().getPointerSizeInBits(gep_op->getPointerAddressSpace());
                  llvm::APInt ap_offset = llvm::APInt(bw, 0);
                  gep_op->accumulateConstantOffset(function.getParent()->getDataLayout(), ap_offset);
                  signed long offset_byte = (signed long)ap_offset.getSExtValue() / (signed long)(function.getParent()->getDataLayout().getTypeSizeInBits(phi_node->getType()->getPointerElementType()) / 8);
                  gepi_offset += offset_byte;
                  all_constant_idxs = all_constant_idxs and gep_op->hasAllConstantIndices();

                  gep_op->dump();
                  llvm::dbgs() << "AP: " << gepi_offset << "\n";
               }
*/
                }

                std::vector<llvm::Value*> gepi_idx_vec;
                /*
                if (new_gepi_idx_vec.at(0)->getType() != add_inst->getType()) {
                   new_gepi_idx_vec.at(0)->getType()->dump();
                   add_inst->getType()->dump();
                   add_inst = llvm::SExtInst::Create(llvm::CastInst::SExt, add_inst, new_gepi_idx_vec.at(0)->getType(), add_inst_name + ".sext", gepi_inst);
                }
                */
                gepi_idx_vec.push_back(llvm::ConstantInt::get(idx_ty, 0, true));
                std::string new_gepi_name = phi_node->getName().str() + ".firstgepi";
                // llvm::Type* gepi_type = llvm::cast<llvm::PointerType>(init_ptr->getType()->getScalarType())->getElementType();
                llvm::GetElementPtrInst* first_gepi = llvm::GetElementPtrInst::CreateInBounds(nullptr, phi_node, gepi_idx_vec, new_gepi_name, phi_node->getParent()->getFirstNonPHI());

                llvm::dbgs() << "INFO: Expanding PHI: "; phi_node->dump();
                llvm::dbgs() << "      With PHI: "; new_phi_node->dump();
                llvm::dbgs() << "      Init ptr: "; init_ptr->dump();
                llvm::dbgs() << "      First GEPI: "; first_gepi->dump();

                phi_node->replaceAllUsesWith(first_gepi);
                first_gepi->setOperand(0, phi_node);

                for (llvm::Use &use : phi_node->uses()) {
                   iterator_canonicalization(use, init_ptr, new_phi_node, phi_node, new_phi_node, encountered_cmps,
                                             encountered_phis, inst_to_remove, LI, loop);
                }

                inst_to_remove.insert(phi_node);
                inst_to_remove.insert(first_gepi);
                transformation_count++;
             }
          }
       }

       for (auto &cmp_it : encountered_cmps) {
          llvm::CmpInst* cmp_inst = cmp_it.first;
          std::vector<llvm::Use*> &use_vec = cmp_it.second;

          if (cmp_inst->getOperand(0)->getType()->isPointerTy()) {
             llvm::Value *op_0 = cmp_inst->getOperand(0);
             llvm::Value *op_1 = cmp_inst->getOperand(1);

             llvm::GetElementPtrInst *gepi_0 = llvm::dyn_cast<llvm::GetElementPtrInst>(op_0);
             llvm::GetElementPtrInst *gepi_1 = llvm::dyn_cast<llvm::GetElementPtrInst>(op_1);

             if (gepi_0 and gepi_1) {
                if (gepi_0->getPointerOperand() == gepi_1->getPointerOperand()) {
                   if (gepi_0->getNumIndices() == 1 and gepi_1->getNumIndices() == 1) {
                      gepi_0->dump();
                      gepi_1->dump();
                      llvm::CmpInst *new_cmp_inst = llvm::CmpInst::Create(llvm::CmpInst::OtherOps::ICmp,
                                                                          cmp_inst->getPredicate(),
                                                                          gepi_0->getOperand(1),
                                                                          gepi_1->getOperand(1),
                                                                          cmp_inst->getName().str() + ".lowered",
                                                                          cmp_inst);
                      cmp_inst->replaceAllUsesWith(new_cmp_inst);
                      inst_to_remove.insert(cmp_inst);
                      transformation_count++;
                   }
                }
             }
          }
       }

       unsigned long num_deletion = 0;
       std::set<llvm::Instruction*> remove_set = inst_to_remove;
       do {
          num_deletion = 0;
          std::set<llvm::Instruction*> removed_set;

          for (llvm::Instruction *inst_to_erase : remove_set) {
             if (!inst_to_erase->hasNUsesOrMore(1)) {
                removed_set.insert(inst_to_erase);
             }
          }

          for (llvm::Instruction *inst_to_erase : removed_set) {
             remove_set.erase(inst_to_erase);
             inst_to_erase->eraseFromParent();
          }

          num_deletion = removed_set.size();
       } while (num_deletion > 0);

       for (llvm::Instruction *inst : inst_to_remove) {
          //inst->eraseFromParent();
       }

       return transformation_count > 0;
    }











    bool get_reachables_and_externals(llvm::Use *use_rec,
                                      const std::set<llvm::BasicBlock*> &blocks,
                                      std::set<llvm::Use*> &reachables,
                                      std::set<llvm::Use*> &externals) {

       /// Process only if instruction not already in the reachables set
       if (reachables.insert(use_rec).second) {

          /// Go through the gepis and seach the phi operands for externals

          /// ASSUMPTION: GepOPs already converted in gepis beforehand
          if (llvm::GetElementPtrInst *user_as_gepi = llvm::dyn_cast<llvm::GetElementPtrInst>(use_rec->getUser())) {

             /// Since LCSSA, we can go out the loop only through a phi node
             if (blocks.count(user_as_gepi->getParent()) == 0) {
                return false;
             }

             if (use_rec->getOperandNo() == user_as_gepi->getPointerOperandIndex()) {
                if (user_as_gepi->getNumIndices() == 1) {
                   /// No big deal, just keep iterating
                   for (llvm::Use &gepi_use : user_as_gepi->uses()) {
                      get_reachables_and_externals(&gepi_use, blocks, reachables, externals);
                   }
                }
             }
          } else if (llvm::PHINode *user_as_phi = llvm::dyn_cast<llvm::PHINode>(use_rec->getUser())) {

             /// Go through the uses and check if some external
             for (llvm::Use &phi_operand : user_as_phi->operands()) {
                if (llvm::Instruction *operand_as_inst = llvm::dyn_cast<llvm::Instruction>(phi_operand.get())) {
                   if (blocks.count(operand_as_inst->getParent()) == 0) {
                      externals.insert(&phi_operand);
                   }

                   if (!llvm::isa<llvm::PHINode>(operand_as_inst) and !llvm::isa<llvm::GEPOperator>(operand_as_inst)) {
                      return false;
                   }

                } else {
                   externals.insert(&phi_operand);

                   if (!llvm::isa<llvm::Argument>(phi_operand.get()) and !llvm::isa<llvm::GlobalValue>(phi_operand.get()) and !llvm::isa<llvm::PHINode>(phi_operand.get())) {
                      return false;
                   }
                }
             }

             /// Keep iterating only if inside the loop
             /// This let us take care of LCSSA phis outside the loop
             if (blocks.count(user_as_phi->getParent()) > 0) {
                for (llvm::Use &phi_use : user_as_phi->uses()) {
                   get_reachables_and_externals(&phi_use, blocks, reachables, externals);
                }
             }
          } else {
             /// Don't care, it's gonna be relpaced by the transformation
          }
       }

       return true;
    }



    llvm::Value *accumulate_index(llvm::Value *lhs_idx, llvm::Value *rhs_idx, llvm::Instruction *insert_point, llvm::Type *idx_ty) {
       if (llvm::ConstantInt *constant_idx = llvm::dyn_cast<llvm::ConstantInt>(rhs_idx)) {
          if (llvm::ConstantInt *constant_offset = llvm::dyn_cast<llvm::ConstantInt>(lhs_idx)) {
             unsigned long value = constant_idx->getSExtValue() + constant_offset->getSExtValue();
             lhs_idx = llvm::ConstantInt::get(idx_ty, 0);
          } else {
             if (constant_idx->getSExtValue() == 0) {
                lhs_idx = rhs_idx;
             } else {
                llvm::BinaryOperator *add_op = llvm::BinaryOperator::Create(
                        llvm::BinaryOperator::BinaryOps::Add,
                        rhs_idx,
                        lhs_idx,
                        "offset",
                        insert_point);
                lhs_idx = add_op;
             }
          }
       } else {
          if (llvm::ConstantInt *constant_offset = llvm::dyn_cast<llvm::ConstantInt>(lhs_idx)) {
             if (constant_offset->getSExtValue() == 0) {
                lhs_idx = rhs_idx;
             } else {
                llvm::BinaryOperator *add_op = llvm::BinaryOperator::Create(
                        llvm::BinaryOperator::BinaryOps::Add,
                        rhs_idx,
                        lhs_idx,
                        "offset",
                        insert_point);
                lhs_idx = add_op;
             }
          } else {
             llvm::BinaryOperator *add_op = llvm::BinaryOperator::Create(llvm::BinaryOperator::BinaryOps::Add,
                                                                         rhs_idx,
                                                                         lhs_idx,
                                                                         "offset",
                                                                         insert_point);
             lhs_idx = add_op;
          }
       }

       return lhs_idx;
    }

















public:
    static char ID; // Pass ID, replacement for typeid
    PtrIteratorSimplifyPass() : LoopPass(ID) {}

    bool runOnLoop(llvm::Loop *L, llvm::LPPassManager &) override {

       llvm::Type *idx_ty = llvm::Type::getInt32Ty(L->getHeader()->getContext());

       unsigned long expanded_phis = 0;
       std::set<llvm::BasicBlock*> blocks(L->block_begin(), L->block_end());

       /// Go through all the header instruction looking for candidate phi nodes (type is pointer)
       std::vector<llvm::PHINode*> phi_candidates;

       for (llvm::Instruction &i : *L->getHeader()) {
          if (llvm::PHINode *phi_node = llvm::dyn_cast<llvm::PHINode>(&i)) {
             if (phi_node->getType()->isPointerTy()) {
                phi_candidates.push_back(phi_node);
             }
          }
       }

       /// For each phi candidate, compute the reachable instructions (gepis and phis)
       /// For each of those instructions, track the operands coming from outside the loop
       for (llvm::PHINode *candidate_phi : phi_candidates) {
          std::set<llvm::Use*> reachable_uses;
          std::set<llvm::Use*> external_uses;
          bool feasible = true;

          for (llvm::Use &phi_candidate_use : candidate_phi->uses()) {
             feasible = get_reachables_and_externals(&phi_candidate_use, blocks, reachable_uses, external_uses) and feasible;
          }

          /// Feasible only if phi operands are other phis, gepis, args, or globals
          if (feasible) {

             /// Try to reconduct all of the external addresses to a single base address (and relative offsets)

             /// Store a vector of set of pointers
             /// Each pointer will add the base address to the set if it's a gepi, nothing otehrwise
             std::vector<std::pair<llvm::Value*, std::set<llvm::Value*>>> vec_ptr_addr_set;

             for (llvm::Use *external_use : external_uses) {
                std::pair<llvm::Value*, std::set<llvm::Value*>> vec_pair = std::make_pair(external_use->get(), std::set<llvm::Value*>());
                vec_ptr_addr_set.push_back(vec_pair);
                vec_ptr_addr_set.back().second.insert(external_use->get());
             }

             llvm::Value *common_external = nullptr; /// The common external to be checked (stays null if not found)
             bool iterate = true;
             do {
                iterate = true;

                /// Try intersecting all of the sets and update the gepi pointers
                std::set<llvm::Value*> intersection = vec_ptr_addr_set.front().second;
                for (std::pair<llvm::Value*, std::set<llvm::Value*>> &ptr_addr_set_pair : vec_ptr_addr_set) {

                   std::set<llvm::Value*> erase_set;
                   for (llvm::Value *val : intersection) {
                      if (ptr_addr_set_pair.second.count(val) == 0) {
                         erase_set.insert(val);
                      }
                   }
                   intersection.erase(erase_set.begin(), erase_set.end());

                   /// Add the base pointer to the set if value is a gepi
                   if (llvm::GetElementPtrInst *gepi = llvm::dyn_cast<llvm::GetElementPtrInst>(ptr_addr_set_pair.first)) {
                      ptr_addr_set_pair.first = gepi->getPointerOperand();
                      ptr_addr_set_pair.second.insert(gepi->getPointerOperand());
                   }
                }

                /// Control the loop iterations
                switch (intersection.size()) {
                   case 0:
                      iterate = true;
                      break;
                   case 1:
                      {
                      iterate = false;
                      common_external = *intersection.begin();
                      }
                      break;
                   default:
                      iterate = false;
                }
             } while (iterate);

             if (common_external) {

                expanded_phis++;
                std::set<llvm::Instruction*> inst_to_remove;
                std::set<llvm::GetElementPtrInst*> inserted_gepis;

                /// Compute the offset of each external wrt the common one
                std::map<llvm::Use*, llvm::Value*> external_offset_map;

                for (llvm::Use *external_use : external_uses) {
                   auto insert_it = external_offset_map.insert(std::make_pair(external_use, llvm::ConstantInt::get(llvm::Type::getInt32Ty(L->getHeader()->getContext()), 0)));

                   llvm::Value *&external_offset_ref = insert_it.first->second;

                   llvm::Use* use_rec = external_use;
                   while (llvm::GetElementPtrInst *use_as_gepi = llvm::dyn_cast<llvm::GetElementPtrInst>(use_rec->get())) {
                      llvm::Use &single_idx = *use_as_gepi->idx_begin();
                      use_rec = &use_as_gepi->getOperandUse(use_as_gepi->getPointerOperandIndex());

                      external_offset_ref = accumulate_index(external_offset_ref, single_idx, use_as_gepi, idx_ty);
                   }
                }

                llvm::dbgs() << "INFO: Canonicalizing " << get_val_string(candidate_phi) << "\n";
                llvm::dbgs() << "      With reachable uses: \n";
                for (llvm::Use *reachable_use : reachable_uses) {
                   llvm::dbgs() << "          #" << reachable_use->getOperandNo() << " in " << get_val_string(reachable_use->getUser()) << "\n";
                }
                llvm::dbgs() << "      With external uses: \n";
                for (llvm::Use *external_use : external_uses) {
                   llvm::dbgs() << "          #" << external_use->getOperandNo() << " in " << get_val_string(external_use->getUser()) << " (with offset " << get_val_string(external_offset_map.at(external_use)) << ")\n";
                }
                llvm::dbgs() << "      With common external: \n";
                llvm::dbgs() << "          " << get_val_string(common_external) << "\n";

                /// Transform all phi nodes and then the gepi uses
                std::map<llvm::PHINode*, llvm::PHINode*> phi_map; /// Phi map containing the transformated nodes
                std::set<llvm::Use*> uses_to_set;
                for (llvm::Use *reachable_use : reachable_uses) {
                   if (llvm::PHINode *user_as_phi = llvm::dyn_cast<llvm::PHINode>(reachable_use->getUser())) {
                      phi_map[user_as_phi] = nullptr;
                   }
                }

                /// Transform all the phi nodes
                for (std::pair<llvm::PHINode* const, llvm::PHINode*> &phi_pair : phi_map) {
                   llvm::PHINode *phi_iter = phi_pair.first;
                   llvm::PHINode *phi_index = llvm::PHINode::Create(idx_ty,
                                                                    phi_iter->getNumIncomingValues(),
                                                                    phi_iter->getName().str() + ".idx",
                                                                    phi_iter);
                   phi_pair.second = phi_index;

                   for (llvm::Use &phi_incoming : phi_iter->incoming_values()) {
                      llvm::BasicBlock *incoming_bb = phi_iter->getIncomingBlock(phi_incoming);
                      auto ext_it = external_offset_map.find(&phi_incoming);

                      if (ext_it != external_offset_map.end()) {
                         phi_index->addIncoming(ext_it->second, incoming_bb);
                      } else {
                         phi_index->addIncoming(llvm::UndefValue::get(idx_ty), incoming_bb);
                         uses_to_set.insert(&phi_incoming);
                      }
                   }
                   llvm::dbgs() << "      Transforming PHI " << get_val_string(phi_iter) << "\n";
                   llvm::dbgs() << "            in new PHI " << get_val_string(phi_index) << "\n";
                }

                /// Transform all the gepis out of the phi nodes
                std::vector<llvm::Use *> uses_to_process;
                for (std::pair<llvm::PHINode* const, llvm::PHINode*> &phi_pair : phi_map) {
                   llvm::PHINode *phi_iter = phi_pair.first;
                   llvm::PHINode *phi_index = phi_pair.second;

                   std::vector<llvm::Value *> idxs;
                   idxs.push_back(phi_index);
                   llvm::GetElementPtrInst *first_gepi = llvm::GetElementPtrInst::CreateInBounds(common_external,
                                                                                                 idxs,
                                                                                                 phi_iter->getName().str() +
                                                                                                 ".firstgepi",
                                                                                                 &*phi_iter->getParent()->getFirstInsertionPt());
                   phi_iter->replaceAllUsesWith(first_gepi);
                   for (llvm::Use &gepi_use : first_gepi->uses()) {
                      uses_to_process.push_back(&gepi_use);
                   }
                }

                for (unsigned long i = 0; i < uses_to_process.size(); i++) {
                   llvm::Use *use_to_process = uses_to_process.at(i);

                   llvm::dbgs() << "      Transforming use #" << use_to_process->getOperandNo() << " of " << get_val_string(use_to_process->getUser()) << "\n";
                   if (llvm::GetElementPtrInst *use_as_gepi = llvm::dyn_cast<llvm::GetElementPtrInst>(use_to_process->get())) {
                      if (llvm::PHINode *user_as_phi = llvm::dyn_cast<llvm::PHINode>(use_to_process->getUser())) {
                         auto phi_it = phi_map.find(user_as_phi);
                         if (phi_it != phi_map.end()){
                            llvm::PHINode *phi_index = phi_map.at(user_as_phi);
                            int incoming_value_idx = user_as_phi->getBasicBlockIndex(user_as_phi->getIncomingBlock(*use_to_process));
                            phi_index->setIncomingValue(incoming_value_idx, use_as_gepi->getOperand(1));
                            llvm::dbgs() << "            as " << get_val_string(phi_index) << "\n";
                         } else {
                            llvm::dbgs() << "            as " << get_val_string(user_as_phi) << "\n";
                         }
                         uses_to_set.erase(use_to_process);
                      } else if (llvm::GetElementPtrInst *user_as_gepi = llvm::dyn_cast<llvm::GetElementPtrInst>(use_to_process->getUser())) {
                         llvm::Value *new_idx = accumulate_index(use_as_gepi->getOperand(1),
                                                                 user_as_gepi->getOperand(1),
                                                                 user_as_gepi,
                                                                 idx_ty);

                         std::vector<llvm::Value *> idxs;
                         idxs.push_back(new_idx);
                         llvm::GetElementPtrInst *new_gepi = llvm::GetElementPtrInst::CreateInBounds(common_external,
                                                                                                       idxs,
                                                                                                       user_as_gepi->getName().str() +
                                                                                                       ".gepi",
                                                                                                       user_as_gepi);


                         llvm::dbgs() << "            as " << get_val_string(new_gepi) << "\n";

                         for(llvm::Use &gepi_use : user_as_gepi->uses()) {
                            unsigned long operand_no = gepi_use.getOperandNo();
                            uses_to_set.erase(&gepi_use);
                            gepi_use.getUser()->setOperand(operand_no, new_gepi);
                            uses_to_process.push_back(&gepi_use.getUser()->getOperandUse(operand_no));
                         }
                         inst_to_remove.insert(user_as_gepi);
                         inserted_gepis.insert(new_gepi);
                      }
                   } else {
                      llvm::errs() << "ERR: Use should be a gepi\n";
                      exit(-1);
                   }
                }

                for(std::pair<llvm::PHINode*, llvm::PHINode*> phi_pair : phi_map) {
                   phi_pair.first->eraseFromParent();
                }

                unsigned long num_deletion = 0;
                std::set<llvm::Instruction*> remove_set = inst_to_remove;
                do {
                   num_deletion = 0;
                   std::set<llvm::Instruction*> removed_set;

                   for (llvm::Instruction *inst_to_erase : remove_set) {
                      if (!inst_to_erase->hasNUsesOrMore(1)) {
                         removed_set.insert(inst_to_erase);
                      }
                   }

                   for (llvm::Instruction *inst_to_erase : removed_set) {
                      remove_set.erase(inst_to_erase);
                      inst_to_erase->eraseFromParent();
                   }

                   num_deletion = removed_set.size();
                } while (num_deletion > 0);

                for(llvm::GetElementPtrInst *gepi : inserted_gepis) {
                   if (gepi->getNumUses() == 0) {
                      gepi->eraseFromParent();
                   }
                }

                //assert("All uses replaced" && uses_to_set.empty());
             } else {
                llvm::dbgs() << "INFO: Cannot canonicalize (no common)" << get_val_string(candidate_phi) << "\n";
             }
          } else {
             llvm::dbgs() << "INFO: Cannot canonicalize (unfeasible)" << get_val_string(candidate_phi) << "\n";
          }
       }

       return expanded_phis > 0;
    }

    void getAnalysisUsage(llvm::AnalysisUsage &AU) const override {

    }
};

char PtrIteratorSimplifyPass::ID = 0;

llvm::Pass *createPtrIteratorSimplifyPass() {
   return new PtrIteratorSimplifyPass();
}

#endif //SCALAR_REPLACEMENT_OF_AGGREGATES_PTRITERATORSIMPLIFICATIONPASS_HPP
