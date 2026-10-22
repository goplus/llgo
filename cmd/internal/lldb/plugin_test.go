// Copyright (c) 2026 The XGo Authors (xgo.dev). All rights reserved.
// Licensed under the Apache License, Version 2.0.

package lldb

import (
	"os"
	"os/exec"
	"testing"
)

func TestPythonPluginRegression(t *testing.T) {
	var python string
	for _, name := range []string{"python3", "python"} {
		if path, err := exec.LookPath(name); err == nil {
			python = path
			break
		}
	}
	if python == "" {
		t.Skip("Python is unavailable")
	}
	command := exec.Command(python, "plugin_test.py")
	command.Env = append(os.Environ(), "PYTHONDONTWRITEBYTECODE=1")
	if output, err := command.CombinedOutput(); err != nil {
		t.Fatalf("Python plugin regression: %v\n%s", err, output)
	}
}
