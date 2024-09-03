package main

import (
	"fmt"
	"os"
	"time"

	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/x/async"
	"github.com/goplus/llgo/x/async/timeout"
	"github.com/goplus/llgo/x/tuple"
)

func ReadFile(fileName string) async.IO[tuple.Tuple2[[]byte, error]] {
	return async.Async(func(resolve func(tuple.Tuple2[[]byte, error])) {
		go func() {
			bytes, err := os.ReadFile(fileName)
			resolve(tuple.T2(bytes, err))
		}()
	})
}

func WriteFile(fileName string, content []byte) async.IO[error] {
	return async.Async(func(resolve func(error)) {
		go func() {
			err := os.WriteFile(fileName, content, 0644)
			resolve(err)
		}()
	})
}

func sleep(i int, d time.Duration) async.IO[int] {
	return async.Async(func(resolve func(int)) {
		go func() {
			c.Usleep(c.Uint(d.Microseconds()))
			resolve(i)
		}()
	})
}

func main() {
	RunIO()
	RunAllAndRace()
	RunTimeout()
	RunSocket()
}

func RunIO() {
	async.Run(func() {
		content, err := async.Await(ReadFile("1.txt")).Get()
		if err != nil {
			fmt.Printf("read err: %v\n", err)
			return
		}
		fmt.Printf("read content: %s\n", content)
		err = async.Await(WriteFile("2.txt", content))
		if err != nil {
			fmt.Printf("write err: %v\n", err)
			return
		}
		fmt.Printf("write done\n")
	})

	// Translated to in Go+:

	async.Run(func() {
		async.BindIO(ReadFile("1.txt"), func(v tuple.Tuple2[[]byte, error]) {
			content, err := v.Get()
			if err != nil {
				fmt.Printf("read err: %v\n", err)
				return
			}
			fmt.Printf("read content: %s\n", content)
			async.BindIO(WriteFile("2.txt", content), func(v error) {
				err = v
				if err != nil {
					fmt.Printf("write err: %v\n", err)
					return
				}
				fmt.Printf("write done\n")
			})
		})
	})
}

func RunAllAndRace() {
	async.Run(func() {
		all := async.All(sleep(1, time.Second), sleep(2, time.Second*2), sleep(3, time.Second*3))
		async.BindIO(all, func(v []int) {
			fmt.Printf("All: %v\n", v)
		})
	})

	async.Run(func() {
		first := async.Race(sleep(1, time.Second), sleep(2, time.Second*2), sleep(3, time.Second*3))
		v := async.Await(first)
		fmt.Printf("Race: %v\n", v)
	})

	// Translated to in Go+:

	async.Run(func() {
		all := async.All(sleep(1, time.Second), sleep(2, time.Second*2), sleep(3, time.Second*3))
		async.BindIO(all, func(v []int) {
			fmt.Printf("All: %v\n", v)
		})
	})

	async.Run(func() {
		first := async.Race(sleep(1, time.Second), sleep(2, time.Second*2), sleep(3, time.Second*3))
		async.BindIO(first, func(v int) {
			fmt.Printf("Race: %v\n", v)
		})
	})
}

func RunTimeout() {
	async.Run(func() {
		fmt.Printf("Start 1 second timeout\n")
		async.Await(timeout.Timeout(1 * time.Second))
		fmt.Printf("timeout\n")
	})

	// Translated to in Go+:

	async.Run(func() {
		fmt.Printf("Start 1 second timeout\n")
		async.BindIO(timeout.Timeout(1*time.Second), func(async.Void) {
			fmt.Printf("timeout\n")
		})
	})
}

func RunSocket() {
	// async.Run(func() {
	// 	tcp := io.NewTcp()
	// 	tcp.
	// })
}
