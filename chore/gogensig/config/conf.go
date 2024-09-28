package config

import (
	"bytes"
	"encoding/json"
	"fmt"
	"io"
	"os"
	"os/exec"

	"github.com/goplus/llgo/chore/gogensig/unmarshal"
	cppgtypes "github.com/goplus/llgo/chore/llcppg/types"
)

// llcppg.cfg
func GetCppgCfgFromPath(filePath string) (*cppgtypes.Config, error) {
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

func GetCppgSigfetchFromByte(data []byte) (unmarshal.FileSet, error) {
	return unmarshal.UnmarshalFileSet(data)
}

// calls the installed llcppsigfetch to simulate the output of llcppsigfetch.
func Sigfetch(file string, isTemp bool, isCPP bool) ([]byte, error) {
	args := []string{"--extract", file}

	if isTemp {
		args = append(args, "-temp=true")
	}

	if isCPP {
		args = append(args, "-cpp=true")
	} else {
		args = append(args, "-cpp=false")
	}

	cmd := exec.Command("llcppsigfetch", args...)

	var out bytes.Buffer
	var stderr bytes.Buffer
	cmd.Stdout = &out
	cmd.Stderr = &stderr

	err := cmd.Run()
	if err != nil {
		return nil, fmt.Errorf("error running llcppsigfetch: %v\nStderr: %s", err, stderr.String())
	}

	return out.Bytes(), nil
}

func ReadFile(filePath string) ([]byte, error) {
	jsonFile, err := os.Open(filePath)
	if err != nil {
		return nil, err
	}
	defer jsonFile.Close()
	return io.ReadAll(jsonFile)
}
