"""Exercise the release downloader against a local, replaceable asset server."""

import hashlib
import json
import os
from pathlib import Path
import shutil
import subprocess
import tarfile
import tempfile
import unittest


SCRIPT = Path(__file__).resolve().parents[1] / "workflows/download_darwin_lld.sh"


class DarwinLLDDownloadTests(unittest.TestCase):
    def setUp(self):
        temp = tempfile.TemporaryDirectory()
        self.addCleanup(temp.cleanup)
        self.root = Path(temp.name)
        self.metadata = self.root / ".github/lld"
        self.metadata.mkdir(parents=True)
        self.script = self.root / ".github/workflows/download_darwin_lld.sh"
        self.script.parent.mkdir()
        shutil.copyfile(SCRIPT, self.script)
        # A different version ensures validation follows the version pin.
        self.version = "99.1.2-llgo.3"
        self.stem = f"lld-{self.version}-darwin-arm64"
        self.filename = self.stem + ".tar.gz"
        self.asset = self.root / self.filename
        (self.metadata / "version.txt").write_text(self.version + "\n")
        (self.metadata / "source-commit.txt").write_text("a" * 40 + "\n")
        self.payload = self.root / "payload"
        (self.payload / "bin").mkdir(parents=True)
        (self.payload / "bin/ld64.lld").write_text("test linker\n")
        for name in ("LICENSE-LLVM.txt", "LICENSE-LLD.txt"):
            (self.payload / name).write_text("test license\n")
        self.manifest = {
            "version": self.version, "llvm_version": "99.1.2",
            "architecture": "arm64", "source_commit": "a" * 40,
            "source_repository": "https://github.com/xgo-dev/llvm-project",
        }
        self.publish()
        self.pin()
        tools = self.root / "tools"
        tools.mkdir()
        curl = tools / "curl"
        curl.write_text('''#!/usr/bin/env bash
set -euo pipefail
url="${@: -3:1}"
printf '%s\\n' "$url" >> "$TEST_REQUESTS"
case "$url" in
  */SHA256SUMS) cp "$TEST_REMOTE_SUMS" "${@: -1}" ;;
  *) cp "$TEST_ASSET" "${@: -1}" ;;
esac
''')
        curl.chmod(0o755)
        self.env = dict(os.environ, PATH=str(tools) + os.pathsep + os.environ["PATH"],
                        TEST_ASSET=str(self.asset), TEST_REQUESTS=str(self.root / "requests"),
                        TEST_REMOTE_SUMS=str(self.root / "remote-SHA256SUMS"))

    def publish(self):
        (self.payload / "manifest.json").write_text(json.dumps(self.manifest))
        with tarfile.open(self.asset, "w:gz") as archive:
            archive.add(self.payload, arcname=self.stem)
        digest = hashlib.sha256(self.asset.read_bytes()).hexdigest()
        (self.root / "remote-SHA256SUMS").write_text(f"{digest}  {self.filename}\n")

    def pin(self):
        shutil.copyfile(self.root / "remote-SHA256SUMS", self.metadata / "SHA256SUMS")

    def download(self):
        return subprocess.run(["bash", str(self.script)], env=self.env,
                              capture_output=True, text=True, timeout=30)

    def test_pinned_archive_and_updated_version(self):
        result = self.download()
        self.assertEqual(result.returncode, 0, result.stdout + result.stderr)
        linker = self.root / ".sysroot/darwin/arm64/libexec/llgo/ld64.lld"
        self.assertEqual(linker.read_text(), "test linker\n")
        self.assertTrue(os.access(linker, os.X_OK))
        self.assertNotIn("SHA256SUMS", (self.root / "requests").read_text())

    def test_replaced_archive_and_remote_checksum_are_rejected(self):
        (self.payload / "bin/ld64.lld").write_text("replaced linker\n")
        self.publish()  # Replace both remote assets, preserving the pinned manifest.
        result = self.download()
        self.assertNotEqual(result.returncode, 0)
        self.assertIn("FAILED", result.stdout + result.stderr)
        self.assertFalse((self.root / ".sysroot/darwin/arm64/libexec/llgo/ld64.lld").exists())

    def test_pinned_archive_with_wrong_source_is_rejected(self):
        self.manifest["source_commit"] = "b" * 40
        self.publish()
        self.pin()
        result = self.download()
        self.assertNotEqual(result.returncode, 0)
        self.assertIn("AssertionError", result.stderr)


if __name__ == "__main__":
    unittest.main()
