package cl

import (
	"fmt"
	"go/ast"
	"go/token"
	"go/types"
	"io/fs"
	"os"
	"path"
	"path/filepath"
	"sort"
	"strconv"
	"strings"

	llssa "github.com/goplus/llgo/ssa"
	"golang.org/x/mod/module"
	"golang.org/x/tools/go/ssa"
)

const (
	embedInitFS = iota + 1
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
		hasEmbedImport := fileImportsEmbed(file)
		for _, decl := range file.Decls {
			gen, ok := decl.(*ast.GenDecl)
			if !ok || gen.Tok != token.VAR {
				continue
			}
			if len(gen.Specs) > 1 {
				if _, hasDirective, _ := parseEmbedPatterns(gen.Doc); hasDirective {
					pos := p.fset.PositionFor(gen.Doc.Pos(), false)
					panic(fmt.Sprintf("%s: misplaced go:embed directive", pos))
				}
			}
			for _, spec0 := range gen.Specs {
				spec, ok := spec0.(*ast.ValueSpec)
				if !ok {
					continue
				}
				docs := []*ast.CommentGroup{spec.Doc}
				if len(gen.Specs) == 1 {
					docs = append([]*ast.CommentGroup{gen.Doc}, docs...)
				}
				patterns, hasDirective, err := parseEmbedPatterns(docs...)
				if err != nil {
					pos := p.fset.PositionFor(spec.Pos(), false)
					panic(fmt.Sprintf("%s: %v", pos, err))
				}
				if !hasDirective {
					continue
				}
				if len(spec.Names) != 1 {
					pos := p.fset.PositionFor(spec.Pos(), false)
					panic(fmt.Sprintf("%s: go:embed cannot apply to multiple vars", pos))
				}
				if !hasEmbedImport {
					pos := p.fset.PositionFor(spec.Pos(), false)
					panic(fmt.Sprintf("%s: go:embed only allowed in Go files that import \"embed\"", pos))
				}
				resolvedFiles, err := resolveEmbedPatterns(pkgDir, patterns)
				if err != nil {
					pos := p.fset.PositionFor(spec.Pos(), false)
					panic(fmt.Sprintf("%s: %v", pos, err))
				}
				byVar[spec.Names[0].Name] = embedVarData{files: resolvedFiles}
			}
		}
	}
	p.embedMap = byVar
}

func fileImportsEmbed(file *ast.File) bool {
	for _, imp := range file.Imports {
		if imp == nil || imp.Path == nil {
			continue
		}
		path, err := strconv.Unquote(imp.Path.Value)
		if err == nil && path == "embed" {
			return true
		}
	}
	return false
}

func parseEmbedPatterns(docs ...*ast.CommentGroup) (patterns []string, hasDirective bool, err error) {
	for _, doc := range docs {
		if doc == nil {
			continue
		}
		for _, c := range doc.List {
			if c == nil {
				continue
			}
			line := strings.TrimSpace(strings.TrimPrefix(c.Text, "//"))
			args, ok := parseEmbedDirective(line)
			if !ok {
				continue
			}
			hasDirective = true
			if args == "" {
				return nil, hasDirective, fmt.Errorf("invalid //go:embed: missing pattern")
			}
			fields, err := splitEmbedArgs(args)
			if err != nil {
				return nil, hasDirective, err
			}
			for _, f := range fields {
				if uq, err := strconv.Unquote(f); err == nil {
					patterns = append(patterns, uq)
				} else {
					if len(f) > 0 && (f[0] == '"' || f[0] == '`') {
						return nil, hasDirective, fmt.Errorf("invalid //go:embed quoted pattern %q", f)
					}
					patterns = append(patterns, f)
				}
			}
		}
	}
	return patterns, hasDirective, nil
}

func parseEmbedDirective(line string) (args string, ok bool) {
	if !strings.HasPrefix(line, "go:embed") {
		return "", false
	}
	if len(line) == len("go:embed") {
		return "", true
	}
	ch := line[len("go:embed")]
	if ch != ' ' && ch != '\t' {
		return "", false
	}
	return strings.TrimSpace(line[len("go:embed"):]), true
}

func splitEmbedArgs(s string) ([]string, error) {
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
			closed := false
			for i < len(s) {
				if s[i] == quote {
					i++
					closed = true
					break
				}
				if quote == '"' && s[i] == '\\' && i+1 < len(s) {
					i += 2
					continue
				}
				i++
			}
			if !closed {
				return nil, fmt.Errorf("invalid //go:embed quoted pattern")
			}
			out = append(out, s[start:i])
			continue
		}
		for i < len(s) && s[i] != ' ' && s[i] != '\t' {
			i++
		}
		out = append(out, s[start:i])
	}
	return out, nil
}

func resolveEmbedPatterns(pkgDir string, patterns []string) ([]embedFileData, error) {
	var pat string

	wrapErr := func(err error) error {
		return fmt.Errorf("pattern %s: %w", pat, err)
	}

	seen := make(map[string][]byte)
	have := make(map[string]int)
	dirOK := make(map[string]bool)
	pid := 0

	addFile := func(abs, rel string) error {
		if _, ok := seen[rel]; ok {
			return nil
		}
		data, err := os.ReadFile(abs)
		if err != nil {
			return err
		}
		seen[rel] = data
		return nil
	}

	for _, pat = range patterns {
		pid++
		all := false
		if strings.HasPrefix(pat, "all:") {
			all = true
			pat = strings.TrimPrefix(pat, "all:")
		}
		if _, err := path.Match(pat, ""); err != nil || !validEmbedPattern(pat) {
			return nil, wrapErr(fmt.Errorf("invalid pattern syntax"))
		}

		absPattern := filepath.Join(pkgDir, filepath.FromSlash(pat))
		matches, _ := filepath.Glob(absPattern)

		listCount := 0
		for _, m := range matches {
			info, rel, err := checkEmbedPath(pkgDir, m, dirOK)
			if err != nil {
				return nil, wrapErr(err)
			}
			what := "file"
			if info.IsDir() {
				what = "directory"
			}
			switch {
			case info.Mode().IsRegular():
				if have[rel] != pid {
					have[rel] = pid
					listCount++
				}
				if err := addFile(m, rel); err != nil {
					return nil, wrapErr(err)
				}
			case info.IsDir():
				count := 0
				err := filepath.WalkDir(m, func(cur string, d fs.DirEntry, walkErr error) error {
					if walkErr != nil {
						return walkErr
					}
					rel, _ := embedRelPath(pkgDir, cur)
					name := d.Name()
					if cur != m && (isBadEmbedName(name) || ((name[0] == '.' || name[0] == '_') && !all)) {
						if d.IsDir() {
							return filepath.SkipDir
						}
						return nil
					}
					if d.IsDir() {
						if _, err := os.Stat(filepath.Join(cur, "go.mod")); err == nil {
							return filepath.SkipDir
						}
						return nil
					}
					if !d.Type().IsRegular() {
						return nil
					}
					count++
					if have[rel] != pid {
						have[rel] = pid
						listCount++
					}
					return addFile(cur, rel)
				})
				if err != nil {
					return nil, wrapErr(err)
				}
				if count == 0 {
					return nil, wrapErr(fmt.Errorf("cannot embed directory %s: contains no embeddable files", rel))
				}
			default:
				return nil, wrapErr(fmt.Errorf("cannot embed irregular %s %s", what, rel))
			}
		}
		if listCount == 0 {
			return nil, wrapErr(fmt.Errorf("no matching files found"))
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

func validEmbedPattern(pattern string) bool {
	return pattern != "." && fs.ValidPath(pattern)
}

func embedRelPath(pkgDir, abs string) (string, error) {
	rel, _ := filepath.Rel(pkgDir, abs)
	if rel == ".." || strings.HasPrefix(rel, ".."+string(filepath.Separator)) {
		return "", fmt.Errorf("path %s is outside package directory", abs)
	}
	return filepath.ToSlash(rel), nil
}

func checkEmbedPath(pkgDir, abs string, dirOK map[string]bool) (info fs.FileInfo, rel string, err error) {
	info, err = os.Lstat(abs)
	if err != nil {
		return nil, "", err
	}
	rel, err = embedRelPath(pkgDir, abs)
	if err != nil {
		return nil, "", err
	}

	what := "file"
	if info.IsDir() {
		what = "directory"
	}

	for dir := abs; ; dir = filepath.Dir(dir) {
		r, _ := embedRelPath(pkgDir, dir)
		if r == "." {
			break
		}
		if dirOK[dir] {
			break
		}
		if _, err := os.Stat(filepath.Join(dir, "go.mod")); err == nil {
			return nil, "", fmt.Errorf("cannot embed %s %s: in different module", what, rel)
		}
		elem := filepath.Base(dir)
		if isBadEmbedName(elem) {
			if dir == abs {
				return nil, "", fmt.Errorf("cannot embed %s %s: invalid name %s", what, rel, elem)
			}
			return nil, "", fmt.Errorf("cannot embed %s %s: in invalid directory %s", what, rel, elem)
		}
		dirOK[dir] = true
	}
	return info, rel, nil
}

func isBadEmbedName(name string) bool {
	if err := module.CheckFilePath(name); err != nil {
		return true
	}
	switch name {
	case "", ".bzr", ".git", ".hg", ".svn":
		return true
	}
	return false
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
	ptr := types.Unalias(gbl.Type()).(*types.Pointer)
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
		g.Init(pkg.ConstBytes(info.files[0].data))
		return true
	case isEmbedFSType(elem):
		p.embedInits = append(p.embedInits, embedInit{
			globalName: globalName,
			kind:       embedInitFS,
			fsEntries:  buildEmbedFSEntries(info.files),
		})
		return false
	default:
		panic(fmt.Sprintf("go:embed cannot apply to var of type %s", elem.String()))
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
		case embedInitFS:
			p.applyEmbedFSInit(b, g, it.fsEntries)
		}
	}
}

const (
	embedFSFieldFiles   = 0
	embedFileFieldName  = 0
	embedFileFieldBytes = 1
)

func (p *context) applyEmbedFSInit(b llssa.Builder, g llssa.Global, entries []embedFileData) {
	ptr := g.Expr.Type.RawType().(*types.Pointer)
	fsTyp := types.Unalias(ptr.Elem())
	fsStruct := fsTyp.Underlying().(*types.Struct)
	filesPtr := types.Unalias(fsStruct.Field(embedFSFieldFiles).Type()).(*types.Pointer)
	filesSlice := types.Unalias(filesPtr.Elem()).(*types.Slice)
	fileTyp := filesSlice.Elem()
	llFileTyp := p.type_(fileTyp, llssa.InGo)
	llFilesSliceTyp := p.prog.Slice(llFileTyp)

	n := p.prog.IntVal(uint64(len(entries)), p.prog.Int())
	files := b.MakeSlice(llFilesSliceTyp, n, n)
	for i, entry := range entries {
		idx := p.prog.IntVal(uint64(i), p.prog.Int())
		elemPtr := b.IndexAddr(files, idx)
		b.Store(b.FieldAddr(elemPtr, embedFileFieldName), b.Str(entry.name))
		b.Store(b.FieldAddr(elemPtr, embedFileFieldBytes), b.Str(string(entry.data)))
	}

	filesPtrVal := b.Alloc(llFilesSliceTyp, true)
	b.Store(filesPtrVal, files)
	b.Store(b.FieldAddr(g.Expr, embedFSFieldFiles), filesPtrVal)
}
