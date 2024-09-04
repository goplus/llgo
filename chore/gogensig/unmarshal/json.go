package unmarshal

import (
	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/cjson"
)

type _TypeV string

type _TypeK string

const (
	FuncDecl _TypeV = "FuncDecl"
	Ident    _TypeV = "Ident"
)

const (
	_Type _TypeK = "_Type"
)

type CJSON struct {
	Obj *cjson.JSON
}

func NewCJSON(json *cjson.JSON) *CJSON {
	return &CJSON{Obj: json}
}

func (o *CJSON) GetObjectItemCaseSensitive(k string) *CJSON {
	return &CJSON{o.Obj.GetObjectItemCaseSensitive(c.AllocaCStr(k))}
}

func (o *CJSON) GetArraySize() c.Int {
	return o.Obj.GetArraySize()
}

func (o *CJSON) GetArrayItem(i c.Int) *CJSON {
	return &CJSON{Obj: o.Obj.GetArrayItem(i)}
}

func (o *CJSON) GetStringValue(key string) string {
	k := c.AllocaCStr(key)
	return c.GoString(o.Obj.GetObjectItemCaseSensitive(k).GetStringValue())
}

func (o *CJSON) IsEqualValue(key string, value string) bool {
	k := c.AllocaCStr(key)
	s := c.GoString(o.Obj.GetObjectItemCaseSensitive(k).GetStringValue())
	return s == value
}

func (o *CJSON) IsEqualType(typeValue _TypeV) bool {
	return o.IsEqualValue(string(_Type), string(typeValue))
}

func (o *CJSON) GetBool() bool {
	if o != nil {
		boolStr := c.GoString(o.Obj.CStr())
		if boolStr == "false" {
			return false
		} else if boolStr == "true" {
			return true
		}
		return false
	}
	return false
}

func (o *CJSON) Delete() {
	o.Obj.Delete()
}
