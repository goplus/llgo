//go:build !windows && !darwin

package thread

import c "github.com/xgo-dev/llgo/runtime/internal/clite"

type Key c.Uint
