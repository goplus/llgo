package flag_test

import (
	"bytes"
	"flag"
	"os"
	"strings"
	"testing"
	"time"
)

// Test flag.Bool and flag.BoolVar
func TestBool(t *testing.T) {
	fs := flag.NewFlagSet("test", flag.ContinueOnError)

	// Test Bool
	boolPtr := fs.Bool("b", false, "bool flag")
	if *boolPtr != false {
		t.Error("Bool default should be false")
	}

	// Test BoolVar
	var boolVar bool
	fs.BoolVar(&boolVar, "bv", true, "bool var flag")
	if boolVar != true {
		t.Error("BoolVar default should be true")
	}

	// Parse flags
	err := fs.Parse([]string{"-b", "-bv=false"})
	if err != nil {
		t.Fatalf("Parse error: %v", err)
	}

	if *boolPtr != true {
		t.Error("Bool should be true after parsing")
	}
	if boolVar != false {
		t.Error("BoolVar should be false after parsing")
	}
}

// Test flag.Int and flag.IntVar
func TestInt(t *testing.T) {
	fs := flag.NewFlagSet("test", flag.ContinueOnError)

	// Test Int
	intPtr := fs.Int("i", 10, "int flag")
	if *intPtr != 10 {
		t.Error("Int default should be 10")
	}

	// Test IntVar
	var intVar int
	fs.IntVar(&intVar, "iv", 20, "int var flag")
	if intVar != 20 {
		t.Error("IntVar default should be 20")
	}

	// Parse flags
	err := fs.Parse([]string{"-i=42", "-iv", "99"})
	if err != nil {
		t.Fatalf("Parse error: %v", err)
	}

	if *intPtr != 42 {
		t.Errorf("Int should be 42, got %d", *intPtr)
	}
	if intVar != 99 {
		t.Errorf("IntVar should be 99, got %d", intVar)
	}
}

// Test flag.Int64 and flag.Int64Var
func TestInt64(t *testing.T) {
	fs := flag.NewFlagSet("test", flag.ContinueOnError)

	int64Ptr := fs.Int64("i64", 100, "int64 flag")
	var int64Var int64
	fs.Int64Var(&int64Var, "i64v", 200, "int64 var flag")

	err := fs.Parse([]string{"-i64=1000", "-i64v=2000"})
	if err != nil {
		t.Fatalf("Parse error: %v", err)
	}

	if *int64Ptr != 1000 {
		t.Errorf("Int64 should be 1000, got %d", *int64Ptr)
	}
	if int64Var != 2000 {
		t.Errorf("Int64Var should be 2000, got %d", int64Var)
	}
}

// Test flag.Uint and flag.UintVar
func TestUint(t *testing.T) {
	fs := flag.NewFlagSet("test", flag.ContinueOnError)

	uintPtr := fs.Uint("u", 10, "uint flag")
	var uintVar uint
	fs.UintVar(&uintVar, "uv", 20, "uint var flag")

	err := fs.Parse([]string{"-u=42", "-uv=99"})
	if err != nil {
		t.Fatalf("Parse error: %v", err)
	}

	if *uintPtr != 42 {
		t.Errorf("Uint should be 42, got %d", *uintPtr)
	}
	if uintVar != 99 {
		t.Errorf("UintVar should be 99, got %d", uintVar)
	}
}

// Test flag.Uint64 and flag.Uint64Var
func TestUint64(t *testing.T) {
	fs := flag.NewFlagSet("test", flag.ContinueOnError)

	uint64Ptr := fs.Uint64("u64", 100, "uint64 flag")
	var uint64Var uint64
	fs.Uint64Var(&uint64Var, "u64v", 200, "uint64 var flag")

	err := fs.Parse([]string{"-u64=1000", "-u64v=2000"})
	if err != nil {
		t.Fatalf("Parse error: %v", err)
	}

	if *uint64Ptr != 1000 {
		t.Errorf("Uint64 should be 1000, got %d", *uint64Ptr)
	}
	if uint64Var != 2000 {
		t.Errorf("Uint64Var should be 2000, got %d", uint64Var)
	}
}

// Test flag.Float64 and flag.Float64Var
func TestFloat64(t *testing.T) {
	fs := flag.NewFlagSet("test", flag.ContinueOnError)

	float64Ptr := fs.Float64("f", 1.5, "float64 flag")
	var float64Var float64
	fs.Float64Var(&float64Var, "fv", 2.5, "float64 var flag")

	err := fs.Parse([]string{"-f=3.14", "-fv=2.71"})
	if err != nil {
		t.Fatalf("Parse error: %v", err)
	}

	if *float64Ptr != 3.14 {
		t.Errorf("Float64 should be 3.14, got %f", *float64Ptr)
	}
	if float64Var != 2.71 {
		t.Errorf("Float64Var should be 2.71, got %f", float64Var)
	}
}

// Test flag.String and flag.StringVar
func TestString(t *testing.T) {
	fs := flag.NewFlagSet("test", flag.ContinueOnError)

	stringPtr := fs.String("s", "default", "string flag")
	var stringVar string
	fs.StringVar(&stringVar, "sv", "default2", "string var flag")

	err := fs.Parse([]string{"-s=hello", "-sv", "world"})
	if err != nil {
		t.Fatalf("Parse error: %v", err)
	}

	if *stringPtr != "hello" {
		t.Errorf("String should be 'hello', got %q", *stringPtr)
	}
	if stringVar != "world" {
		t.Errorf("StringVar should be 'world', got %q", stringVar)
	}
}

// Test flag.Duration and flag.DurationVar
func TestDuration(t *testing.T) {
	fs := flag.NewFlagSet("test", flag.ContinueOnError)

	durationPtr := fs.Duration("d", time.Second, "duration flag")
	var durationVar time.Duration
	fs.DurationVar(&durationVar, "dv", time.Minute, "duration var flag")

	err := fs.Parse([]string{"-d=5s", "-dv=10m"})
	if err != nil {
		t.Fatalf("Parse error: %v", err)
	}

	if *durationPtr != 5*time.Second {
		t.Errorf("Duration should be 5s, got %v", *durationPtr)
	}
	if durationVar != 10*time.Minute {
		t.Errorf("DurationVar should be 10m, got %v", durationVar)
	}
}

// Test flag.Func and flag.BoolFunc
func TestFunc(t *testing.T) {
	fs := flag.NewFlagSet("test", flag.ContinueOnError)

	var funcValue string
	fs.Func("fn", "func flag", func(s string) error {
		funcValue = s
		return nil
	})

	var boolFuncCalled bool
	fs.BoolFunc("bf", "bool func flag", func(s string) error {
		boolFuncCalled = true
		return nil
	})

	err := fs.Parse([]string{"-fn=test", "-bf"})
	if err != nil {
		t.Fatalf("Parse error: %v", err)
	}

	if funcValue != "test" {
		t.Errorf("Func value should be 'test', got %q", funcValue)
	}
	if !boolFuncCalled {
		t.Error("BoolFunc should have been called")
	}
}

// Test flag.TextVar
func TestTextVar(t *testing.T) {
	fs := flag.NewFlagSet("test", flag.ContinueOnError)

	var addr netAddr
	fs.TextVar(&addr, "addr", netAddr{}, "address flag")

	err := fs.Parse([]string{"-addr=127.0.0.1:8080"})
	if err != nil {
		t.Fatalf("Parse error: %v", err)
	}

	if addr.String() != "127.0.0.1:8080" {
		t.Errorf("TextVar should be '127.0.0.1:8080', got %q", addr.String())
	}
}

// netAddr implements encoding.TextUnmarshaler and encoding.TextMarshaler for testing
type netAddr struct {
	value string
}

func (n *netAddr) UnmarshalText(text []byte) error {
	n.value = string(text)
	return nil
}

func (n netAddr) MarshalText() ([]byte, error) {
	return []byte(n.value), nil
}

func (n netAddr) String() string {
	return n.value
}

// Test FlagSet.Arg, Args, NArg
func TestArgs(t *testing.T) {
	fs := flag.NewFlagSet("test", flag.ContinueOnError)
	fs.Bool("b", false, "bool flag")

	err := fs.Parse([]string{"-b", "arg1", "arg2", "arg3"})
	if err != nil {
		t.Fatalf("Parse error: %v", err)
	}

	if fs.NArg() != 3 {
		t.Errorf("NArg should be 3, got %d", fs.NArg())
	}

	args := fs.Args()
	if len(args) != 3 {
		t.Errorf("Args length should be 3, got %d", len(args))
	}

	if fs.Arg(0) != "arg1" {
		t.Errorf("Arg(0) should be 'arg1', got %q", fs.Arg(0))
	}
	if fs.Arg(1) != "arg2" {
		t.Errorf("Arg(1) should be 'arg2', got %q", fs.Arg(1))
	}
	if fs.Arg(2) != "arg3" {
		t.Errorf("Arg(2) should be 'arg3', got %q", fs.Arg(2))
	}

	// Test out of bounds
	if fs.Arg(10) != "" {
		t.Error("Arg(10) should return empty string")
	}
}

// Test FlagSet.NFlag
func TestNFlag(t *testing.T) {
	fs := flag.NewFlagSet("test", flag.ContinueOnError)
	fs.Bool("a", false, "a flag")
	fs.Bool("b", false, "b flag")
	fs.Bool("c", false, "c flag")

	if fs.NFlag() != 0 {
		t.Error("NFlag should be 0 before parsing")
	}

	err := fs.Parse([]string{"-a", "-b"})
	if err != nil {
		t.Fatalf("Parse error: %v", err)
	}

	if fs.NFlag() != 2 {
		t.Errorf("NFlag should be 2, got %d", fs.NFlag())
	}
}

// Test FlagSet.Lookup
func TestLookup(t *testing.T) {
	fs := flag.NewFlagSet("test", flag.ContinueOnError)
	fs.String("name", "default", "name flag")

	f := fs.Lookup("name")
	if f == nil {
		t.Fatal("Lookup should return flag")
	}
	if f.Name != "name" {
		t.Errorf("Flag name should be 'name', got %q", f.Name)
	}
	if f.Usage != "name flag" {
		t.Errorf("Flag usage should be 'name flag', got %q", f.Usage)
	}

	f = fs.Lookup("nonexistent")
	if f != nil {
		t.Error("Lookup should return nil for nonexistent flag")
	}
}

// Test FlagSet.Set
func TestSet(t *testing.T) {
	fs := flag.NewFlagSet("test", flag.ContinueOnError)
	fs.String("s", "default", "string flag")

	err := fs.Set("s", "newvalue")
	if err != nil {
		t.Fatalf("Set error: %v", err)
	}

	f := fs.Lookup("s")
	if f.Value.String() != "newvalue" {
		t.Errorf("Value should be 'newvalue', got %q", f.Value.String())
	}

	// Test setting nonexistent flag
	err = fs.Set("nonexistent", "value")
	if err == nil {
		t.Error("Set should error for nonexistent flag")
	}
}

// Test FlagSet.Visit and VisitAll
func TestVisit(t *testing.T) {
	fs := flag.NewFlagSet("test", flag.ContinueOnError)
	fs.String("a", "default", "a flag")
	fs.String("b", "default", "b flag")
	fs.String("c", "default", "c flag")

	err := fs.Parse([]string{"-a=set", "-b=set"})
	if err != nil {
		t.Fatalf("Parse error: %v", err)
	}

	// Test Visit (only set flags)
	visitCount := 0
	fs.Visit(func(f *flag.Flag) {
		visitCount++
	})
	if visitCount != 2 {
		t.Errorf("Visit should visit 2 flags, visited %d", visitCount)
	}

	// Test VisitAll (all flags)
	visitAllCount := 0
	fs.VisitAll(func(f *flag.Flag) {
		visitAllCount++
	})
	if visitAllCount != 3 {
		t.Errorf("VisitAll should visit 3 flags, visited %d", visitAllCount)
	}
}

// Test FlagSet.Parsed
func TestParsed(t *testing.T) {
	fs := flag.NewFlagSet("test", flag.ContinueOnError)

	if fs.Parsed() {
		t.Error("Parsed should be false before parsing")
	}

	err := fs.Parse([]string{})
	if err != nil {
		t.Fatalf("Parse error: %v", err)
	}

	if !fs.Parsed() {
		t.Error("Parsed should be true after parsing")
	}
}

// Test FlagSet.Name
func TestName(t *testing.T) {
	fs := flag.NewFlagSet("testname", flag.ContinueOnError)

	if fs.Name() != "testname" {
		t.Errorf("Name should be 'testname', got %q", fs.Name())
	}
}

// Test FlagSet error handling
func TestErrorHandling(t *testing.T) {
	// Test ContinueOnError
	fs := flag.NewFlagSet("test", flag.ContinueOnError)
	fs.Bool("b", false, "bool flag")

	err := fs.Parse([]string{"-unknown"})
	if err == nil {
		t.Error("Parse should error on unknown flag with ContinueOnError")
	}

	// Test ExitOnError - can't test as it calls os.Exit
	// Test PanicOnError
	fs = flag.NewFlagSet("test", flag.PanicOnError)
	fs.Bool("b", false, "bool flag")

	defer func() {
		if r := recover(); r == nil {
			t.Error("Parse should panic on error with PanicOnError")
		}
	}()

	fs.Parse([]string{"-unknown"})
}

// Test ErrorHandling constants
func TestErrorHandlingConstants(t *testing.T) {
	_ = flag.ContinueOnError
	_ = flag.ExitOnError
	_ = flag.PanicOnError

	// Test ErrorHandling type
	var eh flag.ErrorHandling
	eh = flag.ContinueOnError
	if eh != flag.ContinueOnError {
		t.Error("ErrorHandling type assignment failed")
	}
}

// Test flag.ErrHelp
func TestErrHelp(t *testing.T) {
	if flag.ErrHelp == nil {
		t.Error("ErrHelp should not be nil")
	}

	fs := flag.NewFlagSet("test", flag.ContinueOnError)
	err := fs.Parse([]string{"-help"})
	if err != flag.ErrHelp {
		t.Errorf("Parse -help should return ErrHelp, got %v", err)
	}
}

// Test FlagSet.Output and SetOutput
func TestOutput(t *testing.T) {
	fs := flag.NewFlagSet("test", flag.ContinueOnError)

	var buf bytes.Buffer
	fs.SetOutput(&buf)

	output := fs.Output()
	if output != &buf {
		t.Error("Output should return set output writer")
	}
}

// Test package-level functions
func TestPackageFunctions(t *testing.T) {
	// Save original args
	oldArgs := os.Args
	defer func() { os.Args = oldArgs }()

	// Create new FlagSet for isolated testing
	fs := flag.NewFlagSet("test", flag.ContinueOnError)

	// Test Bool
	b := fs.Bool("bool", false, "bool flag")

	// Test Int
	i := fs.Int("int", 0, "int flag")

	// Test String
	s := fs.String("string", "", "string flag")

	err := fs.Parse([]string{"-bool", "-int=42", "-string=hello"})
	if err != nil {
		t.Fatalf("Parse error: %v", err)
	}

	if !*b {
		t.Error("bool should be true")
	}
	if *i != 42 {
		t.Errorf("int should be 42, got %d", *i)
	}
	if *s != "hello" {
		t.Errorf("string should be 'hello', got %q", *s)
	}
}

// Test flag.Var with custom Value
func TestVar(t *testing.T) {
	fs := flag.NewFlagSet("test", flag.ContinueOnError)

	var cv customValue
	fs.Var(&cv, "custom", "custom flag")

	err := fs.Parse([]string{"-custom=myvalue"})
	if err != nil {
		t.Fatalf("Parse error: %v", err)
	}

	if cv.value != "myvalue" {
		t.Errorf("custom value should be 'myvalue', got %q", cv.value)
	}
}

// customValue implements flag.Value
type customValue struct {
	value string
}

func (c *customValue) String() string {
	return c.value
}

func (c *customValue) Set(s string) error {
	c.value = s
	return nil
}

// Test Flag struct fields
func TestFlagStruct(t *testing.T) {
	fs := flag.NewFlagSet("test", flag.ContinueOnError)
	fs.String("name", "default", "usage message")

	f := fs.Lookup("name")
	if f.Name != "name" {
		t.Errorf("Flag.Name should be 'name', got %q", f.Name)
	}
	if f.Usage != "usage message" {
		t.Errorf("Flag.Usage should be 'usage message', got %q", f.Usage)
	}
	if f.DefValue != "default" {
		t.Errorf("Flag.DefValue should be 'default', got %q", f.DefValue)
	}
	if f.Value == nil {
		t.Error("Flag.Value should not be nil")
	}
}

// Test Value and Getter interfaces
func TestValueGetter(t *testing.T) {
	fs := flag.NewFlagSet("test", flag.ContinueOnError)

	var gv getterValue
	fs.Var(&gv, "getter", "getter flag")

	err := fs.Parse([]string{"-getter=100"})
	if err != nil {
		t.Fatalf("Parse error: %v", err)
	}

	f := fs.Lookup("getter")
	if getter, ok := f.Value.(flag.Getter); ok {
		val := getter.Get()
		if val != 100 {
			t.Errorf("Getter.Get() should return 100, got %v", val)
		}
	} else {
		t.Error("Value should implement Getter")
	}
}

// getterValue implements flag.Getter
type getterValue struct {
	value int
}

func (g *getterValue) String() string {
	return ""
}

func (g *getterValue) Set(s string) error {
	// Simple parsing
	if s == "100" {
		g.value = 100
	}
	return nil
}

func (g *getterValue) Get() any {
	return g.value
}

// Test PrintDefaults
func TestPrintDefaults(t *testing.T) {
	fs := flag.NewFlagSet("test", flag.ContinueOnError)
	var buf bytes.Buffer
	fs.SetOutput(&buf)

	fs.String("name", "default", "name flag")
	fs.Int("count", 10, "count flag")

	fs.PrintDefaults()

	output := buf.String()
	if !strings.Contains(output, "name") {
		t.Error("PrintDefaults should contain 'name'")
	}
	if !strings.Contains(output, "count") {
		t.Error("PrintDefaults should contain 'count'")
	}
}

// Test CommandLine
func TestCommandLine(t *testing.T) {
	if flag.CommandLine == nil {
		t.Fatal("CommandLine should not be nil")
	}
}

// Test Usage
func TestUsage(t *testing.T) {
	if flag.Usage == nil {
		t.Fatal("Usage should not be nil")
	}

	// Test that Usage is a variable (can be reassigned)
	oldUsage := flag.Usage
	defer func() { flag.Usage = oldUsage }()

	called := false
	flag.Usage = func() {
		called = true
	}

	flag.Usage()
	if !called {
		t.Error("Custom Usage function should be called")
	}
}

// Test UnquoteUsage
func TestUnquoteUsage(t *testing.T) {
	fs := flag.NewFlagSet("test", flag.ContinueOnError)
	fs.String("dir", "", "search `directory` for files")

	f := fs.Lookup("dir")
	name, usage := flag.UnquoteUsage(f)

	if name != "directory" {
		t.Errorf("UnquoteUsage name should be 'directory', got %q", name)
	}
	if !strings.Contains(usage, "search") {
		t.Errorf("UnquoteUsage usage should contain 'search', got %q", usage)
	}
}

// Test package-level flag functions using CommandLine
func TestPackageLevelFunctions(t *testing.T) {
	// Reset CommandLine
	flag.CommandLine = flag.NewFlagSet(os.Args[0], flag.ContinueOnError)

	// Test all type functions at package level
	b := flag.Bool("pkgbool", false, "package bool")
	var bv bool
	flag.BoolVar(&bv, "pkgboolvar", true, "package boolvar")

	i := flag.Int("pkgint", 0, "package int")
	var iv int
	flag.IntVar(&iv, "pkgintvar", 1, "package intvar")

	i64 := flag.Int64("pkgint64", 0, "package int64")
	var i64v int64
	flag.Int64Var(&i64v, "pkgint64var", 1, "package int64var")

	u := flag.Uint("pkguint", 0, "package uint")
	var uv uint
	flag.UintVar(&uv, "pkguintvar", 1, "package uintvar")

	u64 := flag.Uint64("pkguint64", 0, "package uint64")
	var u64v uint64
	flag.Uint64Var(&u64v, "pkguint64var", 1, "package uint64var")

	f64 := flag.Float64("pkgfloat64", 0, "package float64")
	var f64v float64
	flag.Float64Var(&f64v, "pkgfloat64var", 1.0, "package float64var")

	s := flag.String("pkgstring", "", "package string")
	var sv string
	flag.StringVar(&sv, "pkgstringvar", "default", "package stringvar")

	d := flag.Duration("pkgduration", 0, "package duration")
	var dv time.Duration
	flag.DurationVar(&dv, "pkgdurationvar", time.Second, "package durationvar")

	var cv customValue
	flag.Var(&cv, "pkgvar", "package var")

	var tv netAddr
	flag.TextVar(&tv, "pkgtextvar", netAddr{}, "package textvar")

	var funcVal string
	flag.Func("pkgfunc", "package func", func(s string) error {
		funcVal = s
		return nil
	})

	var boolFuncCalled bool
	flag.BoolFunc("pkgboolfunc", "package boolfunc", func(s string) error {
		boolFuncCalled = true
		return nil
	})

	// Test Set
	err := flag.Set("pkgstring", "setvalue")
	if err != nil {
		t.Fatalf("Set error: %v", err)
	}

	// Save old args and restore
	oldArgs := os.Args
	defer func() { os.Args = oldArgs }()

	os.Args = []string{
		"prog",
		"-pkgbool",
		"-pkgboolvar=false",
		"-pkgint=42",
		"-pkgintvar=99",
		"-pkgint64=1000",
		"-pkgint64var=2000",
		"-pkguint=42",
		"-pkguintvar=99",
		"-pkguint64=1000",
		"-pkguint64var=2000",
		"-pkgfloat64=3.14",
		"-pkgfloat64var=2.71",
		"-pkgduration=5s",
		"-pkgdurationvar=10m",
		"-pkgvar=custom",
		"-pkgtextvar=addr",
		"-pkgfunc=test",
		"-pkgboolfunc",
		"arg1",
		"arg2",
	}

	// Test Parsed before Parse
	if flag.Parsed() {
		t.Error("Parsed should be false before Parse")
	}

	// Test Parse
	flag.Parse()

	// Test Parsed after Parse
	if !flag.Parsed() {
		t.Error("Parsed should be true after Parse")
	}

	// Verify parsed values
	if !*b {
		t.Error("pkgbool should be true")
	}
	if bv {
		t.Error("pkgboolvar should be false")
	}
	if *i != 42 {
		t.Errorf("pkgint should be 42, got %d", *i)
	}
	if iv != 99 {
		t.Errorf("pkgintvar should be 99, got %d", iv)
	}
	if *i64 != 1000 {
		t.Errorf("pkgint64 should be 1000, got %d", *i64)
	}
	if *u != 42 {
		t.Errorf("pkguint should be 42, got %d", *u)
	}
	if *u64 != 1000 {
		t.Errorf("pkguint64 should be 1000, got %d", *u64)
	}
	if *f64 != 3.14 {
		t.Errorf("pkgfloat64 should be 3.14, got %f", *f64)
	}
	if *s != "setvalue" {
		t.Errorf("pkgstring should be 'setvalue', got %q", *s)
	}
	if *d != 5*time.Second {
		t.Errorf("pkgduration should be 5s, got %v", *d)
	}
	if funcVal != "test" {
		t.Errorf("funcVal should be 'test', got %q", funcVal)
	}
	if !boolFuncCalled {
		t.Error("boolFuncCalled should be true")
	}

	// Test Args and Arg
	args := flag.Args()
	if len(args) != 2 {
		t.Errorf("Args length should be 2, got %d", len(args))
	}
	if flag.Arg(0) != "arg1" {
		t.Errorf("Arg(0) should be 'arg1', got %q", flag.Arg(0))
	}
	if flag.Arg(1) != "arg2" {
		t.Errorf("Arg(1) should be 'arg2', got %q", flag.Arg(1))
	}

	// Test NArg
	if flag.NArg() != 2 {
		t.Errorf("NArg should be 2, got %d", flag.NArg())
	}

	// Test NFlag
	nflag := flag.NFlag()
	if nflag < 10 {
		t.Errorf("NFlag should be at least 10, got %d", nflag)
	}

	// Test Visit
	visitCount := 0
	flag.Visit(func(f *flag.Flag) {
		visitCount++
	})
	if visitCount < 10 {
		t.Errorf("Visit count should be at least 10, got %d", visitCount)
	}

	// Test VisitAll
	visitAllCount := 0
	flag.VisitAll(func(f *flag.Flag) {
		visitAllCount++
	})
	if visitAllCount < 10 {
		t.Errorf("VisitAll count should be at least 10, got %d", visitAllCount)
	}

	// Test PrintDefaults
	var buf bytes.Buffer
	flag.CommandLine.SetOutput(&buf)
	flag.PrintDefaults()
	if !strings.Contains(buf.String(), "pkgbool") {
		t.Error("PrintDefaults should contain flag names")
	}
}

// Test FlagSet.Init and ErrorHandling field
func TestFlagSetInit(t *testing.T) {
	fs := &flag.FlagSet{}
	fs.Init("testinit", flag.ContinueOnError)

	if fs.Name() != "testinit" {
		t.Errorf("After Init, Name should be 'testinit', got %q", fs.Name())
	}

	// Test ErrorHandling field
	fs2 := flag.NewFlagSet("test2", flag.PanicOnError)
	if got := fs2.ErrorHandling(); got != flag.PanicOnError {
		t.Fatalf("ErrorHandling = %v, want %v", got, flag.PanicOnError)
	}
}
