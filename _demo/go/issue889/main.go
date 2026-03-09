package main

import (
	"database/sql"
	"fmt"

	_ "github.com/mattn/go-sqlite3"
)

func main() {
	db, err := sql.Open("sqlite3", ":memory:")
	if err != nil {
		panic(err)
	}
	defer db.Close()

	var n int
	if err := db.QueryRow("select 42").Scan(&n); err != nil {
		panic(err)
	}
	if n != 42 {
		panic(fmt.Sprintf("sqlite scan = %d, want 42", n))
	}
	println("ok")
}
