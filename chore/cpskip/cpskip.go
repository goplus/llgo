package main

import (
	"fmt"
	"io"
	"log"
	"os"
	"path/filepath"
	"strings"

	"go/ast"
	"go/token"

	"github.com/goplus/llgo/xtool/goedit"
)

func main() {
	log.SetFlags(log.Lshortfile | log.Ltime)
	if len(os.Args) != 4 {
		fmt.Println("Usage: cpskip <goSrcRoot> <patchRoot> <outRoot>")
		os.Exit(1)
	}

	goSrcRoot, patchRoot, outRoot := os.Args[1], os.Args[2], os.Args[3]

	err := filepath.Walk(goSrcRoot, func(path string, info os.FileInfo, err error) error {
		if err != nil {
			log.Printf("Error accessing path %s: %v", path, err)
			return nil
		}

		if info.IsDir() {
			relPath, err := filepath.Rel(goSrcRoot, path)
			if err != nil {
				log.Printf("Error getting relative path for %s: %v", path, err)
				return nil
			}

			if strings.HasPrefix(filepath.Base(relPath), ".") {
				return nil
			}

			if !hasGoFiles(path) {
				return nil // skip empty folder
			}

			packageName := filepath.Base(relPath)
			// log.Printf("Processing package: %s", packageName)

			patchPath := filepath.Join(patchRoot, relPath)
			if !isDir(patchPath) || !hasGoFiles(patchPath) {
				// log.Printf("No patch found for package %s, copying original", relPath)
				outPath := filepath.Join(outRoot, relPath)
				if err := copyDir(path, outPath); err != nil {
					log.Printf("Error copying package %s: %v", relPath, err)
				}
				return nil
			}

			log.Printf("load patch package: %s\n", patchPath)
			patchPkg, err := goedit.ParsePackage(patchPath, packageName)
			if err != nil {
				panic(fmt.Errorf("No patch found for package %s: %v", relPath, err))
			}

			if patchPkg != nil && containsComment(patchPkg, "llgo:skipall") {
				log.Printf("Skipping package %s due to llgo:skipall comment", relPath)
				return createEmptyPackage(outRoot, relPath)
			}

			goPkg, err := goedit.ParsePackage(path, packageName)
			if err != nil {
				log.Printf("Error parsing original package %s: %v", relPath, err)
				return nil
			}

			if goPkg == nil || len(goPkg.Files) == 0 {
				log.Printf("No valid Go files found in package %s", relPath)
				return nil
			}

			skipElements := getSkipElements(patchPkg)
			log.Printf("Skip elements for package %s: %v", relPath, skipElements)

			err = mergePackages(goPkg, patchPkg, outRoot, relPath, skipElements)
			if err != nil {
				log.Printf("Error merging packages for %s: %v", relPath, err)
			}
			return nil
		}

		return nil
	})

	if err != nil {
		log.Printf("Error processing packages: %v", err)
		os.Exit(1)
	}
}

func containsComment(pkg *goedit.Package, comment string) bool {
	for _, file := range pkg.Files {
		for _, c := range file.AST.Comments {
			if strings.TrimSpace(c.Text()) == comment {
				return true
			}
		}
	}
	return false
}

func getSkipElements(pkg *goedit.Package) []string {
	if pkg == nil {
		return nil
	}
	var skipElements []string
	for _, file := range pkg.Files {
		for _, c := range file.AST.Comments {
			if strings.HasPrefix(c.Text(), "llgo:skip") {
				elements := strings.Fields(c.Text())[1:]
				skipElements = append(skipElements, elements...)
			}
		}
	}
	return skipElements
}

func createEmptyPackage(outRoot, relPath string) error {
	outDir := filepath.Join(outRoot, relPath)
	if err := os.MkdirAll(outDir, 0755); err != nil {
		return err
	}

	outFile := filepath.Join(outDir, filepath.Base(relPath)+".go")
	return os.WriteFile(outFile, []byte(fmt.Sprintf("package %s\n", filepath.Base(relPath))), 0644)
}

func mergePackages(goPkg, patchPkg *goedit.Package, outRoot, relPath string, skipElements []string) error {
	if patchPkg == nil {
		return savePackage(goPkg, filepath.Join(outRoot, relPath))
	}

	// Remove skipped elements from goPkg
	removeElements(goPkg, skipElements)

	// Remove elements from goPkg that exist in patchPkg
	removeOverlappingElements(goPkg, patchPkg)

	// Save merged package to outRoot
	outPath := filepath.Join(outRoot, relPath)
	log.Printf("Saving merged package to: %s", outPath)
	return savePackage(goPkg, outPath)
}

func removeElements(pkg *goedit.Package, elements []string) {
	for _, file := range pkg.Files {
		ast.Inspect(file.AST, func(n ast.Node) bool {
			switch x := n.(type) {
			case *ast.GenDecl:
				if x.Tok == token.TYPE || x.Tok == token.VAR || x.Tok == token.CONST {
					x.Specs = filterSpecs(x.Specs, elements)
				}
			case *ast.FuncDecl:
				if contains(elements, x.Name.Name) {
					removeNode(file, x)
					return false
				}
			}
			return true
		})
	}
}

func removeOverlappingElements(goPkg, patchPkg *goedit.Package) {
	patchElements := getPackageElements(patchPkg)
	for _, file := range goPkg.Files {
		ast.Inspect(file.AST, func(n ast.Node) bool {
			switch x := n.(type) {
			case *ast.GenDecl:
				if x.Tok == token.TYPE || x.Tok == token.VAR || x.Tok == token.CONST {
					x.Specs = filterSpecs(x.Specs, patchElements)
				}
			case *ast.FuncDecl:
				if contains(patchElements, x.Name.Name) {
					removeNode(file, x)
					return false
				}
			}
			return true
		})
	}
}

func savePackage(pkg *goedit.Package, outDir string) error {
	if err := os.MkdirAll(outDir, 0755); err != nil {
		return err
	}
	log.Printf("Saving package to: %s", outDir)
	for _, file := range pkg.Files {
		baseName := filepath.Base(file.Name)
		outFile := filepath.Join(outDir, baseName)
		log.Printf("Saving file: %s", outFile)

		if isExist(outFile) {
			panic(fmt.Errorf("File already exists: %s", outFile))
		}

		var content []byte
		if file.EditBuf == nil {
			content = file.Contents
		} else {
			content = file.Bytes()
		}

		if err := os.WriteFile(outFile, content, 0644); err != nil {
			return err
		}
		log.Printf("Saved file: %s", outFile)
	}

	return nil
}

func filterSpecs(specs []ast.Spec, elements []string) []ast.Spec {
	filtered := make([]ast.Spec, 0, len(specs))
	for _, spec := range specs {
		switch x := spec.(type) {
		case *ast.TypeSpec:
			if !contains(elements, x.Name.Name) {
				filtered = append(filtered, spec)
			}
		case *ast.ValueSpec:
			for _, name := range x.Names {
				if !contains(elements, name.Name) {
					filtered = append(filtered, spec)
					break
				}
			}
		}
	}
	return filtered
}

func removeNode(file *goedit.File, node ast.Node) {
	file.Delete(node.Pos(), node.End())
}

func contains(slice []string, item string) bool {
	for _, s := range slice {
		if s == item {
			return true
		}
	}
	return false
}

func getPackageElements(pkg *goedit.Package) []string {
	var elements []string
	for _, file := range pkg.Files {
		ast.Inspect(file.AST, func(n ast.Node) bool {
			switch x := n.(type) {
			case *ast.TypeSpec:
				elements = append(elements, x.Name.Name)
			case *ast.FuncDecl:
				elements = append(elements, x.Name.Name)
			case *ast.ValueSpec:
				for _, name := range x.Names {
					elements = append(elements, name.Name)
				}
			}
			return true
		})
	}
	return elements
}

func hasGoFiles(dir string) bool {
	entries, err := os.ReadDir(dir)
	if err != nil {
		log.Printf("Error reading directory %s: %v", dir, err)
		return false
	}
	for _, entry := range entries {
		if !entry.IsDir() && strings.HasSuffix(entry.Name(), ".go") {
			return true
		}
	}
	return false
}

func isDir(path string) bool {
	info, err := os.Stat(path)
	return err == nil && info.IsDir()
}

func isExist(path string) bool {
	_, err := os.Stat(path)
	return err == nil
}

func copyDir(src, dst string) error {
	srcInfo, err := os.Stat(src)
	if err != nil {
		return err
	}

	if err = os.MkdirAll(dst, srcInfo.Mode()); err != nil {
		return err
	}

	return copyDirContents(src, dst)
}

func copyDirContents(src, dst string) error {
	entries, err := os.ReadDir(src)
	if err != nil {
		return err
	}

	for _, entry := range entries {
		srcPath := filepath.Join(src, entry.Name())
		dstPath := filepath.Join(dst, entry.Name())

		if entry.Type().IsRegular() {
			if err = copyFile(srcPath, dstPath); err != nil {
				return err
			}
		}
	}

	return nil
}

func copyFile(src, dst string) error {
	srcInfo, err := os.Stat(src)
	if err != nil {
		return err
	}

	if !srcInfo.Mode().IsRegular() {
		return fmt.Errorf("%s is not a regular file", src)
	}

	source, err := os.Open(src)
	if err != nil {
		return err
	}
	defer source.Close()

	destination, err := os.Create(dst)
	if err != nil {
		return err
	}
	defer destination.Close()

	if _, err = io.Copy(destination, source); err != nil {
		return err
	}

	return os.Chmod(dst, srcInfo.Mode())
}
