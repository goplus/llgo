package main

import (
	"fmt"
	"os"
	"sync"
)

// Regression stress for darwin/amd64 create-temp failure path.
// If open failure does not return EEXIST correctly, os.CreateTemp may return
// a file with an invalid fd and later operations can fail with EBADF.
const (
	goroutines = 4
	iterations = 5000
)

func worker(dir string, errs chan<- error) {
	for i := 0; i < iterations; i++ {
		f, err := os.CreateTemp(dir, "tmpfile-*.tmp")
		if err != nil {
			errs <- fmt.Errorf("CreateTemp: %w", err)
			return
		}

		name := f.Name()
		if _, err := f.WriteString("x"); err != nil {
			_ = f.Close()
			errs <- fmt.Errorf("WriteString %s: %w", name, err)
			return
		}
		if _, err := f.Stat(); err != nil {
			_ = f.Close()
			errs <- fmt.Errorf("Stat %s: %w", name, err)
			return
		}
		if err := f.Close(); err != nil {
			errs <- fmt.Errorf("Close %s: %w", name, err)
			return
		}
		if err := os.Remove(name); err != nil {
			errs <- fmt.Errorf("Remove %s: %w", name, err)
			return
		}
	}
}

func main() {
	dir, err := os.MkdirTemp("", "llgo-1654-*")
	if err != nil {
		panic(fmt.Sprintf("mktemp dir failed: %v", err))
	}
	defer os.RemoveAll(dir)

	errs := make(chan error, goroutines)
	var wg sync.WaitGroup
	for i := 0; i < goroutines; i++ {
		wg.Add(1)
		go func() {
			defer wg.Done()
			worker(dir, errs)
		}()
	}
	wg.Wait()
	close(errs)

	for err := range errs {
		if err != nil {
			panic(err)
		}
	}
	fmt.Println("ok")
}
