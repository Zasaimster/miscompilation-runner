# tests/test_alive2.py

import unittest
from unittest.mock import patch, MagicMock
import subprocess
from oracles import alive2
from common import TIMEOUT

# Define standard mock binary paths
MOCK_BINARY_EXECS = {"alive": "/mock/path/alive-tv"}
MOCK_P_FILE = "p.ll"
MOCK_P_PRIME_FILE = "p_prime.ll"


class TestAlive2Oracle(unittest.TestCase):
    def create_mock_subprocess_result(self, stdout="", stderr="", returncode=0):
        """Helper to create a mock CompletedProcess object."""
        mock_res = MagicMock(spec=subprocess.CompletedProcess)
        mock_res.stdout = stdout
        mock_res.stderr = stderr
        mock_res.returncode = returncode
        return mock_res

    def create_alive2_output(self, correct=0, incorrect=0, no_prove=0, errors=0):
        """Helper to generate typical Alive2 summary stdout."""
        return f"""
Some preceding output...
Summary:
 {correct} correct transformations
 {incorrect} incorrect transformations
 {no_prove} transformations failed-to-prove
 {errors} Alive2 errors

Some trailing output...
"""

    @patch("oracles.alive2.subprocess.run")
    def test_run_correct_transformation(self, mock_subprocess_run):
        """Test the run function when Alive2 reports a correct transformation."""
        # Configure the mock to return successful execution and correct output
        stdout = self.create_alive2_output(correct=1)
        mock_res = self.create_mock_subprocess_result(stdout=stdout, returncode=0)
        mock_subprocess_run.return_value = mock_res

        # Call the function under test
        result_summary = alive2.run(MOCK_P_FILE, MOCK_P_PRIME_FILE, MOCK_BINARY_EXECS)

        # Assertions
        expected_cmd = f"{MOCK_BINARY_EXECS['alive']} --smt-stats {MOCK_P_FILE} {MOCK_P_PRIME_FILE}".split()
        mock_subprocess_run.assert_called_once_with(expected_cmd, capture_output=True, text=True, timeout=TIMEOUT)
        self.assertTrue(result_summary["alive2_correct"])
        self.assertFalse(result_summary["alive2_incorrect"])
        self.assertFalse(result_summary["alive2_no_prove"])
        self.assertFalse(result_summary["alive2_error"])

    @patch("oracles.alive2.subprocess.run")
    def test_run_incorrect_transformation(self, mock_subprocess_run):
        """Test the run function when Alive2 reports an incorrect transformation."""
        stdout = self.create_alive2_output(incorrect=1)
        mock_res = self.create_mock_subprocess_result(stdout=stdout, returncode=0)
        mock_subprocess_run.return_value = mock_res

        result_summary = alive2.run(MOCK_P_FILE, MOCK_P_PRIME_FILE, MOCK_BINARY_EXECS)

        self.assertFalse(result_summary["alive2_correct"])
        self.assertTrue(result_summary["alive2_incorrect"])
        self.assertFalse(result_summary["alive2_no_prove"])
        self.assertFalse(result_summary["alive2_error"])

    @patch("oracles.alive2.subprocess.run")
    def test_run_no_prove_transformation(self, mock_subprocess_run):
        """Test the run function when Alive2 reports a failed-to-prove transformation."""
        stdout = self.create_alive2_output(no_prove=1)
        mock_res = self.create_mock_subprocess_result(stdout=stdout, returncode=0)
        mock_subprocess_run.return_value = mock_res

        result_summary = alive2.run(MOCK_P_FILE, MOCK_P_PRIME_FILE, MOCK_BINARY_EXECS)

        self.assertFalse(result_summary["alive2_correct"])  # Should not be marked correct
        self.assertFalse(result_summary["alive2_incorrect"])
        self.assertTrue(result_summary["alive2_no_prove"])
        self.assertFalse(result_summary["alive2_error"])

    @patch("oracles.alive2.subprocess.run")
    def test_run_alive2_error_in_summary(self, mock_subprocess_run):
        """Test the run function when Alive2 summary reports errors."""
        stdout = self.create_alive2_output(errors=1)
        mock_res = self.create_mock_subprocess_result(stdout=stdout, returncode=0)
        mock_subprocess_run.return_value = mock_res

        result_summary = alive2.run(MOCK_P_FILE, MOCK_P_PRIME_FILE, MOCK_BINARY_EXECS)

        self.assertFalse(result_summary["alive2_correct"])
        self.assertFalse(result_summary["alive2_incorrect"])
        self.assertFalse(result_summary["alive2_no_prove"])
        self.assertTrue(result_summary["alive2_error"])

    @patch("oracles.alive2.subprocess.run")
    def test_run_no_transformation(self, mock_subprocess_run):
        """Test the run function when Alive2 reports no transformations of any kind."""
        # Note: The code marks this case as 'correct'
        stdout = self.create_alive2_output(correct=0, incorrect=0, no_prove=0, errors=0)
        mock_res = self.create_mock_subprocess_result(stdout=stdout, returncode=0)
        mock_subprocess_run.return_value = mock_res

        result_summary = alive2.run(MOCK_P_FILE, MOCK_P_PRIME_FILE, MOCK_BINARY_EXECS)

        self.assertTrue(result_summary["alive2_correct"])  # Based on current logic
        self.assertFalse(result_summary["alive2_incorrect"])
        self.assertFalse(result_summary["alive2_no_prove"])
        self.assertFalse(result_summary["alive2_error"])

    @patch("oracles.alive2.subprocess.run")
    def test_run_subprocess_non_zero_exit(self, mock_subprocess_run):
        """Test the run function when the alive-tv command fails (non-zero exit)."""
        # Simulate a non-zero return code from subprocess
        mock_res = self.create_mock_subprocess_result(stderr="Some error message", returncode=1)
        mock_subprocess_run.return_value = mock_res

        result_summary = alive2.run(MOCK_P_FILE, MOCK_P_PRIME_FILE, MOCK_BINARY_EXECS)

        # Should be marked as an execution error
        self.assertFalse(result_summary["alive2_correct"])
        self.assertFalse(result_summary["alive2_incorrect"])
        self.assertFalse(result_summary["alive2_no_prove"])
        self.assertTrue(result_summary["alive2_error"])

    @patch("oracles.alive2.subprocess.run")
    def test_run_subprocess_exception(self, mock_subprocess_run):
        """Test the run function when subprocess.run raises an exception (e.g., Timeout)."""
        # Configure the mock to raise an exception
        mock_subprocess_run.side_effect = subprocess.TimeoutExpired(cmd="test cmd", timeout=TIMEOUT)

        result_summary = alive2.run(MOCK_P_FILE, MOCK_P_PRIME_FILE, MOCK_BINARY_EXECS)

        # Should be marked as an execution error
        self.assertFalse(result_summary["alive2_correct"])
        self.assertFalse(result_summary["alive2_incorrect"])
        self.assertFalse(result_summary["alive2_no_prove"])
        self.assertTrue(result_summary["alive2_error"])

    @patch("oracles.alive2.subprocess.run")
    def test_run_malformed_output(self, mock_subprocess_run):
        """Test the run function when Alive2 output is missing the Summary section."""
        # Simulate output that doesn't contain the expected summary format
        stdout = "This output is not what we expect."
        mock_res = self.create_mock_subprocess_result(stdout=stdout, returncode=0)
        mock_subprocess_run.return_value = mock_res

        # The current code would raise an IndexError when parsing.
        # We expect this to be caught and marked as an error.
        result_summary = alive2.run(MOCK_P_FILE, MOCK_P_PRIME_FILE, MOCK_BINARY_EXECS)

        # Should be marked as an execution error
        self.assertFalse(result_summary["alive2_correct"])
        self.assertFalse(result_summary["alive2_incorrect"])
        self.assertFalse(result_summary["alive2_no_prove"])
        self.assertTrue(result_summary["alive2_error"])


if __name__ == "__main__":
    unittest.main()
