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
	"unicode"
)

type LLCppConfig struct {
	Name         string   `json:"name"`
	Cflags       string   `json:"cflags"`
	Include      []string `json:"include"`
	Libs         string   `json:"libs"`
	TrimPrefixes []string `json:"trimPrefixes"`
	ReplPrefixes []string `json:"replPrefixes"`
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

func expandString(str string) string {
	return os.Expand(str, func(s string) string {
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
}

func expandCflags(str string, fn func(s string) bool) (includes []string, flags string) {
	list := strings.FieldsFunc(str, func(r rune) bool {
		return unicode.IsSpace(r)
	})
	contains := make(map[string]string, 0)
	for _, l := range list {
		trimStr := strings.TrimPrefix(l, "-I")
		trimStr += "/"
		filepath.WalkDir(trimStr, func(path string, d fs.DirEntry, err error) error {
			if err != nil {
				return err
			}
			if d.IsDir() {
				return nil
			}
			if !fn(d.Name()) {
				return nil
			}
			_, ok := contains[path]
			if !ok {
				relPath, err := filepath.Rel(trimStr, path)
				if err == nil {
					contains[path] = relPath
				} else {
					contains[path] = d.Name()
				}
			}
			return nil
		})
	}

	includeMap := make(map[string]struct{})
	for path, relPath := range contains {
		includeDir, found := strings.CutSuffix(path, relPath)
		if found {
			includeMap[includeDir] = struct{}{}
		}
		includes = append(includes, relPath)
	}
	var flagsBuilder strings.Builder
	for include := range includeMap {
		if flagsBuilder.Len() > 0 {
			flagsBuilder.WriteRune(' ')
		}
		flagsBuilder.WriteString("-I" + include)
	}
	flags = flagsBuilder.String()
	return
}

func NewLLCppConfig(name string, isCpp bool) *LLCppConfig {
	cfg := &LLCppConfig{
		Name: name,
	}
	cfg.Cflags = fmt.Sprintf("$(pkg-config --cflags %s)", name)
	cfg.Libs = fmt.Sprintf("$(pkg-config --libs %s)", name)
	cfg.TrimPrefixes = []string{}
	cfg.ReplPrefixes = []string{}
	cfg.Cplusplus = isCpp
	cfg.Include = []string{}
	Cflags := fmt.Sprintf("${pkg-config --cflags %s}", name)
	cflags := expandString(Cflags)
	retIncludes, retCflags := expandCflags(cflags, func(s string) bool {
		ext := filepath.Ext(s)
		return ext == ".h" || ext == ".hpp"
	})
	cfg.Include = retIncludes
	if len(retCflags) > 0 {
		cflags = retCflags
	}
	// expand Cflags and Libs
	cfg.Cflags = strings.TrimLeft(strings.TrimRight(cflags, " \t\r\n"), " \t\r\n")
	Libs := fmt.Sprintf("${pkg-config --libs %s}", name)
	libs := expandString(Libs)
	cfg.Libs = strings.TrimLeft(strings.TrimRight(libs, " \t\r\n"), " \t\r\n")
	return cfg
}

func GenCfg(name string, cpp bool) (*bytes.Buffer, error) {
	if len(name) <= 0 {
		return nil, fmt.Errorf("name can't be empty")
	}
	cfg := NewLLCppConfig(name, cpp)
	buf := bytes.NewBuffer([]byte{})
	jsonEncoder := json.NewEncoder(buf)
	jsonEncoder.SetIndent("", "\t")
	err := jsonEncoder.Encode(cfg)
	if err != nil {
		return nil, err
	}
	return buf, nil
}
