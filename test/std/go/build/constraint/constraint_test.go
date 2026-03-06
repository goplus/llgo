package constraint_test

import (
	"errors"
	"go/build/constraint"
	"slices"
	"testing"
)

func TestParseGoBuild(t *testing.T) {
	line := "//go:build linux && (amd64 || arm64)"
	if !constraint.IsGoBuild(line) {
		t.Fatalf("IsGoBuild(%q) = false, want true", line)
	}

	expr, err := constraint.Parse(line)
	if err != nil {
		t.Fatalf("Parse(%q) error: %v", line, err)
	}

	if got := expr.String(); got != "linux && (amd64 || arm64)" {
		t.Fatalf("expr.String() = %q, want %q", got, "linux && (amd64 || arm64)")
	}

	var observed []string
	ok := func(tag string) bool {
		observed = append(observed, tag)
		switch tag {
		case "linux", "amd64":
			return true
		default:
			return false
		}
	}

	if !expr.Eval(ok) {
		t.Fatal("Eval should succeed for linux/amd64 configuration")
	}
	if !slices.Equal(observed, []string{"linux", "amd64", "arm64"}) {
		t.Fatalf("Eval visited %v, want [linux amd64 arm64]", observed)
	}
}

func TestParsePlusBuild(t *testing.T) {
	line := "// +build linux,amd64 darwin"
	if !constraint.IsPlusBuild(line) {
		t.Fatalf("IsPlusBuild(%q) = false, want true", line)
	}

	expr, err := constraint.Parse(line)
	if err != nil {
		t.Fatalf("Parse(%q) error: %v", line, err)
	}

	// // +build linux,amd64 darwin  =>  (linux && amd64) || darwin
	if got := expr.String(); got != "(linux && amd64) || darwin" {
		t.Fatalf("expr.String() = %q, want %q", got, "(linux && amd64) || darwin")
	}

	linuxAMD64 := func(tag string) bool { return tag == "linux" || tag == "amd64" }
	if !expr.Eval(linuxAMD64) {
		t.Fatalf("Eval should be true for linux/amd64, got false")
	}

	darwin := func(tag string) bool { return tag == "darwin" }
	if !expr.Eval(darwin) {
		t.Fatalf("Eval should be true for darwin, got false")
	}
}

func TestParseErrors(t *testing.T) {
	_, err := constraint.Parse("//go:build linux && && amd64")
	if err == nil {
		t.Fatal("Parse should report syntax error for consecutive &&")
	}
	var syn *constraint.SyntaxError
	if !errors.As(err, &syn) {
		t.Fatalf("Parse error type = %T, want SyntaxError", err)
	}
	if syn.Error() == "" {
		t.Fatal("SyntaxError.Error should return message")
	}

	if _, err := constraint.Parse("package main"); err == nil || err.Error() != "not a build constraint" {
		t.Fatalf("Parse(non-constraint) error = %v, want not a build constraint", err)
	}
}

func TestExprConstruction(t *testing.T) {
	linux := &constraint.TagExpr{Tag: "linux"}
	cgo := &constraint.TagExpr{Tag: "cgo"}
	andExpr := &constraint.AndExpr{
		X: linux,
		Y: &constraint.NotExpr{X: cgo},
	}
	orExpr := &constraint.OrExpr{
		X: andExpr,
		Y: &constraint.TagExpr{Tag: "darwin"},
	}

	if got := orExpr.String(); got != "(linux && !cgo) || darwin" {
		t.Fatalf("Or.String() = %q, want %q", got, "(linux && !cgo) || darwin")
	}

	ok := func(tag string) bool { return tag == "linux" || tag == "darwin" }
	if !orExpr.Eval(ok) {
		t.Fatal("Eval should be true when linux true and cgo false")
	}

	ok = func(tag string) bool { return tag == "darwin" }
	if !orExpr.Eval(ok) {
		t.Fatal("Eval should be true when darwin is true")
	}

	if !linux.Eval(func(tag string) bool { return tag == "linux" }) {
		t.Fatal("TagExpr.Eval did not consult predicate")
	}
	if linux.String() != "linux" {
		t.Fatalf("TagExpr.String() = %q, want linux", linux.String())
	}

	notExpr := &constraint.NotExpr{X: cgo}
	if notExpr.String() != "!cgo" {
		t.Fatalf("NotExpr.String() = %q, want !cgo", notExpr.String())
	}
	if notExpr.Eval(func(tag string) bool { return tag == "cgo" }) {
		t.Fatal("NotExpr.Eval should negate predicate result")
	}

	if andExpr.String() != "linux && !cgo" {
		t.Fatalf("AndExpr.String() = %q, want linux && !cgo", andExpr.String())
	}
	if andExpr.Eval(func(tag string) bool { return true }) {
		t.Fatal("AndExpr.Eval should require both operands true")
	}
}

func TestGoVersion(t *testing.T) {
	expr, err := constraint.Parse("//go:build (linux && go1.22) || go1.21")
	if err != nil {
		t.Fatalf("Parse error: %v", err)
	}

	if got := constraint.GoVersion(expr); got != "go1.21" {
		t.Fatalf("GoVersion = %q, want go1.21", got)
	}

	expr, err = constraint.Parse("//go:build linux || (windows && go1.22)")
	if err != nil {
		t.Fatalf("Parse error: %v", err)
	}
	if got := constraint.GoVersion(expr); got != "" {
		t.Fatalf("GoVersion = %q, want empty string", got)
	}
}

func TestPlusBuildLines(t *testing.T) {
	expr, err := constraint.Parse("//go:build (linux && amd64) || darwin")
	if err != nil {
		t.Fatalf("Parse error: %v", err)
	}

	lines, err := constraint.PlusBuildLines(expr)
	if err != nil {
		t.Fatalf("PlusBuildLines error: %v", err)
	}

	want := []string{"// +build linux,amd64 darwin"}
	if !slices.Equal(lines, want) {
		t.Fatalf("PlusBuildLines = %v, want %v", lines, want)
	}

	expr, err = constraint.Parse("//go:build !(linux && darwin)")
	if err != nil {
		t.Fatalf("Parse error: %v", err)
	}

	if _, err := constraint.PlusBuildLines(expr); err != nil {
		t.Fatalf("PlusBuildLines on simple negation should succeed, got %v", err)
	}

	expr, err = constraint.Parse("//go:build (linux && amd64) || (windows && arm64)")
	if err != nil {
		t.Fatalf("Parse error: %v", err)
	}
	lines, err = constraint.PlusBuildLines(expr)
	if err != nil {
		t.Fatalf("PlusBuildLines error: %v", err)
	}
	want = []string{"// +build linux,amd64 windows,arm64"}
	if !slices.Equal(lines, want) {
		t.Fatalf("PlusBuildLines two clauses = %v, want %v", lines, want)
	}

	expr, err = constraint.Parse("//go:build (linux || darwin) && (amd64 || arm64)")
	if err != nil {
		t.Fatalf("Parse error: %v", err)
	}
	lines, err = constraint.PlusBuildLines(expr)
	if err != nil {
		t.Fatalf("PlusBuildLines error: %v", err)
	}
	want = []string{"// +build linux darwin", "// +build amd64 arm64"}
	if !slices.Equal(lines, want) {
		t.Fatalf("PlusBuildLines and-of-ors = %v, want %v", lines, want)
	}
}
