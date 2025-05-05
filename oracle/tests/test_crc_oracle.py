# tests/test_crc_oracle.py

import pytest
import unittest
from unittest.mock import patch, MagicMock, mock_open
import subprocess
import os

from oracles import crc
import common

# Constants for Testing
MOCK_P_FILE = "p.ll"
MOCK_P_PRIME_FILE = "p_prime.ll"
MOCK_BINARY_EXECS = {"clang": "/mock/clang", "opt": "/mock/opt"}


MOCK_PASS_DIR = crc.PASS_DIR
MOCK_LIB_NAME = crc.LIB_NAME
MOCK_BUILD_DIR = os.path.join(MOCK_PASS_DIR, "build")
MOCK_LIB_PATH = os.path.join(MOCK_BUILD_DIR, MOCK_LIB_NAME)
MOCK_TIMEOUT = common.TIMEOUT


def create_mock_subprocess_result(stdout="", stderr="", returncode=0, args=None):
    """Helper to create a mock CompletedProcess object."""
    mock_res = MagicMock(spec=subprocess.CompletedProcess)
    mock_res.stdout = stdout
    mock_res.stderr = stderr
    mock_res.returncode = returncode
    mock_res.args = args if args else []
    return mock_res


# build_globals_pass() tests
@patch("oracles.crc.subprocess.run")
@patch("oracles.crc.os.makedirs")
@patch("oracles.crc.shutil.rmtree")
@patch("oracles.crc.os.path.exists")
def test_build_globals_pass_already_exists(mock_exists, mock_rmtree, mock_makedirs, mock_run):
    """Test build_globals_pass when the library already exists."""
    mock_exists.return_value = True

    result = crc.build_globals_pass()

    assert result is True
    mock_exists.assert_called_once_with(MOCK_LIB_PATH)
    mock_rmtree.assert_not_called()
    mock_makedirs.assert_not_called()
    mock_run.assert_not_called()


@patch("oracles.crc.subprocess.run")
@patch("oracles.crc.os.makedirs")
@patch("oracles.crc.shutil.rmtree")
@patch("oracles.crc.os.path.exists")
def test_build_globals_pass_build_success(mock_exists, mock_rmtree, mock_makedirs, mock_run):
    """Test build_globals_pass performs build steps successfully."""
    mock_exists.side_effect = [False, False, True]
    mock_cmake_res = create_mock_subprocess_result()
    mock_make_res = create_mock_subprocess_result()
    mock_run.side_effect = [mock_cmake_res, mock_make_res]

    crc.build_globals_pass()

    assert mock_exists.call_count == 3
    mock_exists.assert_any_call(MOCK_LIB_PATH)
    mock_exists.assert_any_call(MOCK_BUILD_DIR)
    mock_exists.assert_any_call(MOCK_LIB_PATH)
    mock_rmtree.assert_not_called()
    mock_makedirs.assert_called_once_with(MOCK_BUILD_DIR, exist_ok=True)
    assert mock_run.call_count == 2
    mock_run.assert_any_call(
        ["cmake", ".."], cwd=MOCK_BUILD_DIR, capture_output=True, text=True, check=True, timeout=MOCK_TIMEOUT
    )
    mock_run.assert_any_call(["make"], cwd=MOCK_BUILD_DIR, capture_output=True, text=True, timeout=MOCK_TIMEOUT)


@patch("oracles.crc.subprocess.run")
@patch("oracles.crc.os.makedirs")
@patch("oracles.crc.shutil.rmtree")
@patch("oracles.crc.os.path.exists")
def test_build_globals_pass_build_fail_lib_not_found(mock_exists, mock_rmtree, mock_makedirs, mock_run):
    """Test build_globals_pass raises error if lib not found after build."""
    mock_exists.side_effect = [False, True, False]
    mock_cmake_res = create_mock_subprocess_result()
    mock_make_res = create_mock_subprocess_result()
    mock_run.side_effect = [mock_cmake_res, mock_make_res]

    with pytest.raises(Exception, match=f"Error: Build process completed, but '{MOCK_LIB_NAME}' was not found."):
        crc.build_globals_pass()

    assert mock_exists.call_count == 3
    mock_rmtree.assert_called_once_with(MOCK_BUILD_DIR)
    mock_makedirs.assert_called_once_with(MOCK_BUILD_DIR, exist_ok=True)
    assert mock_run.call_count == 2


# run_globals_pass() tests
@patch("oracles.crc.subprocess.run")
def test_run_globals_pass_parsing(mock_run):
    """Test parsing the output of the opt pass."""
    mock_stdout = """
Some header info...
Global Variable Sizes in Module 'test.ll':
@var1: Type=i32, Size=4
@var_ptr: Type=ptr, Size=8
@var2: Type=[10 x i8], Size=10
More stuff...
    """

    # @x: Type=i32, Size=4
    # @p: Type=ptr, Size=8
    # @.str: Type=[20 x i8], Size=20
    mock_run.return_value = create_mock_subprocess_result(stdout=mock_stdout)

    expected_opt_command = [
        "opt",
        "-load-pass-plugin",
        MOCK_LIB_PATH,
        "-passes=global-size",
        MOCK_P_FILE,
        "-o",
        os.devnull,
    ]

    result = crc.run_globals_pass(MOCK_P_FILE)

    mock_run.assert_called_once_with(
        expected_opt_command, capture_output=True, text=True, check=True, timeout=MOCK_TIMEOUT
    )
    expected_globals = {
        "var1": {"var_type": "i32", "size": "4"},
        "var2": {"var_type": "[10 x i8]", "size": "10"},
    }
    assert result == expected_globals


@patch("oracles.crc.subprocess.run")
def test_run_globals_pass_no_user_globals(mock_run):
    """Test parsing when no user-defined globals are found."""
    mock_stdout = """
    Global Variable Sizes in Module 'test.ll':
    No user-defined global variables found.
    """
    mock_run.return_value = create_mock_subprocess_result(stdout=mock_stdout)

    result = crc.run_globals_pass(MOCK_P_FILE)
    assert result == {}


# get_globals_info() tests
# TODO: can add all working examples from examples/global_vars.ll in here
@patch("oracles.crc.run_globals_pass")
@patch("oracles.crc.build_globals_pass")
def test_get_globals_info(mock_build, mock_run_pass):
    """Test get_globals_info orchestrates and formats data."""
    mock_build.return_value = True
    mock_run_pass.return_value = {
        "g_var": {"var_type": "i64", "size": "8"},
        "g_arr": {"var_type": "[5xi32]", "size": "20"},
    }

    result = crc.get_globals_info(MOCK_P_FILE)

    mock_build.assert_called_once()
    mock_run_pass.assert_called_once_with(MOCK_P_FILE)
    # Assertions remain the same logically
    assert "g_var" in result
    assert (
        result["g_var"]["varname_code"]
        == '@_crc_varname_g_var = private unnamed_addr constant [6 x i8] c"g_var\\00", align 1'
    )
    assert (
        result["g_var"]["global_info_entry"]
        == "%global_info { i8* bitcast (i64* @g_var to i8*), i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @_crc_varname_g_var, i32 0, i32 0 ) }"
    )
    assert "g_arr" in result
    print(result["g_arr"])
    assert (
        result["g_arr"]["varname_code"]
        == '@_crc_varname_g_arr = private unnamed_addr constant [6 x i8] c"g_arr\\00", align 1'
    )
    assert (
        result["g_arr"]["global_info_entry"]
        == "%global_info { i8* bitcast ([5xi32]* @g_arr to i8*), i32 20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @_crc_varname_g_arr, i32 0, i32 0 ) }"
    )


# get_default_return_value() tests
@pytest.mark.parametrize(
    "llvm_type, expected_value",
    [
        ("void", "void"),
        ("i32", "i32 0"),
        ("float", "float 0.0"),
        ("i8*", "i8* null"),
        ("unknown_type", "unknown_type undef"),
    ],
)
def test_get_default_return_value(llvm_type, expected_value):
    assert crc.get_default_return_value(llvm_type) == expected_value


# Tests for replace_abort_exit_calls() tests
SAMPLE_IR_SIMPLE = [
    "define i32 @main() {",
    "entry:",
    "  call void @exit(i32 1)",
    "  unreachable ; Added by compiler",
    "}",
]
SAMPLE_IR_ABORT = [
    "define void @foo() {",
    "entry:",
    "  %cond = icmp eq i32 %a, %b",
    "  br i1 %cond, label %if.then, label %if.end",
    "if.then:",
    "  tail call void @abort()",
    "  unreachable",
    "if.end:",
    "  ret void",
    "}",
]
SAMPLE_IR_NO_UNREACHABLE = [
    "define i32 @bar(i32 %argc) {",
    "entry:",
    "  %cmp = icmp eq i32 %argc, 0",
    "  br i1 %cmp, label %exit.early, label %cont",
    "exit.early:",
    "  call void @exit(i32 %argc)",
    "cont:",
    "  ret i32 0",
    "}",
]
SAMPLE_IR_NO_FUNCTION = ["call void @exit(i32 1)"]


@patch("oracles.crc.get_default_return_value", side_effect=crc.get_default_return_value)
def test_replace_exit_simple(mock_get_default):
    """Test replacing simple exit call with unreachable."""
    result = crc.replace_abort_exit_calls(SAMPLE_IR_SIMPLE)
    expected = [
        "define i32 @main() {",
        "entry:",
        "\tcall void @_crc_exit_call(i32 1)",
        "\tret i32 0",
        "}",
    ]
    assert result == expected
    mock_get_default.assert_called_once_with("i32")


@patch("oracles.crc.get_default_return_value", side_effect=crc.get_default_return_value)
def test_replace_abort_tail(mock_get_default):
    """Test replacing tail call abort with unreachable."""
    result = crc.replace_abort_exit_calls(SAMPLE_IR_ABORT)
    expected = [
        "define void @foo() {",
        "entry:",
        "  %cond = icmp eq i32 %a, %b",
        "  br i1 %cond, label %if.then, label %if.end",
        "if.then:",
        "\ttail call void @_crc_abort_call()",
        "\tret void",
        "if.end:",
        "  ret void",
        "}",
    ]
    assert result == expected
    mock_get_default.assert_called_once_with("void")


@patch("oracles.crc.get_default_return_value", side_effect=crc.get_default_return_value)
def test_replace_exit_no_unreachable(mock_get_default):
    """Test replacing exit call without a following unreachable."""
    result = crc.replace_abort_exit_calls(SAMPLE_IR_NO_UNREACHABLE)
    expected = [
        "define i32 @bar(i32 %argc) {",
        "entry:",
        "  %cmp = icmp eq i32 %argc, 0",
        "  br i1 %cmp, label %exit.early, label %cont",
        "exit.early:",
        "\tcall void @_crc_exit_call(i32 %argc)",
        "\tret i32 0",
        "cont:",
        "  ret i32 0",
        "}",
    ]
    assert result == expected
    mock_get_default.assert_called_once_with("i32")


@patch("oracles.crc.get_default_return_value", side_effect=crc.get_default_return_value)
def test_replace_no_function_context(mock_get_default):
    """Test that calls outside function context are not replaced."""

    result = crc.replace_abort_exit_calls(SAMPLE_IR_NO_FUNCTION)
    assert result == SAMPLE_IR_NO_FUNCTION
    mock_get_default.assert_not_called()


# Simple test for for add_crc_to_ir
MOCK_INPUT_CODE = """
; ModuleID = 'test.ll'
@g = global i32 0
define i32 @main() { ret i32 0 }
"""


@patch("oracles.crc.replace_main_function", side_effect=lambda x: x + ["replaced_main"])
@patch("oracles.crc.replace_abort_exit_calls", side_effect=lambda x: x + ["replaced_abort_exit"])
@patch("oracles.crc.get_globals_info")
@patch("oracles.crc.get_code")
@patch("builtins.open", new_callable=mock_open)
def test_add_crc_to_ir_structure(
    mock_write_open, mock_get_code, mock_get_globals, mock_replace_abort, mock_replace_main
):
    """Test the overall structure and flow of add_crc_to_ir by mocking heavily."""
    mock_get_code.return_value = MOCK_INPUT_CODE
    mock_get_globals.return_value = {
        "g": {
            "var_type": "i32",
            "size": "4",
            "varname_code": '@g.name = constant [2 x i8] c"g\\00"',
            "global_info_entry": "{ i8* bitcast (i32* @g to i8*), i32 4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @g.name, i64 0, i64 0) }",
        }
    }
    input_filepath = "/path/to/p.ll"
    expected_output_filepath = "/path/to/p_modified_crc.ll"

    result_path = crc.add_crc_to_ir(input_filepath)

    assert result_path == expected_output_filepath
    mock_get_code.assert_called_once_with(input_filepath)
    mock_get_globals.assert_called_once_with(input_filepath)
    mock_write_open.assert_called_once_with(expected_output_filepath, "w")
    handle = mock_write_open()
    written_content = "".join(call_args[0][0] for call_args in handle.write.call_args_list)

    # Structural assertions remain the same
    assert "%global_info = type { i8*, i32, i8*}" in written_content
    assert '@g.name = constant [2 x i8] c"g\\00"' in written_content
    assert "declare void @transparent_crc_bytes" in written_content
    assert "@globals_table = constant [1 x %global_info]" in written_content
    assert "\nreplaced_abort_exit" in written_content
    assert "\nreplaced_main" in written_content


# rerun_cmds_for_undeterminism() tests
@patch("oracles.crc.reexecute_cmds")
def test_rerun_crc_consistent_hashes(mock_reexecute_cmds):
    """Test rerun CRC when hashes are consistent."""

    p_stdout = "Some output\n...checksum after hashing is ABC\n"
    pp_stdout = "Other output\n...checksum after hashing is DEF\n"

    p_res = create_mock_subprocess_result(stdout=p_stdout, returncode=0)
    pp_res = create_mock_subprocess_result(stdout=pp_stdout, returncode=0)

    mock_p_outs = [p_res] * 3
    mock_p_prime_outs = [pp_res] * 3
    mock_reexecute_cmds.return_value = (mock_p_outs, mock_p_prime_outs)

    is_different = crc.rerun_cmds_for_undeterminism(MOCK_P_FILE, MOCK_P_PRIME_FILE, MOCK_BINARY_EXECS)

    mock_reexecute_cmds.assert_called_once_with(MOCK_P_FILE, MOCK_P_PRIME_FILE, MOCK_BINARY_EXECS, is_crc=True)
    assert is_different is False


@patch("oracles.crc.reexecute_cmds")
def test_rerun_crc_inconsistent_hashes_p(mock_reexecute_cmds):
    """Test rerun CRC when p's hashes vary."""
    p_stdout_run1 = "Output run 1\n...checksum after hashing is ABC\n"
    p_stdout_run2 = "Output run 2\n...checksum after hashing is XYZ\n"
    p_stdout_run3 = "Output run 3\n...checksum after hashing is ABC\n"

    pp_stdout_consistent = "Other output\n...checksum after hashing is DEF\nEnd PP"

    p_res1 = create_mock_subprocess_result(stdout=p_stdout_run1, returncode=0)
    p_res2 = create_mock_subprocess_result(stdout=p_stdout_run2, returncode=0)
    p_res3 = create_mock_subprocess_result(stdout=p_stdout_run3, returncode=0)

    pp_res = create_mock_subprocess_result(stdout=pp_stdout_consistent, returncode=0)

    mock_p_outs = [p_res1, p_res2, p_res3]
    mock_p_prime_outs = [pp_res] * 3
    mock_reexecute_cmds.return_value = (mock_p_outs, mock_p_prime_outs)

    # Call the function under test
    is_different = crc.rerun_cmds_for_undeterminism(MOCK_P_FILE, MOCK_P_PRIME_FILE, MOCK_BINARY_EXECS)

    mock_reexecute_cmds.assert_called_once_with(MOCK_P_FILE, MOCK_P_PRIME_FILE, MOCK_BINARY_EXECS, is_crc=True)
    assert is_different is True


# process_outputs()
@patch("oracles.crc.rerun_cmds_for_undeterminism")
def test_process_outputs_crc_succeeded(mock_rerun):
    """Test CRC process_outputs when final hashes match."""
    summary = {}
    p_res = create_mock_subprocess_result(stdout="out\n...checksum after hashing 123\n")
    pp_res = create_mock_subprocess_result(stdout="out prime\n...checksum after hashing 123\n")
    cmd_outs = {"p": [p_res], "p_prime": [pp_res]}

    crc.process_outputs(cmd_outs, MOCK_P_FILE, MOCK_P_PRIME_FILE, summary, MOCK_BINARY_EXECS, False)

    assert summary.get("crc_succeeded") is True
    mock_rerun.assert_not_called()


@patch("oracles.crc.rerun_cmds_for_undeterminism")
def test_process_outputs_crc_failed_consistent(mock_rerun):
    """Test CRC process_outputs when final hashes differ consistently."""
    summary = {}
    p_res = create_mock_subprocess_result(stdout="out\n...checksum after hashing 123\nend")
    pp_res = create_mock_subprocess_result(stdout="out prime\n...checksum after hashing 456\nend prime")
    cmd_outs = {"p": [p_res], "p_prime": [pp_res]}
    mock_rerun.return_value = False

    crc.process_outputs(cmd_outs, MOCK_P_FILE, MOCK_P_PRIME_FILE, summary, MOCK_BINARY_EXECS, False)

    assert summary.get("crc_logic_failed") is True
    mock_rerun.assert_called_once()


@patch("oracles.crc.rerun_cmds_for_undeterminism")
def test_process_outputs_crc_undeterminable(mock_rerun):
    """Test CRC process_outputs when final hashes differ inconsistently."""
    summary = {}
    p_res = create_mock_subprocess_result(stdout="out\n...checksum after hashing 123\nend")
    pp_res = create_mock_subprocess_result(stdout="out prime\n...checksum after hashing 456\nend prime")
    cmd_outs = {"p": [p_res], "p_prime": [pp_res]}
    mock_rerun.return_value = True

    crc.process_outputs(cmd_outs, MOCK_P_FILE, MOCK_P_PRIME_FILE, summary, MOCK_BINARY_EXECS, False)

    assert summary.get("crc_logic_undeterminable") is True
    mock_rerun.assert_called_once()


@patch("oracles.crc.rerun_cmds_for_undeterminism")
def test_process_outputs_crc_no_hash_found(mock_rerun):
    """Test CRC process_outputs when neither output has hashes."""
    summary = {}
    p_res = create_mock_subprocess_result(stdout="out p")
    pp_res = create_mock_subprocess_result(stdout="out pp")
    cmd_outs = {"p": [p_res], "p_prime": [pp_res]}

    crc.process_outputs(cmd_outs, MOCK_P_FILE, MOCK_P_PRIME_FILE, summary, MOCK_BINARY_EXECS, False)

    assert summary.get("crc_no_hash_found") is True
    mock_rerun.assert_not_called()


# run() tests
@patch("oracles.crc.process_outputs")
@patch("oracles.crc.check_for_compilation_exception")
@patch("oracles.crc.exec_programs")
@patch("oracles.crc.get_injected_crc_code")
def test_run_crc_success(mock_get_injected, mock_exec_crc, mock_check_exception, mock_process_crc):
    """Test overall CRC run flow resulting in success."""
    mock_crc_p = "/path/to/p_modified_crc.ll"
    mock_crc_pp = "/path/to/pp_modified_crc.ll"
    mock_get_injected.return_value = (mock_crc_p, mock_crc_pp)
    mock_p_out = [create_mock_subprocess_result()] * 3
    mock_pp_out = [create_mock_subprocess_result()] * 3
    mock_cmds_outs = {"p": mock_p_out, "p_prime": mock_pp_out}
    mock_exec_crc.return_value = mock_cmds_outs

    def check_effect(outs, summary, is_crc):
        assert is_crc is True
        return False, summary

    mock_check_exception.side_effect = check_effect

    def process_effect(cmd_outs, p, pp, summary, bin_execs, mark_diff):
        summary["crc_succeeded"] = True

    mock_process_crc.side_effect = process_effect

    final_summary = crc.run(MOCK_P_FILE, MOCK_P_PRIME_FILE, MOCK_BINARY_EXECS, False)

    mock_get_injected.assert_called_once_with(MOCK_P_FILE, MOCK_P_PRIME_FILE)
    mock_exec_crc.assert_called_once_with(mock_crc_p, mock_crc_pp, MOCK_BINARY_EXECS)
    assert mock_check_exception.call_count == 2
    # Check check_exception called with is_crc=True
    mock_check_exception.assert_any_call(mock_cmds_outs["p"], unittest.mock.ANY, is_crc=True)
    mock_check_exception.assert_any_call(mock_cmds_outs["p_prime"], unittest.mock.ANY, is_crc=True)
    mock_process_crc.assert_called_once()
    assert final_summary.get("crc_succeeded") is True


@patch("oracles.crc.process_outputs")
@patch("oracles.crc.check_for_compilation_exception")
@patch("oracles.crc.exec_programs")
@patch("oracles.crc.get_injected_crc_code")
def test_run_crc_injection_fail(mock_get_injected, mock_exec_crc, mock_check_exception, mock_process_crc):
    """Test overall CRC run flow when injection fails."""
    mock_get_injected.return_value = (False, MOCK_P_PRIME_FILE)

    final_summary = crc.run(MOCK_P_FILE, MOCK_P_PRIME_FILE, MOCK_BINARY_EXECS, False)

    mock_get_injected.assert_called_once_with(MOCK_P_FILE, MOCK_P_PRIME_FILE)
    mock_exec_crc.assert_not_called()
    mock_check_exception.assert_not_called()
    mock_process_crc.assert_not_called()
    assert final_summary.get("crc_compile_crash") is True


@patch("oracles.crc.process_outputs")
@patch("oracles.crc.check_for_compilation_exception")
@patch("oracles.crc.exec_programs")
@patch("oracles.crc.get_injected_crc_code")
def test_run_crc_compile_crash(mock_get_injected, mock_exec_crc, mock_check_exception, mock_process_crc):
    """Test overall CRC run flow when compilation/execution of CRC code crashes."""
    mock_crc_p = "/path/to/p_modified_crc.ll"
    mock_crc_pp = "/path/to/pp_modified_crc.ll"
    mock_get_injected.return_value = (mock_crc_p, mock_crc_pp)
    mock_cmds_outs = {"p": [create_mock_subprocess_result()] * 3, "p_prime": [create_mock_subprocess_result()] * 3}
    mock_exec_crc.return_value = mock_cmds_outs

    def check_effect(outs, summary, is_crc):
        assert is_crc is True
        if outs == mock_cmds_outs["p_prime"]:
            summary["crc_compile_crash"] = True
            return True, summary
        return False, summary

    mock_check_exception.side_effect = check_effect

    final_summary = crc.run(MOCK_P_FILE, MOCK_P_PRIME_FILE, MOCK_BINARY_EXECS, False)

    mock_get_injected.assert_called_once()
    mock_exec_crc.assert_called_once()
    assert mock_check_exception.call_count == 2
    mock_process_crc.assert_not_called()
    assert final_summary.get("crc_compile_crash") is True
