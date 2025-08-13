package taskqueue

import "sync"

// TaskQueue represents a concurrent task queue that manages task execution
// with a semaphore-based synchronization mechanism. It allows multiple
// goroutines to process tasks concurrently while providing synchronization
// through a WaitGroup.
type TaskQueue struct {
	sema      sync.WaitGroup // Semaphore for tracking pending tasks
	taskQueue chan func()    // Channel for queuing tasks to be executed
}

// NewTaskQueue creates a new TaskQueue with n worker goroutines.
// Each worker goroutine will continuously process tasks from the queue.
// The parameter n specifies both the buffer size of the task channel
// and the number of worker goroutines to spawn.
func NewTaskQueue(n int) *TaskQueue {
	sq := &TaskQueue{taskQueue: make(chan func(), n)}

	// Start n worker goroutines to process tasks
	for i := 0; i < n; i++ {
		go sq.run()
	}

	return sq
}

// Push adds a new task to the queue for execution.
// The task will be executed by one of the available worker goroutines.
// This method increments the semaphore counter before queuing the task.
func (sq *TaskQueue) Push(task func()) {
	sq.sema.Add(1)
	sq.taskQueue <- task
}

// Wait blocks until all currently queued tasks have been completed.
// This method waits for the semaphore counter to reach zero,
// indicating that all pushed tasks have finished execution.
func (sq *TaskQueue) Wait() {
	sq.sema.Wait()
}

// run is the main worker loop executed by each worker goroutine.
// It continuously receives tasks from the task channel and executes them.
// When a task is completed, it decrements the semaphore counter.
// The loop terminates when it receives a nil task or when the channel is closed.
func (sq *TaskQueue) run() {
	for task := range sq.taskQueue {
		if task == nil {
			return
		}
		task()
		sq.sema.Done()
	}
}

// Close shuts down the TaskQueue by closing the task channel.
// This will cause all worker goroutines to terminate once they finish
// processing their current tasks. Returns nil as no error can occur.
func (sq *TaskQueue) Close() error {
	close(sq.taskQueue)
	return nil
}
