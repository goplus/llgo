package main

import (
	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/x/sqlite"
)

func main() {
	db, err := sqlite.OpenV2(c.Str(":memory:"), sqlite.OpenReadWrite|sqlite.OpenMemory, nil)
	check(err)

	err = db.Exec(c.Str("CREATE TABLE foo (id INT, name TEXT)"), nil, nil, nil)
	check(err)

	stmt, err := db.PrepareV3("INSERT INTO foo VALUES (?, ?)", 0, nil)
	check(err)

	stmt.BindInt(1, 100)
	stmt.BindText(2, c.Str("Hello World"), sqlite.Static, nil)

	err = stmt.Step()
	checkDone(err)

	stmt.Reset()
	stmt.BindInt(1, 200)
	stmt.BindText(2, c.Str("This is llgo"), sqlite.Static, nil)

	err = stmt.Step()
	checkDone(err)

	stmt.Close()

	stmt, err = db.PrepareV3("SELECT * FROM foo", 0, nil)
	check(err)

	for {
		if err = stmt.Step(); err != sqlite.HasRow {
			break
		}
		c.Printf(c.Str("==> id=%d, name=%s\n"), stmt.ColumnInt(0), stmt.ColumnText(1))
	}
	checkDone(err)

	stmt.Close()
	db.Close()
}

func check(err sqlite.Errno) {
	if err != sqlite.OK {
		c.Printf(c.Str("==> Error: (%d) %s\n"), err, err.Errstr())
		c.Exit(1)
	}
}

func checkDone(err sqlite.Errno) {
	if err != sqlite.Done {
		check(err)
	}
}
