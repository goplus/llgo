package main

import "github.com/goplus/lib/c"

// Named type (like io/fs.FileMode)
type MyType uint32

type MyInterface interface {
	GetType() MyType
}

type MyImpl struct {
	myType MyType
}

func (m *MyImpl) GetType() MyType {
	return m.myType
}

func main() {
	var i MyInterface = &MyImpl{myType: 42}
	c.Printf(c.Str("%d"), i.GetType())
}
