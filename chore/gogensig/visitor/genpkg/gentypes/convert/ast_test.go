package convert_test

import (
	goast "go/ast"
	"testing"

	"github.com/goplus/llgo/chore/gogensig/visitor/genpkg/gentypes/convert"
	"github.com/goplus/llgo/chore/llcppg/ast"
)

func TestConvertCommentGroupOK(t *testing.T) {
	comment := &ast.Comment{Text: "Foo comment"}
	commentGroup := &ast.CommentGroup{List: []*ast.Comment{comment}}
	var goCommentNode goast.Node = convert.CommentGroup(commentGroup).CommentGroup
	_, ok := goCommentNode.(*goast.CommentGroup)
	if !ok {
		t.Error("convert ast.CommentGroup to goast.CommentGroup fail")
	}
}

func TestAddCommentOK(t *testing.T) {
	comment := &ast.Comment{Text: "Foo comment"}
	commentGroup := &ast.CommentGroup{List: []*ast.Comment{comment}}
	convertCommentGroup := convert.CommentGroup(commentGroup)
	err := convertCommentGroup.AddComment(&goast.Comment{Text: "Good"})
	if err != nil {
		t.Error(err)
	}
}

func TestAddCommentError(t *testing.T) {
	comment := &ast.Comment{Text: "Foo comment"}
	commentGroup := &ast.CommentGroup{List: []*ast.Comment{comment}}
	convertCommentGroup := convert.CommentGroup(commentGroup)
	err := convertCommentGroup.AddComment(nil)
	if err == nil {
		t.Error("expect a error")
	}
}

func TestAddCommentGroupOK(t *testing.T) {
	comment := &ast.Comment{Text: "Foo comment"}
	commentGroup := &ast.CommentGroup{List: []*ast.Comment{comment}}
	convertCommentGroup := convert.CommentGroup(commentGroup)
	err := convertCommentGroup.AddCommentGroup(&goast.CommentGroup{
		List: []*goast.Comment{{Text: "Good"}},
	})
	if err != nil {
		t.Error(err)
	}
}

func TestAddCommentGroupError(t *testing.T) {
	comment := &ast.Comment{Text: "Foo comment"}
	commentGroup := &ast.CommentGroup{List: []*ast.Comment{comment}}
	convertCommentGroup := convert.CommentGroup(commentGroup)
	err := convertCommentGroup.AddCommentGroup(&goast.CommentGroup{
		List: []*goast.Comment{},
	})
	if err == nil {
		t.Error("expect a error")
	}
}
