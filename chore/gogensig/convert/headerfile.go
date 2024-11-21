package convert

import (
	"fmt"
	"log"

	"github.com/goplus/llgo/chore/gogensig/convert/names"
)

type HeaderFile struct {
	file         string
	incPath      string
	isHeaderFile bool
	inCurPkg     bool
	isSys        bool
	sysIncPath   string
}

func (p *HeaderFile) setSysIncPath(isSys bool, incPath string) error {
	if isSys {
		if incPath == "" {
			return fmt.Errorf("system header file %s has no include path", p.file)
		}
		p.sysIncPath = incPath
		if debug {
			log.Printf("%s is a system header file,include path: %s\n", p.file, incPath)
		}
		return nil
	}
	return nil
}

func (p *HeaderFile) ToGoFileName() string {
	var fileName string
	if p.isHeaderFile {
		// path to go filename
		fileName = names.HeaderFileToGo(p.file)
	} else {
		// package name as the default file
		fileName = p.file + ".go"
	}
	return fileName
}

func NewHeaderFile(file string, incPath string, isHeaderFile bool, inCurPkg bool, isSys bool) (*HeaderFile, error) {
	p := &HeaderFile{file: file, incPath: incPath, isHeaderFile: isHeaderFile, inCurPkg: inCurPkg, isSys: isSys}
	err := p.setSysIncPath(isSys, incPath)
	return p, err
}
