package pullmodel

import (
	"fmt"
	"os"
)

// warnUnsupported emits a non-fatal diagnostic when LLGO_PULL_WARN_UNSUPPORTED=1.
func warnUnsupported(fnName, msg string) {
	if os.Getenv("LLGO_PULL_WARN_UNSUPPORTED") != "1" {
		return
	}
	fmt.Fprintf(os.Stderr, "[pullmodel][warn] %s: %s\n", fnName, msg)
}

// fatalUnsupported reports whether unsupported patterns should hard-fail.
func fatalUnsupported() bool {
	return os.Getenv("LLGO_PULL_ERROR_UNSUPPORTED") == "1"
}
