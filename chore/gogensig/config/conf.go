package config

import (
	"bytes"
	"encoding/json"
	"fmt"
	"io"
	"os"
	"os/exec"
	"sort"
	"strings"

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

// llcppg.pub
func GetPubFromPath(filePath string) (map[string]string, error) {
	return ReadPubFile(filePath)
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
		return nil, fmt.Errorf("error running llcppsigfetch: %v\nStderr: %s\nArgs: %s", err, stderr.String(), strings.Join(args, " "))
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

func ReadPubFile(pubfile string) (ret map[string]string, err error) {
	b, err := os.ReadFile(pubfile)
	if err != nil {
		if os.IsNotExist(err) {
			return make(map[string]string), nil
		}
		return
	}

	text := string(b)
	lines := strings.Split(text, "\n")
	ret = make(map[string]string, len(lines))
	for i, line := range lines {
		flds := strings.Fields(line)
		goName := ""
		switch len(flds) {
		case 1:
		case 2:
			goName = flds[1]
		case 0:
			continue
		default:
			err = fmt.Errorf("%s:%d: too many fields", pubfile, i+1)
			return
		}
		ret[flds[0]] = goName
	}
	return
}

func WritePubFile(file string, public map[string]string) (err error) {
	if len(public) == 0 {
		return
	}
	f, err := os.Create(file)
	if err != nil {
		return
	}
	defer f.Close()
	ret := make([]string, 0, len(public))
	for name, goName := range public {
		if goName == "" {
			ret = append(ret, name)
		} else {
			ret = append(ret, name+" "+goName)
		}
	}
	sort.Strings(ret)
	_, err = f.WriteString(strings.Join(ret, "\n"))
	return
}

func RunCommand(dir, cmdName string, args ...string) error {
	execCmd := exec.Command(cmdName, args...)
	execCmd.Stdout = os.Stdout
	execCmd.Stderr = os.Stderr
	execCmd.Dir = dir
	return execCmd.Run()
}
