//go:build darwin

package runtime

import "unsafe"

// Minimal cleanup stubs to satisfy references from os.Process cleanup paths.

type funcval struct {
	fn uintptr
}

type _type struct{}

type mspan struct{}

type cleanupQueue struct{}

func (cleanupQueue) needG() bool { return false }
func (cleanupQueue) createGs()   {}

var gcCleanups cleanupQueue

func addCleanup(_ unsafe.Pointer, _ *funcval) uint64 { return 0 }

func setCleanupContext(_ unsafe.Pointer, _ *_type, _, _ uintptr, _ uint64) {}

func inUserArenaChunk(_ uintptr) bool { return false }

func findObject(_, _, _ uintptr) (base uintptr, s *mspan, objIndex uintptr) {
	return 0, nil, 0
}

func isGoPointerWithoutSpan(_ unsafe.Pointer) bool { return false }

// debug is referenced by AddCleanup in the standard library runtime.
var debug struct {
	sbrk            int32
	checkfinalizers int32
}
