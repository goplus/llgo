// Copyright 2021 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package godebug

import (
	"sync"
	"sync/atomic"
	"unsafe"
	_ "unsafe" // go:linkname

	"github.com/goplus/llgo/runtime/internal/lib/internal/bisect"
	"github.com/goplus/llgo/runtime/internal/lib/internal/godebugs"
)

type Setting struct {
	name string
	once sync.Once
	*setting
}

type setting struct {
	value          atomic.Pointer[value]
	nonDefaultOnce sync.Once
	nonDefault     atomic.Uint64
	info           *godebugs.Info
}

type value struct {
	text   string
	bisect *bisect.Matcher
}

func New(name string) *Setting {
	return &Setting{name: name}
}

func (s *Setting) Name() string {
	if s.name != "" && s.name[0] == '#' {
		return s.name[1:]
	}
	return s.name
}

func (s *Setting) Undocumented() bool {
	return s.name != "" && s.name[0] == '#'
}

func (s *Setting) String() string {
	return s.Name() + "=" + s.Value()
}

func (s *Setting) IncNonDefault() {
	s.nonDefaultOnce.Do(s.register)
	s.nonDefault.Add(1)
}

func (s *Setting) register() {
	if s.info == nil || s.info.Opaque {
		panic("godebug: unexpected IncNonDefault of " + s.name)
	}
	registerMetric("/godebug/non-default-behavior/"+s.Name()+":events", s.nonDefault.Load)
}

var cache sync.Map // name string -> value *setting

var empty value

func (s *Setting) Value() string {
	s.once.Do(func() {
		s.setting = lookup(s.Name())
		if s.info == nil && !s.Undocumented() {
			panic("godebug: Value of name not listed in godebugs.All: " + s.name)
		}
	})
	v := *s.value.Load()
	if v.bisect != nil && !v.bisect.Stack(&stderr) {
		return ""
	}
	return v.text
}

func lookup(name string) *setting {
	if v, ok := cache.Load(name); ok {
		return v.(*setting)
	}
	s := new(setting)
	s.info = godebugs.Lookup(name)
	s.value.Store(&empty)
	if v, loaded := cache.LoadOrStore(name, s); loaded {
		return v.(*setting)
	}
	return s
}

//go:linkname setUpdate
func setUpdate(update func(string, string))

//go:linkname registerMetric
func registerMetric(name string, read func() uint64)

//go:linkname setNewIncNonDefault
func setNewIncNonDefault(newIncNonDefault func(string) func())

func init() {
	setUpdate(update)
	setNewIncNonDefault(newIncNonDefault)
}

func newIncNonDefault(name string) func() {
	s := New(name)
	s.Value()
	return s.IncNonDefault
}

var updateMu sync.Mutex

func update(def, env string) {
	updateMu.Lock()
	defer updateMu.Unlock()

	did := make(map[string]bool)
	cache.Range(func(name, s any) bool {
		if info := s.(*setting).info; info != nil && info.Immutable {
			did[name.(string)] = true
		}
		return true
	})
	parse(did, env)
	parse(did, def)

	cache.Range(func(name, s any) bool {
		if !did[name.(string)] {
			s.(*setting).value.Store(&empty)
		}
		return true
	})
}

func parse(did map[string]bool, s string) {
	end := len(s)
	eq := -1
	for i := end - 1; i >= -1; i-- {
		if i == -1 || s[i] == ',' {
			if eq >= 0 {
				name, arg := s[i+1:eq], s[eq+1:end]
				if !did[name] {
					did[name] = true
					v := &value{text: arg}
					for j := 0; j < len(arg); j++ {
						if arg[j] == '#' {
							v.text = arg[:j]
							v.bisect, _ = bisect.New(arg[j+1:])
							break
						}
					}
					lookup(name).value.Store(v)
				}
			}
			eq = -1
			end = i
		} else if s[i] == '=' {
			eq = i
		}
	}
}

type runtimeStderr struct{}

var stderr runtimeStderr

func (*runtimeStderr) Write(b []byte) (int, error) {
	if len(b) > 0 {
		write(2, unsafe.Pointer(&b[0]), int32(len(b)))
	}
	return len(b), nil
}

//go:linkname write runtime.write
func write(fd uintptr, p unsafe.Pointer, n int32) int32
