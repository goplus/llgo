; ModuleID = 'github.com/goplus/llgo/compiler/cl/_testdata/untyped'
source_filename = "github.com/goplus/llgo/compiler/cl/_testdata/untyped"

@"github.com/goplus/llgo/compiler/cl/_testdata/untyped.a" = global double 0.000000e+00, align 8
@"github.com/goplus/llgo/compiler/cl/_testdata/untyped.init$guard" = global i1 false, align 1

define void @"github.com/goplus/llgo/compiler/cl/_testdata/untyped.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/compiler/cl/_testdata/untyped.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/compiler/cl/_testdata/untyped.init$guard", align 1
  store double 1.000000e+00, ptr @"github.com/goplus/llgo/compiler/cl/_testdata/untyped.a", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/compiler/cl/_testdata/untyped.main"() {
_llgo_0:
  br i1 false, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  store double 0.000000e+00, ptr @"github.com/goplus/llgo/compiler/cl/_testdata/untyped.a", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}
