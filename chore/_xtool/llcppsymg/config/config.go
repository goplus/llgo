package config

import (
	"errors"
	"unsafe"

	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/cjson"
	"github.com/goplus/llgo/chore/llcppg/types"
)

type Conf struct {
	*cjson.JSON
	*types.Config
}

func GetConf(data []byte) (Conf, error) {
	parsedConf := cjson.ParseBytes(data)
	if parsedConf == nil {
		return Conf{}, errors.New("failed to parse config")
	}

	config := &types.Config{
		Name:         GetStringItem(parsedConf, "name", ""),
		CFlags:       GetStringItem(parsedConf, "cflags", ""),
		Libs:         GetStringItem(parsedConf, "libs", ""),
		Include:      GetStringArrayItem(parsedConf, "include"),
		TrimPrefixes: GetStringArrayItem(parsedConf, "trimPrefixes"),
		Cplusplus:    GetBoolItem(parsedConf, "cplusplus"),
	}

	return Conf{
		JSON:   parsedConf,
		Config: config,
	}, nil
}

func GetString(obj *cjson.JSON) (value string) {
	str := obj.GetStringValue()
	return unsafe.String((*byte)(unsafe.Pointer(str)), c.Strlen(str))
}

func GetStringItem(obj *cjson.JSON, key string, defval string) (value string) {
	item := obj.GetObjectItemCaseSensitive(c.AllocaCStr(key))
	if item == nil {
		return defval
	}
	return GetString(item)
}

func GetStringArrayItem(obj *cjson.JSON, key string) (value []string) {
	item := obj.GetObjectItemCaseSensitive(c.AllocaCStr(key))
	if item == nil {
		return
	}
	value = make([]string, item.GetArraySize())
	for i := range value {
		value[i] = GetString(item.GetArrayItem(c.Int(i)))
	}
	return
}

func GetBoolItem(obj *cjson.JSON, key string) bool {
	item := obj.GetObjectItemCaseSensitive(c.AllocaCStr(key))
	if item == nil {
		return false
	}
	if item.IsBool() != 0 {
		return item.IsTrue() != 0
	}
	return false
}
