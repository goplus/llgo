/*
 * Copyright (c) 2024 The GoPlus Authors (goplus.org). All rights reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package sqlite

import (
	_ "unsafe"

	"github.com/goplus/llgo/c"
)

type (
	Char    = c.Char
	Int     = c.Int
	Pointer = c.Pointer
)

const (
	LLGoPackage = "link: sqlite3"
)

// llgo:type C
type Sqlite3 struct {
	Unused [8]byte
}

// llgo:type C
type Stmt struct {
	Unused [8]byte
}

// -----------------------------------------------------------------------------

type Errno Int

const (
	OK Errno = 0 // Successful result

	Error         Errno = 1  // Generic error
	ErrInternal   Errno = 2  // Internal logic error in SQLite
	ErrPerm       Errno = 3  // Access permission denied
	ErrAbort      Errno = 4  // Callback routine requested an abort
	ErrBusy       Errno = 5  // The database file is locked
	ErrLocked     Errno = 6  // A table in the database is locked
	ErrNomem      Errno = 7  // A malloc() failed
	ErrReadOnly   Errno = 8  // Attempt to write a readonly database
	ErrInterrupt  Errno = 9  // Operation terminated by sqlite3_interrupt()
	ErrIo         Errno = 10 // Some kind of disk I/O error occurred
	ErrCorrupt    Errno = 11 // The database disk image is malformed
	ErrNotfound   Errno = 12 // Unknown opcode in sqlite3_file_control()
	ErrFull       Errno = 13 // Insertion failed because database is full
	ErrCantopen   Errno = 14 // Unable to open the database file
	ErrProtocol   Errno = 15 // Database lock protocol error
	_ErrEmpty     Errno = 16 // Internal use only
	ErrSchema     Errno = 17 // The database schema changed
	ErrToobig     Errno = 18 // String or BLOB exceeds size limit
	ErrConstraint Errno = 19 // Abort due to constraint violation
	ErrMismatch   Errno = 20 // Data type mismatch
	ErrMisuse     Errno = 21 // Library used incorrectly
	ErrNolfs      Errno = 22 // Uses OS features not supported on host
	ErrAuth       Errno = 23 // Authorization denied
	_ErrFormat    Errno = 24 // Not used
	ErrRange      Errno = 25 // 2nd parameter to sqlite3_bind out of range
	ErrNotadb     Errno = 26 // File opened that is not a database file
	ErrNotice     Errno = 27 // Notifications from sqlite3_log()
	ErrWarning    Errno = 28 // Warnings from sqlite3_log()

	HasRow Errno = 100 // sqlite3_step() has another row ready
	Done   Errno = 101 // sqlite3_step() has finished executing
)

// llgo:link (Errno).Errstr C.sqlite3_errstr
func (err Errno) Errstr() *Char { return nil }

// llgo:link (*Sqlite3).Errmsg C.sqlite3_errmsg
func (db *Sqlite3) Errmsg() *Char { return nil }

// llgo:link (*Sqlite3).Errcode C.sqlite3_errcode
func (db *Sqlite3) Errcode() Errno { return 0 }

// llgo:link (*Sqlite3).ExtendedErrcode C.sqlite3_extended_errcode
func (db *Sqlite3) ExtendedErrcode() Errno { return 0 }

// -----------------------------------------------------------------------------

//go:linkname doOpen C.sqlite3_open
func doOpen(filename *Char, ppDb **Sqlite3) Errno

//go:linkname doOpenV2 C.sqlite3_open_v2
func doOpenV2(filename *Char, ppDb **Sqlite3, flags OpenFlags, zVfs *Char) Errno

// OpenFlags represents SQLite open flags.
type OpenFlags Int

const (
	OpenReadOnly      OpenFlags = 0x00000001
	OpenReadWrite     OpenFlags = 0x00000002
	OpenCreate        OpenFlags = 0x00000004
	OpenDeleteOnClose OpenFlags = 0x00000008 // VFS only
	OpenExclusive     OpenFlags = 0x00000010 // VFS only
	OpenAutoProxy     OpenFlags = 0x00000020 // VFS only
	OpenUri           OpenFlags = 0x00000040
	OpenMemory        OpenFlags = 0x00000080
	OpenMainDb        OpenFlags = 0x00000100 // VFS only
	OpenTempDb        OpenFlags = 0x00000200 // VFS only
	OpenTransientDb   OpenFlags = 0x00000400 // VFS only
	OpenMainJournal   OpenFlags = 0x00000800 // VFS only
	OpenTempJournal   OpenFlags = 0x00001000 // VFS only
	OpenSubJournal    OpenFlags = 0x00002000 // VFS only
	OpenSuperJournal  OpenFlags = 0x00004000 // VFS only
	OpenNoMutex       OpenFlags = 0x00008000
	OpenFullMutex     OpenFlags = 0x00010000
	OpenSharedCache   OpenFlags = 0x00020000
	OpenPrivateCache  OpenFlags = 0x00040000
	OpenWal           OpenFlags = 0x00080000 // VFS only
	OpenNoFollow      OpenFlags = 0x01000000
	OpenExResCode     OpenFlags = 0x02000000 // Extended result codes
)

// Opening A New Database Connection
// filename: Database filename (UTF-8)
func Open(filename *Char) (db *Sqlite3, err Errno) {
	err = doOpen(filename, &db)
	return
}

// Opening A New Database Connection
// filename: Database filename (UTF-8)
// zVfs: Name of VFS module to use
func OpenV2(filename *Char, flags OpenFlags, zVfs *Char) (db *Sqlite3, err Errno) {
	err = doOpenV2(filename, &db, flags, zVfs)
	return
}

// Closing A Database Connection
//
// llgo:link (*Sqlite3).Close C.sqlite3_close
func (db *Sqlite3) Close() Errno { return 0 }

// Closing A Database Connection
//
// llgo:link (*Sqlite3).CloseV2 C.sqlite3_close_v2
func (db *Sqlite3) CloseV2() Errno { return 0 }

// -----------------------------------------------------------------------------

// llgo:link (*Sqlite3).doPrepare C.sqlite3_prepare
func (*Sqlite3) doPrepare(*Char, Int, **Stmt, **Char) Errno {
	return 0
}

// llgo:link (*Sqlite3).doPrepareV2 C.sqlite3_prepare_v2
func (*Sqlite3) doPrepareV2(*Char, Int, **Stmt, **Char) Errno {
	return 0
}

// llgo:link (*Sqlite3).doPrepareV3 C.sqlite3_prepare_v3
func (*Sqlite3) doPrepareV3(*Char, Int, PrepareFlags, **Stmt, **Char) Errno {
	return 0
}

// PrepareFlags represents SQLite prepare flags.
type PrepareFlags Int

const (
	PreparePersistent PrepareFlags = 0x01
	PrepareNormalize  PrepareFlags = 0x02
	PrepareNoVtab     PrepareFlags = 0x04
)

// Compiling An SQL Statement
// tail: Pointer to unused portion of sql
func (db *Sqlite3) Prepare(sql string, tail **Char) (stmt *Stmt, err Errno) {
	err = db.doPrepare(c.GoStringData(sql), c.Int(len(sql)), &stmt, tail)
	return
}

func (db *Sqlite3) PrepareV2(sql string, tail **Char) (stmt *Stmt, err Errno) {
	err = db.doPrepareV2(c.GoStringData(sql), c.Int(len(sql)), &stmt, tail)
	return
}

func (db *Sqlite3) PrepareV3(sql string, flags PrepareFlags, tail **Char) (stmt *Stmt, err Errno) {
	err = db.doPrepareV3(c.GoStringData(sql), c.Int(len(sql)), flags, &stmt, tail)
	return
}

// Destroy A Prepared Statement Object
//
// llgo:link (*Stmt).Close C.sqlite3_finalize
func (stmt *Stmt) Close() Errno { return 0 }

// -----------------------------------------------------------------------------

// llgo:link (*Stmt).BindInt C.sqlite3_bind_int
func (*Stmt) BindInt(idx Int, val Int) Errno { return 0 }

// llgo:link (*Stmt).BindInt64 C.sqlite3_bind_int64
func (*Stmt) BindInt64(idx Int, val int64) Errno { return 0 }

/*
const (
	Static    = (func(Pointer))(nil) // val is a static string
	Transient = (func(Pointer))(-1)  // val is a transient (temporary) string
)
*/

// llgo:link (*Stmt).BindText C.sqlite3_bind_text
func (*Stmt) BindText(idx Int, val *Char, nByte Int, destructor func(Pointer)) Errno { return 0 }

// -----------------------------------------------------------------------------

// Reset A Prepared Statement Object
//
// llgo:link (*Stmt).Reset C.sqlite3_reset
func (stmt *Stmt) Reset() Errno {
	return 0
}

// Evaluate An SQL Statement
//
// llgo:link (*Stmt).Step C.sqlite3_step
func (*Stmt) Step() Errno { return 0 }

// -----------------------------------------------------------------------------

// llgo:link (*Stmt).ColumnCount C.sqlite3_column_count
func (stmt *Stmt) ColumnCount() Int { return 0 }

// llgo:link (*Stmt).ColumnName C.sqlite3_column_name
func (stmt *Stmt) ColumnName(idx Int) *Char { return nil }

// llgo:link (*Stmt).ColumnInt C.sqlite3_column_int
func (stmt *Stmt) ColumnInt(idx Int) Int { return 0 }

// llgo:link (*Stmt).ColumnInt64 C.sqlite3_column_int64
func (stmt *Stmt) ColumnInt64(idx Int) int64 { return 0 }

// llgo:link (*Stmt).ColumnText C.sqlite3_column_text
func (stmt *Stmt) ColumnText(idx Int) *Char { return nil }

// -----------------------------------------------------------------------------

// One-Step Query Execution Interface
//
// llgo:link (*Sqlite3).Exec C.sqlite3_exec
func (*Sqlite3) Exec(
	sql *Char, callback func(arg Pointer, resultCols Int, colVals, colNames **Char) Int,
	arg Pointer, errmsg **Char) Errno {
	return 0
}

// -----------------------------------------------------------------------------
