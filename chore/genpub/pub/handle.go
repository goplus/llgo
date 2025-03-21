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

const (
	LLPubFile      string = "llcppg.pub"
	LLMergePubFile string = "merge.llcppg.pub"
)

var SubDirs []string = []string{}

type FuncIgnoreDir func(dir, path string) bool
type FuncDoDir[T any] func(path string) T

var fnIgnoreDirs = func(dir, path string) bool {
	absDir, err := filepath.Abs(dir)
	if err != nil {
		return true
	}
	absPath, err := filepath.Abs(path)
	if err != nil {
		return true
	}
	relPath, err := filepath.Rel(absDir, absPath)
	if err != nil {
		return true
	}
	if strings.Contains(relPath, "/_") {
		return true
	}
	if strings.Contains(relPath, ".c") {
		return true
	}
	var lname string
	if relPath == "." {
		_, file := filepath.Split(absDir)
		lname = file
	} else {
		subPaths := strings.Split(relPath, string(filepath.Separator))
		if len(subPaths) > 0 {
			lname = subPaths[0]
		}
	}
	if len(SubDirs) == 0 {
		return false
	}
	for _, lib := range SubDirs {
		if lib == lname {
			return false
		}
	}
	return true
}

func DoDirs[T any](quit <-chan int, dir string, fn FuncDoDir[T], fnIgnore FuncIgnoreDir) <-chan T {
	output := make(chan T)
	go func() {
		defer close(output)
		if fnIgnore == nil {
			fnIgnore = func(dir, path string) bool {
				return true
			}
		}
		filepath.WalkDir(dir, func(path string, d fs.DirEntry, err error) error {
			if err != nil {
				return err
			}
			if d.IsDir() && !fnIgnore(dir, path) {
				msg := fn(path)
				select {
				case output <- msg:
				case <-quit:
					return errors.New("force finished")
				}
			}
			return nil
		})
	}()
	return output
}

func WritePubfile(pubFile string) {
	fmt.Println("start handle =>", pubFile)
	f, err := os.Create(pubFile)
	if err != nil {
		panic(err)
	}
	defer f.Close()
	w := bufio.NewWriter(f)
	defer func() {
		if w.Buffered() <= 0 {
			fmt.Println("write empty file for", pubFile, "remove it")
			os.Remove(pubFile)
		} else {
			w.Flush()
		}
		fmt.Println("handle finished =>", pubFile)
	}()
	DoWritePubFile(w, pubFile)
}

func PubFilenameForDir(dir string, pubFile string) string {
	absDir, err := filepath.Abs(dir)
	if err != nil {
		log.Println(err)
		return ""
	}
	info, err := os.Stat(absDir)
	if !info.IsDir() || err != nil {
		return ""
	}
	return filepath.Join(absDir, pubFile)
}

func DoDirRecursively(dir string, fn func(pubFile string)) {
	quit := make(chan int)
	defer close(quit)
	pubFiles := DoDirs[string](quit, dir, func(path string) string {
		return PubFilenameForDir(path, LLPubFile)
	}, fnIgnoreDirs)
	wg := sync.WaitGroup{}
	for pubFile := range pubFiles {
		wg.Add(1)
		go func(pub string) {
			defer wg.Done()
			fn(pub)
		}(pubFile)
	}
	wg.Wait()
}

func CleanPubfile(pubFile string) {
	_, err := os.Stat(pubFile)
	if !os.IsNotExist(err) {
		err = os.Remove(pubFile)
		if err != nil {
			log.Println(err)
		} else {
			fmt.Println("remove", pubFile, "successfully")
		}
	}
}

func CleanPubfileRecursively(dir string) {
	DoDirRecursively(dir, func(pubFile string) {
		CleanPubfile(pubFile)
	})
}

func ReadPubFiles(quit chan int, files <-chan string) <-chan []byte {
	output := make(chan []byte)
	go func() {
		defer close(output)
		var file string
		var moreData bool = true
		for moreData {
			select {
			case file, moreData = <-files:
				if moreData {
					b, err := os.ReadFile(file)
					if err == nil {
						output <- b
					} else {
						log.Println(err)
					}
				}
			case <-quit:
				return
			}
		}
	}()
	return output
}

func MergePubfilesForDir(dir string) {
	absDir, err := filepath.Abs(dir)
	if err != nil {
		log.Println(err)
		return
	}
	llcppgPubFile := PubFilenameForDir(dir, LLMergePubFile)
	MergePubfiles(llcppgPubFile, absDir)
}

func MergePubfiles(llcppgPubFileName string, dir string) {
	quit := make(chan int)
	defer close(quit)
	pubFiles := DoDirs(quit, dir, func(path string) string {
		pubFile := PubFilenameForDir(path, LLPubFile)
		return pubFile
	}, fnIgnoreDirs)
	pubFileBytes := ReadPubFiles(quit, pubFiles)
	wg := sync.WaitGroup{}
	wg.Add(1)
	go func(fileName string, input <-chan []byte) {
		defer wg.Done()
		f, err := os.Create(fileName)
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
				os.Remove(fileName)
			}
		}()
		var prev, next chan int
		for b := range input {
			next = make(chan int)
			go func(wr io.Writer, prev, next chan int) {
				if prev != nil {
					<-prev
				}
				wr.Write(b)
				if next != nil {
					close(next)
				}
			}(w, prev, next)
			prev = next
		}
		if next != nil {
			<-next
		}
	}(llcppgPubFileName, pubFileBytes)
	wg.Wait()
}

func GenAstFiles(quit chan int, dir string, fset *token.FileSet) <-chan *ast.File {
	output := make(chan *ast.File)
	go func() {
		defer close(output)
		pkgMap, err := parser.ParseDir(fset, dir, func(fi fs.FileInfo) bool {
			return !strings.HasPrefix(fi.Name(), "_") &&
				!strings.HasPrefix(fi.Name(), ".") &&
				strings.HasSuffix(fi.Name(), ".go")
		}, parser.ParseComments)
		if err != nil {
			panic(err)
		}
		for _, v := range pkgMap {
			for _, f := range v.Files {
				if ast.IsGenerated(f) {
					continue
				}
				if !ast.FileExports(f) {
					continue
				}
				select {
				case output <- f:
				case <-quit:
					return
				}
			}
		}
	}()
	return output
}

func DoWritePubFile(w io.Writer, pubFile string) {
	quit := make(chan int)
	defer func() {
		close(quit)
	}()
	fset := token.NewFileSet()
	dir := filepath.Dir(pubFile)
	astFiles := GenAstFiles(quit, dir, fset)
	var prev, next chan int
	for astFile := range astFiles {
		next = make(chan int)
		go func(wr io.Writer, file *ast.File, prev, next chan int) {
			if prev != nil {
				<-prev
			}
			pubWriter := NewPubWriter(wr, fset)
			pubWriter.WriteFile(file)
			if next != nil {
				close(next)
			}
		}(w, astFile, prev, next)
		prev = next
	}
	if next != nil {
		<-next
	}
}
