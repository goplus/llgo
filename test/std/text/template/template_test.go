package template_test

import (
	"bytes"
	"errors"
	"os"
	"path/filepath"
	"strings"
	"testing"
	"testing/fstest"
	"text/template"
	"text/template/parse"
)

func TestTemplateEscapersAndTruth(t *testing.T) {
	var htmlBuf bytes.Buffer
	template.HTMLEscape(&htmlBuf, []byte("<b>bold</b>"))
	if htmlBuf.String() != "&lt;b&gt;bold&lt;/b&gt;" {
		t.Fatalf("HTMLEscape mismatch: %q", htmlBuf.String())
	}
	if res := template.HTMLEscapeString("<tag>"); res != "&lt;tag&gt;" {
		t.Fatalf("HTMLEscapeString mismatch: %q", res)
	}
	if res := template.HTMLEscaper("<", ">"); res != "&lt;&gt;" {
		t.Fatalf("HTMLEscaper mismatch: %q", res)
	}

	var jsBuf bytes.Buffer
	template.JSEscape(&jsBuf, []byte(`alert("x")`))
	jsEscaped := jsBuf.String()
	if !strings.Contains(jsEscaped, `\"`) && !strings.Contains(jsEscaped, `\x22`) {
		t.Fatalf("expected escaped quote in %q", jsBuf.String())
	}
	if res := template.JSEscapeString(`"quote"`); !strings.Contains(res, `\"`) && !strings.Contains(res, `\x22`) {
		t.Fatalf("JSEscapeString mismatch: %q", res)
	}
	if res := template.JSEscaper(`"`, `\`); (!strings.Contains(res, `\"`) && !strings.Contains(res, `\x22`)) || (!strings.Contains(res, `\\`) && !strings.Contains(res, `\x5c`)) {
		t.Fatalf("JSEscaper mismatch: %q", res)
	}

	if res := template.URLQueryEscaper("a b", "c&d"); res != "a+bc%26d" {
		t.Fatalf("URLQueryEscaper mismatch: %q", res)
	}

	truthy, ok := template.IsTrue(1)
	if !ok || !truthy {
		t.Fatalf("IsTrue should report non-zero ints as true, got ok=%v truthy=%v", ok, truthy)
	}
	falsey, ok := template.IsTrue("")
	if !ok || falsey {
		t.Fatalf("IsTrue should report empty string as false, got ok=%v truthy=%v", ok, falsey)
	}
}

func TestTemplateCreationAndExecution(t *testing.T) {
	tmpl := template.Must(template.New("base").Funcs(template.FuncMap{
		"upper": strings.ToUpper,
	}).Parse("Hello {{upper .Name}}"))

	if tmpl.Name() != "base" {
		t.Fatalf("Name mismatch: %q", tmpl.Name())
	}
	if tmpl.Lookup("base") == nil {
		t.Fatal("Lookup should find base template")
	}
	if !strings.Contains(tmpl.DefinedTemplates(), "base") {
		t.Fatalf("DefinedTemplates should list base, got %q", tmpl.DefinedTemplates())
	}
	if tmpl.Option("missingkey=error") != tmpl {
		t.Fatal("Option should return the template receiver")
	}

	var buf bytes.Buffer
	if err := tmpl.Execute(&buf, map[string]string{"Name": "LLGo"}); err != nil {
		t.Fatalf("Execute failed: %v", err)
	}
	if buf.String() != "Hello LLGO" {
		t.Fatalf("Execute output mismatch: %q", buf.String())
	}

	nested := template.Must(tmpl.New("nested").Parse(`{{define "nested"}}Hi {{.Name}}{{end}}`))
	if nested == nil {
		t.Fatal("New should create nested template")
	}
	buf.Reset()
	if err := tmpl.ExecuteTemplate(&buf, "nested", map[string]string{"Name": "Gopher"}); err != nil {
		t.Fatalf("ExecuteTemplate failed: %v", err)
	}
	if buf.String() != "Hi Gopher" {
		t.Fatalf("ExecuteTemplate output mismatch: %q", buf.String())
	}

	if len(tmpl.Templates()) == 0 {
		t.Fatal("Templates should list associated templates")
	}
}

func TestTemplateCloneAndAddParseTree(t *testing.T) {
	tmpl := template.Must(template.New("base").Parse("{{define \"base\"}}Base {{.}}{{end}}"))

	clone, err := tmpl.Clone()
	if err != nil {
		t.Fatalf("Clone failed: %v", err)
	}

	clone = clone.Delims("[[", "]]")
	if clone == nil {
		t.Fatal("Delims should return template receiver")
	}

	treeMap, err := parse.Parse("extra", "[[define \"extra\"]]Extra [[.]][[end]]", "[[", "]]")
	if err != nil {
		t.Fatalf("parse.Parse failed: %v", err)
	}
	tree, ok := treeMap["extra"]
	if !ok {
		t.Fatal("parse.Parse should return tree named extra")
	}

	if _, err := clone.AddParseTree("extra", tree); err != nil {
		t.Fatalf("AddParseTree failed: %v", err)
	}

	var buf bytes.Buffer
	if err := clone.ExecuteTemplate(&buf, "extra", "Template"); err != nil {
		t.Fatalf("ExecuteTemplate failed: %v", err)
	}
	if buf.String() != "Extra Template" {
		t.Fatalf("AddParseTree output mismatch: %q", buf.String())
	}
}

func TestTemplateFileParsing(t *testing.T) {
	tmpDir := t.TempDir()
	fileA := filepath.Join(tmpDir, "a.tmpl")
	if err := os.WriteFile(fileA, []byte("FileA {{.}}\n"), 0o600); err != nil {
		t.Fatalf("WriteFile failed: %v", err)
	}
	fileB := filepath.Join(tmpDir, "b.tmpl")
	if err := os.WriteFile(fileB, []byte("FileB {{.}}\n"), 0o600); err != nil {
		t.Fatalf("WriteFile failed: %v", err)
	}

	globTmpl := template.Must(template.ParseGlob(filepath.Join(tmpDir, "*.tmpl")))
	var globBuf bytes.Buffer
	if err := globTmpl.ExecuteTemplate(&globBuf, "b.tmpl", "Y"); err != nil {
		t.Fatalf("ParseGlob function ExecuteTemplate failed: %v", err)
	}
	if !strings.Contains(globBuf.String(), "FileB Y") {
		t.Fatalf("ParseGlob function output mismatch: %q", globBuf.String())
	}

	filesTmpl := template.Must(template.ParseFiles(fileA, fileB))
	var buf bytes.Buffer
	if err := filesTmpl.ExecuteTemplate(&buf, "a.tmpl", "X"); err != nil {
		t.Fatalf("ExecuteTemplate failed: %v", err)
	}
	if !strings.Contains(buf.String(), "FileA X") {
		t.Fatalf("ParseFiles output mismatch: %q", buf.String())
	}

	buf.Reset()
	if _, err := filesTmpl.ParseGlob(filepath.Join(tmpDir, "*.tmpl")); err != nil {
		t.Fatalf("ParseGlob method failed: %v", err)
	}

	tmpl := template.Must(template.New("glob").Parse("{{define \"b.tmpl\"}}Override {{.}}{{end}}"))
	if _, err := tmpl.ParseFiles(fileA); err != nil {
		t.Fatalf("Template.ParseFiles failed: %v", err)
	}
	if _, err := tmpl.ParseGlob(filepath.Join(tmpDir, "*.tmpl")); err != nil {
		t.Fatalf("Template.ParseGlob failed: %v", err)
	}
}

func TestTemplateParseFS(t *testing.T) {
	fs := fstest.MapFS{
		"one.tmpl":   &fstest.MapFile{Data: []byte("One {{.}}\n")},
		"extra/two":  &fstest.MapFile{Data: []byte("Two {{.}}\n")},
		"extra/dup":  &fstest.MapFile{Data: []byte("Dup {{.}}\n")},
		"glob/three": &fstest.MapFile{Data: []byte("Three {{.}}\n")},
	}

	tmpl := template.Must(template.ParseFS(fs, "one.tmpl", "extra/two"))
	var buf bytes.Buffer
	if err := tmpl.ExecuteTemplate(&buf, "one.tmpl", "A"); err != nil {
		t.Fatalf("ExecuteTemplate failed: %v", err)
	}
	if !strings.Contains(buf.String(), "One A") {
		t.Fatalf("ParseFS output mismatch: %q", buf.String())
	}

	buf.Reset()
	base := template.Must(template.New("fs").Parse("{{define \"dup\"}}Base {{.}}{{end}}"))
	if _, err := base.ParseFS(fs, "glob/*"); err != nil {
		t.Fatalf("Template.ParseFS failed: %v", err)
	}
	if _, err := base.ParseFS(fs, "extra/dup"); err != nil {
		t.Fatalf("Template.ParseFS duplicate failed: %v", err)
	}
	if base.Lookup("dup") == nil {
		t.Fatal("ParseFS should preserve existing definitions")
	}
}

func TestExecErrorWrapping(t *testing.T) {
	tmpl := template.Must(template.New("error").Option("missingkey=error").Parse("{{.Missing}}"))
	var buf bytes.Buffer
	err := tmpl.Execute(&buf, map[string]string{})
	var execErr template.ExecError
	if !errors.As(err, &execErr) {
		t.Fatalf("expected ExecError, got %T", err)
	}
	if execErr.Error() == "" {
		t.Fatal("ExecError message should not be empty")
	}
	if execErr.Unwrap() == nil {
		t.Fatal("ExecError should wrap underlying error")
	}
}
