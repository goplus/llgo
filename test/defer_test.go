//go:build llgo

package test

import (
	"reflect"
	"testing"
	"time"
)

// runLoopDefers exercises a defer statement inside a loop and relies on
// defers executing after the loop but before the function returns.
func runLoopDefers() (result []int) {
	for i := 0; i < 3; i++ {
		v := i
		defer func() {
			result = append(result, v)
		}()
	}
	return
}

func runLoopDeferCount(n int) (count int) {
	for i := 0; i < n; i++ {
		defer func() {
			count++
		}()
	}
	return
}

func runLoopDeferStress(t *testing.T, n, chunk int, timeout time.Duration) {
	if chunk <= 0 || chunk > n {
		chunk = n
	}
	start := time.Now()
	count := 0
	for count < n {
		if time.Since(start) > timeout {
			t.Fatalf("loop defer stress timeout after %v (n=%d, completed=%d)", timeout, n, count)
		}
		batch := chunk
		if remain := n - count; remain < batch {
			batch = remain
		}
		count += runLoopDeferCount(batch)
	}
	t.Logf("loop defer stress passed: n=%d elapsed=%v", n, time.Since(start))
}
func TestDeferInLoopOrder(t *testing.T) {
	got := runLoopDefers()
	want := []int{2, 1, 0}
	if !reflect.DeepEqual(got, want) {
		t.Fatalf("unexpected defer order: got %v, want %v", got, want)
	}
}

func runComplexDefer() (res []string) {
	record := func(label string) { res = append(res, label) }

	defer record(label1("cleanup-final", 0))
	defer record(label1("cleanup-before-loop", 0))

	for i := 0; i < 2; i++ {
		defer record(label1("exit-outer", i))
		for j := 0; j < 2; j++ {
			if j == 0 {
				defer record(label2("branch-even", i, j))
			} else {
				defer record(label2("branch-odd", i, j))
			}
			for k := 0; k < 2; k++ {
				nested := label3("nested", i, j, k)
				defer record(nested)
				if k == 1 {
					defer record(label3("nested-tail", i, j, k))
				}
			}
		}
	}

	defer record(label1("post-loop", 0))
	return
}

func expectedComplexOrder() []string {
	stack := make([]string, 0)
	push := func(label string) { stack = append(stack, label) }

	push(label1("cleanup-final", 0))
	push(label1("cleanup-before-loop", 0))
	for i := 0; i < 2; i++ {
		push(label1("exit-outer", i))
		for j := 0; j < 2; j++ {
			if j == 0 {
				push(label2("branch-even", i, j))
			} else {
				push(label2("branch-odd", i, j))
			}
			for k := 0; k < 2; k++ {
				nested := label3("nested", i, j, k)
				push(nested)
				if k == 1 {
					push(label3("nested-tail", i, j, k))
				}
			}
		}
	}
	push(label1("post-loop", 0))

	expected := make([]string, len(stack))
	for idx, label := range stack {
		expected[len(stack)-1-idx] = label
	}
	return expected
}

func TestDeferComplexOrder(t *testing.T) {
	got := runComplexDefer()
	want := expectedComplexOrder()
	if !reflect.DeepEqual(got, want) {
		t.Fatalf("unexpected complex defer order:\n got: %v\nwant: %v", got, want)
	}
}

func TestDeferLoopStress(t *testing.T) {
	const n = 1_000_000
	if got := runLoopDeferCount(n); got != n {
		t.Fatalf("unexpected count: got %d, want %d", got, n)
	}
}

func TestDeferLoopStressLarge(t *testing.T) {
	runLoopDeferStress(t, 10_000, 10_000, 10*time.Second)
}
func label1(prefix string, a int) string {
	return prefix + "-" + digit(a)
}

func label2(prefix string, a, b int) string {
	return prefix + "-" + digit(a) + "-" + digit(b)
}

func label3(prefix string, a, b, c int) string {
	return prefix + "-" + digit(a) + "-" + digit(b) + "-" + digit(c)
}

func digit(n int) string {
	return string(rune('0' + n))
}
