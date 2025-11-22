package heap_test

import (
	"container/heap"
	"testing"
)

type intHeap []int

func (h intHeap) Len() int           { return len(h) }
func (h intHeap) Less(i, j int) bool { return h[i] < h[j] }
func (h intHeap) Swap(i, j int)      { h[i], h[j] = h[j], h[i] }

func (h *intHeap) Push(x any) {
	*h = append(*h, x.(int))
}

func (h *intHeap) Pop() any {
	old := *h
	n := len(old)
	item := old[n-1]
	*h = old[:n-1]
	return item
}

func TestHeapOperations(t *testing.T) {
	data := &intHeap{3, 1, 4, 2}
	var _ heap.Interface = data

	heap.Init(data)
	if (*data)[0] != 1 {
		t.Fatalf("Init should place minimum at root, got %v", (*data)[0])
	}

	heap.Push(data, 0)
	if (*data)[0] != 0 {
		t.Fatalf("Push should maintain min-heap property, root=%v", (*data)[0])
	}

	min := heap.Pop(data)
	if min.(int) != 0 {
		t.Fatalf("Pop returned %v, want 0", min)
	}

	heap.Push(data, 5)
	removed := heap.Remove(data, data.Len()-1)
	if removed.(int) != 5 {
		t.Fatalf("Remove returned %v, want 5", removed)
	}

	idx := 1
	(*data)[idx] = -3
	heap.Fix(data, idx)
	if (*data)[0] != -3 {
		t.Fatalf("Fix should promote updated element, root=%v", (*data)[0])
	}

	prev := heap.Pop(data).(int)
	for data.Len() > 0 {
		next := heap.Pop(data).(int)
		if next < prev {
			t.Fatalf("Heap order invalid: %d before %d", prev, next)
		}
		prev = next
	}
}
