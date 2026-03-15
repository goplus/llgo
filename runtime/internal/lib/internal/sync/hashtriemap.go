// Copyright 2024 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package sync

import (
	"internal/abi"
	"internal/goarch"
	"sync/atomic"
	"unsafe"
)

// HashTrieMap is an implementation of a concurrent hash-trie. The implementation
// is designed around frequent loads, but offers decent performance for stores
// and deletes as well, especially if the map is larger. Its primary use-case is
// the unique package, but can be used elsewhere as well.
//
// The zero HashTrieMap is empty and ready to use.
// It must not be copied after first use.
type HashTrieMap[K comparable, V any] struct {
	inited   atomic.Uint32
	initMu   Mutex
	root     atomic.Pointer[indirect[K, V]]
	keyHash  hashFunc
	valEqual equalFunc
	seed     uintptr
}

func (ht *HashTrieMap[K, V]) init() {
	if ht.inited.Load() == 0 {
		ht.initSlow()
	}
}

//go:noinline
func (ht *HashTrieMap[K, V]) initSlow() {
	ht.initMu.Lock()
	defer ht.initMu.Unlock()

	if ht.inited.Load() != 0 {
		return
	}

	var m map[K]V
	mapType := abi.TypeOf(m).MapType()
	ht.root.Store(newIndirectNode[K, V](nil))
	ht.keyHash = mapType.Hasher
	ht.valEqual = mapType.Elem.Equal
	ht.seed = uintptr(runtime_rand())

	ht.inited.Store(1)
}

type hashFunc func(unsafe.Pointer, uintptr) uintptr
type equalFunc func(unsafe.Pointer, unsafe.Pointer) bool

func (ht *HashTrieMap[K, V]) Load(key K) (value V, ok bool) {
	ht.init()
	hash := ht.keyHash(abi.NoEscape(unsafe.Pointer(&key)), ht.seed)

	i := ht.root.Load()
	hashShift := 8 * goarch.PtrSize
	for hashShift != 0 {
		hashShift -= nChildrenLog2

		n := i.children[(hash>>hashShift)&nChildrenMask].Load()
		if n == nil {
			return *new(V), false
		}
		if n.isEntry {
			return n.entry().lookup(key)
		}
		i = n.indirect()
	}
	panic("internal/sync.HashTrieMap: ran out of hash bits while iterating")
}

func (ht *HashTrieMap[K, V]) LoadOrStore(key K, value V) (result V, loaded bool) {
	ht.init()
	hash := ht.keyHash(abi.NoEscape(unsafe.Pointer(&key)), ht.seed)
	var i *indirect[K, V]
	var hashShift uint
	var slot *atomic.Pointer[node[K, V]]
	var n *node[K, V]
	for {
		i = ht.root.Load()
		hashShift = 8 * goarch.PtrSize
		haveInsertPoint := false
		for hashShift != 0 {
			hashShift -= nChildrenLog2

			slot = &i.children[(hash>>hashShift)&nChildrenMask]
			n = slot.Load()
			if n == nil {
				haveInsertPoint = true
				break
			}
			if n.isEntry {
				if v, ok := n.entry().lookup(key); ok {
					return v, true
				}
				haveInsertPoint = true
				break
			}
			i = n.indirect()
		}
		if !haveInsertPoint {
			panic("internal/sync.HashTrieMap: ran out of hash bits while iterating")
		}

		i.mu.Lock()
		n = slot.Load()
		if (n == nil || n.isEntry) && !i.dead.Load() {
			break
		}
		i.mu.Unlock()
	}
	defer i.mu.Unlock()

	var oldEntry *entry[K, V]
	if n != nil {
		oldEntry = n.entry()
		if v, ok := oldEntry.lookup(key); ok {
			return v, true
		}
	}
	newEntry := newEntryNode(key, value)
	if oldEntry == nil {
		slot.Store(&newEntry.node)
	} else {
		slot.Store(ht.expand(oldEntry, newEntry, hash, hashShift, i))
	}
	return value, false
}

func (ht *HashTrieMap[K, V]) expand(oldEntry, newEntry *entry[K, V], newHash uintptr, hashShift uint, parent *indirect[K, V]) *node[K, V] {
	oldHash := ht.keyHash(unsafe.Pointer(&oldEntry.key), ht.seed)
	if oldHash == newHash {
		newEntry.overflow.Store(oldEntry)
		return &newEntry.node
	}
	newIndirect := newIndirectNode(parent)
	top := newIndirect
	for {
		if hashShift == 0 {
			panic("internal/sync.HashTrieMap: ran out of hash bits while inserting")
		}
		hashShift -= nChildrenLog2
		oi := (oldHash >> hashShift) & nChildrenMask
		ni := (newHash >> hashShift) & nChildrenMask
		if oi != ni {
			newIndirect.children[oi].Store(&oldEntry.node)
			newIndirect.children[ni].Store(&newEntry.node)
			break
		}
		nextIndirect := newIndirectNode(newIndirect)
		newIndirect.children[oi].Store(&nextIndirect.node)
		newIndirect = nextIndirect
	}
	return &top.node
}

func (ht *HashTrieMap[K, V]) Store(key K, old V) {
	_, _ = ht.Swap(key, old)
}

func (ht *HashTrieMap[K, V]) Swap(key K, new V) (previous V, loaded bool) {
	ht.init()
	hash := ht.keyHash(abi.NoEscape(unsafe.Pointer(&key)), ht.seed)
	var i *indirect[K, V]
	var hashShift uint
	var slot *atomic.Pointer[node[K, V]]
	var n *node[K, V]
	for {
		i = ht.root.Load()
		hashShift = 8 * goarch.PtrSize
		haveInsertPoint := false
		for hashShift != 0 {
			hashShift -= nChildrenLog2

			slot = &i.children[(hash>>hashShift)&nChildrenMask]
			n = slot.Load()
			if n == nil || n.isEntry {
				haveInsertPoint = true
				break
			}
			i = n.indirect()
		}
		if !haveInsertPoint {
			panic("internal/sync.HashTrieMap: ran out of hash bits while iterating")
		}

		i.mu.Lock()
		n = slot.Load()
		if (n == nil || n.isEntry) && !i.dead.Load() {
			break
		}
		i.mu.Unlock()
	}
	defer i.mu.Unlock()

	var zero V
	var oldEntry *entry[K, V]
	if n != nil {
		oldEntry = n.entry()
		newEntry, old, swapped := oldEntry.swap(key, new)
		if swapped {
			slot.Store(&newEntry.node)
			return old, true
		}
	}
	newEntry := newEntryNode(key, new)
	if oldEntry == nil {
		slot.Store(&newEntry.node)
	} else {
		slot.Store(ht.expand(oldEntry, newEntry, hash, hashShift, i))
	}
	return zero, false
}

func (ht *HashTrieMap[K, V]) CompareAndSwap(key K, old, new V) (swapped bool) {
	ht.init()
	if ht.valEqual == nil {
		panic("called CompareAndSwap when value is not of comparable type")
	}
	hash := ht.keyHash(abi.NoEscape(unsafe.Pointer(&key)), ht.seed)

	i, _, slot, n := ht.find(key, hash, ht.valEqual, old)
	if i != nil {
		defer i.mu.Unlock()
	}
	if n == nil {
		return false
	}

	e, swapped := n.entry().compareAndSwap(key, old, new, ht.valEqual)
	if !swapped {
		return false
	}
	slot.Store(&e.node)
	return true
}

func (ht *HashTrieMap[K, V]) LoadAndDelete(key K) (value V, loaded bool) {
	ht.init()
	hash := ht.keyHash(abi.NoEscape(unsafe.Pointer(&key)), ht.seed)

	i, hashShift, slot, n := ht.find(key, hash, nil, *new(V))
	if n == nil {
		if i != nil {
			i.mu.Unlock()
		}
		return *new(V), false
	}

	v, e, loaded := n.entry().loadAndDelete(key)
	if !loaded {
		i.mu.Unlock()
		return *new(V), false
	}
	if e != nil {
		slot.Store(&e.node)
		i.mu.Unlock()
		return v, true
	}
	slot.Store(nil)

	for i.parent != nil && i.empty() {
		if hashShift == 8*goarch.PtrSize {
			panic("internal/sync.HashTrieMap: ran out of hash bits while iterating")
		}
		hashShift += nChildrenLog2

		parent := i.parent
		parent.mu.Lock()
		i.dead.Store(true)
		parent.children[(hash>>hashShift)&nChildrenMask].Store(nil)
		i.mu.Unlock()
		i = parent
	}
	i.mu.Unlock()
	return v, true
}

func (ht *HashTrieMap[K, V]) Delete(key K) {
	_, _ = ht.LoadAndDelete(key)
}

func (ht *HashTrieMap[K, V]) CompareAndDelete(key K, old V) (deleted bool) {
	ht.init()
	if ht.valEqual == nil {
		panic("called CompareAndDelete when value is not of comparable type")
	}
	hash := ht.keyHash(abi.NoEscape(unsafe.Pointer(&key)), ht.seed)

	i, hashShift, slot, n := ht.find(key, hash, nil, *new(V))
	if n == nil {
		if i != nil {
			i.mu.Unlock()
		}
		return false
	}

	e, deleted := n.entry().compareAndDelete(key, old, ht.valEqual)
	if !deleted {
		i.mu.Unlock()
		return false
	}
	if e != nil {
		slot.Store(&e.node)
		i.mu.Unlock()
		return true
	}
	slot.Store(nil)

	for i.parent != nil && i.empty() {
		if hashShift == 8*goarch.PtrSize {
			panic("internal/sync.HashTrieMap: ran out of hash bits while iterating")
		}
		hashShift += nChildrenLog2

		parent := i.parent
		parent.mu.Lock()
		i.dead.Store(true)
		parent.children[(hash>>hashShift)&nChildrenMask].Store(nil)
		i.mu.Unlock()
		i = parent
	}
	i.mu.Unlock()
	return true
}

func (ht *HashTrieMap[K, V]) find(key K, hash uintptr, valEqual equalFunc, value V) (i *indirect[K, V], hashShift uint, slot *atomic.Pointer[node[K, V]], n *node[K, V]) {
	for {
		i = ht.root.Load()
		hashShift = 8 * goarch.PtrSize
		found := false
		for hashShift != 0 {
			hashShift -= nChildrenLog2

			slot = &i.children[(hash>>hashShift)&nChildrenMask]
			n = slot.Load()
			if n == nil {
				i = nil
				return
			}
			if n.isEntry {
				if _, ok := n.entry().lookupWithValue(key, value, valEqual); !ok {
					i = nil
					n = nil
					return
				}
				found = true
				break
			}
			i = n.indirect()
		}
		if !found {
			panic("internal/sync.HashTrieMap: ran out of hash bits while iterating")
		}

		i.mu.Lock()
		n = slot.Load()
		if !i.dead.Load() && (n == nil || n.isEntry) {
			return
		}
		i.mu.Unlock()
	}
}

func (ht *HashTrieMap[K, V]) All() func(yield func(K, V) bool) {
	ht.init()
	return func(yield func(key K, value V) bool) {
		ht.iter(ht.root.Load(), yield)
	}
}

func (ht *HashTrieMap[K, V]) Range(yield func(K, V) bool) {
	ht.init()
	ht.iter(ht.root.Load(), yield)
}

func (ht *HashTrieMap[K, V]) iter(i *indirect[K, V], yield func(key K, value V) bool) bool {
	for j := range i.children {
		n := i.children[j].Load()
		if n == nil {
			continue
		}
		if !n.isEntry {
			if !ht.iter(n.indirect(), yield) {
				return false
			}
			continue
		}
		e := n.entry()
		for e != nil {
			if !yield(e.key, e.value) {
				return false
			}
			e = e.overflow.Load()
		}
	}
	return true
}

func (ht *HashTrieMap[K, V]) Clear() {
	ht.init()
	ht.root.Store(newIndirectNode[K, V](nil))
}

const (
	nChildrenLog2 = 4
	nChildren     = 1 << nChildrenLog2
	nChildrenMask = nChildren - 1
)

type indirect[K comparable, V any] struct {
	node[K, V]
	dead     atomic.Bool
	mu       Mutex
	parent   *indirect[K, V]
	children [nChildren]atomic.Pointer[node[K, V]]
}

func newIndirectNode[K comparable, V any](parent *indirect[K, V]) *indirect[K, V] {
	return &indirect[K, V]{node: node[K, V]{isEntry: false}, parent: parent}
}

func (i *indirect[K, V]) empty() bool {
	nc := 0
	for j := range i.children {
		if i.children[j].Load() != nil {
			nc++
		}
	}
	return nc == 0
}

type entry[K comparable, V any] struct {
	node[K, V]
	overflow atomic.Pointer[entry[K, V]]
	key      K
	value    V
}

func newEntryNode[K comparable, V any](key K, value V) *entry[K, V] {
	return &entry[K, V]{
		node:  node[K, V]{isEntry: true},
		key:   key,
		value: value,
	}
}

func (e *entry[K, V]) lookup(key K) (V, bool) {
	for e != nil {
		if e.key == key {
			return e.value, true
		}
		e = e.overflow.Load()
	}
	return *new(V), false
}

func (e *entry[K, V]) lookupWithValue(key K, value V, valEqual equalFunc) (V, bool) {
	for e != nil {
		if e.key == key && (valEqual == nil || valEqual(unsafe.Pointer(&e.value), abi.NoEscape(unsafe.Pointer(&value)))) {
			return e.value, true
		}
		e = e.overflow.Load()
	}
	return *new(V), false
}

func (head *entry[K, V]) swap(key K, new V) (*entry[K, V], V, bool) {
	if head.key == key {
		e := newEntryNode(key, new)
		if chain := head.overflow.Load(); chain != nil {
			e.overflow.Store(chain)
		}
		return e, head.value, true
	}
	i := &head.overflow
	e := i.Load()
	for e != nil {
		if e.key == key {
			eNew := newEntryNode(key, new)
			eNew.overflow.Store(e.overflow.Load())
			i.Store(eNew)
			return head, e.value, true
		}
		i = &e.overflow
		e = e.overflow.Load()
	}
	var zero V
	return head, zero, false
}

func (head *entry[K, V]) compareAndSwap(key K, old, new V, valEqual equalFunc) (*entry[K, V], bool) {
	if head.key == key && valEqual(unsafe.Pointer(&head.value), abi.NoEscape(unsafe.Pointer(&old))) {
		e := newEntryNode(key, new)
		if chain := head.overflow.Load(); chain != nil {
			e.overflow.Store(chain)
		}
		return e, true
	}
	i := &head.overflow
	e := i.Load()
	for e != nil {
		if e.key == key && valEqual(unsafe.Pointer(&e.value), abi.NoEscape(unsafe.Pointer(&old))) {
			eNew := newEntryNode(key, new)
			eNew.overflow.Store(e.overflow.Load())
			i.Store(eNew)
			return head, true
		}
		i = &e.overflow
		e = e.overflow.Load()
	}
	return head, false
}

func (head *entry[K, V]) loadAndDelete(key K) (V, *entry[K, V], bool) {
	if head.key == key {
		return head.value, head.overflow.Load(), true
	}
	i := &head.overflow
	e := i.Load()
	for e != nil {
		if e.key == key {
			i.Store(e.overflow.Load())
			return e.value, head, true
		}
		i = &e.overflow
		e = e.overflow.Load()
	}
	return *new(V), head, false
}

func (head *entry[K, V]) compareAndDelete(key K, value V, valEqual equalFunc) (*entry[K, V], bool) {
	if head.key == key && valEqual(unsafe.Pointer(&head.value), abi.NoEscape(unsafe.Pointer(&value))) {
		return head.overflow.Load(), true
	}
	i := &head.overflow
	e := i.Load()
	for e != nil {
		if e.key == key && valEqual(unsafe.Pointer(&e.value), abi.NoEscape(unsafe.Pointer(&value))) {
			i.Store(e.overflow.Load())
			return head, true
		}
		i = &e.overflow
		e = e.overflow.Load()
	}
	return head, false
}

type node[K comparable, V any] struct {
	isEntry bool
}

func (n *node[K, V]) entry() *entry[K, V] {
	if !n.isEntry {
		panic("called entry on non-entry node")
	}
	return (*entry[K, V])(unsafe.Pointer(n))
}

func (n *node[K, V]) indirect() *indirect[K, V] {
	if n.isEntry {
		panic("called indirect on entry node")
	}
	return (*indirect[K, V])(unsafe.Pointer(n))
}

//go:linkname runtime_rand runtime.rand
func runtime_rand() uint64
