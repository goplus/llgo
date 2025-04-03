package clibs

import (
	"bufio"
	"fmt"
	"os"
	"os/exec"
	"strings"
)

func Export(config Config, libs []*Lib) (exports []string, err error) {
	for _, lib := range libs {
		libExports, err := lib.Export(config)
		if err != nil {
			return nil, err
		}
		exports = append(exports, libExports...)
	}
	return
}

func (p *Lib) Export(config Config) (exports []string, err error) {
	if p.Config.Export == "" {
		return nil, nil
	}
	// Execute the export command using bash
	cmd := exec.Command("bash", "-e", "-c", p.Config.Export)
	cmd.Dir = p.Path
	cmd.Env = p.Env

	output, err := cmd.Output()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error executing export command: %v\n", err)
		fmt.Fprintf(os.Stderr, "command: %s\n", p.Config.Export)
		fmt.Printf("  Command output:\n%s\n", output)
		return nil, fmt.Errorf("export command failed: %v", err)
	}

	// Parse the output for key=value pairs
	scanner := bufio.NewScanner(strings.NewReader(string(output)))
	for scanner.Scan() {
		line := strings.TrimSpace(scanner.Text())
		if line == "" {
			continue
		}
		exports = append(exports, line)
	}

	if err := scanner.Err(); err != nil {
		return exports, fmt.Errorf("error scanning output: %v", err)
	}

	return exports, nil
}
