cmake_minimum_required(VERSION 3.13)
project(GlobalSizePassProject)

set(CMAKE_CXX_COMPILER /targetfuzz-campaign/compilers/llvm/llvm-project/build/bin/clang++)
set(CMAKE_C_COMPILER /targetfuzz-campaign/compilers/llvm/llvm-project/build/bin/clang)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

# Define a CMake variable LT_LLVM_INSTALL_DIR with an empty string as initial value. This is used to specify the directory where the LLVM toolchain is installed.
# CACHE is used to make the variable persisent across runs
set(LT_LLVM_INSTALL_DIR "" CACHE PATH "LLVM installation directory")
# Append the LLVM installation directory to the CMake search paths. This allows searching for the LLVMConfig.cmake file, necessary for finding and configuring LLVM.
list(APPEND CMAKE_PREFIX_PATH "${LT_LLVM_INSTALL_DIR}/lib/cmake/llvm/")

# Find LLVM using llvm-config
# This assumes 'llvm-config' is in your PATH and corresponds to LLVM 21
find_package(LLVM 21 REQUIRED CONFIG)


# Print LLVM information (optional, but helpful for debugging)
message(STATUS "Found LLVM ${LLVM_PACKAGE_VERSION}")
message(STATUS "Using LLVMConfig.cmake in: ${LLVM_DIR}")
message(STATUS "LLVM definitions: ${LLVM_DEFINITIONS}")
message(STATUS "LLVM include dirs: ${LLVM_INCLUDE_DIRS}")
message(STATUS "LLVM library dirs: ${LLVM_LIBRARY_DIRS}")


# Add LLVM include directories and definitions
include_directories(${LLVM_INCLUDE_DIRS})
add_definitions(${LLVM_DEFINITIONS})
# link_directories(${LLVM_LIBRARY_DIRS})

# Define the pass library
# This creates a shared library (e.g., libGlobalSizePass.so or .dylib)
add_library(GlobalSizePass MODULE GlobalSizePass.cpp)

# Link the pass library against the necessary LLVM components
# Removed Passes as it's more related to legacy PM structure.
# llvm_map_components_to_libnames(llvm_libs
#     Core
#     Support
#     Analysis      # Analysis framework
#     IRReader      # For parsing textual IR
#     AsmParser     # For parsing textual IR
#     BitReader     # For parsing bitcode
#     TransformUtils
# )

target_link_libraries(GlobalSizePass PRIVATE ${llvm_libs})
