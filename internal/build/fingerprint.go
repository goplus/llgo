package build

import (
	"crypto/sha256"
	"encoding/hex"
	"fmt"
	"go/constant"
	"go/types"
	"hash"
	"io"
	"os"
	"os/exec"
	"path/filepath"
	"runtime"
	"sort"
	"strings"

	"github.com/goplus/llgo/internal/cabi"
	"github.com/goplus/llgo/internal/env"
	"github.com/goplus/llgo/internal/packages"
)

type fingerprintRecord struct {
	Hash   string            `json:"hash"`
	Inputs map[string]string `json:"inputs"`
}

type fingerprintBuilder struct {
	h      hash.Hash
	inputs map[string]string
}

func newFingerprintBuilder() *fingerprintBuilder {
	return &fingerprintBuilder{h: sha256.New(), inputs: make(map[string]string)}
}

func (fb *fingerprintBuilder) add(key, value string) {
	fb.inputs[key] = value
	fb.h.Write([]byte(key))
	fb.h.Write([]byte{0})
	fb.h.Write([]byte(value))
	fb.h.Write([]byte{0})
}

func (fb *fingerprintBuilder) sum() (string, map[string]string) {
	return hex.EncodeToString(fb.h.Sum(nil)), fb.inputs
}

type fingerprintCommon struct {
	targetTriple  string
	goos          string
	goarch        string
	buildMode     BuildMode
	abiMode       string
	target        string
	targetABI     string
	llgoVersion   string
	goVersion     string
	llvmVersion   string
	llgoRoot      string
	goroot        string
	buildTags     string
	envVars       map[string]string
	overlay       map[string][]byte
	extraFiles    []string
	cc            string
	ccflags       []string
	cflags        []string
	ldflags       []string
	linker        string
	forceEspClang bool
	mode          Mode
}

var fingerprintEnvVars = []string{
	llgoDebug,
	llgoDbgSyms,
	llgoTrace,
	llgoOptimize,
	llgoWasmRuntime,
	llgoWasiThreads,
	llgoStdioNobuf,
	llgoFullRpath,
	llgoCacheDebug,
}

func (ctx *context) initFingerprintCommon() error {
	fc := fingerprintCommon{}
	fc.targetTriple = ctx.crossCompile.LLVMTarget
	if fc.targetTriple == "" {
		fc.targetTriple = fmt.Sprintf("%s-%s", ctx.buildConf.Goarch, ctx.buildConf.Goos)
	}
	fc.goos = ctx.buildConf.Goos
	fc.goarch = ctx.buildConf.Goarch
	fc.buildMode = ctx.buildConf.BuildMode
	fc.abiMode = abiModeString(ctx.buildConf.AbiMode)
	fc.target = ctx.buildConf.Target
	fc.targetABI = ctx.crossCompile.TargetABI
	fc.llgoVersion = env.Version()
	fc.goVersion = runtime.Version()
	fc.llvmVersion = detectLLVMVersion(ctx)
	fc.llgoRoot = env.LLGoROOT()
	fc.goroot = runtime.GOROOT()
	fc.buildTags = ctx.buildConf.Tags
	fc.envVars = make(map[string]string, len(fingerprintEnvVars))
	for _, name := range fingerprintEnvVars {
		fc.envVars[name] = os.Getenv(name)
	}
	fc.overlay = nil
	if ctx.conf != nil {
		fc.overlay = ctx.conf.Overlay
	}
	fc.extraFiles = append(fc.extraFiles, ctx.crossCompile.ExtraFiles...)
	fc.cc = ctx.crossCompile.CC
	fc.ccflags = append(fc.ccflags, ctx.crossCompile.CCFLAGS...)
	fc.cflags = append(fc.cflags, ctx.crossCompile.CFLAGS...)
	fc.ldflags = append(fc.ldflags, ctx.crossCompile.LDFLAGS...)
	fc.linker = ctx.crossCompile.Linker
	fc.forceEspClang = ctx.buildConf.ForceEspClang
	fc.mode = ctx.mode
	ctx.fingerCommon = fc
	if ctx.fingerprints == nil {
		ctx.fingerprints = make(map[string]string)
	}
	return nil
}

func abiModeString(mode cabi.Mode) string {
	switch mode {
	case cabi.ModeNone:
		return "none"
	case cabi.ModeCFunc:
		return "cfunc"
	case cabi.ModeAllFunc:
		return "allfunc"
	default:
		return fmt.Sprintf("mode(%d)", mode)
	}
}

func (pkg Package) fingerprint(ctx *context) (string, fingerprintRecord, error) {
	basePkg := pkg.Package
	fc := ctx.fingerCommon
	fb := newFingerprintBuilder()

	fb.add("pkgPath", basePkg.PkgPath)
	fb.add("target", fc.targetTriple)
	fb.add("goos", fc.goos)
	fb.add("goarch", fc.goarch)
	fb.add("buildMode", string(fc.buildMode))
	fb.add("abiMode", fc.abiMode)
	fb.add("targetABI", fc.targetABI)
	fb.add("llgoVersion", fc.llgoVersion)
	fb.add("goVersion", fc.goVersion)
	fb.add("llvmVersion", fc.llvmVersion)
	fb.add("targetName", fc.target)
	fb.add("buildTags", fc.buildTags)
	fb.add("mode", fmt.Sprintf("%d", fc.mode))
	fb.add("forceEspClang", fmt.Sprintf("%t", fc.forceEspClang))
	if fc.cc != "" {
		fb.add("toolchain:cc", fc.cc)
	}
	if len(fc.ccflags) > 0 {
		fb.add("toolchain:ccflags", strings.Join(fc.ccflags, " "))
	}
	if len(fc.cflags) > 0 {
		fb.add("toolchain:cflags", strings.Join(fc.cflags, " "))
	}
	if len(fc.ldflags) > 0 {
		fb.add("toolchain:ldflags", strings.Join(fc.ldflags, " "))
	}
	if fc.linker != "" {
		fb.add("toolchain:linker", fc.linker)
	}

	captureModuleMetadata(fb, basePkg, "", fc.goroot)

	if len(basePkg.EmbedPatterns) > 0 {
		patterns := append([]string(nil), basePkg.EmbedPatterns...)
		sort.Strings(patterns)
		fb.add("embedPatterns", strings.Join(patterns, ";"))
	}

	if len(fc.envVars) > 0 {
		keys := make([]string, 0, len(fc.envVars))
		for key := range fc.envVars {
			keys = append(keys, key)
		}
		sort.Strings(keys)
		for _, key := range keys {
			fb.add("env:"+key, fc.envVars[key])
		}
	}

	if ctx.buildConf != nil && len(ctx.buildConf.GlobalDatas) > 0 {
		prefix := basePkg.PkgPath + "."
		var keys []string
		for key := range ctx.buildConf.GlobalDatas {
			if strings.HasPrefix(key, prefix) {
				keys = append(keys, key)
			}
		}
		sort.Strings(keys)
		for _, key := range keys {
			fb.add("global:"+key, ctx.buildConf.GlobalDatas[key])
		}
	}

	fileDigests := make(map[string]string)
	hashFile := func(filename string) (string, error) {
		if filename == "" {
			return "", nil
		}
		if sum, ok := fileDigests[filename]; ok {
			return sum, nil
		}
		sum, err := hashFileOrOverlay(filename, fc.overlay)
		if err != nil {
			return "", err
		}
		fileDigests[filename] = sum
		return sum, nil
	}
	addFiles := func(prefix string, files []string) error {
		if len(files) == 0 {
			return nil
		}
		ordered := append([]string(nil), files...)
		sort.Strings(ordered)
		for _, file := range ordered {
			sum, err := hashFile(file)
			if err != nil {
				return err
			}
			fb.add(prefix+file, sum)
		}
		return nil
	}

	if err := addPackageFiles(addFiles, basePkg, ""); err != nil {
		return "", fingerprintRecord{}, err
	}

	captureLLGoPackage(fb, basePkg, "")

	if raw, files := collectLLGoFiles(basePkg); raw != "" {
		fb.add("llgoFiles", raw)
		if err := addFiles("llgofile:", files); err != nil {
			return "", fingerprintRecord{}, err
		}
	}

	if len(basePkg.Imports) > 0 {
		keys := make([]string, 0, len(basePkg.Imports))
		for path := range basePkg.Imports {
			keys = append(keys, path)
		}
		sort.Strings(keys)
		for _, path := range keys {
			dep := basePkg.Imports[path]
			fb.add("dep:"+path, ctx.dependencyFingerprint(dep))
		}
	}

	if len(fc.extraFiles) > 0 {
		for _, rel := range fc.extraFiles {
			full := rel
			if fc.llgoRoot != "" && !filepath.IsAbs(rel) {
				full = filepath.Join(fc.llgoRoot, rel)
			}
			sum, err := hashFile(full)
			if err != nil {
				return "", fingerprintRecord{}, err
			}
			fb.add("extra:"+full, sum)
		}
	}

	if alt := pkg.AltPkg; alt != nil && alt.Package != nil {
		altPkg := alt.Package
		fb.add("alt:pkgPath", altPkg.PkgPath)
		captureModuleMetadata(fb, altPkg, "alt:", fc.goroot)
		if err := addPackageFiles(addFiles, altPkg, "alt:"); err != nil {
			return "", fingerprintRecord{}, err
		}
		captureLLGoPackage(fb, altPkg, "alt:")
		if raw, files := collectLLGoFiles(altPkg); raw != "" {
			fb.add("alt:llgoFiles", raw)
			if err := addFiles("alt:llgofile:", files); err != nil {
				return "", fingerprintRecord{}, err
			}
		}
	}

	hash, inputs := fb.sum()
	ctx.storeFingerprint(basePkg.PkgPath, hash)
	return hash, fingerprintRecord{Hash: hash, Inputs: inputs}, nil
}

func captureModuleMetadata(fb *fingerprintBuilder, pkg *packages.Package, prefix string, goroot string) {
	if pkg == nil {
		return
	}
	if pkg.Module != nil {
		fb.add(prefix+"module:path", pkg.Module.Path)
		fb.add(prefix+"module:version", pkg.Module.Version)
		fb.add(prefix+"module:dir", pkg.Module.Dir)
		if pkg.Module.Replace != nil {
			fb.add(prefix+"module:replace:path", pkg.Module.Replace.Path)
			fb.add(prefix+"module:replace:version", pkg.Module.Replace.Version)
		}
		return
	}
	if isStdLibPackage(pkg, goroot) {
		fb.add(prefix+"module:path", "std")
		fb.add(prefix+"module:dir", goroot)
	}
}

func captureLLGoPackage(fb *fingerprintBuilder, pkg *packages.Package, prefix string) {
	if pkg == nil || pkg.Types == nil {
		return
	}
	if o := pkg.Types.Scope().Lookup("LLGoPackage"); o != nil {
		if c, ok := o.(*types.Const); ok {
			if val := c.Val(); val.Kind() == constant.String {
				fb.add(prefix+"llgoPackage", constant.StringVal(val))
			}
		}
	}
}

func addPackageFiles(addFn func(prefix string, files []string) error, pkg *packages.Package, prefix string) error {
	if pkg == nil {
		return nil
	}
	groups := []struct {
		tag   string
		files []string
	}{
		{prefix + "go:", pkg.GoFiles},
		{prefix + "compiled:", pkg.CompiledGoFiles},
		{prefix + "other:", pkg.OtherFiles},
		{prefix + "embed:", pkg.EmbedFiles},
	}
	for _, grp := range groups {
		if err := addFn(grp.tag, grp.files); err != nil {
			return err
		}
	}
	return nil
}

func isStdLibPackage(pkg *packages.Package, goroot string) bool {
	if pkg == nil {
		return false
	}
	if goroot == "" {
		return false
	}
	root := filepath.Clean(goroot)
	root = filepath.ToSlash(root)
	check := func(files []string) bool {
		for _, file := range files {
			if file == "" {
				continue
			}
			clean := filepath.ToSlash(filepath.Clean(file))
			if !strings.HasPrefix(clean, root+"/") {
				return false
			}
		}
		return true
	}
	if len(pkg.GoFiles) == 0 && len(pkg.CompiledGoFiles) == 0 {
		return false
	}
	if !check(pkg.GoFiles) {
		return false
	}
	if !check(pkg.CompiledGoFiles) {
		return false
	}
	return true
}

func (ctx *context) storeFingerprint(pkgPath, hash string) {
	if pkgPath == "" || hash == "" {
		return
	}
	ctx.fingerMu.Lock()
	ctx.fingerprints[pkgPath] = hash
	ctx.fingerMu.Unlock()
}

func (ctx *context) dependencyFingerprint(dep *packages.Package) string {
	if dep == nil {
		return "nil"
	}
	ctx.fingerMu.RLock()
	if fp, ok := ctx.fingerprints[dep.PkgPath]; ok {
		ctx.fingerMu.RUnlock()
		return "cache:" + fp
	}
	ctx.fingerMu.RUnlock()
	if dep.ExportFile != "" {
		if sum, err := hashFileOrOverlay(dep.ExportFile, nil); err == nil {
			return "export:" + sum
		}
	}
	if dep.Module != nil {
		ver := dep.Module.Version
		if dep.Module.Replace != nil {
			ver = dep.Module.Replace.Version
		}
		return "module:" + dep.Module.Path + "@" + ver
	}
	return "pkg:" + dep.PkgPath
}

func collectLLGoFiles(pkg *packages.Package) (string, []string) {
	if pkg == nil || pkg.Types == nil {
		return "", nil
	}
	obj := pkg.Types.Scope().Lookup("LLGoFiles")
	if obj == nil {
		return "", nil
	}
	c, ok := obj.(*types.Const)
	if !ok {
		return "", nil
	}
	val := c.Val()
	if val.Kind() != constant.String {
		return "", nil
	}
	raw := constant.StringVal(val)
	trimmed := raw
	if strings.HasPrefix(trimmed, "$") {
		if pos := strings.IndexByte(trimmed, ':'); pos > 0 {
			trimmed = trimmed[pos+1:]
		} else {
			trimmed = ""
		}
	}
	baseDir := ""
	if len(pkg.GoFiles) > 0 {
		baseDir = filepath.Dir(pkg.GoFiles[0])
	} else if len(pkg.CompiledGoFiles) > 0 {
		baseDir = filepath.Dir(pkg.CompiledGoFiles[0])
	}
	parts := strings.Split(trimmed, ";")
	result := make([]string, 0, len(parts))
	for _, part := range parts {
		part = strings.TrimSpace(part)
		if part == "" {
			continue
		}
		if baseDir != "" && !filepath.IsAbs(part) {
			part = filepath.Join(baseDir, part)
		}
		result = append(result, part)
	}
	return raw, result
}

func hashFileOrOverlay(filename string, overlay map[string][]byte) (string, error) {
	if overlay != nil {
		if data, ok := overlay[filename]; ok {
			h := sha256.Sum256(data)
			return hex.EncodeToString(h[:]), nil
		}
	}
	f, err := os.Open(filename)
	if err != nil {
		return "", err
	}
	defer f.Close()
	h := sha256.New()
	if _, err := io.Copy(h, f); err != nil {
		return "", err
	}
	return hex.EncodeToString(h.Sum(nil)), nil
}

type execCmd interface {
	CombinedOutput() ([]byte, error)
}

type commandWrapper struct {
	name string
	args []string
}

func (c commandWrapper) CombinedOutput() ([]byte, error) {
	cmd := exec.Command(c.name, c.args...)
	return cmd.CombinedOutput()
}

var execCommand = func(name string, arg ...string) execCmd {
	return commandWrapper{name: name, args: arg}
}

func detectLLVMVersion(ctx *context) string {
	cc := ctx.crossCompile.CC
	if cc == "" {
		cc = "clang"
	}
	cmd := execCommand(cc, "--version")
	out, err := cmd.CombinedOutput()
	if err != nil {
		return "unknown"
	}
	lines := strings.Split(string(out), "\n")
	if len(lines) > 0 && strings.TrimSpace(lines[0]) != "" {
		return strings.TrimSpace(lines[0])
	}
	return strings.TrimSpace(string(out))
}
