package main

import (
	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/rust/csv"
)

func main() {
	reader := csv.NewReader(c.Str("data.csv"))
	defer reader.Free()
	for {
		record := reader.ReadRecord()
		if record == nil {
			break
		}
		c.Printf(c.Str("Record: %p %s\n"), record, record)
		csv.FreeString(record)
	}
}
