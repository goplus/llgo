package main

import (
	"bufio"
	"bytes"
	"fmt"
	"io"
	"log"
	"math/rand"
	"os"
	"os/exec"
	"sync"
	"time"
)

func RunCommandWithOut(out *io.PipeWriter, dir, cmdName string, args ...string) {
	defer out.Close()
	cmd := exec.Command(cmdName, args...)
	cmd.Stdout = out
	cmd.Stderr = os.Stderr
	cmd.Stdin = os.Stdin
	cmd.Dir = dir
	err := cmd.Run()
	if err != nil {
		panic(err)
	}
}

func RunCommandInDir(dir string, done func(error), name string, args ...string) error {
	cmd := exec.Command(name, args...)
	cmd.Stdin = os.Stdin
	cmd.Stderr = os.Stderr
	cmd.Stdout = os.Stdout
	cmd.Dir = dir
	err := cmd.Run()
	if done != nil {
		done(err)
	}
	return err
}

func RunCommand(name string, args ...string) error {
	cmd := exec.Command(name, args...)
	cmd.Stdin = os.Stdin
	cmd.Stderr = os.Stderr
	cmd.Stdout = os.Stdout
	return cmd.Run()
}

func PkgList(r io.Reader) ([]string, error) {
	pkgs := make([]string, 0)
	scan := bufio.NewScanner(r)
	for scan.Scan() {
		lineBuf := bytes.NewBufferString(scan.Text())
		lineScan := bufio.NewScanner(lineBuf)
		lineScan.Split(bufio.ScanWords)
		firstWord := ""
		for lineScan.Scan() {
			text := lineScan.Text()
			if len(firstWord) <= 0 {
				firstWord = text
				pkgs = append(pkgs, firstWord)
			}
		}
	}
	return pkgs, nil
}

func getPkgs() []string {
	wd, _ := os.Getwd()
	r, w := io.Pipe()
	go RunCommandWithOut(w, wd, "pkg-config", "--list-all")
	pkgs, _ := PkgList(r)
	return pkgs
}

func runPkgs(pkgs []string) {
	wd, _ := os.Getwd()
	wg := sync.WaitGroup{}
	wg.Add(len(pkgs))
	for _, pkg := range pkgs {
		dir := "./out/" + pkg
		RunCommand("mkdir", "-p", dir)
		RunCommand("cd", dir)
		curDir := wd + "/out/" + pkg
		RunCommandInDir(curDir, func(err error) {
			go RunCommandInDir(curDir, func(err error) {
				wg.Done()
				if err != nil {
					log.Fatalf("\n---Run llcppg in %s fail!---\n", curDir)
				}
			}, "llcppg")
		}, "llcppcfg", pkg)
	}
	wg.Wait()
	fmt.Printf("llcppgtest run %v finished!\n", pkgs)
}

func randIndex(len int) int {
	r := rand.New(rand.NewSource(time.Now().UnixNano()))
	return r.Intn(len)
}

func runPkg() {
	pkgs := getPkgs()
	idx := randIndex(len(pkgs))
	pkg := pkgs[idx]
	runPkgs([]string{pkg})
}

func main() {
	runPkg()
}
