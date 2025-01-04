package main

const pi = 3.14159265

func check32(v any) {
	if v.(float32) != pi {
		panic("error f32")
	}
}

func check64(v any) {
	if v.(float64) != pi {
		panic("error f64")
	}
}

func f32() float32 {
	return pi
}

func f64() float64 {
	return pi
}

func main() {
	check32(f32())
	check64(f64())
}
