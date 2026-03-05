package template_test

import (
	"bytes"
	"html/template"
	"os"
	"path/filepath"
	"strings"
	"testing"
	"text/template/parse"
)

func TestAutoEscapeAndTypedHTML(t *testing.T) {
	tmpl := template.Must(template.New("x").Parse(`<div>{{.}}</div>`))

	var out bytes.Buffer
	if err := tmpl.Execute(&out, `<script>alert('x')</script>`); err != nil {
		t.Fatalf("Execute: %v", err)
	}
	got := out.String()
	if strings.Contains(got, "<script>") {
		t.Fatalf("output not escaped: %q", got)
	}
	if !strings.Contains(got, "&lt;script&gt;") {
		t.Fatalf("escaped output mismatch: %q", got)
	}

	out.Reset()
	if err := tmpl.Execute(&out, template.HTML(`<b>ok</b>`)); err != nil {
		t.Fatalf("Execute(HTML): %v", err)
	}
	if out.String() != `<div><b>ok</b></div>` {
		t.Fatalf("typed HTML output = %q", out.String())
	}
}

func TestTemplateSetCloneAndFuncs(t *testing.T) {
	base := template.Must(template.New("base").Funcs(template.FuncMap{
		"up": strings.ToUpper,
	}).Parse(`{{define "base"}}{{template "item" .}}{{end}}{{define "item"}}{{up .}}{{end}}`))

	clone, err := base.Clone()
	if err != nil {
		t.Fatalf("Clone: %v", err)
	}

	var out bytes.Buffer
	if err := clone.ExecuteTemplate(&out, "base", "hello"); err != nil {
		t.Fatalf("ExecuteTemplate: %v", err)
	}
	if out.String() != "HELLO" {
		t.Fatalf("ExecuteTemplate output = %q", out.String())
	}

	if clone.Lookup("item") == nil {
		t.Fatal("Lookup(item) returned nil")
	}
	if clone.DefinedTemplates() == "" {
		t.Fatal("DefinedTemplates should not be empty")
	}
}

func TestParseFilesGlobAndOption(t *testing.T) {
	dir := t.TempDir()
	basePath := filepath.Join(dir, "base.tmpl")
	itemPath := filepath.Join(dir, "item.tmpl")
	if err := os.WriteFile(basePath, []byte(`{{define "base"}}[{{template "item" .}}]{{end}}`), 0o644); err != nil {
		t.Fatalf("WriteFile(base): %v", err)
	}
	if err := os.WriteFile(itemPath, []byte(`{{define "item"}}{{.Name}}{{end}}`), 0o644); err != nil {
		t.Fatalf("WriteFile(item): %v", err)
	}

	tmpl := template.Must(template.ParseFiles(basePath, itemPath))
	var out bytes.Buffer
	if err := tmpl.ExecuteTemplate(&out, "base", map[string]string{"Name": "x"}); err != nil {
		t.Fatalf("ExecuteTemplate(ParseFiles): %v", err)
	}
	if out.String() != "[x]" {
		t.Fatalf("ParseFiles output = %q", out.String())
	}

	tmpl2 := template.Must(template.ParseGlob(filepath.Join(dir, "*.tmpl")))
	out.Reset()
	if err := tmpl2.ExecuteTemplate(&out, "base", map[string]string{"Name": "g"}); err != nil {
		t.Fatalf("ExecuteTemplate(ParseGlob): %v", err)
	}
	if out.String() != "[g]" {
		t.Fatalf("ParseGlob output = %q", out.String())
	}

	strict := template.Must(template.New("strict").Option("missingkey=error").Parse(`{{.Missing}}`))
	if err := strict.Execute(&out, map[string]string{"x": "y"}); err == nil {
		t.Fatal("missingkey=error should fail")
	}
}

func TestIsTrue(t *testing.T) {
	if truth, ok := template.IsTrue(1); !truth || !ok {
		t.Fatalf("IsTrue(1) = (%v, %v), want (true, true)", truth, ok)
	}
	if truth, ok := template.IsTrue(0); truth || !ok {
		t.Fatalf("IsTrue(0) = (%v, %v), want (false, true)", truth, ok)
	}
}

func TestEscapersAndSafeTypes(t *testing.T) {
	var b bytes.Buffer
	template.HTMLEscape(&b, []byte(`<x y="1">`))
	if b.String() != `&lt;x y=&#34;1&#34;&gt;` {
		t.Fatalf("HTMLEscape = %q", b.String())
	}
	if got := template.HTMLEscapeString(`<script>`); got != `&lt;script&gt;` {
		t.Fatalf("HTMLEscapeString = %q", got)
	}
	if got := template.HTMLEscaper(`<a>`, "&"); got != `&lt;a&gt;&amp;` {
		t.Fatalf("HTMLEscaper = %q", got)
	}

	b.Reset()
	template.JSEscape(&b, []byte(`a"b\n`))
	if b.String() == `a"b\n` {
		t.Fatalf("JSEscape did not escape input: %q", b.String())
	}
	if got := template.JSEscapeString(`a"b`); got == `a"b` || (!strings.Contains(got, `\"`) && !strings.Contains(got, `\x22`)) {
		t.Fatalf("JSEscapeString = %q", got)
	}
	if got := template.JSEscaper(`x"y`); got == `x"y` || (!strings.Contains(got, `\"`) && !strings.Contains(got, `\x22`)) {
		t.Fatalf("JSEscaper = %q", got)
	}
	if got := template.URLQueryEscaper("a b&c"); got != "a+b%26c" {
		t.Fatalf("URLQueryEscaper = %q", got)
	}

	tmpl := template.Must(template.New("safe").Parse(
		`<a{{.Attr}} href="{{.URL}}" style="{{.CSS}}" onclick='x={{.JS}}'>{{.HTML}}</a><img srcset="{{.Srcset}}"><script>let s='{{.JSStr}}'</script>`,
	))
	data := struct {
		Attr   template.HTMLAttr
		URL    template.URL
		CSS    template.CSS
		JS     template.JS
		HTML   template.HTML
		Srcset template.Srcset
		JSStr  template.JSStr
	}{
		Attr:   template.HTMLAttr(` title="T"`),
		URL:    template.URL(`https://example.com/?a=1&b=2`),
		CSS:    template.CSS(`color:red`),
		JS:     template.JS(`1+2`),
		HTML:   template.HTML(`<b>ok</b>`),
		Srcset: template.Srcset(`a.png 1x, b.png 2x`),
		JSStr:  template.JSStr(`\x41`),
	}

	b.Reset()
	if err := tmpl.Execute(&b, data); err != nil {
		t.Fatalf("Execute(safe types): %v", err)
	}
	got := b.String()
	if !strings.Contains(got, `<b>ok</b>`) {
		t.Fatalf("safe HTML missing: %q", got)
	}
	if !strings.Contains(got, `style="color:red"`) {
		t.Fatalf("safe CSS missing: %q", got)
	}
	if !strings.Contains(got, `onclick='x=1&#43;2'`) {
		t.Fatalf("safe JS missing: %q", got)
	}
	if !strings.Contains(got, `srcset="a.png 1x, b.png 2x"`) {
		t.Fatalf("safe Srcset missing: %q", got)
	}
	if !strings.Contains(got, `let s='\x41'`) {
		t.Fatalf("safe JSStr missing: %q", got)
	}
}

func TestTemplateConstructionAndParsingAPIs(t *testing.T) {
	root := template.New("root")
	if root.Name() != "root" {
		t.Fatalf("Name = %q, want root", root.Name())
	}

	// Delims + Parse + New + Templates
	delimed := root.Delims("[[", "]]")
	if _, err := delimed.Parse(`[[define "base"]]base:[[template "child" .]][[end]]`); err != nil {
		t.Fatalf("Parse with Delims: %v", err)
	}
	child := root.New("child")
	if _, err := child.Parse(`[[define "child"]][[.]][[end]]`); err != nil {
		t.Fatalf("New/Parse child: %v", err)
	}
	if len(root.Templates()) < 2 {
		t.Fatalf("Templates len = %d, want >= 2", len(root.Templates()))
	}

	var out bytes.Buffer
	if err := root.ExecuteTemplate(&out, "base", "ok"); err != nil {
		t.Fatalf("ExecuteTemplate(base): %v", err)
	}
	if out.String() != "base:ok" {
		t.Fatalf("base output = %q", out.String())
	}

	// AddParseTree on a fresh template set.
	treeRoot := template.New("tree-root")
	trees, err := parse.Parse("added", `{{define "added"}}ADDED{{end}}`, "{{", "}}", nil)
	if err != nil {
		t.Fatalf("parse.Parse: %v", err)
	}
	if _, err := treeRoot.AddParseTree("added", trees["added"]); err != nil {
		t.Fatalf("AddParseTree: %v", err)
	}
	out.Reset()
	if err := treeRoot.ExecuteTemplate(&out, "added", nil); err != nil {
		t.Fatalf("ExecuteTemplate(added): %v", err)
	}
	if out.String() != "ADDED" {
		t.Fatalf("added output = %q", out.String())
	}

	// ParseFiles / ParseGlob / ParseFS (package funcs + methods)
	dir := t.TempDir()
	basePath := filepath.Join(dir, "a.tmpl")
	itemPath := filepath.Join(dir, "b.tmpl")
	if err := os.WriteFile(basePath, []byte(`{{define "A"}}A:{{template "B" .}}{{end}}`), 0o644); err != nil {
		t.Fatalf("WriteFile(a): %v", err)
	}
	if err := os.WriteFile(itemPath, []byte(`{{define "B"}}{{.}}{{end}}`), 0o644); err != nil {
		t.Fatalf("WriteFile(b): %v", err)
	}

	t1 := template.Must(template.ParseFiles(basePath, itemPath))
	out.Reset()
	if err := t1.ExecuteTemplate(&out, "A", "x"); err != nil {
		t.Fatalf("ParseFiles ExecuteTemplate: %v", err)
	}
	if out.String() != "A:x" {
		t.Fatalf("ParseFiles output = %q", out.String())
	}

	t2 := template.Must(template.ParseGlob(filepath.Join(dir, "*.tmpl")))
	out.Reset()
	if err := t2.ExecuteTemplate(&out, "A", "y"); err != nil {
		t.Fatalf("ParseGlob ExecuteTemplate: %v", err)
	}
	if out.String() != "A:y" {
		t.Fatalf("ParseGlob output = %q", out.String())
	}

	t3 := template.Must(template.ParseFS(os.DirFS(dir), "*.tmpl"))
	out.Reset()
	if err := t3.ExecuteTemplate(&out, "A", "z"); err != nil {
		t.Fatalf("ParseFS ExecuteTemplate: %v", err)
	}
	if out.String() != "A:z" {
		t.Fatalf("ParseFS output = %q", out.String())
	}

	t4 := template.Must(template.New("method-files").ParseFiles(basePath, itemPath))
	out.Reset()
	if err := t4.ExecuteTemplate(&out, "A", "m"); err != nil {
		t.Fatalf("Template.ParseFiles ExecuteTemplate: %v", err)
	}
	if out.String() != "A:m" {
		t.Fatalf("Template.ParseFiles output = %q", out.String())
	}

	t5 := template.Must(template.New("method-glob").ParseGlob(filepath.Join(dir, "*.tmpl")))
	out.Reset()
	if err := t5.ExecuteTemplate(&out, "A", "n"); err != nil {
		t.Fatalf("Template.ParseGlob ExecuteTemplate: %v", err)
	}
	if out.String() != "A:n" {
		t.Fatalf("Template.ParseGlob output = %q", out.String())
	}

	t6 := template.Must(template.New("method-fs").ParseFS(os.DirFS(dir), "*.tmpl"))
	out.Reset()
	if err := t6.ExecuteTemplate(&out, "A", "p"); err != nil {
		t.Fatalf("Template.ParseFS ExecuteTemplate: %v", err)
	}
	if out.String() != "A:p" {
		t.Fatalf("Template.ParseFS output = %q", out.String())
	}
}

func TestErrorTypeFormatting(t *testing.T) {
	errVal := &template.Error{
		ErrorCode:   template.ErrOutputContext,
		Name:        "bad",
		Line:        12,
		Description: "cannot compute output context",
	}
	msg := errVal.Error()
	if msg == "" {
		t.Fatal("Error().empty")
	}
	if errVal.ErrorCode != template.ErrOutputContext {
		t.Fatalf("ErrorCode = %v", errVal.ErrorCode)
	}
	if code := template.ErrorCode(template.OK); code != template.OK {
		t.Fatalf("ErrorCode conversion failed: %v", code)
	}
}
