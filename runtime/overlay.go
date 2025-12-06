package runtime

import (
	_ "embed"
)

//go:embed _overlay/net/textproto/textproto.go
var net_textproto string

//go:embed _overlay/internal/sync/runtime.go
var internal_sync string

var OverlayFiles = map[string]string{
	"math/exp_amd64.go":          "package math;",
	"net/textproto/textproto.go": net_textproto,
	"internal/sync/runtime.go":   internal_sync,
}
