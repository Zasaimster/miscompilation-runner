cmake_minimum_required(VERSION 3.13)
project(GlobalSizePassProject CXX)

# Find LLVM using llvm-config
# This assumes 'llvm-config' is in your PATH and corresponds to LLVM 21
find_package(LLVM REQUIRED CONFIG)

# Print LLVM information (optional, but helpful for debugging)
message(STATUS "Found LLVM ${LLVM_PACKAGE_VERSION}")
message(STATUS "Using LLVMConfig.cmake in: ${LLVM_DIR}")
message(STATUS "LLVM definitions: ${LLVM_DEFINITIONS}")
message(STATUS "LLVM include dirs: ${LLVM_INCLUDE_DIRS}")
message(STATUS "LLVM library dirs: ${LLVM_LIBRARY_DIRS}")

# Add LLVM include directories and definitions
include_directories(${LLVM_INCLUDE_DIRS})
add_definitions(${LLVM_DEFINITIONS})

# Define the pass library
# This creates a shared library (e.g., libGlobalSizePass.so or .dylib)
add_library(GlobalSizePass MODULE GlobalSizePass.cpp)

# Link the pass library against the necessary LLVM components
# Removed Passes as it's more related to legacy PM structure.
llvm_map_components_to_libnames(llvm_libs
    Core
    Support
    Analysis      # Analysis framework
    IRReader      # For parsing textual IR
    AsmParser     # For parsing textual IR
    BitReader     # For parsing bitcode
    TransformUtils
)

target_link_libraries(GlobalSizePass PRIVATE ${llvm_libs})
