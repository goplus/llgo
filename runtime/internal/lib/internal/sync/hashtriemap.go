// Copyright 2024 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package sync

// HashTrieMap is a compatibility implementation for llgo.
// It preserves the zero-value and concurrency semantics expected by sync.Map,
// but uses a simple mutex-protected Go map instead of the runtime hash-trie.
type HashTrieMap[K comparable, V any] struct {
	mu Mutex
	m  []hashTrieEntry[K, V]
}

type hashTrieEntry[K comparable, V any] struct {
	key   K
	value V
}

func (ht *HashTrieMap[K, V]) ensureMap() {
	if ht.m == nil {
		ht.m = make([]hashTrieEntry[K, V], 0)
	}
}

func (ht *HashTrieMap[K, V]) Load(key K) (value V, ok bool) {
	ht.mu.Lock()
	if i := ht.findIndex(key); i >= 0 {
		value, ok = ht.m[i].value, true
	}
	ht.mu.Unlock()
	return
}

func (ht *HashTrieMap[K, V]) LoadOrStore(key K, value V) (result V, loaded bool) {
	ht.mu.Lock()
	ht.ensureMap()
	if i := ht.findIndex(key); i >= 0 {
		existing := ht.m[i].value
		ht.mu.Unlock()
		return existing, true
	}
	ht.m = append(ht.m, hashTrieEntry[K, V]{key: key, value: value})
	ht.mu.Unlock()
	return value, false
}

func (ht *HashTrieMap[K, V]) Store(key K, value V) {
	_, _ = ht.Swap(key, value)
}

func (ht *HashTrieMap[K, V]) Swap(key K, new V) (previous V, loaded bool) {
	ht.mu.Lock()
	ht.ensureMap()
	if i := ht.findIndex(key); i >= 0 {
		previous = ht.m[i].value
		ht.m[i].value = new
		loaded = true
	} else {
		ht.m = append(ht.m, hashTrieEntry[K, V]{key: key, value: new})
	}
	ht.mu.Unlock()
	return
}

func (ht *HashTrieMap[K, V]) CompareAndSwap(key K, old, new V) bool {
	ht.mu.Lock()
	defer ht.mu.Unlock()
	if i := ht.findIndex(key); i < 0 {
		return false
	} else if !hashTrieValueEqual(ht.m[i].value, old) {
		return false
	} else {
		ht.m[i].value = new
		return true
	}
}

func (ht *HashTrieMap[K, V]) LoadAndDelete(key K) (value V, loaded bool) {
	ht.mu.Lock()
	if i := ht.findIndex(key); i >= 0 {
		value, loaded = ht.m[i].value, true
		ht.deleteIndex(i)
	}
	ht.mu.Unlock()
	return
}

func (ht *HashTrieMap[K, V]) Delete(key K) {
	_, _ = ht.LoadAndDelete(key)
}

func (ht *HashTrieMap[K, V]) CompareAndDelete(key K, old V) bool {
	ht.mu.Lock()
	defer ht.mu.Unlock()
	if i := ht.findIndex(key); i < 0 {
		return false
	} else if !hashTrieValueEqual(ht.m[i].value, old) {
		return false
	} else {
		ht.deleteIndex(i)
		return true
	}
}

func (ht *HashTrieMap[K, V]) All() func(yield func(K, V) bool) {
	return func(yield func(K, V) bool) {
		entries := ht.snapshot()
		for _, entry := range entries {
			if !yield(entry.key, entry.value) {
				return
			}
		}
	}
}

func (ht *HashTrieMap[K, V]) Range(yield func(K, V) bool) {
	ht.All()(yield)
}

func (ht *HashTrieMap[K, V]) Clear() {
	ht.mu.Lock()
	ht.m = nil
	ht.mu.Unlock()
}

func (ht *HashTrieMap[K, V]) snapshot() []hashTrieEntry[K, V] {
	ht.mu.Lock()
	defer ht.mu.Unlock()
	if len(ht.m) == 0 {
		return nil
	}
	entries := make([]hashTrieEntry[K, V], len(ht.m))
	copy(entries, ht.m)
	return entries
}

func hashTrieValueEqual[V any](a, b V) bool {
	return any(a) == any(b)
}

func hashTrieKeyEqual[K comparable](a, b K) bool {
	return any(a) == any(b)
}

func (ht *HashTrieMap[K, V]) findIndex(key K) int {
	for i := range ht.m {
		if hashTrieKeyEqual(ht.m[i].key, key) {
			return i
		}
	}
	return -1
}

func (ht *HashTrieMap[K, V]) deleteIndex(i int) {
	last := len(ht.m) - 1
	ht.m[i] = ht.m[last]
	var zero hashTrieEntry[K, V]
	ht.m[last] = zero
	ht.m = ht.m[:last]
}
