package main

func main() {
	array := [4]byte{1, 2, 3, 4}
	ptr := (*[4]byte)(array[:])
	println(array == *ptr)
	println(*(*[2]byte)(array[:]) == [2]byte{1, 2})
}
