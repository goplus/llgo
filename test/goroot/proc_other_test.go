//go:build !unix && !windows

package goroot

import "os/exec"

func configureProcessGroup(cmd *exec.Cmd) {}

type processTree struct {
	cmd *exec.Cmd
}

func newProcessTree(cmd *exec.Cmd) (*processTree, error) {
	return &processTree{cmd: cmd}, nil
}

func (tree *processTree) close() {}

func (tree *processTree) rss() (uint64, error) { return 0, nil }

func (tree *processTree) kill() {
	cmd := tree.cmd
	if cmd.Process == nil {
		return
	}
	_ = cmd.Process.Kill()
}

func resourceMonitoringSupported() bool { return false }
