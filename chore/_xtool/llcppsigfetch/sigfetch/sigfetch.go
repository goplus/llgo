package sigfetch

import (
	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/cjson"
	"github.com/goplus/llgo/chore/_xtool/llcppsigfetch/parse"
)

func Do(content string) (string, error) {
	converter, err := parse.NewConverter(&parse.Config{
		File: content,
		Temp: true,
	})
	if err != nil {
		return "", err
	}
	_, err = converter.Convert()
	if err != nil {
		return "", err
	}
	result := converter.MarshalASTFiles()
	cstr := result.Print()
	str := c.GoString(cstr)
	cjson.FreeCStr(cstr)
	result.Delete()
	converter.Dispose()
	return str, nil
}
