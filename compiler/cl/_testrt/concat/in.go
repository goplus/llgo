package main

func concat(args ...string) (ret string) {
	for _, v := range args {
		ret += v
	}
	return
}

func info(s string) string {
	return "" + s + "..."
}

func main() {
	result := concat("Hello", " ", "World")
	println(result)
}
