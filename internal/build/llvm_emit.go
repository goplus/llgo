package build

import (
	"fmt"
	"os"
	"path/filepath"
	"strings"

	llssa "github.com/goplus/llgo/ssa"
	gllvm "github.com/goplus/llvm"
)

type llvmCompileConfig struct {
	target       llssa.Target
	passPipeline string
}

func (c *context) llvmCompileConfig() llvmCompileConfig {
	cfg := llvmCompileConfig{}
	if base := c.prog.Target(); base != nil {
		cfg.target = *base
	}
	if cfg.target.Triple == "" && c.crossCompile.LLVMTarget != "" {
		cfg.target.Triple = c.crossCompile.LLVMTarget
	}
	if cfg.target.CPU == "" && c.crossCompile.CPU != "" {
		cfg.target.CPU = c.crossCompile.CPU
	}
	if cfg.target.Features == "" && c.crossCompile.Features != "" {
		cfg.target.Features = c.crossCompile.Features
	}
	if cfg.target.CodeModel == "" && c.crossCompile.CodeModel != "" {
		cfg.target.CodeModel = c.crossCompile.CodeModel
	}
	if cfg.target.RelocationModel == "" && c.crossCompile.RelocationModel != "" {
		cfg.target.RelocationModel = c.crossCompile.RelocationModel
	}

	flags := c.compiler().CompilerFlags()
	parseLLVMCompileFlags(&cfg, flags)
	if cfg.target.RelocationModel == "" {
		cfg.target.RelocationModel = defaultLLVMRelocationModel(cfg.target)
	}
	return cfg
}

func defaultLLVMRelocationModel(target llssa.Target) string {
	switch target.GOOS {
	case "linux", "android", "darwin", "ios", "freebsd", "netbsd", "openbsd":
		if target.GOARCH != "wasm" {
			return "pic"
		}
	}
	return ""
}

func parseLLVMCompileFlags(cfg *llvmCompileConfig, flags []string) {
	for i := 0; i < len(flags); i++ {
		arg := flags[i]
		switch {
		case arg == "-O0":
			cfg.passPipeline = "default<O0>"
			cfg.target.CodeGenLevel = gllvm.CodeGenLevelNone
		case arg == "-O1" || arg == "-O":
			cfg.passPipeline = "default<O1>"
			cfg.target.CodeGenLevel = gllvm.CodeGenLevelLess
		case arg == "-O2":
			cfg.passPipeline = "default<O2>"
			cfg.target.CodeGenLevel = gllvm.CodeGenLevelDefault
		case arg == "-O3":
			cfg.passPipeline = "default<O3>"
			cfg.target.CodeGenLevel = gllvm.CodeGenLevelAggressive
		case arg == "-Os":
			cfg.passPipeline = "default<Os>"
			cfg.target.CodeGenLevel = gllvm.CodeGenLevelDefault
		case arg == "-Oz":
			cfg.passPipeline = "default<Oz>"
			cfg.target.CodeGenLevel = gllvm.CodeGenLevelDefault
		case arg == "-target" || arg == "--target":
			if i+1 < len(flags) {
				i++
				cfg.target.Triple = flags[i]
			}
		case strings.HasPrefix(arg, "-target="):
			cfg.target.Triple = strings.TrimPrefix(arg, "-target=")
		case strings.HasPrefix(arg, "--target="):
			cfg.target.Triple = strings.TrimPrefix(arg, "--target=")
		case arg == "-mcpu" || arg == "-march" || arg == "-mmcu":
			if i+1 < len(flags) {
				i++
				cfg.target.CPU = flags[i]
			}
		case strings.HasPrefix(arg, "-mcpu="):
			cfg.target.CPU = strings.TrimPrefix(arg, "-mcpu=")
		case strings.HasPrefix(arg, "-march="):
			cfg.target.CPU = strings.TrimPrefix(arg, "-march=")
		case strings.HasPrefix(arg, "-mmcu="):
			cfg.target.CPU = strings.TrimPrefix(arg, "-mmcu=")
		case arg == "-mattr":
			if i+1 < len(flags) {
				i++
				cfg.target.Features = flags[i]
			}
		case strings.HasPrefix(arg, "-mattr="):
			cfg.target.Features = strings.TrimPrefix(arg, "-mattr=")
		case arg == "-mcmodel":
			if i+1 < len(flags) {
				i++
				cfg.target.CodeModel = flags[i]
			}
		case strings.HasPrefix(arg, "-mcmodel="):
			cfg.target.CodeModel = strings.TrimPrefix(arg, "-mcmodel=")
		case arg == "-fPIC":
			cfg.target.RelocationModel = "pic"
		case arg == "-fno-pic":
			cfg.target.RelocationModel = "static"
		case arg == "-mllvm":
			if i+1 < len(flags) {
				i++
				parseLLVMBackendFlag(cfg, flags[i])
			}
		case strings.HasPrefix(arg, "-mllvm="):
			parseLLVMBackendFlag(cfg, strings.TrimPrefix(arg, "-mllvm="))
		}
	}
}

func parseLLVMBackendFlag(cfg *llvmCompileConfig, arg string) {
	switch {
	case strings.HasPrefix(arg, "-mcpu="):
		cfg.target.CPU = strings.TrimPrefix(arg, "-mcpu=")
	case strings.HasPrefix(arg, "-mattr="):
		cfg.target.Features = strings.TrimPrefix(arg, "-mattr=")
	}
}

func (c *context) emitModuleObject(pkgPath string, mod gllvm.Module, objPath string) error {
	cfg := c.llvmCompileConfig()

	mod.SetTarget(cfg.target.Spec().Triple)
	td, tm := cfg.target.CreateTargetMachine()
	defer td.Dispose()
	defer tm.Dispose()
	mod.SetDataLayout(td.String())
	if cfg.passPipeline != "" {
		pbo := gllvm.NewPassBuilderOptions()
		defer pbo.Dispose()
		if err := mod.RunPasses(cfg.passPipeline, tm, pbo); err != nil {
			return fmt.Errorf("%s: run LLVM passes %q: %w", pkgPath, cfg.passPipeline, err)
		}
	}

	buf, err := tm.EmitToMemoryBuffer(mod, gllvm.ObjectFile)
	if err != nil {
		return fmt.Errorf("%s: emit object: %w", pkgPath, err)
	}
	defer buf.Dispose()

	if err := os.WriteFile(objPath, buf.Bytes(), 0644); err != nil {
		return fmt.Errorf("%s: write object %s: %w", pkgPath, objPath, err)
	}
	return nil
}

func (c *context) emitIRFileObject(pkgPath string, llPath string, objPath string) error {
	buf, err := gllvm.NewMemoryBufferFromFile(llPath)
	if err != nil {
		return fmt.Errorf("%s: open IR file %s: %w", pkgPath, llPath, err)
	}

	ctx := gllvm.NewContext()
	defer ctx.Dispose()

	mod, err := ctx.ParseIR(buf)
	if err != nil {
		return fmt.Errorf("%s: parse IR file %s: %w", pkgPath, llPath, err)
	}
	defer mod.Dispose()

	return c.emitModuleObject(pkgPath, mod, objPath)
}

func (c *context) writeModuleIR(base string, exportFile string, mod gllvm.Module) error {
	ll := mod.String()

	tmp, err := os.CreateTemp("", base+"-*.ll")
	if err != nil {
		return err
	}
	tmpPath := tmp.Name()
	if _, err := tmp.WriteString(ll); err != nil {
		tmp.Close()
		os.Remove(tmpPath)
		return err
	}
	if err := tmp.Close(); err != nil {
		os.Remove(tmpPath)
		return err
	}
	defer os.Remove(tmpPath)

	if c.buildConf.CheckLLFiles {
		if msg, err := llcCheck(c.env, tmpPath); err != nil {
			fmt.Fprintf(os.Stderr, "==> lcc %v: %v\n%v\n", filepath.Base(exportFile), tmpPath, msg)
		}
	}
	if c.buildConf.GenLL {
		llFile := exportFile + ".ll"
		if err := os.Chmod(tmpPath, 0644); err != nil {
			return err
		}
		if err := copyFileAtomic(tmpPath, llFile); err != nil {
			return err
		}
	}
	return nil
}
