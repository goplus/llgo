package cl

import (
	"go/ast"
	"go/token"
	"go/types"
	"io/fs"
	"log"
	"os"
	"path"
	"path/filepath"
	"sort"
	"strconv"
	"strings"

	llssa "github.com/goplus/llgo/ssa"
	"golang.org/x/tools/go/ssa"
)

const (
	embedInitBytes = iota + 1
	embedInitFS
)

type embedFileData struct {
	name string
	data []byte
}

type embedVarData struct {
	files []embedFileData
}

type embedInit struct {
	globalName string
	kind       int
	bytes      []byte
	fsEntries  []embedFileData
}

func (p *context) loadEmbedDirectives(files []*ast.File) {
	if len(files) == 0 {
		return
	}
	byVar := make(map[string]embedVarData)
	for _, file := range files {
		fileName := p.fset.PositionFor(file.Pos(), false).Filename
		if fileName == "" {
			continue
		}
		pkgDir := filepath.Dir(fileName)
		for _, decl := range file.Decls {
			gen, ok := decl.(*ast.GenDecl)
			if !ok || gen.Tok != token.VAR || len(gen.Specs) != 1 {
				continue
			}
			spec, ok := gen.Specs[0].(*ast.ValueSpec)
			if !ok || len(spec.Names) != 1 {
				continue
			}
			patterns := parseEmbedPatterns(gen.Doc, spec.Doc)
			if len(patterns) == 0 {
				continue
			}
			files, err := resolveEmbedPatterns(pkgDir, patterns)
			if err != nil {
				log.Printf("warning: parse //go:embed for %s failed: %v", spec.Names[0].Name, err)
				continue
			}
			byVar[spec.Names[0].Name] = embedVarData{files: files}
		}
	}
	p.embedMap = byVar
}

func parseEmbedPatterns(docs ...*ast.CommentGroup) []string {
	var patterns []string
	for _, doc := range docs {
		if doc == nil {
			continue
		}
		for _, c := range doc.List {
			if c == nil {
				continue
			}
			line := strings.TrimSpace(strings.TrimPrefix(c.Text, "//"))
			if !strings.HasPrefix(line, "go:embed") {
				continue
			}
			args := strings.TrimSpace(strings.TrimPrefix(line, "go:embed"))
			if args == "" {
				continue
			}
			for _, f := range splitEmbedArgs(args) {
				if uq, err := strconv.Unquote(f); err == nil {
					patterns = append(patterns, uq)
				} else {
					patterns = append(patterns, f)
				}
			}
		}
	}
	return patterns
}

func splitEmbedArgs(s string) []string {
	var out []string
	for i := 0; i < len(s); {
		for i < len(s) && (s[i] == ' ' || s[i] == '\t') {
			i++
		}
		if i >= len(s) {
			break
		}
		start := i
		if s[i] == '"' || s[i] == '`' {
			quote := s[i]
			i++
			for i < len(s) {
				if s[i] == quote {
					i++
					break
				}
				if quote == '"' && s[i] == '\\' && i+1 < len(s) {
					i += 2
					continue
				}
				i++
			}
			out = append(out, s[start:i])
			continue
		}
		for i < len(s) && s[i] != ' ' && s[i] != '\t' {
			i++
		}
		out = append(out, s[start:i])
	}
	return out
}

func resolveEmbedPatterns(pkgDir string, patterns []string) ([]embedFileData, error) {
	seen := make(map[string][]byte)

	addFile := func(abs string) error {
		info, err := os.Stat(abs)
		if err != nil {
			return err
		}
		if info.IsDir() || !info.Mode().IsRegular() {
			return nil
		}
		rel, err := filepath.Rel(pkgDir, abs)
		if err != nil {
			return err
		}
		rel = filepath.ToSlash(rel)
		if strings.HasPrefix(rel, "../") || rel == ".." {
			return nil
		}
		data, err := os.ReadFile(abs)
		if err != nil {
			return err
		}
		seen[rel] = data
		return nil
	}

	for _, pat := range patterns {
		all := false
		if strings.HasPrefix(pat, "all:") {
			all = true
			pat = strings.TrimPrefix(pat, "all:")
		}
		abs := filepath.Join(pkgDir, filepath.FromSlash(pat))
		if hasGlobMeta(pat) {
			matches, err := filepath.Glob(abs)
			if err != nil {
				return nil, err
			}
			for _, m := range matches {
				if err := addEmbedPath(pkgDir, m, all, addFile); err != nil {
					return nil, err
				}
			}
			continue
		}
		if err := addEmbedPath(pkgDir, abs, all, addFile); err != nil {
			return nil, err
		}
	}

	names := make([]string, 0, len(seen))
	for name := range seen {
		names = append(names, name)
	}
	sort.Strings(names)
	out := make([]embedFileData, 0, len(names))
	for _, name := range names {
		out = append(out, embedFileData{name: name, data: seen[name]})
	}
	return out, nil
}

func hasGlobMeta(pat string) bool {
	return strings.ContainsAny(pat, "*?[")
}

func addEmbedPath(pkgDir, abs string, all bool, addFile func(abs string) error) error {
	info, err := os.Stat(abs)
	if err != nil {
		return err
	}
	if !info.IsDir() {
		return addFile(abs)
	}
	return filepath.WalkDir(abs, func(cur string, d fs.DirEntry, err error) error {
		if err != nil {
			return err
		}
		if cur == abs {
			return nil
		}
		rel, err := filepath.Rel(pkgDir, cur)
		if err != nil {
			return err
		}
		rel = filepath.ToSlash(rel)
		base := path.Base(rel)
		if !all && (strings.HasPrefix(base, ".") || strings.HasPrefix(base, "_")) {
			if d.IsDir() {
				return filepath.SkipDir
			}
			return nil
		}
		if d.IsDir() {
			return nil
		}
		return addFile(cur)
	})
}

func isStringType(t types.Type) bool {
	b, ok := t.Underlying().(*types.Basic)
	return ok && b.Kind() == types.String
}

func isByteSliceType(t types.Type) bool {
	s, ok := t.Underlying().(*types.Slice)
	if !ok {
		return false
	}
	b, ok := types.Unalias(s.Elem()).Underlying().(*types.Basic)
	return ok && (b.Kind() == types.Byte || b.Kind() == types.Uint8)
}

func isEmbedFSType(t types.Type) bool {
	n, ok := types.Unalias(t).(*types.Named)
	if !ok {
		return false
	}
	obj := n.Obj()
	if obj == nil || obj.Pkg() == nil {
		return false
	}
	return obj.Pkg().Path() == "embed" && obj.Name() == "FS"
}

func buildEmbedFSEntries(files []embedFileData) []embedFileData {
	entries := make(map[string][]byte)
	for _, f := range files {
		entries[f.name] = append([]byte(nil), f.data...)
		dir := path.Dir(f.name)
		for dir != "." && dir != "/" {
			entries[dir+"/"] = nil
			dir = path.Dir(dir)
		}
	}
	out := make([]embedFileData, 0, len(entries))
	for name, data := range entries {
		out = append(out, embedFileData{name: name, data: data})
	}
	sort.Slice(out, func(i, j int) bool {
		di, ei := embedSplit(out[i].name)
		dj, ej := embedSplit(out[j].name)
		if di != dj {
			return di < dj
		}
		return ei < ej
	})
	return out
}

func embedSplit(name string) (dir, elem string) {
	name = strings.TrimSuffix(name, "/")
	if idx := strings.LastIndexByte(name, '/'); idx >= 0 {
		return name[:idx], name[idx+1:]
	}
	return ".", name
}

func (p *context) tryEmbedGlobalInit(pkg llssa.Package, gbl *ssa.Global, g llssa.Global, globalName string) bool {
	if len(p.embedMap) == 0 {
		return false
	}
	info, ok := p.embedMap[gbl.Name()]
	if !ok || len(info.files) == 0 {
		return false
	}
	ptr, ok := types.Unalias(gbl.Type()).(*types.Pointer)
	if !ok {
		return false
	}
	elem := types.Unalias(ptr.Elem())
	switch {
	case isStringType(elem):
		if len(info.files) != 1 {
			panic("//go:embed string variable must resolve to one file")
		}
		g.Init(pkg.ConstString(string(info.files[0].data)))
		return true
	case isByteSliceType(elem):
		if len(info.files) != 1 {
			panic("//go:embed []byte variable must resolve to one file")
		}
		p.embedInits = append(p.embedInits, embedInit{
			globalName: globalName,
			kind:       embedInitBytes,
			bytes:      append([]byte(nil), info.files[0].data...),
		})
		return false
	case isEmbedFSType(elem):
		p.embedInits = append(p.embedInits, embedInit{
			globalName: globalName,
			kind:       embedInitFS,
			fsEntries:  buildEmbedFSEntries(info.files),
		})
		return false
	default:
		return false
	}
}

func (p *context) applyEmbedInits(b llssa.Builder) {
	if len(p.embedInits) == 0 {
		return
	}
	sort.Slice(p.embedInits, func(i, j int) bool {
		return p.embedInits[i].globalName < p.embedInits[j].globalName
	})
	inits := p.embedInits
	p.embedInits = nil
	for _, it := range inits {
		g := p.pkg.VarOf(it.globalName)
		if g == nil {
			continue
		}
		switch it.kind {
		case embedInitBytes:
			p.applyEmbedBytesInit(b, g, it.bytes)
		case embedInitFS:
			p.applyEmbedFSInit(b, g, it.fsEntries)
		}
	}
}

func (p *context) applyEmbedBytesInit(b llssa.Builder, g llssa.Global, data []byte) {
	sliceType := p.prog.Slice(p.prog.Byte())
	var ret llssa.Expr
	if len(data) == 0 {
		ret = p.prog.Zero(sliceType)
	} else {
		elts := make([]llssa.Expr, len(data))
		for i, v := range data {
			elts[i] = p.prog.IntVal(uint64(v), p.prog.Byte())
		}
		ret = b.SliceLit(sliceType, elts...)
	}
	b.Store(g.Expr, ret)
}

func (p *context) applyEmbedFSInit(b llssa.Builder, g llssa.Global, entries []embedFileData) {
	ptr, ok := g.Expr.Type.RawType().(*types.Pointer)
	if !ok {
		return
	}
	fsTyp := types.Unalias(ptr.Elem())
	fsStruct, ok := fsTyp.Underlying().(*types.Struct)
	if !ok || fsStruct.NumFields() == 0 {
		return
	}
	filesPtr, ok := types.Unalias(fsStruct.Field(0).Type()).(*types.Pointer)
	if !ok {
		return
	}
	filesSlice, ok := types.Unalias(filesPtr.Elem()).(*types.Slice)
	if !ok {
		return
	}
	fileTyp := filesSlice.Elem()
	llFileTyp := p.type_(fileTyp, llssa.InGo)
	llFilesSliceTyp := p.prog.Slice(llFileTyp)

	n := p.prog.IntVal(uint64(len(entries)), p.prog.Int())
	files := b.MakeSlice(llFilesSliceTyp, n, n)
	for i, entry := range entries {
		idx := p.prog.IntVal(uint64(i), p.prog.Int())
		elemPtr := b.IndexAddr(files, idx)
		b.Store(b.FieldAddr(elemPtr, 0), b.Str(entry.name))
		b.Store(b.FieldAddr(elemPtr, 1), b.Str(string(entry.data)))
	}

	filesPtrVal := b.Alloc(llFilesSliceTyp, true)
	b.Store(filesPtrVal, files)
	b.Store(b.FieldAddr(g.Expr, 0), filesPtrVal)
}
