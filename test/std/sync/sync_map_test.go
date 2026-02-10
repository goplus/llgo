package sync_test

import (
	"sync"
	"testing"
)

func TestMapBasic(t *testing.T) {
	var m sync.Map

	// Test LoadOrStore
	value, loaded := m.LoadOrStore("key", "default")
	if value != "default" {
		t.Fatalf("LoadOrStore with key='key' and default value='default' returned %v, want 'default'", value)
	}
	if loaded {
		t.Fatalf("LoadOrStore with non-existing key should have loaded=false, got %v", loaded)
	}

	// Test Store
	m.Store("key", "value")
	if v, ok := m.Load("key"); !ok || v != "value" {
		t.Fatalf("Load after Store returned %v, %v, want 'value'", v, ok)
	}

	// Test LoadAndDelete
	deletedValue, loaded := m.LoadAndDelete("key2")
	if loaded {
		t.Fatalf("LoadAndDelete with non-existing key returned loaded=true, got %v", loaded)
	}
	if deletedValue != nil {
		t.Fatalf("LoadAndDelete should return nil for non-existing key, got %v", deletedValue)
	}

	// Test Delete
	m.Store("key3", "new")
	m.Delete("key3")
	if v, ok := m.Load("key3"); ok || v != nil {
		t.Fatalf("Delete should remove key, got %v", v)
	}

	// Test CompareAndSwap - with correct existing value
	previous := "previous"
	m.Store("compare", previous)
	swapped := m.CompareAndSwap("compare", "previous", "new")
	if !swapped {
		t.Fatalf("CompareAndSwap with correct old value should return swapped=true, got false")
	}
	if v, ok := m.Load("compare"); !ok || v != "new" {
		t.Fatalf("CompareAndSwap should update value, got %v", v)
	}

	// Test CompareAndSwap - with wrong existing value
	swapped = m.CompareAndSwap("compare", "wrong", "newer")
	if swapped {
		t.Fatalf("CompareAndSwap with wrong old value should return swapped=false, got true")
	}
	if v, ok := m.Load("compare"); !ok || v != "new" {
		t.Fatalf("CompareAndSwap should not update value when old value doesn't match, got %v", v)
	}

	// Test CompareAndDelete with non-matching value
	m.Store("delete", "value")
	deleted := m.CompareAndDelete("delete", "wrong_value")
	if deleted {
		t.Fatalf("CompareAndDelete with wrong value returned deleted=true, want false")
	}
	if v, ok := m.Load("delete"); !ok || v != "value" {
		t.Fatalf("CompareAndDelete should keep value when wrong value provided, got %v", v)
	}

	// Test CompareAndDelete with matching value
	deleted = m.CompareAndDelete("delete", "value")
	if !deleted {
		t.Fatalf("CompareAndDelete with correct value returned deleted=false, want true")
	}

	// Test that key no longer exists after CompareAndDelete
	if _, ok := m.Load("delete"); ok {
		t.Fatalf("CompareAndDelete should have removed key")
	}
}

func TestMapSwap(t *testing.T) {
	var m sync.Map

	// Initialize the map
	m.Store("key", "initial")
	m.Store("key2", "value2")

	// Test successful swap
	oldValue, loaded := m.Swap("key", "new")
	if oldValue != "initial" {
		t.Fatalf("Swap returned old value %v, want 'initial'", oldValue)
	}
	if !loaded {
		t.Fatalf("Swap should indicate key existed before, got %v", loaded)
	}

	if v, ok := m.Load("key"); !ok || v != "new" {
		t.Fatalf("Swap failed to update value, got %v", v)
	}

	// Test swap with non-existing key
	oldValue, loaded = m.Swap("nonexistent", "value")
	if oldValue != nil {
		t.Fatalf("Swap with non-existing key returned %v, want nil", oldValue)
	}
	if loaded {
		t.Fatalf("Swap with non-existing key should indicate key didn't exist, got %v", loaded)
	}

	if v, ok := m.Load("nonexistent"); !ok || v != "value" {
		t.Fatalf("Swap with non-existing key should update value, got %v", v)
	}
}

func TestMapRange(t *testing.T) {
	var m sync.Map

	// Insert some test data
	testData := map[string]interface{}{
		"a": 1,
		"b": 2,
		"c": 3,
	}

	for k, v := range testData {
		m.Store(k, v)
	}

	// Count items with Range
	count := 0
	m.Range(func(key, value interface{}) bool {
		if _, exists := testData[key.(string)]; !exists {
			t.Fatalf("Range callback called with unexpected key %s", key)
		}
		count++
		return true
	})

	if count != 3 {
		t.Fatalf("Range should visit all 3 entries, got %d", count)
	}

	// Verify all keys were visited
	keys := make([]string, 0, count)
	m.Range(func(key, _ interface{}) bool {
		keys = append(keys, key.(string))
		return true
	})

	expectedKeys := []string{"a", "b", "c"}
	if len(keys) != len(expectedKeys) {
		t.Fatalf("Range keys count mismatch. Got %d, want %d", len(keys), len(expectedKeys))
	}
}

func TestMapDelete(t *testing.T) {
	var m sync.Map

	// Store some test data
	m.Store("keep", "value")
	m.Store("delete", "remove")

	// Test successful delete - Delete method doesn't return a value in Go 1.24
	m.Delete("delete")
	if v, ok := m.Load("delete"); ok || v != nil {
		t.Fatalf("Delete failed to remove key, got %v", v)
	}

	// Test delete of non-existing key - should not panic
	m.Delete("nonexistent")
	if v, ok := m.Load("nonexistent"); ok || v != nil {
		t.Fatalf("Delete of non-existing key should not create a value, got %v", v)
	}
}

func TestMapClear(t *testing.T) {
	var m sync.Map

	// Store some test data
	m.Store("a", 1)
	m.Store("b", 2)
	m.Store("c", 3)

	// Verify data exists
	count := 0
	m.Range(func(key, value interface{}) bool {
		count++
		return true
	})
	if count != 3 {
		t.Fatalf("Expected 3 items before Clear, got %d", count)
	}

	m.Clear()

	// Verify all keys are removed
	keys := []interface{}{}
	m.Range(func(key, _ interface{}) bool {
		keys = append(keys, key)
		return true
	})

	if len(keys) != 0 {
		t.Fatalf("Clear should remove all keys, but got %d keys: %v", len(keys), keys)
	}

	// Test that we can use Clear on empty map
	m.Clear() // Should not panic

	// Test that Clear works on non-empty map again
	m.Store("x", "test")
	m.Clear()

	count = 0
	m.Range(func(key, value interface{}) bool {
		count++
		return true
	})
	if count != 0 {
		t.Fatalf("Expected 0 items after second Clear, got %d", count)
	}
}

func TestConcurrentMapAccess(t *testing.T) {
	var m sync.Map
	keys := []string{"key1", "key2", "key3", "key4", "key5"}
	values := []string{"value1", "value2", "value3", "value4", "value5"}

	// Concurrent writes
	var wg sync.WaitGroup
	wg.Add(len(keys))
	for i, key := range keys {
		go func(k string, v string) {
			defer wg.Done()
			m.Store(k, v)
		}(key, values[i])
	}
	wg.Wait()

	// Verify all values are stored
	for i, key := range keys {
		storedValue, ok := m.Load(key)
		if !ok {
			t.Fatalf("Failed to load key %s", key)
		}
		if storedValue != values[i] {
			t.Fatalf("Key %s has wrong value. Got %v, want %v", key, storedValue, values[i])
		}
	}

	// Concurrent reads
	done := make(chan bool, len(keys))
	for _, key := range keys {
		go func(k string) {
			m.Load(k)
			done <- true
		}(key)
	}

	// Wait for all reads to complete
	for i := 0; i < len(keys); i++ {
		<-done
	}
}
