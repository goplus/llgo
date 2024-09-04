package main

import (
	"fmt"
	"os"
	"time"

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
		async.BindIO(timeout.Timeout(d), func(async.Void) {
			resolve(i)
		})
	})
}

func main() {
	RunIO()
	RunAllAndRace()
	RunTimeout()
	RunSocket()
}

func RunIO() {
	println("RunIO with Await")

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
	println("RunIO with BindIO")

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
	ms100 := 100 * time.Millisecond
	ms200 := 200 * time.Millisecond
	ms300 := 300 * time.Millisecond

	println("Run All with Await")

	async.Run(func() {
		all := async.All(sleep(1, ms200), sleep(2, ms100), sleep(3, ms300))
		async.BindIO(all, func(v []int) {
			fmt.Printf("All: %v\n", v)
		})
	})

	println("Run Race with Await")

	async.Run(func() {
		first := async.Race(sleep(1, ms200), sleep(2, ms100), sleep(3, ms300))
		v := async.Await(first)
		fmt.Printf("Race: %v\n", v)
	})

	// Translated to in Go+:

	println("Run All with BindIO")

	async.Run(func() {
		all := async.All(sleep(1, ms200), sleep(2, ms100), sleep(3, ms300))
		async.BindIO(all, func(v []int) {
			fmt.Printf("All: %v\n", v)
		})
	})

	println("Run Race with BindIO")

	async.Run(func() {
		first := async.Race(sleep(1, ms200), sleep(2, ms100), sleep(3, ms300))
		async.BindIO(first, func(v int) {
			fmt.Printf("Race: %v\n", v)
		})
	})
}

func RunTimeout() {
	println("Run Timeout with Await")

	async.Run(func() {
		fmt.Printf("Start 100 ms timeout\n")
		async.Await(timeout.Timeout(100 * time.Millisecond))
		fmt.Printf("timeout\n")
	})

	// Translated to in Go+:

	println("Run Timeout with BindIO")

	async.Run(func() {
		fmt.Printf("Start 100 ms timeout\n")
		async.BindIO(timeout.Timeout(100*time.Millisecond), func(async.Void) {
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
