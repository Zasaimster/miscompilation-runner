# tests/test_oracle_args.py
import pytest
import sys
import oracle


def run_parser(monkeypatch, args_list):
    """Mocks sys.argv and runs parse_args."""
    # Prepend a dummy script name, as argparse expects it
    full_args = ["oracle.py"] + args_list
    monkeypatch.setattr(sys, "argv", full_args)
    return oracle.parse_args()


def test_parse_args_valid_required_only(monkeypatch, tmp_path):
    """Test parsing with only the required arguments."""
    # Create dummy input files
    p1 = tmp_path / "p1.ll"
    p2 = tmp_path / "p2.ll"
    p1.touch()
    p2.touch()

    # Create dummy output directory
    output_dir = tmp_path / "output_data"
    output_dir.mkdir()
    output_file = output_dir / "result.json"

    args_list = ["--input", str(p1), str(p2), "--output", str(output_file)]
    args = run_parser(monkeypatch, args_list)

    assert args.input_files == [str(p1), str(p2)]
    assert args.output_file == str(output_file)
    assert args.llvm_dir is None
    assert args.alive_dir is None
    assert not args.exec_disabled
    assert not args.crc_disabled
    assert not args.alive2_disabled
    assert not args.mark_diff_numhashes_undeterminable


def test_parse_args_valid_all_options(monkeypatch, tmp_path):
    """Test parsing with all arguments and flags."""
    p1 = tmp_path / "p1.ll"
    p2 = tmp_path / "p2.ll"
    p1.touch()
    p2.touch()
    output_file = tmp_path / "result.json"
    llvm_dir = tmp_path / "my_llvm"
    alive_dir = tmp_path / "my_alive"
    llvm_dir.mkdir()
    alive_dir.mkdir()
    # Create dummy executables for validation
    (llvm_dir / "clang").touch()
    (llvm_dir / "opt").touch()

    args_list = [
        "--input",
        str(p1),
        str(p2),
        "--output",
        str(output_file),
        "--LLVM_DIR",
        str(llvm_dir),
        "--ALIVE_DIR",
        str(alive_dir),
        "--exec-disabled",
        "--crc-disabled",
        "--alive2-disabled",
        "--mark-diff-numhashes-undeterminable",
    ]
    args = run_parser(monkeypatch, args_list)

    assert args.input_files == [str(p1), str(p2)]
    assert args.output_file == str(output_file)
    assert args.llvm_dir == str(llvm_dir)
    assert args.alive_dir == str(alive_dir)
    assert args.exec_disabled
    assert args.crc_disabled
    assert args.alive2_disabled
    assert args.mark_diff_numhashes_undeterminable


def test_parse_args_missing_input(monkeypatch, tmp_path):
    """Test error when --input is missing."""
    output_file = tmp_path / "result.json"
    args_list = ["--output", str(output_file)]
    with pytest.raises(SystemExit):
        run_parser(monkeypatch, args_list)


def test_parse_args_missing_output(monkeypatch, tmp_path):
    """Test error when --output is missing."""
    p1 = tmp_path / "p1.ll"
    p2 = tmp_path / "p2.ll"
    p1.touch()
    p2.touch()
    args_list = ["--input", str(p1), str(p2)]
    with pytest.raises(SystemExit):
        run_parser(monkeypatch, args_list)


def test_parse_args_wrong_input_count(monkeypatch, tmp_path):
    """Test error with incorrect number of input files."""
    p1 = tmp_path / "p1.ll"
    p1.touch()
    output_file = tmp_path / "result.json"
    args_list = ["--input", str(p1), "--output", str(output_file)]
    with pytest.raises(SystemExit):
        run_parser(monkeypatch, args_list)

    args_list = ["--input", str(p1), str(p1), str(p1), "--output", str(output_file)]
    with pytest.raises(SystemExit):
        run_parser(monkeypatch, args_list)


def test_parse_args_invalid_output_dir(monkeypatch, tmp_path):
    """Test error when output file's parent directory doesn't exist."""
    p1 = tmp_path / "p1.ll"
    p2 = tmp_path / "p2.ll"
    p1.touch()
    p2.touch()
    # Path to a file in a non-existent directory
    output_file = tmp_path / "non_existent_dir" / "result.json"
    args_list = ["--input", str(p1), str(p2), "--output", str(output_file)]
    with pytest.raises(SystemExit):
        run_parser(monkeypatch, args_list)


def test_parse_args_invalid_llvm_dir(monkeypatch, tmp_path):
    """Test error when --LLVM_DIR doesn't exist."""
    p1 = tmp_path / "p1.ll"
    p2 = tmp_path / "p2.ll"
    p1.touch()
    p2.touch()
    output_file = tmp_path / "result.json"
    llvm_dir = tmp_path / "non_existent_llvm"
    args_list = ["--input", str(p1), str(p2), "--output", str(output_file), "--LLVM_DIR", str(llvm_dir)]
    with pytest.raises(SystemExit):
        run_parser(monkeypatch, args_list)


def test_parse_args_invalid_llvm_dir_missing_clang(monkeypatch, tmp_path):
    """Test error when --LLVM_DIR exists but is missing clang."""
    p1 = tmp_path / "p1.ll"
    p2 = tmp_path / "p2.ll"
    p1.touch()
    p2.touch()
    output_file = tmp_path / "result.json"
    llvm_dir = tmp_path / "llvm_missing_execs"
    llvm_dir.mkdir()
    # no but clang present
    args_list = ["--input", str(p1), str(p2), "--output", str(output_file), "--LLVM_DIR", str(llvm_dir)]
    with pytest.raises(SystemExit):
        run_parser(monkeypatch, args_list)


def test_parse_args_invalid_input_file(monkeypatch, tmp_path):
    """Test error when an input file doesn't exist."""
    p1 = tmp_path / "p1.ll"  # Exists
    p2 = tmp_path / "p2_non_existent.ll"
    p1.touch()
    output_file = tmp_path / "result.json"
    args_list = ["--input", str(p1), str(p2), "--output", str(output_file)]
    # This validation happens *after* parse_args, but still causes sys.exit
    with pytest.raises(SystemExit):
        run_parser(monkeypatch, args_list)
