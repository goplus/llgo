package taskqueue

import "sync"

type TaskQueue struct {
	sema      sync.WaitGroup
	taskQueue chan func()
}

func NewTaskQueue(n int) *TaskQueue {
	sq := &TaskQueue{taskQueue: make(chan func(), n)}

	for i := 0; i < n; i++ {
		go sq.run()
	}

	return sq
}

func (sq *TaskQueue) Push(task func()) {
	sq.sema.Add(1)
	sq.taskQueue <- task
}

func (sq *TaskQueue) Wait() {
	sq.sema.Wait()
}

func (sq *TaskQueue) run() {
	for task := range sq.taskQueue {
		if task == nil {
			return
		}
		task()
		sq.sema.Done()
	}
}

func (sq *TaskQueue) Close() error {
	close(sq.taskQueue)
	return nil
}
