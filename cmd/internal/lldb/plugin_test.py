# Copyright (c) 2026 The XGo Authors (xgo.dev). All rights reserved.
# Licensed under the Apache License, Version 2.0.

"""Type spelling regressions that do not require an LLDB installation."""

import importlib.util
from dataclasses import replace
from pathlib import Path
import sys
from types import ModuleType, SimpleNamespace
import unittest
from unittest.mock import MagicMock, Mock, patch


lldb = ModuleType("lldb")
lldb.__getattr__ = lambda name: type(name, (), {})
sys.modules["lldb"] = lldb
spec = importlib.util.spec_from_file_location(
    "llgo_plugin", Path(__file__).with_name("llgo_plugin.py"))
plugin = importlib.util.module_from_spec(spec)
sys.modules[spec.name] = plugin
spec.loader.exec_module(plugin)


class ValueType:
    def __init__(self, name, typedef=False, pointee=None):
        self.name, self.typedef, self.pointee = name, typedef, pointee

    def GetName(self):
        return self.name

    def IsPointerType(self):
        return self.pointee is not None

    def GetPointeeType(self):
        return self.pointee

    def IsTypedefType(self):
        return self.typedef


class TypeNameTests(unittest.TestCase):
    def test_longest_c_spelling_wins(self):
        for spelling, expected in (
            ("long long", "int64"), ("unsigned long long", "uint64"),
            ("long long *", "*int64"), ("unsigned long long *", "*uint64"),
            ("long", "int"), ("unsigned long", "uint"),
        ):
            with self.subTest(spelling=spelling):
                self.assertEqual(plugin.map_type_name(spelling), expected)

    def test_go_typedef_names_are_preserved(self):
        for name in ("int", "int64", "uint", "uint64", "main.NamedInt"):
            go_type = ValueType(name, typedef=True)
            self.assertEqual(plugin.go_type_name(go_type), name)
            self.assertEqual(plugin.go_type_name(ValueType(name + " *", pointee=go_type)), "*" + name)
        self.assertEqual(plugin.go_type_name(ValueType("int")), "int32")


class TargetCacheTests(unittest.TestCase):
    def setUp(self):
        lldb.eStateStopped, lldb.eStateRunning = 5, 6
        lldb.eByteOrderLittle = 4
        plugin._TARGET_INFO_CACHE.clear()
        self.target = Mock()
        self.target.GetDebugger.return_value.GetID.return_value = 10
        self.target.GetTriple.return_value = "x86_64-unknown-linux-gnu"
        self.target.GetAddressByteSize.return_value = 8
        self.target.GetByteOrder.return_value = lldb.eByteOrderLittle
        self.process = self.target.GetProcess.return_value
        self.process.GetState.return_value = lldb.eStateStopped
        self.process.GetUniqueID.return_value = 20
        self.process.GetStopID.return_value = 1
        self.module = Mock()
        self.module.GetUUIDString.return_value = "original-build"
        self.module.GetFileSpec.return_value = "/same/path/program"
        self.target.GetNumModules.return_value = 1
        self.target.GetModuleAtIndex.return_value = self.module
        self.record = b"LLGODBG\0" + bytes([1, 1, 2, 1, 0, 8, 1, 0])
        self.markers = patch.object(plugin, "_marker_versions", return_value=(1,))
        self.reader = patch.object(plugin, "_read_debugger_record", return_value=self.record)
        self.markers.start()
        self.read = self.reader.start()
        self.addCleanup(self.markers.stop)
        self.addCleanup(self.reader.stop)
        self.addCleanup(plugin._TARGET_INFO_CACHE.clear)

    def test_success_is_reused_only_in_same_process_stop_and_module_set(self):
        first = plugin.inspect_target(self.target)
        self.assertTrue(first.supported)
        self.assertIs(plugin.inspect_target(self.target), first)
        self.read.assert_called_once()
        # Stop IDs include expression stops; a relaunch must also have a new
        # process identity even if its first stop has the same numeric ID.
        for getter, value in (
            (self.process.GetStopID, 2),
            (self.process.GetUniqueID, 21),
            (self.target.GetDebugger.return_value.GetID, 11),
            (self.module.GetUUIDString, "rebuilt-at-same-path"),
            (self.target.GetNumModules, 2),
        ):
            getter.return_value = value
            updated = plugin.inspect_target(self.target)
            self.assertTrue(updated.supported)
            self.assertIsNot(updated, first)
            first = updated
        self.assertEqual(self.read.call_count, 6)
        self.process.GetStopID.assert_called_with(True)
        self.assertEqual(len(plugin._TARGET_INFO_CACHE), 1)

    def test_offline_and_unidentified_modules_are_rechecked(self):
        for getter, value in (
            (self.process.IsValid, False),
            (self.process.GetState, lldb.eStateRunning),
            (self.module.GetUUIDString, ""),
        ):
            with self.subTest(getter=getter):
                old = getter.return_value
                getter.return_value = value
                self.read.return_value = self.record
                self.assertTrue(plugin.inspect_target(self.target).supported)
                # Simulate an in-place rebuild with the same file path and no
                # usable UUID, or an offline target whose bytes have changed.
                self.read.return_value = b"LLGODBG\0" + bytes([1, 1, 99, 1, 0, 8, 1, 0])
                self.assertFalse(plugin.inspect_target(self.target).supported)
                self.assertFalse(plugin._TARGET_INFO_CACHE)
                getter.return_value = old

    def test_missing_record_is_retried_after_launch_and_within_same_stop(self):
        self.process.IsValid.return_value = False
        self.read.return_value = None
        self.assertFalse(plugin.inspect_target(self.target).supported)
        self.process.IsValid.return_value = True
        self.assertFalse(plugin.inspect_target(self.target).supported)
        self.read.return_value = self.record
        self.assertTrue(plugin.inspect_target(self.target).supported)
        self.assertEqual(self.read.call_count, 3)

    def test_missing_public_identity_api_uses_uncached_inspection(self):
        self.process.GetUniqueID.side_effect = AttributeError("old LLDB")
        self.assertTrue(plugin.inspect_target(self.target).supported)
        self.assertTrue(plugin.inspect_target(self.target).supported)
        self.assertEqual(self.read.call_count, 2)

    def test_marker_only_compatibility_does_not_cache_an_unreadable_record(self):
        with patch.object(plugin, "LLGO_DEBUGGER_SCHEMAS", {"legacy": (1, 2, 1)}):
            self.read.return_value = None
            self.assertTrue(plugin.inspect_target(self.target).supported)
            self.assertFalse(plugin._TARGET_INFO_CACHE)
            self.read.return_value = b"LLGODBG\0" + bytes([1, 1, 99, 1, 0, 8, 1, 0])
            self.assertFalse(plugin.inspect_target(self.target).supported)
            self.assertEqual(self.read.call_count, 2)


class WindowsCodeAddressTests(unittest.TestCase):
    def setUp(self):
        lldb.eAddressMaskTypeCode = 1
        lldb.LLDB_INVALID_ADDRESS_MASK = (1 << 64) - 1
        self.target = Mock()
        self.target.GetTriple.return_value = "aarch64-pc-windows-msvc"
        self.target.GetAddressByteSize.return_value = 8
        self.target.GetPlatform.return_value.IsHost.return_value = True
        self.process = Mock()
        self.process.GetPluginName.return_value = "windows"
        self.process.GetAddressMask.return_value = lldb.LLDB_INVALID_ADDRESS_MASK

    def test_native_host_sets_only_an_unset_code_mask(self):
        with patch.object(plugin.sys, "platform", "win32"), \
                patch.object(plugin, "_windows_arm64_user_address_bits", return_value=47) as query:
            plugin._configure_windows_arm64_code_addresses(self.target, self.process)
            self.process.SetAddressableBits.assert_called_once_with(lldb.eAddressMaskTypeCode, 47)
            self.process.SetAddressableBits.reset_mock()
            for mask in (0, 0xffff000000000000):
                self.process.GetAddressMask.return_value = mask
                query.reset_mock()
                plugin._configure_windows_arm64_code_addresses(self.target, self.process)
                self.process.SetAddressableBits.assert_not_called()
                query.assert_not_called()

    def test_other_platforms_remote_targets_and_dumps_are_unchanged(self):
        with patch.object(plugin.sys, "platform", "win32"), \
                patch.object(plugin, "_windows_arm64_user_address_bits", return_value=47) as query:
            for triple in ("aarch64-unknown-linux-gnu", "x86_64-pc-windows-msvc", "arm64-apple-darwin"):
                self.target.GetTriple.return_value = triple
                plugin._configure_windows_arm64_code_addresses(self.target, self.process)
            self.target.GetTriple.return_value = "aarch64-pc-windows-msvc"
            self.target.GetPlatform.return_value.IsHost.return_value = False
            plugin._configure_windows_arm64_code_addresses(self.target, self.process)
            self.target.GetPlatform.return_value.IsHost.return_value = True
            for process_plugin in ("minidump", "gdb-remote"):
                self.process.GetPluginName.return_value = process_plugin
                plugin._configure_windows_arm64_code_addresses(self.target, self.process)
            self.process.SetAddressableBits.assert_not_called()
            query.assert_not_called()
        with patch.object(plugin.sys, "platform", "linux"):
            self.process.GetPluginName.return_value = "windows"
            plugin._configure_windows_arm64_code_addresses(self.target, self.process)
            self.process.SetAddressableBits.assert_not_called()

    def test_unavailable_host_information_preserves_raw_debugging(self):
        with patch.object(plugin.sys, "platform", "win32"), \
                patch.object(plugin, "_windows_arm64_user_address_bits", return_value=None):
            plugin._configure_windows_arm64_code_addresses(self.target, self.process)
            self.process.SetAddressableBits.assert_not_called()
        with patch.object(plugin.sys, "platform", "win32"), \
                patch.object(plugin.ctypes, "WinDLL", create=True, side_effect=OSError("unavailable")):
            self.assertIsNone(plugin._windows_arm64_user_address_bits())

    def test_old_debugger_apis_preserve_raw_debugging(self):
        with patch.object(plugin.sys, "platform", "win32"):
            self.target.GetPlatform.return_value = SimpleNamespace()
            plugin._configure_windows_arm64_code_addresses(self.target, self.process)
            self.process.SetAddressableBits.assert_not_called()
            self.target.GetPlatform.return_value = SimpleNamespace(IsHost=lambda: True)
            old_process = SimpleNamespace(IsValid=lambda: True)
            plugin._configure_windows_arm64_code_addresses(self.target, old_process)

    def test_address_width_comes_from_native_windows_system_information(self):
        architecture = 12
        maximum = 0x7ffffffeffff

        def populate(pointer):
            info = pointer._obj
            info.processor = architecture
            info.page_size = 4096
            info.minimum = 0x10000
            info.maximum = maximum

        kernel = SimpleNamespace(GetSystemInfo=Mock(side_effect=populate))
        with patch.object(plugin.sys, "platform", "win32"), \
                patch.object(plugin.ctypes, "WinDLL", create=True, return_value=kernel):
            self.assertEqual(plugin._windows_arm64_user_address_bits(), 47)
            architecture = 9
            self.assertIsNone(plugin._windows_arm64_user_address_bits())
            architecture, maximum = 12, 0
            self.assertIsNone(plugin._windows_arm64_user_address_bits())

    def test_stop_hook_is_installed_once_before_launch_and_never_continues(self):
        debugger = Mock()
        debugger.GetSelectedTarget.return_value = self.target
        self.target.GetGloballyUniqueID.return_value = 7
        result = Mock()
        result.Succeeded.return_value = True
        with patch.object(plugin.sys, "platform", "win32"), \
                patch.object(plugin, "inspect_target", return_value=SimpleNamespace(supported=True)), \
                patch.object(plugin, "_CODE_ADDRESS_HOOK_TARGETS", set()), \
                patch.object(plugin, "_configure_windows_arm64_code_addresses") as configure, \
                patch.object(lldb, "SBCommandReturnObject", return_value=result):
            plugin.configure_target(debugger)
            plugin.configure_target(debugger)
            debugger.GetCommandInterpreter.return_value.HandleCommand.assert_called_once_with(
                "target stop-hook add -P llgo_plugin.WindowsARM64CodeAddressHook", result)
            hook = plugin.WindowsARM64CodeAddressHook(self.target, None)
            context = SimpleNamespace(GetProcess=lambda: self.process)
            self.assertTrue(hook.handle_stop(context, None))
            configure.assert_called_with(self.target, self.process)


class CollectorSignalTests(unittest.TestCase):
    def test_launch_can_refine_triple_but_cannot_change_runtime_contract(self):
        fixture_path = Path(__file__).resolve().parents[3] / "test" / "debug" / "runtime" / "test.py"
        fixture_spec = importlib.util.spec_from_file_location("lldb_fixture", fixture_path)
        fixture = importlib.util.module_from_spec(fixture_spec)
        sys.modules[fixture_spec.name] = fixture
        fixture_spec.loader.exec_module(fixture)
        debugger = fixture.LLDBDebugger.__new__(fixture.LLDBDebugger)
        before = debugger.target_info = plugin.LLGoTargetInfo(
            marker_versions=(1,), schema_version=1, runtime_layout_version=2,
            triple="x86_64--linux", pointer_size=8, byte_order="little",
            record_version=1, llgo_abi_version=1)
        after = replace(before, triple="x86_64-pc-linux-gnu")
        debugger.target = Mock()
        debugger.target.GetTriple.return_value = after.triple
        debugger.check_target_contract(after)
        # A missing/changed marker, schema or representation remains a hard
        # failure; accepting triple refinement must not hide ABI corruption.
        for name, value in (
            ("marker_versions", (2,)), ("schema_version", 2),
            ("runtime_layout_version", 3), ("record_version", 2),
            ("llgo_abi_version", 2), ("pointer_size", 4),
            ("byte_order", "big"), ("compatibility_error", "bad record"),
        ):
            with self.subTest(field=name), self.assertRaises(fixture.LLDBTestException):
                debugger.check_target_contract(replace(after, **{name: value}))
        with self.assertRaises(fixture.LLDBTestException):
            debugger.check_target_contract(before)  # stale prelaunch triple
        for triple in ("", "aarch64-pc-linux-gnu"):
            debugger.target.GetTriple.return_value = triple
            with self.assertRaises(fixture.LLDBTestException):
                debugger.check_target_contract(replace(after, triple=triple))

    def test_only_runtime_signals_are_delivered_and_continued(self):
        lldb.eStateStopped = 5
        lldb.eStopReasonSignal = 5
        lldb.eStopReasonBreakpoint = 3
        lldb.eStopReasonException = 6
        fixture_path = Path(__file__).resolve().parents[3] / "test" / "debug" / "runtime" / "test.py"
        fixture_spec = importlib.util.spec_from_file_location("lldb_fixture", fixture_path)
        fixture = importlib.util.module_from_spec(fixture_spec)
        sys.modules[fixture_spec.name] = fixture
        fixture_spec.loader.exec_module(fixture)
        debugger = fixture.LLDBDebugger.__new__(fixture.LLDBDebugger)
        debugger.target = SimpleNamespace(GetTriple=lambda: "aarch64-unknown-linux-gnu")
        process = debugger.process = MagicMock()
        process.GetState.return_value = lldb.eStateStopped
        thread = process.GetSelectedThread.return_value
        process.__iter__.return_value = [thread]
        thread.GetStopReason.return_value = lldb.eStopReasonSignal
        signals = process.GetUnixSignals.return_value
        signals.GetSignalNumberFromName.side_effect = {"SIGPWR": 30, "SIGXCPU": 24, "SIGURG": 23}.get
        resumed = Mock()
        resumed.Fail.return_value = False

        def hit_breakpoint():
            thread.GetStopReason.return_value = lldb.eStopReasonBreakpoint
            return resumed

        for signal_number in (30, 24, 23):
            with self.subTest(signal=signal_number):
                thread.GetStopReason.return_value = lldb.eStopReasonSignal
                thread.GetStopReasonDataAtIndex.return_value = signal_number
                process.Continue.side_effect = hit_breakpoint
                process.Continue.reset_mock()
                debugger.continue_runtime_signals()
                process.Continue.assert_called_once()
                signals.SetShouldStop.assert_any_call(signal_number, False)
                signals.SetShouldSuppress.assert_any_call(signal_number, False)
        # Repeated snapshot polls can produce more than four SIGURG stops.
        thread.GetStopReason.return_value = lldb.eStopReasonSignal
        thread.GetStopReasonDataAtIndex.return_value = 23
        process.Continue.reset_mock()

        def finish_snapshots():
            if process.Continue.call_count == 8:
                thread.GetStopReason.return_value = lldb.eStopReasonBreakpoint
            return resumed

        process.Continue.side_effect = finish_snapshots
        debugger.continue_runtime_signals()
        self.assertEqual(process.Continue.call_count, 8)
        # A failed continue must not turn the signal-draining loop into a hang.
        thread.GetStopReason.return_value = lldb.eStopReasonSignal
        resumed.Fail.return_value = True
        with self.assertRaisesRegex(fixture.LLDBTestException, "Cannot continue"):
            debugger.continue_runtime_signals()
        # SIGSEGV must remain a visible failure, even after GC signal setup.
        thread.GetStopReason.return_value = lldb.eStopReasonSignal
        thread.GetStopReasonDataAtIndex.return_value = 11
        process.Continue.reset_mock()
        debugger.continue_runtime_signals()
        process.Continue.assert_not_called()
        # A selected GC stop cannot resume past another thread's real fault.
        other_fault = Mock()
        other_fault.GetStopReason.return_value = lldb.eStopReasonSignal
        other_fault.GetStopReasonDataAtIndex.return_value = 11
        process.__iter__.return_value = [thread, other_fault]
        thread.GetStopReasonDataAtIndex.return_value = 30
        debugger.continue_runtime_signals()
        process.Continue.assert_not_called()
        thread.GetStopReasonDataAtIndex.return_value = 11
        # A second thread at the right source line cannot hide a real fault.
        debugger.breakpoint_id = 1
        breakpoint_thread = Mock()
        breakpoint_thread.GetStopReason.return_value = lldb.eStopReasonBreakpoint
        breakpoint_thread.GetStopDescription.return_value = "breakpoint 1.1"
        breakpoint_thread.GetStopReasonDataCount.return_value = 2
        breakpoint_thread.GetStopReasonDataAtIndex.side_effect = [1, 1]
        thread.GetStopDescription.return_value = "signal SIGSEGV"
        with self.assertRaisesRegex(fixture.LLDBTestException, "SIGSEGV"):
            debugger.breakpoint_threads([thread, breakpoint_thread])
        self.assertEqual(debugger.breakpoint_threads([breakpoint_thread]), [breakpoint_thread])
        debugger.target = Mock()
        debugger.target.GetTriple.return_value = "i686-pc-windows-msvc"
        debugger.target.FindBreakpointByID.return_value.GetHitCount.return_value = 1
        thread.GetStopReason.return_value = lldb.eStopReasonException
        thread.GetStopDescription.return_value = "Exception 0x80000003 at address 0x1234"
        self.assertEqual(debugger.breakpoint_threads([thread]), [thread])
        thread.GetStopDescription.return_value = "Exception 0xc0000005 at address 0x1234"
        with self.assertRaisesRegex(fixture.LLDBTestException, "0xc0000005"):
            debugger.breakpoint_threads([thread])


if __name__ == "__main__":
    unittest.main()
