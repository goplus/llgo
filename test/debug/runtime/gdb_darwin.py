# Copyright (c) 2026 The XGo Authors (xgo.dev). All rights reserved.
# Licensed under the Apache License, Version 2.0.

"""Launch native Darwin GDB acceptance through a suspended posix_spawn.

GDB 17's own fork/exec path can block in decode_message's wait4 while the
inferior is stopped at _dyld_start. Its attach path avoids that handshake.
The inferior, native GDB transport, breakpoints and assertions stay the same.
"""

import ctypes
import os
import signal
import subprocess
import sys


def spawn_suspended(executable):
    system = ctypes.CDLL("/usr/lib/libSystem.B.dylib")
    attr_pointer = ctypes.POINTER(ctypes.c_void_p)
    strings = ctypes.POINTER(ctypes.c_char_p)
    for name in ("posix_spawnattr_init", "posix_spawnattr_destroy"):
        getattr(system, name).argtypes = [attr_pointer]
    system.posix_spawnattr_setflags.argtypes = [attr_pointer, ctypes.c_short]
    system.posix_spawn.argtypes = [ctypes.POINTER(ctypes.c_int), ctypes.c_char_p,
                                  ctypes.c_void_p, attr_pointer, strings, strings]

    def check(error):
        if error:
            raise OSError(error, os.strerror(error))

    attributes = ctypes.c_void_p()
    check(system.posix_spawnattr_init(ctypes.byref(attributes)))
    try:
        # START_SUSPENDED (sys/spawn.h) plus DISABLE_ASLR, matching GDB's
        # normal Darwin launch. GDB 17 cannot relocate dyld 17 images.
        check(system.posix_spawnattr_setflags(ctypes.byref(attributes), 0x0180))
        argv = (ctypes.c_char_p * 2)(os.fsencode(executable), None)
        values = [os.fsencode(key + "=" + value)
                  for key, value in os.environ.items()]
        environ = (ctypes.c_char_p * (len(values) + 1))(*values, None)
        pid = ctypes.c_int()
        check(system.posix_spawn(ctypes.byref(pid), argv[0], None,
                                ctypes.byref(attributes), argv, environ))
        return pid.value
    finally:
        check(system.posix_spawnattr_destroy(ctypes.byref(attributes)))


def main(gdb, args):
    launches = [i for i in range(1, len(args))
                if args[i - 1] == "-ex" and args[i] == "run"]
    command = ["sudo", "-n", gdb]
    if not launches:
        # Version/Python probes and the non-running C fallback fixtures.
        os.execvp(command[0], command + args)
    if len(launches) != 1 or "--batch" not in args:
        raise ValueError("expected one batch acceptance launch")
    index = args.index("--batch") + 1
    executable = args[index]
    pid = spawn_suspended(executable)
    try:
        args[launches[0]] = "continue"
        # Clear the BSD stop after GDB has installed its Mach suspension.
        # The program remains stopped until the original first run command.
        args[index + 1:index + 1] = [
            "-ex", "attach " + str(pid),
            "-ex", "python import os, signal; os.kill(" + str(pid) + ", signal.SIGCONT)",
        ]
        return subprocess.call(command + args)
    finally:
        try:
            os.kill(pid, signal.SIGKILL)
        except ProcessLookupError:
            pass
        os.waitpid(pid, 0)


if __name__ == "__main__":
    sys.exit(main(sys.argv[1], sys.argv[2:]))
