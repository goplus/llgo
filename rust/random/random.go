package random

import (
	"github.com/goplus/llgo/c"
	_ "unsafe"
)

const (
	LLGoPackage = "link: $(pkg-config --libs random_tests); -lrandom_tests"
)


//llgo:link GetRandomNumber C.getRandomNumber
func GetRandomNumber() c.Int {
	return 0
}

//llgo:link GetCode C.getCode
func GetCode() *c.Char {
	return nil
}