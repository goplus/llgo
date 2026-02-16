package sql_test

import (
	"context"
	"database/sql"
	"database/sql/driver"
	"errors"
	"io"
	"sync"
	"testing"
)

const testDriverName = "llgo_std_sql_test_driver"

var registerOnce sync.Once

func openTestDB(t *testing.T) *sql.DB {
	t.Helper()
	registerOnce.Do(func() {
		sql.Register(testDriverName, tinyDriver{})
	})
	db, err := sql.Open(testDriverName, "dsn")
	if err != nil {
		t.Fatalf("sql.Open: %v", err)
	}
	t.Cleanup(func() { _ = db.Close() })
	return db
}

type tinyDriver struct{}

func (tinyDriver) Open(name string) (driver.Conn, error) {
	_ = name
	return &tinyConn{}, nil
}

type tinyConn struct{}

func (*tinyConn) Prepare(query string) (driver.Stmt, error) {
	return &tinyStmt{query: query}, nil
}

func (*tinyConn) Close() error { return nil }

func (*tinyConn) Begin() (driver.Tx, error) { return &tinyTx{}, nil }

func (*tinyConn) BeginTx(ctx context.Context, opts driver.TxOptions) (driver.Tx, error) {
	_ = ctx
	_ = opts
	return &tinyTx{}, nil
}

func (*tinyConn) Ping(ctx context.Context) error {
	_ = ctx
	return nil
}

func (*tinyConn) ExecContext(ctx context.Context, query string, args []driver.NamedValue) (driver.Result, error) {
	_ = ctx
	_ = query
	_ = args
	return driver.RowsAffected(1), nil
}

func (*tinyConn) QueryContext(ctx context.Context, query string, args []driver.NamedValue) (driver.Rows, error) {
	_ = ctx
	_ = args
	return rowsForQuery(query), nil
}

func (*tinyConn) PrepareContext(ctx context.Context, query string) (driver.Stmt, error) {
	_ = ctx
	return &tinyStmt{query: query}, nil
}

type tinyStmt struct {
	query string
}

func (*tinyStmt) Close() error { return nil }

func (*tinyStmt) NumInput() int { return -1 }

func (*tinyStmt) Exec(args []driver.Value) (driver.Result, error) {
	_ = args
	return driver.RowsAffected(1), nil
}

func (s *tinyStmt) Query(args []driver.Value) (driver.Rows, error) {
	_ = args
	return rowsForQuery(s.query), nil
}

type tinyTx struct{}

func (*tinyTx) Commit() error   { return nil }
func (*tinyTx) Rollback() error { return nil }

type tinyRows struct {
	cols []string
	data [][]driver.Value
	idx  int
}

func (r *tinyRows) Columns() []string { return r.cols }

func (*tinyRows) Close() error { return nil }

func (r *tinyRows) Next(dest []driver.Value) error {
	if r.idx >= len(r.data) {
		return io.EOF
	}
	row := r.data[r.idx]
	r.idx++
	copy(dest, row)
	return nil
}

func rowsForQuery(query string) driver.Rows {
	switch query {
	case "empty":
		return &tinyRows{cols: []string{"v"}, data: nil}
	case "onecol":
		return &tinyRows{cols: []string{"v"}, data: [][]driver.Value{{"ok"}}}
	default:
		return &tinyRows{cols: []string{"s", "n"}, data: [][]driver.Value{{"hello", int64(7)}}}
	}
}

func TestDBMainPath(t *testing.T) {
	db := openTestDB(t)

	if err := db.Ping(); err != nil {
		t.Fatalf("Ping: %v", err)
	}

	res, err := db.ExecContext(context.Background(), "update", 1)
	if err != nil {
		t.Fatalf("ExecContext: %v", err)
	}
	affected, err := res.RowsAffected()
	if err != nil {
		t.Fatalf("RowsAffected: %v", err)
	}
	if affected != 1 {
		t.Fatalf("RowsAffected = %d, want 1", affected)
	}

	var s string
	var n int64
	if err := db.QueryRowContext(context.Background(), "select").Scan(&s, &n); err != nil {
		t.Fatalf("QueryRowContext.Scan: %v", err)
	}
	if s != "hello" || n != 7 {
		t.Fatalf("row = (%q, %d), want (hello, 7)", s, n)
	}

	if err := db.QueryRowContext(context.Background(), "empty").Scan(&s); !errors.Is(err, sql.ErrNoRows) {
		t.Fatalf("empty QueryRowContext error = %v, want ErrNoRows", err)
	}

	tx, err := db.BeginTx(context.Background(), &sql.TxOptions{ReadOnly: true})
	if err != nil {
		t.Fatalf("BeginTx: %v", err)
	}
	if _, err := tx.ExecContext(context.Background(), "update"); err != nil {
		t.Fatalf("Tx.ExecContext: %v", err)
	}
	if err := tx.Commit(); err != nil {
		t.Fatalf("Tx.Commit: %v", err)
	}
}

func TestConnAndStmt(t *testing.T) {
	db := openTestDB(t)

	conn, err := db.Conn(context.Background())
	if err != nil {
		t.Fatalf("Conn: %v", err)
	}
	defer func() { _ = conn.Close() }()

	stmt, err := conn.PrepareContext(context.Background(), "onecol")
	if err != nil {
		t.Fatalf("PrepareContext: %v", err)
	}
	defer func() { _ = stmt.Close() }()

	var got string
	if err := stmt.QueryRowContext(context.Background()).Scan(&got); err != nil {
		t.Fatalf("Stmt.QueryRowContext.Scan: %v", err)
	}
	if got != "ok" {
		t.Fatalf("QueryRow got = %q, want ok", got)
	}

	err = conn.Raw(func(driverConn any) error {
		if driverConn == nil {
			t.Fatal("Raw driverConn is nil")
		}
		return nil
	})
	if err != nil {
		t.Fatalf("Conn.Raw: %v", err)
	}
}

func TestNullTypes(t *testing.T) {
	var ns sql.NullString
	if err := ns.Scan("abc"); err != nil {
		t.Fatalf("NullString.Scan: %v", err)
	}
	if !ns.Valid || ns.String != "abc" {
		t.Fatalf("NullString = %+v", ns)
	}

	var ni sql.NullInt64
	if err := ni.Scan(int64(42)); err != nil {
		t.Fatalf("NullInt64.Scan: %v", err)
	}
	if !ni.Valid || ni.Int64 != 42 {
		t.Fatalf("NullInt64 = %+v", ni)
	}
}
