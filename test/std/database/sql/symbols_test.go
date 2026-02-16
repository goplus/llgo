package sql_test

import (
	"database/sql"
	"testing"
)

func TestPublicAPISymbols(t *testing.T) {
	_ = t
	var _ sql.ColumnType
	{
		var v sql.ColumnType
		_ = v.DatabaseTypeName
	}
	{
		var v sql.ColumnType
		_ = v.DecimalSize
	}
	{
		var v sql.ColumnType
		_ = v.Length
	}
	{
		var v sql.ColumnType
		_ = v.Name
	}
	{
		var v sql.ColumnType
		_ = v.Nullable
	}
	{
		var v sql.ColumnType
		_ = v.ScanType
	}
	{
		var v sql.Conn
		_ = v.BeginTx
	}
	{
		var v sql.Conn
		_ = v.ExecContext
	}
	{
		var v sql.Conn
		_ = v.PingContext
	}
	{
		var v sql.Conn
		_ = v.QueryContext
	}
	{
		var v sql.Conn
		_ = v.QueryRowContext
	}
	{
		var v sql.DB
		_ = v.Begin
	}
	{
		var v sql.DB
		_ = v.Driver
	}
	{
		var v sql.DB
		_ = v.Exec
	}
	{
		var v sql.DB
		_ = v.PingContext
	}
	{
		var v sql.DB
		_ = v.Prepare
	}
	{
		var v sql.DB
		_ = v.PrepareContext
	}
	{
		var v sql.DB
		_ = v.Query
	}
	{
		var v sql.DB
		_ = v.QueryContext
	}
	{
		var v sql.DB
		_ = v.QueryRow
	}
	{
		var v sql.DB
		_ = v.SetConnMaxIdleTime
	}
	{
		var v sql.DB
		_ = v.SetConnMaxLifetime
	}
	{
		var v sql.DB
		_ = v.SetMaxIdleConns
	}
	{
		var v sql.DB
		_ = v.SetMaxOpenConns
	}
	{
		var v sql.DB
		_ = v.Stats
	}
	var _ sql.DBStats
	_ = sql.Drivers
	_ = sql.ErrConnDone
	_ = sql.ErrTxDone
	var _ sql.IsolationLevel
	{
		var v sql.IsolationLevel
		_ = v.String
	}
	var _ sql.NamedArg
	var _ sql.Null[string]
	{
		var v sql.Null[string]
		_ = v.Scan
	}
	{
		var v sql.Null[string]
		_ = v.Value
	}
	var _ sql.NullBool
	{
		var v sql.NullBool
		_ = v.Scan
	}
	{
		var v sql.NullBool
		_ = v.Value
	}
	var _ sql.NullByte
	{
		var v sql.NullByte
		_ = v.Scan
	}
	{
		var v sql.NullByte
		_ = v.Value
	}
	var _ sql.NullFloat64
	{
		var v sql.NullFloat64
		_ = v.Scan
	}
	{
		var v sql.NullFloat64
		_ = v.Value
	}
	var _ sql.NullInt16
	{
		var v sql.NullInt16
		_ = v.Scan
	}
	{
		var v sql.NullInt16
		_ = v.Value
	}
	var _ sql.NullInt32
	{
		var v sql.NullInt32
		_ = v.Scan
	}
	{
		var v sql.NullInt32
		_ = v.Value
	}
	{
		var v sql.NullInt64
		_ = v.Value
	}
	{
		var v sql.NullString
		_ = v.Value
	}
	var _ sql.NullTime
	{
		var v sql.NullTime
		_ = v.Scan
	}
	{
		var v sql.NullTime
		_ = v.Value
	}
	var _ sql.Out
	var _ sql.RawBytes
	{
		var v sql.Row
		_ = v.Err
	}
	var _ sql.Rows
	{
		var v sql.Rows
		_ = v.Close
	}
	{
		var v sql.Rows
		_ = v.ColumnTypes
	}
	{
		var v sql.Rows
		_ = v.Columns
	}
	{
		var v sql.Rows
		_ = v.Err
	}
	{
		var v sql.Rows
		_ = v.Next
	}
	{
		var v sql.Rows
		_ = v.NextResultSet
	}
	{
		var v sql.Rows
		_ = v.Scan
	}
	var _ sql.Scanner
	{
		var v sql.Stmt
		_ = v.Exec
	}
	{
		var v sql.Stmt
		_ = v.ExecContext
	}
	{
		var v sql.Stmt
		_ = v.Query
	}
	{
		var v sql.Stmt
		_ = v.QueryContext
	}
	{
		var v sql.Stmt
		_ = v.QueryRow
	}
	{
		var v sql.Tx
		_ = v.Exec
	}
	{
		var v sql.Tx
		_ = v.Prepare
	}
	{
		var v sql.Tx
		_ = v.PrepareContext
	}
	{
		var v sql.Tx
		_ = v.Query
	}
	{
		var v sql.Tx
		_ = v.QueryContext
	}
	{
		var v sql.Tx
		_ = v.QueryRow
	}
	{
		var v sql.Tx
		_ = v.QueryRowContext
	}
	{
		var v sql.Tx
		_ = v.Rollback
	}
	{
		var v sql.Tx
		_ = v.Stmt
	}
	{
		var v sql.Tx
		_ = v.StmtContext
	}
}
