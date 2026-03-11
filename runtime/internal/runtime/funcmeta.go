package runtime

import catomic "github.com/goplus/llgo/runtime/internal/clite/sync/atomic"

type funcMetadata struct {
	name string
	pc   uintptr
	file string
	line int
}

var funcMetadataList []funcMetadata
var funcMetadataMu uint32

func lockFuncMetadata() {
	for !funcMetadataLockTry() {
	}
}

func funcMetadataLockTry() bool {
	_, ok := catomic.CompareAndExchange(&funcMetadataMu, uint32(0), uint32(1))
	return ok
}

func unlockFuncMetadata() {
	catomic.Store(&funcMetadataMu, uint32(0))
}

func normalizeFuncMetadataName(name string) string {
	for len(name) > 0 && name[0] == '_' {
		name = name[1:]
	}
	if hasPrefix(name, "llgo_stub.") {
		name = name[len("llgo_stub."):]
	}
	return replaceDoubleDots(name)
}

func registerFuncMetadataLocked(pc uintptr, name, file string, line int) {
	name = normalizeFuncMetadataName(name)
	nameIdx := -1
	pcIdx := -1
	for i := range funcMetadataList {
		meta := &funcMetadataList[i]
		if name != "" && meta.name == name {
			nameIdx = i
		}
		if pc != 0 && meta.pc == pc {
			pcIdx = i
		}
	}
	if nameIdx >= 0 {
		meta := &funcMetadataList[nameIdx]
		if pc != 0 {
			meta.pc = pc
		}
		if name != "" {
			meta.name = name
		}
		meta.file = file
		meta.line = line
		if pcIdx >= 0 && pcIdx != nameIdx {
			funcMetadataList = append(funcMetadataList[:pcIdx], funcMetadataList[pcIdx+1:]...)
		}
		return
	}
	if pcIdx >= 0 {
		meta := &funcMetadataList[pcIdx]
		if name != "" {
			meta.name = name
		}
		meta.file = file
		meta.line = line
		return
	}
	funcMetadataList = append(funcMetadataList, funcMetadata{pc: pc, name: name, file: file, line: line})
}

func RegisterFuncMetadataFull(pc uintptr, name, file string, line int) {
	if file == "" || line <= 0 || (pc == 0 && name == "") {
		return
	}
	lockFuncMetadata()
	defer unlockFuncMetadata()
	registerFuncMetadataLocked(pc, name, file, line)
}

func RegisterFuncMetadata(name, file string, line int) {
	if name == "" || file == "" || line <= 0 {
		return
	}
	lockFuncMetadata()
	defer unlockFuncMetadata()
	registerFuncMetadataLocked(0, name, file, line)
}

func RegisterFuncMetadataPC(pc uintptr, file string, line int) {
	if pc == 0 || file == "" || line <= 0 {
		return
	}
	lockFuncMetadata()
	defer unlockFuncMetadata()
	registerFuncMetadataLocked(pc, "", file, line)
}

func LookupFuncMetadata(name string) (file string, line int, ok bool) {
	name = normalizeFuncMetadataName(name)
	lockFuncMetadata()
	defer unlockFuncMetadata()
	for i := range funcMetadataList {
		meta := &funcMetadataList[i]
		if meta.name == name {
			return meta.file, meta.line, true
		}
	}
	idx := -1
	for i := range funcMetadataList {
		meta := &funcMetadataList[i]
		if hasDotSuffix(meta.name, name) {
			if idx >= 0 {
				return "", 0, false
			}
			idx = i
		}
	}
	if idx < 0 {
		return "", 0, false
	}
	meta := &funcMetadataList[idx]
	return meta.file, meta.line, true
}

func LookupFuncMetadataPC(pc uintptr) (file string, line int, ok bool) {
	if pc == 0 {
		return "", 0, false
	}
	lockFuncMetadata()
	defer unlockFuncMetadata()
	best := -1
	for i := range funcMetadataList {
		meta := &funcMetadataList[i]
		if meta.pc == 0 {
			continue
		}
		if meta.pc == pc {
			return meta.file, meta.line, true
		}
		if meta.pc < pc && (best < 0 || funcMetadataList[best].pc < meta.pc) {
			best = i
		}
	}
	if best < 0 {
		return "", 0, false
	}
	// Without function size information, the best lower PC is only a heuristic.
	// It is used as a last-resort fallback when the exact PC was not registered.
	meta := &funcMetadataList[best]
	return meta.file, meta.line, true
}

func hasPrefix(s, prefix string) bool {
	if len(s) < len(prefix) {
		return false
	}
	return s[:len(prefix)] == prefix
}

func hasDotSuffix(s, suffix string) bool {
	if len(s) <= len(suffix) {
		return false
	}
	if s[len(s)-len(suffix)-1] != '.' {
		return false
	}
	return s[len(s)-len(suffix):] == suffix
}

func replaceDoubleDots(s string) string {
	var buf []byte
	last := 0
	for i := 0; i+1 < len(s); i++ {
		if s[i] == '.' && s[i+1] == '.' {
			if buf == nil {
				buf = make([]byte, 0, len(s)-1)
			}
			buf = append(buf, s[last:i]...)
			buf = append(buf, '.')
			i++
			last = i + 1
		}
	}
	if buf == nil {
		return s
	}
	buf = append(buf, s[last:]...)
	return string(buf)
}
