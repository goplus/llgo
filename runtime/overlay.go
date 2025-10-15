package runtime

import (
	_ "embed"
)

//go:embed _overlay/runtime/runtime.go
var fakeRuntime string

//go:embed _overlay/go/parser/resolver.go
var go_parser_resolver string

//go:embed _overlay/testing/testing.go
var testing_testing string

//go:embed _overlay/testing/testing_go123.go
var testing_testing_go123 string

//go:embed _overlay/testing/testing_go124.go
var testing_testing_go124 string

//go:embed _overlay/net/textproto/textproto.go
var net_textproto string

var OverlayFiles = map[string]string{
	"math/exp_amd64.go":          "package math;",
	"go/parser/resolver.go":      go_parser_resolver,
	"testing/testing.go":         testing_testing,
	"testing/testing_go123.go":   testing_testing_go123,
	"testing/testing_go124.go":   testing_testing_go124,
	"net/textproto/textproto.go": net_textproto,
	"runtime/runtime.go":         fakeRuntime,
}
