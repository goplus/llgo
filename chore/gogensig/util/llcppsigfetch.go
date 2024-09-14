package util

import (
	"bytes"
	"fmt"
	"os/exec"
)

func Llcppsigfetch(file string, isTemp bool, isCPP bool) ([]byte, error) {
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
