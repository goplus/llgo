package runtime

type funcMetadata struct {
	file string
	line int
}

var funcMetadataMap map[string]funcMetadata
var funcMetadataPC map[uintptr]funcMetadata

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
	if funcMetadataMap == nil {
		funcMetadataMap = make(map[string]funcMetadata)
	}
	funcMetadataMap[normalizeFuncMetadataName(name)] = funcMetadata{file: file, line: line}
}

func RegisterFuncMetadataPC(pc uintptr, file string, line int) {
	if pc == 0 || file == "" || line <= 0 {
		return
	}
	if funcMetadataPC == nil {
		funcMetadataPC = make(map[uintptr]funcMetadata)
	}
	funcMetadataPC[pc] = funcMetadata{file: file, line: line}
}

func LookupFuncMetadata(name string) (file string, line int, ok bool) {
	if funcMetadataMap == nil {
		return "", 0, false
	}
	name = normalizeFuncMetadataName(name)
	meta, ok := funcMetadataMap[name]
	if !ok {
		var matched funcMetadata
		var found bool
		for key, value := range funcMetadataMap {
			if hasDotSuffix(key, name) {
				if found {
					return "", 0, false
				}
				matched = value
				found = true
			}
		}
		if !found {
			return "", 0, false
		}
		meta = matched
	}
	return meta.file, meta.line, true
}

func LookupFuncMetadataPC(pc uintptr) (file string, line int, ok bool) {
	if funcMetadataPC == nil {
		return "", 0, false
	}
	meta, ok := funcMetadataPC[pc]
	if !ok {
		return "", 0, false
	}
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
