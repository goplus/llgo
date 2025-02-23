package pub

import (
	"bufio"
	"errors"
	"fmt"
	"go/ast"
	"go/parser"
	"go/token"
	"io"
	"io/fs"
	"log"
	"os"
	"path/filepath"
	"strings"
	"sync"
)

var builtinTypes = []string{"Void", "Bool", "Char", "Int16", "Int32",
	"Uint16", "Int", "Uint", "Long", "Ulong", "LongLong",
	"UlongLong", "Float", "Double", "Complex64", "Complex128"}

var ignoreTypes = []string{
	"Pointer",
}

type PubWriter struct {
	w       io.Writer
	fileset *token.FileSet
}

func NewPubWriter(w io.Writer, fileset *token.FileSet) *PubWriter {
	return &PubWriter{w: w, fileset: fileset}
}

func IsBuiltinType(typ string) bool {
	for _, name := range builtinTypes {
		if name == typ {
			return true
		}
	}
	return false
}

func IsIgnoreType(typ string) bool {
	for _, name := range ignoreTypes {
		if name == typ {
			return true
		}
	}
	return false
}

func (p *PubWriter) cnameFromTypSpec(spec ast.TypeSpec) string {
	if spec.Comment == nil {
		return ""
	}
	if spec.Comment.List == nil {
		return ""
	}
	for _, c := range spec.Comment.List {
		if strings.HasPrefix(c.Text, "//cname:") {
			return strings.TrimPrefix(c.Text, "//cname:")
		}
	}
	return ""
}

func (p *PubWriter) WriteSepc(spec ast.Spec) bool {
	typSpec, ok := spec.(*ast.TypeSpec)
	if !ok {
		return false
	}
	name := typSpec.Name.Name
	if !IsBuiltinType(name) && !IsIgnoreType(name) {
		format := NewTypeFormatter(name, typSpec.Type, p.fileset)
		if _, ok := typSpec.Type.(*ast.StructType); ok {
			fmt.Fprintln(p.w, name)
		} else {
			cname := p.cnameFromTypSpec(*typSpec)
			if len(cname) > 0 {
				fmt.Fprintf(p.w, "%s %s\n", cname, format.name)
			} else {
				fmt.Fprintf(p.w, "todo:%s %s at positon:%v\n", format.FormatExpr(typSpec.Type), format.name, p.fileset.Position(typSpec.Pos()))
			}
		}
	}
	return true
}

func (p *PubWriter) WriteDecl(decl ast.Decl) bool {
	genDecl, ok := decl.(*ast.GenDecl)
	if !ok {
		return false
	}
	if genDecl.Tok != token.TYPE {
		return false
	}
	for _, spec := range genDecl.Specs {
		p.WriteSepc(spec)
	}
	return true
}

func (p *PubWriter) WriteFile(file *ast.File) {
	for _, decl := range file.Decls {
		p.WriteDecl(decl)
	}
}

func doWriteDir(w io.Writer, dir string) {
	fset := token.NewFileSet()
	pkgMap, err := parser.ParseDir(fset, dir, func(fi fs.FileInfo) bool {
		return !strings.HasPrefix(fi.Name(), "_") &&
			!strings.HasPrefix(fi.Name(), ".") &&
			strings.HasSuffix(fi.Name(), ".go")
	}, parser.ParseComments)
	if err != nil {
		panic(err)
	}
	pubWriter := NewPubWriter(w, fset)
	for _, v := range pkgMap {
		for _, f := range v.Files {
			if ast.IsGenerated(f) {
				continue
			}
			if !ast.FileExports(f) {
				continue
			}
			pubWriter.WriteFile(f)
		}
	}
}

func GenDirs(quit <-chan int, dir string) <-chan string {
	dirs := make(chan string)
	go func() {
		defer close(dirs)
		fnIgnore := func(dir string) bool {
			paths := strings.Split(dir, string(filepath.Separator))
			for _, path := range paths {
				if strings.HasPrefix(path, "_") {
					return true
				}
			}
			return false
		}
		filepath.WalkDir(dir, func(path string, d fs.DirEntry, err error) error {
			if err != nil {
				return err
			}
			if d.IsDir() && !fnIgnore(path) {
				select {
				case dirs <- path:
				case <-quit:
					return errors.New("force finished")
				}
			}
			return nil
		})
	}()
	return dirs
}

func WriteDir(dir string) {
	fmt.Println("start handle =>", dir)
	path := PubFilenameForDir(dir)
	if len(path) <= 0 {
		panic("fatal error")
	}
	_, err := os.Stat(dir)
	if err != nil {
		panic(err)
	}
	f, err := os.Create(path)
	if err != nil {
		panic(err)
	}
	defer f.Close()
	w := bufio.NewWriter(f)
	defer func() {
		if w.Buffered() <= 0 {
			fmt.Println("write empty file for", dir+",", "remove it")
			os.Remove(path)
		} else {
			w.Flush()
		}
		fmt.Println("handle finished =>", dir)
	}()
	doWriteDir(w, dir)
}

func PubFilenameForDir(dir string) string {
	info, err := os.Stat(dir)
	if !info.IsDir() || err != nil {
		return ""
	}
	path, err := filepath.Abs(dir)
	if err != nil {
		log.Println(err)
		return ""
	}
	_, file := filepath.Split(path)
	return filepath.Join(path, file+".pub")
}

func DoDirRecursively(dir string, fn func(d string)) {
	quit := make(chan int)
	defer close(quit)
	dirs := GenDirs(quit, dir)
	wg := sync.WaitGroup{}
	for d := range dirs {
		wg.Add(1)
		go func(path string) {
			defer wg.Done()
			fn(path)
		}(d)
	}
	wg.Wait()
}

func CleanPubfile(dir string) {
	pubfile := PubFilenameForDir(dir)
	_, err := os.Stat(pubfile)
	if !os.IsNotExist(err) {
		err = os.Remove(pubfile)
		if err != nil {
			log.Panicln(err)
		} else {
			fmt.Println("remove", pubfile, "successfully")
		}
	}
}

func CleanPubfileRecursively(dir string) {
	DoDirRecursively(dir, func(d string) {
		CleanPubfile(d)
	})
}

func MergePubfiles(llcppgPubFileName string, dir string) {
	f, err := os.Create(llcppgPubFileName)
	if err != nil {
		panic(err)
	}
	defer f.Close()
	w := bufio.NewWriter(f)
	defer func() {
		if w.Buffered() > 0 {
			w.Flush()
		} else {
			fmt.Println("no pub files to merge! remove it!")
			os.Remove(llcppgPubFileName)
		}
	}()
	quit := make(chan int)
	defer close(quit)
	dirs := GenDirs(quit, dir)
	for d := range dirs {
		pubfile := PubFilenameForDir(d)
		_, err := os.Stat(pubfile)
		if !os.IsNotExist(err) {
			b, err := os.ReadFile(pubfile)
			if err != nil {
				panic(err)
			}
			_, err = w.Write(b)
			if err != nil {
				panic(err)
			}
		}
	}
}
