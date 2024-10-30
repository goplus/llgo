package main

import (
	"bufio"
	"bytes"
	"flag"
	"fmt"
	"io"
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

func runPkgs(pkgs []string, cpp bool, verbose bool) {
	wd, _ := os.Getwd()
	wg := sync.WaitGroup{}
	wg.Add(len(pkgs))
	llcppcfgArg := []string{}
	if cpp {
		llcppcfgArg = append(llcppcfgArg, "-cpp")
	}
	llcppgArg := []string{}
	if verbose {
		llcppgArg = append(llcppgArg, "-v")
	}
	runs := make([]string, 0)
	for _, pkg := range pkgs {
		dir := "./out/" + pkg
		RunCommand("mkdir", "-p", dir)
		RunCommand("cd", dir)
		curDir := wd + "/out/" + pkg
		RunCommandInDir(curDir, func(err error) {
			runs = append(runs, pkg)
			go RunCommandInDir(curDir, func(err error) {
				wg.Done()
			}, "llcppg", llcppgArg...)
		}, "llcppcfg", append(llcppcfgArg, pkg)...)
	}
	wg.Wait()
	fmt.Printf("llcppgtest run %v finished!\n", runs)
}

func randIndex(len int) int {
	r := rand.New(rand.NewSource(time.Now().UnixNano()))
	return r.Intn(len)
}

func runPkg(cpp bool, verbose bool) {
	pkgs := getPkgs()
	idx := randIndex(len(pkgs))
	pkg := pkgs[idx]
	fmt.Printf("***start test %s\n", pkg)
	runPkgs([]string{pkg}, cpp, verbose)
}

func printHelp() {
	helpString := `llcppgtest is used to test llcppg
usage: llcppgtest [-h|-r|-cpp|-a|-v] pkgname`
	fmt.Println(helpString)
	flag.PrintDefaults()
}

func main() {
	help := false
	flag.BoolVar(&help, "h", false, "print help message")
	rand := false
	flag.BoolVar(&rand, "r", false, "select one pkg of pkg-config --list-all to test")
	cpp := false
	flag.BoolVar(&cpp, "cpp", false, "if it is a cpp library")
	all := false
	flag.BoolVar(&all, "a", false, "test all pkgs of pkg-config --list-all")
	v := false
	flag.BoolVar(&v, "v", false, "enable verbose")
	flag.Parse()
	if help || len(os.Args) <= 1 {
		printHelp()
		return
	}
	if rand {
		runPkg(cpp, v)
	} else if all {
		pkgs := getPkgs()
		runPkgs(pkgs, cpp, v)
	} else {
		if len(flag.Args()) > 0 {
			arg := flag.Arg(0)
			fmt.Printf("***start test %s\n", arg)
			runPkgs([]string{arg}, cpp, v)
		} else {
			printHelp()
		}
	}
}
