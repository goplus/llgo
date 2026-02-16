package driver_test

import (
	"context"
	"database/sql/driver"
	"errors"
	"io"
	"reflect"
	"testing"
)

type stub struct{}

type stubStmt struct{}

type stubRows struct{}

type stubTx struct{}

type stubValuer struct{}

func (stub) Prepare(string) (driver.Stmt, error)                          { return stubStmt{}, nil }
func (stub) Close() error                                                 { return nil }
func (stub) Begin() (driver.Tx, error)                                    { return stubTx{}, nil }
func (stub) BeginTx(context.Context, driver.TxOptions) (driver.Tx, error) { return stubTx{}, nil }
func (stub) PrepareContext(context.Context, string) (driver.Stmt, error)  { return stubStmt{}, nil }
func (stub) Exec(string, []driver.Value) (driver.Result, error)           { return driver.RowsAffected(1), nil }
func (stub) ExecContext(context.Context, string, []driver.NamedValue) (driver.Result, error) {
	return driver.RowsAffected(1), nil
}
func (stub) Query(string, []driver.Value) (driver.Rows, error) { return stubRows{}, nil }
func (stub) QueryContext(context.Context, string, []driver.NamedValue) (driver.Rows, error) {
	return stubRows{}, nil
}
func (stub) CheckNamedValue(*driver.NamedValue) error { return nil }
func (stub) Ping(context.Context) error               { return nil }
func (stub) ResetSession(context.Context) error       { return nil }
func (stub) IsValid() bool                            { return true }
func (stub) Open(string) (driver.Conn, error)         { return stub{}, nil }
func (stub) OpenConnector(string) (driver.Connector, error) {
	return stub{}, nil
}
func (stub) Connect(context.Context) (driver.Conn, error) { return stub{}, nil }
func (stub) Driver() driver.Driver                        { return stub{} }

func (stubStmt) Close() error                               { return nil }
func (stubStmt) NumInput() int                              { return -1 }
func (stubStmt) Exec([]driver.Value) (driver.Result, error) { return driver.RowsAffected(1), nil }
func (stubStmt) Query([]driver.Value) (driver.Rows, error)  { return stubRows{}, nil }
func (stubStmt) ExecContext(context.Context, []driver.NamedValue) (driver.Result, error) {
	return driver.RowsAffected(1), nil
}
func (stubStmt) QueryContext(context.Context, []driver.NamedValue) (driver.Rows, error) {
	return stubRows{}, nil
}
func (stubStmt) ColumnConverter(int) driver.ValueConverter { return driver.DefaultParameterConverter }
func (stubStmt) CheckNamedValue(*driver.NamedValue) error  { return nil }

func (stubRows) Columns() []string                                 { return []string{"c"} }
func (stubRows) Close() error                                      { return nil }
func (stubRows) Next([]driver.Value) error                         { return io.EOF }
func (stubRows) ColumnTypeDatabaseTypeName(int) string             { return "TEXT" }
func (stubRows) ColumnTypeLength(int) (int64, bool)                { return 0, false }
func (stubRows) ColumnTypeNullable(int) (bool, bool)               { return true, true }
func (stubRows) ColumnTypePrecisionScale(int) (int64, int64, bool) { return 0, 0, false }
func (stubRows) ColumnTypeScanType(int) reflect.Type               { return reflect.TypeOf("") }
func (stubRows) HasNextResultSet() bool                            { return false }
func (stubRows) NextResultSet() error                              { return io.EOF }

func (stubTx) Commit() error   { return nil }
func (stubTx) Rollback() error { return nil }

func (stubValuer) Value() (driver.Value, error) { return "v", nil }

func TestConvertersAndCoreValues(t *testing.T) {
	if _, err := driver.Bool.ConvertValue(true); err != nil {
		t.Fatalf("Bool.ConvertValue: %v", err)
	}
	if _, err := driver.Int32.ConvertValue(int64(123)); err != nil {
		t.Fatalf("Int32.ConvertValue: %v", err)
	}
	if v, err := driver.String.ConvertValue([]byte("x")); err != nil || string(v.([]byte)) != "x" {
		t.Fatalf("String.ConvertValue = (%v,%v)", v, err)
	}

	nn := driver.NotNull{Converter: driver.String}
	if _, err := nn.ConvertValue("ok"); err != nil {
		t.Fatalf("NotNull.ConvertValue: %v", err)
	}
	if _, err := nn.ConvertValue(nil); err == nil {
		t.Fatal("NotNull.ConvertValue(nil) should fail")
	}

	n := driver.Null{Converter: driver.String}
	if v, err := n.ConvertValue(nil); err != nil || v != nil {
		t.Fatalf("Null.ConvertValue(nil) = (%v,%v)", v, err)
	}

	if !driver.IsValue("x") || !driver.IsScanValue("x") {
		t.Fatal("IsValue/IsScanValue should accept string")
	}

	if _, err := driver.ResultNoRows.LastInsertId(); err == nil {
		t.Fatal("ResultNoRows.LastInsertId should fail")
	}
	if _, err := driver.ResultNoRows.RowsAffected(); err == nil {
		t.Fatal("ResultNoRows.RowsAffected should fail")
	}

	ra := driver.RowsAffected(3)
	if v, err := ra.RowsAffected(); err != nil || v != 3 {
		t.Fatalf("RowsAffected.RowsAffected = (%v,%v)", v, err)
	}
	if _, err := ra.LastInsertId(); err == nil {
		t.Fatal("RowsAffected.LastInsertId should fail")
	}

	if _, err := driver.DefaultParameterConverter.ConvertValue(stubValuer{}); err != nil {
		t.Fatalf("DefaultParameterConverter.ConvertValue(Valuer): %v", err)
	}
}

func TestPublicAPISymbols(t *testing.T) {
	if !errors.Is(driver.ErrBadConn, driver.ErrBadConn) {
		t.Fatal("ErrBadConn should match itself")
	}
	if !errors.Is(driver.ErrSkip, driver.ErrSkip) || !errors.Is(driver.ErrRemoveArgument, driver.ErrRemoveArgument) {
		t.Fatal("expected exported errors to be non-nil")
	}

	_ = driver.IsValue
	_ = driver.IsScanValue
	_ = driver.Bool
	_ = driver.Int32
	_ = driver.String
	_ = driver.DefaultParameterConverter
	_ = driver.ResultNoRows
	ra0 := driver.RowsAffected(0)
	if v, err := ra0.RowsAffected(); err != nil || v != 0 {
		t.Fatalf("RowsAffected(0).RowsAffected = (%v,%v)", v, err)
	}
	if _, err := ra0.LastInsertId(); err == nil {
		t.Fatal("RowsAffected(0).LastInsertId should fail")
	}
	_ = driver.NotNull{}.ConvertValue
	_ = driver.Null{}.ConvertValue

	var _ driver.ColumnConverter = stubStmt{}
	var _ driver.Conn = stub{}
	var _ driver.ConnBeginTx = stub{}
	var _ driver.ConnPrepareContext = stub{}
	var _ driver.Connector = stub{}
	var _ driver.Driver = stub{}
	var _ driver.DriverContext = stub{}
	var _ driver.Execer = stub{}
	var _ driver.ExecerContext = stub{}
	var _ driver.NamedValueChecker = stub{}
	var _ driver.Pinger = stub{}
	var _ driver.Queryer = stub{}
	var _ driver.QueryerContext = stub{}
	var _ driver.SessionResetter = stub{}
	var _ driver.Validator = stub{}

	var _ driver.Stmt = stubStmt{}
	var _ driver.StmtExecContext = stubStmt{}
	var _ driver.StmtQueryContext = stubStmt{}
	var _ driver.ColumnConverter = stubStmt{}
	var _ driver.NamedValueChecker = stubStmt{}

	var _ driver.Rows = stubRows{}
	var _ driver.RowsColumnTypeDatabaseTypeName = stubRows{}
	var _ driver.RowsColumnTypeLength = stubRows{}
	var _ driver.RowsColumnTypeNullable = stubRows{}
	var _ driver.RowsColumnTypePrecisionScale = stubRows{}
	var _ driver.RowsColumnTypeScanType = stubRows{}
	var _ driver.RowsNextResultSet = stubRows{}

	var _ driver.Tx = stubTx{}
	var _ driver.Result = driver.RowsAffected(1)
	var _ driver.Valuer = stubValuer{}

	_ = driver.NamedValue{}
	_ = driver.TxOptions{}
	lvl := driver.IsolationLevel(0)
	if lvl != 0 {
		t.Fatalf("IsolationLevel conversion mismatch: got %v, want 0", lvl)
	}
	txOpts := driver.TxOptions{Isolation: lvl, ReadOnly: true}
	if txOpts.Isolation != lvl || !txOpts.ReadOnly {
		t.Fatalf("TxOptions assignment mismatch: %+v", txOpts)
	}
	var v driver.Value = int64(7)
	if got, ok := v.(int64); !ok || got != 7 {
		t.Fatalf("driver.Value type/assertion mismatch: got (%T)%v", v, v)
	}
	_ = driver.NotNull{}
	_ = driver.Null{}
}
