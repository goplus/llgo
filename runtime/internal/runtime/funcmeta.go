package runtime

import "strings"

type funcMetadata struct {
	file string
	line int
}

var funcMetadataMap map[string]funcMetadata
var funcMetadataPC map[uintptr]funcMetadata

func normalizeFuncMetadataName(name string) string {
	name = strings.TrimLeft(name, "_")
	name = strings.TrimPrefix(name, "llgo_stub.")
	if idx := strings.Index(name, ".."); idx >= 0 {
		name = strings.ReplaceAll(name, "..", ".")
	}
	return name
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
			if strings.HasSuffix(key, "."+name) {
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
