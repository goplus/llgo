package build

import "strings"

// nameResolver maps symbol names to aggregation buckets based on the requested level.
type nameResolver struct {
	level      string
	pkgs       []Package
	moduleMap  map[string]string
	packageMap map[string]string
}

func newNameResolver(level string, pkgs []Package) *nameResolver {
	lvl := strings.ToLower(strings.TrimSpace(level))
	if lvl == "" {
		lvl = "module"
	}
	return &nameResolver{
		level:      lvl,
		pkgs:       pkgs,
		moduleMap:  make(map[string]string),
		packageMap: make(map[string]string),
	}
}

func (r *nameResolver) resolve(sym string) string {
	base := moduleNameFromSymbol(sym)
	symbol := trimSymbolForMatch(sym)
	switch r.level {
	case "full":
		return base
	case "package":
		if pkg := r.matchPackage(symbol); pkg != "" {
			return pkg
		}
	case "module":
		if mod := r.matchModule(symbol); mod != "" {
			return mod
		}
	}
	if strings.Contains(symbol, "llgo") {
		return "llgo-stubs"
	}
	return base
}

func (r *nameResolver) matchPackage(symbol string) string {
	if symbol == "" {
		return ""
	}
	if cached := r.packageMap[symbol]; cached != "" {
		return cached
	}
	for _, pkg := range r.pkgs {
		if pkg == nil || pkg.Package == nil {
			continue
		}
		id := pkg.PkgPath
		if id == "" {
			continue
		}
		if strings.HasPrefix(symbol, id+".") {
			r.packageMap[symbol] = id
			return id
		}
	}
	return ""
}

func (r *nameResolver) matchModule(symbol string) string {
	if symbol == "" {
		return ""
	}
	if cached := r.moduleMap[symbol]; cached != "" {
		return cached
	}
	for _, pkg := range r.pkgs {
		if pkg == nil || pkg.Package == nil {
			continue
		}
		path := pkg.PkgPath
		if path == "" {
			continue
		}
		if strings.HasPrefix(symbol, path+".") {
			mod := path
			if pkg.Module != nil && pkg.Module.Path != "" {
				mod = pkg.Module.Path
			}
			r.moduleMap[symbol] = mod
			return mod
		}
	}
	return ""
}

func trimSymbolForMatch(sym string) string {
	name := strings.TrimSpace(sym)
	for len(name) > 0 && (name[0] == '_' || name[0] == '.') {
		name = name[1:]
	}
	if idx := strings.Index(name, " "); idx >= 0 {
		name = name[:idx]
	}
	if idx := strings.Index(name, "@"); idx >= 0 {
		name = name[:idx]
	}
	return name
}
