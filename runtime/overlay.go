package runtime

import (
	_ "embed"
)

//go:embed _overlay/net/textproto/textproto.go
var net_textproto string

var OverlayFiles = map[string]string{
	"math/exp_amd64.go":          "package math;",
	"net/textproto/textproto.go": net_textproto,
}
