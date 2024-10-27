package goedit

import (
	"fmt"
	"go/ast"
	"go/parser"
	"go/token"
	"go/types"
	"os"

	"github.com/goplus/llgo/xtool/edit"
)

// Package represents a Go package
type Package struct {
	Name  string
	Files []*File
	Fset  *token.FileSet
	Pkg   *types.Package
}

// File represents a Go source file
type File struct {
	Name     string
	AST      *ast.File
	EditBuf  *edit.Buffer
	Contents []byte
	Fset     *token.FileSet
}

// ParsePackage parses a Go package
func ParsePackage(path, packageName string) (*Package, error) {
	fset := token.NewFileSet()
	pkgs, err := parser.ParseDir(fset, path, nil, parser.ParseComments)
	if err != nil {
		return nil, fmt.Errorf("error parsing directory: %v", err)
	}

	pkg, ok := pkgs[packageName]
	if !ok {
		// If the specified package name is not found, try using the first package found
		for name, p := range pkgs {
			pkg = p
			packageName = name
			break
		}
		if pkg == nil {
			return nil, fmt.Errorf("package %s not found", packageName)
		}
	}

	files := make([]*File, 0, len(pkg.Files))
	for filename, astFile := range pkg.Files {
		contents, err := os.ReadFile(filename)
		if err != nil {
			return nil, fmt.Errorf("error reading file %s: %v", filename, err)
		}

		files = append(files, &File{
			Name:     filename,
			AST:      astFile,
			EditBuf:  edit.NewBuffer(contents),
			Contents: contents,
			Fset:     fset,
		})
	}

	if len(files) == 0 {
		return nil, fmt.Errorf("no valid Go files found in package %s", packageName)
	}

	// Disable type checking
	// conf := types.Config{Importer: importer.Default()}
	// var astFiles []*ast.File
	// for _, f := range files {
	//     astFiles = append(astFiles, f.AST)
	// }
	// tpkg, err := conf.Check(packageName, fset, astFiles, nil)
	// if err != nil {
	//     fmt.Printf("Warning: type checking failed for package %s: %v\n", packageName, err)
	// }

	return &Package{
		Name:  packageName,
		Files: files,
		Fset:  fset,
		// Pkg:   tpkg, // Remove this line as we've disabled type checking
	}, nil
}

// Insert inserts text at the given position
func (f *File) Insert(pos token.Pos, text string) {
	f.EditBuf.Insert(f.Fset.Position(pos).Offset, text)
}

// Delete deletes text between start and end positions
func (f *File) Delete(start, end token.Pos) {
	f.EditBuf.Delete(f.Fset.Position(start).Offset, f.Fset.Position(end).Offset)
}

// Replace replaces text between start and end positions with new text
func (f *File) Replace(start, end token.Pos, text string) {
	f.EditBuf.Replace(f.Fset.Position(start).Offset, f.Fset.Position(end).Offset, text)
}

// Bytes returns the edited file contents
func (f *File) Bytes() []byte {
	return f.EditBuf.Bytes()
}
