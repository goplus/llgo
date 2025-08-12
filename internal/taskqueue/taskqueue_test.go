package taskqueue

import (
	"sync"
	"sync/atomic"
	"testing"
	"time"
)

func TestNewTaskQueue(t *testing.T) {
	tq := NewTaskQueue(3)
	if tq == nil {
		t.Fatal("NewTaskQueue returned nil")
	}
	if tq.taskQueue == nil {
		t.Fatal("taskQueue channel is nil")
	}

	tq.Close()
}

func TestTaskQueueBasicExecution(t *testing.T) {
	tq := NewTaskQueue(2)
	defer tq.Close()

	var executed int32

	tq.Push(func() {
		atomic.AddInt32(&executed, 1)
	})

	tq.Wait()

	if atomic.LoadInt32(&executed) != 1 {
		t.Errorf("Expected 1 task executed, got %d", executed)
	}
}

func TestTaskQueueMultipleTasks(t *testing.T) {
	tq := NewTaskQueue(3)
	defer tq.Close()

	var executed int32
	taskCount := 10

	for i := 0; i < taskCount; i++ {
		tq.Push(func() {
			atomic.AddInt32(&executed, 1)
		})
	}

	tq.Wait()

	if atomic.LoadInt32(&executed) != int32(taskCount) {
		t.Errorf("Expected %d tasks executed, got %d", taskCount, executed)
	}
}

func TestTaskQueueConcurrentExecution(t *testing.T) {
	workerCount := 5
	tq := NewTaskQueue(workerCount)
	defer tq.Close()

	var started int32
	var finished int32
	taskCount := 20

	for i := 0; i < taskCount; i++ {
		tq.Push(func() {
			atomic.AddInt32(&started, 1)
			time.Sleep(10 * time.Millisecond)
			atomic.AddInt32(&finished, 1)
		})
	}

	tq.Wait()

	if atomic.LoadInt32(&started) != int32(taskCount) {
		t.Errorf("Expected %d tasks started, got %d", taskCount, started)
	}
	if atomic.LoadInt32(&finished) != int32(taskCount) {
		t.Errorf("Expected %d tasks finished, got %d", taskCount, finished)
	}
}

func TestTaskQueueWaitFunctionality(t *testing.T) {
	tq := NewTaskQueue(2)
	defer tq.Close()

	var taskCompleted bool
	var mu sync.Mutex

	tq.Push(func() {
		time.Sleep(50 * time.Millisecond)
		mu.Lock()
		taskCompleted = true
		mu.Unlock()
	})

	tq.Wait()

	mu.Lock()
	completed := taskCompleted
	mu.Unlock()

	if !completed {
		t.Error("Wait() returned before task completion")
	}
}

func TestTaskQueueClose(t *testing.T) {
	tq := NewTaskQueue(2)

	var executed int32

	for i := 0; i < 5; i++ {
		tq.Push(func() {
			atomic.AddInt32(&executed, 1)
		})
	}

	tq.Wait()

	err := tq.Close()
	if err != nil {
		t.Errorf("Close() returned error: %v", err)
	}

	if atomic.LoadInt32(&executed) != 5 {
		t.Errorf("Expected 5 tasks executed before close, got %d", executed)
	}
}
