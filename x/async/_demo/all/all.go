package main

import (
	"fmt"
	"os"
	"time"

	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/net"
	"github.com/goplus/llgo/x/async"
	"github.com/goplus/llgo/x/async/timeout"
	"github.com/goplus/llgo/x/io"
	"github.com/goplus/llgo/x/tuple"
)

func ReadFile(fileName string) async.Future[tuple.Tuple2[[]byte, error]] {
	return async.Async(func(resolve func(tuple.Tuple2[[]byte, error])) {
		go func() {
			println(async.Gettid(), "read file", fileName)
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
		timeout.Timeout(d)(func(async.Void) {
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

	async.Run(async.Async(func(resolve func(async.Void)) {
		println("read file")
		defer resolve(async.Void{})
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
	}))

	// Translated Await to BindIO in Go+:
	println("RunIO with BindIO")

	async.Run(async.Async(func(resolve func(async.Void)) {
		ReadFile("1.txt")(func(v tuple.Tuple2[[]byte, error]) {
			content, err := v.Get()
			if err != nil {
				fmt.Printf("read err: %v\n", err)
				resolve(async.Void{})
				return
			}
			fmt.Printf("read content: %s\n", content)
			WriteFile("2.txt", content)(func(v error) {
				err = v
				if err != nil {
					fmt.Printf("write err: %v\n", err)
					resolve(async.Void{})
					return
				}
				println("write done")
				resolve(async.Void{})
			})
		})
	}))
}

func RunAllAndRace() {
	ms100 := 100 * time.Millisecond
	ms200 := 200 * time.Millisecond
	ms300 := 300 * time.Millisecond

	println("Run All with Await")

	async.Run(async.Async(func(resolve func(async.Void)) {
		async.All(sleep(1, ms200), sleep(2, ms100), sleep(3, ms300))(func(v []int) {
			fmt.Printf("All: %v\n", v)
			resolve(async.Void{})
		})
	}))

	println("Run Race with Await")

	async.Run(async.Async(func(resolve func(async.Void)) {
		first := async.Race(sleep(1, ms200), sleep(2, ms100), sleep(3, ms300))
		v := async.Await(first)
		fmt.Printf("Race: %v\n", v)
		resolve(async.Void{})
	}))

	// Translated to in Go+:

	println("Run All with BindIO")

	async.Run(async.Async(func(resolve func(async.Void)) {
		async.All(sleep(1, ms200), sleep(2, ms100), sleep(3, ms300))(func(v []int) {
			fmt.Printf("All: %v\n", v)
			resolve(async.Void{})
		})
	}))

	println("Run Race with BindIO")

	async.Run(async.Async(func(resolve func(async.Void)) {
		async.Race(sleep(1, ms200), sleep(2, ms100), sleep(3, ms300))(func(v int) {
			fmt.Printf("Race: %v\n", v)
			resolve(async.Void{})
		})
	}))
}

func RunTimeout() {
	println("Run Timeout with Await")

	async.Run(async.Async(func(resolve func(async.Void)) {
		fmt.Printf("Start 100 ms timeout\n")
		async.Await(timeout.Timeout(100 * time.Millisecond))
		fmt.Printf("timeout\n")
		resolve(async.Void{})
	}))

	// Translated to in Go+:

	println("Run Timeout with BindIO")

	async.Run(async.Async(func(resolve func(async.Void)) {
		fmt.Printf("Start 100 ms timeout\n")
		timeout.Timeout(100 * time.Millisecond)(func(async.Void) {
			fmt.Printf("timeout\n")
			resolve(async.Void{})
		})
	}))
}

func RunSocket() {
	println("Run Socket")

	async.Run(async.Async(func(resolve func(async.Void)) {
		println("RunServer")

		RunServer()(func(async.Void) {
			println("RunServer done")
			resolve(async.Void{})
		})

		println("RunClient")

		RunClient()(func(async.Void) {
			println("RunClient done")
			resolve(async.Void{})
		})
	}))
}

func RunClient() async.Future[async.Void] {
	return async.Async(func(resolve func(async.Void)) {
		bindAddr := "127.0.0.1:3927"
		io.ParseAddr(bindAddr)(func(v tuple.Tuple2[*net.SockAddr, error]) {
			addr, err := v.Get()
			println("Connect to", addr, err)
			if err != nil {
				panic(err)
			}
			io.Connect(addr)(func(v tuple.Tuple2[*io.Tcp, error]) {
				client, err := v.Get()
				println("Connected", client, err)
				if err != nil {
					panic(err)
				}
				var loop func(client *io.Tcp)
				loop = func(client *io.Tcp) {
					client.Write([]byte("Hello"))(func(err error) {
						if err != nil {
							panic(err)
						}
						client.Read()(func(v tuple.Tuple2[[]byte, error]) {
							data, err := v.Get()
							if err != nil {
								panic(err)
							}
							println("Read:", string(data))
							timeout.Timeout(1 * time.Second)(func(async.Void) {
								loop(client)
							})
						})
					})
				}
				loop(client)
			})
		})
	})
}

func RunServer() async.Future[async.Void] {
	return async.Async(func(resolve func(async.Void)) {
		server, err := io.NewTcp()
		if err != nil {
			panic(err)
		}

		bindAddr := "0.0.0.0:3927"
		io.ParseAddr(bindAddr)(func(v tuple.Tuple2[*net.SockAddr, error]) {
			addr, err := v.Get()
			if err != nil {
				panic(err)
			}

			if err = server.Bind(addr, 0); err != nil {
				panic(err)
			}
			c.Printf(c.Str("Listening on %s\n"), c.AllocaCStr(bindAddr))

			err = server.Listen(128, func(server *io.Tcp, err error) {
				if err != nil {
					panic(err)
				}
				client, err := server.Accept()
				println("Accept", client, err)

				var loop func(client *io.Tcp)
				loop = func(client *io.Tcp) {
					client.Read()(func(v tuple.Tuple2[[]byte, error]) {
						data, err := v.Get()
						if err != nil {
							println("Read error", err)
						} else {
							println("Read:", string(data))
							client.Write(data)(func(err error) {
								if err != nil {
									println("Write error", err)
								} else {
									println("Write done")
									loop(client)
								}
							})
						}
					})
				}
				loop(client)
			})
			if err != nil {
				panic(err)
			}
		})
	})
}

func RunServer1() async.Future[async.Void] {
	return async.Async(func(resolve func(async.Void)) {
		io.Listen("tcp", "0.0.0.0:3927")(func(v tuple.Tuple2[*io.Tcp, error]) {
			server, err := v.Get()
			if err != nil {
				panic(err)
			}
			client, err := server.Accept()
			println("Accept", client, err)

			var loop func(client *io.Tcp)
			loop = func(client *io.Tcp) {
				client.Read()(func(v tuple.Tuple2[[]byte, error]) {
					data, err := v.Get()
					if err != nil {
						println("Read error", err)
					} else {
						println("Read:", string(data))
						client.Write(data)(func(err error) {
							if err != nil {
								println("Write error", err)
							} else {
								println("Write done")
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
