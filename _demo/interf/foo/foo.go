package foo

func Bar() any {
	return struct{ V int }{1}
}

func F() any {
	return struct{ v int }{1}
}
