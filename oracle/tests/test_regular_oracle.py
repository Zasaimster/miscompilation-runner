# tests/test_regular.py

import unittest
from unittest.mock import patch, MagicMock
import subprocess

from oracles import regular
import common

MOCK_P_FILE = "p.ll"
MOCK_P_PRIME_FILE = "p_prime.ll"
MOCK_BINARY_EXECS = {"clang": "/mock/clang"}
MOCK_TIMEOUT = common.TIMEOUT


def create_mock_subprocess_result(stdout="", stderr="", returncode=0, args=None):
    """Helper to create a mock CompletedProcess object."""
    mock_res = MagicMock(spec=subprocess.CompletedProcess)
    mock_res.stdout = stdout
    mock_res.stderr = stderr
    mock_res.returncode = returncode
    mock_res.args = args if args else []
    return mock_res


# Define mock command lists returned by get_exec_commands
MOCK_P_CMDS = [["mock_clang", "-c", MOCK_P_FILE], ["mock_clang", "p.o"], ["./p_exec"]]
MOCK_P_PRIME_CMDS = [["mock_clang", "-c", MOCK_P_PRIME_FILE], ["mock_clang", "p_prime.o"], ["./p_prime_exec"]]

# mock results returned by run_cmds
MOCK_P_RUN_RESULTS = [
    create_mock_subprocess_result(returncode=0, args=MOCK_P_CMDS[0]),
    create_mock_subprocess_result(returncode=0, args=MOCK_P_CMDS[1]),
    create_mock_subprocess_result(stdout="p_output", returncode=0, args=MOCK_P_CMDS[2]),
]
MOCK_P_PRIME_RUN_RESULTS = [
    create_mock_subprocess_result(returncode=0, args=MOCK_P_PRIME_CMDS[0]),
    create_mock_subprocess_result(returncode=0, args=MOCK_P_PRIME_CMDS[1]),
    create_mock_subprocess_result(stdout="p_prime_output", returncode=0, args=MOCK_P_PRIME_CMDS[2]),
]

MOCK_EXEC_PROGRAMS_RESULT = {"p": MOCK_P_RUN_RESULTS, "p_prime": MOCK_P_PRIME_RUN_RESULTS}


# rerun_cmds_for_undeterminism() tests
@patch("oracles.regular.subprocess.run")
@patch("oracles.regular.get_exec_commands")
def test_rerun_consistent_outputs(mock_get_exec_commands, mock_subprocess_run):
    """Test rerun when both p and p_prime outputs are consistent across runs."""
    mock_get_exec_commands.side_effect = [MOCK_P_CMDS, MOCK_P_PRIME_CMDS]
    # Simulate 3 identical runs for p, then 3 identical runs for p_prime
    p_res = create_mock_subprocess_result(stdout="p_out", returncode=0)
    pp_res = create_mock_subprocess_result(stdout="pp_out", returncode=0)
    mock_subprocess_run.side_effect = [p_res, pp_res, p_res, pp_res, p_res, pp_res]

    is_different = regular.rerun_cmds_for_undeterminism(MOCK_P_FILE, MOCK_P_PRIME_FILE, MOCK_BINARY_EXECS)

    assert mock_subprocess_run.call_count == 6
    assert mock_subprocess_run.call_args_list[0][0][0] == MOCK_P_CMDS[-1]  # Check first call uses p_exec cmd
    assert mock_subprocess_run.call_args_list[3][0][0] == MOCK_P_PRIME_CMDS[-1]  # Check 4th call uses p_prime_exec cmd
    assert is_different is False


@patch("oracles.regular.subprocess.run")
@patch("oracles.regular.get_exec_commands")
def test_rerun_p_inconsistent(mock_get_exec_commands, mock_subprocess_run):
    """Test rerun when p outputs are inconsistent."""
    mock_get_exec_commands.side_effect = [MOCK_P_CMDS, MOCK_P_PRIME_CMDS]
    # Simulate 3 runs for p (run 2 is different), then 3 identical runs for p_prime
    p_res1 = create_mock_subprocess_result(stdout="p_out1", returncode=0)
    p_res2_diff = create_mock_subprocess_result(stdout="p_out_DIFFERENT", returncode=0)
    pp_res = create_mock_subprocess_result(stdout="pp_out", returncode=0)
    mock_subprocess_run.side_effect = [p_res1, p_res2_diff, p_res1] + [pp_res] * 3

    is_different = regular.rerun_cmds_for_undeterminism(MOCK_P_FILE, MOCK_P_PRIME_FILE, MOCK_BINARY_EXECS)

    assert mock_subprocess_run.call_count == 6
    assert is_different is True


@patch("oracles.regular.subprocess.run")
@patch("oracles.regular.get_exec_commands")
def test_rerun_p_prime_inconsistent(mock_get_exec_commands, mock_subprocess_run):
    """Test rerun when p_prime outputs are inconsistent."""
    mock_get_exec_commands.side_effect = [MOCK_P_CMDS, MOCK_P_PRIME_CMDS]
    # Simulate 3 identical runs for p, then 3 runs for p_prime (run 2 is different)
    p_res = create_mock_subprocess_result(stdout="p_out", returncode=0)
    pp_res1 = create_mock_subprocess_result(stdout="pp_out1", returncode=0)
    pp_res2_diff = create_mock_subprocess_result(stdout="pp_out_DIFFERENT", returncode=0)
    mock_subprocess_run.side_effect = [p_res] * 3 + [pp_res1, pp_res2_diff, pp_res1]

    is_different = regular.rerun_cmds_for_undeterminism(MOCK_P_FILE, MOCK_P_PRIME_FILE, MOCK_BINARY_EXECS)

    assert mock_subprocess_run.call_count == 6
    assert is_different is True


@patch("oracles.regular.subprocess.run")
@patch("oracles.regular.get_exec_commands")
def test_rerun_timeout_handling(mock_get_exec_commands, mock_subprocess_run):
    """Test rerun handles timeouts gracefully."""
    mock_get_exec_commands.side_effect = [MOCK_P_CMDS, MOCK_P_PRIME_CMDS]
    # Simulate consistent runs for p, but a timeout for p_prime on the 2nd run
    p_res = create_mock_subprocess_result(stdout="p_out", returncode=0)
    pp_res = create_mock_subprocess_result(stdout="pp_out", returncode=0)
    pp_timeout = subprocess.TimeoutExpired(cmd=MOCK_P_PRIME_CMDS[-1], timeout=MOCK_TIMEOUT)

    mock_subprocess_run.side_effect = [p_res] * 3 + [pp_res, pp_timeout, pp_res]

    is_different = regular.rerun_cmds_for_undeterminism(MOCK_P_FILE, MOCK_P_PRIME_FILE, MOCK_BINARY_EXECS)

    # The timeout results in a different CompletedProcess object (stderr="Timeout", rc=-1)
    # This difference means the runs are inconsistent.
    assert mock_subprocess_run.call_count == 6
    assert is_different is True


# process_outputs() tests
@patch("oracles.regular.rerun_cmds_for_undeterminism")
def test_process_outputs_same(mock_rerun):
    """Test process_outputs when final outputs are identical."""
    summary = {}
    # Create mock results where final execution outputs are identical
    mock_p_res = [create_mock_subprocess_result(stdout="output", stderr="err", returncode=0)]
    mock_pp_res = [create_mock_subprocess_result(stdout="output", stderr="err", returncode=0)]
    mock_cmds_outs = {"p": mock_p_res, "p_prime": mock_pp_res}

    regular.process_outputs(mock_cmds_outs, MOCK_P_FILE, MOCK_P_PRIME_FILE, summary, MOCK_BINARY_EXECS)

    assert summary["regular_executed"] is True
    assert summary["regular_same_output"] is True
    assert "regular_different_output" not in summary
    assert "regular_undeterminable_output" not in summary
    mock_rerun.assert_not_called()


@patch("oracles.regular.rerun_cmds_for_undeterminism")
def test_process_outputs_different_consistent(mock_rerun):
    """Test process_outputs when outputs differ but are consistent upon rerun."""
    summary = {}
    mock_p_res = [create_mock_subprocess_result(stdout="output_p", returncode=0)]
    mock_pp_res = [create_mock_subprocess_result(stdout="output_pp", returncode=0)]
    mock_cmds_outs = {"p": mock_p_res, "p_prime": mock_pp_res}
    # Configure mock rerun to return False (consistent difference)
    mock_rerun.return_value = False

    regular.process_outputs(mock_cmds_outs, MOCK_P_FILE, MOCK_P_PRIME_FILE, summary, MOCK_BINARY_EXECS)

    assert summary["regular_executed"] is True
    assert "regular_same_output" not in summary
    assert summary["regular_different_output"] is True
    assert "regular_undeterminable_output" not in summary
    mock_rerun.assert_called_once_with(MOCK_P_FILE, MOCK_P_PRIME_FILE, MOCK_BINARY_EXECS)


@patch("oracles.regular.rerun_cmds_for_undeterminism")
def test_process_outputs_different_undeterminable(mock_rerun):
    """Test process_outputs when outputs differ and are inconsistent upon rerun."""
    summary = {}
    mock_p_res = [create_mock_subprocess_result(returncode=0)]
    mock_pp_res = [create_mock_subprocess_result(returncode=1)]  # Different return code
    mock_cmds_outs = {"p": mock_p_res, "p_prime": mock_pp_res}
    # Configure mock rerun to return True (inconsistent difference)
    mock_rerun.return_value = True

    regular.process_outputs(mock_cmds_outs, MOCK_P_FILE, MOCK_P_PRIME_FILE, summary, MOCK_BINARY_EXECS)

    assert summary["regular_executed"] is True
    assert "regular_same_output" not in summary
    assert "regular_different_output" not in summary
    assert summary["regular_undeterminable_output"] is True
    mock_rerun.assert_called_once_with(MOCK_P_FILE, MOCK_P_PRIME_FILE, MOCK_BINARY_EXECS)


# run() tests
@patch("oracles.regular.process_outputs")
@patch("oracles.regular.check_for_compilation_exception")
@patch("oracles.regular.exec_programs")
def test_run_no_compilation_error(mock_exec_progs, mock_check_exception, mock_process_outputs):
    """Test run orchestrates correctly when no compilation errors occur."""
    # Configure mocks
    mock_exec_progs.return_value = MOCK_EXEC_PROGRAMS_RESULT

    # Simulate check_for_compilation_exception returning False (no error)
    # and updating the summary dict
    def check_effect(outs, summary, is_crc):
        return False, summary  # Return no error, pass summary through

    mock_check_exception.side_effect = check_effect

    # Run the main function
    final_summary = regular.run(MOCK_P_FILE, MOCK_P_PRIME_FILE, MOCK_BINARY_EXECS)

    # Assertions
    mock_exec_progs.assert_called_once_with(MOCK_P_FILE, MOCK_P_PRIME_FILE, MOCK_BINARY_EXECS)
    assert mock_check_exception.call_count == 2
    mock_check_exception.assert_any_call(MOCK_EXEC_PROGRAMS_RESULT["p"], unittest.mock.ANY, is_crc=False)
    mock_check_exception.assert_any_call(MOCK_EXEC_PROGRAMS_RESULT["p_prime"], unittest.mock.ANY, is_crc=False)
    # Check that process_outputs was called because no compilation error occurred
    mock_process_outputs.assert_called_once_with(
        MOCK_EXEC_PROGRAMS_RESULT, MOCK_P_FILE, MOCK_P_PRIME_FILE, unittest.mock.ANY, MOCK_BINARY_EXECS
    )
    # Check basic structure of summary (specific keys set by mocks are tested elsewhere)
    assert isinstance(final_summary, dict)


@patch("oracles.regular.process_outputs")
@patch("oracles.regular.check_for_compilation_exception")
@patch("oracles.regular.exec_programs")
def test_run_with_p_compilation_error(mock_exec_progs, mock_check_exception, mock_process_outputs):
    """Test run skips process_outputs if p has a compilation error."""
    mock_exec_progs.return_value = MOCK_EXEC_PROGRAMS_RESULT

    # Simulate check_for_compilation_exception returning True for p, False for p_prime
    def check_effect(outs, summary, is_crc):
        if outs == MOCK_EXEC_PROGRAMS_RESULT["p"]:
            summary["regular_compile_crash"] = True  # Simulate effect
            return True, summary  # Error for p
        else:
            return False, summary  # No error for p_prime

    mock_check_exception.side_effect = check_effect

    final_summary = regular.run(MOCK_P_FILE, MOCK_P_PRIME_FILE, MOCK_BINARY_EXECS)

    mock_exec_progs.assert_called_once()
    assert mock_check_exception.call_count == 2
    # Check that process_outputs was NOT called
    mock_process_outputs.assert_not_called()
    assert final_summary.get("regular_compile_crash") is True  # Check summary was updated by mock


@patch("oracles.regular.process_outputs")
@patch("oracles.regular.check_for_compilation_exception")
@patch("oracles.regular.exec_programs")
def test_run_with_p_prime_compilation_error(mock_exec_progs, mock_check_exception, mock_process_outputs):
    """Test run skips process_outputs if p_prime has a compilation error."""
    mock_exec_progs.return_value = MOCK_EXEC_PROGRAMS_RESULT

    # Simulate check_for_compilation_exception returning False for p, True for p_prime
    def check_effect(outs, summary, is_crc):
        if outs == MOCK_EXEC_PROGRAMS_RESULT["p_prime"]:
            summary["regular_compile_crash"] = True  # Simulate effect
            return True, summary  # Error for p_prime
        else:
            return False, summary  # No error for p

    mock_check_exception.side_effect = check_effect

    final_summary = regular.run(MOCK_P_FILE, MOCK_P_PRIME_FILE, MOCK_BINARY_EXECS)

    mock_exec_progs.assert_called_once()
    assert mock_check_exception.call_count == 2
    # Check that process_outputs was NOT called
    mock_process_outputs.assert_not_called()
    assert final_summary.get("regular_compile_crash") is True  # Check summary was updated by mock
