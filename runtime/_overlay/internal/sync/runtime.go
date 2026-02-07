package sync

import _ "unsafe"

//go:linkname runtime_canSpin runtime.runtime_canSpin
func runtime_canSpin(i int) bool

//go:linkname runtime_doSpin runtime.runtime_doSpin
func runtime_doSpin()

//go:linkname throw runtime.throw
func throw(string)

//go:linkname fatal runtime.fatal
func fatal(string)

//go:linkname runtime_nanotime runtime.runtime_nanotime
func runtime_nanotime() int64

//go:linkname runtime_SemacquireMutex runtime.runtime_SemacquireMutex
func runtime_SemacquireMutex(s *uint32, lifo bool, skipframes int)

//go:linkname runtime_Semrelease runtime.runtime_Semrelease
func runtime_Semrelease(s *uint32, handoff bool, skipframes int)
