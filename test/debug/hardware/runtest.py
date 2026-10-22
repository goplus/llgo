"""Opt-in physical-probe acceptance using the product's common load policy."""

import os
from pathlib import Path
import sys
import tempfile

# Keep physical access impossible without the explicit opt-in, including when
# this Python entry point is invoked directly instead of through runtest.sh.
if os.getenv("LLGO_HARDWARE_CONFIRM") != "flash":
    print("physical debugger test disabled; set LLGO_HARDWARE_CONFIRM=flash to allow halt/load", file=sys.stderr)
    sys.exit(2)

sys.path.insert(0, str(Path(__file__).resolve().parent.parent / "embedded"))
from debug_session import session, tool


def main():
    target = os.environ["LLGO_HARDWARE_TARGET"]
    backend = os.getenv("LLGO_HARDWARE_BACKEND", "gdb")
    if backend not in ("gdb", "lldb"):
        raise ValueError("LLGO_HARDWARE_BACKEND must be gdb or lldb")
    variable = "LLGO_HARDWARE_" + backend.upper()
    debugger = tool(backend, os.environ[variable])
    remote, server = os.getenv("LLGO_HARDWARE_REMOTE"), os.getenv("LLGO_HARDWARE_SERVER")
    if remote and server:
        raise ValueError("LLGO_HARDWARE_REMOTE and LLGO_HARDWARE_SERVER are mutually exclusive")
    flags = []
    if remote:
        flags += ["-remote", remote]
    elif server:
        flags += ["-server", server]
    if (remote or server) and os.getenv("LLGO_HARDWARE_LOAD") == "1":
        flags.append("-load")
    with tempfile.TemporaryDirectory(prefix="llgo-hardware-debug-") as directory:
        session(backend, debugger, Path(directory) / "hardware-debug.elf", target, flags, detach=True)
    print(f"physical probe acceptance passed: {backend}, target={target}")


if __name__ == "__main__":
    main()
