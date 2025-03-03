import argparse
import subprocess
import csv

import llvmlite

# this cannot be set any later in the code or it won't work
llvmlite.opaque_pointers_enabled = True
import llvmlite.binding as llvm

CSV_FILENAME = "results/results.csv"


def parse_args():
    parser = argparse.ArgumentParser(
        description="Parse two filenames from command line."
    )
    parser.add_argument("p", help="Path to the first file")
    parser.add_argument("p_prime", help="Path to the second file")
    # TODO: this should be updated to correctly reflect the system architectures
    parser.add_argument(
        "--system",
        choices=["mac", "linux"],
        help="Optional system type (mac or linux)",
        required=False,
    )
    parser.add_argument(
        "--num_runs",
        type=int,
        default=1,
        help="Number of times the IR files should be compiled and executed for differential testing (int, defaults to 1)",
        required=False,
    )
    return parser.parse_args()


def get_all_commands(file, it):
    filename = file.split("/")[-1][:-3]
    path = "/".join(file.split("/")[:-1])
    out_path = f"{path}/runtime/{filename}"

    # TODO: make the architecture configurable
    llc_cmd = [
        "llc",
        "--march=arm64",
        "--mtriple=arm64-apple-darwin",
        file,
        "-o",
        f"{out_path}_{it}.s",
    ]
    generate_obj_file_cmd = [
        "clang",
        "-c",
        f"{out_path}_{it}.s",
        "-o",
        f"{out_path}_{it}.o",
    ]
    generate_executable_cmd = ["clang", f"{out_path}_{it}.o", "-o", f"{out_path}_{it}"]
    execute_cmd = [f"./{out_path}_{it}"]

    return [llc_cmd, generate_obj_file_cmd, generate_executable_cmd, execute_cmd]


def run_cmds_for_each_file(p, p_prime, num_runs=3):
    """
    Compile each .ll file and run the executable multiple times for differential testing.
    The results are returned as
    """

    def run_cmds(cmds):
        res = None
        for cmd in cmds:
            try:
                print(f"Running: {' '.join(cmd)}")
                if cmd[0][0:2] == "./":
                    res = subprocess.run(cmd, capture_output=True)
                    # update to returncode or stdout check based on input programs
                    print(res)
                else:
                    subprocess.run(cmd)
            except subprocess.CalledProcessError as e:
                print(f"Error running command: {' '.join(cmd)}")
                print("Error: ", e)
                raise
        return res

    print(f"\n----------------Executing {p}, {p_prime}----------------")
    # print("-------------------")
    p_out = []
    p_prime_out = []
    for i in range(num_runs):
        p_cmds = get_all_commands(p, i)
        p_prime_cmds = get_all_commands(p_prime, i)

        p_out.append(run_cmds(p_cmds))
        p_prime_out.append(run_cmds(p_prime_cmds))

    print(f"----------------Finished executing {p}, {p_prime}----------------\n")
    # print("-------------------")
    return {"p": p_out, "p_prime": p_prime_out}


def get_code(filename):
    ir_code = None
    with open(filename, "r") as f:
        ir_code = f.read()
    return ir_code


def get_parsed_code(filename):
    ir_code = get_code(filename)
    code_lines = ir_code.strip().split("\n")
    parsed_code = []
    for l in code_lines:
        # Remove comment
        if ";" in l:
            l = l.split(";")[0]
        # Remove metadata definitions and attachments
        if "!" in l:
            l = l.split("!")[0]
        if l.strip() != "":
            parsed_code.append(l.strip())

    return "\n".join(parsed_code)


def naive_check_randomness(p, p_prime):
    p_code = get_parsed_code(p)
    p_prime_code = get_parsed_code(p_prime)

    # TODO: you could have a program that uses srand and time without doing srand(time(NULL)) and it would still be deterministic.
    p_random, p_prime_randomn = False, False
    if "@srand" in p_code and "@time" in p_code:  # @rand is pseudo-random
        p_random = True

    if "@srand" in p_prime_code and "@time" in p_prime_code:
        p_prime_randomn = True

    return True if p_random or p_prime_randomn else False


def init_llvmlite():
    llvm.initialize()
    llvm.initialize_native_target()
    llvm.initialize_native_asmprinter()

    target = llvm.Target.from_default_triple()
    # target = llvm.Target.from_triple("arm64-apple-darwin")
    target_machine = target.create_target_machine()
    backing_mod = llvm.parse_assembly("")
    engine = llvm.create_mcjit_compiler(backing_mod, target_machine)
    return engine


def compile_ir(engine, filename):
    ir = get_code(filename)
    mod: llvm.ModuleRef = llvm.parse_assembly(ir)  # not ir.Module
    mod.verify()  # make sure code is good. This is LLVM's verifier https://github.com/llvm/llvm-project/blob/main/llvm/lib/IR/Verifier.cpp

    engine.add_module(mod)
    engine.finalize_object()
    engine.run_static_constructors()
    return mod


# def create_crc_hash(mod: llvm.ModuleRef):
#     global_vars = []
#     for g in mod.global_variables:
#         if not g.type.is_pointer:
#             global_vars.append(g)
#     print(f"Found global variables: {global_vars}")

#     main_func = mod.get_function("main")
#     # TODO: Create main function if it's not present
#     if main_func is None:
#         raise ValueError("Main function 'main' not found in LLVM module.")

#     entry_block = next(main_func.blocks)
#     print(next(entry_block.instructions))

#     # i32 printf(i8*, ...)
#     printf_fnty = ir.FunctionType(
#         ir.IntType(32), [ir.IntType(8).as_pointer()], var_arg=True
#     )
#     printf_func = ir.Function(mod, printf_fnty, name="printf")

#     print(mod)
#     # builder = llvm.IRBuilder()


def write_to_csv(csv_output):
    """
    Output format:
    Path for P, Path
    """
    header = list(csv_output.keys())

    file_exists = False
    existing_header = None

    # Search for existing file and extract header for comparison
    try:
        with open(CSV_FILENAME, "r", newline="") as csvfile_check:
            csv_reader = csv.reader(csvfile_check, delimiter=",")
            try:
                existing_header = next(csv_reader)
            except StopIteration:
                existing_header = None
    except FileNotFoundError:
        file_exists = False

    try:
        with open(CSV_FILENAME, "a", newline="") as csvfile:
            csv_writer = csv.writer(csvfile, delimiter=",")

            if not file_exists or not existing_header:
                csv_writer.writerow(header)  # Write header only if file is new/empty

            csv_writer.writerow(list(csv_output.values()))

        print(f"Data writing to CSV file '{CSV_FILENAME}' successfully.")
    except Exception as e:
        print(f"Error writing to CSV file: {e}")


def alive2_tv_check(p, p_prime):
    """
    This runs the Alive2 https://github.com/AliveToolkit/alive2 Standalone
    Translation Validation tool on P and the optimized P prime.
    """
    cmd = f"alive-tv {p} {p_prime}"
    print(f"Running: {cmd}")
    res = subprocess.run(cmd.split(" "), capture_output=True, text=True)
    if res.returncode != 0:
        print(f"Unexpected output. Return code = {res.returncode}")
        print(f"stdout: {res.stdout}")
        print(f"stderr: {res.stderr}")
        return None

    summary = [out.strip() for out in res.stdout.split("Summary:\n ")[1].split("\n")]
    summary = summary[:-1]
    # 0: correct, 1: incorrect, 2: failed-to-prove, 3: Alive2 errors
    res = {
        "correct_transformations": int(summary[0][0]),
        "incorrect_transformations": int(summary[1][0]),
        "no_prove_transformations": int(summary[2][0]),
        "errors": int(summary[3][0]),
    }
    return res


# TODO: need to add a main function if there is not one...
def main():
    args = parse_args()
    p_file, p_prime_file = args.p, args.p_prime
    csv_output = {
        "P": p_file,
        "P_prime": p_prime_file,
        "returncode_match": None,
        "stdout_match": None,
        "stderr_match": None,
        "has_randomness": None,
        "alive2_correct": None,
        "alive2_incorrect": None,
        "alive2_no_prove": None,
        "alive2_error": None,
    }

    cmds_outs = run_cmds_for_each_file(args.p, args.p_prime, num_runs=1)

    # Evaluate results
    # program_results = {"p": {}, "p_prime": {}}
    print("---------------Evaluating program outputs---------------")
    same_outputs = True
    for i in range(len(cmds_outs["p"])):
        p_out = cmds_outs["p"][i]
        p_prime_out = cmds_outs["p_prime"][i]

        if p_out.returncode != p_prime_out.returncode:
            same_outputs = False
            print(
                f"Iteration #{i+1}: Invalid return codes.\n\tP: {p_out.returncode}\n\tP_prime: {p_prime_out.returncode}"
            )
            csv_output["returncode_match"] = False
        else:
            csv_output["returncode_match"] = True

        if p_out.stdout != p_prime_out.stdout:
            same_outputs = False
            print(
                f"Iteration #{i+1}: Invalid stdout.\n\tP: {p_out.stdout}\n\tP_prime: {p_prime_out.stdout}"
            )
            csv_output["stdout_match"] = False
        else:
            csv_output["stdout_match"] = True
        if p_out.stderr != p_prime_out.stderr:
            same_outputs = False
            print(
                f"Iteration #{i+1}: Invalid stderr.\n\tP: {p_out.stderr}\n\tP_prime: {p_prime_out.stderr}"
            )
            csv_output["stderr_match"] = False
        else:
            csv_output["stderr_match"] = True
    print("---------------Finished evaluating program outputs---------------\n")

    # Look at code to see if there is randomness involved
    randomness_string = ""
    if naive_check_randomness(p_file, p_prime_file):
        randomness_string = "Program has randomness. Results can differ."
        randomness_string += (
            " Tentatively NOT a miscompilation" if not same_outputs else ""
        )

        csv_output["has_randomness"] = True
    else:
        randomness_string = "Program has no randomness."
        randomness_string += " This IS a miscompilation" if not same_outputs else ""

        csv_output["has_randomness"] = False
    print(randomness_string)

    # print("\n---------------Evaluating code semantics---------------")
    # llvm_engine = init_llvmlite()
    # p_mod = compile_ir(llvm_engine, p_file)
    # p_prime_mod = compile_ir(llvm_engine, p_prime_file)

    print("\n---------------Running Alive2 Translation Validation---------------")
    # Run Alive2 soundness check
    alive2_res = alive2_tv_check(p_file, p_prime_file)
    if alive2_res is not None:
        print(f"Alive2 output: {alive2_res}")
        csv_output["alive2_correct"] = alive2_res["correct_transformations"]
        csv_output["alive2_incorrect"] = alive2_res["incorrect_transformations"]
        csv_output["alive2_no_prove"] = alive2_res["no_prove_transformations"]
        csv_output["alive2_error"] = alive2_res["errors"]
    print("---------------Finished Running Alive2---------------\n")

    write_to_csv(csv_output)


if __name__ == "__main__":
    main()
