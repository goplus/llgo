package csv

import (
	_ "unsafe"

	"github.com/goplus/llgo/c"
)

const (
	LLGoPackage = "link: $(pkg-config --libs csv_wrapper); -lcsv_wrapper"
)

type Reader struct {
	Unused [8]byte
}

// -----------------------------------------------------------------------------

// Create a new CSV reader for the specified file path.
//
//go:linkname NewReader C.csv_reader_new
func NewReader(file_path *c.Char) *Reader

// Free the memory allocated for the CSV reader.
//
//llgo:link (*Reader).Free C.csv_reader_free
func (reader *Reader) Free() {}

// Read the next record from the CSV reader and return it as a C string.
//
//llgo:link (*Reader).ReadRecord C.csv_reader_read_record
func (reader *Reader) ReadRecord() *c.Char { return nil }

// Free the memory allocated for a C string returned by other functions.
//
//go:linkname FreeString C.free_string
func FreeString(s *c.Char) {}
