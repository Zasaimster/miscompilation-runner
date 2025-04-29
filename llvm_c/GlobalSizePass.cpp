#include "llvm/IR/PassManager.h"     // Core New PM structures
#include "llvm/Passes/PassBuilder.h" // For registering pipeline parsing callbacks
#include "llvm/Passes/PassPlugin.h"  // For registering a pass plugin
#include "llvm/IR/Module.h"
#include "llvm/IR/GlobalVariable.h"
#include "llvm/IR/DataLayout.h"
#include "llvm/Support/raw_ostream.h" // For llvm::outs(), llvm::errs()
#include "llvm/ADT/StringRef.h"

// Use the llvm namespace
using namespace llvm;

// Define the pass struct, inheriting from PassInfoMixin for NPM
struct GlobalSizePass : public PassInfoMixin<GlobalSizePass> {

    // The main workhorse method for the New Pass Manager module pass.
    // It takes the Module and the ModuleAnalysisManager as arguments.
    PreservedAnalyses run(Module &M, ModuleAnalysisManager &AM) {
        // Get the DataLayout from the module.
        // While you *can* request analyses via AM, DataLayout is fundamental
        // and readily available from the Module itself.
        const DataLayout &DL = M.getDataLayout();

        // Print a header
        outs() << "--- Global Variable Sizes in Module (NPM Pass) ---\n";

        bool foundGlobals = false;
        // Iterate through all global variables in the module
        for (GlobalVariable &GV : M.globals()) {
            // Skip declarations and internal LLVM variables
            if (GV.isDeclaration() || GV.getName().starts_with("llvm.")) {
                continue;
            }

            foundGlobals = true;

            // Get the type of the data stored by the global variable.
            Type *GlobalType = GV.getValueType();

            // Calculate the allocated size of the type using the DataLayout.
            uint64_t SizeInBytes = DL.getTypeAllocSize(GlobalType);

            // Print the global variable's name, its type, and calculated size
            outs() << "@" << GV.getName() << ": Type=";
            GlobalType->print(outs());
            outs() << ", Size=" << SizeInBytes << "\n";
        }

        if (!foundGlobals) {
            outs() << "No user-defined global variables found.\n";
        }

        outs() << "-----------------------------------------------\n";

        // Since this pass is purely for analysis and doesn't change the IR,
        // it preserves all existing analyses.
        return PreservedAnalyses::all();
    }

    // Method required by PassInfoMixin for static registration (especially for plugins)
    // This allows the pass manager to query whether the pass is required based on command line options.
    // For a simple plugin pass invoked explicitly, this can often just return true.
    static bool isRequired() { return true; }

}; // end of struct GlobalSizePass


//-----------------------------------------------------------------------------
// New PM Registration
//-----------------------------------------------------------------------------
// This function is the entry point for the pass plugin hook.
// It's called by LLVM when the plugin library is loaded.
extern "C" LLVM_ATTRIBUTE_WEAK ::llvm::PassPluginLibraryInfo
llvmGetPassPluginInfo() {
  return {
    LLVM_PLUGIN_API_VERSION,
    "GlobalSizePassPlugin",
    "v0.1",
    // Callback to register passes with the PassBuilder
    [](PassBuilder &PB) {
      // Register the pass pipeline parsing callback.
      // This allows the pass to be invoked using '-passes=global-size'
      PB.registerPipelineParsingCallback(
          [](StringRef Name, ModulePassManager &MPM,
             ArrayRef<PassBuilder::PipelineElement>) {
            // Check if the requested pass name matches our pass name
            if (Name == "global-size") {
              // Add an instance of our pass to the module pass manager
              MPM.addPass(GlobalSizePass());
              return true; // Indicate that we handled the pass name
            }
            return false; // Indicate that we didn't handle this pass name
          });
    }
  };
}
