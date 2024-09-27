package config

import (
	"encoding/json"

	cppgtypes "github.com/goplus/llgo/chore/llcppg/types"
)

func GetCppgFromPath(filePath string) (*cppgtypes.Config, error) {
	bytes, err := ReadFile(filePath)
	if err != nil {
		return nil, err
	}
	conf := &cppgtypes.Config{}
	err = json.Unmarshal(bytes, &conf)
	if err != nil {
		return nil, err
	}
	return conf, nil
}
