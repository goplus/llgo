package plan9asm

import (
	"bufio"
	"fmt"
	"sort"
	"strings"
)

type ppMacro struct {
	body string
}

// preprocess applies a very small preprocessor needed for some stdlib asm:
//   - strips // comments
//   - ignores #include
//   - supports #define NAME <body> with optional single-line continuation via '\'
//   - expands macros only when a statement is exactly NAME
func preprocess(src string) (string, error) {
	macros := map[string]ppMacro{}

	type ifState struct {
		outerActive bool
		cond        bool
		inElse      bool
	}
	isDefined := func(name string) bool {
		// For now, only treat previously #defined macros as defined.
		// This is enough for stdlib asm that uses GOAMD64_v* feature macros;
		// llgo doesn't define those currently, so they default to false.
		_, ok := macros[name]
		return ok
	}

	// First pass: collect #define, build output lines for further parsing.
	lines := []string{}

	sc := bufio.NewScanner(strings.NewReader(src))
	inBlockComment := false
	var defName string
	var defBody strings.Builder
	defCont := false
	active := true
	ifStack := []ifState{}
	flushDefine := func() error {
		if !defCont {
			return nil
		}
		name := strings.TrimSpace(defName)
		body := strings.TrimSpace(defBody.String())
		if name == "" {
			return fmt.Errorf("invalid #define with empty name")
		}
		macros[name] = ppMacro{body: body}
		defName = ""
		defBody.Reset()
		defCont = false
		return nil
	}

	lineno := 0
	for sc.Scan() {
		lineno++
		line := sc.Text()
		// Strip C-style /* ... */ comments (may span lines). Some stdlib asm uses
		// these in addition to // comments.
		for {
			if inBlockComment {
				if end := strings.Index(line, "*/"); end >= 0 {
					line = line[end+2:]
					inBlockComment = false
					// Continue scanning in case of multiple comment blocks on one line.
					continue
				}
				// Entire line is within a block comment.
				line = ""
				break
			}
			start := strings.Index(line, "/*")
			if start < 0 {
				break
			}
			end := strings.Index(line[start+2:], "*/")
			if end >= 0 {
				end += start + 2
				line = line[:start] + line[end+2:]
				continue
			}
			// Unterminated block comment starts here; keep prefix and drop the rest.
			line = line[:start]
			inBlockComment = true
			break
		}
		// Strip // comments after block comments.
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
			if !active {
				// Discard bodies from inactive blocks.
				if strings.HasSuffix(strings.TrimSpace(line), "\\") {
					continue
				}
				if err := flushDefine(); err != nil {
					return "", fmt.Errorf("line %d: %v", lineno, err)
				}
				continue
			}
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
		if strings.HasPrefix(trim, "#ifdef") {
			name := strings.TrimSpace(strings.TrimPrefix(trim, "#ifdef"))
			if name == "" {
				return "", fmt.Errorf("line %d: invalid #ifdef: %q", lineno, line)
			}
			st := ifState{outerActive: active, cond: isDefined(name)}
			ifStack = append(ifStack, st)
			active = active && st.cond
			continue
		}
		if strings.HasPrefix(trim, "#ifndef") {
			name := strings.TrimSpace(strings.TrimPrefix(trim, "#ifndef"))
			if name == "" {
				return "", fmt.Errorf("line %d: invalid #ifndef: %q", lineno, line)
			}
			st := ifState{outerActive: active, cond: !isDefined(name)}
			ifStack = append(ifStack, st)
			active = active && st.cond
			continue
		}
		if strings.HasPrefix(trim, "#else") {
			if len(ifStack) == 0 {
				return "", fmt.Errorf("line %d: stray #else", lineno)
			}
			top := ifStack[len(ifStack)-1]
			if top.inElse {
				return "", fmt.Errorf("line %d: duplicate #else", lineno)
			}
			top.inElse = true
			ifStack[len(ifStack)-1] = top
			active = top.outerActive && !top.cond
			continue
		}
		if strings.HasPrefix(trim, "#endif") {
			if len(ifStack) == 0 {
				return "", fmt.Errorf("line %d: stray #endif", lineno)
			}
			top := ifStack[len(ifStack)-1]
			ifStack = ifStack[:len(ifStack)-1]
			active = top.outerActive
			continue
		}
		if strings.HasPrefix(trim, "#define") {
			if !active {
				continue
			}
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

		if !active {
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
	if len(ifStack) != 0 {
		return "", fmt.Errorf("unterminated #if block")
	}

	// Second pass: expand macro invocations (statement == NAME).
	macroNames := make([]string, 0, len(macros))
	for k := range macros {
		macroNames = append(macroNames, k)
	}
	// Expand longer names first to reduce prefix shadowing.
	sort.Slice(macroNames, func(i, j int) bool { return len(macroNames[i]) > len(macroNames[j]) })
	var out strings.Builder
	for _, line := range lines {
		if m, ok := macros[line]; ok {
			out.WriteString(m.body)
			out.WriteString("\n")
			continue
		}
		// Expand immediate macro refs in-place: $NAME -> $<body>.
		// This is required by stdlib asm like:
		//   FMOVD $Ln2Hi, F4
		// where constants are defined by #define.
		for _, name := range macroNames {
			body := strings.TrimSpace(macros[name].body)
			if body == "" {
				continue
			}
			line = strings.ReplaceAll(line, "$"+name, "$"+body)
		}
		// Expand identifiers inside immediate expressions:
		//   $(Big - 1) -> $(0x433... - 1)
		line = expandImmExprMacros(line, macros)
		out.WriteString(line)
		out.WriteString("\n")
	}
	return out.String(), nil
}

func expandImmExprMacros(line string, macros map[string]ppMacro) string {
	var out strings.Builder
	cur := 0
	for cur < len(line) {
		rel := strings.Index(line[cur:], "$(")
		if rel < 0 {
			out.WriteString(line[cur:])
			break
		}
		i := cur + rel
		out.WriteString(line[cur:i])

		j := i + 2
		depth := 1
		for ; j < len(line); j++ {
			switch line[j] {
			case '(':
				depth++
			case ')':
				depth--
				if depth == 0 {
					expr := line[i+2 : j]
					out.WriteString("$(")
					out.WriteString(replaceMacroIdents(expr, macros))
					out.WriteByte(')')
					cur = j + 1
					goto next
				}
			}
		}
		// Unmatched ')': copy the rest unchanged.
		out.WriteString(line[i:])
		break
	next:
	}
	return out.String()
}

func replaceMacroIdents(expr string, macros map[string]ppMacro) string {
	var out strings.Builder
	for i := 0; i < len(expr); {
		ch := expr[i]
		if isIdentStart(ch) {
			j := i + 1
			for j < len(expr) && isIdentPart(expr[j]) {
				j++
			}
			name := expr[i:j]
			if m, ok := macros[name]; ok && strings.TrimSpace(m.body) != "" {
				out.WriteString(strings.TrimSpace(m.body))
			} else {
				out.WriteString(name)
			}
			i = j
			continue
		}
		out.WriteByte(ch)
		i++
	}
	return out.String()
}

func isIdentStart(ch byte) bool {
	return (ch >= 'a' && ch <= 'z') || (ch >= 'A' && ch <= 'Z') || ch == '_'
}

func isIdentPart(ch byte) bool {
	return isIdentStart(ch) || (ch >= '0' && ch <= '9')
}
