package config_test

import (
	"os"
	"path/filepath"
	"reflect"
	"strings"
	"testing"

	"github.com/google/go-cmp/cmp"
	"github.com/goplus/llgo/chore/gogensig/config"
	cppgtypes "github.com/goplus/llgo/chore/llcppg/types"
)

func TestLookupSymbolOK(t *testing.T) {
	table, err := config.NewSymbolTable("./_testinput/llcppg.symb.json")
	if err != nil {
		t.Fatal(err)
	}
	entry, err := table.LookupSymbol("_ZNK9INIReader10GetBooleanERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES8_b")
	if err != nil {
		t.Fatal(err)
	}
	const expectCppName = "INIReader::GetBoolean(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&, std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&, bool) const"
	const expectGoName = "(*Reader).GetBoolean"
	if !cmp.Equal(string(entry.CppName), expectCppName) ||
		!cmp.Equal(string(entry.GoName), expectGoName) {
		t.Fatalf("%s\n%s", cmp.Diff(entry.CppName, expectCppName), cmp.Diff(entry.GoName, expectGoName))
	}
}

func TestLookupSymbolError(t *testing.T) {
	_, err := config.NewSymbolTable("./_testinput/llcppg.symb.txt")
	if err == nil {
		t.Error("expect error")
	}
	table, err := config.NewSymbolTable("./_testinput/llcppg.symb.json")
	if err != nil {
		t.Fatal(err)
	}
	lookupSymbs := []string{
		"_ZNK9INIReader10GetBooleanERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES8_bXXX",
		"",
	}
	for _, lookupSymbol := range lookupSymbs {
		_, err := table.LookupSymbol(lookupSymbol)
		if err == nil {
			t.Error("expect error")
		}
	}
	nilTable, _ := config.NewSymbolTable("")
	_, err = nilTable.LookupSymbol("_ZNK9INIReader10GetBooleanERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES8_bXXX")
	if err == nil {
		t.Error("expect error")
	}
}

func TestSigfetch(t *testing.T) {
	testCases := []struct {
		name   string
		input  string
		isTemp bool
		isCpp  bool
	}{
		{name: "cpp sigfetch", input: `void fn();`, isTemp: true, isCpp: true},
		{name: "c sigfetch", input: `void fn();`, isTemp: true, isCpp: false},
	}
	for _, tc := range testCases {
		t.Run(tc.name, func(t *testing.T) {
			data, err := config.SigfetchExtract(tc.input, tc.isTemp, tc.isCpp, ".")
			if err != nil {
				t.Fatal(err)
			}
			_, err = config.GetCppgSigfetchFromByte(data)
			if err != nil {
				t.Fatal(err)
			}
		})
	}
}

func TestSigfetchError(t *testing.T) {
	oldPath := os.Getenv("PATH")
	defer os.Setenv("PATH", oldPath)

	_, err := os.Getwd()
	if err != nil {
		t.Fatalf("Failed to get current working directory: %v", err)
	}

	tempDir, err := os.MkdirTemp("", "test")
	if err != nil {
		t.Fatalf("Failed to create temp directory: %v", err)
	}
	defer os.RemoveAll(tempDir)

	mockScript := filepath.Join(tempDir, "llcppsigfetch")
	err = os.WriteFile(mockScript, []byte("#!/bin/bash\necho 'Simulated llcppsigfetch error' >&2\nexit 1"), 0755)
	if err != nil {
		t.Fatalf("Failed to create mock script: %v", err)
	}

	os.Setenv("PATH", tempDir+string(os.PathListSeparator)+oldPath)

	_, err = config.SigfetchExtract("test.cpp", false, true, ".")
	if err == nil {
		t.Error("Expected error, got nil")
	}
	if !strings.Contains(err.Error(), "Simulated llcppsigfetch error") {
		t.Errorf("Unexpected error message: %v", err)
	}
}

func TestGetCppgCfgFromPath(t *testing.T) {
	// Create temporary directory
	tempDir, err := os.MkdirTemp("", "config_test")
	if err != nil {
		t.Fatalf("Failed to create temp directory: %v", err)
	}
	defer os.RemoveAll(tempDir)

	// Prepare valid config file
	validConfigPath := filepath.Join(tempDir, "valid_config.cfg")
	validConfigContent := `{
		"name": "lua",
		"cflags": "$(pkg-config --cflags lua5.4)",
		"include": ["litelua.h"],
		"libs": "$(pkg-config --libs lua5.4)",
		"trimPrefixes": ["lua_"],
		"cplusplus": false
	}`
	err = os.WriteFile(validConfigPath, []byte(validConfigContent), 0644)
	if err != nil {
		t.Fatalf("Failed to create valid config file: %v", err)
	}

	t.Run("Successfully parse config file", func(t *testing.T) {
		cfg, err := config.GetCppgCfgFromPath(validConfigPath)
		if err != nil {
			t.Fatalf("Expected no error, got: %v", err)
		}
		if cfg == nil {
			t.Fatal("Expected non-nil config")
		}

		expectedConfig := &cppgtypes.Config{
			Name:         "lua",
			CFlags:       "$(pkg-config --cflags lua5.4)",
			Include:      []string{"litelua.h"},
			Libs:         "$(pkg-config --libs lua5.4)",
			TrimPrefixes: []string{"lua_"},
			Cplusplus:    false,
		}

		if !reflect.DeepEqual(cfg, expectedConfig) {
			t.Errorf("Parsed config does not match expected config.\nGot: %+v\nWant: %+v", cfg, expectedConfig)
		}
	})

	t.Run("File not found", func(t *testing.T) {
		_, err := config.GetCppgCfgFromPath(filepath.Join(tempDir, "nonexistent_file.cfg"))
		if err == nil {
			t.Error("Expected error for non-existent file, got nil")
		}
	})

	t.Run("Invalid JSON", func(t *testing.T) {
		invalidJSONPath := filepath.Join(tempDir, "invalid_config.cfg")
		err := os.WriteFile(invalidJSONPath, []byte("{invalid json}"), 0644)
		if err != nil {
			t.Fatalf("Failed to create invalid JSON file: %v", err)
		}

		_, err = config.GetCppgCfgFromPath(invalidJSONPath)
		if err == nil {
			t.Error("Expected error for invalid JSON, got nil")
		}
	})
}

func TestRunCommand(t *testing.T) {
	err := config.RunCommand(".", "echo", "hello")
	if err != nil {
		t.Fatal(err)
	}
}

func TestGetPubFromPath(t *testing.T) {
	pub, err := config.GetPubFromPath("./_testinput/llcppg.pub")
	if err != nil {
		t.Fatal(err)
	}
	if len(pub) != 3 {
		t.Fatalf("expect 3 entries, got %d", len(pub))
	}
	if pub["file"] != "FILE" || pub["err"] != "Err" || pub["stdio"] != "" {
		t.Fatalf("expect file, err, stdio, got %v", pub)
	}
}

func TestGetPubFromPathError(t *testing.T) {
	pub, err := config.GetPubFromPath("./_testinput/llcppg.txt")
	if !(pub != nil && len(pub) == 0 && err == nil) {
		t.Fatalf("expect empty map for llcppg.txt")
	}
	temp, err := os.CreateTemp("", "config_test")
	if err != nil {
		t.Fatal(err)
	}
	defer os.Remove(temp.Name())
	content := `a b c`
	_, err = temp.WriteString(content)
	if err != nil {
		t.Fatal(err)
	}
	_, err = config.GetPubFromPath(temp.Name())
	if err == nil {
		t.Fatalf("expect error, got nil")
	}
}

func TestWritePubFile(t *testing.T) {
	pub := map[string]string{
		"file":  "FILE",
		"err":   "Err",
		"stdio": "",
	}
	tempDir, err := os.MkdirTemp("", "config_test")
	if err != nil {
		t.Fatal(err)
	}
	defer os.RemoveAll(tempDir)
	pubFile := filepath.Join(tempDir, "llcppg.pub")
	err = config.WritePubFile(pubFile, pub)
	if err != nil {
		t.Fatal(err)
	}
	content, err := os.ReadFile(pubFile)
	if err != nil {
		t.Fatal(err)
	}
	expect :=
		`err Err
file FILE
stdio`
	if string(content) != expect {
		t.Fatalf("expect %s, got %s", expect, string(content))
	}

	notExistFilePath := filepath.Join(tempDir, "not_exit_dir", "not_exist_file.pub")
	err = config.WritePubFile(notExistFilePath, pub)
	if err == nil {
		t.Fatalf("expect error, got nil")
	}
	if !os.IsNotExist(err) {
		t.Fatalf("expect os.IsNotExist error, got %v", err)
	}

	notExistFile := filepath.Join(tempDir, "not_exist_file.pub")
	err = config.WritePubFile(notExistFile, make(map[string]string, 0))
	if err != nil {
		t.Fatalf("expect no error, got %v", err)
	}
	_, err = os.Stat(notExistFile)
	if err != nil && !os.IsNotExist(err) {
		t.Fatalf("expect file %s, got error %v", notExistFile, err)
	}
}
