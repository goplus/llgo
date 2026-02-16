package comment_test

import (
	"bytes"
	"go/doc/comment"
	"strings"
	"testing"
)

func TestParserAndPrinter(t *testing.T) {
	text := "Title\n\nPara [io.Reader].\n\n- a\n- b\n"
	p := comment.Parser{
		LookupPackage: func(name string) (string, bool) {
			if name == "io" {
				return "io", true
			}
			return "", false
		},
		LookupSym: func(recv, name string) bool {
			return recv == "" && name == "Reader"
		},
		Words: map[string]string{"Go": "https://go.dev"},
	}
	doc := p.Parse(text)
	if doc == nil {
		t.Fatal("Parse returned nil")
	}
	if len(doc.Content) == 0 {
		t.Fatal("Parse returned empty content")
	}

	pr := comment.Printer{
		HeadingLevel:   3,
		DocLinkBaseURL: "/pkg/",
		TextPrefix:     "> ",
		TextCodePrefix: "| ",
		TextWidth:      60,
		HeadingID: func(h *comment.Heading) string {
			return "custom-" + h.DefaultID()
		},
		DocLinkURL: func(link *comment.DocLink) string {
			return "doc://" + link.Name
		},
	}

	commentOut := pr.Comment(doc)
	htmlOut := pr.HTML(doc)
	markdownOut := pr.Markdown(doc)
	textOut := pr.Text(doc)
	if len(commentOut) == 0 || len(htmlOut) == 0 || len(markdownOut) == 0 || len(textOut) == 0 {
		t.Fatal("printer outputs must not be empty")
	}
	if !bytes.Contains(textOut, []byte(">")) {
		t.Fatalf("Text output missing prefix: %q", textOut)
	}
}

func TestDocLinkAndHeadingHelpers(t *testing.T) {
	l := &comment.DocLink{ImportPath: "math", Name: "Sqrt"}
	if got := l.DefaultURL("/pkg/"); got != "/pkg/math/#Sqrt" {
		t.Fatalf("DefaultURL = %q", got)
	}

	h := &comment.Heading{Text: []comment.Text{comment.Plain("Go Doc Comments")}}
	if got := h.DefaultID(); got != "hdr-Go_Doc_Comments" {
		t.Fatalf("DefaultID = %q", got)
	}
}

func TestListBlankRules(t *testing.T) {
	para := &comment.Paragraph{Text: []comment.Text{comment.Plain("x")}}
	list := &comment.List{Items: []*comment.ListItem{{Content: []comment.Block{para}}}}
	if list.BlankBefore() {
		t.Fatal("BlankBefore should be false by default")
	}
	if list.BlankBetween() {
		t.Fatal("BlankBetween should be false by default")
	}

	list.ForceBlankBefore = true
	list.ForceBlankBetween = true
	if !list.BlankBefore() || !list.BlankBetween() {
		t.Fatal("force flags should make BlankBefore/BlankBetween true")
	}
}

func TestPublicAPISymbols(t *testing.T) {
	_ = comment.DefaultLookupPackage

	var _ comment.Block = &comment.Code{}
	var _ comment.Block = &comment.Heading{}
	var _ comment.Block = &comment.List{}
	var _ comment.Block = &comment.Paragraph{}

	var _ comment.Text = comment.Plain("x")
	var _ comment.Text = comment.Italic("y")
	var _ comment.Text = &comment.Link{}
	var _ comment.Text = &comment.DocLink{}

	d := &comment.Doc{Content: []comment.Block{&comment.Paragraph{Text: []comment.Text{comment.Plain("ok")}}}}
	if len(d.Content) != 1 {
		t.Fatalf("Doc content len = %d, want 1", len(d.Content))
	}

	_ = &comment.LinkDef{Text: "x", URL: "y", Used: true}
	_ = &comment.ListItem{Number: "1", Content: []comment.Block{&comment.Paragraph{Text: []comment.Text{comment.Plain("item")}}}}

	if strings.TrimSpace(string((&comment.Printer{}).Text(d))) == "" {
		t.Fatal("text output should not be blank")
	}
}
