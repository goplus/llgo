import contextlib
import io
import json
import os
from pathlib import Path
import subprocess
import sys
import tempfile
import unittest

import run_go_tests


class GoTestReportTests(unittest.TestCase):
    def invoke(self, lines, status=0):
        temporary = tempfile.TemporaryDirectory()
        self.addCleanup(temporary.cleanup)
        root = Path(temporary.name)
        summary = root / "summary.md"
        command = [sys.executable, "-c", "import sys; print(" +
                   repr("\n".join(lines)) + f"); sys.exit({status})"]
        output = io.StringIO()
        with contextlib.redirect_stdout(output):
            result = run_go_tests.run(command, root, "build", summary)
        return root, result, output.getvalue(), summary.read_text()

    def test_preserves_package_identity_nested_cases_and_null_timings(self):
        events = [
            {"Package": "p", "Test": "TestSame/sub|case", "Action": "pass", "Elapsed": 2},
            {"Package": "p", "Test": "TestSame", "Action": "pass", "Elapsed": 3},
            {"Package": "q", "Test": "TestSame", "Action": "skip"},
            {"Package": "p", "Action": "pass", "Elapsed": 4},
        ]
        root, status, _, summary = self.invoke([json.dumps(event) for event in events])
        self.assertEqual(status, 0)
        cases = json.loads((root / "build-times.json").read_text())
        self.assertEqual([(case["Package"], case["Test"]) for case in cases],
                         [("p", "TestSame"), ("p", "TestSame/sub|case"), ("q", "TestSame")])
        self.assertIn("Slowest tests", summary)
        self.assertIn("Slowest subtests", summary)
        self.assertIn("sub&#124;case", summary)
        self.assertEqual(len((root / "build.jsonl").read_text().splitlines()), 4)

    def test_failure_status_and_plain_diagnostics_reach_the_outer_wrapper(self):
        events = [{"Action": "output", "Output": "fatal error: test failure\n"},
                  {"Package": "p", "Test": "TestBroken", "Action": "fail", "Elapsed": 5}]
        root, status, output, summary = self.invoke([json.dumps(event) for event in events], 7)
        self.assertEqual(status, 7)
        self.assertEqual(output, "fatal error: test failure\n")
        self.assertIn("exit 7", summary)
        self.assertEqual(json.loads((root / "build-times.json").read_text())[0]["Action"], "fail")

    def test_unstructured_tool_output_is_visible(self):
        _, status, output, _ = self.invoke(["compiler diagnostic", "[1, 2]"])
        self.assertEqual(status, 0)
        self.assertEqual(output, "compiler diagnostic\n[1, 2]\n")

    def test_windows_quarantine_still_rejects_unrelated_failures_after_json_rendering(self):
        repo = Path(__file__).resolve().parents[2]
        for extra in ("", "--- FAIL: TestRealFailure (0.01s)\n"):
            with self.subTest(extra=extra), tempfile.TemporaryDirectory() as temporary:
                root = Path(temporary)
                go = root / "go"
                go.write_text(f"#!{sys.executable}\nprint('github.com/xgo-dev/llgo')\n")
                go.chmod(0o755)
                diagnostic = (
                    "fatal error: receive on synctest channel from outside bubble\n"
                    "testing.(*T).Run\nFAIL github.com/xgo-dev/llgo/test/runtime 0.1s\n" + extra)
                event = json.dumps({"Action": "output", "Output": diagnostic})
                command = ["bash", str(repo / "dev/go_test_windows.sh"), sys.executable,
                           str(repo / ".github/scripts/run_go_tests.py"), "main", sys.executable,
                           "-c", f"import sys; print({event!r}); sys.exit(1)"]
                output = root / "outputs"
                output.touch()
                result = subprocess.run(command, cwd=root, capture_output=True, text=True,
                                        env={**os.environ, "PATH": str(root) + os.pathsep + os.environ["PATH"],
                                             "GITHUB_OUTPUT": str(output),
                                             "GITHUB_STEP_SUMMARY": str(root / "summary")})
                self.assertEqual(result.returncode, 1 if extra else 0, result.stderr)
                self.assertEqual("windows_runtime_corruption=true" in output.read_text(), not extra)


if __name__ == "__main__":
    unittest.main()
