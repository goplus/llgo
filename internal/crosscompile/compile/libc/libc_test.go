package libc

import (
	"path/filepath"
	"testing"
)

func TestGetPicolibcConfig(t *testing.T) {
	baseDir := "/test/base"
	target := "test-target"

	config := GetPicolibcConfig(baseDir, target)

	if config.Name != "picolibc" {
		t.Errorf("Expected Name 'picolibc', got '%s'", config.Name)
	}
	if config.ArchiveSrcDir != "picolibc-main" {
		t.Errorf("Expected ArchiveSrcDir 'picolibc-main', got '%s'", config.ArchiveSrcDir)
	}

	// Test LibcCFlags
	if len(config.LibcCFlags) != 2 {
		t.Errorf("Expected 2 LibcCFlags, got %d", len(config.LibcCFlags))
	} else {
		expected := "-I" + baseDir
		if config.LibcCFlags[0] != expected {
			t.Errorf("Expected LibcCFlags[0] to be '%s', got '%s'", expected, config.LibcCFlags[0])
		}

		expected = "-isystem" + filepath.Join(baseDir, "newlib", "libc", "include")
		if config.LibcCFlags[1] != expected {
			t.Errorf("Expected LibcCFlags[1] to be '%s', got '%s'", expected, config.LibcCFlags[1])
		}
	}

	// Test Groups configuration
	if len(config.Groups) != 1 {
		t.Errorf("Expected 1 group, got %d", len(config.Groups))
	} else {
		group := config.Groups[0]

		// Test output file name
		expectedOutput := "libc-" + target + ".a"
		if group.OutputFileName != expectedOutput {
			t.Errorf("Expected OutputFileName '%s', got '%s'", expectedOutput, group.OutputFileName)
		}

		// Test files list
		if len(group.Files) == 0 {
			t.Error("Expected non-empty files list")
		} else {
			// Check a few sample files
			sampleFiles := []string{
				filepath.Join(baseDir, "newlib", "libc", "string", "bcmp.c"),
				filepath.Join(baseDir, "newlib", "libc", "string", "memcpy.c"),
				filepath.Join(baseDir, "newlib", "libc", "string", "strlen.c"),
				filepath.Join(baseDir, "newlib", "libc", "stdlib", "nano-malloc.c"),
				filepath.Join(baseDir, "newlib", "libc", "tinystdio", "printf.c"),
			}

			for _, sample := range sampleFiles {
				found := false
				for _, file := range group.Files {
					if file == sample {
						found = true
						break
					}
				}
				if !found {
					t.Errorf("Expected file '%s' not found in group files", sample)
				}
			}
		}

		// Test CFlags
		expectedCFlags := []string{
			"-D_COMPILING_NEWLIB",
			"-D_HAVE_ALIAS_ATTRIBUTE",
			"-DTINY_STDIO",
			"-DPOSIX_IO",
			"-DFORMAT_DEFAULT_INTEGER",
			"-D_IEEE_LIBM",
			"-D__OBSOLETE_MATH_FLOAT=1",
			"-D__OBSOLETE_MATH_DOUBLE=0",
			"-D_WANT_IO_C99_FORMATS",
			"-nostdlib",
			"-I" + baseDir,
			"-isystem" + filepath.Join(baseDir, "newlib", "libc", "include"),
			"-I" + filepath.Join(baseDir, "newlib", "libm", "common"),
			"-I" + filepath.Join(baseDir, "newlib", "libc", "locale"),
			"-I" + filepath.Join(baseDir, "newlib", "libc", "tinystdio"),
		}

		if len(group.CFlags) != len(expectedCFlags) {
			t.Errorf("Expected %d CFlags, got %d", len(expectedCFlags), len(group.CFlags))
		} else {
			for i, expected := range expectedCFlags {
				if group.CFlags[i] != expected {
					t.Errorf("CFlags[%d] mismatch. Expected '%s', got '%s'", i, expected, group.CFlags[i])
				}
			}
		}

		// Test LDFlags and CCFlags
		if len(group.LDFlags) == 0 {
			t.Error("Expected non-empty LDFlags")
		}
		if len(group.CCFlags) == 0 {
			t.Error("Expected non-empty CCFlags")
		}
	}
}

func TestGetPicolibcConfig_EdgeCases(t *testing.T) {
	t.Run("EmptyBaseDir", func(t *testing.T) {
		config := GetPicolibcConfig("", "test-target")

		// Check that paths are constructed correctly even with empty baseDir
		expected := "-I"
		if config.LibcCFlags[0] != expected {
			t.Errorf("Expected LibcCFlags[0] to be '%s', got '%s'", expected, config.LibcCFlags[0])
		}

		expected = "-isystem" + filepath.Join("", "newlib", "libc", "include")
		if config.LibcCFlags[1] != expected {
			t.Errorf("Expected LibcCFlags[1] to be '%s', got '%s'", expected, config.LibcCFlags[1])
		}
	})

	t.Run("EmptyTarget", func(t *testing.T) {
		config := GetPicolibcConfig("/test/base", "")

		// Check output file name formatting
		expectedOutput := "libc-.a"
		if config.Groups[0].OutputFileName != expectedOutput {
			t.Errorf("Expected OutputFileName '%s', got '%s'", expectedOutput, config.Groups[0].OutputFileName)
		}
	})
}

func TestGetNewlibESP32ConfigRISCV(t *testing.T) {
	baseDir := "/test/base"
	target := "riscv32-unknown-elf"

	config := getNewlibESP32ConfigRISCV(baseDir, target)

	// Test basic configuration
	if config.Url != _newlibUrl {
		t.Errorf("Expected URL '%s', got '%s'", _newlibUrl, config.Url)
	}
	if config.Name != "newlib-esp32" {
		t.Errorf("Expected Name 'newlib-esp32', got '%s'", config.Name)
	}
	if config.ArchiveSrcDir != _archiveInternalSrcDir {
		t.Errorf("Expected ArchiveSrcDir '%s', got '%s'", _archiveInternalSrcDir, config.ArchiveSrcDir)
	}

	// Test LibcCFlags
	libcDir := filepath.Join(baseDir, "newlib", "libc")
	expectedCFlags := []string{
		"-isystem" + filepath.Join(libcDir, "include"),
		"-I" + filepath.Join(baseDir, "newlib"),
		"-I" + libcDir,
	}
	if len(config.LibcCFlags) != len(expectedCFlags) {
		t.Errorf("Expected %d LibcCFlags, got %d", len(expectedCFlags), len(config.LibcCFlags))
	} else {
		for i, expected := range expectedCFlags {
			if config.LibcCFlags[i] != expected {
				t.Errorf("LibcCFlags[%d] mismatch. Expected '%s', got '%s'", i, expected, config.LibcCFlags[i])
			}
		}
	}

	// Test Groups configuration
	if len(config.Groups) != 3 {
		t.Errorf("Expected 3 groups, got %d", len(config.Groups))
	} else {
		// Group 0: libcrt0
		group0 := config.Groups[0]
		expectedOutput0 := "libcrt0-" + target + ".a"
		if group0.OutputFileName != expectedOutput0 {
			t.Errorf("Group0 OutputFileName expected '%s', got '%s'", expectedOutput0, group0.OutputFileName)
		}

		// Check sample files in group0
		sampleFiles0 := []string{
			filepath.Join(baseDir, "libgloss", "riscv", "esp", "esp_board.c"),
			filepath.Join(baseDir, "libgloss", "riscv", "esp", "crt1-board.S"),
		}
		for _, sample := range sampleFiles0 {
			found := false
			for _, file := range group0.Files {
				if file == sample {
					found = true
					break
				}
			}
			if !found {
				t.Errorf("Expected file '%s' not found in group0 files", sample)
			}
		}

		// Group 1: libgloss
		group1 := config.Groups[1]
		expectedOutput1 := "libgloss-" + target + ".a"
		if group1.OutputFileName != expectedOutput1 {
			t.Errorf("Group1 OutputFileName expected '%s', got '%s'", expectedOutput1, group1.OutputFileName)
		}

		// Check sample files in group1
		sampleFiles1 := []string{
			filepath.Join(baseDir, "libgloss", "libnosys", "close.c"),
			filepath.Join(baseDir, "libgloss", "libnosys", "sbrk.c"),
		}
		for _, sample := range sampleFiles1 {
			found := false
			for _, file := range group1.Files {
				if file == sample {
					found = true
					break
				}
			}
			if !found {
				t.Errorf("Expected file '%s' not found in group1 files", sample)
			}
		}

		// Group 2: libc
		group2 := config.Groups[2]
		expectedOutput2 := "libc-" + target + ".a"
		if group2.OutputFileName != expectedOutput2 {
			t.Errorf("Group2 OutputFileName expected '%s', got '%s'", expectedOutput2, group2.OutputFileName)
		}

		// Check sample files in group2
		sampleFiles2 := []string{
			filepath.Join(libcDir, "string", "memcpy.c"),
			filepath.Join(libcDir, "stdlib", "malloc.c"),
		}
		for _, sample := range sampleFiles2 {
			found := false
			for _, file := range group2.Files {
				if file == sample {
					found = true
					break
				}
			}
			if !found {
				t.Errorf("Expected file '%s' not found in group2 files", sample)
			}
		}

		// Test CFlags for group2
		expectedCFlagsGroup2 := []string{
			"-DHAVE_CONFIG_H",
			"-D_LIBC",
			"-DHAVE_NANOSLEEP",
			"-D__NO_SYSCALLS__",
			// ... (other expected flags)
		}
		for _, expectedFlag := range expectedCFlagsGroup2 {
			found := false
			for _, flag := range group2.CFlags {
				if flag == expectedFlag {
					found = true
					break
				}
			}
			if !found {
				t.Errorf("Expected flag '%s' not found in group2 CFlags", expectedFlag)
			}
		}

		// Test LDFlags and CCFlags
		if len(group0.LDFlags) == 0 {
			t.Error("Expected non-empty LDFlags in group0")
		}
		if len(group0.CCFlags) == 0 {
			t.Error("Expected non-empty CCFlags in group0")
		}
	}
}

func TestGetNewlibESP32ConfigXtensa(t *testing.T) {
	baseDir := "/test/base"
	target := "xtensa-esp32-elf"

	config := getNewlibESP32ConfigXtensa(baseDir, target)

	// Test basic configuration
	if config.Url != _newlibUrl {
		t.Errorf("Expected URL '%s', got '%s'", _newlibUrl, config.Url)
	}
	if config.Name != "newlib-esp32" {
		t.Errorf("Expected Name 'newlib-esp32', got '%s'", config.Name)
	}
	if config.ArchiveSrcDir != _archiveInternalSrcDir {
		t.Errorf("Expected ArchiveSrcDir '%s', got '%s'", _archiveInternalSrcDir, config.ArchiveSrcDir)
	}

	// Test LibcCFlags
	libcDir := filepath.Join(baseDir, "newlib", "libc")
	expectedCFlags := []string{
		"-I" + filepath.Join(libcDir, "include"),
		"-I" + filepath.Join(baseDir, "newlib"),
		"-I" + libcDir,
	}
	if len(config.LibcCFlags) != len(expectedCFlags) {
		t.Errorf("Expected %d LibcCFlags, got %d", len(expectedCFlags), len(config.LibcCFlags))
	} else {
		for i, expected := range expectedCFlags {
			if config.LibcCFlags[i] != expected {
				t.Errorf("LibcCFlags[%d] mismatch. Expected '%s', got '%s'", i, expected, config.LibcCFlags[i])
			}
		}
	}

	// Test Groups configuration
	if len(config.Groups) != 3 {
		t.Errorf("Expected 2 groups, got %d", len(config.Groups))
	} else {
		// Group 0: libcrt0
		group0 := config.Groups[0]
		expectedOutput0 := "libcrt0-" + target + ".a"
		if group0.OutputFileName != expectedOutput0 {
			t.Errorf("Group0 OutputFileName expected '%s', got '%s'", expectedOutput0, group0.OutputFileName)
		}

		// Check sample files in group0
		sampleFiles0 := []string{
			filepath.Join(baseDir, "libgloss", "xtensa", "clibrary_init.c"),
			filepath.Join(baseDir, "libgloss", "xtensa", "crt1-boards.S"),
		}
		for _, sample := range sampleFiles0 {
			found := false
			for _, file := range group0.Files {
				if file == sample {
					found = true
					break
				}
			}
			if !found {
				t.Errorf("Expected file '%s' not found in group0 files", sample)
			}
		}

		// Group 1: libgloss + libc
		group1 := config.Groups[1]
		expectedOutput1 := "libgloss-" + target + ".a"
		if group1.OutputFileName != expectedOutput1 {
			t.Errorf("Group1 OutputFileName expected '%s', got '%s'", expectedOutput1, group1.OutputFileName)
		}

		// Check sample files in group1
		sampleFiles1 := []string{
			filepath.Join(baseDir, "libgloss", "libnosys", "close.c"),
		}
		for _, sample := range sampleFiles1 {
			found := false
			for _, file := range group1.Files {
				if file == sample {
					found = true
					break
				}
			}
			if !found {
				t.Errorf("Expected file '%s' not found in group1 files", sample)
			}
		}

		// Test CFlags for group1
		expectedCFlagsGroup1 := []string{
			"-D__NO_SYSCALLS__",
			"-D_NO_GETUT",
			"-DHAVE_CONFIG_H",
			"-D_LIBC",
			// ... (other expected flags)
		}
		for _, expectedFlag := range expectedCFlagsGroup1 {
			found := false
			for _, flag := range group1.CFlags {
				if flag == expectedFlag {
					found = true
					break
				}
			}
			if !found {
				t.Errorf("Expected flag '%s' not found in group1 CFlags", expectedFlag)
			}
		}

		// Test LDFlags and CCFlags
		if len(group0.LDFlags) == 0 {
			t.Error("Expected non-empty LDFlags in group0")
		}
		if len(group0.CCFlags) == 0 {
			t.Error("Expected non-empty CCFlags in group0")
		}
	}
}

func TestEdgeCases(t *testing.T) {
	t.Run("EmptyBaseDir_RISCV", func(t *testing.T) {
		config := getNewlibESP32ConfigRISCV("", "test-target")
		libcDir := filepath.Join("", "newlib", "libc")

		// Check that paths are constructed correctly
		expected := "-isystem" + filepath.Join(libcDir, "include")
		if config.LibcCFlags[0] != expected {
			t.Errorf("Expected LibcCFlags[0] to be '%s', got '%s'", expected, config.LibcCFlags[0])
		}
	})

	t.Run("EmptyTarget_RISCV", func(t *testing.T) {
		config := getNewlibESP32ConfigRISCV("/test/base", "")

		// Check output file name formatting
		expectedOutput := "libcrt0-.a"
		if config.Groups[0].OutputFileName != expectedOutput {
			t.Errorf("Expected OutputFileName '%s', got '%s'", expectedOutput, config.Groups[0].OutputFileName)
		}
	})

	t.Run("EmptyBaseDir_Xtensa", func(t *testing.T) {
		config := getNewlibESP32ConfigXtensa("", "test-target")
		libcDir := filepath.Join("", "newlib", "libc")

		// Check that paths are constructed correctly
		expected := "-I" + filepath.Join(libcDir, "include")
		if config.LibcCFlags[0] != expected {
			t.Errorf("Expected LibcCFlags[0] to be '%s', got '%s'", expected, config.LibcCFlags[0])
		}
	})

	t.Run("EmptyTarget_Xtensa", func(t *testing.T) {
		config := getNewlibESP32ConfigXtensa("/test/base", "")

		// Check output file name formatting
		expectedOutput := "libcrt0-.a"
		if config.Groups[0].OutputFileName != expectedOutput {
			t.Errorf("Expected OutputFileName '%s', got '%s'", expectedOutput, config.Groups[0].OutputFileName)
		}
	})
}

func TestGroupConfiguration(t *testing.T) {
	baseDir := "/test/base"
	target := "test-target"

	t.Run("RISCV_GroupCount", func(t *testing.T) {
		config := getNewlibESP32ConfigRISCV(baseDir, target)
		if len(config.Groups) != 3 {
			t.Errorf("Expected 3 groups for RISCV, got %d", len(config.Groups))
		}
	})

	t.Run("Xtensa_GroupCount", func(t *testing.T) {
		config := getNewlibESP32ConfigXtensa(baseDir, target)
		if len(config.Groups) != 3 {
			t.Errorf("Expected 2 groups for Xtensa, got %d", len(config.Groups))
		}
	})

	t.Run("RISCV_GroupNames", func(t *testing.T) {
		config := getNewlibESP32ConfigRISCV(baseDir, target)
		expectedNames := []string{
			"libcrt0-" + target + ".a",
			"libgloss-" + target + ".a",
			"libc-" + target + ".a",
		}

		for i, group := range config.Groups {
			if group.OutputFileName != expectedNames[i] {
				t.Errorf("Group %d expected name '%s', got '%s'", i, expectedNames[i], group.OutputFileName)
			}
		}
	})

	t.Run("Xtensa_GroupNames", func(t *testing.T) {
		config := getNewlibESP32ConfigXtensa(baseDir, target)
		expectedNames := []string{
			"libcrt0-" + target + ".a",
			"libgloss-" + target + ".a",
		}

		for i, group := range config.Groups {
			if i >= len(expectedNames) {
				return
			}
			if group.OutputFileName != expectedNames[i] {
				t.Errorf("Group %d expected name '%s', got '%s'", i, expectedNames[i], group.OutputFileName)
			}
		}
	})
}

func TestCompilerFlags(t *testing.T) {
	baseDir := "/test/base"
	target := "test-target"

	t.Run("RISCV_CFlags", func(t *testing.T) {
		config := getNewlibESP32ConfigRISCV(baseDir, target)
		group := config.Groups[2] // libc group

		requiredFlags := []string{
			"-DHAVE_CONFIG_H",
			"-D_LIBC",
			"-D__NO_SYSCALLS__",
			"-isystem" + filepath.Join(baseDir, "newlib", "libc", "include"),
		}

		for _, flag := range requiredFlags {
			found := false
			for _, cflag := range group.CFlags {
				if cflag == flag {
					found = true
					break
				}
			}
			if !found {
				t.Errorf("Required flag '%s' not found in RISCV CFlags", flag)
			}
		}
	})

	t.Run("Xtensa_CFlags", func(t *testing.T) {
		config := getNewlibESP32ConfigXtensa(baseDir, target)
		group := config.Groups[1] // libgloss+libc group

		requiredFlags := []string{
			"-D__NO_SYSCALLS__",
			"-DHAVE_CONFIG_H",
			"-D_LIBC",
			"-isystem" + filepath.Join(baseDir, "newlib", "libc", "include"),
		}

		for _, flag := range requiredFlags {
			found := false
			for _, cflag := range group.CFlags {
				if cflag == flag {
					found = true
					break
				}
			}
			if !found {
				t.Errorf("Required flag '%s' not found in Xtensa CFlags", flag)
			}
		}
	})

	t.Run("CommonFlags", func(t *testing.T) {
		configRISCV := getNewlibESP32ConfigRISCV(baseDir, target)
		configXtensa := getNewlibESP32ConfigXtensa(baseDir, target)

		// Test LDFlags
		expectedLDFlags := []string{
			"-nostdlib",
			"-ffunction-sections",
			"-fdata-sections",
		}

		for _, group := range configRISCV.Groups {
			for _, expected := range expectedLDFlags {
				found := false
				for _, flag := range group.LDFlags {
					if flag == expected {
						found = true
						break
					}
				}
				if !found {
					t.Errorf("Required LDFlag '%s' not found in RISCV group", expected)
				}
			}
		}

		for _, group := range configXtensa.Groups {
			for _, expected := range expectedLDFlags {
				found := false
				for _, flag := range group.LDFlags {
					if flag == expected {
						found = true
						break
					}
				}
				if !found {
					t.Errorf("Required LDFlag '%s' not found in Xtensa group", expected)
				}
			}
		}

		// Test CCFlags
		expectedCCFlags := []string{
			"-Oz",
			"-fno-builtin",
			"-ffreestanding",
		}

		for _, group := range configRISCV.Groups {
			for _, expected := range expectedCCFlags {
				found := false
				for _, flag := range group.CCFlags {
					if flag == expected {
						found = true
						break
					}
				}
				if !found {
					t.Errorf("Required CCFlag '%s' not found in RISCV group", expected)
				}
			}
		}

		for _, group := range configXtensa.Groups {
			for _, expected := range expectedCCFlags {
				found := false
				for _, flag := range group.CCFlags {
					if flag == expected {
						found = true
						break
					}
				}
				if !found {
					t.Errorf("Required CCFlag '%s' not found in Xtensa group", expected)
				}
			}
		}
	})
}
