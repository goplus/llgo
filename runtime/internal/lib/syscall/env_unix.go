// Copyright 2010 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

//go:build unix || (js && wasm) || plan9 || wasip1

// Unix environment variables.

package syscall

import (
	"runtime"
	"sync"

	c "github.com/goplus/llgo/runtime/internal/clite"
	"github.com/goplus/llgo/runtime/internal/clite/os"
	"github.com/goplus/llgo/runtime/internal/clite/syscall"
)

var (
	// envOnce guards initialization by copyenv, which populates env.
	envOnce sync.Once

	// envLock guards env and envs.
	envLock sync.RWMutex

	// env maps from an environment variable to its first occurrence in envs.
	env map[string]int

	// envs is provided by the runtime. elements are expected to
	// be of the form "key=value". An empty string means deleted
	// (or a duplicate to be ignored).
	envs []string = runtimeEnvs()
)

func runtimeEnvs() []string {
	ret := make([]string, 0, 8)
	cenvs := os.Environ
	i := 0
	for {
		ce := *c.Advance(cenvs, i)
		if ce == nil {
			return ret
		}
		ret = append(ret, c.GoString(ce))
		i++
	}
}

func copyenv() {
	env = make(map[string]int)
	for i, s := range envs {
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
	}
}

func Unsetenv(key string) error {
	envOnce.Do(copyenv)

	envLock.Lock()
	defer envLock.Unlock()

	if i, ok := env[key]; ok {
		envs[i] = ""
		delete(env, key)
	}
	os.Unsetenv(c.AllocaCStr(key))
	return nil
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

/* TODO(xsw):
func Getenv(key string) (value string, found bool) {
	ret := os.Getenv(c.AllocaCStr(key))
	if ret != nil {
		return c.GoString(ret), true
	}
	return "", false
}
*/

func Setenv(key, value string) error {
	envOnce.Do(copyenv)
	if len(key) == 0 {
		return Errno(syscall.EINVAL)
	}
	for i := 0; i < len(key); i++ {
		if key[i] == '=' || key[i] == 0 {
			return Errno(syscall.EINVAL)
		}
	}
	// On Plan 9, null is used as a separator, eg in $path.
	if runtime.GOOS != "plan9" {
		for i := 0; i < len(value); i++ {
			if value[i] == 0 {
				return Errno(syscall.EINVAL)
			}
		}
	}

	envLock.Lock()
	defer envLock.Unlock()

	i, ok := env[key]
	kv := key + "=" + value
	if ok {
		envs[i] = kv
	} else {
		i = len(envs)
		envs = append(envs, kv)
	}
	env[key] = i
	os.Setenv(c.AllocaCStr(key), c.AllocaCStr(value), 1)
	return nil
}

func Clearenv() {
	envOnce.Do(copyenv) // prevent copyenv in Getenv/Setenv

	envLock.Lock()
	defer envLock.Unlock()

	os.Clearenv()
	env = make(map[string]int)
	envs = []string{}
}

func Environ() []string {
	envOnce.Do(copyenv)
	envLock.RLock()
	defer envLock.RUnlock()
	a := make([]string, 0, len(envs))
	for _, env := range envs {
		if env != "" {
			a = append(a, env)
		}
	}
	return a
}
