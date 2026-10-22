//go:build windows

package goroot

import (
	"os"
	"os/exec"
	"testing"
	"time"

	"golang.org/x/sys/windows"
)

func TestWindowsProcessIdentityHelper(t *testing.T) {
	switch os.Getenv("LLGO_GOROOT_WINDOWS_PROCESS_HELPER") {
	case "exit":
		os.Exit(0)
	case "sleep":
		time.Sleep(time.Minute)
		os.Exit(0)
	}
}

func startWindowsIdentityHelper(t *testing.T, mode string) (*exec.Cmd, *processTree) {
	t.Helper()
	cmd := exec.Command(os.Args[0], "-test.run=^TestWindowsProcessIdentityHelper$")
	cmd.Env = append(os.Environ(), "LLGO_GOROOT_WINDOWS_PROCESS_HELPER="+mode)
	if err := cmd.Start(); err != nil {
		t.Fatal(err)
	}
	tree, err := newProcessTree(cmd)
	if err != nil {
		_ = cmd.Process.Kill()
		_ = cmd.Wait()
		t.Fatal(err)
	}
	t.Cleanup(func() {
		tree.kill()
		_ = cmd.Wait()
		tree.close()
	})
	return cmd, tree
}

func TestWindowsProcessIdentitySurvivesWait(t *testing.T) {
	guardTestTimeout(t)
	cmd, tree := startWindowsIdentityHelper(t, "exit")
	if err := cmd.Wait(); err != nil {
		t.Fatal(err)
	}
	created, err := windowsProcessCreationTime(tree.handle)
	if err != nil || created != tree.creationTime {
		t.Fatalf("identity after Wait = %d, %v; want %d", created, err, tree.creationTime)
	}
	if _, err := tree.rss(); err != nil {
		t.Fatalf("snapshot after Wait: %v", err)
	}
	tree.close()
	if _, err := tree.rss(); err == nil {
		t.Fatal("closed process tree still accepts snapshots")
	}
}

func TestWindowsProcessTerminationRejectsReusedPID(t *testing.T) {
	guardTestTimeout(t)
	cmd, tree := startWindowsIdentityHelper(t, "sleep")
	if rss, err := tree.rss(); err != nil || rss == 0 {
		t.Fatalf("live process RSS = %d, %v; want a valid matching snapshot", rss, err)
	}
	terminateWindowsProcess(tree.rootPID, tree.creationTime-1)
	var code uint32
	if err := windows.GetExitCodeProcess(tree.handle, &code); err != nil {
		t.Fatal(err)
	}
	const stillActive = 259 // STILL_ACTIVE from GetExitCodeProcess.
	if code != stillActive {
		t.Fatalf("process with a different identity was terminated: exit code %d", code)
	}
	terminateWindowsProcess(tree.rootPID, tree.creationTime)
	if err := cmd.Wait(); err == nil {
		t.Fatal("matching process identity was not terminated")
	}
}
