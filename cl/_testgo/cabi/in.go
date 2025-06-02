package main

type LargeStruct struct {
	A int
	B int
	C int
	D int
}

// func readLargeStruct() LargeStruct {
// 	return LargeStruct{A: 1, B: 2, C: 3, D: 4}
// }

// func writeLargeStruct(l LargeStruct) int {
// 	return l.A + l.B + l.C + l.D
// }

// func readMultiValues() (int, LargeStruct) {
// 	return 1, LargeStruct{A: 2, B: 3, C: 4, D: 5}
// }

// func writeMultiValues(i int, l LargeStruct) int {
// 	return i + l.A + l.B + l.C + l.D
// }

// func passLargeStruct(l LargeStruct) int {
// 	return writeLargeStruct(l)
// }

// func Select(ops ...int) (isel int, recvOK bool) {
// 	return len(ops), false
// }

// type Kind = int

// const (
// 	Bool Kind = iota
// 	Int
// 	Int8
// 	Float32
// )

// func memequal8(a, b byte) bool {
// 	return a == b
// }

// func basicEqual(kind Kind, size uintptr) func(a, b byte) bool {
// 	switch kind {
// 	case Bool, Int:
// 		switch size {
// 		case 1:
// 			return memequal8
// 		default:
// 			return memequal8
// 		}
// 	case Float32:
// 		return memequal8
// 	}
// 	return nil
// }

// func FieldsFuncSeq(s []byte, f func(byte) bool) func(yield func([]byte) bool) {
// 	return func(yield func([]byte) bool) {
// 		start := -1
// 		for i := 0; i < len(s); {
// 			r := s[i]
// 			if f(r) {
// 				if start >= 0 {
// 					if !yield(s[start:i:i]) {
// 						return
// 					}
// 					start = -1
// 				}
// 			} else if start < 0 {
// 				start = i
// 			}
// 			i += 1
// 		}
// 		if start >= 0 {
// 			yield(s[start:len(s):len(s)])
// 		}
// 	}
// }

func foo(l LargeStruct, fn func(a LargeStruct) LargeStruct) LargeStruct {
	return fn(l)
}

func main() {
	// var a byte = 1
	// var b byte = 2
	// bb := basicEqual(Int, 4)(a, b)
	// c.Printf(c.Str("bb: %d\n"), bb)

	// isel, recvOK := Select(1, 2, 3)
	// c.Printf(c.Str("isel: %d, recvOK: %d\n"), isel, recvOK)

	// l := readLargeStruct()
	// if writeLargeStruct(l) != 10 {
	// 	panic("writeLargeStruct failed")
	// }

	// if passLargeStruct(l) != 10 {
	// 	panic("passLargeStruct failed")
	// }

	// i, l := readMultiValues()
	// if writeMultiValues(i, l) != 15 {
	// 	panic("writeMultiValues failed")
	// }

	// for b := range FieldsFuncSeq([]byte("Hello World"), func(b byte) bool {
	// 	return b == ' ' || b == 'W'
	// }) {
	// 	fmt.Printf("%s\n", b)
	// }

	foo(LargeStruct{A: 1, B: 2, C: 3, D: 4}, func(l LargeStruct) LargeStruct {
		return l
	})
}
