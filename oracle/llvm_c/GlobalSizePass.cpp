// https://github.com/10x-Engineers/tutorial-llvm-pass/blob/main/tutorial_hello.md 

#include "llvm/IR/PassManager.h"
#include "llvm/Passes/PassBuilder.h"
#include "llvm/Passes/PassPlugin.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/GlobalVariable.h"
#include "llvm/IR/DataLayout.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/ADT/StringRef.h"

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
