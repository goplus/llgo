package main

import (
	"encoding/json"
	"flag"
	"fmt"
	"go/ast"
	"go/types"
	"log"
	"os"
	"os/exec"
	"path/filepath"
	"sort"
	"strings"

	"golang.org/x/tools/go/packages"
)

// FuncUsage represents a function usage
type FuncUsage struct {
	Name  string `json:"name"`
	Count int    `json:"count"`
}

// MethodUsage represents a method usage
type MethodUsage struct {
	Name  string `json:"name"`
	Count int    `json:"count"`
}

// TypeUsage represents a type and its methods
type TypeUsage struct {
	Name    string        `json:"name"`
	Methods []MethodUsage `json:"methods"`
}

// PackageUsage represents usage data for a package
type PackageUsage struct {
	PackageName string      `json:"packageName"`
	Funcs       []FuncUsage `json:"funcs"`
	Types       []TypeUsage `json:"types"`
}

// Coverage tracks what functions/methods are covered
type Coverage struct {
	Funcs   map[string]bool            // function name -> covered
	Methods map[string]map[string]bool // type name -> {method name -> covered}
}

// TestResult stores test result for a package
type TestResult struct {
	Package  string
	Status   string // "success" or "failed"
	Error    string
	Coverage map[string]*Coverage // pkg path -> coverage
}

func main() {
	compiler := flag.String("compiler", "go", "compiler to use (go or llgo)")
	flag.Parse()

	fmt.Printf("=== GoGen Dependency Coverage Report ===\n")
	fmt.Printf("Compiler: %s\n\n", *compiler)

	// Load usage requirements from JSON
	requirements, err := loadUsageData("usage.json")
	if err != nil {
		log.Fatalf("Failed to load usage.json: %v", err)
	}

	// Find all test directories
	testDirs, err := findTestDirs(".")
	if err != nil {
		log.Fatalf("Failed to find test directories: %v", err)
	}

	// Run all tests
	var results []TestResult
	for _, dir := range testDirs {
		fmt.Printf("Testing %s...\n", dir)
		result := testPackage(dir, *compiler)
		results = append(results, result)
		if result.Status == "success" {
			fmt.Printf("  ✅ SUCCESS\n")
		} else {
			fmt.Printf("  ❌ FAILED: %s\n", result.Error)
		}
	}

	// Generate report
	generateReport(results, requirements)
}

// loadUsageData loads gogen usage requirements from JSON file
func loadUsageData(filename string) (map[string]*PackageUsage, error) {
	data, err := os.ReadFile(filename)
	if err != nil {
		return nil, err
	}

	var usageList []PackageUsage
	if err := json.Unmarshal(data, &usageList); err != nil {
		return nil, err
	}

	result := make(map[string]*PackageUsage)
	for i := range usageList {
		pkg := &usageList[i]
		result[pkg.PackageName] = pkg
	}

	return result, nil
}

// findTestDirs finds all test directories (subdirectories with main.go)
func findTestDirs(root string) ([]string, error) {
	var dirs []string
	entries, err := os.ReadDir(root)
	if err != nil {
		return nil, err
	}

	for _, entry := range entries {
		if !entry.IsDir() {
			continue
		}
		name := entry.Name()
		if strings.HasPrefix(name, ".") || name == "main.go" {
			continue
		}

		dirPath := filepath.Join(root, name)
		mainFile := filepath.Join(dirPath, "main.go")
		if _, err := os.Stat(mainFile); err == nil {
			dirs = append(dirs, dirPath)
		}
	}

	sort.Strings(dirs)
	return dirs, nil
}

// testPackage tests a package
func testPackage(testDir string, compiler string) TestResult {
	pkgName := filepath.Base(testDir)

	// 1. Compile and run test
	cmd := exec.Command(compiler, "run", ".")
	cmd.Dir = testDir
	output, err := cmd.CombinedOutput()

	if err != nil {
		return TestResult{
			Package: pkgName,
			Status:  "failed",
			Error:   fmt.Sprintf("%v\n%s", err, output),
		}
	}

	// 2. Extract coverage
	coverage, err := extractCoverage(testDir)
	if err != nil {
		return TestResult{
			Package: pkgName,
			Status:  "failed",
			Error:   fmt.Sprintf("Failed to extract coverage: %v", err),
		}
	}

	return TestResult{
		Package:  pkgName,
		Status:   "success",
		Coverage: coverage,
	}
}

// extractCoverage extracts functions and methods covered by test code
func extractCoverage(testDir string) (map[string]*Coverage, error) {
	cfg := &packages.Config{
		Mode: packages.NeedName | packages.NeedSyntax |
			packages.NeedTypes | packages.NeedTypesInfo,
		Dir: testDir,
	}

	pkgs, err := packages.Load(cfg, ".")
	if err != nil {
		return nil, err
	}

	result := make(map[string]*Coverage)

	for _, pkg := range pkgs {
		if pkg.Types == nil || pkg.TypesInfo == nil {
			continue
		}

		info := pkg.TypesInfo
		for _, file := range pkg.Syntax {
			ast.Inspect(file, func(n ast.Node) bool {
				call, ok := n.(*ast.CallExpr)
				if !ok {
					return true
				}

				var obj types.Object
				switch fn := call.Fun.(type) {
				case *ast.SelectorExpr:
					obj = info.Uses[fn.Sel]
				case *ast.Ident:
					obj = info.Uses[fn]
				default:
					return true
				}

				if obj == nil {
					return true
				}

				fnObj, ok := obj.(*types.Func)
				if !ok {
					return true
				}

				pkgObj := fnObj.Pkg()
				if pkgObj == nil {
					return true
				}

				pkgPath := pkgObj.Path()
				if result[pkgPath] == nil {
					result[pkgPath] = &Coverage{
						Funcs:   make(map[string]bool),
						Methods: make(map[string]map[string]bool),
					}
				}

				sig := fnObj.Type().(*types.Signature)
				if recv := sig.Recv(); recv != nil {
					// This is a method
					typeName := getTypeName(recv.Type())
					if typeName != "" {
						if result[pkgPath].Methods[typeName] == nil {
							result[pkgPath].Methods[typeName] = make(map[string]bool)
						}
						result[pkgPath].Methods[typeName][fnObj.Name()] = true
					}
				} else {
					// This is a function
					result[pkgPath].Funcs[fnObj.Name()] = true
				}

				return true
			})
		}
	}

	return result, nil
}

// getTypeName extracts the type name from a types.Type
func getTypeName(t types.Type) string {
	// Remove pointer
	if ptr, ok := t.(*types.Pointer); ok {
		t = ptr.Elem()
	}

	// Get named type
	if named, ok := t.(*types.Named); ok {
		return named.Obj().Name()
	}

	// Interface or other types
	return ""
}

// generateReport generates test report
func generateReport(results []TestResult, requirements map[string]*PackageUsage) {
	fmt.Printf("\n=== Summary ===\n\n")

	// Collect coverage from all successful packages
	allCoverage := make(map[string]*Coverage)
	successCount := 0
	var failedTests []string

	for _, result := range results {
		if result.Status == "success" {
			successCount++
			for pkg, cov := range result.Coverage {
				if _, exists := requirements[pkg]; exists {
					allCoverage[pkg] = cov
				}
			}
		} else {
			failedTests = append(failedTests, result.Package)
		}
	}

	// Package level statistics
	totalPkgs := len(requirements)
	fmt.Printf("Package Level:\n")
	fmt.Printf("  Total packages required: %d\n", totalPkgs)
	fmt.Printf("  Working packages: %d\n", successCount)
	fmt.Printf("  Failed tests: %d\n", len(failedTests))
	fmt.Printf("  Package availability: %.1f%% (%d/%d)\n\n",
		float64(len(allCoverage))*100/float64(totalPkgs), len(allCoverage), totalPkgs)

	// Function/Method level statistics
	totalItems := 0
	availableItems := 0

	for pkg, reqData := range requirements {
		pkgTotal := len(reqData.Funcs)
		for _, typ := range reqData.Types {
			pkgTotal += len(typ.Methods)
		}
		totalItems += pkgTotal

		if cov, ok := allCoverage[pkg]; ok {
			// Count covered functions
			for _, fn := range reqData.Funcs {
				if cov.Funcs[fn.Name] {
					availableItems++
				}
			}

			// Count covered methods
			for _, typ := range reqData.Types {
				for _, method := range typ.Methods {
					if cov.Methods[typ.Name] != nil && cov.Methods[typ.Name][method.Name] {
						availableItems++
					}
				}
			}
		}
	}

	fmt.Printf("Function/Method Level (only counting working packages):\n")
	fmt.Printf("  Total functions/methods required: %d\n", totalItems)
	fmt.Printf("  Available functions/methods: %d\n", availableItems)
	fmt.Printf("  Coverage: %.1f%% (%d/%d)\n\n",
		float64(availableItems)*100/float64(totalItems), availableItems, totalItems)

	// Failed tests list
	if len(failedTests) > 0 {
		fmt.Printf("Failed tests:\n")
		for _, test := range failedTests {
			fmt.Printf("  ❌ %s\n", test)
		}
		fmt.Println()
	}

	// Detailed package coverage
	fmt.Printf("Details by package:\n")

	// Sort packages by name
	var pkgNames []string
	for pkg := range requirements {
		pkgNames = append(pkgNames, pkg)
	}
	sort.Strings(pkgNames)

	for _, pkg := range pkgNames {
		reqData := requirements[pkg]
		totalReq := len(reqData.Funcs)
		for _, typ := range reqData.Types {
			totalReq += len(typ.Methods)
		}

		if cov, ok := allCoverage[pkg]; ok {
			covered := 0

			// Count covered functions
			for _, fn := range reqData.Funcs {
				if cov.Funcs[fn.Name] {
					covered++
				}
			}

			// Count covered methods
			for _, typ := range reqData.Types {
				for _, method := range typ.Methods {
					if cov.Methods[typ.Name] != nil && cov.Methods[typ.Name][method.Name] {
						covered++
					}
				}
			}

			fmt.Printf("  ✅ %s: %d/%d items (%.1f%%)\n",
				pkg, covered, totalReq,
				float64(covered)*100/float64(totalReq))
		} else {
			fmt.Printf("  ❌ %s: 0/%d items (not tested)\n", pkg, totalReq)
		}
	}
}
