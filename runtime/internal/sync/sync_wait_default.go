//go:build !windows && (!llgo || !wasip1 || !wasm || !llgo.wasi_threads || !llgo.wasm.gc.linear)

package sync

func mutexLock(m *Mutex) { pthreadMutexLock(m) }
