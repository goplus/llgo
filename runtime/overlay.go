package runtime

import (
	_ "embed"
)

//go:embed _overlay/net/textproto/textproto.go
var net_textproto string

//go:embed _overlay/math/exp_asm.go
var math_exp_asm string

//go:embed _overlay/math/exp2_asm.go
var math_exp2_asm string

//go:embed _overlay/math/exp_amd64.s
var math_exp_amd64_s string

//go:embed _overlay/math/exp_arm64.s
var math_exp_arm64_s string

//go:embed _overlay/math/modf_asm.go
var math_modf_asm string

//go:embed _overlay/math/modf_arm64.s
var math_modf_arm64_s string

//go:embed _overlay/internal/sync/runtime.go
var internal_sync string

var OverlayFiles = map[string]string{
	"math/exp_amd64.go":          "package math;",
	"math/exp_asm.go":            math_exp_asm,
	"math/exp2_asm.go":           math_exp2_asm,
	"math/exp_amd64.s":           math_exp_amd64_s,
	"math/exp_arm64.s":           math_exp_arm64_s,
	"math/modf_asm.go":           math_modf_asm,
	"math/modf_arm64.s":          math_modf_arm64_s,
	"net/textproto/textproto.go": net_textproto,
	"internal/sync/runtime.go":   internal_sync,
}
