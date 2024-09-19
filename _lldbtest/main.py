import lldb
import io
import os
import sys
import argparse
from dataclasses import dataclass, field
from typing import List
import cmd

sys.stdout = io.TextIOWrapper(sys.stdout.buffer, line_buffering=False)

def print_to_lldb(*args, **kwargs):
    print(*args, **kwargs, flush=True)

@dataclass
class Test:
    source_file: str
    line_number: int
    variable: str
    expected_value: str

@dataclass
class TestResult:
    test: Test
    status: str
    actual: str = None
    message: str = None
    missing: set = None
    extra: set = None

@dataclass
class TestCase:
    source_file: str
    start_line: int
    end_line: int
    tests: List[Test]

@dataclass
class CaseResult:
    test_case: TestCase
    function: str
    results: List[TestResult]

@dataclass
class TestResults:
    total: int = 0
    passed: int = 0
    failed: int = 0
    case_results: List[CaseResult] = field(default_factory=list)

class LLDBDebugger:
    def __init__(self, executable_path, plugin_path=None):
        self.executable_path = executable_path
        self.plugin_path = plugin_path
        self.debugger = lldb.SBDebugger.Create()
        self.debugger.SetAsync(False)
        self.target = None
        self.process = None

    def setup(self):
        if self.plugin_path:
            self.debugger.HandleCommand(f'command script import "{self.plugin_path}"')

        self.target = self.debugger.CreateTarget(self.executable_path)
        if not self.target:
            raise Exception(f"Failed to create target for {self.executable_path}")

    def set_breakpoint(self, file_spec, line_number):
        breakpoint = self.target.BreakpointCreateByLocation(file_spec, line_number)
        if not breakpoint.IsValid():
            raise Exception(f"Failed to set breakpoint at {file_spec}:{line_number}")
        return breakpoint

    def run_to_breakpoint(self):
        if not self.process:
            self.process = self.target.LaunchSimple(None, None, os.getcwd())
        else:
            self.process.Continue()

        if self.process.GetState() != lldb.eStateStopped:
            raise Exception("Process didn't stop at breakpoint")

    def get_variable_value(self, var_name):
        frame = self.process.GetSelectedThread().GetFrameAtIndex(0)
        var = frame.FindVariable(var_name)
        if var.IsValid():
            type_name = var.GetTypeName()
            if var.GetNumChildren() > 0:
                children = []
                for i in range(var.GetNumChildren()):
                    child = var.GetChildAtIndex(i)
                    child_name = child.GetName()
                    child_value = child.GetValue()
                    children.append(f"{child_name} = {child_value}")
                return f"{type_name}({', '.join(children)})"
            else:
                value = var.GetValue() or var.GetSummary() or str(var)
                return str(value) if value is not None else "None"
        return None

    def get_all_variable_names(self):
        frame = self.process.GetSelectedThread().GetFrameAtIndex(0)
        return set(var.GetName() for var in frame.GetVariables(True, True, True, False))

    def get_current_function_name(self):
        frame = self.process.GetSelectedThread().GetFrameAtIndex(0)
        return frame.GetFunctionName()

    def cleanup(self):
        if self.process and self.process.IsValid():
            self.process.Kill()
        lldb.SBDebugger.Destroy(self.debugger)

    def run_console(self):
        print_to_lldb("\nEntering LLDB interactive mode. Type 'quit' to exit and continue with the next test case.")

        old_stdin, old_stdout, old_stderr = sys.stdin, sys.stdout, sys.stderr
        sys.stdin, sys.stdout, sys.stderr = sys.__stdin__, sys.__stdout__, sys.__stderr__

        self.debugger.SetAsync(True)
        self.debugger.HandleCommand("settings set auto-confirm true")
        self.debugger.HandleCommand("command script import lldb")

        interpreter = self.debugger.GetCommandInterpreter()
        while True:
            print_to_lldb("\n(lldb) ", end="")
            command = input().strip()
            if command.lower() == 'quit':
                break

            result = lldb.SBCommandReturnObject()
            interpreter.HandleCommand(command, result)
            if result.Succeeded():
                print_to_lldb(result.GetOutput().rstrip())
            else:
                print_to_lldb(result.GetError().rstrip())

        sys.stdin, sys.stdout, sys.stderr = old_stdin, old_stdout, old_stderr
        print_to_lldb("\nExiting LLDB interactive mode.")


def parse_expected_values(source_files):
    test_cases = []
    for source_file in source_files:
        with open(source_file, 'r') as f:
            content = f.readlines()
            i = 0
            while i < len(content):
                line = content[i].strip()
                if line.startswith('// Expected:'):
                    start_line = i + 1
                    tests = []
                    i += 1
                    while i < len(content):
                        line = content[i].strip()
                        if not line.startswith('//'):
                            break
                        parts = line.lstrip('//').strip().split(':', 1)
                        if len(parts) == 2:
                            var, value = map(str.strip, parts)
                            tests.append(Test(source_file, i + 1, var, value))
                        i += 1
                    end_line = i
                    test_cases.append(
                        TestCase(source_file, start_line, end_line, tests))
                else:
                    i += 1
    return test_cases


def run_tests(executable_path, source_files, verbose, interactive, plugin_path):
    debugger = LLDBDebugger(executable_path, plugin_path)
    test_cases = parse_expected_values(source_files)
    if verbose:
        print_to_lldb(
            f"Running tests for {', '.join(source_files)} with {executable_path}")
        print_to_lldb(f"Found {len(test_cases)} test cases")

    try:
        debugger.setup()
        results = execute_tests(debugger, test_cases, interactive)
        print_test_results(results, verbose)

        if results.total != results.passed:
            os._exit(1)

    except Exception as e:
        print_to_lldb(f"Error: {str(e)}")

    finally:
        debugger.cleanup()


def execute_tests(debugger, test_cases, interactive):
    results = TestResults()

    for test_case in test_cases:
        breakpoint = debugger.set_breakpoint(
            test_case.source_file, test_case.end_line)
        debugger.run_to_breakpoint()

        function_name = debugger.get_current_function_name()
        all_variable_names = debugger.get_all_variable_names()

        case_result = execute_test_case(
            debugger, test_case, all_variable_names)

        results.total += len(case_result.results)
        results.passed += sum(1 for r in case_result.results if r.status == 'pass')
        results.failed += sum(1 for r in case_result.results if r.status != 'pass')
        results.case_results.append(case_result)

        # Print the current case test results before entering interactive mode
        print_to_lldb(f"\nTest case: {case_result.test_case.source_file}:{case_result.test_case.start_line}-{case_result.test_case.end_line} in function '{case_result.function}'")
        for result in case_result.results:
            # Always print verbose results here
            print_test_result(result, True)

        if interactive and any(r.status != 'pass' for r in case_result.results):
            print_to_lldb("\nTest case failed. Entering LLDB interactive mode.")
            debugger.run_console()
            # After exiting the console, we need to ensure the process is in a valid state
            if debugger.process.GetState() == lldb.eStateRunning:
                debugger.process.Stop()
            elif debugger.process.GetState() == lldb.eStateExited:
                # If the process has exited, we need to re-launch it
                debugger.process = debugger.target.LaunchSimple(
                    None, None, os.getcwd())

        debugger.target.BreakpointDelete(breakpoint.GetID())

    return results


def execute_test_case(debugger, test_case, all_variable_names):
    results = []

    for test in test_case.tests:
        if test.variable == "all variables":
            result = execute_all_variables_test(test, all_variable_names)
        else:
            result = execute_single_variable_test(debugger, test)
        results.append(result)

    return CaseResult(test_case, debugger.get_current_function_name(), results)


def execute_all_variables_test(test, all_variable_names):
    expected_vars = set(test.expected_value.split())
    if expected_vars == all_variable_names:
        return TestResult(
            test=test,
            status='pass',
            actual=all_variable_names
        )
    else:
        return TestResult(
            test=test,
            status='fail',
            actual=all_variable_names,
            missing=expected_vars - all_variable_names,
            extra=all_variable_names - expected_vars
        )


def execute_single_variable_test(debugger, test):
    actual_value = debugger.get_variable_value(test.variable)
    if actual_value is None:
        print_to_lldb(f"Unable to fetch value for {test.variable}")
        return TestResult(
            test=test,
            status='error',
            message='Unable to fetch value'
        )

    # 移除可能的空格，但保留括号
    actual_value = actual_value.strip()
    expected_value = test.expected_value.strip()

    # 比较处理后的值
    if actual_value == expected_value:
        return TestResult(
            test=test,
            status='pass',
            actual=actual_value
        )
    else:
        return TestResult(
            test=test,
            status='fail',
            actual=actual_value
        )


def print_test_results(results: TestResults, verbose):
    for case_result in results.case_results:
        print_to_lldb(f"\nTest case: {case_result.test_case.source_file}:{case_result.test_case.start_line}-{case_result.test_case.end_line} in function '{case_result.function}'")
        for result in case_result.results:
            print_test_result(result, verbose)

    print_to_lldb("\nTest results:")
    print_to_lldb(f"  Total tests: {results.total}")
    print_to_lldb(f"  Passed tests: {results.passed}")
    print_to_lldb(f"  Failed tests: {results.failed}")
    if results.total == results.passed:
        print_to_lldb("All tests passed!")
    else:
        print_to_lldb("Some tests failed")


def print_test_result(result: TestResult, verbose):
    status_symbol = "✓" if result.status == 'pass' else "✗"
    status_text = "Pass" if result.status == 'pass' else "Fail"

    if result.status == 'pass':
        if verbose:
            print_to_lldb(
                f"{status_symbol} Line {result.test.line_number}, {result.test.variable}: {status_text}")
            if result.test.variable == 'all variables':
                print_to_lldb(f"    Variables: {', '.join(sorted(result.actual))}")
    else:  # fail or error
        print_to_lldb(
            f"{status_symbol} Line {result.test.line_number}, {result.test.variable}: {status_text}")
        if result.test.variable == 'all variables':
            if result.missing:
                print_to_lldb(
                    f"    Missing variables: {', '.join(sorted(result.missing))}")
            if result.extra:
                print_to_lldb(
                    f"    Extra variables: {', '.join(sorted(result.extra))}")
            print_to_lldb(
                f"    Expected: {', '.join(sorted(result.test.expected_value.split()))}")
            print_to_lldb(f"    Actual: {', '.join(sorted(result.actual))}")
        elif result.status == 'error':
            print_to_lldb(f"    Error: {result.message}")
        else:
            print_to_lldb(f"    Expected: {result.test.expected_value}")
            print_to_lldb(f"    Actual: {result.actual}")

def main():
    print_to_lldb(sys.argv)
    parser = argparse.ArgumentParser(description="LLDB 18 Debug Script with DWARF 5 Support")
    parser.add_argument("executable", help="Path to the executable")
    parser.add_argument("sources", nargs='+', help="Paths to the source files")
    parser.add_argument("-v", "--verbose", action="store_true", help="Enable verbose output")
    parser.add_argument("-i", "--interactive", action="store_true", help="Enable interactive mode on test failure")
    parser.add_argument("--plugin", help="Path to the LLDB plugin")
    args = parser.parse_args()

    plugin_path = args.plugin or os.path.join(os.path.dirname(os.path.realpath(__file__)), "go_lldb_plugin.py")
    run_tests(args.executable, args.sources, args.verbose, args.interactive, plugin_path)

if __name__ == "__main__":
    main()

def run_commands(debugger, command, result, internal_dict):
    print_to_lldb(sys.argv)
    main()
    debugger.HandleCommand("quit")

def __lldb_init_module(debugger, internal_dict):
    # debugger.HandleCommand('command script add -f main.run_commands run_tests')
    pass
