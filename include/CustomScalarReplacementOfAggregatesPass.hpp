/*
 *
 *                   _/_/_/    _/_/   _/    _/ _/_/_/    _/_/
 *                  _/   _/ _/    _/ _/_/  _/ _/   _/ _/    _/
 *                 _/_/_/  _/_/_/_/ _/  _/_/ _/   _/ _/_/_/_/
 *                _/      _/    _/ _/    _/ _/   _/ _/    _/
 *               _/      _/    _/ _/    _/ _/_/_/  _/    _/
 *
 *             ***********************************************
 *                              PandA Project
 *                     URL: http://panda.dei.polimi.it
 *                       Politecnico di Milano - DEIB
 *                        System Architectures Group
 *             ***********************************************
 *              Copyright (C) 2018-2019 Politecnico di Milano
 *
 *   This file is part of the PandA framework.
 *
 *   The PandA framework is free software; you can redistribute it and/or modify
 *   it under the terms of the GNU General Public License as published by
 *   the Free Software Foundation; either version 3 of the License, or
 *  (at your option) any later version.
 *
 *   This program is distributed in the hope that it will be useful,
 *   but WITHOUT ANY WARRANTY; without even the implied warranty of
 *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *   GNU General Public License for more details.
 *
 *   You should have received a copy of the GNU General Public License
 *   along with this program.  If not, see <http://www.gnu.org/licenses/>.
 *
 */
/*
 * The implementation performs scalar replacement of aggregates.
 *
 * @author Marco Siracusa <marco.siracusa@mail.polimi.it>
 * @author Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
 *
 */

#ifndef SCALAR_REPLACEMENT_OF_AGGREGATES_CUSTOMSCALARREPLACEMENTOFAGGREGATESPASS_HPP
#define SCALAR_REPLACEMENT_OF_AGGREGATES_CUSTOMSCALARREPLACEMENTOFAGGREGATESPASS_HPP

#include <llvm/IR/Instructions.h>
#include <llvm/IR/Module.h>
#include <llvm/Pass.h>
#include <llvm/IR/Operator.h>

#include <set>

typedef std::set<llvm::Instruction*> inst_set_ty;
typedef std::map<llvm::Function*, std::set<llvm::AllocaInst*>> fun_to_alloca_map_ty;

#define wrapper_function_name "__non_const_wrapper__"

enum SROA_phase
{
   SROA_functionVersioning,
   SROA_disaggregation,
   SROA_wrapperInlining
};

class CustomScalarReplacementOfAggregatesPass : public llvm::ModulePass
{
 public:
   char ID = 0;

 private:
   const unsigned short sroa_phase = 0;

   const std::string kernel_name;

 public:
   explicit CustomScalarReplacementOfAggregatesPass(const std::string& _kernel_name, char& _ID, unsigned short _sroa_phase) : llvm::ModulePass(_ID), sroa_phase(_sroa_phase), kernel_name(_kernel_name)
   {
   }

   explicit CustomScalarReplacementOfAggregatesPass(const std::string& _kernel_name, unsigned short _sroa_phase) : llvm::ModulePass(ID), sroa_phase(_sroa_phase), kernel_name(_kernel_name)
   {
   }

   bool runOnModule(llvm::Module& module) override;

   void getAnalysisUsage(llvm::AnalysisUsage& AU) const override;


   std::tuple<bool, double, double> get_ptr_expandability(llvm::Use &ptr_use,
                                                          llvm::Value *base_ptr,
                                                          std::map<std::pair<std::vector<llvm::Instruction *>, llvm::Use *>, std::tuple<bool, double, double>> &operands_expandability_map,
                                                          std::map<llvm::Value *, llvm::Value *> &point_to_set_map,
                                                          bool constant_access,
                                                          std::vector<llvm::Instruction *> &call_trace,
                                                          const std::map<llvm::Use*, std::tuple<bool, double, double>> &versioning_cost_map);

   void compute_allocas_expandability_rec(llvm::Instruction* call_inst,
                                          llvm::Function* kernel_function,
                                          std::map<llvm::AllocaInst*, std::tuple<bool, double, double>>& allocas_expandability_map,
                                          std::map<llvm::GlobalVariable*, std::tuple<bool, double, double>>& globals_expandability_map,
                                          std::map<std::pair<std::vector<llvm::Instruction*>, llvm::Use*>, std::tuple<bool, double, double>>& operands_expandability_map,
                                          std::map<llvm::Value*, llvm::Value*>& point_to_set_map,
                                          std::map<llvm::Instruction*, std::vector<llvm::Instruction*>>& compact_callgraph,
                                          const llvm::DataLayout& DL,
                                          std::vector<llvm::Instruction*>& call_trace,
                                          const std::map<llvm::Use*, std::tuple<bool, double, double>> &versioning_cost);

   void compute_global_op_expandability_rec(llvm::Instruction* call_inst,
                                            const std::map<llvm::GlobalVariable*, std::tuple<bool, double, double>>& globals_expandability_map,
                                            std::map<std::pair<std::vector<llvm::Instruction*>, llvm::Use*>, std::tuple<bool, double, double>>& operands_expandability_map,
                                            std::map<llvm::Value*, llvm::Value*>& point_to_set_map,
                                            std::map<llvm::Instruction*, std::vector<llvm::Instruction*>>& compact_callgraph,
                                            const llvm::DataLayout& DL,
                                            std::vector<llvm::Instruction*>& call_trace,
                                            const std::set<llvm::Use*>& globals_as_exp,
                                            const std::map<llvm::Use*, std::tuple<bool, double, double>> &versioning_cost);

   void compute_aggregates_expandability(llvm::Function* kernel_function,
                                         llvm::Module* module,
                                         std::map<llvm::AllocaInst*, std::tuple<bool, double, double>>& allocas_expandability_map,
                                         std::map<llvm::GlobalVariable*, std::tuple<bool, double, double>>& globals_expandability_map,
                                         std::map<std::pair<std::vector<llvm::Instruction*>, llvm::Use*>, std::tuple<bool, double, double>>& operands_expandability_map,
                                         std::map<llvm::Value*, llvm::Value*>& point_to_set_map,
                                         std::map<llvm::Instruction*, std::vector<llvm::Instruction*>>& compact_callgraph,
                                         const llvm::DataLayout& DL,
                                         const std::map<llvm::Use*, std::tuple<bool, double, double>> &versioning_cost);

   void compute_op_exp_and_dims_rec(llvm::Instruction* call_inst,
                                    llvm::Instruction* parent_call_inst,
                                    const std::map<llvm::Instruction*, std::vector<llvm::Instruction*>>& compact_callgraph,
                                    const std::map<llvm::Value*, llvm::Value*>& point_to_set_map,
                                    std::map<std::pair<std::vector<llvm::Instruction*>, llvm::Use*>, std::tuple<bool, double, double>>& operands_expandability_map,
                                    const std::map<llvm::AllocaInst*, std::tuple<bool, double, double>>& allocas_expandability_map,
                                    const std::map<llvm::GlobalVariable*, std::tuple<bool, double, double>>& globals_expandability_map,
                                    std::map<std::pair<std::vector<llvm::Instruction*>, llvm::Use*>, std::vector<unsigned long long>>& operands_dimensions_map,
                                    const llvm::DataLayout& DL,
                                    std::vector<llvm::Instruction*>& call_trace,
                                    const std::map<llvm::Use*, std::tuple<bool, double, double>> &versioning_cost);

   void compute_op_exp_and_dims(const std::map<llvm::Instruction*, std::vector<llvm::Instruction*>>& compact_callgraph,
                                llvm::Function *kernel_function,
                                const std::map<llvm::Value*, llvm::Value*>& point_to_set_map,
                                std::map<std::pair<std::vector<llvm::Instruction*>, llvm::Use*>, std::tuple<bool, double, double>>& operands_expandability_map,
                                const std::map<llvm::AllocaInst*, std::tuple<bool, double, double>>& allocas_expandability_map,
                                const std::map<llvm::GlobalVariable*, std::tuple<bool, double, double>>& globals_expandability_map,
                                std::map<std::pair<std::vector<llvm::Instruction*>, llvm::Use*>, std::vector<unsigned long long>>& operands_dimensions_map,
                                const llvm::DataLayout& DL,
                                std::map<llvm::Use*, std::tuple<bool, double, double>> &versioning_cost);

   bool check_function_versioning(const std::map<llvm::Instruction*, std::vector<llvm::Instruction*>>& compact_callgraph, llvm::Function* kernel_function,
                                  const std::map<std::pair<std::vector<llvm::Instruction*>, llvm::Use*>, std::tuple<bool, double, double>>& operands_expandability_map,
                                  const std::map<std::pair<std::vector<llvm::Instruction*>, llvm::Use*>, std::vector<unsigned long long>>& operands_dimensions_map,
                                  std::map<llvm::Argument*, std::tuple<bool, double, double>>& arg_exp_map,
                                  std::map<llvm::Argument*, std::vector<unsigned long long>>& arg_dims_map);

   void perform_function_versioning(std::map<llvm::Instruction*, std::vector<llvm::Instruction*>>& compact_callgraph,
                                    llvm::Function* kernel_function,
                                    const std::map<llvm::Value*, llvm::Value*>& point_to_set_map,
                                    const std::map<std::pair<std::vector<llvm::Instruction*>, llvm::Use*>, std::tuple<bool, double, double>>& operands_expandability_map,
                                    const std::map<llvm::AllocaInst*, std::tuple<bool, double, double>>& allocas_expandability_map,
                                    const std::map<llvm::GlobalVariable*, std::tuple<bool, double, double>>& globals_expandability_map,
                                    const std::map<std::pair<std::vector<llvm::Instruction*>, llvm::Use*>, std::vector<unsigned long long>>& operands_dimensions_map,
                                    std::map<llvm::Argument*, std::tuple<bool, double, double>>& arg_exp_map,
                                    std::map<llvm::Argument*, std::vector<unsigned long long>>& arg_dims_map,
                                    std::set<llvm::Function*>& function_worklist_to_ret);

   void initialize_callsites(llvm::Instruction* call_inst,
                             std::vector<llvm::Instruction*>& call_trace,
                             const std::map<std::pair<std::vector<llvm::Instruction*>, llvm::Use*>, std::tuple<bool, double, double>>& operands_expandability_map,
                             const std::map<std::pair<std::vector<llvm::Instruction*>, llvm::Use*>, std::vector<unsigned long long>>& operands_dimensions_map,
                             const std::map<llvm::Instruction*, std::vector<llvm::Instruction*>>& compact_callgraph,
                             std::map<llvm::Instruction*, std::map<std::vector<llvm::Instruction*>, std::vector<std::pair<bool, std::vector<unsigned long long>>>>>& op_exp_and_dim_by_callsite);

   /// ************************************************************************************** ///
   /// *** Utilities and callbacks for computing cost and expandability of aggregate base *** ///
   /// ************************************************************************************** ///

   unsigned long MaxNumScalarTypes = 16;
   unsigned long MaxTypeByteSize = 64;

   unsigned long get_num_elements(llvm::Type *ty, unsigned long decayed_dim_if_any = 1)
   {
      std::vector<llvm::Type*> contained_types;

      for(unsigned long long e_idx = 0; e_idx < decayed_dim_if_any; e_idx++)
      {
         contained_types.push_back(ty);
      }

      unsigned long long non_aggregate_types = 0;

      for(auto c_idx = 0u; c_idx < contained_types.size(); c_idx++)
      {
         llvm::Type* el_ty = contained_types.at(c_idx);

         if(el_ty->isAggregateType())
         {
            if(el_ty->isStructTy())
            {
               for(unsigned int e_idx = 0; e_idx < el_ty->getStructNumElements(); ++e_idx)
               {
                  contained_types.push_back(el_ty->getStructElementType(e_idx));
               }
            }
            else if(el_ty->isArrayTy())
            {
               for(unsigned long long e_idx = 0; e_idx < el_ty->getArrayNumElements(); ++e_idx)
               {
                  contained_types.push_back(el_ty->getArrayElementType());
               }
            }
         }
         else
         {
            ++non_aggregate_types;
         }
      }

      return non_aggregate_types;
   }

   std::tuple<bool, double, double> compute_alloca_expandability_profit(llvm::AllocaInst *alloca_inst,
                                                                        const llvm::DataLayout &DL,
                                                                        std::string &msg)
   {
      llvm::Type *allocated_type = alloca_inst->getAllocatedType();

      unsigned long num_elements = get_num_elements(allocated_type);
      unsigned long size = DL.getTypeAllocSize(allocated_type);
      bool expandable_size = num_elements <= MaxNumScalarTypes and size <= MaxTypeByteSize;

      if(!expandable_size)
      {
         msg = "# aggregate types is " + std::to_string(num_elements) + " (allowed " + std::to_string(MaxNumScalarTypes) + ") and allocates size is " + std::to_string(size) + "(allowed " + std::to_string(MaxTypeByteSize) + ")";
      }

      double area_revenue = 0.0;
      double area_cost = 0.0;
      double area_profit = area_revenue - area_cost;

      double latency_revenue = 0.0;
      double latency_cost = 0.0;
      double latency_profit = latency_revenue - latency_cost;

      return std::make_tuple(expandable_size, area_profit, latency_profit);
   }

   std::tuple<bool, double, double> compute_global_expandability_profit(llvm::GlobalVariable *g_var,
                                                                        const llvm::DataLayout &DL,
                                                                        std::string &msg)
   {
      llvm::Type *allocated_type = g_var->getValueType();

      unsigned long num_elements = get_num_elements(allocated_type);
      unsigned long size = DL.getTypeAllocSize(allocated_type);
      bool expandable_size = num_elements <= MaxNumScalarTypes and size <= MaxTypeByteSize;

      if(!expandable_size)
      {
         msg = "# aggregate types is " + std::to_string(num_elements) + " (allowed " + std::to_string(MaxNumScalarTypes) + ") and allocates size is " + std::to_string(size) + "(allowed " + std::to_string(MaxTypeByteSize) + ")";
      }

      double area_revenue = 0.0;
      double area_cost = 0.0;
      double area_profit = area_revenue - area_cost;

      double latency_revenue = 0.0;
      double latency_cost = 0.0;
      double latency_profit = latency_revenue - latency_cost;

      return std::make_tuple(expandable_size, area_profit, latency_profit);
   }

   std::tuple<bool, double, double> compute_operand_expandability_profit(llvm::Use *op_use,
                                                                         const llvm::DataLayout &DL,
                                                                         unsigned long long decayed_dim,
                                                                         std::string &msg)
   {
      llvm::Type *allocated_type = op_use->get()->getType()->getPointerElementType();

      unsigned long num_elements = get_num_elements(allocated_type);
      unsigned long size = DL.getTypeAllocSize(allocated_type) * decayed_dim;
      bool expandable_size = num_elements <= MaxNumScalarTypes and size <= MaxTypeByteSize;

      if(!expandable_size)
      {
         msg = "# aggregate types is " + std::to_string(num_elements) + " (allowed " + std::to_string(MaxNumScalarTypes) + ") and allocates size is " + std::to_string(size) + "(allowed " + std::to_string(MaxTypeByteSize) + ")";
      }

      double area_revenue = 0.0;
      double area_cost = 0.0;
      double area_profit = area_revenue - area_cost;

      double latency_revenue = 0.0;
      double latency_cost = 0.0;
      double latency_profit = latency_revenue - latency_cost;

      return std::make_tuple(expandable_size, area_profit, latency_profit);
   }

   std::tuple<bool, double, double> compute_gepi_expandability_profit(llvm::GEPOperator *gep_op, std::string &msg)
   {
      if (gep_op->hasAllConstantIndices()) {
         double area_revenue = 0.0;
         double area_cost = 0.0;
         double area_profit = area_revenue - area_cost;

         double latency_revenue = 0.0;
         double latency_cost = 0.0;
         double latency_profit =  latency_revenue - latency_cost;

         return std::make_tuple(true,  area_profit, latency_profit);
      } else {
         double area_revenue = 0.0;
         double area_cost = 0.0;
         double area_profit = area_revenue - area_cost;

         double latency_revenue = 0.0;
         double latency_cost = 0.0;
         double latency_profit = latency_revenue - latency_cost;

         return std::make_tuple(true, area_profit, latency_profit);
      }
   }

   std::tuple<bool, double, double> compute_function_versioning_cost(llvm::Function *function)
   {
      return std::make_tuple(true, -100.0, -100.0);
   }
};

CustomScalarReplacementOfAggregatesPass* createSROAFunctionVersioningPass(std::string kernel_name);

CustomScalarReplacementOfAggregatesPass* createSROADisaggregationPass(std::string kernel_name);

CustomScalarReplacementOfAggregatesPass* createSROAWrapperInliningPass(std::string kernel_name);

#endif // SCALAR_REPLACEMENT_OF_AGGREGATES_CUSTOMSCALARREPLACEMENTOFAGGREGATESPASS_HPP
