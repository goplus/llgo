# Opt-in physical probe acceptance

This test runs the shared embedded source-debug fixture on a real target. It is
never part of ordinary CI and refuses to start unless the operator explicitly
confirms that the selected device may be halted and flashed.

The normal path uses the target's checked-in OpenOCD configuration. Choose the
backend and its executable explicitly (GDB remains the default):

```sh
LLGO_HARDWARE_CONFIRM=flash \
LLGO_HARDWARE_TARGET=rp2040 \
LLGO_HARDWARE_GDB=arm-none-eabi-gdb \
bash test/debug/hardware/runtest.sh

LLGO_HARDWARE_CONFIRM=flash \
LLGO_HARDWARE_TARGET=rp2040 \
LLGO_HARDWARE_BACKEND=lldb \
LLGO_HARDWARE_LLDB=lldb \
bash test/debug/hardware/runtest.sh
```

The test builds a host-side ELF with DWARF, starts the configured probe server,
loads the ELF, stops at the fixture's source breakpoint, checks parameters,
locals, aggregates, globals, and the backtrace, then detaches. Set
`LLGO_HARDWARE_SERVER` to override the target's server command.

An already running GDB Remote server can be selected with
`LLGO_HARDWARE_REMOTE=host:port`. Remote and custom-server modes do not alter
target memory by default, so the exact generated ELF must already be present on
the device. Set `LLGO_HARDWARE_LOAD=1` only when that server is allowed to reset
and load the new ELF. Both backends pass this request as the same product
`-load` flag; the server must support OpenOCD's `monitor reset halt` command.
The ordinary target-configured OpenOCD path loads automatically with either
backend, once the harness's explicit physical-operation opt-in is present.

The checked assertions are shared with the QEMU suite. A debugger must actually
support the selected MCU architecture and the probe must implement its remote
protocol: a tool being available on the host does not establish board support.
The LLDB example is an opt-in entry point, not a claim of physical RP2040 testing.

Only connect one test process to a probe. The command intentionally has no
automatic retry: loss of probe ownership, power, reset, or transport should
remain visible to the operator.
