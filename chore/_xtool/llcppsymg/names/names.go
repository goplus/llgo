package names

import (
	"strings"
)

func GoName(name string, trimPrefixes []string, inCurPkg bool) string {
	if inCurPkg {
		name = removePrefixedName(name, trimPrefixes)
	}
	return pubName(name)
}

func removePrefixedName(name string, trimPrefixes []string) string {
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

func pubName(name string) string {
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
