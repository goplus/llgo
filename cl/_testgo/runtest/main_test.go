package main

import "testing"

func TestZoo(t *testing.T) {
	if Zoo() != 3 {
		t.Fatal("Zoo() != 3")
	}
}

func TestFalse(t *testing.T) {
	// t.Fatal("false")
}
