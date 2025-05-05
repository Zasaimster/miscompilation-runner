# tests/test_common.py

import pytest
from unittest.mock import patch, MagicMock, mock_open
import subprocess
import os

import common

MOCK_RUNTIME_DIR = common.RUNTIME_DIR
MOCK_CRC_HELPER = common.CRC_HELPER_OBJ_FILE
MOCK_TIMEOUT = common.TIMEOUT
MOCK_CLANG_PATH = "/usr/bin/clang"
MOCK_BINARY_EXECS = {"clang": MOCK_CLANG_PATH}


@pytest.fixture
def setup_runtime_dir(tmp_path):
    """Ensure the mock runtime dir exists for tests needing it."""
    runtime_path = tmp_path / MOCK_RUNTIME_DIR
    runtime_path.mkdir()
    with patch("common.RUNTIME_DIR", str(runtime_path)):
        yield str(runtime_path)


# helper function for mocks
def create_mock_subprocess_result(stdout="", stderr="", returncode=0, args=None):
    """Helper to create a mock CompletedProcess object."""
    mock_res = MagicMock(spec=subprocess.CompletedProcess)
    mock_res.stdout = stdout
    mock_res.stderr = stderr
    mock_res.returncode = returncode
    mock_res.args = args if args else []
    return mock_res


# get_code() tests
def test_get_code_success():
    """Test reading content from a file successfully."""
    file_content = "line1\nline2\n"
    m = mock_open(read_data=file_content)
    with patch("builtins.open", m):
        content = common.get_code("dummy_file.ll")
        assert content == file_content
    m.assert_called_once_with("dummy_file.ll", "r")


def test_get_code_file_not_found():
    """Test FileNotFoundError when file doesn't exist."""
    m = mock_open()
    m.side_effect = FileNotFoundError("File not found")
    with patch("builtins.open", m):
        with pytest.raises(FileNotFoundError):
            common.get_code("non_existent_file.ll")


# get_exec_commands() tests
@patch("os.path.abspath", return_value="/abs/path/to/runtime/file_base")
def test_get_exec_commands_regular(setup_runtime_dir):
    """Test command generation for regular (non-CRC) mode."""
    input_file = "src/test_dir/file_base.ll"
    expected_out_base = f"{MOCK_RUNTIME_DIR}/file_base"
    expected_obj = f"{expected_out_base}.o"
    expected_exec = expected_out_base
    expected_abs_exec = "/abs/path/to/runtime/file_base"

    cmds = common.get_exec_commands(input_file, MOCK_BINARY_EXECS, is_crc=False)

    assert len(cmds) == 3
    assert cmds[0] == [MOCK_CLANG_PATH, "-c", input_file, "-fsanitize=undefined", "-o", expected_obj]
    assert cmds[1] == [MOCK_CLANG_PATH, expected_obj, "-fsanitize=undefined", "-o", expected_exec]
    assert cmds[2] == [expected_abs_exec]


@patch("os.path.abspath", return_value="/abs/path/to/runtime/file_crc")
def test_get_exec_commands_crc(setup_runtime_dir):
    """Test command generation for CRC mode."""
    input_file = "file_crc.ll"
    expected_out_base = f"{MOCK_RUNTIME_DIR}/file_crc"
    expected_obj = f"{expected_out_base}.o"
    expected_exec = expected_out_base
    expected_abs_exec = "/abs/path/to/runtime/file_crc"

    cmds = common.get_exec_commands(input_file, MOCK_BINARY_EXECS, is_crc=True)

    assert len(cmds) == 3
    assert cmds[0] == [MOCK_CLANG_PATH, "-c", input_file, "-fsanitize=undefined", "-o", expected_obj]
    assert cmds[1] == [MOCK_CLANG_PATH, expected_obj, MOCK_CRC_HELPER, "-fsanitize=undefined", "-o", expected_exec]
    assert cmds[2] == [expected_abs_exec]


# run_cmds() tests
@patch("common.subprocess.run")
def test_run_cmds_success(mock_subprocess_run):
    """Test running commands where all succeed."""
    cmds = [["echo", "cmd1"], ["echo", "cmd2"]]
    mock_res1 = create_mock_subprocess_result(stdout="out1", returncode=0, args=cmds[0])
    mock_res2 = create_mock_subprocess_result(stdout="out2", returncode=0, args=cmds[1])
    mock_subprocess_run.side_effect = [mock_res1, mock_res2]

    results = common.run_cmds(cmds)

    assert len(results) == 2
    assert results[0] == mock_res1
    assert results[1] == mock_res2
    assert mock_subprocess_run.call_count == 2
    mock_subprocess_run.assert_any_call(cmds[0], capture_output=True, text=True, timeout=MOCK_TIMEOUT)
    mock_subprocess_run.assert_any_call(cmds[1], capture_output=True, text=True, timeout=MOCK_TIMEOUT)


@patch("common.subprocess.run")
def test_run_cmds_timeout(mock_subprocess_run):
    """Test handling of subprocess.TimeoutExpired."""
    cmds = [["sleep", "10"]]
    mock_subprocess_run.side_effect = subprocess.TimeoutExpired(cmd=cmds[0], timeout=MOCK_TIMEOUT)

    results = common.run_cmds(cmds)

    assert len(results) == 1
    res = results[0]
    assert isinstance(res, subprocess.CompletedProcess)
    assert res.returncode == -1
    assert res.stderr == "Timeout"
    assert res.args == cmds[0]


@patch("common.subprocess.run")
def test_run_cmds_other_exception(mock_subprocess_run):
    """Test handling of other exceptions during subprocess.run."""
    cmds = [["bad_cmd"]]
    mock_exception = FileNotFoundError("Command not found")
    mock_subprocess_run.side_effect = mock_exception

    results = common.run_cmds(cmds)

    assert len(results) == 1
    res = results[0]
    assert isinstance(res, tuple)
    assert res[0] == cmds[0]
    assert res[1] == mock_exception


# check_for_compilation_exception() tests
def test_check_exception_no_errors():
    """Test check function when there are no errors."""
    outs = [create_mock_subprocess_result(returncode=0)] * 3
    summary = {}
    cmds_error, final_summary = common.check_for_compilation_exception(outs, summary, is_crc=False)
    assert not cmds_error
    assert final_summary == {}  # no errors marked


def test_check_exception_timeout():
    """Test check function when a timeout occurred."""
    outs = [
        create_mock_subprocess_result(returncode=0),
        MagicMock(spec=subprocess.CompletedProcess, stderr="Timeout", returncode=-1),
    ]
    summary = {"timeout": False}
    cmds_error, final_summary = common.check_for_compilation_exception(outs, summary, is_crc=False)
    assert cmds_error
    assert final_summary == {"timeout": True}


def test_check_exception_compile_crash_regular():
    """Test check function for compile crash (index 0 or 1), regular mode."""
    outs = [
        create_mock_subprocess_result(returncode=0),
        create_mock_subprocess_result(returncode=1, stderr="compile failed"),
    ]
    summary = {"regular_compile_crash": False}
    cmds_error, final_summary = common.check_for_compilation_exception(outs, summary, is_crc=False)
    assert cmds_error
    assert final_summary["regular_compile_crash"] is True


def test_check_exception_execution_crash_regular():
    """Test check function for execution crash (index 2), regular mode."""
    outs = [
        create_mock_subprocess_result(returncode=0),
        create_mock_subprocess_result(returncode=0),
        create_mock_subprocess_result(returncode=-9, stderr="Signal 9"),
    ]
    summary = {"regular_execution_crash": False}
    cmds_error, final_summary = common.check_for_compilation_exception(outs, summary, is_crc=False)
    assert cmds_error
    assert final_summary["regular_execution_crash"] is True


def test_check_exception_execution_crash_crc():
    """Test check function for execution crash (index 2), CRC mode."""
    outs = [
        create_mock_subprocess_result(returncode=0),
        create_mock_subprocess_result(returncode=0),
        create_mock_subprocess_result(returncode=-9, stderr="Signal 9"),
    ]
    summary = {"crc_execution_crash": False}
    cmds_error, final_summary = common.check_for_compilation_exception(outs, summary, is_crc=True)
    assert cmds_error
    assert final_summary["crc_execution_crash"] is True


def test_check_exception_undefined_behavior_regular():
    """Test check function for UBSan error during execution, regular mode."""
    outs = [
        create_mock_subprocess_result(returncode=0),
        create_mock_subprocess_result(returncode=0),
        create_mock_subprocess_result(returncode=1, stderr="runtime error: ... ERROR: UndefinedBehaviorSanitizer ..."),
    ]
    summary = {"regular_undefined_execution": False}
    cmds_error, final_summary = common.check_for_compilation_exception(outs, summary, is_crc=False)
    assert cmds_error
    assert final_summary["regular_undefined_execution"] is True


def test_check_exception_subprocess_exception_tuple():
    """Test check function when run_cmds returned an exception tuple."""
    outs = [create_mock_subprocess_result(returncode=0), (["bad_command"], FileNotFoundError("not found"))]
    summary = {"regular_compile_crash": False}
    cmds_error, final_summary = common.check_for_compilation_exception(outs, summary, is_crc=False)
    assert cmds_error
    assert final_summary["regular_compile_crash"] is True


def test_check_exception_safe_termination_code():
    """Test check function ignores safe termination codes like -6 (SIGABRT)."""
    outs = [
        create_mock_subprocess_result(returncode=0),
        create_mock_subprocess_result(returncode=0),
        create_mock_subprocess_result(returncode=-6),
    ]
    summary = {}
    cmds_error, final_summary = common.check_for_compilation_exception(outs, summary, is_crc=False)
    assert not cmds_error
    assert final_summary == {}
