package plan9asm

import (
	"fmt"
	"strings"
)

func emitIRSourceComment(b *strings.Builder, raw string) {
	raw = strings.TrimSpace(raw)
	if raw == "" {
		return
	}
	lines := strings.Split(raw, "\n")
	for _, line := range lines {
		line = strings.TrimSpace(strings.ReplaceAll(line, "\t", " "))
		if line == "" {
			continue
		}
		fmt.Fprintf(b, "  ; s: %s\n", line)
	}
}
