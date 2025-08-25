package crosscompile

import (
	"fmt"
	"os"
	"path/filepath"
)

// CompileLibcConfig represents libc compilation configuration
type compileLibcConfig struct {
	Url           string
	Name          string   // Libc name (e.g., "picolibc", "musl", "glibc")
	Files         []string // List of source files to compile
	CFlags        []string // C compiler flags specific to this libc
	LDFlags       []string // Linker flags
	ArchiveSrcDir string
}

// GetCompileLibcConfigByName retrieves libc compilation configuration by name
// Returns compilation file lists and corresponding cflags
func getCompileLibcConfigByName(baseDir, libcName string) (*compileLibcConfig, error) {
	if libcName == "" {
		return nil, fmt.Errorf("libc name cannot be empty")
	}
	libcDir := filepath.Join(baseDir, libcName)

	switch libcName {
	case "picolibc":
		return getPicolibcConfig(libcDir), nil
	default:
		return nil, fmt.Errorf("unsupported libc: %s", libcName)
	}
}

// getPicolibcConfig returns configuration for picolibc
func getPicolibcConfig(baseDir string) *compileLibcConfig {
	libcIncludeDir := filepath.Join(baseDir, "libc", "include")
	libmIncludeDir := filepath.Join(baseDir, "libm", "common")
	localeIncludeDir := filepath.Join(baseDir, "libc", "locale")

	os.MkdirAll(baseDir, 0700)

	headerFile, _ := os.Create(filepath.Join(baseDir, "picolibc.h"))
	headerFile.Close()

	return &compileLibcConfig{
		Url:  "https://github.com/picolibc/picolibc/releases/download/1.8.10/picolibc-1.8.10.tar.xz",
		Name: "picolibc",
		Files: []string{
			filepath.Join(baseDir, "libc", "string", "bcmp.c"),
			filepath.Join(baseDir, "libc", "string", "bcopy.c"),
			filepath.Join(baseDir, "libc", "string", "bzero.c"),
			filepath.Join(baseDir, "libc", "string", "explicit_bzero.c"),
			filepath.Join(baseDir, "libc", "string", "ffsl.c"),
			filepath.Join(baseDir, "libc", "string", "ffsll.c"),
			filepath.Join(baseDir, "libc", "string", "fls.c"),
			filepath.Join(baseDir, "libc", "string", "flsl.c"),
			filepath.Join(baseDir, "libc", "string", "flsll.c"),
			filepath.Join(baseDir, "libc", "string", "gnu_basename.c"),
			filepath.Join(baseDir, "libc", "string", "index.c"),
			filepath.Join(baseDir, "libc", "string", "memccpy.c"),
			filepath.Join(baseDir, "libc", "string", "memchr.c"),
			filepath.Join(baseDir, "libc", "string", "memcmp.c"),
			filepath.Join(baseDir, "libc", "string", "memcpy.c"),
			filepath.Join(baseDir, "libc", "string", "memmem.c"),
			filepath.Join(baseDir, "libc", "string", "memmove.c"),
			filepath.Join(baseDir, "libc", "string", "mempcpy.c"),
			filepath.Join(baseDir, "libc", "string", "memrchr.c"),
			filepath.Join(baseDir, "libc", "string", "memset.c"),
			filepath.Join(baseDir, "libc", "string", "rawmemchr.c"),
			filepath.Join(baseDir, "libc", "string", "rindex.c"),
			filepath.Join(baseDir, "libc", "string", "stpcpy.c"),
			filepath.Join(baseDir, "libc", "string", "stpncpy.c"),
			filepath.Join(baseDir, "libc", "string", "strcasecmp.c"),
			filepath.Join(baseDir, "libc", "string", "strcasecmp_l.c"),
			filepath.Join(baseDir, "libc", "string", "strcasestr.c"),
			filepath.Join(baseDir, "libc", "string", "strcat.c"),
			filepath.Join(baseDir, "libc", "string", "strchr.c"),
			filepath.Join(baseDir, "libc", "string", "strchrnul.c"),
			filepath.Join(baseDir, "libc", "string", "strcmp.c"),
			filepath.Join(baseDir, "libc", "string", "strcoll.c"),
			filepath.Join(baseDir, "libc", "string", "strcoll_l.c"),
			filepath.Join(baseDir, "libc", "string", "strcpy.c"),
			filepath.Join(baseDir, "libc", "string", "strcspn.c"),
			filepath.Join(baseDir, "libc", "string", "strerror_r.c"),
			filepath.Join(baseDir, "libc", "string", "strlcat.c"),
			filepath.Join(baseDir, "libc", "string", "strlcpy.c"),
			filepath.Join(baseDir, "libc", "string", "strlen.c"),
			filepath.Join(baseDir, "libc", "string", "strlwr.c"),
			filepath.Join(baseDir, "libc", "string", "strncasecmp.c"),
			filepath.Join(baseDir, "libc", "string", "strncasecmp_l.c"),
			filepath.Join(baseDir, "libc", "string", "strncat.c"),
			filepath.Join(baseDir, "libc", "string", "strncmp.c"),
			filepath.Join(baseDir, "libc", "string", "strncpy.c"),
			filepath.Join(baseDir, "libc", "string", "strndup.c"),
			filepath.Join(baseDir, "libc", "string", "strnlen.c"),
			filepath.Join(baseDir, "libc", "string", "strnstr.c"),
			filepath.Join(baseDir, "libc", "string", "strpbrk.c"),
			filepath.Join(baseDir, "libc", "string", "strrchr.c"),
			filepath.Join(baseDir, "libc", "string", "strsep.c"),
			filepath.Join(baseDir, "libc", "string", "strsignal.c"),
			filepath.Join(baseDir, "libc", "string", "strspn.c"),
			filepath.Join(baseDir, "libc", "string", "strstr.c"),
			filepath.Join(baseDir, "libc", "string", "strtok.c"),
			filepath.Join(baseDir, "libc", "string", "strtok_r.c"),
			filepath.Join(baseDir, "libc", "string", "strupr.c"),
			filepath.Join(baseDir, "libc", "string", "strverscmp.c"),
			filepath.Join(baseDir, "libc", "string", "strxfrm.c"),
			filepath.Join(baseDir, "libc", "string", "strxfrm_l.c"),
			filepath.Join(baseDir, "libc", "string", "swab.c"),
			filepath.Join(baseDir, "libc", "string", "timingsafe_bcmp.c"),
			filepath.Join(baseDir, "libc", "string", "timingsafe_memcmp.c"),
			filepath.Join(baseDir, "libc", "string", "strerror.c"),
			filepath.Join(baseDir, "libc", "string", "wcpcpy.c"),
			filepath.Join(baseDir, "libc", "string", "wcpncpy.c"),
			filepath.Join(baseDir, "libc", "string", "wcscasecmp.c"),
			filepath.Join(baseDir, "libc", "string", "wcscasecmp_l.c"),
			filepath.Join(baseDir, "libc", "string", "wcscat.c"),
			filepath.Join(baseDir, "libc", "string", "wcschr.c"),
			filepath.Join(baseDir, "libc", "string", "wcscmp.c"),
			filepath.Join(baseDir, "libc", "string", "wcscoll.c"),
			filepath.Join(baseDir, "libc", "string", "wcscoll_l.c"),
			filepath.Join(baseDir, "libc", "string", "wcscpy.c"),
			filepath.Join(baseDir, "libc", "string", "wcscspn.c"),
			filepath.Join(baseDir, "libc", "string", "wcsdup.c"),
			filepath.Join(baseDir, "libc", "string", "wcslcat.c"),
			filepath.Join(baseDir, "libc", "string", "wcslcpy.c"),
			filepath.Join(baseDir, "libc", "string", "wcslen.c"),
			filepath.Join(baseDir, "libc", "string", "wcsncasecmp.c"),
			filepath.Join(baseDir, "libc", "string", "wcsncasecmp_l.c"),
			filepath.Join(baseDir, "libc", "string", "wcsncat.c"),
			filepath.Join(baseDir, "libc", "string", "wcsncmp.c"),
			filepath.Join(baseDir, "libc", "string", "wcsncpy.c"),
			filepath.Join(baseDir, "libc", "string", "wcsnlen.c"),
			filepath.Join(baseDir, "libc", "string", "wcspbrk.c"),
			filepath.Join(baseDir, "libc", "string", "wcsrchr.c"),
			filepath.Join(baseDir, "libc", "string", "wcsspn.c"),
			filepath.Join(baseDir, "libc", "string", "wcsstr.c"),
			filepath.Join(baseDir, "libc", "string", "wcstok.c"),
			filepath.Join(baseDir, "libc", "string", "wcswidth.c"),
			filepath.Join(baseDir, "libc", "string", "wcsxfrm.c"),
			filepath.Join(baseDir, "libc", "string", "wcsxfrm_l.c"),
			filepath.Join(baseDir, "libc", "string", "wcwidth.c"),
			filepath.Join(baseDir, "libc", "string", "wmemchr.c"),
			filepath.Join(baseDir, "libc", "string", "wmemcmp.c"),
			filepath.Join(baseDir, "libc", "string", "wmemcpy.c"),
			filepath.Join(baseDir, "libc", "string", "wmemmove.c"),
			filepath.Join(baseDir, "libc", "string", "wmempcpy.c"),
			filepath.Join(baseDir, "libc", "string", "wmemset.c"),
			filepath.Join(baseDir, "libc", "string", "xpg_strerror_r.c"),

			filepath.Join(baseDir, "libc", "stdlib", "nano-calloc.c"),
			filepath.Join(baseDir, "libc", "stdlib", "nano-malloc.c"),
			filepath.Join(baseDir, "libc", "stdlib", "nano-pvalloc.c"),
			filepath.Join(baseDir, "libc", "stdlib", "nano-realloc.c"),
			filepath.Join(baseDir, "libc", "stdlib", "nano-valloc.c"),
			filepath.Join(baseDir, "libc", "stdlib", "rand.c"),
			filepath.Join(baseDir, "libc", "stdlib", "srand.c"),
			filepath.Join(baseDir, "libc", "stdlib", "nano-free.c"),

			filepath.Join(baseDir, "libc", "tinystdio", "printf.c"),
			filepath.Join(baseDir, "libc", "tinystdio", "putchar.c"),
			filepath.Join(baseDir, "libc", "tinystdio", "puts.c"),
		},
		CFlags: []string{
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
			"-isystem" + libcIncludeDir,
			"-I" + libmIncludeDir,
			"-I" + localeIncludeDir,
			"-I" + baseDir,
			"-I" + filepath.Join(baseDir, "libc", "tinystdio"),
		},
		LDFlags:       []string{"-nostdlib"},
		ArchiveSrcDir: filepath.Join("picolibc-1.8.10", "newlib"),
	}
}
