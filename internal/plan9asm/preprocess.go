package plan9asm

import (
	"bufio"
	"fmt"
	"strings"
)

// preprocess applies a very small preprocessor needed for some stdlib asm:
//   - strips // comments
//   - ignores #include
//   - supports #define NAME <body> with optional single-line continuation via '\'
//   - expands macros only when a statement is exactly NAME
func preprocess(src string) (string, error) {
	type macro struct {
		body string
	}
	macros := map[string]macro{}

	// First pass: collect #define, build output lines for further parsing.
	lines := []string{}

	sc := bufio.NewScanner(strings.NewReader(src))
	var defName string
	var defBody strings.Builder
	defCont := false
	flushDefine := func() error {
		if !defCont {
			return nil
		}
		name := strings.TrimSpace(defName)
		body := strings.TrimSpace(defBody.String())
		if name == "" {
			return fmt.Errorf("invalid #define with empty name")
		}
		macros[name] = macro{body: body}
		defName = ""
		defBody.Reset()
		defCont = false
		return nil
	}

	lineno := 0
	for sc.Scan() {
		lineno++
		line := sc.Text()
		if idx := strings.Index(line, "//"); idx >= 0 {
			line = line[:idx]
		}
		line = strings.TrimRight(line, " \t")
		if strings.TrimSpace(line) == "" {
			if err := flushDefine(); err != nil {
				return "", fmt.Errorf("line %d: %v", lineno, err)
			}
			continue
		}

		if defCont {
			// Continue a definition body on the following line(s).
			cont := strings.TrimSpace(line)
			if strings.HasSuffix(cont, "\\") {
				// Continuation to the next line.
				cont = strings.TrimSpace(strings.TrimSuffix(cont, "\\"))
				defBody.WriteString("\n")
				defBody.WriteString(cont)
				continue
			}
			defBody.WriteString("\n")
			defBody.WriteString(cont)
			if err := flushDefine(); err != nil {
				return "", fmt.Errorf("line %d: %v", lineno, err)
			}
			continue
		}

		trim := strings.TrimSpace(line)
		if strings.HasPrefix(trim, "#include") {
			// Ignore includes for now. We don't need textflag.h values because
			// we treat flags as opaque in TEXT.
			continue
		}
		if strings.HasPrefix(trim, "#define") {
			rest := strings.TrimSpace(strings.TrimPrefix(trim, "#define"))
			fields := strings.Fields(rest)
			if len(fields) < 1 {
				return "", fmt.Errorf("line %d: invalid #define: %q", lineno, line)
			}
			defName = fields[0]
			afterName := strings.TrimSpace(rest[len(defName):])
			afterName = strings.TrimSpace(afterName)
			if strings.HasSuffix(afterName, "\\") {
				afterName = strings.TrimSpace(strings.TrimSuffix(afterName, "\\"))
				defBody.WriteString(afterName)
				defCont = true
				continue
			}
			defBody.WriteString(afterName)
			defCont = true
			if err := flushDefine(); err != nil {
				return "", fmt.Errorf("line %d: %v", lineno, err)
			}
			continue
		}

		lines = append(lines, strings.TrimSpace(line))
	}
	if err := sc.Err(); err != nil {
		return "", err
	}
	if defCont {
		if err := flushDefine(); err != nil {
			return "", err
		}
	}

	// Second pass: expand macro invocations (statement == NAME).
	var out strings.Builder
	for _, line := range lines {
		if m, ok := macros[line]; ok {
			out.WriteString(m.body)
			out.WriteString("\n")
			continue
		}
		out.WriteString(line)
		out.WriteString("\n")
	}
	return out.String(), nil
}
