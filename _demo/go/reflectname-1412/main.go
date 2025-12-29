package main

import (
	"fmt"
	"reflect"
)

func main() {
	value := 42
	rv := reflect.ValueOf(value)
	rt := reflect.TypeOf(value)

	fmt.Printf("Value: %v\n", rv.Interface())
	fmt.Printf("Kind: %v\n", rt.Kind())
	fmt.Printf("Name: %v\n", rt.Name())

	if rt.Kind() != reflect.Int {
		panic(fmt.Sprintf("Expected kind Int, got %v", rt.Kind()))
	}
	if rt.Name() != "int" {
		panic(fmt.Sprintf("Expected name int, got %v", rt.Name()))
	}

	fmt.Println("✓ Reflect test passed!")
}
