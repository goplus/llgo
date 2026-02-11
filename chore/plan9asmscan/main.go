package main

import (
	"bytes"
	"encoding/json"
	"flag"
	"fmt"
	"io"
	"os"
	"os/exec"
	"path/filepath"
	"regexp"
	"runtime"
	"sort"
	"strings"

	"github.com/goplus/plan9asm"
)

type pkgJSON struct {
	ImportPath string   `json:"ImportPath"`
	Dir        string   `json:"Dir"`
	SFiles     []string `json:"SFiles"`
}

type opStat struct {
	Count int
	Files map[string]int
	Pkgs  map[string]int
}

type parseErr struct {
	File string
	Err  string
}

type report struct {
	Goos             string `json:"goos"`
	Goarch           string `json:"goarch"`
	StdPkgs          int    `json:"std_pkgs"`
	StdPkgsWithSFile int    `json:"std_pkgs_with_sfile"`
	AsmFiles         int    `json:"asm_files"`
	UniqueOps        int    `json:"unique_ops"`
	ParseErrCount    int    `json:"parse_err_count"`

	OpsByFreq    []opReport      `json:"ops_by_freq"`
	ClusterStats []clusterReport `json:"cluster_stats"`
	Unsupported  []opReport      `json:"unsupported"`
	ParseErrs    []parseErr      `json:"parse_errs,omitempty"`
}

type opReport struct {
	Op      string   `json:"op"`
	Cluster string   `json:"cluster"`
	Count   int      `json:"count"`
	Files   []string `json:"files,omitempty"`
}

type clusterReport struct {
	Cluster   string `json:"cluster"`
	UniqueOps int    `json:"unique_ops"`
	Hits      int    `json:"hits"`
}

var (
	reCaseString = regexp.MustCompile(`case\s+"([A-Za-z0-9_.$]+)"`)
	reCaseOp     = regexp.MustCompile(`case\s+Op([A-Za-z0-9_]+)`)
)

func main() {
	var (
		goos     = flag.String("goos", runtime.GOOS, "target GOOS")
		goarch   = flag.String("goarch", runtime.GOARCH, "target GOARCH (amd64/arm64)")
		out      = flag.String("out", "", "write report to file (default stdout)")
		format   = flag.String("format", "md", "output format: md|json")
		repoRoot = flag.String("repo-root", ".", "llgo repository root for extracting supported ops")
	)
	flag.Parse()

	if *goarch != "amd64" && *goarch != "arm64" {
		fatalf("unsupported -goarch %q (expect amd64/arm64)", *goarch)
	}
	arch, err := toPlan9Arch(*goarch)
	if err != nil {
		fatalf("%v", err)
	}

	pkgs, err := listStdPackages(*goos, *goarch)
	if err != nil {
		fatalf("list std packages: %v", err)
	}

	ops, parseErrs, pkgWithSFiles, asmFiles, err := scanPackages(pkgs, arch)
	if err != nil {
		fatalf("scan packages: %v", err)
	}

	supported, err := extractSupportedOps(*repoRoot, *goarch)
	if err != nil {
		fatalf("extract supported ops: %v", err)
	}

	rep := buildReport(*goos, *goarch, len(pkgs), pkgWithSFiles, asmFiles, ops, supported, parseErrs)

	var content []byte
	switch strings.ToLower(strings.TrimSpace(*format)) {
	case "json":
		content, err = json.MarshalIndent(rep, "", "  ")
		if err != nil {
			fatalf("marshal report json: %v", err)
		}
		content = append(content, '\n')
	case "md":
		content = renderMarkdown(rep)
	default:
		fatalf("unsupported -format %q (expect md|json)", *format)
	}

	if *out == "" {
		_, _ = os.Stdout.Write(content)
		return
	}
	if err := os.WriteFile(*out, content, 0644); err != nil {
		fatalf("write %s: %v", *out, err)
	}
}

func toPlan9Arch(goarch string) (plan9asm.Arch, error) {
	switch goarch {
	case "amd64":
		return plan9asm.ArchAMD64, nil
	case "arm64":
		return plan9asm.ArchARM64, nil
	default:
		return "", fmt.Errorf("unsupported arch: %s", goarch)
	}
}

func listStdPackages(goos, goarch string) ([]pkgJSON, error) {
	cmd := exec.Command("go", "list", "-json", "std")
	cmd.Env = append(os.Environ(),
		"GOOS="+goos,
		"GOARCH="+goarch,
	)
	out, err := cmd.Output()
	if err != nil {
		return nil, fmt.Errorf("go list -json std: %w", err)
	}

	dec := json.NewDecoder(bytes.NewReader(out))
	var outPkgs []pkgJSON
	for {
		var p pkgJSON
		err := dec.Decode(&p)
		if err == io.EOF {
			break
		}
		if err != nil {
			return nil, fmt.Errorf("decode go list output: %w", err)
		}
		outPkgs = append(outPkgs, p)
	}
	return outPkgs, nil
}

func scanPackages(pkgs []pkgJSON, arch plan9asm.Arch) (map[string]*opStat, []parseErr, int, int, error) {
	ops := map[string]*opStat{}
	var parseErrs []parseErr
	pkgWithSFiles := 0
	asmFiles := 0

	for _, p := range pkgs {
		if len(p.SFiles) == 0 || p.Dir == "" {
			continue
		}
		pkgWithSFiles++
		for _, sf := range p.SFiles {
			path := filepath.Join(p.Dir, sf)
			src, err := os.ReadFile(path)
			if err != nil {
				return nil, nil, 0, 0, fmt.Errorf("read %s: %w", path, err)
			}
			asmFiles++
			rel := shortStdPath(path)

			file, err := plan9asm.Parse(arch, string(src))
			if err != nil {
				parseErrs = append(parseErrs, parseErr{File: rel, Err: err.Error()})
				continue
			}
			for _, fn := range file.Funcs {
				for _, ins := range fn.Instrs {
					if ins.Op == plan9asm.OpLABEL {
						continue
					}
					nop := normalizeOp(string(ins.Op))
					if nop == "" {
						continue
					}
					s := ops[nop]
					if s == nil {
						s = &opStat{
							Files: map[string]int{},
							Pkgs:  map[string]int{},
						}
						ops[nop] = s
					}
					s.Count++
					s.Files[rel]++
					s.Pkgs[p.ImportPath]++
				}
			}
			if len(file.Data) > 0 {
				addOpStat(ops, "DATA", rel, p.ImportPath, len(file.Data))
			}
			if len(file.Globl) > 0 {
				addOpStat(ops, "GLOBL", rel, p.ImportPath, len(file.Globl))
			}
		}
	}
	return ops, parseErrs, pkgWithSFiles, asmFiles, nil
}

func addOpStat(ops map[string]*opStat, op, relFile, pkg string, count int) {
	nop := normalizeOp(op)
	if nop == "" || count <= 0 {
		return
	}
	s := ops[nop]
	if s == nil {
		s = &opStat{
			Files: map[string]int{},
			Pkgs:  map[string]int{},
		}
		ops[nop] = s
	}
	s.Count += count
	s.Files[relFile] += count
	s.Pkgs[pkg] += count
}

func normalizeOp(op string) string {
	op = strings.ToUpper(strings.TrimSpace(op))
	if op == "" {
		return ""
	}
	if strings.ContainsAny(op, "(),;*/") {
		return ""
	}
	if strings.Contains(op, "_") {
		return ""
	}
	if i := strings.IndexByte(op, '.'); i >= 0 {
		op = op[:i]
	}
	if op == "" {
		return ""
	}
	return op
}

func extractSupportedOps(repoRoot, goarch string) (map[string]struct{}, error) {
	supported := map[string]struct{}{
		"RET":      {},
		"TEXT":     {},
		"GLOBL":    {},
		"DATA":     {},
		"BYTE":     {},
		"WORD":     {},
		"LONG":     {},
		"QUAD":     {},
		"PCALIGN":  {},
		"FUNCDATA": {},
		"PCDATA":   {},
	}

	glob := filepath.Join(repoRoot, "internal", "plan9asm", goarch+"_*.go")
	files, err := filepath.Glob(glob)
	if err != nil {
		return nil, err
	}
	sort.Strings(files)
	for _, f := range files {
		src, err := os.ReadFile(f)
		if err != nil {
			return nil, fmt.Errorf("read %s: %w", f, err)
		}
		for _, m := range reCaseString.FindAllSubmatch(src, -1) {
			supported[normalizeOp(string(m[1]))] = struct{}{}
		}
		for _, m := range reCaseOp.FindAllSubmatch(src, -1) {
			supported[normalizeOp(string(m[1]))] = struct{}{}
		}
	}
	return supported, nil
}

func buildReport(
	goos, goarch string,
	stdPkgs, stdPkgsWithSFile, asmFiles int,
	ops map[string]*opStat,
	supported map[string]struct{},
	parseErrs []parseErr,
) report {
	rep := report{
		Goos:             goos,
		Goarch:           goarch,
		StdPkgs:          stdPkgs,
		StdPkgsWithSFile: stdPkgsWithSFile,
		AsmFiles:         asmFiles,
		UniqueOps:        len(ops),
		ParseErrCount:    len(parseErrs),
		ParseErrs:        parseErrs,
	}

	clusterAgg := map[string]*clusterReport{}

	var all []opReport
	var unsupported []opReport
	for op, st := range ops {
		cl := clusterOf(goarch, op)
		files := topFiles(st.Files, 4)
		item := opReport{
			Op:      op,
			Cluster: cl,
			Count:   st.Count,
			Files:   files,
		}
		all = append(all, item)

		agg := clusterAgg[cl]
		if agg == nil {
			agg = &clusterReport{Cluster: cl}
			clusterAgg[cl] = agg
		}
		agg.UniqueOps++
		agg.Hits += st.Count

		if isDirective(op) {
			continue
		}
		if _, ok := supported[op]; !ok {
			unsupported = append(unsupported, item)
		}
	}

	sort.Slice(all, func(i, j int) bool {
		if all[i].Count != all[j].Count {
			return all[i].Count > all[j].Count
		}
		return all[i].Op < all[j].Op
	})
	sort.Slice(unsupported, func(i, j int) bool {
		if unsupported[i].Count != unsupported[j].Count {
			return unsupported[i].Count > unsupported[j].Count
		}
		return unsupported[i].Op < unsupported[j].Op
	})
	rep.OpsByFreq = all
	rep.Unsupported = unsupported

	for _, c := range clusterAgg {
		rep.ClusterStats = append(rep.ClusterStats, *c)
	}
	sort.Slice(rep.ClusterStats, func(i, j int) bool {
		if rep.ClusterStats[i].Hits != rep.ClusterStats[j].Hits {
			return rep.ClusterStats[i].Hits > rep.ClusterStats[j].Hits
		}
		return rep.ClusterStats[i].Cluster < rep.ClusterStats[j].Cluster
	})

	sort.Slice(rep.ParseErrs, func(i, j int) bool {
		if rep.ParseErrs[i].File != rep.ParseErrs[j].File {
			return rep.ParseErrs[i].File < rep.ParseErrs[j].File
		}
		return rep.ParseErrs[i].Err < rep.ParseErrs[j].Err
	})
	return rep
}

func renderMarkdown(rep report) []byte {
	var b strings.Builder
	fmt.Fprintf(&b, "# Plan9 Asm Scan Report (%s/%s)\n\n", rep.Goos, rep.Goarch)
	fmt.Fprintf(&b, "- std packages: `%d`\n", rep.StdPkgs)
	fmt.Fprintf(&b, "- std packages with `.s`: `%d`\n", rep.StdPkgsWithSFile)
	fmt.Fprintf(&b, "- asm files scanned: `%d`\n", rep.AsmFiles)
	fmt.Fprintf(&b, "- unique ops: `%d`\n", rep.UniqueOps)
	fmt.Fprintf(&b, "- parser failures: `%d`\n\n", rep.ParseErrCount)

	b.WriteString("## Cluster Summary\n\n")
	b.WriteString("| cluster | unique ops | hits |\n")
	b.WriteString("|---|---:|---:|\n")
	for _, c := range rep.ClusterStats {
		fmt.Fprintf(&b, "| %s | %d | %d |\n", c.Cluster, c.UniqueOps, c.Hits)
	}

	b.WriteString("\n## Unsupported Ops (vs current lowerers)\n\n")
	if len(rep.Unsupported) == 0 {
		b.WriteString("_none_\n")
	} else {
		b.WriteString("| op | cluster | hits | example files |\n")
		b.WriteString("|---|---|---:|---|\n")
		for _, it := range rep.Unsupported {
			fmt.Fprintf(&b, "| %s | %s | %d | %s |\n",
				it.Op, it.Cluster, it.Count, strings.Join(it.Files, ", "))
		}
	}

	b.WriteString("\n## Top Ops\n\n")
	b.WriteString("| op | cluster | hits |\n")
	b.WriteString("|---|---|---:|\n")
	top := rep.OpsByFreq
	if len(top) > 40 {
		top = top[:40]
	}
	for _, it := range top {
		fmt.Fprintf(&b, "| %s | %s | %d |\n", it.Op, it.Cluster, it.Count)
	}

	if len(rep.ParseErrs) > 0 {
		b.WriteString("\n## Parser Failures (first 40)\n\n")
		limit := rep.ParseErrs
		if len(limit) > 40 {
			limit = limit[:40]
		}
		for _, pe := range limit {
			fmt.Fprintf(&b, "- `%s`: `%s`\n", pe.File, pe.Err)
		}
	}

	return []byte(b.String())
}

func clusterOf(goarch, op string) string {
	if isDirective(op) {
		return "directive"
	}

	switch goarch {
	case "amd64":
		switch {
		case strings.HasPrefix(op, "J") || op == "RET" || op == "CALL" || op == "JMP" || strings.HasPrefix(op, "SET") || strings.HasPrefix(op, "CMOV"):
			return "x86-control"
		case strings.HasPrefix(op, "V") || strings.HasPrefix(op, "P"):
			return "x86-simd"
		case strings.Contains(op, "CRC32"):
			return "x86-crc"
		case strings.Contains(op, "XCHG") || strings.Contains(op, "CMPXCHG") || strings.Contains(op, "LOCK") || strings.Contains(op, "FENCE"):
			return "x86-atomic"
		case strings.HasPrefix(op, "BS") || strings.HasPrefix(op, "BT") || strings.HasPrefix(op, "SH") || strings.HasPrefix(op, "RO") || strings.HasPrefix(op, "POPCNT"):
			return "x86-bit-shift"
		default:
			return "x86-scalar"
		}
	case "arm64":
		switch {
		case strings.HasPrefix(op, "V"):
			return "arm64-neon"
		case op == "B" || op == "BL" || strings.HasPrefix(op, "B.") || strings.HasPrefix(op, "CB") || strings.HasPrefix(op, "TB") || op == "RET":
			return "arm64-control"
		case strings.Contains(op, "XR") || strings.Contains(op, "CAS") || strings.Contains(op, "SWP") || op == "DMB" || op == "DSB" || op == "ISB":
			return "arm64-atomic"
		case strings.HasPrefix(op, "LS") || strings.HasPrefix(op, "ASR") || strings.HasPrefix(op, "ROR") || strings.HasPrefix(op, "RBIT") || strings.HasPrefix(op, "REV") || strings.HasPrefix(op, "CLZ"):
			return "arm64-bit-shift"
		default:
			return "arm64-scalar"
		}
	default:
		return "other"
	}
}

func isDirective(op string) bool {
	switch op {
	case "TEXT", "DATA", "GLOBL", "BYTE", "WORD", "LONG", "QUAD", "PCALIGN", "FUNCDATA", "PCDATA":
		return true
	default:
		return false
	}
}

func topFiles(m map[string]int, n int) []string {
	type kv struct {
		K string
		V int
	}
	arr := make([]kv, 0, len(m))
	for k, v := range m {
		arr = append(arr, kv{K: k, V: v})
	}
	sort.Slice(arr, func(i, j int) bool {
		if arr[i].V != arr[j].V {
			return arr[i].V > arr[j].V
		}
		return arr[i].K < arr[j].K
	})
	if len(arr) > n {
		arr = arr[:n]
	}
	out := make([]string, 0, len(arr))
	for _, it := range arr {
		out = append(out, it.K)
	}
	return out
}

func shortStdPath(path string) string {
	goroot := runtime.GOROOT()
	if goroot == "" {
		return filepath.ToSlash(path)
	}
	root := filepath.ToSlash(filepath.Join(goroot, "src")) + "/"
	p := filepath.ToSlash(path)
	if strings.HasPrefix(p, root) {
		return strings.TrimPrefix(p, root)
	}
	return p
}

func fatalf(format string, args ...any) {
	fmt.Fprintf(os.Stderr, format+"\n", args...)
	os.Exit(1)
}
