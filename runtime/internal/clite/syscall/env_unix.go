package syscall

import (
	"sync"
	_ "unsafe"

	c "github.com/goplus/llgo/runtime/internal/clite"
)

var (
	envOnce sync.Once
	envLock sync.RWMutex
	env     map[string]int
	envs    []string
)

//go:linkname c_environ environ
var c_environ **c.Char

//go:linkname c_getenv C.getenv
func c_getenv(name *c.Char) *c.Char

func copyenv() {
	env = make(map[string]int)
	p := c_environ
	i := 0
	for p != nil {
		s := c.GoString(*p)
		for j := 0; j < len(s); j++ {
			if s[j] == '=' {
				key := s[:j]
				if _, ok := env[key]; !ok {
					env[key] = i // first mention of key
				} else {
					// Clear duplicate keys. This permits Unsetenv to
					// safely delete only the first item without
					// worrying about unshadowing a later one,
					// which might be a security problem.
					envs[i] = ""
				}
				break
			}
		}
		p = c.Advance(p, 1)
		i++
	}
}

func Getenv(key string) (value string, found bool) {
	envOnce.Do(copyenv)
	if len(key) == 0 {
		return "", false
	}

	envLock.RLock()
	defer envLock.RUnlock()

	i, ok := env[key]
	if !ok {
		return "", false
	}
	s := envs[i]
	for i := 0; i < len(s); i++ {
		if s[i] == '=' {
			return s[i+1:], true
		}
	}
	return "", false
}
