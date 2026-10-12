package thread

import c "github.com/xgo-dev/llgo/runtime/internal/clite"

// Darwin defines pthread_key_t as unsigned long, including its output storage.
type Key c.Ulong
