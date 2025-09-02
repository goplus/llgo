package main

func myprint(s string) {
	for i := 0; i < len(s); i++ {
		WriteByte(s[i])
	}
}

func main() {
	myprint("hello world")
}
