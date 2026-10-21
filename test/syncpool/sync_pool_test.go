package syncpool

import (
	"sync"
	"sync/atomic"
	"testing"
)

func TestPoolDoesNotReturnItemConcurrently(t *testing.T) {
	type item struct {
		inUse int32
	}

	var p sync.Pool
	p.New = func() any {
		return new(item)
	}

	var failed int32
	var wg sync.WaitGroup
	for g := 0; g < 32; g++ {
		wg.Add(1)
		go func() {
			defer wg.Done()
			for i := 0; i < 1000; i++ {
				x := p.Get().(*item)
				if !atomic.CompareAndSwapInt32(&x.inUse, 0, 1) {
					atomic.StoreInt32(&failed, 1)
					return
				}
				atomic.StoreInt32(&x.inUse, 0)
				p.Put(x)
			}
		}()
	}
	wg.Wait()

	if atomic.LoadInt32(&failed) != 0 {
		t.Fatal("sync.Pool returned an item while it was still in use")
	}
}
