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

func (o *CJSON) Delete() {
	o.Obj.Delete()
}

func IsEqualString(o *CJSON, key _TypeK, v _TypeV) bool {
	k := c.AllocaCStr(string(key))
	s := c.GoString(o.Obj.GetObjectItemCaseSensitive(k).GetStringValue())
	return s == string(v)
}

func ParseBool(boolObj *CJSON) bool {
	if boolObj != nil {
		boolStr := c.GoString(boolObj.Obj.CStr())
		if boolStr == "false" {
			return false
		} else if boolStr == "true" {
			return true
		}
		return false
	}
	return false
}
