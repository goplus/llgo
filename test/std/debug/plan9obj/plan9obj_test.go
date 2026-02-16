package plan9obj_test

import (
	"bytes"
	"encoding/binary"
	"errors"
	"io"
	"os"
	"path/filepath"
	"testing"

	"debug/plan9obj"
)

func minimalPlan9Header(t *testing.T) []byte {
	t.Helper()
	buf := new(bytes.Buffer)
	header := []uint32{
		plan9obj.Magic386,
		0, // text size
		0, // data size
		0, // bss size
		0, // syms size
		0, // entry
		0, // spsz
		0, // pcsz
	}
	for _, v := range header {
		if err := binary.Write(buf, binary.BigEndian, v); err != nil {
			t.Fatalf("binary.Write: %v", err)
		}
	}
	return buf.Bytes()
}

func TestNewFileAndSections(t *testing.T) {
	f, err := plan9obj.NewFile(bytes.NewReader(minimalPlan9Header(t)))
	if err != nil {
		t.Fatalf("NewFile: %v", err)
	}
	defer f.Close()

	if f.Magic != plan9obj.Magic386 {
		t.Fatalf("Magic = %d, want %d", f.Magic, plan9obj.Magic386)
	}

	text := f.Section("text")
	if text == nil {
		t.Fatal("Section(text) = nil")
	}

	data, err := text.Data()
	if err != nil {
		t.Fatalf("Section.Data: %v", err)
	}
	if len(data) != 0 {
		t.Fatalf("len(Data) = %d, want 0", len(data))
	}

	r := text.Open()
	buf := make([]byte, 1)
	_, err = r.Read(buf)
	if !errors.Is(err, io.EOF) {
		t.Fatalf("Open().Read error = %v, want EOF", err)
	}
}

func TestOpenInvalidFile(t *testing.T) {
	dir := t.TempDir()
	name := filepath.Join(dir, "bad.aout")
	if err := os.WriteFile(name, []byte("not-plan9"), 0o644); err != nil {
		t.Fatalf("WriteFile: %v", err)
	}
	if _, err := plan9obj.Open(name); err == nil {
		t.Fatal("Open should fail for invalid object file")
	}
}

func TestSymbolsMissingSection(t *testing.T) {
	f := &plan9obj.File{}
	if _, err := f.Symbols(); !errors.Is(err, plan9obj.ErrNoSymbols) {
		t.Fatalf("Symbols error = %v, want ErrNoSymbols", err)
	}
}

func TestPublicAPISymbols(t *testing.T) {
	_ = plan9obj.NewFile
	_ = plan9obj.Open

	_ = plan9obj.Magic64
	_ = plan9obj.Magic386
	_ = plan9obj.MagicAMD64
	_ = plan9obj.MagicARM

	if plan9obj.ErrNoSymbols == nil {
		t.Fatal("ErrNoSymbols is nil")
	}

	_ = plan9obj.FileHeader{}
	_ = plan9obj.SectionHeader{}
	_ = plan9obj.Sym{}
}
