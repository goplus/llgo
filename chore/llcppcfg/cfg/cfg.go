package cfg

import (
	"bytes"
	"encoding/json"
	"fmt"
	"io/fs"
	"os"
	"os/exec"
	"path/filepath"
	"strings"
)

type LLCppConfig struct {
	Name         string   `json:"name"`
	Cflags       string   `json:"cflags"`
	Include      []string `json:"include"`
	Libs         string   `json:"libs"`
	TrimPrefixes []string `json:"trimPrefixes"`
	Cplusplus    bool     `json:"cplusplus"`
}

func CmdOutString(cmd *exec.Cmd) (string, error) {
	outBuf := bytes.NewBufferString("")
	cmd.Stdin = os.Stdin
	cmd.Stdout = outBuf
	err := cmd.Run()
	if err != nil {
		return outBuf.String(), err
	}
	return outBuf.String(), nil
}

func NewLLCppConfig(name string, isCpp bool) *LLCppConfig {
	cfg := &LLCppConfig{
		Name: name,
	}
	cfg.Cflags = fmt.Sprintf("${pkg-config --cflags %s}", name)
	cfg.Libs = fmt.Sprintf("${pkg-config --libs %s}", name)
	cfg.TrimPrefixes = []string{}
	cfg.Cplusplus = isCpp
	cfg.Include = []string{}
	cflags := os.Expand(cfg.Cflags, func(s string) string {
		args := strings.Fields(s)
		if len(args) <= 0 {
			return ""
		}
		outString, err := CmdOutString(exec.Command(args[0], args[1:]...))
		if err != nil {
			return ""
		}
		return outString
	})
	includes := strings.FieldsFunc(cflags, func(r rune) bool {
		return r == '\n'
	})
	for _, include := range includes {
		trimInclude := strings.TrimPrefix(include, "-I")
		trimInclude += "/"
		filepath.WalkDir(trimInclude, func(path string, d fs.DirEntry, err error) error {
			if err != nil {
				return err
			}
			if d.IsDir() {
				return nil
			}
			ext := filepath.Ext(d.Name())
			if ext != ".h" && ext != ".hpp" {
				return nil
			}
			cfg.Include = append(cfg.Include, path)
			return nil
		})
	}
	return cfg
}

func GenCfg(name string) (*bytes.Buffer, error) {
	if len(name) <= 0 {
		return nil, fmt.Errorf("name can't be empty")
	}
	cfg := NewLLCppConfig(name, true)
	buf := bytes.NewBuffer([]byte{})
	jsonEncoder := json.NewEncoder(buf)
	jsonEncoder.SetIndent("", "\t")
	err := jsonEncoder.Encode(cfg)
	if err != nil {
		return nil, err
	}
	return buf, nil
}
