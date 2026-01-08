package main

var globalWorker func() int

func setup(n int) {
    globalWorker = func() int {
        return n * 2
    }
}

func main() {
    setup(5)
    println(globalWorker())
}
