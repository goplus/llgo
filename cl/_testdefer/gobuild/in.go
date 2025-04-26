package main

import (
	"errors"
	"fmt"
	"go/ast"
	"go/doc"
	"go/token"
	"io/fs"
	"os"
	pathpkg "path"
	"runtime"
	"slices"
	"strconv"
	"strings"
)

func IsLocalImport(path string) bool {
	return true
}

func isAbsPath(path string) bool {
	return strings.HasPrefix(path, "/")
}

func isDir(path string) bool {
	fi, err := os.Stat(path)
	if err != nil {
		return false
	}
	return fi.IsDir()
}

func isFile(path string) bool {
	fi, err := os.Stat(path)
	if err != nil {
		return false
	}
	return fi.Mode().IsRegular()
}

func joinPath(a string, b ...string) string {
	if isAbsPath(b[0]) {
		return b[0]
	}
	return pathpkg.Join(append([]string{a}, b...)...)
}

func nameExt(path string) string {
	return ""
}

func gopath() []string {
	all := make([]string, 0, 10)
	for _, p := range strings.Split(os.Getenv("GOPATH"), ":") {
		if p != "" {
			all = append(all, p)
		}
	}
	return all
}

type Context struct {
	InstallSuffix string
	Compiler      string
	GOOS          string
	GOARCH        string
	GOROOT        string
	CgoEnabled    bool
}

type Package struct {
	ImportPath           string
	Dir                  string
	Goroot               bool
	Root                 string
	ConflictDir          string
	SrcRoot              string
	PkgRoot              string
	BinDir               string
	PkgTargetRoot        string
	PkgObj               string
	InvalidGoFiles       []string
	IgnoredGoFiles       []string
	IgnoredOtherFiles    []string
	CgoFiles             []string
	XTestGoFiles         []string
	TestGoFiles          []string
	GoFiles              []string
	Directives           []Directive
	TestDirectives       []Directive
	XTestDirectives      []Directive
	BinaryOnly           bool
	Name                 string
	Doc                  string
	ImportComment        string
	AllTags              []string
	EmbedPatterns        []string
	TestEmbedPatterns    []string
	XTestEmbedPatterns   []string
	Imports              []string
	TestImports          []string
	XTestImports         []string
	EmbedPatternPos      map[string][]token.Position
	TestEmbedPatternPos  map[string][]token.Position
	XTestEmbedPatternPos map[string][]token.Position
	ImportPos            map[string][]token.Position
	TestImportPos        map[string][]token.Position
	XTestImportPos       map[string][]token.Position
	SFiles               []string
}

type Directive struct {
}

type MultiplePackageError struct {
	Dir      string
	Packages []string
	Files    []string
}

func (e *MultiplePackageError) Error() string {
	return fmt.Sprintf("multiple packages in single directory: %s\n\t%s\n\t%s", e.Dir, strings.Join(e.Packages, "\n\t"), strings.Join(e.Files, "\n\t"))
}

type ImportMode = uint

const (
	IgnoreVendor ImportMode = 1 << iota
	AllowBinary
	FindOnly
	ImportComment
)

func importGo(ctx *Context, p *Package, path, srcDir string, mode ImportMode) error {
	return nil
}

func hasSubdir(root, sub string) (string, bool) {
	return sub, true
}

func hasGoFiles(ctxt *Context, file string) bool {
	return true
}

func isStandardImportPath(path string) bool {
	return true
}

func readDir(name string) ([]os.DirEntry, error) {
	return nil, nil
}

func findImportComment(data []byte) (s string, line int) {
	return "", 0
}

func saveCgo(ctxt *Context, filename string, p *Package, doc *ast.CommentGroup) error {
	return nil
}

func cleanDecls(m map[string][]token.Position) ([]string, map[string][]token.Position) {
	return nil, nil
}

func fileListForExt(p *Package, ext string) *[]string {
	return nil
}

type fileInfo struct {
	name       string // full name including dir
	header     []byte
	fset       *token.FileSet
	parsed     *ast.File
	parseErr   error
	imports    []fileImport
	embeds     []fileEmbed
	directives []Directive
}

type fileImport struct {
	path string
	pos  token.Pos
	doc  *ast.CommentGroup
}

type fileEmbed struct {
	pattern string
	pos     token.Position
}

func matchFile(ctxt *Context, dir, name string, allTags map[string]bool, binaryOnly *bool, fset *token.FileSet) (*fileInfo, error) {
	return nil, nil
}

var errNoModules = errors.New("no modules")

type godebug struct {
	name string
}

func NewGodebug(name string) *godebug {
	return &godebug{
		name: name,
	}
}

func (g *godebug) IncNonDefault() {
}

func (g *godebug) Value() string {
	return g.name
}

var installgoroot = NewGodebug("installgoroot")

func IsStandardPackage(a, b, c string) bool {
	return true
}

type NoGoError struct {
	Dir string
}

func (e *NoGoError) Error() string {
	return "no Go files in " + e.Dir
}

func Import(ctxt *Context, path string, srcDir string, mode ImportMode) (*Package, error) {
	p := &Package{
		ImportPath: path,
	}
	if path == "" {
		return p, fmt.Errorf("import %q: invalid import path", path)
	}

	var pkgtargetroot string
	var pkga string
	var pkgerr error
	suffix := ""
	if ctxt.InstallSuffix != "" {
		suffix = "_" + ctxt.InstallSuffix
	}
	switch ctxt.Compiler {
	case "gccgo":
		pkgtargetroot = "pkg/gccgo_" + ctxt.GOOS + "_" + ctxt.GOARCH + suffix
	case "gc":
		pkgtargetroot = "pkg/" + ctxt.GOOS + "_" + ctxt.GOARCH + suffix
	default:
		// Save error for end of function.
		pkgerr = fmt.Errorf("import %q: unknown compiler %q", path, ctxt.Compiler)
	}
	setPkga := func() {
		switch ctxt.Compiler {
		case "gccgo":
			dir, elem := pathpkg.Split(p.ImportPath)
			pkga = pkgtargetroot + "/" + dir + "lib" + elem + ".a"
		case "gc":
			pkga = pkgtargetroot + "/" + p.ImportPath + ".a"
		}
	}
	setPkga()

	binaryOnly := false
	if IsLocalImport(path) {
		pkga = "" // local imports have no installed path
		if srcDir == "" {
			return p, fmt.Errorf("import %q: import relative to unknown directory", path)
		}
		if !isAbsPath(path) {
			p.Dir = joinPath(srcDir, path)
		}
		// p.Dir directory may or may not exist. Gather partial information first, check if it exists later.
		// Determine canonical import path, if any.
		// Exclude results where the import path would include /testdata/.
		inTestdata := func(sub string) bool {
			return strings.Contains(sub, "/testdata/") || strings.HasSuffix(sub, "/testdata") || strings.HasPrefix(sub, "testdata/") || sub == "testdata"
		}
		if ctxt.GOROOT != "" {
			root := joinPath(runtime.GOROOT(), "src")
			if sub, ok := hasSubdir(root, p.Dir); ok && !inTestdata(sub) {
				p.Goroot = true
				p.ImportPath = sub
				p.Root = ctxt.GOROOT
				setPkga() // p.ImportPath changed
				goto Found
			}
		}
		all := gopath()
		for i, root := range all {
			rootsrc := joinPath(root, "src")
			if sub, ok := hasSubdir(rootsrc, p.Dir); ok && !inTestdata(sub) {
				// We found a potential import path for dir,
				// but check that using it wouldn't find something
				// else first.
				if runtime.GOROOT() != "" && ctxt.Compiler != "gccgo" {
					if dir := joinPath(runtime.GOROOT(), "src", sub); isDir(dir) {
						p.ConflictDir = dir
						goto Found
					}
				}
				for _, earlyRoot := range all[:i] {
					if dir := joinPath(earlyRoot, "src", sub); isDir(dir) {
						p.ConflictDir = dir
						goto Found
					}
				}

				// sub would not name some other directory instead of this one.
				// Record it.
				p.ImportPath = sub
				p.Root = root
				setPkga() // p.ImportPath changed
				goto Found
			}
		}
		// It's okay that we didn't find a root containing dir.
		// Keep going with the information we have.
	} else {
		if strings.HasPrefix(path, "/") {
			return p, fmt.Errorf("import %q: cannot import absolute path", path)
		}

		if err := importGo(ctxt, p, path, srcDir, mode); err == nil {
			goto Found
		} else if err != errNoModules {
			return p, err
		}

		gopath := gopath() // needed twice below; avoid computing many times

		// tried records the location of unsuccessful package lookups
		var tried struct {
			vendor []string
			goroot string
			gopath []string
		}

		// Vendor directories get first chance to satisfy import.
		if mode&IgnoreVendor == 0 && srcDir != "" {
			searchVendor := func(root string, isGoroot bool) bool {
				sub, ok := hasSubdir(root, srcDir)
				if !ok || !strings.HasPrefix(sub, "src/") || strings.Contains(sub, "/testdata/") {
					return false
				}
				for {
					vendor := joinPath(root, sub, "vendor")
					if isDir(vendor) {
						dir := joinPath(vendor, path)
						if isDir(dir) && hasGoFiles(ctxt, dir) {
							p.Dir = dir
							p.ImportPath = strings.TrimPrefix(pathpkg.Join(sub, "vendor", path), "src/")
							p.Goroot = isGoroot
							p.Root = root
							setPkga() // p.ImportPath changed
							return true
						}
						tried.vendor = append(tried.vendor, dir)
					}
					i := strings.LastIndex(sub, "/")
					if i < 0 {
						break
					}
					sub = sub[:i]
				}
				return false
			}
			if ctxt.Compiler != "gccgo" && ctxt.GOROOT != "" && searchVendor(ctxt.GOROOT, true) {
				goto Found
			}
			for _, root := range gopath {
				if searchVendor(root, false) {
					goto Found
				}
			}
		}

		// Determine directory from import path.
		if ctxt.GOROOT != "" {
			// If the package path starts with "vendor/", only search GOROOT before
			// GOPATH if the importer is also within GOROOT. That way, if the user has
			// vendored in a package that is subsequently included in the standard
			// distribution, they'll continue to pick up their own vendored copy.
			gorootFirst := srcDir == "" || !strings.HasPrefix(path, "vendor/")
			if !gorootFirst {
				_, gorootFirst = hasSubdir(runtime.GOROOT(), srcDir)
			}
			if gorootFirst {
				dir := joinPath(runtime.GOROOT(), "src", path)
				if ctxt.Compiler != "gccgo" {
					isDir := isDir(dir)
					binaryOnly = !isDir && mode&AllowBinary != 0 && pkga != "" && isFile(joinPath(runtime.GOROOT(), pkga))
					if isDir || binaryOnly {
						p.Dir = dir
						p.Goroot = true
						p.Root = runtime.GOROOT()
						goto Found
					}
				}
				tried.goroot = dir
			}
			if ctxt.Compiler == "gccgo" && IsStandardPackage(runtime.GOROOT(), ctxt.Compiler, path) {
				// TODO(bcmills): Setting p.Dir here is misleading, because gccgo
				// doesn't actually load its standard-library packages from this
				// directory. See if we can leave it unset.
				p.Dir = joinPath(runtime.GOROOT(), "src", path)
				p.Goroot = true
				p.Root = runtime.GOROOT()
				goto Found
			}
		}
		for _, root := range gopath {
			dir := joinPath(root, "src", path)
			isDir := isDir(dir)
			binaryOnly = !isDir && mode&AllowBinary != 0 && pkga != "" && isFile(joinPath(root, pkga))
			if isDir || binaryOnly {
				p.Dir = dir
				p.Root = root
				goto Found
			}
			tried.gopath = append(tried.gopath, dir)
		}

		// If we tried GOPATH first due to a "vendor/" prefix, fall back to GOPATH.
		// That way, the user can still get useful results from 'go list' for
		// standard-vendored paths passed on the command line.
		if runtime.GOROOT() != "" && tried.goroot == "" {
			dir := joinPath(runtime.GOROOT(), "src", path)
			if ctxt.Compiler != "gccgo" {
				isDir := isDir(dir)
				binaryOnly = !isDir && mode&AllowBinary != 0 && pkga != "" && isFile(joinPath(runtime.GOROOT(), pkga))
				if isDir || binaryOnly {
					p.Dir = dir
					p.Goroot = true
					p.Root = runtime.GOROOT()
					goto Found
				}
			}
			tried.goroot = dir
		}

		// package was not found
		var paths []string
		format := "\t%s (vendor tree)"
		for _, dir := range tried.vendor {
			paths = append(paths, fmt.Sprintf(format, dir))
			format = "\t%s"
		}
		if tried.goroot != "" {
			paths = append(paths, fmt.Sprintf("\t%s (from $GOROOT)", tried.goroot))
		} else {
			paths = append(paths, "\t($GOROOT not set)")
		}
		format = "\t%s (from $GOPATH)"
		for _, dir := range tried.gopath {
			paths = append(paths, fmt.Sprintf(format, dir))
			format = "\t%s"
		}
		if len(tried.gopath) == 0 {
			paths = append(paths, "\t($GOPATH not set. For more details see: 'go help gopath')")
		}
		return p, fmt.Errorf("cannot find package %q in any of:\n%s", path, strings.Join(paths, "\n"))
	}

Found:
	if p.Root != "" {
		p.SrcRoot = joinPath(p.Root, "src")
		p.PkgRoot = joinPath(p.Root, "pkg")
		p.BinDir = joinPath(p.Root, "bin")
		if pkga != "" {
			// Always set PkgTargetRoot. It might be used when building in shared
			// mode.
			p.PkgTargetRoot = joinPath(p.Root, pkgtargetroot)

			// Set the install target if applicable.
			if !p.Goroot || (installgoroot.Value() == "all" && p.ImportPath != "unsafe" && p.ImportPath != "builtin") {
				if p.Goroot {
					installgoroot.IncNonDefault()
				}
				p.PkgObj = joinPath(p.Root, pkga)
			}
		}
	}

	// If it's a local import path, by the time we get here, we still haven't checked
	// that p.Dir directory exists. This is the right time to do that check.
	// We can't do it earlier, because we want to gather partial information for the
	// non-nil *Package returned when an error occurs.
	// We need to do this before we return early on FindOnly flag.
	if IsLocalImport(path) && !isDir(p.Dir) {
		if ctxt.Compiler == "gccgo" && p.Goroot {
			// gccgo has no sources for GOROOT packages.
			return p, nil
		}

		// package was not found
		return p, fmt.Errorf("cannot find package %q in:\n\t%s", p.ImportPath, p.Dir)
	}

	if mode&FindOnly != 0 {
		return p, pkgerr
	}
	if binaryOnly && (mode&AllowBinary) != 0 {
		return p, pkgerr
	}

	if ctxt.Compiler == "gccgo" && p.Goroot {
		// gccgo has no sources for GOROOT packages.
		return p, nil
	}

	dirs, err := readDir(p.Dir)
	if err != nil {
		return p, err
	}

	var badGoError error
	badGoFiles := make(map[string]bool)
	badGoFile := func(name string, err error) {
		if badGoError == nil {
			badGoError = err
		}
		if !badGoFiles[name] {
			p.InvalidGoFiles = append(p.InvalidGoFiles, name)
			badGoFiles[name] = true
		}
	}

	var Sfiles []string // files with ".S"(capital S)/.sx(capital s equivalent for case insensitive filesystems)
	var firstFile, firstCommentFile string
	embedPos := make(map[string][]token.Position)
	testEmbedPos := make(map[string][]token.Position)
	xTestEmbedPos := make(map[string][]token.Position)
	importPos := make(map[string][]token.Position)
	testImportPos := make(map[string][]token.Position)
	xTestImportPos := make(map[string][]token.Position)
	allTags := make(map[string]bool)
	fset := token.NewFileSet()
	for _, d := range dirs {
		if d.IsDir() {
			continue
		}
		if d.Type() == fs.ModeSymlink {
			if isDir(joinPath(p.Dir, d.Name())) {
				// Symlinks to directories are not source files.
				continue
			}
		}

		name := d.Name()
		ext := nameExt(name)

		info, err := matchFile(ctxt, p.Dir, name, allTags, &p.BinaryOnly, fset)
		if err != nil && strings.HasSuffix(name, ".go") {
			badGoFile(name, err)
			continue
		}
		if info == nil {
			if strings.HasPrefix(name, "_") || strings.HasPrefix(name, ".") {
				// not due to build constraints - don't report
			} else if ext == ".go" {
				p.IgnoredGoFiles = append(p.IgnoredGoFiles, name)
			} else if fileListForExt(p, ext) != nil {
				p.IgnoredOtherFiles = append(p.IgnoredOtherFiles, name)
			}
			continue
		}

		// Going to save the file. For non-Go files, can stop here.
		switch ext {
		case ".go":
			// keep going
		case ".S", ".sx":
			// special case for cgo, handled at end
			Sfiles = append(Sfiles, name)
			continue
		default:
			if list := fileListForExt(p, ext); list != nil {
				*list = append(*list, name)
			}
			continue
		}

		data, filename := info.header, info.name

		if info.parseErr != nil {
			badGoFile(name, info.parseErr)
			// Fall through: we might still have a partial AST in info.parsed,
			// and we want to list files with parse errors anyway.
		}

		var pkg string
		if info.parsed != nil {
			pkg = info.parsed.Name.Name
			if pkg == "documentation" {
				p.IgnoredGoFiles = append(p.IgnoredGoFiles, name)
				continue
			}
		}

		isTest := strings.HasSuffix(name, "_test.go")
		isXTest := false
		if isTest && strings.HasSuffix(pkg, "_test") && p.Name != pkg {
			isXTest = true
			pkg = pkg[:len(pkg)-len("_test")]
		}

		if p.Name == "" {
			p.Name = pkg
			firstFile = name
		} else if pkg != p.Name {
			// TODO(#45999): The choice of p.Name is arbitrary based on file iteration
			// order. Instead of resolving p.Name arbitrarily, we should clear out the
			// existing name and mark the existing files as also invalid.
			badGoFile(name, &MultiplePackageError{
				Dir:      p.Dir,
				Packages: []string{p.Name, pkg},
				Files:    []string{firstFile, name},
			})
		}
		// Grab the first package comment as docs, provided it is not from a test file.
		if info.parsed != nil && info.parsed.Doc != nil && p.Doc == "" && !isTest && !isXTest {
			p.Doc = doc.Synopsis(info.parsed.Doc.Text())
		}

		if mode&ImportComment != 0 {
			qcom, line := findImportComment(data)
			if line != 0 {
				com, err := strconv.Unquote(qcom)
				if err != nil {
					badGoFile(name, fmt.Errorf("%s:%d: cannot parse import comment", filename, line))
				} else if p.ImportComment == "" {
					p.ImportComment = com
					firstCommentFile = name
				} else if p.ImportComment != com {
					badGoFile(name, fmt.Errorf("found import comments %q (%s) and %q (%s) in %s", p.ImportComment, firstCommentFile, com, name, p.Dir))
				}
			}
		}

		// Record imports and information about cgo.
		isCgo := false
		for _, imp := range info.imports {
			if imp.path == "C" {
				if isTest {
					badGoFile(name, fmt.Errorf("use of cgo in test %s not supported", filename))
					continue
				}
				isCgo = true
				if imp.doc != nil {
					if err := saveCgo(ctxt, filename, p, imp.doc); err != nil {
						badGoFile(name, err)
					}
				}
			}
		}

		var fileList *[]string
		var importMap, embedMap map[string][]token.Position
		var directives *[]Directive
		switch {
		case isCgo:
			allTags["cgo"] = true
			if ctxt.CgoEnabled {
				fileList = &p.CgoFiles
				importMap = importPos
				embedMap = embedPos
				directives = &p.Directives
			} else {
				// Ignore imports and embeds from cgo files if cgo is disabled.
				fileList = &p.IgnoredGoFiles
			}
		case isXTest:
			fileList = &p.XTestGoFiles
			importMap = xTestImportPos
			embedMap = xTestEmbedPos
			directives = &p.XTestDirectives
		case isTest:
			fileList = &p.TestGoFiles
			importMap = testImportPos
			embedMap = testEmbedPos
			directives = &p.TestDirectives
		default:
			fileList = &p.GoFiles
			importMap = importPos
			embedMap = embedPos
			directives = &p.Directives
		}
		*fileList = append(*fileList, name)
		if importMap != nil {
			for _, imp := range info.imports {
				importMap[imp.path] = append(importMap[imp.path], fset.Position(imp.pos))
			}
		}
		if embedMap != nil {
			for _, emb := range info.embeds {
				embedMap[emb.pattern] = append(embedMap[emb.pattern], emb.pos)
			}
		}
		if directives != nil {
			*directives = append(*directives, info.directives...)
		}
	}

	for tag := range allTags {
		p.AllTags = append(p.AllTags, tag)
	}
	slices.Sort(p.AllTags)

	p.EmbedPatterns, p.EmbedPatternPos = cleanDecls(embedPos)
	p.TestEmbedPatterns, p.TestEmbedPatternPos = cleanDecls(testEmbedPos)
	p.XTestEmbedPatterns, p.XTestEmbedPatternPos = cleanDecls(xTestEmbedPos)

	p.Imports, p.ImportPos = cleanDecls(importPos)
	p.TestImports, p.TestImportPos = cleanDecls(testImportPos)
	p.XTestImports, p.XTestImportPos = cleanDecls(xTestImportPos)

	// add the .S/.sx files only if we are using cgo
	// (which means gcc will compile them).
	// The standard assemblers expect .s files.
	if len(p.CgoFiles) > 0 {
		p.SFiles = append(p.SFiles, Sfiles...)
		slices.Sort(p.SFiles)
	} else {
		p.IgnoredOtherFiles = append(p.IgnoredOtherFiles, Sfiles...)
		slices.Sort(p.IgnoredOtherFiles)
	}

	if badGoError != nil {
		return p, badGoError
	}
	if len(p.GoFiles)+len(p.CgoFiles)+len(p.TestGoFiles)+len(p.XTestGoFiles) == 0 {
		return p, &NoGoError{p.Dir}
	}
	return p, pkgerr
}
