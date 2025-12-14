package main

type R struct {
	data any
}

func (r *R) read() any {
	data := r.data
	r.data = nil
	return data
}

func main() {
	r := R{data: 1}
	data := r.read()
	if data != 1 {
		panic("abi data error")
	}
	if r.data != nil {
		panic("abi r.data error")
	}
}
