package goroot

import (
	"reflect"
	"sort"
	"testing"
)

type windowsProcessInfo struct {
	parentPID    uint32
	rss          uint64
	creationTime int64
	name         string
}

func windowsProcessTree(rootPID uint32, processes map[uint32]windowsProcessInfo) []uint32 {
	if _, ok := processes[rootPID]; !ok {
		return nil
	}
	children := make(map[uint32][]uint32)
	for pid, process := range processes {
		if pid != rootPID {
			children[process.parentPID] = append(children[process.parentPID], pid)
		}
	}
	for parentPID := range children {
		sort.Slice(children[parentPID], func(i, j int) bool {
			return children[parentPID][i] < children[parentPID][j]
		})
	}
	tree := []uint32{rootPID}
	seen := map[uint32]bool{rootPID: true}
	for i := 0; i < len(tree); i++ {
		for _, childPID := range children[tree[i]] {
			// Parent PIDs are historical identifiers. An older process cannot
			// be a child of the process that now owns its saved parent PID.
			if processes[childPID].creationTime < processes[tree[i]].creationTime {
				continue
			}
			if !seen[childPID] {
				seen[childPID] = true
				tree = append(tree, childPID)
			}
		}
	}
	return tree
}

func TestWindowsProcessTree(t *testing.T) {
	guardTestTimeout(t)
	processes := map[uint32]windowsProcessInfo{
		10: {parentPID: 1},
		11: {parentPID: 10},
		12: {parentPID: 10},
		13: {parentPID: 11},
		14: {parentPID: 99},
		15: {parentPID: 15},
	}
	got := windowsProcessTree(10, processes)
	want := []uint32{10, 11, 12, 13}
	if !reflect.DeepEqual(got, want) {
		t.Fatalf("windowsProcessTree() = %v, want %v", got, want)
	}
}

func TestWindowsProcessTreeRejectsReusedParentPID(t *testing.T) {
	processes := map[uint32]windowsProcessInfo{
		10: {parentPID: 1, creationTime: 100},
		11: {parentPID: 10, creationTime: 50, name: "Runner.Listener.exe"},
		12: {parentPID: 10, creationTime: 110},
		13: {parentPID: 11, creationTime: 120},
		14: {parentPID: 12, creationTime: 90},
		15: {parentPID: 12, creationTime: 130},
	}
	got := windowsProcessTree(10, processes)
	want := []uint32{10, 12, 15}
	if !reflect.DeepEqual(got, want) {
		t.Fatalf("windowsProcessTree() = %v, want %v; older processes are unrelated", got, want)
	}
}

func TestWindowsProcessTreeRequiresRootIdentity(t *testing.T) {
	processes := map[uint32]windowsProcessInfo{
		11: {parentPID: 10, creationTime: 50},
	}
	if got := windowsProcessTree(10, processes); len(got) != 0 {
		t.Fatalf("windowsProcessTree() = %v without a root identity, want empty", got)
	}
	// A retained root identity also distinguishes real orphaned descendants
	// from older processes after the root disappears from the snapshot.
	processes[10] = windowsProcessInfo{creationTime: 100}
	processes[12] = windowsProcessInfo{parentPID: 10, creationTime: 110}
	if got, want := windowsProcessTree(10, processes), []uint32{10, 12}; !reflect.DeepEqual(got, want) {
		t.Fatalf("retained-root tree = %v, want %v", got, want)
	}
}
