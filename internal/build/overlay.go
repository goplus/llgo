package build

import (
	_ "embed"
)

//go:embed _overlay/go/parser/resolver.go
var go_parser_resolver string

var overlayFiles = map[string]string{
	"math/exp_amd64.go":     "package math;",
	"go/parser/resolver.go": go_parser_resolver,
}
