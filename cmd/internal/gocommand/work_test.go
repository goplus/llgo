package gocommand

import (
	"archive/zip"
	"bytes"
	"encoding/json"
	"net/url"
	"os"
	"path/filepath"
	"runtime"
	"strings"
	"testing"
)

func TestWorkMaintenanceVersionSelection(t *testing.T) {
	root := filepath.Join(t.TempDir(), "work with spaces")
	proxy := filepath.Join(root, "proxy")
	const dependency = "example.com/workdep"
	write := func(name, content string) {
		t.Helper()
		path := filepath.Join(root, filepath.FromSlash(name))
		if err := os.MkdirAll(filepath.Dir(path), 0755); err != nil {
			t.Fatal(err)
		}
		if err := os.WriteFile(path, []byte(content), 0600); err != nil {
			t.Fatal(err)
		}
	}
	for _, version := range []string{"v1.0.0", "v1.1.0"} {
		mod := "module " + dependency + "\ngo 1.20\n"
		write("proxy/"+dependency+"/@v/"+version+".mod", mod)
		write("proxy/"+dependency+"/@v/"+version+".info", `{"Version":"`+version+`"}`)
		var data bytes.Buffer
		zw := zip.NewWriter(&data)
		for name, source := range map[string]string{"go.mod": mod, "dep.go": "package dep\nconst Version=\"" + version + "\"\n"} {
			file, err := zw.Create(dependency + "@" + version + "/" + name)
			if err != nil {
				t.Fatal(err)
			}
			if _, err := file.Write([]byte(source)); err != nil {
				t.Fatal(err)
			}
		}
		if err := zw.Close(); err != nil {
			t.Fatal(err)
		}
		write("proxy/"+dependency+"/@v/"+version+".zip", data.String())
	}
	write("proxy/"+dependency+"/@v/list", "v1.0.0\nv1.1.0\n")
	write("a/go.mod", "module example.com/worka\ngo 1.20\nrequire "+dependency+" v1.0.0\n")
	write("a/a.go", "package a\nimport \""+dependency+"\"\nconst Version=dep.Version\n")
	write("group/b/go.mod", "module example.com/workb\ngo 1.20\nrequire "+dependency+" v1.1.0\n")
	write("group/b/b.go", "package b\nimport \""+dependency+"\"\nconst Version=dep.Version\n")
	proxyPath := filepath.ToSlash(proxy)
	if runtime.GOOS == "windows" {
		proxyPath = "/" + proxyPath
	}
	t.Setenv("GOPROXY", (&url.URL{Scheme: "file", Path: proxyPath}).String())
	t.Setenv("GOSUMDB", "off")
	t.Setenv("GOMODCACHE", filepath.Join(root, "modcache"))
	t.Setenv("GOENV", "off")
	t.Setenv("GOFLAGS", "-modcacherw")
	t.Setenv("GOWORK", "")
	t.Setenv("GOTOOLCHAIN", "local")
	t.Chdir(root)
	run := func(command string, args ...string) string {
		t.Helper()
		var out bytes.Buffer
		if err := (Invocation{Command: command, Args: args, Stdout: &out, Stderr: &out}).Run(); err != nil {
			t.Fatalf("%s %v: %v\n%s", command, args, err, &out)
		}
		return out.String()
	}
	run("work", "init", "./a")
	run("work", "use", "-r", "./group")
	var work struct {
		Use []struct{ DiskPath string }
	}
	if err := json.Unmarshal([]byte(run("work", "edit", "-json")), &work); err != nil || len(work.Use) != 2 {
		t.Fatalf("work use -r: %+v, %v", work, err)
	}
	if output := run("list", "-m", dependency); !strings.Contains(output, "v1.1.0") {
		t.Fatalf("workspace version selection: %s", output)
	}
	run("work", "sync")
	mod, err := os.ReadFile(filepath.Join(root, "a", "go.mod"))
	if err != nil || !strings.Contains(string(mod), dependency+" v1.1.0") {
		t.Fatalf("work sync did not upgrade member requirement: %s, %v", mod, err)
	}
	sums, err := os.ReadFile(filepath.Join(root, "go.work.sum"))
	if err != nil || !strings.Contains(string(sums), dependency+" v1.0.0/go.mod h1:") {
		t.Fatalf("workspace checksum for pre-sync module graph: %s, %v", sums, err)
	}
	run("work", "vendor")
	vendored, err := os.ReadFile(filepath.Join(root, "vendor", "example.com", "workdep", "dep.go"))
	if err != nil || !strings.Contains(string(vendored), "v1.1.0") {
		t.Fatalf("workspace vendor did not retain selected version: %s, %v", vendored, err)
	}
	run("work", "edit", "-dropuse=./group/b")
	if output := run("work", "edit", "-json"); strings.Contains(output, "./group/b") {
		t.Fatalf("work edit did not remove member: %s", output)
	}
}
