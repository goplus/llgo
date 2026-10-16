//go:build !wasm && !baremetal && !nogc

package gotest

import (
	"runtime"
	"runtime/debug"
	"strconv"
	"sync"
	"testing"
)

type gcMutationStruct struct {
	number int
	text   string
	value  *int
}

// TestGCConcurrentTypedMutation covers the typed stores in GOROOT/test/gcgort.go
// without spawning a native thread for every allocation or channel operation.
func TestGCConcurrentTypedMutation(t *testing.T) {
	oldPercent := debug.SetGCPercent(1)
	defer debug.SetGCPercent(oldPercent)
	stopGC, gcDone := make(chan struct{}), make(chan struct{})
	go func() {
		defer close(gcDone)
		for {
			select {
			case <-stopGC:
				return
			default:
				runtime.GC()
				runtime.Gosched()
			}
		}
	}()
	defer func() {
		close(stopGC)
		<-gcDone
	}()

	checkGCConcurrentMutation(t, "bool", func(i int) bool { return i%2 == 0 })
	checkGCConcurrentMutation(t, "uint8", func(i int) uint8 { return uint8(i) })
	checkGCConcurrentMutation(t, "uint16", func(i int) uint16 { return uint16(i) })
	checkGCConcurrentMutation(t, "uint32", func(i int) uint32 { return uint32(i) })
	checkGCConcurrentMutation(t, "uint64", func(i int) uint64 { return uint64(i) })
	checkGCConcurrentMutation(t, "int8", func(i int) int8 { return int8(i) })
	checkGCConcurrentMutation(t, "int16", func(i int) int16 { return int16(i) })
	checkGCConcurrentMutation(t, "int32", func(i int) int32 { return int32(i) })
	checkGCConcurrentMutation(t, "int64", func(i int) int64 { return int64(i) })
	checkGCConcurrentMutation(t, "float32", func(i int) float32 { return float32(i) + 0.5 })
	checkGCConcurrentMutation(t, "float64", func(i int) float64 { return float64(i) + 0.5 })
	checkGCConcurrentMutation(t, "complex64", func(i int) complex64 { return complex(float32(i), 1) })
	checkGCConcurrentMutation(t, "complex128", func(i int) complex128 { return complex(float64(i), 1) })
	checkGCConcurrentMutation(t, "byte", func(i int) byte { return byte(i) })
	checkGCConcurrentMutation(t, "rune", func(i int) rune { return rune(i) })
	checkGCConcurrentMutation(t, "uint", func(i int) uint { return uint(i) })
	checkGCConcurrentMutation(t, "int", func(i int) int { return i })
	checkGCConcurrentMutation(t, "uintptr", func(i int) uintptr { return uintptr(i) })
	checkGCConcurrentMutation(t, "string", func(i int) string { return strconv.Itoa(i + 1000000) })
	checkGCConcurrentMutation(t, "struct", func(i int) gcMutationStruct {
		value := new(int)
		*value = i
		return gcMutationStruct{number: i, text: strconv.Itoa(i + 1000000), value: value}
	})
}

func checkGCConcurrentMutation[T comparable](t *testing.T, name string, makeValue func(int) T) {
	t.Run(name, func(t *testing.T) {
		// Eight workers per type (160 workers total), plus one collector.
		// No operation creates another worker.
		const workers, allocs, mods, length = 8, 8, 8, 9
		var done sync.WaitGroup
		for worker := 0; worker < workers; worker++ {
			done.Add(1)
			go func(worker int) {
				defer done.Done()
				for allocation := 0; allocation < allocs; allocation++ {
					var value T
					pointer := new(T)
					var array [length]T
					slice := make([]T, length)
					mapping := make(map[int]T)
					pointerKeys := make(map[*T]T)
					channel := make(chan T, 1)
					var boxed any
					for modification := 0; modification < mods; modification++ {
						index := modification % length
						want := makeValue((worker*allocs+allocation)*mods + modification)
						value, *pointer, array[index], slice[index] = want, want, want, want
						mapping[index], pointerKeys[pointer] = want, want
						channel <- want
						boxed = want
						runtime.Gosched()
						if value != want || *pointer != want || array[index] != want || slice[index] != want ||
							mapping[index] != want || pointerKeys[pointer] != want || <-channel != want || boxed.(T) != want {
							t.Errorf("worker %d allocation %d modification %d: GC changed typed values", worker, allocation, modification)
							return
						}
						if stored, ok := boxed.(gcMutationStruct); ok &&
							(stored.value == nil || *stored.value != stored.number || stored.text != strconv.Itoa(stored.number+1000000)) {
							t.Error("GC changed data referenced by a typed struct")
							return
						}
					}
				}
			}(worker)
		}
		done.Wait()
	})
}
