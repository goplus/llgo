package parse

import (
	"path/filepath"
	"strings"
)

func ToGoName(name string, trimPrefixes []string, inCurPkg bool) string {
	name = strings.TrimPrefix(name, "struct ")
	if inCurPkg {
		return RemovePrefixedName(name, trimPrefixes)
	}
	return CPubName(name)
}

func RemovePrefixedName(name string, trimPrefixes []string) string {
	if len(trimPrefixes) == 0 {
		return name
	}
	for _, prefix := range trimPrefixes {
		if strings.HasPrefix(name, prefix) {
			return strings.TrimPrefix(name, prefix)
		}
	}
	return name
}

func CPubName(name string) string {
	if len(name) == 0 {
		return name
	}
	toCamelCase := func(s string) string {
		parts := strings.Split(s, "_")
		for i := 0; i < len(parts); i++ {
			if len(parts[i]) > 0 {
				parts[i] = strings.ToUpper(parts[i][:1]) + parts[i][1:]
			}
		}
		return strings.Join(parts, "")
	}
	if name[0] == '_' {
		i := 0
		for i < len(name) && name[i] == '_' {
			i++
		}
		prefix := name[:i]
		return "X" + prefix + toCamelCase(name[i:])
	}
	return toCamelCase(name)
}

// /path/to/foo.h -> foo.go
// /path/to/_intptr.h -> X_intptr.go
func HeaderFileToGo(incPath string) string {
	_, fileName := filepath.Split(incPath)
	ext := filepath.Ext(fileName)
	if len(ext) > 0 {
		fileName = strings.TrimSuffix(fileName, ext)
	}
	if strings.HasPrefix(fileName, "_") {
		fileName = "X" + fileName
	}
	return fileName + ".go"
}

func ToTitle(s string) string {
	if s == "" {
		return ""
	}
	return strings.ToUpper(s[:1]) + (s[1:])
}

func ToUpperCamelCase(originName string) string {
	if originName == "" {
		return ""
	}
	subs := strings.Split(string(originName), "_")
	name := ""
	for _, sub := range subs {
		name += ToTitle(sub)
	}
	return name
}
