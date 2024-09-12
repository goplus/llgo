package genpkg

import (
	goast "go/ast"
	"strings"
)

type FuncNameType string

func toTitle(s string) string {
	return strings.ToUpper(s[:1]) + strings.ToLower(s[1:])
}

func toGoFuncName(funcName string) string {
	subs := strings.Split(string(funcName), "_")
	name := ""
	for _, sub := range subs {
		name += toTitle(sub)
	}
	return name
}

func NewFuncDocComments(funcName string, goFuncName string) *goast.CommentGroup {
	txt := "\n//go:linkname " + goFuncName + " " + "C." + funcName
	comment := goast.Comment{Text: txt}
	commentGroup := goast.CommentGroup{List: []*goast.Comment{&comment}}
	return &commentGroup
}
