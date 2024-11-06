package convert

import (
	"bytes"
	"fmt"
	"go/token"
	"go/types"
	"log"
	"os"
	"path/filepath"
	"strings"

	"github.com/goplus/gogen"
	cfg "github.com/goplus/llgo/chore/gogensig/config"
	"github.com/goplus/llgo/chore/gogensig/convert/deps"
	"github.com/goplus/llgo/chore/llcppg/ast"
	cppgtypes "github.com/goplus/llgo/chore/llcppg/types"
)

const (
	DbgFlagAll = 1
)

var (
	debug bool
)

func SetDebug(flags int) {
	if flags != 0 {
		debug = true
	}
}

// -----------------------------------------------------------------------------

type Package struct {
	name      string
	p         *gogen.Package
	deps      []*deps.CPackage
	cvt       *TypeConv
	outputDir string
	conf      *PackageConfig
	depIncs   []string
}

type PackageConfig struct {
	PkgPath     string
	Name        string
	OutputDir   string
	SymbolTable *cfg.SymbolTable
	GenConf     *gogen.Config
	CppgConf    *cppgtypes.Config
}

// When creating a new package for conversion, a Go file named after the package is generated by default.
// If SetCurFile is not called, all type conversions will be written to this default Go file.
func NewPackage(config *PackageConfig) *Package {
	p := &Package{
		p:    gogen.NewPackage(config.PkgPath, config.Name, config.GenConf),
		name: config.Name,
		conf: config,
	}

	p.outputDir = config.OutputDir

	// init deps
	deps, err := deps.LoadDeps(p.outputDir, config.CppgConf.Deps)
	if err != nil {
		log.Println("failed to load deps: \n", err.Error())
	}
	p.deps = deps
	clib := p.p.Import("github.com/goplus/llgo/c")
	typeMap := NewBuiltinTypeMapWithPkgRefS(clib, p.p.Unsafe())
	// init type converter
	p.cvt = NewConv(&TypeConfig{
		Types:        p.p.Types,
		TypeMap:      typeMap,
		SymbolTable:  config.SymbolTable,
		TrimPrefixes: config.CppgConf.TrimPrefixes,
		Deps:         deps,
	})
	p.initDepPkgs()
	p.SetCurFile(p.Name(), false)
	return p
}

func (p *Package) SetCurFile(file string, isHeaderFile bool) error {
	var fileName string
	if isHeaderFile {
		// headerfile to go filename
		fileName = HeaderFileToGo(file)
	} else {
		// package name as the default file
		fileName = file + ".go"
	}
	if debug {
		log.Printf("SetCurFile: %s\n", fileName)
	}
	_, err := p.p.SetCurFile(fileName, true)
	if err != nil {
		return fmt.Errorf("fail to set current file %s\n%w", file, err)
	}
	p.p.Unsafe().MarkForceUsed(p.p)
	return nil
}

func (p *Package) GetGenPackage() *gogen.Package {
	return p.p
}

func (p *Package) GetOutputDir() string {
	return p.outputDir
}

func (p *Package) Name() string {
	return p.name
}

// todo(zzy):refine logic
func (p *Package) linkLib(lib string) error {
	if lib == "" {
		return fmt.Errorf("empty lib name")
	}
	linkString := fmt.Sprintf("link: %s;", lib)
	p.p.CB().NewConstStart(types.Typ[types.String], "LLGoPackage").Val(linkString).EndInit(1)
	return nil
}

func (p *Package) NewFuncDecl(funcDecl *ast.FuncDecl) error {
	if debug {
		log.Printf("NewFuncDecl: %v\n", funcDecl.Name)
	}
	goFuncName, err := p.cvt.LookupSymbol(cfg.MangleNameType(funcDecl.MangledName))
	if err != nil {
		// not gen the function not in the symbolmap
		return err
	}
	if obj := p.p.Types.Scope().Lookup(goFuncName); obj != nil {
		return fmt.Errorf("function %s already defined", goFuncName)
	}
	sig, err := p.cvt.ToSignature(funcDecl.Type)
	if err != nil {
		return err
	}
	decl := p.p.NewFuncDecl(token.NoPos, string(goFuncName), sig)
	doc := CommentGroup(funcDecl.Doc)
	doc.AddCommentGroup(NewFuncDocComments(funcDecl.Name.Name, string(goFuncName)))
	decl.SetComments(p.p, doc.CommentGroup)
	return nil
}

// todo(zzy): for class,union,struct
func (p *Package) NewTypeDecl(typeDecl *ast.TypeDecl) error {
	if typeDecl.Name == nil {
		if debug {
			log.Println("NewTypeDecl:Skip a anonymous type")
		}
		return nil
	}
	name := p.cvt.RemovePrefixedName(typeDecl.Name.Name)

	// for a type name, it should be unique
	if obj := p.p.Types.Scope().Lookup(name); obj != nil {
		return fmt.Errorf("type %s already defined", name)
	}
	if debug {
		log.Printf("NewTypeDecl: %v\n", typeDecl.Name)
	}

	structType, err := p.cvt.RecordTypeToStruct(typeDecl.Type)
	if err != nil {
		return err
	}
	typeBlock := p.p.NewTypeDefs()
	typeBlock.SetComments(CommentGroup(typeDecl.Doc).CommentGroup)
	decl := typeBlock.NewType(name)
	decl.InitType(p.p, structType)
	return nil
}

func (p *Package) NewTypedefDecl(typedefDecl *ast.TypedefDecl) error {
	name := p.cvt.RemovePrefixedName(typedefDecl.Name.Name)

	// for a typedef ,always appear same name like
	// typedef struct foo { int a; } foo;
	// For this typedef, we only need skip this
	if obj := p.p.Types.Scope().Lookup(name); obj != nil {
		return nil
	}
	if debug {
		log.Printf("NewTypedefDecl: %s\n", typedefDecl.Name.Name)
	}
	genDecl := p.p.NewTypeDefs()
	typ, err := p.ToType(typedefDecl.Type)
	if err != nil {
		return err
	}
	typeSpecdecl := genDecl.NewType(name)
	typeSpecdecl.InitType(p.p, typ)
	if _, ok := typ.(*types.Signature); ok {
		genDecl.SetComments(NewTypecDocComments())
	}
	return nil
}

// Convert ast.Expr to types.Type
func (p *Package) ToType(expr ast.Expr) (types.Type, error) {
	return p.cvt.ToType(expr)
}

func (p *Package) NewTypedefs(name string, typ types.Type) *types.Named {
	def := p.p.NewTypeDefs()
	named := def.NewType(name).InitType(def.Pkg(), typ)
	def.Complete()
	return named
}

func (p *Package) NewEnumTypeDecl(enumTypeDecl *ast.EnumTypeDecl) error {
	if debug {
		log.Printf("NewEnumTypeDecl: %v\n", enumTypeDecl.Name)
	}
	enumType, enumTypeName, err := p.createEnumType(enumTypeDecl.Name)
	if err != nil {
		return err
	}
	if len(enumTypeDecl.Type.Items) > 0 {
		err = p.createEnumItems(enumTypeDecl.Type.Items, enumType, enumTypeName)
		if err != nil {
			return err
		}
	}
	return nil
}

func (p *Package) createEnumType(enumName *ast.Ident) (types.Type, string, error) {
	var name string
	if enumName != nil {
		name = CPubName(p.cvt.RemovePrefixedName(enumName.Name))
	}
	if obj := p.p.Types.Scope().Lookup(name); obj != nil {
		return nil, "", fmt.Errorf("enum type %s already defined", name)
	}
	enumType := p.cvt.ToDefaultEnumType()
	if name != "" {
		enumType = p.NewTypedefs(name, enumType)
	}
	return enumType, name, nil
}

func (p *Package) createEnumItems(items []*ast.EnumItem, enumType types.Type, enumTypeName string) error {
	constDefs := p.p.NewConstDefs(p.p.Types.Scope())
	for _, item := range items {
		var constName string
		if enumTypeName != "" {
			constName = enumTypeName + "_" + item.Name.Name
		} else {
			constName = item.Name.Name
		}
		// maybe get a new name,because the after executed name,have lots situation will found same name
		if obj := p.p.Types.Scope().Lookup(constName); obj != nil {
			return fmt.Errorf("enum item %s already defined", constName)
		}
		val, err := Expr(item.Value).ToInt()
		if err != nil {
			return err
		}
		constDefs.New(func(cb *gogen.CodeBuilder) int {
			cb.Val(val)
			return 1
		}, 0, token.NoPos, enumType, constName)
	}
	return nil
}

// Write generates a Go file based on the package content.
// The output file will be generated in a subdirectory named after the package within the outputDir.
// If outputDir is not provided, the current directory will be used.
// The header file name is the go file name.
//
// Files that are already processed in dependent packages will not be output.
func (p *Package) Write(headerFile string) error {
	fileName := HeaderFileToGo(headerFile)
	filePath := filepath.Join(p.outputDir, fileName)
	if debug {
		log.Printf("Write HeaderFile [%s] from  gogen:[%s] to [%s]\n", headerFile, fileName, filePath)
	}
	return p.writeToFile(fileName, filePath)
}

func (p *Package) WriteLinkFile() (string, error) {
	fileName := p.name + "_autogen_link.go"
	filePath := filepath.Join(p.outputDir, fileName)
	p.p.SetCurFile(fileName, true)
	err := p.linkLib(p.conf.CppgConf.Libs)
	if debug {
		log.Printf("Write LinkFile [%s] from  gogen:[%s] to [%s]\n", fileName, fileName, filePath)
	}
	if err != nil {
		return "", fmt.Errorf("failed to link lib: %w", err)
	}
	if err := p.writeToFile(fileName, filePath); err != nil {
		return "", fmt.Errorf("failed to write file: %w", err)
	}
	return filePath, nil
}

// WriteDefaultFileToBuffer writes the content of the default Go file to a buffer.
// The default file is named after the package (p.Name() + ".go").
// This method is particularly useful for testing type outputs, especially in package tests
// where there typically isn't (and doesn't need to be) a corresponding header file.
// Before calling SetCurFile, all type creations are written to this default gogen file.
// It allows for easy inspection of generated types without the need for actual file I/O.
func (p *Package) WriteDefaultFileToBuffer() (*bytes.Buffer, error) {
	return p.WriteToBuffer(p.Name() + ".go")
}

// Write the corresponding files in gogen package to the file
func (p *Package) writeToFile(genFName string, filePath string) error {
	buf, err := p.WriteToBuffer(genFName)
	if err != nil {
		return err
	}
	return os.WriteFile(filePath, buf.Bytes(), 0644)
}

// Write the corresponding files in gogen package to the buffer
func (p *Package) WriteToBuffer(genFName string) (*bytes.Buffer, error) {
	buf := new(bytes.Buffer)
	err := p.p.WriteTo(buf, genFName)
	if err != nil {
		return nil, fmt.Errorf("failed to write to buffer: %w", err)
	}
	return buf, nil
}

// /path/to/foo.h -> foo.go
// /path/to/_intptr.h -> SYS_intptr.go

func HeaderFileToGo(headerFile string) string {
	_, fileName := filepath.Split(headerFile)
	ext := filepath.Ext(fileName)
	if len(ext) > 0 {
		fileName = strings.TrimSuffix(fileName, ext)
	}
	if strings.HasPrefix(fileName, "_") {
		fileName = "SYS" + fileName
	}
	return fileName + ".go"
}

func (p *Package) initDepPkgs() {
	allDepIncs := make([]string, 0)
	scope := p.p.Types.Scope()
	for _, dep := range p.deps {
		allDepIncs = append(allDepIncs, dep.StdIncs...)
		depPkg := p.p.Import(dep.Path)
		for cName, pubGoName := range dep.Pubs {
			if obj := depPkg.TryRef(pubGoName); obj != nil {
				if old := scope.Insert(gogen.NewSubst(token.NoPos, p.p.Types, cName, obj)); old != nil {
					log.Printf("conflicted name `%v` in %v, previous definition is %v\n", pubGoName, dep.Path, old)
				}
			}
		}
	}
	p.depIncs = allDepIncs
}

// AllDepIncs returns all std include paths of dependent packages
func (p *Package) AllDepIncs() []string {
	return p.depIncs
}
