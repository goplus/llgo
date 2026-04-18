package gotest

import (
	"os"
	"path/filepath"
	"reflect"
	"strings"
	"testing"

	"github.com/goplus/llgo/test/go/typeargpkg"
)

type genericReflectTuple[T any] struct {
	v T
}

type genericReflectFuture[T any] struct {
	v T
}

func TestGenericReflectTypeArgString(t *testing.T) {
	// llgo test runs a temporary binary named go.test-<random>. runtime.Compiler
	// still reports gc here, and LLGO_ROOT may also be present in docker go test.
	isLLGO := strings.HasPrefix(filepath.Base(os.Args[0]), "go.test-")
	cases := []struct {
		name     string
		got      string
		goWant   string
		llgoWant string
	}{
		{
			name:     "nested same-package type arg",
			got:      reflect.TypeOf(genericReflectFuture[genericReflectTuple[error]]{}).String(),
			goWant:   "gotest.genericReflectFuture[github.com/goplus/llgo/test/go.genericReflectTuple[error]]",
			llgoWant: "gotest.genericReflectFuture[gotest.genericReflectTuple[error]]",
		},
		{
			name:     "cross-package type arg",
			got:      reflect.TypeOf(genericReflectFuture[typeargpkg.Item]{}).String(),
			goWant:   "gotest.genericReflectFuture[github.com/goplus/llgo/test/go/typeargpkg.Item]",
			llgoWant: "gotest.genericReflectFuture[typeargpkg.Item]",
		},
		{
			name:     "composite type arg",
			got:      reflect.TypeOf(genericReflectFuture[*genericReflectTuple[error]]{}).String(),
			goWant:   "gotest.genericReflectFuture[*github.com/goplus/llgo/test/go.genericReflectTuple[error]]",
			llgoWant: "gotest.genericReflectFuture[*gotest.genericReflectTuple[error]]",
		},
	}

	for _, tc := range cases {
		want := tc.goWant
		if isLLGO {
			want = tc.llgoWant
		}
		if tc.got != want {
			t.Fatalf("%s: Type.String() = %q, want %q", tc.name, tc.got, want)
		}
	}
}
