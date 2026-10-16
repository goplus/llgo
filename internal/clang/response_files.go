package clang

import (
	"encoding/binary"
	"fmt"
	"os"
	"path/filepath"
	"strings"
	"unicode/utf16"
)

// ExpandGNUDriverResponseFiles expands arguments for Clang's GNU driver before
// inspecting driver options. Like clang::driver::expandResponseFiles, it honors
// the last top-level --rsp-quoting option. Nested paths are relative to dir (the
// command's working directory), not the containing file. It does not expand
// linker-owned forms such as -Wl,@file.
func ExpandGNUDriverResponseFiles(dir string, args []string) ([]string, error) {
	windows := false
	for _, arg := range args {
		switch arg {
		case "--rsp-quoting=posix":
			windows = false
		case "--rsp-quoting=windows":
			windows = true
		}
	}
	var expand func([]string, []os.FileInfo) ([]string, error)
	expand = func(args []string, stack []os.FileInfo) ([]string, error) {
		var result []string
		for _, arg := range args {
			if !strings.HasPrefix(arg, "@") {
				result = append(result, arg)
				continue
			}
			path := arg[1:]
			if dir != "" && !filepath.IsAbs(path) {
				// Do not Clean: link/../file can differ from file if link is a symlink.
				path = dir + string(os.PathSeparator) + path
			}
			info, err := os.Stat(path)
			if os.IsNotExist(err) {
				// LLVM leaves missing files untouched for the driver to diagnose.
				result = append(result, arg)
				continue
			}
			if err != nil {
				return nil, fmt.Errorf("response file %q: %w", path, err)
			}
			for _, parent := range stack {
				if os.SameFile(info, parent) {
					return nil, fmt.Errorf("recursive response file %q", path)
				}
			}
			data, err := os.ReadFile(path)
			if err != nil {
				return nil, fmt.Errorf("response file %q: %w", path, err)
			}
			content, err := responseFileText(data)
			if err != nil {
				return nil, fmt.Errorf("response file %q: %w", path, err)
			}
			expanded, err := expand(tokenizeResponseFile(content, windows), append(stack, info))
			if err != nil {
				return nil, err
			}
			result = append(result, expanded...)
		}
		return result, nil
	}
	return expand(args, nil)
}

// LLVM accepts UTF-8 (with or without BOM) and BOM-marked UTF-16 response files.
func responseFileText(data []byte) (string, error) {
	var order binary.ByteOrder
	if len(data) >= 2 {
		switch string(data[:2]) {
		case "\xff\xfe":
			order = binary.LittleEndian
		case "\xfe\xff":
			order = binary.BigEndian
		}
	}
	if order == nil {
		return strings.TrimPrefix(string(data), "\xef\xbb\xbf"), nil
	}
	if len(data)%2 != 0 {
		return "", fmt.Errorf("invalid UTF-16 encoding")
	}
	var text strings.Builder
	for i := 2; i < len(data); i += 2 {
		r := rune(order.Uint16(data[i:]))
		if utf16.IsSurrogate(r) {
			if i+3 >= len(data) {
				return "", fmt.Errorf("invalid UTF-16 surrogate")
			}
			r = utf16.DecodeRune(r, rune(order.Uint16(data[i+2:])))
			if r == '\ufffd' {
				return "", fmt.Errorf("invalid UTF-16 surrogate")
			}
			i += 2
		}
		text.WriteRune(r)
	}
	return text.String(), nil
}

// Match LLVM's TokenizeGNUCommandLine/TokenizeWindowsCommandLine. These are
// argument tokenizers, not shell parsers: no variable expansion or execution.
func tokenizeResponseFile(text string, windows bool) []string {
	space := func(c byte) bool {
		return c == ' ' || c == '\t' || c == '\r' || c == '\n' || windows && c == 0
	}
	var args []string
	for i := 0; i < len(text); {
		if space(text[i]) {
			i++
			continue
		}
		var token strings.Builder
		var quote byte
		for i < len(text) {
			c := text[i]
			if quote == 0 && space(c) {
				break
			}
			if c == '\\' {
				if !windows {
					if i+1 < len(text) {
						i++
					}
					token.WriteByte(text[i])
					i++
					continue
				}
				start := i
				for i < len(text) && text[i] == '\\' {
					i++
				}
				n := i - start
				if i < len(text) && text[i] == '"' {
					token.WriteString(strings.Repeat("\\", n/2))
					if n%2 != 0 {
						token.WriteByte('"')
						i++
					}
				} else {
					token.WriteString(strings.Repeat("\\", n))
				}
				continue
			}
			if quote != 0 && c == quote {
				if windows && i+1 < len(text) && text[i+1] == '"' {
					token.WriteByte('"')
					i++
				} else {
					quote = 0
				}
			} else if quote == 0 && (c == '"' || !windows && c == '\'') {
				quote = c
			} else {
				token.WriteByte(c)
			}
			i++
		}
		args = append(args, token.String())
	}
	return args
}
