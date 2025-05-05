# Overview
This codebase is a tool that helps determine the correctness of a compiler optimization on a program P to P'. It specifically tests LLVM IR files optimized with Clang. 

# Setup
All of these steps are necessary to run the core script.

## Dependencies
This tool was tested and developed with Python 3.10

### Python libraries
- pytest
- difflib

### Other dependencies
Install [CMake](https://cmake.org/download/)

Install [LLVM](https://clang.llvm.org/get_started.html)
- Follow along with the getting started instruction with a few modifications along the way:
- Install with `llvm;clang;compiler-rt` to support the Alive2 installation later and enable `fsanitize`. Your workflow will look like:
```bash
$ cmake -GNinja -DLLVM_ENABLE_RTTI=ON -DBUILD_SHARED_LIBS=ON -DCMAKE_BUILD_TYPE=Release -DLLVM_ENABLE_ASSERTIONS=ON -DLLVM_ENABLE_PROJECTS="llvm;clang;compiler-rt" ../llvm
$ ninja -j $(nproc)
$ export PATH="/path/to/llvm/build/bin:$PATH"
```
Install [Z3](https://github.com/Z3Prover/z3/releases) and [re2c](https://re2c.org/build/build.html) (necessary for Alive2)
- Z3
  - After installing the latest release, follow [this](https://github.com/Z3Prover/z3?tab=readme-ov-file#building-z3-using-make-and-gccclang) guide
  - Add Z3 build folder to your path: `export PATH="/path/to/z3/build:$PATH"`
- Re2c
  - Install the [latest release](https://github.com/skvadrik/re2c/releases)
  - Run `mkdir .build && cd .build && cmake .. && cmake --build` 
  - Add re2c build folder to your path: `export PATH="/path/to/re2c/.build:$PATH"`

Install [Alive2](https://github.com/AliveToolkit/alive2?tab=readme-ov-file#building-and-running-translation-validation)
- In your root directory where LLVM is installed and you wish Alive2 to also be installed:
```bash
$ export ALIVE2_HOME=$PWD
$ export LLVM2_HOME=$PWD/llvm-project
$ export LLVM2_BUILD=$LLVM2_HOME/build
$ export ALIVE2_HOME=$PWD
$ git clone git@github.com:AliveToolkit/alive2.git
$ cd alive2
$ mkdir build
$ cd build
$ cmake -GNinja -DCMAKE_PREFIX_PATH=$LLVM2_BUILD -DBUILD_TV=1 -DCMAKE_BUILD_TYPE=Release ..
$ ninja -j $(nproc)
$ export PATH="/path/to/alive2/build:$PATH"
```

## Generate CRC calculation object file
```bash
$ cd crc
$ chmod +x compile_crc.sh
$ ./compile_crc_.sh
```

## Build the LLVM Pass Plugin
```bash
$ cd llvm_c
$ rm -rf build && mkdir build && cd build && cmake .. && make
# Good to proceed after running ^. Example manual usage below
$ opt -load-pass-plugin libGlobalSizePass.so -passes=global-size path/to/some_ir_file.ll
```
The pass plugin leverages the LLVM C++ APIs and prints the global variable names, types, and size allocated in bytes.

# Usage
## Standalone script
If you have two `.ll` files you would like to test, you can run `python3 oracle.py -i path/to/p.ll path/to/p_prime.ll -o path/to/output/json`

This will run the script with all available oracles and store the output in `path/to/output/json`. An example successful output may look something like:

```json
{
    "timeout": "false",
    "regular_compile_crash": "false",
    "regular_execution_crash": "false",
    "regular_undefined_execution": "false",
    "regular_executed": "true",
    "regular_different_output": "false",
    "regular_undeterminable_output": "false",
    "regular_same_output": "true",
    "alive2_error": "false",
    "alive2_incorrect": "false",
    "alive2_no_prove": "false",
    "alive2_correct": "true",
    "crc_compile_crash": "false",
    "crc_execution_crash": "false",
    "crc_undefined_execution": "false",
    "crc_executed": "true",
    "crc_no_hash_found": "false",
    "crc_logic_failed": "false",
    "crc_logic_undeterminable": "false",
    "crc_succeeded": "true"
}
```
Fields of interest to indicate successful compilation and execution: `"regular_executed": "true"`, `"alive2_correct": "true"`, and `"crc_executed": "true"`. The other fields are important to log any compilation issues, execution errors, false positives, and true positives.


### Functionality
- Runs Alive2 translation verification, `alive-tv`, on both files
- Injects IR code which calculates the CRC hash of all global variables, `abort()` and `exit()` calls, and the return value of `main()`. This approach is inspired by the [GrayC Project](https://github.com/srg-imperial/GrayC/tree/main).
- To see what your source code looks like with the modified CRC injection, see `path/to/p_modified_crc.ll` and `path/to/p_prime_modified_crc.ll` after running the script. 

> **Comment**: This process would be trivial if there was an easy way to generate the AST of the LLVM IR code. This would enable straightforward semantic analysis. However, generating the IR is a one-directional process (i.e., C program -> IR) and cannot be reversed. Specifically, a high level language is converted to a Clang AST structure before being converted to LLVM IR. Thus, converting an IR program would sort of be like reverse engineering LLVM, an endeavor better suited for someone with far more time.

## Automated runner
`miscomp_tests_runner/runner.py` automates miscompilation prediction of a large batch of LLVM IR files. It can be used with `.ll` files stored in `miscomp_tests_renamed/`.

Example setup:
- Download a tarfile of example tests from [here](https://drive.google.com/drive/folders/124_st2qFAM_XT5cJgHQrwY3nFyVh4v45?usp=drive_link)
- Rename the files with `scripts/rename_miscomp_tests_files.py`. This script expects all `.ll` files to be in the format: `<program_id>_<opt_type>_<opt>.ll` where
  - `program_id` is some uid to differentiate programs
  - `opt_type` is a compiler optimization level like `O0` or `O1` (only these are currently supported)
  - `opt` is an optional string `opt` to distinguish p and p' pairs
  - Examples
    - `10001306_O0.ll`
    - `10001306_O0_opt.ll`
    - `10001306_O1.ll`
    - `10001306_O1_opt.ll`

The renaming script converts the program ids to incrementing numbers beginning at 1.

```bash
$ cd miscompilation-runner
# download and untar the file
$ python3 scripts/rename_miscomp_tests_files.py # renamed files are in miscomp_tests_renamed/
# Ready to run the script!
$ python3 miscomp_tests_renamed/runner.py
```

The runner script store all logs of `main.py` in `miscomp_tests_runner/test_outs/`. High level statistics are stored in `miscomp_tests_runner/stats.txt` while detailed information of every file associated with a test result are stored in their corresponding `.txt` files.


## Scripts
[`miscomp_tests_runner/runner.py`](miscomp_tests_runner/runner.py)
- Basic usage is described [above](#automated-runner).
- `-d` will point to a directory to scan for LLVM IR file pairs. This defaults to `miscomp_tests_renamed/`.
- `-i` points an input file with programs formatted like `<program_id><opt_type>` separated by newlines. The script will only run on these programs. 

[`scripts/rename_miscomp_tests_files.py`](scripts/rename_miscomp_tests_files.py)
- Basic usage is described [above](#automated-runner).
- There is an optional `--filter` flag which will remove all P, P' pairs from `miscomp_tests/` that have no substantial difference in code. Files that only have differences in comments, metadata, or attributes are filtered out and remaining programs are saved in `miscomp_tests_renamed_filtered/`.

[`scripts/sanitizer_tests.py`](scripts/sanitizer_tests.py)
- This scripts runs `fsanitize` with different flags on all files in `miscomp_tests_renamed/`

## Tests
- After installing `pytest`, run `pytest` or `python3 -m pytest` in `oracle/` to run the test suite. 