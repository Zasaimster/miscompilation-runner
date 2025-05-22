// https://github.com/10x-Engineers/tutorial-llvm-pass/blob/main/tutorial_hello.md 

#include "llvm/IR/PassManager.h"
#include "llvm/Passes/PassBuilder.h"
#include "llvm/Passes/PassPlugin.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/GlobalVariable.h"
#include "llvm/IR/DataLayout.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/ADT/StringRef.h"

// TODO: in the future, we can refactor this plugin to skip over global variables that will cause undeterministic results
// example: look at the code at the bottom as a starting point
using namespace llvm;

struct GlobalSizePass : public PassInfoMixin<GlobalSizePass> {
    PreservedAnalyses run(Module &M, ModuleAnalysisManager &AM) {
        const DataLayout &DL = M.getDataLayout();

        // Print a header
        outs() << "Global Variable Sizes in Module (NPM Pass)\n";

        bool foundGlobals = false;
        for (GlobalVariable &GV : M.globals()) {
            if (GV.isDeclaration() || GV.getName().starts_with("llvm.")) {
                continue;
            }
            foundGlobals = true;
            Type *GlobalType = GV.getValueType();
            uint64_t SizeInBytes = DL.getTypeAllocSize(GlobalType);
            outs() << "@" << GV.getName() << ": Type=";
            GlobalType->print(outs());
            outs() << ", Size=" << SizeInBytes << "\n";
        }

        if (!foundGlobals) {
            outs() << "No user-defined global variables found.\n";
        }

        outs() << "-----------------------------------------------\n";

        return PreservedAnalyses::all();
    }

    static bool isRequired() { return true; }
};


// the entry point for the pass plugin hook
extern "C" LLVM_ATTRIBUTE_WEAK ::llvm::PassPluginLibraryInfo
llvmGetPassPluginInfo() {
  return {
    LLVM_PLUGIN_API_VERSION,
    "GlobalSizePassPlugin",
    "v0.1",
    [](PassBuilder &PB) {
      PB.registerPipelineParsingCallback(
          [](StringRef Name, ModulePassManager &MPM,
             ArrayRef<PassBuilder::PipelineElement>) {
            if (Name == "global-size") {
              MPM.addPass(GlobalSizePass());
              return true;
            }
            return false;
          });
    }
  };
}

// #include "llvm/IR/PassManager.h"
// #include "llvm/Passes/PassBuilder.h"
// #include "llvm/Passes/PassPlugin.h"
// #include "llvm/IR/Module.h"
// #include "llvm/IR/GlobalVariable.h"
// #include "llvm/IR/Function.h"
// #include "llvm/IR/DataLayout.h"
// #include "llvm/IR/Instructions.h"
// #include "llvm/IR/User.h"
// #include "llvm/IR/Value.h"
// #include "llvm/IR/Constants.h"
// #include "llvm/Support/raw_ostream.h"
// #include "llvm/ADT/StringRef.h"
// #include "llvm/IR/Type.h"
// #include "llvm/IR/DerivedTypes.h" // For StructType, ArrayType, PointerType

// #include <string>
// #include <vector>

// using namespace llvm;

// // Helper function to analyze the source of a pointer being stored
// static void analyzeStoredPointerValue(Value *StoredValue, GlobalVariable &TargetGlobal,
//                                       const Twine &AccessPath, Instruction *ContextInst) {
//     Value *RootValue = StoredValue->stripPointerCasts();
//     std::string WarningMsg;

//     if (AllocaInst *AI = dyn_cast<AllocaInst>(RootValue)) {
//         WarningMsg = "[WARNING] Stack address (from alloca @" + AI->getName().str();
//         if (AI->getFunction()) {
//             WarningMsg += " in function @" + AI->getFunction()->getName().str();
//         }
//         WarningMsg += ") is stored into global @" + TargetGlobal.getName().str() + AccessPath.str();
//     } else if (GlobalVariable *GVSource = dyn_cast<GlobalVariable>(RootValue)) {
//         WarningMsg = "[INFO] Global address (of @" + GVSource->getName().str() +
//                      ") is stored into global @" + TargetGlobal.getName().str() + AccessPath.str();
//         // This is an ASLR risk if the raw pointer value is hashed.
//     } else if (Function *FSource = dyn_cast<Function>(RootValue)) {
//         WarningMsg = "[INFO] Function address (@" + FSource->getName().str() +
//                      ") is stored into global @" + TargetGlobal.getName().str() + AccessPath.str();
//     } else if (isa<ConstantPointerNull>(RootValue)) {
//         // Storing null is usually fine and deterministic.
//         return;
//     } else if (isa<UndefValue>(RootValue)) {
//         WarningMsg = "[WARNING] UndefValue pointer is stored into global @" + TargetGlobal.getName().str() + AccessPath.str();
//     }
//     // Add checks for other interesting sources like CallInst, LoadInst (pointer to pointer) if needed.
//     else {
//         // outs() << "  [DEBUG] Pointer stored into global @" << TargetGlobal.getName() << AccessPath.str()
//         //        << " originates from: " << *RootValue << "\n";
//         return; // Not an immediate alloca or global, might be more complex.
//     }

//     if (!WarningMsg.empty()) {
//         outs() << "  " << WarningMsg;
//         if (ContextInst && ContextInst->getFunction()) {
//             outs() << " (at instruction in @" << ContextInst->getFunction()->getName() << ")";
//         }
//         outs() << "\n";
//     }
// }

// // Recursive helper to analyze stores to potentially nested pointer fields in structs/arrays
// static void findPointerStoresToAggregate(Value *AggPtr, GlobalVariable &RootGV,
//                                          Type *CurrentType, Twine CurrentAccessPath,
//                                          std::vector<Value*>& visitedGEPs) {
//     if (PointerType *PT = dyn_cast<PointerType>(CurrentType)) {
//         // This means AggPtr itself is a pointer we are analyzing (e.g. a field that is a pointer)
//         // We need to find who STORES to the memory location AggPtr points to.
//         // This case is handled when CurrentType is the type of the *value being stored*
//         // into a pointer slot. This function is more about finding the pointer *slots*.
//         return;
//     }

//     for (User *U : AggPtr->users()) {
//         if (std::find(visitedGEPs.begin(), visitedGEPs.end(), U) != visitedGEPs.end()) {
//             continue; // Avoid cycles and redundant processing
//         }

//         if (StoreInst *SI = dyn_cast<StoreInst>(U)) {
//             // This case is for when AggPtr is a global variable that is itself a pointer.
//             // e.g., @my_global_ptr = global ptr null
//             // store %new_val, ptr @my_global_ptr
//             if (SI->getPointerOperand() == AggPtr && AggPtr->getType()->isPointerTy()) {
//                  if (PointerType* ValPtrTy = dyn_cast<PointerType>(SI->getValueOperand()->getType())) {
//                     analyzeStoredPointerValue(SI->getValueOperand(), RootGV, CurrentAccessPath, SI);
//                  }
//             }
//         } else if (GetElementPtrInst *GEPI = dyn_cast<GetElementPtrInst>(U)) {
//             visitedGEPs.push_back(GEPI); // Mark as visited
            
//             Type *GEPResultType = GEPI->getResultElementType();
//             std::string GEPPathStr = CurrentAccessPath.str();

//             // Build a string representation of the GEP access for better messages
//             // This is a simplified representation.
//             if (GEPI->getNumIndices() > 0) {
//                  if (ConstantInt *CI = dyn_cast<ConstantInt>(GEPI->getOperand(GEPI->getNumOperands() -1))) {
//                     GEPPathStr += "[" + std::to_string(CI->getZExtValue()) + "]";
//                  } else {
//                     GEPPathStr += "[?]"; // Non-constant index
//                  }
//             }


//             if (PointerType *PT = dyn_cast<PointerType>(GEPResultType)) {
//                 // The GEP result is a pointer to a pointer. We need to find stores *to this GEP result*.
//                 // This means the GEP itself points to a "slot" where a pointer is stored.
//                 for (User *GEPUser : GEPI->users()) {
//                     if (StoreInst *SlotStoreInst = dyn_cast<StoreInst>(GEPUser)) {
//                         if (SlotStoreInst->getPointerOperand() == GEPI) {
//                             analyzeStoredPointerValue(SlotStoreInst->getValueOperand(), RootGV, Twine(GEPPathStr), SlotStoreInst);
//                         }
//                     }
//                 }
//             } else if (isa<StructType>(GEPResultType) || isa<ArrayType>(GEPResultType)) {
//                 // Recursively analyze if the GEP points to another aggregate
//                 findPointerStoresToAggregate(GEPI, RootGV, GEPResultType, Twine(GEPPathStr), visitedGEPs);
//             }
//         }
//     }
// }


// struct GlobalAnalysisPass : public PassInfoMixin<GlobalAnalysisPass> {
//     PreservedAnalyses run(Module &M, ModuleAnalysisManager &AM) {
//         const DataLayout &DL = M.getDataLayout();

//         // outs() << "Global Variable Analysis in Module '" << M.getModuleIdentifier() << "'\n";
//         outs() << "Global Variable Sizes in Module (NPM Pass)\n";
//         // outs() << "-----------------------------------------------\n";

//         bool foundUserGlobals = false;
//         for (GlobalVariable &GV : M.globals()) {
//             if (GV.isDeclaration() || GV.getName().starts_with("llvm.")) {
//                 continue;
//             }
//             foundUserGlobals = true;
//             Type *GlobalValueType = GV.getValueType();
//             uint64_t SizeInBytes = DL.getTypeAllocSize(GlobalValueType);

//             outs() << "Global: @" << GV.getName() << "\n";
//             outs() << "  Type: ";
//             GlobalValueType->print(outs());
//             outs() << "\n";
//             outs() << "  Size: " << SizeInBytes << " bytes\n";

//             std::vector<Value*> visitedGEPsForThisGlobal; // To handle GEP cycles/redundancy for current GV

//             // Case 1: The global variable itself is a pointer.
//             if (PointerType *PT = dyn_cast<PointerType>(GlobalValueType)) {
//                  // Check if the type it points to is also a pointer (e.g. ptr to ptr)
//                  // We are interested in what is stored *into* GV.
//                  for (User* U : GV.users()) {
//                      if (StoreInst* SI = dyn_cast<StoreInst>(U)) {
//                          if (SI->getPointerOperand() == &GV) { // Store is directly to this global pointer var
//                             if (PointerType* StoredValTy = dyn_cast<PointerType>(SI->getValueOperand()->getType())) {
//                                 analyzeStoredPointerValue(SI->getValueOperand(), GV, "", SI);
//                             }
//                          }
//                      }
//                  }
//             }
//             // Case 2 & 3: The global variable is an aggregate (Array or Struct)
//             // We need to find GEPs based on GV, and then look for stores to those GEP results
//             // if the GEP result type is a pointer.
//             else if (isa<ArrayType>(GlobalValueType) || isa<StructType>(GlobalValueType)) {
//                 findPointerStoresToAggregate(&GV, GV, GlobalValueType, "", visitedGEPsForThisGlobal);
//             }

//             outs() << "\n";
//         }

//         if (!foundUserGlobals) {
//             outs() << "No user-defined global variables found for analysis.\n";
//         }

//         outs() << "-----------------------------------------------\n";
//         outs() << "Analysis Complete.\n";

//         return PreservedAnalyses::all();
//     }
// };

// extern "C" LLVM_ATTRIBUTE_WEAK ::llvm::PassPluginLibraryInfo
// llvmGetPassPluginInfo() {
//   return {
//     LLVM_PLUGIN_API_VERSION,
//     "GlobalAnalysisPassPlugin",
//     "v0.1",
//     [](PassBuilder &PB) {
//       PB.registerPipelineParsingCallback(
//           [](StringRef Name, ModulePassManager &MPM,
//              ArrayRef<PassBuilder::PipelineElement>) {
//             if (Name == "global-size") {
//               MPM.addPass(GlobalAnalysisPass());
//               return true;
//             }
//             return false;
//           });
//     }
//   };
// }
