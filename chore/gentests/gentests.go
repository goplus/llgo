/*
 * Copyright (c) 2024 The GoPlus Authors (goplus.org). All rights reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package main

import (
	"bytes"
	"fmt"
	"os"
	"os/exec"
	"path/filepath"
	"runtime"
	"strconv"
	"strings"
	"sync"

	"github.com/goplus/mod"
)

var (
	llgoBin  string
	llgenBin string
)

func main() {
	dir, _, err := mod.FindGoMod(".")
	check(err)
	llgoBin = ensureLLGoBinary(dir)
	llgenBin = ensureLLGenBinary(dir)

	llgenDir(dir + "/cl/_testcall")
	llgenDir(dir + "/cl/_testlibc")
	llgenDir(dir + "/cl/_testlibgo")
	llgenDir(dir + "/cl/_testrt")
	llgenDir(dir + "/cl/_testgo")
	llgenDir(dir + "/cl/_testpy")
	llgenDir(dir + "/cl/_testdata")

	genExpects(dir)
}

func llgenDir(dir string) {
	fis, err := os.ReadDir(dir)
	check(err)
	type task struct {
		relPath string
		testDir string
	}
	tasks := make([]task, 0, len(fis))
	for _, fi := range fis {
		name := fi.Name()
		if !fi.IsDir() || strings.HasPrefix(name, "_") {
			continue
		}
		testDir := dir + "/" + name
		tasks = append(tasks, task{
			relPath: filepath.ToSlash(testDir),
			testDir: testDir,
		})
	}
	if len(tasks) == 0 {
		return
	}
	workerCount := gentestWorkers(len(tasks))
	workCh := make(chan task)
	var wg sync.WaitGroup
	for i := 0; i < workerCount; i++ {
		wg.Add(1)
		go func() {
			defer wg.Done()
			for t := range workCh {
				if err := runLLGen(t.testDir); err != nil {
					fmt.Fprintln(os.Stderr, "error:", t.relPath, err)
				}
			}
		}()
	}
	for _, t := range tasks {
		fmt.Fprintln(os.Stderr, "llgen", t.relPath)
		workCh <- t
	}
	close(workCh)
	wg.Wait()
}

func genExpects(root string) {
	runExpectDir(root, "cl/_testcall")
	runExpectDir(root, "cl/_testlibc")
	runExpectDir(root, "cl/_testlibgo")
	runExpectDir(root, "cl/_testrt")
	runExpectDir(root, "cl/_testgo")
	runExpectDir(root, "cl/_testpy")
	runExpectDir(root, "cl/_testdata")
}

func runExpectDir(root, relDir string) {
	dir := filepath.Join(root, relDir)
	fis, err := os.ReadDir(dir)
	check(err)
	type task struct {
		relPath string
		testDir string
	}
	tasks := make([]task, 0, len(fis))
	for _, fi := range fis {
		name := fi.Name()
		if !fi.IsDir() || strings.HasPrefix(name, "_") {
			continue
		}
		relPath := filepath.ToSlash(filepath.Join(relDir, name))
		testDir := filepath.Join(dir, name)
		if shouldSkipExpect(testDir) {
			continue
		}
		tasks = append(tasks, task{relPath: relPath, testDir: testDir})
	}
	if len(tasks) == 0 {
		return
	}

	workerCount := gentestWorkers(len(tasks))
	workCh := make(chan task)
	var wg sync.WaitGroup
	for i := 0; i < workerCount; i++ {
		wg.Add(1)
		go func() {
			defer wg.Done()
			for t := range workCh {
				output, err := runExpect(t.testDir)
				if err != nil {
					fmt.Fprintln(os.Stderr, "error:", t.relPath, err)
					output = []byte{';'}
				}
				check(os.WriteFile(filepath.Join(t.testDir, "expect.txt"), output, 0644))
			}
		}()
	}
	for _, t := range tasks {
		fmt.Fprintln(os.Stderr, "expect", t.relPath)
		workCh <- t
	}
	close(workCh)
	wg.Wait()
}

func runExpect(pkgDir string) ([]byte, error) {
	cacheDir, err := os.MkdirTemp("", "llgo-gocache-*")
	if err != nil {
		return nil, err
	}
	defer os.RemoveAll(cacheDir)

	relPkg := "."
	if _, err := os.Stat(filepath.Join(pkgDir, "in.go")); err == nil {
		relPkg = "in.go"
	} else if _, err := os.Stat(filepath.Join(pkgDir, "main.go")); err == nil {
		relPkg = "main.go"
	}

	args := []string{"run", "-a", relPkg}
	cmd := exec.Command(llgoBin, args...)
	cmd.Dir = pkgDir
	cmd.Env = append(os.Environ(),
		"GOCACHE="+cacheDir,
		"LLGO_BUILD_CACHE=off",
	)
	output, err := cmd.CombinedOutput()
	output = filterExpectOutput(output)
	if err != nil {
		return output, fmt.Errorf("run failed: %w", err)
	}
	return output, nil
}

func shouldSkipExpect(testDir string) bool {
	data, err := os.ReadFile(filepath.Join(testDir, "expect.txt"))
	if err != nil {
		return false
	}
	trimmed := bytes.TrimSpace(data)
	return bytes.Equal(trimmed, []byte(";"))
}

func filterExpectOutput(output []byte) []byte {
	var filtered []byte
	for _, line := range bytes.Split(output, []byte("\n")) {
		if bytes.HasPrefix(line, []byte("ld64.lld: warning:")) {
			continue
		}
		if bytes.HasPrefix(line, []byte("WARNING: Using LLGO root for devel:")) {
			continue
		}
		if len(filtered) > 0 || len(line) > 0 {
			if len(filtered) > 0 {
				filtered = append(filtered, '\n')
			}
			filtered = append(filtered, line...)
		}
	}
	return filtered
}

func gentestWorkers(taskCount int) int {
	if taskCount <= 1 {
		return 1
	}
	if v := strings.TrimSpace(os.Getenv("LLGO_GENTESTS_JOBS")); v != "" {
		if n, err := strconv.Atoi(v); err == nil && n > 0 {
			if n > taskCount {
				return taskCount
			}
			return n
		}
	}
	n := runtime.GOMAXPROCS(0)
	if n < 1 {
		n = 1
	}
	if n > taskCount {
		return taskCount
	}
	return n
}

func ensureLLGoBinary(root string) string {
	gobin := strings.TrimSpace(goEnv(root, "GOBIN"))
	if gobin == "" {
		gopath := strings.TrimSpace(goEnv(root, "GOPATH"))
		if gopath == "" {
			panic("GOBIN and GOPATH are both empty")
		}
		gopath = strings.Split(gopath, string(os.PathListSeparator))[0]
		gobin = filepath.Join(gopath, "bin")
	}
	exe := "llgo"
	if runtime.GOOS == "windows" {
		exe += ".exe"
	}
	path := filepath.Join(gobin, exe)
	cmd := exec.Command("go", "install", "-tags=dev", "./cmd/llgo")
	cmd.Dir = root
	cmd.Stdout = os.Stdout
	cmd.Stderr = os.Stderr
	check(cmd.Run())
	return path
}

func ensureLLGenBinary(root string) string {
	gobin := strings.TrimSpace(goEnv(root, "GOBIN"))
	if gobin == "" {
		gopath := strings.TrimSpace(goEnv(root, "GOPATH"))
		if gopath == "" {
			panic("GOBIN and GOPATH are both empty")
		}
		gopath = strings.Split(gopath, string(os.PathListSeparator))[0]
		gobin = filepath.Join(gopath, "bin")
	}
	exe := "llgen"
	if runtime.GOOS == "windows" {
		exe += ".exe"
	}
	path := filepath.Join(gobin, exe)
	cmd := exec.Command("go", "install", "./chore/llgen")
	cmd.Dir = root
	cmd.Stdout = os.Stdout
	cmd.Stderr = os.Stderr
	check(cmd.Run())
	return path
}

func runLLGen(testDir string) error {
	cmd := exec.Command(llgenBin, ".")
	cmd.Dir = testDir
	cmd.Stdout = os.Stdout
	cmd.Stderr = os.Stderr
	return cmd.Run()
}

func goEnv(root, key string) string {
	cmd := exec.Command("go", "env", key)
	cmd.Dir = root
	out, err := cmd.Output()
	check(err)
	return string(bytes.TrimSpace(out))
}

func check(err error) {
	if err != nil {
		panic(err)
	}
}
