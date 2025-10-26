package build

import (
	"crypto/sha256"
	"encoding/hex"
	"encoding/json"
	"errors"
	"fmt"
	"io"
	"os"
	"path/filepath"
	"sort"
	"strings"
	"time"

	"github.com/goplus/llgo/internal/env"
)

type packageCache struct {
	ctx     *context
	root    string
	verbose bool
}

type cacheManifest struct {
	Fingerprint string            `json:"fingerprint"`
	Package     string            `json:"package"`
	Target      string            `json:"target"`
	CreatedAt   time.Time         `json:"createdAt"`
	Toolchain   toolchainInfo     `json:"toolchain"`
	Archive     archiveInfo       `json:"archive"`
	Inputs      fingerprintRecord `json:"inputs"`
}

type toolchainInfo struct {
	LLGoVersion string `json:"llgoVersion"`
	GoVersion   string `json:"goVersion"`
	LLVM        string `json:"llvm"`
	GOOS        string `json:"goos"`
	GOARCH      string `json:"goarch"`
	Target      string `json:"target"`
	BuildMode   string `json:"buildMode"`
	AbiMode     string `json:"abiMode"`
}

type archiveInfo struct {
	Path        string            `json:"path"`
	Checksum    string            `json:"checksum"`
	Objects     map[string]string `json:"objects"`
	LinkArgs    []string          `json:"linkArgs"`
	NeedRuntime bool              `json:"needRuntime"`
	NeedPyInit  bool              `json:"needPyInit"`
}

type cacheKey struct {
	pkgPath      string
	fingerprint  string
	record       fingerprintRecord
	dir          string
	archivePath  string
	manifestPath string
	lockPath     string
}

var cacheRootFunc = env.LLGoCacheDir

func newPackageCache(ctx *context) (*packageCache, error) {
	if ctx == nil || ctx.buildConf == nil {
		return nil, errors.New("nil build context")
	}
	if ctx.buildConf.GenLL {
		return nil, nil
	}
	if ctx.mode == ModeGen {
		return nil, nil
	}
	cacheRoot := cacheRootFunc()
	if cacheRoot == "" {
		return nil, errors.New("llgo cache directory not available")
	}
	root := filepath.Join(cacheRoot, "build")
	if err := os.MkdirAll(root, 0o755); err != nil {
		return nil, err
	}
	return &packageCache{ctx: ctx, root: root, verbose: isCacheVerbose()}, nil
}

func (pc *packageCache) shouldCache(pkg *aPackage) bool {
	if pc == nil || pkg == nil || pkg.Package == nil {
		return false
	}
	base := pkg.Package
	if len(base.GoFiles) == 0 && len(base.CompiledGoFiles) == 0 && base.ExportFile == "" {
		return false
	}
	return true
}

func (pc *packageCache) packageDir(pkgPath string) string {
	parts := strings.Split(pkgPath, "/")
	segments := make([]string, 0, len(parts)+2)
	segments = append(segments, pc.root, pc.ctx.fingerCommon.targetTriple)
	for _, part := range parts {
		if part == "" || part == "." || part == ".." {
			continue
		}
		segments = append(segments, part)
	}
	if len(segments) == 2 {
		segments = append(segments, "_")
	}
	return filepath.Join(segments...)
}

func (pc *packageCache) keyFor(pkgPath, fingerprint string, record fingerprintRecord) cacheKey {
	dir := pc.packageDir(pkgPath)
	return cacheKey{
		pkgPath:      pkgPath,
		fingerprint:  fingerprint,
		record:       record,
		dir:          dir,
		archivePath:  filepath.Join(dir, fingerprint+".a"),
		manifestPath: filepath.Join(dir, fingerprint+".json"),
		lockPath:     filepath.Join(dir, fingerprint+".lock"),
	}
}

func (pc *packageCache) prepare(pkg *aPackage) (cacheKey, *cacheManifest, []string, error) {
	reasons := make([]string, 0, 4)
	fp, record, err := pkg.fingerprint(pc.ctx)
	if err != nil {
		return cacheKey{}, nil, nil, err
	}
	pkg.Fingerprint = fp
	key := pc.keyFor(pkg.PkgPath, fp, record)
	manifest, err := loadManifest(key.manifestPath)
	if err != nil {
		if !errors.Is(err, os.ErrNotExist) {
			return key, nil, nil, err
		}
		reasons = append(reasons, "manifest missing")
		return key, nil, reasons, nil
	}
	if manifest.Fingerprint != fp {
		oldInputs := manifest.Inputs.Inputs
		if oldInputs == nil {
			oldInputs = map[string]string{}
		}
		reasons = append(reasons, diffInputs(record.Inputs, oldInputs)...)
		if len(reasons) == 0 {
			reasons = append(reasons, "fingerprint mismatch")
		}
		return key, nil, reasons, nil
	}
	if err := pc.validateManifest(key, manifest); err != nil {
		reasons = append(reasons, fmt.Sprintf("manifest invalid: %v", err))
		return key, nil, reasons, nil
	}
	manifest.Archive.Path = filepath.Join(key.dir, manifest.Archive.Path)
	return key, manifest, nil, nil
}

func diffInputs(newInputs, oldInputs map[string]string) []string {
	const limit = 5
	reasons := make([]string, 0, limit)
	keys := make([]string, 0, len(newInputs))
	for key := range newInputs {
		keys = append(keys, key)
	}
	sort.Strings(keys)
	for _, key := range keys {
		newVal := newInputs[key]
		oldVal, ok := oldInputs[key]
		if !ok {
			reasons = append(reasons, fmt.Sprintf("added %s=%s", key, truncateValue(newVal)))
		} else if oldVal != newVal {
			reasons = append(reasons, fmt.Sprintf("changed %s: %s -> %s", key, truncateValue(oldVal), truncateValue(newVal)))
		}
		if len(reasons) >= limit {
			return reasons
		}
	}
	keys = keys[:0]
	for key := range oldInputs {
		if _, ok := newInputs[key]; !ok {
			keys = append(keys, key)
		}
	}
	sort.Strings(keys)
	for _, key := range keys {
		reasons = append(reasons, fmt.Sprintf("removed %s (was %s)", key, truncateValue(oldInputs[key])))
		if len(reasons) >= limit {
			break
		}
	}
	return reasons
}

func truncateValue(v string) string {
	const maxLen = 60
	if len(v) <= maxLen {
		return v
	}
	return v[:maxLen-3] + "..."
}

func (pc *packageCache) applyHit(ctx *context, pkg *aPackage, key cacheKey, manifest *cacheManifest) {
	if manifest == nil {
		return
	}
	archivePath := manifest.Archive.Path
	if archivePath == "" {
		archivePath = key.archivePath
	}
	pkg.Archive = archivePath
	pkg.LinkArgs = append(pkg.LinkArgs[:0], manifest.Archive.LinkArgs...)
	pkg.LLFiles = nil
	pkg.ExportFile = ""
	setNeedRuntimeOrPyInit(ctx, pkg.Package, manifest.Archive.NeedRuntime, manifest.Archive.NeedPyInit)
}

func (pc *packageCache) store(ctx *context, pkg *aPackage, key cacheKey) error {
	if key.fingerprint == "" {
		return errors.New("cache: empty fingerprint")
	}
	objects, err := gatherArchiveObjects(pkg)
	if err != nil {
		return err
	}
	if len(objects) == 0 {
		return nil
	}
	if err := os.MkdirAll(key.dir, 0o755); err != nil {
		return err
	}
	lock, err := acquireLock(key.lockPath)
	if err != nil {
		return err
	}
	defer func() {
		_ = lock.Release()
	}()

	if manifest, err := loadManifest(key.manifestPath); err == nil {
		if manifest.Fingerprint == key.fingerprint {
			if err := pc.validateManifest(key, manifest); err == nil {
				return nil
			}
		}
	}

	tmpArchive := key.archivePath + ".tmp"
	if err := createStaticArchive(ctx, tmpArchive, objects, pc.verbose || ctx.buildConf.Verbose); err != nil {
		os.Remove(tmpArchive)
		return err
	}

	archiveChecksum, err := fileSHA256(tmpArchive)
	if err != nil {
		os.Remove(tmpArchive)
		return err
	}

	objChecksums := make(map[string]string, len(objects))
	for _, obj := range objects {
		sum, err := fileSHA256(obj)
		if err != nil {
			os.Remove(tmpArchive)
			return err
		}
		objChecksums[filepath.Base(obj)] = sum
	}

	manifest := cacheManifest{
		Fingerprint: key.fingerprint,
		Package:     key.pkgPath,
		Target:      ctx.fingerCommon.targetTriple,
		CreatedAt:   time.Now().UTC(),
		Toolchain: toolchainInfo{
			LLGoVersion: ctx.fingerCommon.llgoVersion,
			GoVersion:   ctx.fingerCommon.goVersion,
			LLVM:        ctx.fingerCommon.llvmVersion,
			GOOS:        ctx.fingerCommon.goos,
			GOARCH:      ctx.fingerCommon.goarch,
			Target:      ctx.fingerCommon.target,
			BuildMode:   string(ctx.fingerCommon.buildMode),
			AbiMode:     ctx.fingerCommon.abiMode,
		},
		Archive: archiveInfo{
			Path:        filepath.Base(key.archivePath),
			Checksum:    archiveChecksum,
			Objects:     objChecksums,
			LinkArgs:    append([]string(nil), pkg.LinkArgs...),
			NeedRuntime: pkg.LPkg != nil && pkg.LPkg.NeedRuntime,
			NeedPyInit:  pkg.LPkg != nil && pkg.LPkg.NeedPyInit,
		},
		Inputs: key.record,
	}

	tmpManifest := key.manifestPath + ".tmp"
	data, err := json.MarshalIndent(manifest, "", "  ")
	if err != nil {
		os.Remove(tmpArchive)
		return err
	}
	if err := os.WriteFile(tmpManifest, data, 0o644); err != nil {
		os.Remove(tmpArchive)
		os.Remove(tmpManifest)
		return err
	}
	if err := os.Rename(tmpArchive, key.archivePath); err != nil {
		os.Remove(tmpArchive)
		os.Remove(tmpManifest)
		return err
	}
	if err := os.Rename(tmpManifest, key.manifestPath); err != nil {
		os.Remove(tmpManifest)
		return err
	}
	return nil
}

func loadManifest(path string) (*cacheManifest, error) {
	data, err := os.ReadFile(path)
	if err != nil {
		return nil, err
	}
	var manifest cacheManifest
	if err := json.Unmarshal(data, &manifest); err != nil {
		return nil, err
	}
	return &manifest, nil
}

func (pc *packageCache) validateManifest(key cacheKey, manifest *cacheManifest) error {
	archivePath := key.archivePath
	if manifest.Archive.Path != "" {
		archivePath = filepath.Join(key.dir, manifest.Archive.Path)
	}
	if _, err := os.Stat(archivePath); err != nil {
		return err
	}
	if manifest.Archive.Checksum != "" {
		sum, err := fileSHA256(archivePath)
		if err != nil {
			return err
		}
		if !strings.EqualFold(sum, manifest.Archive.Checksum) {
			return fmt.Errorf("cache: checksum mismatch for %s", archivePath)
		}
	}
	return nil
}

func fileSHA256(path string) (string, error) {
	f, err := os.Open(path)
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

func gatherArchiveObjects(pkg *aPackage) ([]string, error) {
	seen := make(map[string]struct{})
	var objects []string
	add := func(name string) error {
		if name == "" {
			return nil
		}
		if !strings.HasSuffix(name, ".o") {
			return nil
		}
		if _, ok := seen[name]; ok {
			return nil
		}
		if _, err := os.Stat(name); err != nil {
			if errors.Is(err, os.ErrNotExist) {
				return nil
			}
			return err
		}
		seen[name] = struct{}{}
		objects = append(objects, name)
		return nil
	}
	if err := add(pkg.ExportFile); err != nil {
		return nil, err
	}
	for _, file := range pkg.LLFiles {
		if err := add(file); err != nil {
			return nil, err
		}
	}
	return objects, nil
}

type fileLock struct {
	file *os.File
}

func acquireLock(path string) (*fileLock, error) {
	f, err := os.OpenFile(path, os.O_CREATE|os.O_RDWR, 0o644)
	if err != nil {
		return nil, err
	}
	if err := lockFile(f); err != nil {
		f.Close()
		return nil, err
	}
	return &fileLock{file: f}, nil
}

func (l *fileLock) Release() error {
	if l == nil || l.file == nil {
		return nil
	}
	err := unlockFile(l.file)
	closeErr := l.file.Close()
	l.file = nil
	if err != nil {
		return err
	}
	return closeErr
}
