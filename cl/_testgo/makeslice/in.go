package main

func main() {
}

func init() {
	var n int = 2
	buf := make([]int, n, n*2)
	if len(buf) != 2 || cap(buf) != 4 {
		panic("error")
	}
}

func init() {
	var n int32 = 2
	buf := make([]int, n, n*2)
	if len(buf) != 2 || cap(buf) != 4 {
		panic("error")
	}
}

func init() {
	defer func() {
		r := recover()
		if r == nil {
			println("must error")
		}
	}()
	var n int = -1
	buf := make([]int, n)
	_ = buf
}

func init() {
	defer func() {
		r := recover()
		if r == nil {
			println("must error")
		}
	}()
	var n int = 2
	buf := make([]int, n, n-1)
	_ = buf
}

func init() {
	defer func() {
		r := recover()
		if r == nil {
			println("must error")
		}
	}()
	var n int64 = 1<<63 - 1
	buf := make([]int, n)
	_ = buf
}
