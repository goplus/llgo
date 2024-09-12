package main

import (
	"fmt"
	"os"
	"sync/atomic"
	"time"

	"github.com/goplus/llgo/x/async"
	"github.com/goplus/llgo/x/async/timeout"
	"github.com/goplus/llgo/x/socketio"
	"github.com/goplus/llgo/x/tuple"
)

func ReadFile(fileName string) async.Future[tuple.Tuple2[[]byte, error]] {
	return async.Async(func(resolve func(tuple.Tuple2[[]byte, error])) {
		go func() {
			println("read file", fileName)
			bytes, err := os.ReadFile(fileName)
			resolve(tuple.T2(bytes, err))
		}()
	})
}

func WriteFile(fileName string, content []byte) async.Future[error] {
	return async.Async(func(resolve func(error)) {
		go func() {
			err := os.WriteFile(fileName, content, 0644)
			resolve(err)
		}()
	})
}

func sleep(i int, d time.Duration) async.Future[int] {
	return async.Async(func(resolve func(int)) {
		timeout.Timeout(d).Then(func(async.Void) {
			resolve(i)
		})
	})
}

func main() {
	async.Run(func(resolve func(async.Void)) {
		RunIO()
		RunAllAndRace()
		RunTimeout()
		RunMultipleCallbacksNodelay()
		RunMultipleCallbacksDelay()
		RunSocket()
	})
}

func RunIO() {
	println("RunIO with Await")

	// Hide `resolve` in Go+

	println("read file")
	content, err := async.Await(ReadFile("all.go")).Get()
	if err != nil {
		fmt.Printf("read err: %v\n", err)
		return
	}
	fmt.Printf("read content: %s\n", content)
	err = async.Await(WriteFile("2.out", content))
	if err != nil {
		fmt.Printf("write err: %v\n", err)
		return
	}
	fmt.Printf("write done\n")

	// Translated Await to BindIO in Go+:
	println("RunIO with BindIO")

	ReadFile("all.go").Then(func(v tuple.Tuple2[[]byte, error]) {
		content, err := v.Get()
		if err != nil {
			fmt.Printf("read err: %v\n", err)
			return
		}
		fmt.Printf("read content: %s\n", content)
		WriteFile("2.out", content).Then(func(v error) {
			err = v
			if err != nil {
				fmt.Printf("write err: %v\n", err)
				return
			}
			println("write done")
		})
	})
}

func RunAllAndRace() {
	ms100 := 100 * time.Millisecond
	ms200 := 200 * time.Millisecond
	ms300 := 300 * time.Millisecond

	println("Run All with Await")

	async.All(sleep(1, ms200), sleep(2, ms100), sleep(3, ms300)).Then(func(v []int) {
		fmt.Printf("All: %v\n", v)
	})

	println("Run Race with Await")

	first := async.Race(sleep(1, ms200), sleep(2, ms100), sleep(3, ms300))
	v := async.Await(first)
	fmt.Printf("Race: %v\n", v)

	// Translated to in Go+:

	println("Run All with BindIO")

	async.All(sleep(1, ms200), sleep(2, ms100), sleep(3, ms300)).Then(func(v []int) {
		fmt.Printf("All: %v\n", v)
	})

	println("Run Race with BindIO")

	async.Race(sleep(1, ms200), sleep(2, ms100), sleep(3, ms300)).Then(func(v int) {
		fmt.Printf("Race: %v\n", v)
	})

}

func RunTimeout() {
	println("Run Timeout with Await")

	fmt.Printf("Start 100 ms timeout\n")
	async.Await(timeout.Timeout(100 * time.Millisecond))
	fmt.Printf("timeout\n")

	// Translated to in Go+:

	println("Run Timeout with BindIO")

	fmt.Printf("Start 100 ms timeout\n")
	timeout.Timeout(100 * time.Millisecond).Then(func(async.Void) {
		fmt.Printf("timeout\n")
	})
}

func RunMultipleCallbacksNodelay() {
	println("Run Multiple Callbacks")

	runCnt := atomic.Int32{}

	nodelay := async.Async(func(resolve func(async.Void)) {
		println("nodelay")
		runCnt.Add(1)
	})

	cbCnt := atomic.Int32{}
	cb := func() {
		if cbCnt.Add(1) == 2 {
			if runCnt.Load() != 1 {
				panic("runCnt != 1, got: " + fmt.Sprint(runCnt.Load()))
			} else {
				println("runCnt == 1")
			}
		}
	}
	nodelay.Then(func(async.Void) {
		println("nodelay done")
		cb()
	})

	nodelay.Then(func(async.Void) {
		println("nodelay done again")
		cb()
	})
}

func RunMultipleCallbacksDelay() {
	println("Run Multiple Callbacks")

	runCnt := atomic.Int32{}

	delay := async.Async(func(resolve func(async.Void)) {
		timeout.Timeout(100 * time.Millisecond).Then(func(async.Void) {
			println("delay")
			runCnt.Add(1)
		})
	})

	cbCnt := atomic.Int32{}
	cb := func() {
		if cbCnt.Add(1) == 2 {
			if runCnt.Load() != 1 {
				panic("runCnt != 1, got: " + fmt.Sprint(runCnt.Load()))
			} else {
				println("runCnt == 1")
			}
		}
	}

	delay.Then(func(async.Void) {
		println("delay done")
		cb()
	})

	delay.Then(func(async.Void) {
		println("delay done again")
		cb()
	})
}

func RunSocket() {
	println("Run Socket")

	println("RunServer")

	RunServer().Then(func(async.Void) {
		println("RunServer done")
	})

	println("RunClient")

	timeout.Timeout(100 * time.Millisecond).Then(func(async.Void) {
		RunClient("Bob").Then(func(async.Void) {
			println("RunClient done")
		})
		RunClient("Uncle").Then(func(async.Void) {
			println("RunClient done")
		})
	})
}

func RunClient(name string) async.Future[async.Void] {
	return async.Async(func(resolve func(async.Void)) {
		addr := "127.0.0.1:3927"
		socketio.Connect("tcp", addr).Then(func(v tuple.Tuple2[*socketio.Conn, error]) {
			client, err := v.Get()
			println("Connected", client, err)
			if err != nil {
				panic(err)
			}
			counter := 0
			var loop func(client *socketio.Conn)
			loop = func(client *socketio.Conn) {
				counter++
				data := fmt.Sprintf("Hello from %s %d", name, counter)
				client.Write([]byte(data)).Then(func(err error) {
					if err != nil {
						panic(err)
					}
					client.Read().Then(func(v tuple.Tuple2[[]byte, error]) {
						data, err := v.Get()
						if err != nil {
							panic(err)
						}
						println("Read from server:", string(data))
						timeout.Timeout(1 * time.Second).Then(func(async.Void) {
							loop(client)
						})
					})
				})
			}
			loop(client)
		})
	})
}

func RunServer() async.Future[async.Void] {
	return async.Async(func(resolve func(async.Void)) {
		socketio.Listen("tcp", "0.0.0.0:3927", func(client *socketio.Conn, err error) {
			println("Client connected", client, err)
			var loop func(client *socketio.Conn)
			loop = func(client *socketio.Conn) {
				client.Read().Then(func(v tuple.Tuple2[[]byte, error]) {
					data, err := v.Get()
					if err != nil {
						println("Read error", err)
					} else {
						println("Read from client:", string(data))
						client.Write(data).Then(func(err error) {
							if err != nil {
								println("Write error", err)
							} else {
								loop(client)
							}
						})
					}
				})
			}
			loop(client)
		})
	})
}
