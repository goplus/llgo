//go:build windows

package goroot

import (
	"fmt"
	"os"
	"os/exec"
	"syscall"
	"unsafe"

	"golang.org/x/sys/windows"
)

func configureProcessGroup(cmd *exec.Cmd) {
	cmd.SysProcAttr = &syscall.SysProcAttr{CreationFlags: windows.CREATE_NEW_PROCESS_GROUP}
}

type processTree struct {
	rootPID      uint32
	handle       windows.Handle
	creationTime int64
}

func newProcessTree(cmd *exec.Cmd) (*processTree, error) {
	rootPID := uint32(cmd.Process.Pid)
	handle, err := windows.OpenProcess(windows.PROCESS_QUERY_LIMITED_INFORMATION|windows.PROCESS_TERMINATE, false, rootPID)
	if err != nil {
		return nil, err
	}
	creationTime, err := windowsProcessCreationTime(handle)
	if err != nil {
		windows.CloseHandle(handle)
		return nil, err
	}
	// Keep the process object, and therefore its PID, alive until cleanup.
	// Cmd.Wait closes its own handle before we inspect remaining descendants.
	return &processTree{rootPID: rootPID, handle: handle, creationTime: creationTime}, nil
}

func (tree *processTree) close() {
	if tree.handle != 0 {
		_ = windows.CloseHandle(tree.handle)
		tree.handle = 0
	}
}

func (tree *processTree) snapshot(includeNames bool) (map[uint32]windowsProcessInfo, error) {
	if tree.handle == 0 {
		return nil, fmt.Errorf("process tree is closed")
	}
	processes, err := snapshotWindowsProcesses(includeNames)
	if err != nil {
		return nil, err
	}
	if root, ok := processes[tree.rootPID]; ok {
		if root.creationTime != tree.creationTime {
			return nil, fmt.Errorf("process %d identity changed", tree.rootPID)
		}
	} else {
		// Terminated roots are absent from the process table. The retained
		// handle still owns their PID, so real orphaned children can be found.
		processes[tree.rootPID] = windowsProcessInfo{creationTime: tree.creationTime}
	}
	return processes, nil
}

func (tree *processTree) kill() {
	if tree.handle == 0 {
		return
	}
	if processes, err := tree.snapshot(true); err == nil {
		pids := windowsProcessTree(tree.rootPID, processes)
		parents := make(map[uint32]bool, len(pids))
		for _, pid := range pids {
			parents[pid] = true
		}
		for pid, process := range processes {
			if parents[process.parentPID] && !parents[pid] {
				fmt.Fprintf(os.Stderr, "goroot cleanup ignored stale parent link: pid=%d name=%q parent=%d\n", pid, process.name, process.parentPID)
			}
		}
		for i := len(pids) - 1; i > 0; i-- {
			terminateWindowsProcess(pids[i], processes[pids[i]].creationTime)
		}
	}
	_ = windows.TerminateProcess(tree.handle, 1)
}

func resourceMonitoringSupported() bool { return true }

func (tree *processTree) rss() (uint64, error) {
	processes, err := tree.snapshot(false)
	if err != nil {
		return 0, err
	}
	var total uint64
	for _, pid := range windowsProcessTree(tree.rootPID, processes) {
		total += processes[pid].rss
	}
	return total, nil
}

func snapshotWindowsProcesses(includeNames bool) (map[uint32]windowsProcessInfo, error) {
	bufferSize := uint32(1 << 20)
	for {
		buffer := make([]byte, bufferSize)
		var required uint32
		err := windows.NtQuerySystemInformation(
			windows.SystemProcessInformation,
			unsafe.Pointer(&buffer[0]),
			uint32(len(buffer)),
			&required,
		)
		if err == windows.STATUS_INFO_LENGTH_MISMATCH {
			if required > bufferSize {
				bufferSize = required + 64<<10
			} else {
				bufferSize *= 2
			}
			continue
		}
		if err != nil {
			return nil, err
		}
		return parseWindowsProcessSnapshot(buffer, includeNames)
	}
}

func parseWindowsProcessSnapshot(buffer []byte, includeNames bool) (map[uint32]windowsProcessInfo, error) {
	processes := make(map[uint32]windowsProcessInfo)
	entrySize := uint32(unsafe.Sizeof(windows.SYSTEM_PROCESS_INFORMATION{}))
	for offset := uint32(0); ; {
		if offset > uint32(len(buffer)) || uint32(len(buffer))-offset < entrySize {
			return nil, fmt.Errorf("truncated Windows process snapshot at offset %d", offset)
		}
		entry := (*windows.SYSTEM_PROCESS_INFORMATION)(unsafe.Pointer(&buffer[offset]))
		pid := uint32(entry.UniqueProcessID)
		process := windowsProcessInfo{
			parentPID:    uint32(entry.InheritedFromUniqueProcessID),
			rss:          uint64(entry.WorkingSetSize),
			creationTime: entry.CreateTime,
		}
		if includeNames {
			process.name = entry.ImageName.String()
		}
		processes[pid] = process
		if entry.NextEntryOffset == 0 {
			return processes, nil
		}
		if entry.NextEntryOffset < entrySize || entry.NextEntryOffset > uint32(len(buffer))-offset {
			return nil, fmt.Errorf("invalid Windows process snapshot offset %d at %d", entry.NextEntryOffset, offset)
		}
		offset += entry.NextEntryOffset
	}
}

func windowsProcessCreationTime(handle windows.Handle) (int64, error) {
	// GetProcessTimes and SYSTEM_PROCESS_INFORMATION.CreateTime both use
	// FILETIME: 100-nanosecond intervals since January 1, 1601 (UTC).
	var created, exited, kernel, user windows.Filetime
	if err := windows.GetProcessTimes(handle, &created, &exited, &kernel, &user); err != nil {
		return 0, err
	}
	return int64(created.HighDateTime)<<32 | int64(created.LowDateTime), nil
}

func terminateWindowsProcess(pid uint32, creationTime int64) {
	handle, err := windows.OpenProcess(windows.PROCESS_QUERY_LIMITED_INFORMATION|windows.PROCESS_TERMINATE, false, pid)
	if err != nil {
		return
	}
	defer windows.CloseHandle(handle)
	// A descendant can exit and have its PID reused between the snapshot
	// and OpenProcess. Only terminate the exact process from the snapshot.
	if current, err := windowsProcessCreationTime(handle); err != nil || current != creationTime {
		return
	}
	_ = windows.TerminateProcess(handle, 1)
}
