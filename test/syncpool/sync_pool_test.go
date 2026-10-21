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

// Regression: these live pools exhausted host keys with one key per pool.
func TestManyLivePools(t *testing.T) {
	pools := make([]sync.Pool, 2048)
	for i := range pools {
		pools[i].Put(i)
	}
	for i := range pools {
		if got := pools[i].Get(); got != i {
			t.Fatalf("pool %d: got %v", i, got)
		}
	}
}

// Successive goroutines exercise cumulative pool creation across thread exits
// on LLGo's 1:1 goroutine/thread backend.
func TestManyPoolsAcrossSuccessiveThreads(t *testing.T) {
	for batch := 0; batch < 40; batch++ {
		var wg sync.WaitGroup
		wg.Add(1)
		go func() {
			defer wg.Done()
			for i := 0; i < 64; i++ {
				var p sync.Pool
				p.Put(i)
				if got := p.Get(); got != i {
					t.Errorf("pool %d: got %v", i, got)
				}
			}
		}()
		wg.Wait()
	}
}

func TestSharedPoolsConcurrentThreadIsolation(t *testing.T) {
	const workers = 32
	pools := make([]sync.Pool, 64)
	var ready, done sync.WaitGroup
	ready.Add(workers)
	done.Add(workers)
	release := make(chan struct{})
	for worker := 0; worker < workers; worker++ {
		go func(worker int) {
			defer done.Done()
			for i := range pools {
				pools[i].Put(worker*len(pools) + i)
			}
			// Keep every worker alive with populated locals before any Get.
			ready.Done()
			<-release
			for i := range pools {
				want := worker*len(pools) + i
				if got := pools[i].Get(); got != want {
					t.Errorf("worker %d, pool %d: got %v, want %d", worker, i, got, want)
				}
			}
		}(worker)
	}
	ready.Wait()
	close(release)
	done.Wait()
}
