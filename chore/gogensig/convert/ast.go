/*
This file is used to convert ast
from "github.com/goplus/llgo/chore/llcppg/ast" to "go/ast"
*/
package convert

import (
	"fmt"
	goast "go/ast"
	"go/token"

	"github.com/goplus/llgo/chore/llcppg/ast"
)

type ConvertComment struct {
	*goast.Comment
}

func Comment(doc *ast.Comment) *ConvertComment {
	return &ConvertComment{
		Comment: &goast.Comment{
			Slash: token.NoPos, Text: doc.Text,
		},
	}
}

type ConvertCommentGroup struct {
	*goast.CommentGroup
}

func CommentGroup(doc *ast.CommentGroup) *ConvertCommentGroup {
	goDoc := &goast.CommentGroup{}
	goDoc.List = make([]*goast.Comment, 0)
	if doc != nil && doc.List != nil {
		for _, comment := range doc.List {
			goDoc.List = append(goDoc.List, Comment(comment).Comment)
		}
	}
	return &ConvertCommentGroup{CommentGroup: goDoc}
}

func (p *ConvertCommentGroup) AddComment(comment *goast.Comment) error {
	if comment == nil || len(comment.Text) <= 0 {
		return fmt.Errorf("%s", "add nil or empty comment")
	}
	p.CommentGroup.List = append(p.CommentGroup.List,
		[]*goast.Comment{
			comment,
		}...,
	)
	return nil
}

func (p *ConvertCommentGroup) AddCommentGroup(doc *goast.CommentGroup) error {
	if doc == nil || doc.List == nil || len(doc.List) <= 0 {
		return fmt.Errorf("%s", "add nil or empty commentgroup")
	}
	p.CommentGroup.List = append(p.CommentGroup.List, doc.List...)
	return nil
}
