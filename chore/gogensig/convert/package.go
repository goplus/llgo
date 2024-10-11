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
	"github.com/goplus/llgo/chore/gogensig/config"
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
	cvt       *TypeConv
	outputDir string
}

type PackageConfig struct {
	PkgPath   string
	Name      string
	Conf      *gogen.Config
	OutputDir string
}

func NewPackage(config *PackageConfig) *Package {
	p := &Package{
		p:    gogen.NewPackage(config.PkgPath, config.Name, config.Conf),
		name: config.Name,
	}

	dir, err := p.prepareOutputDir(config.OutputDir)
	if err != nil {
		panic(fmt.Errorf("failed to prepare output directory: %w", err))
	}
	p.outputDir = dir

	// default file name is the package name
	err = p.SetCurFile(config.Name, false)
	if err != nil {
		panic(fmt.Errorf("SetDefaultFile %s for gogen Fail %w", config.Name+".go", err))
	}

	clib := p.p.Import("github.com/goplus/llgo/c")
	typeMap := NewBuiltinTypeMapWithPkgRefS(clib, p.p.Unsafe())
	p.cvt = NewConv(p.p.Types, typeMap)
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

func (p *Package) SetSymbolTable(symbolTable *config.SymbolTable) {
	p.cvt.SetSymbolTable(symbolTable)
}

func (p *Package) SetCppgConf(conf *cppgtypes.Config) {
	if conf == nil {
		return
	}
	p.cvt.SetCppgConf(conf)
	if conf.Libs != "" {
		p.linkLib(conf.Libs)
	}
}

func (p *Package) GetGenPackage() *gogen.Package {
	return p.p
}

func (p *Package) GetOutputDir() string {
	return p.outputDir
}

func (p *Package) GetTypeCvt() *TypeConv {
	return p.cvt
}

func (p *Package) Name() string {
	return p.name
}

// todo(zzy):refine logic
func (p *Package) linkLib(lib string) error {
	linkString := fmt.Sprintf("link: %s;", lib)
	p.p.CB().NewConstStart(types.Typ[types.String], "LLGoPackage").Val(linkString).EndInit(1)
	return nil
}

func (p *Package) NewFuncDecl(funcDecl *ast.FuncDecl) error {
	if debug {
		log.Printf("NewFuncDecl: %s\n", funcDecl.Name.Name)
	}
	// todo(zzy) accept the name of llcppg.symb.json
	goFuncName, err := p.cvt.LookupSymbol(config.MangleNameType(funcDecl.MangledName))
	if err != nil {
		// not gen the function not in the symbolmap
		return err
	}
	sig, err := p.cvt.ToSignature(funcDecl.Type)
	if err != nil {
		log.Printf("FuncDeclToSignature Fail: %s\n", err.Error())
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
	if debug {
		log.Printf("NewTypeDecl: %s\n", typeDecl.Name.Name)
	}
	name := p.cvt.RemovePrefixedName(typeDecl.Name.Name)
	typeBlock := p.p.NewTypeDefs()
	typeBlock.SetComments(CommentGroup(typeDecl.Doc).CommentGroup)
	decl := typeBlock.NewType(name)
	structType, err := p.cvt.RecordTypeToStruct(typeDecl.Type)
	if err != nil {
		return err
	}
	decl.InitType(p.p, structType)
	return nil
}

func (p *Package) NewTypedefDecl(typedefDecl *ast.TypedefDecl) error {
	if debug {
		log.Printf("NewTypedefDecl: %s\n", typedefDecl.Name.Name)
	}
	genDecl := p.p.NewTypeDefs()
	typ, err := p.ToType(typedefDecl.Type)
	if err != nil {
		return err
	}
	// todo(zzy): add to test case
	if typ == nil {
		return fmt.Errorf("underlying type must not be nil")
	}
	name := p.cvt.RemovePrefixedName(typedefDecl.Name.Name)
	if named, ok := typ.(*types.Named); ok {
		// Compare the type name with typedefDecl.Name.Name
		if named.Obj().Name() == name {
			// If they're the same, don't create a new typedef
			return nil
		}
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

func (p *Package) NewEnumTypeDecl(enumTypeDecl *ast.EnumTypeDecl) error {
	if debug {
		log.Printf("NewEnumTypeDecl: %s\n", enumTypeDecl.Name.Name)
	}
	if len(enumTypeDecl.Type.Items) > 0 {
		constDefs := p.p.NewConstDefs(p.p.CB().Scope())
		for _, item := range enumTypeDecl.Type.Items {
			name := ToTitle(enumTypeDecl.Name.Name) + "_" + item.Name.Name
			val, err := Expr(item.Value).ToInt()
			if err != nil {
				continue
			}
			constDefs.New(func(cb *gogen.CodeBuilder) int {
				cb.Val(val)
				return 1
			}, 0, token.NoPos, nil, name)
		}
	}
	return nil
}

// Write generates a Go file based on the package content.
// The output file will be generated in a subdirectory named after the package within the outputDir.
// If outputDir is not provided, the current directory will be used.
// The header file name is the go file name.
//
// Files that are already mapped in BuiltinTypeMap.typeAliases will not be output.
func (p *Package) Write(headerFile string) error {
	if p.shouldSkipFile(headerFile) {
		if debug {
			log.Printf("Skip Write File: %s\n", headerFile)
		}
		return nil
	}

	fileName := HeaderFileToGo(headerFile)

	if debug {
		log.Printf("Write HeaderFile [%s] from  gogen:[%s] to [%s]\n", headerFile, fileName, filepath.Join(p.outputDir, fileName))
	}

	if err := p.p.WriteFile(filepath.Join(p.outputDir, fileName), fileName); err != nil {
		return fmt.Errorf("failed to write file: %w", err)
	}

	return nil
}

// WriteToBuffer writes the Go file to a buffer.
// Include the aliased file for debug
func (p *Package) WriteToBuffer(headerFile string) (*bytes.Buffer, error) {
	goFileName := HeaderFileToGo(headerFile)
	buf := new(bytes.Buffer)
	err := p.p.WriteTo(buf, goFileName)
	if err != nil {
		return nil, fmt.Errorf("failed to write to buffer: %w", err)
	}
	return buf, nil
}

func (p *Package) prepareOutputDir(outputDir string) (string, error) {
	if outputDir == "" {
		outputDir = "."
	}

	absDir, err := filepath.Abs(outputDir)
	if err != nil {
		return "", err
	}

	dir := filepath.Join(absDir, p.name)
	if err := os.MkdirAll(dir, 0755); err != nil {
		return "", err
	}

	return dir, nil
}

// /path/to/foo.h
// foo.go
func HeaderFileToGo(headerFile string) string {
	_, fileName := filepath.Split(headerFile)
	ext := filepath.Ext(fileName)
	if len(ext) > 0 {
		fileName = strings.TrimSuffix(fileName, ext)
	}
	if len(fileName) <= 0 {
		fileName = "temp"
	}
	return fileName + ".go"
}

func (p *Package) shouldSkipFile(headerFile string) bool {
	return p.cvt.IsHeaderFileAliased(headerFile)
}