# Copyright (c) 2026 The XGo Authors (xgo.dev). All rights reserved.
# Licensed under the Apache License, Version 2.0.

"""Host-side regression checks for target discovery and registry snapshots."""

import importlib.util
from pathlib import Path
import sys
from types import ModuleType, SimpleNamespace
import unittest
from unittest.mock import Mock, patch


gdb = ModuleType("gdb")
gdb.error = RuntimeError
gdb.GdbError = RuntimeError
gdb.Command = type("Command", (), {"__init__": lambda *args, **kwargs: None})
gdb.COMMAND_USER = gdb.COMMAND_STATUS = gdb.COMMAND_DATA = 0
gdb.COMMAND_STACK = gdb.COMPLETE_EXPRESSION = 0
gdb.pretty_printers = []
gdb.events = SimpleNamespace(**{
    name: SimpleNamespace(connect=Mock())
    for name in (
        "stop", "cont", "exited", "new_objfile", "clear_objfiles",
        "inferior_deleted", "memory_changed", "register_changed",
        "new_thread", "thread_exited",
    )
})
gdb.execute = Mock()
gdb.selected_inferior = Mock()
gdb.objfiles = Mock(return_value=[])
gdb.lookup_type = Mock()
gdb.Value = Mock()
sys.modules["gdb"] = gdb
spec = importlib.util.spec_from_file_location(
    "llgo_plugin", Path(__file__).with_name("llgo_plugin.py"))
plugin = importlib.util.module_from_spec(spec)
spec.loader.exec_module(plugin)


class PluginTests(unittest.TestCase):
    def setUp(self):
        plugin._invalidate_caches()
        self.inferior = SimpleNamespace(
            num=1, pid=2, architecture=lambda: SimpleNamespace(name=lambda: "aarch64"),
            read_memory=Mock(return_value=memoryview(
                b"LLGODBG\0" + bytes([1, 1, 2, 1, 0, 8, 1, 0]))),
            threads=Mock(return_value=[]),
        )
        gdb.selected_inferior.return_value = self.inferior
        gdb.lookup_type.return_value = SimpleNamespace(
            pointer=lambda: SimpleNamespace(sizeof=8))
        gdb.execute.reset_mock()

    def test_record_discovery_does_not_probe_marker_namespace(self):
        def execute(command, **_kwargs):
            if command == "info address __llgo_debugger_abi_v1":
                return 'Symbol is at 0x1000.'
            if command == "show endian":
                return 'The target is little endian.'
            if command.startswith("info variables "):
                return ''
            self.fail(f"unexpected speculative command: {command}")
        gdb.execute.side_effect = execute
        self.assertTrue(plugin.inspect_target().supported)
        self.assertEqual(gdb.execute.call_count, 3)

    def test_marker_fallback_probes_only_known_versions(self):
        gdb.execute.side_effect = lambda command, **kwargs: (
            '__llgo_debugger_marker_v99' if command.startswith("info variables ")
            else 'Symbol is at 0x1000.')
        self.assertEqual(plugin._marker_versions(), (1, 99))
        self.assertEqual(gdb.execute.call_count, 2)

    def test_pointer_read_rejects_unknown_byte_order(self):
        self.assertIsNone(plugin._read_pointer(0x1000, 8, "unknown"))
        self.inferior.read_memory.assert_not_called()
        self.inferior.read_memory.return_value = memoryview(bytes([1, 2, 3, 4]))
        self.assertEqual(plugin._read_pointer(0x1000, 4, "little"), 0x04030201)
        self.assertEqual(plugin._read_pointer(0x1000, 4, "big"), 0x01020304)

    def test_zero_procid_does_not_match_unused_ptid_component(self):
        thread = SimpleNamespace(ptid=(7, 42, 0))
        self.inferior.threads.return_value = [thread]
        self.assertIsNone(plugin._thread_for_procid(0))
        self.assertIsNone(plugin._thread_for_procid(-1))
        self.inferior.threads.assert_not_called()
        self.assertIs(plugin._thread_for_procid(42), thread)

    def test_windows_tid_uses_ptid_lwp_component(self):
        thread = SimpleNamespace(ptid=(100, 73, 0))
        self.inferior.threads.return_value = [thread]
        with patch.object(plugin.sys, "platform", "win32"):
            self.assertEqual(plugin._threads_by_procid(), {73: thread})

    def test_darwin_native_mach_port_is_converted_to_system_id(self):
        thread = SimpleNamespace(ptid=(100, 0, 259))
        self.inferior.threads.return_value = [thread]
        self.inferior.connection = SimpleNamespace(type="native")
        with patch.object(plugin.sys, "platform", "darwin"), patch.object(
                plugin, "_darwin_thread_id", return_value=987654321) as lookup:
            self.assertEqual(plugin._threads_by_procid(), {987654321: thread})
            lookup.assert_called_once_with(259)
        with patch.object(plugin.sys, "platform", "darwin"), patch.object(
                plugin, "_darwin_thread_id", return_value=None):
            self.assertEqual(plugin._threads_by_procid(), {})

    def test_darwin_remote_thread_ids_do_not_use_host_mach_ports(self):
        thread = SimpleNamespace(ptid=(100, 0, 987654321))
        self.inferior.threads.return_value = [thread]
        self.inferior.connection = SimpleNamespace(type="remote")
        with patch.object(plugin.sys, "platform", "darwin"), patch.object(
                plugin, "_darwin_thread_id") as lookup:
            self.assertEqual(plugin._threads_by_procid(), {987654321: thread})
            lookup.assert_not_called()

    def test_goroutine_snapshot_is_reused_and_invalidated(self):
        info = SimpleNamespace(runtime_layout_version=2, pointer_size=8, byte_order="little")
        node = {"state": 1, "goid": 1, "parent_goid": 0, "debugger_thread_id": 42, "next": 0}
        layout = {
            "head_symbol": "registry", "goroutine_type": "node",
            "status": "state", "id": "goid", "parent_id": "parent_goid",
            "procid": "debugger_thread_id", "next": "next", "status_names": {"1": "running"},
        }
        thread = SimpleNamespace(ptid=(7, 42, 0))
        self.inferior.threads.return_value = [thread]
        gdb.Value.return_value.cast.return_value.dereference.return_value = node
        with patch.multiple(plugin,
                            _require_supported_target=Mock(return_value=info),
                            _goroutine_layout=Mock(return_value=layout),
                            _symbol_address=Mock(return_value=0x1000),
                            _lookup_type=Mock(),
                            _read_pointer=Mock(return_value=0x2000),
                            _field=lambda value, name: value[name],
                            _value_as_int=lambda value: value):
            first = plugin._goroutines()
            self.assertEqual(first[0]["status_name"], "running")
            self.assertIs(first[0]["thread"], thread)
            self.assertIs(plugin._goroutines(), first)
            plugin._read_pointer.assert_called_once()
            self.inferior.threads.assert_called_once()
            for event_name in ("cont", "stop", "memory_changed", "thread_exited"):
                event = getattr(gdb.events, event_name)
                event.connect.call_args.args[0](None)
                self.assertIsNot(plugin._goroutines(), first)
            self.assertEqual(plugin._read_pointer.call_count, 5)


if __name__ == "__main__":
    unittest.main()
