//go:build !llgo

package main

import (
	"encoding/json"
	"os"
	"os/exec"
	"path/filepath"
	"strings"
	"testing"
)

func TestWorkspaceCommandErrors(t *testing.T) {
	if value := os.Getenv("LLGO_TEST_WORKSPACE_ARGS"); value != "" {
		var args []string
		if err := json.Unmarshal([]byte(value), &args); err != nil {
			t.Fatal(err)
		}
		os.Args = append([]string{"llgo"}, args...)
		main()
		os.Exit(0)
	}
	self, err := os.Executable()
	if err != nil {
		t.Fatal(err)
	}
	dir := t.TempDir()
	if err := os.WriteFile(filepath.Join(dir, "go.mod"), []byte("module example.com/flags\ngo 1.20\n"), 0600); err != nil {
		t.Fatal(err)
	}
	if err := os.WriteFile(filepath.Join(dir, "go.work"), []byte("go 1.27.0\nuse .\n"), 0600); err != nil {
		t.Fatal(err)
	}
	t.Setenv("GOENV", "off")
	t.Setenv("GOFLAGS", "")
	t.Setenv("GOTOOLCHAIN", "local")
	t.Setenv("GOWORK", filepath.Join(dir, "go.work"))
	for _, command := range []string{"build", "run", "install", "test"} {
		for _, tc := range []struct {
			args []string
			code int
			want string
		}{
			{[]string{"-unknown-workspace-flag"}, 1, "flag provided but not defined"},
			{[]string{"-mod"}, 1, "flag needs an argument"},
			{[]string{"-h"}, 0, "Usage"},
			{[]string{"-mod=mod", "."}, 1, "workspace"},
			{[]string{"-mod", "mod", "."}, 1, "workspace"},
		} {
			t.Run(command+"/"+strings.Join(tc.args, " "), func(t *testing.T) {
				args, _ := json.Marshal(append([]string{command}, tc.args...))
				t.Setenv("LLGO_TEST_WORKSPACE_ARGS", string(args))
				cmd := exec.Command(self, "-test.run=^TestWorkspaceCommandErrors$")
				cmd.Dir = dir
				output, err := cmd.CombinedOutput()
				code := 0
				if err != nil {
					if exit, ok := err.(*exec.ExitError); ok {
						code = exit.ExitCode()
					} else {
						t.Fatal(err)
					}
				}
				if code != tc.code || !strings.Contains(string(output), tc.want) {
					t.Fatalf("%s %v: exit %d, want %d; output %s", command, tc.args, code, tc.code, output)
				}
				if strings.HasPrefix(tc.want, "flag ") && strings.Count(string(output), tc.want) != 1 {
					t.Fatalf("%s %v: want one flag diagnostic; output %s", command, tc.args, output)
				}
			})
		}
	}
}
