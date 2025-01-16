package main

import (
	"os"
	"testing"
	"time"
)

func TestZoo(t *testing.T) {
	time.Sleep(10 * time.Millisecond)
	if Zoo() != 3 {
		t.Fatal("Zoo() != 3")
	}
}

func TestExit(t *testing.T) {
	os.Exit(1)
}

func TestNext(t *testing.T) {
	time.Sleep(10 * time.Millisecond)
}
