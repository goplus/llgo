package main

import (
	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/x/sqlite"
)

func main() {
	c.Remove(c.Str("test.db"))

	db, err := sqlite.Open(c.Str("test.db"))
	check(err, "sqlite: OpenV2")

	err = db.Exec(c.Str("CREATE TABLE foo (id INT, name TEXT)"), nil, nil, nil)
	check(err, "sqlite: Exec CREATE TABLE")

	stmt, err := db.PrepareV3("INSERT INTO foo (id, name) VALUES (?, ?)", 0, nil)
	check(err, "sqlite: PrepareV3 INSERT")

	stmt.BindInt(1, 100)
	stmt.BindText(2, c.Str("Hello World"), -1, nil)

	err = stmt.Step()
	checkDone(err, "sqlite: Step INSERT 1")

	stmt.Reset()
	stmt.BindInt(1, 200)
	stmt.BindText(2, c.Str("This is llgo"), -1, nil)

	err = stmt.Step()
	checkDone(err, "sqlite: Step INSERT 2")

	stmt.Close()

	stmt, err = db.PrepareV3("SELECT * FROM foo", 0, nil)
	check(err, "sqlite: PrepareV3 SELECT")

	for {
		if err = stmt.Step(); err != sqlite.HasRow {
			break
		}
		c.Printf(c.Str("==> id=%d, name=%s\n"), stmt.ColumnInt(0), stmt.ColumnText(1))
	}
	checkDone(err, "sqlite: Step done")

	stmt.Close()
	db.Close()
}

func check(err sqlite.Errno, at string) {
	if err != sqlite.OK {
		c.Printf(c.Str("==> %s Error: (%d) %s\n"), c.AllocaCStr(at), err, err.Errstr())
		c.Exit(1)
	}
}

func checkDone(err sqlite.Errno, at string) {
	if err != sqlite.Done {
		check(err, at)
	}
}
