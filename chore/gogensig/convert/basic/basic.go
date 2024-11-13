package basic

import (
	"github.com/goplus/llgo/chore/gogensig/convert"
	"github.com/goplus/llgo/chore/gogensig/processor"
	"github.com/goplus/llgo/chore/gogensig/unmarshal"
	"github.com/goplus/llgo/chore/gogensig/visitor"
)

// For a default full convert processing,for main logic
type Config struct {
	convert.AstConvertConfig
}

func ConvertProcesser(cfg *Config) (*processor.DocFileSetProcessor, *convert.Package, error) {
	astConvert, err := convert.NewAstConvert(&convert.AstConvertConfig{
		PkgName:   cfg.PkgName,
		SymbFile:  cfg.SymbFile,
		CfgFile:   cfg.CfgFile,
		OutputDir: cfg.OutputDir,
		PubFile:   cfg.PubFile,
	})
	if err != nil {
		return nil, nil, err
	}
	docVisitors := []visitor.DocVisitor{astConvert}
	visitorManager := processor.NewDocVisitorManager(docVisitors)

	return processor.NewDocFileSetProcessor(&processor.ProcesserConfig{
		Exec: func(file *unmarshal.FileEntry) error {
			visitorManager.Visit(file.Doc, file.Path, file.IsSys)
			return nil
		},
		DepIncs: astConvert.Pkg.AllDepIncs(),
		Done: func() {
			astConvert.WriteLinkFile()
			astConvert.WritePubFile()
		},
	}), astConvert.Pkg, nil
}
