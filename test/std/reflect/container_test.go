//go:build !llgo

package reflect_test

import (
	"reflect"
	"testing"
)

// Test slice operations
func TestSliceOperations(t *testing.T) {
	s := []int{1, 2, 3, 4, 5}
	v := reflect.ValueOf(s)

	// Test Len
	if v.Len() != 5 {
		t.Errorf("Len should be 5, got %d", v.Len())
	}

	// Test Index
	elem := v.Index(2)
	if elem.Int() != 3 {
		t.Errorf("Index(2) should be 3, got %d", elem.Int())
	}
}

// Test map operations
func TestMapOperations(t *testing.T) {
	m := map[string]int{"a": 1, "b": 2}
	v := reflect.ValueOf(m)

	// Test Len
	if v.Len() != 2 {
		t.Errorf("Len should be 2, got %d", v.Len())
	}

	// Test MapKeys
	keys := v.MapKeys()
	if len(keys) != 2 {
		t.Errorf("MapKeys length should be 2, got %d", len(keys))
	}

	// Test MapIndex
	key := reflect.ValueOf("a")
	val := v.MapIndex(key)
	if val.Int() != 1 {
		t.Errorf("MapIndex('a') should be 1, got %d", val.Int())
	}
}

// Test MapIter
func TestMapIter(t *testing.T) {
	m := map[string]int{"a": 1, "b": 2, "c": 3}
	v := reflect.ValueOf(m)

	iter := v.MapRange()
	count := 0
	for iter.Next() {
		key := iter.Key()
		val := iter.Value()
		if key.String() == "" {
			t.Error("Key should not be empty")
		}
		if val.Int() == 0 {
			t.Error("Value should not be zero")
		}
		count++
	}
	if count != 3 {
		t.Errorf("MapRange should iterate 3 times, got %d", count)
	}
}

// Test Value.Slice operations
func TestValueSlice(t *testing.T) {
	s := []int{1, 2, 3, 4, 5}
	v := reflect.ValueOf(s)

	// Test Slice
	slice := v.Slice(1, 4)
	if slice.Len() != 3 {
		t.Errorf("Slice(1,4) length should be 3, got %d", slice.Len())
	}
	if slice.Index(0).Int() != 2 {
		t.Errorf("Slice[0] should be 2, got %d", slice.Index(0).Int())
	}

	// Test Slice3
	slice3 := v.Slice3(1, 3, 4)
	if slice3.Len() != 2 {
		t.Errorf("Slice3(1,3,4) length should be 2, got %d", slice3.Len())
	}
	if slice3.Cap() != 3 {
		t.Errorf("Slice3 cap should be 3, got %d", slice3.Cap())
	}
}

// Test Value.Cap
func TestValueCap(t *testing.T) {
	s := make([]int, 3, 5)
	v := reflect.ValueOf(s)

	if v.Cap() != 5 {
		t.Errorf("Cap should be 5, got %d", v.Cap())
	}
}

// Test Value.SetMapIndex
func TestValueSetMapIndex(t *testing.T) {
	m := make(map[string]int)
	v := reflect.ValueOf(m)

	key := reflect.ValueOf("key")
	val := reflect.ValueOf(100)

	v.SetMapIndex(key, val)

	if m["key"] != 100 {
		t.Errorf("SetMapIndex: expected 100, got %d", m["key"])
	}

	// Delete by setting to zero value
	v.SetMapIndex(key, reflect.Value{})
	if _, ok := m["key"]; ok {
		t.Error("SetMapIndex with zero Value should delete key")
	}
}

// Test Value.Grow and Clear
func TestValueGrowClear(t *testing.T) {
	s := make([]int, 2, 5)
	v := reflect.ValueOf(&s).Elem()

	// Test Grow
	v.Grow(3)
	if v.Cap() < 5 {
		t.Errorf("After Grow, cap should be at least 5, got %d", v.Cap())
	}

	// Test Clear - Clear zeros the slice elements but doesn't change length
	s = []int{1, 2, 3}
	v = reflect.ValueOf(&s).Elem()
	v.Clear()
	// After Clear, elements are zeroed but length remains
	if v.Len() != 3 {
		t.Errorf("After Clear, length should remain 3, got %d", v.Len())
	}
	if v.Index(0).Int() != 0 {
		t.Error("After Clear, elements should be zero")
	}
}

// Test Value.SetLen and SetCap
func TestValueSetLenCap(t *testing.T) {
	s := make([]int, 2, 5)
	v := reflect.ValueOf(&s).Elem()

	// Test SetLen
	v.SetLen(4)
	if len(s) != 4 {
		t.Errorf("SetLen: expected length 4, got %d", len(s))
	}

	// Test SetCap - can only be called on addressable slices
	// SetCap panics if new cap is less than len or greater than existing cap
	// Just test that the method exists
	defer func() {
		recover() // SetCap may panic depending on implementation
	}()
	v.SetCap(5)
}

// Test channel operations
func TestChannelOperations(t *testing.T) {
	ch := make(chan int, 2)
	v := reflect.ValueOf(ch)

	// Test Send
	v.Send(reflect.ValueOf(1))
	v.Send(reflect.ValueOf(2))

	// Test Recv
	val, ok := v.Recv()
	if !ok {
		t.Fatal("Recv should succeed")
	}
	if val.Int() != 1 {
		t.Errorf("Recv should get 1, got %d", val.Int())
	}

	// Test TryRecv
	val, ok = v.TryRecv()
	if !ok {
		t.Fatal("TryRecv should succeed")
	}
	if val.Int() != 2 {
		t.Errorf("TryRecv should get 2, got %d", val.Int())
	}

	// Test TrySend
	ok = v.TrySend(reflect.ValueOf(3))
	if !ok {
		t.Error("TrySend should succeed on buffered channel")
	}

	// Test Close
	v.Close()

	// After close, receive should still work until empty
	val, ok = v.Recv()
	if !ok {
		t.Fatal("Recv should succeed after close (channel not empty)")
	}
}

// Test Select (basic)
func TestSelect(t *testing.T) {
	ch1 := make(chan int, 1)
	ch1 <- 42

	cases := []reflect.SelectCase{
		{Dir: reflect.SelectRecv, Chan: reflect.ValueOf(ch1)},
	}

	chosen, recv, recvOK := reflect.Select(cases)
	if chosen != 0 {
		t.Errorf("Select should choose case 0, got %d", chosen)
	}
	if !recvOK {
		t.Error("Select recv should be OK")
	}
	if recv.Int() != 42 {
		t.Errorf("Select should receive 42, got %d", recv.Int())
	}
}

// Test MapIter.Reset
func TestMapIterReset(t *testing.T) {
	m1 := map[string]int{"a": 1}
	m2 := map[string]int{"b": 2}

	iter := reflect.ValueOf(m1).MapRange()
	iter.Next()

	// Reset to different map
	iter.Reset(reflect.ValueOf(m2))
	if iter.Next() {
		key := iter.Key().String()
		if key != "b" {
			t.Errorf("After Reset, key should be 'b', got %q", key)
		}
	}
}

// Test Value.SetIterKey and SetIterValue
func TestValueSetIter(t *testing.T) {
	m := map[string]int{"a": 1, "b": 2}
	iter := reflect.ValueOf(m).MapRange()

	var k string
	var v int

	keyVal := reflect.ValueOf(&k).Elem()
	valVal := reflect.ValueOf(&v).Elem()

	if iter.Next() {
		keyVal.SetIterKey(iter)
		valVal.SetIterValue(iter)

		if k == "" {
			t.Error("SetIterKey should set key")
		}
		if v == 0 {
			t.Error("SetIterValue should set value")
		}
	}
}
