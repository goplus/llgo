package convert

import (
	goast "go/ast"
)

const (
	TYPEC = "// llgo:type C"
)

func NewFuncDocComments(funcName string, goFuncName string) *goast.CommentGroup {
	txt := "//go:linkname " + goFuncName + " " + "C." + funcName
	comment := goast.Comment{Text: txt}
	commentGroup := goast.CommentGroup{List: []*goast.Comment{&comment}}
	return &commentGroup
}

func NewTypecDocComments() *goast.CommentGroup {
	return &goast.CommentGroup{
		List: []*goast.Comment{
			{Text: TYPEC},
		}}
}
