package runtime

type funcMetadata struct {
	name string
	pc   uintptr
	file string
	line int
}

var funcMetadataList []funcMetadata

func normalizeFuncMetadataName(name string) string {
	for len(name) > 0 && name[0] == '_' {
		name = name[1:]
	}
	if hasPrefix(name, "llgo_stub.") {
		name = name[len("llgo_stub."):]
	}
	return replaceDoubleDots(name)
}

func RegisterFuncMetadata(name, file string, line int) {
	if name == "" || file == "" || line <= 0 {
		return
	}
	name = normalizeFuncMetadataName(name)
	for i := range funcMetadataList {
		if funcMetadataList[i].name == name {
			funcMetadataList[i].file = file
			funcMetadataList[i].line = line
			return
		}
	}
	funcMetadataList = append(funcMetadataList, funcMetadata{name: name, file: file, line: line})
}

func RegisterFuncMetadataPC(pc uintptr, file string, line int) {
	if pc == 0 || file == "" || line <= 0 {
		return
	}
	for i := range funcMetadataList {
		if funcMetadataList[i].pc == pc {
			funcMetadataList[i].file = file
			funcMetadataList[i].line = line
			return
		}
	}
	funcMetadataList = append(funcMetadataList, funcMetadata{pc: pc, file: file, line: line})
}

func LookupFuncMetadata(name string) (file string, line int, ok bool) {
	name = normalizeFuncMetadataName(name)
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
	n := len(s)
	for i := 0; i+1 < n; i++ {
		if s[i] == '.' && s[i+1] == '.' {
			buf := make([]byte, 0, n-1)
			for j := 0; j < n; {
				if j+1 < n && s[j] == '.' && s[j+1] == '.' {
					buf = append(buf, '.')
					j += 2
					continue
				}
				buf = append(buf, s[j])
				j++
			}
			return string(buf)
		}
	}
	return s
}
