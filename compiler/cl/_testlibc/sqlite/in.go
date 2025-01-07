package main

import (
	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/sqlite"
)

func main() {
	db, err := sqlite.OpenV2(c.Str(":memory:"), sqlite.OpenReadWrite|sqlite.OpenMemory, nil)
	check(err)

	db.Close()
}

func check(err sqlite.Errno) {
	if err != sqlite.OK {
		c.Printf(c.Str("==> Error: (%d) %s\n"), err, err.Errstr())
		c.Exit(1)
	}
}
