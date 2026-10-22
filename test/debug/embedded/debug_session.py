"""Shared real-debugger assertions for QEMU and opt-in physical probes."""

import os
from pathlib import Path
import shutil
import subprocess


FIXTURE = Path(__file__).resolve().parent
ROOT = FIXTURE.parents[2]
SOURCE = FIXTURE / "C" / "c.go"
BREAK_LINE = next(i for i, line in enumerate(SOURCE.read_text().splitlines(), 1)
                  if "LLGO_EMBEDDED_DEBUG_BREAK" in line)


def tool(description, override, *candidates):
    # An explicit selection must never silently exercise another installation.
    if override:
        if found := shutil.which(override):
            return str(Path(found).resolve())
        raise RuntimeError(f"selected {description} executable not found: {override}")
    for candidate in candidates:
        if candidate and (found := shutil.which(candidate)):
            return str(Path(found).resolve())
    raise RuntimeError(f"missing {description}; tried {candidates}")


def run(args, **kwargs):
    try:
        result = subprocess.run([str(arg) for arg in args], text=True,
                                stdout=subprocess.PIPE, stderr=subprocess.STDOUT,
                                timeout=180, **kwargs)
    except subprocess.TimeoutExpired as error:
        output = error.stdout or b""
        if isinstance(output, bytes):
            output = output.decode(errors="replace")
        print(output, end="", flush=True)
        raise
    print(result.stdout, end="", flush=True)
    result.check_returncode()
    return result.stdout


def session(backend, debugger, artifact, target, server_flags=(), detach=False):
    """Build via the product CLI; both harnesses exercise its server/load policy."""
    llgo = tool("llgo", os.getenv("LLGO"), "llgo")
    args = [llgo, "debug", f"-backend={backend}", f"-{backend}", debugger,
            "-target", target, "-o", str(artifact), *server_flags, ".", "--"]
    if backend == "gdb":
        args += ["--nx", "--batch"]
        commands = ["set pagination off", "set confirm off",
                    f'break -source "{SOURCE.as_posix()}" -line {BREAK_LINE}', "continue", "llgo status",
                    "p text",
                    'printf "LLGO_SEED=%d\\n", seed',
                    'printf "LLGO_PAIR=%d,%d\\n", pair.Left, pair.Right',
                    'printf "LLGO_VALUES=%d,%d,%d\\n", values[0], values[1], values[2]',
                    'printf "LLGO_TEXT_LEN=%u\\n", text.len',
                    'printf "LLGO_RESULT=%d\\n", result',
                    'printf "LLGO_SINK=%d\\n", DebugSink', "backtrace"]
        if detach:
            commands.append("detach")
        for command in commands:
            args += ["-ex", command]
        expected = ['LLGo debugger schema v1 (runtime layout v2)', '= "embedded"',
                    "LLGO_SEED=7", "LLGO_PAIR=7,8", "LLGO_VALUES=9,10,11",
                    "LLGO_TEXT_LEN=8", "LLGO_RESULT=33", "LLGO_SINK=33"]
    elif backend == "lldb":
        args += ["--batch"]
        commands = [f"breakpoint set --file c.go --line {BREAK_LINE}", "continue",
                    "frame variable seed pair values text result", "target variable DebugSink",
                    "thread backtrace"]
        if detach:
            commands.append("process detach")
        for command in commands:
            args += ["-o", command]
        expected = ["seed = 7", "Left = 7", "Right = 8", "[0] = 9", "[1] = 10",
                    "[2] = 11", '"embedded"', "result = 33", "DebugSink = 33"]
    else:
        raise ValueError(f"unknown backend {backend}")
    env = dict(os.environ, LLGO_ROOT=str(ROOT))
    output = run(args, cwd=FIXTURE, env=env)
    for text in [*expected, f"c.go:{BREAK_LINE}"]:
        if text not in output:
            raise AssertionError(f"missing debugger output: {text}")
    if "Traceback (most recent call last)" in output:
        raise AssertionError("debugger reported an error")
    if target == "cortex-m-qemu" and "Reset_Handler" not in output:
        raise AssertionError("missing target reset frame")
    return output
