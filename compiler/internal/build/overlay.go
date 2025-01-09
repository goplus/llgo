package build

import (
	_ "embed"
)

//go:embed _overlay/go/parser/resolver.go
var go_parser_resolver string

//go:embed _overlay/net/textproto/textproto.go
var net_textproto string

var overlayFiles = map[string]string{
	"math/exp_amd64.go":          "package math;",
	"go/parser/resolver.go":      go_parser_resolver,
	"net/textproto/textproto.go": net_textproto,
}
