package bundle

import (
	"fmt"
	"os"
	"path/filepath"

	"github.com/goplus/llgo/cmd/internal/base"
	"github.com/goplus/llgo/cmd/internal/flags"
	"github.com/goplus/llgo/internal/build"
	"github.com/goplus/llgo/internal/pyenv"
)

var (
	mode       string
	out        string
	archive    string
	archiveOut string
)

// llgo bundle
var Cmd = &base.Command{
	UsageLine: "llgo bundle [-mode onedir|onefile] [-out output] [-archive zip|rar|tar] [-archiveOut file] [packages]",
	Short:     "Package executable with embedded Python runtime",
}

func init() {
	Cmd.Run = runCmd

	flags.AddBuildFlags(&Cmd.Flag)

	Cmd.Flag.StringVar(&mode, "mode", "dir", "bundle mode: dir|exe")
	Cmd.Flag.StringVar(&out, "out", "", "output file for onefile (default: <exe>)")
	Cmd.Flag.StringVar(&archive, "archive", "", "archive dist for onedir: zip|rar|tar (default: none)")
	Cmd.Flag.StringVar(&archiveOut, "archiveOut", "", "archive output path (default: <exe>.<ext>)")
}

func runCmd(cmd *base.Command, args []string) {
	if err := cmd.Flag.Parse(args); err != nil {
		return
	}

	args = cmd.Flag.Args()
	pkg := "."
	if len(args) > 0 {
		pkg = args[0]
	}
	if !filepath.IsAbs(pkg) {
		if abs, err := filepath.Abs(pkg); err == nil {
			pkg = abs
		}
	}

	workDir := pkg
	if st, err := os.Stat(pkg); err == nil {
		if !st.IsDir() {
			workDir = filepath.Dir(pkg)
		}
	} else {
		if wd, err2 := os.Getwd(); err2 == nil {
			workDir = wd
		}
	}
	appName := filepath.Base(workDir)
	exe := filepath.Join(workDir, appName)

	conf := build.NewDefaultConf(build.ModeBuild)
	conf.Tags = flags.Tags
	conf.Verbose = flags.Verbose
	conf.Target = flags.Target
	conf.OutFile = exe
	if _, err := build.Do([]string{pkg}, conf); err != nil {
		fmt.Fprintln(os.Stderr, "llgo build failed:", err)
		os.Exit(1)
	}
	if st, err := os.Stat(exe); err != nil || st.IsDir() {
		fmt.Fprintln(os.Stderr, "no built executable found:", exe)
		os.Exit(1)
	}

	switch mode {
	case "dir":
		if err := pyenv.BundleOnedirApp(exe); err != nil {
			fmt.Fprintln(os.Stderr, "bundle dir failed:", err)
			os.Exit(1)
		}
		fmt.Println("[llgo bundle] onedir done")
		if archive != "" {
			exeDir := filepath.Dir(exe)
			distDir := filepath.Join(exeDir, "dist")
			ext := archive
			if archive == "tar" {
				ext = "tar.gz"
			}
			dst := archiveOut
			if dst == "" {
				dst = exe + "." + ext
			}
			if err := pyenv.ArchiveDir(distDir, dst, archive); err != nil {
				fmt.Fprintln(os.Stderr, "archive failed:", err)
				os.Exit(1)
			}
			fmt.Println("[llgo bundle] archive created:", dst)
		}
	case "exe":
		dst := out
		if dst == "" {
			dst = exe
		}
		if err := pyenv.BuildOnefileBinary(exe, dst); err != nil {
			fmt.Fprintln(os.Stderr, "bundle exe failed:", err)
			os.Exit(1)
		}
		fmt.Println("[llgo bundle] onefile created:", dst)
	default:
		fmt.Fprintln(os.Stderr, "invalid -mode, expected dir|exe")
		os.Exit(2)
	}
}
