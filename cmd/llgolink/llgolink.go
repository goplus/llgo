package main

import (
	"flag"
	"fmt"
	"log"
	"os"
	"strings"

	"github.com/goplus/llgo/xtool/clang"
	"github.com/goplus/llgo/xtool/env/llvm"
)

func main() {
	w, err := os.OpenFile("/tmp/llgolink.log", os.O_CREATE|os.O_WRONLY|os.O_APPEND, 0644)
	if err != nil {
		log.Fatalf("Error opening log file: %v\n", err)
	}
	log.SetOutput(w)
	log.SetFlags(0)
	log.SetPrefix("llgolink: ")

	fmt.Fprintf(os.Stderr, "args: %s\n", os.Args)
	// Define command-line flags
	output := flag.String("o", "", "output file")
	importcfg := flag.String("importcfg", "", "import configuration file")
	buildmode := flag.String("buildmode", "", "build mode")
	buildid := flag.String("buildid", "", "build ID")
	extld := flag.String("extld", "", "external linker")
	printVersion := flag.String("V", "no", "print version and exit")

	flag.Parse()

	if *printVersion != "no" {
		fmt.Printf("link version go1.20.14\n")
		return
	}

	files := flag.Args()

	// Print parsed arguments (for debugging purposes)
	fmt.Printf("Output: %s\n", *output)
	fmt.Printf("Import config: %s\n", *importcfg)
	fmt.Printf("Build mode: %s\n", *buildmode)
	fmt.Printf("Build ID: %s\n", *buildid)
	fmt.Printf("External linker: %s\n", *extld)
	fmt.Printf("Files: %s\n", strings.Join(files, " "))

	if *buildmode != "exe" {
		log.Fatalf("Unsupported build mode: %s\n", *buildmode)
	}

	env := llvm.New("")
	os.Setenv("PATH", env.BinDir()+":"+os.Getenv("PATH"))

	pkgs, err := getPkgs(*importcfg)
	if err != nil {
		log.Fatalf("Error getting packages: %v\n", err)
	}
	tempFiles := []string{}
	files = append(files, pkgs...)
	for _, file := range files {
		if strings.HasSuffix(file, ".a") {
			// TODO(lijie): only support _go_.o for now
			file, err := removeAsmObjs(file)
			if err != nil {
				log.Fatalf("Error removing asm objects: %v\n", err)
			}
			tempFiles = append(tempFiles, file)
		} else {
			tempFiles = append(tempFiles, file)
		}
	}

	link := clang.New("clang")
	args := []string{"-o", *output, "-L/opt/homebrew/opt/python@3.12/Frameworks/Python.framework/Versions/3.12/lib", "-lpython3.12"}
	args = append(args, tempFiles...)
	check(link.Exec(args...))

	fmt.Println("Linking completed successfully.")
}

func check(err error) {
	if err != nil {
		log.Fatalf("Error: %v\n", err)
	}
}

func copyFile(src, dst string) error {
	data, err := os.ReadFile(src)
	if err != nil {
		return err
	}
	return os.WriteFile(dst, data, 0644)
}

// format: packagefile github.com/goplus/llgo/_demo/cgo=/var/folders/f2/88rgt2bx533_m89qy6pqqp8w0000gn/T/go-build1639842736/b001/_pkg_.a
func getPkgs(file string) ([]string, error) {
	data, err := os.ReadFile(file)
	if err != nil {
		return nil, err
	}
	lines := strings.Split(strings.TrimSpace(string(data)), "\n")
	pkgs := []string{}
	for _, line := range lines {
		line = strings.TrimSpace(line)
		if strings.HasPrefix(line, "packagefile") {
			fields := strings.Split(line, "=")
			if len(fields) != 2 {
				return nil, fmt.Errorf("invalid packagefile line: %s", line)
			}
			pkgs = append(pkgs, fields[1])
		}
	}
	return pkgs, nil
}

func removeAsmObjs(file string) (string, error) {
	asmObjs, err := getAsmObjs(file)
	if err != nil {
		return "", err
	}
	if len(asmObjs) == 0 {
		return file, nil
	}
	tempFile, err := os.CreateTemp("", "llgolink-temp-*.a")
	if err != nil {
		return "", fmt.Errorf("error creating temporary file: %v", err)
	}
	check(copyFile(file, tempFile.Name()))
	args := []string{"-d", tempFile.Name()}
	args = append(args, asmObjs...)
	ar := clang.New("ar")
	check(ar.Exec(args...))
	return tempFile.Name(), nil
}

func getAsmObjs(file string) ([]string, error) {
	ar := clang.New("ar")
	out, err := ar.ExecWithOutput("-t", file)
	if err != nil {
		return nil, err
	}
	lines := strings.Split(strings.TrimSpace(out), "\n")
	files := []string{}
	for _, line := range lines {
		if strings.TrimSpace(line) != "_go_.o" {
			files = append(files, line)
		}
	}
	return files, nil
}
