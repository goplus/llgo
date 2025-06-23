; ModuleID = 'github.com/goplus/llgo/cl/_testdata/cpkg'
source_filename = "github.com/goplus/llgo/cl/_testdata/cpkg"

@"github.com/goplus/llgo/cl/_testdata/cpkg.init$guard" = global i1 false, align 1

define double @Double(double %0) {
_llgo_0:
  %1 = fmul double 2.000000e+00, %0
  ret double %1
}

define i64 @add(i64 %0, i64 %1) {
_llgo_0:
  %2 = call i64 @"github.com/goplus/llgo/cl/_testdata/cpkg.add"(i64 %0, i64 %1)
  ret i64 %2
}

define i64 @"github.com/goplus/llgo/cl/_testdata/cpkg.add"(i64 %0, i64 %1) {
_llgo_0:
  %2 = add i64 %0, %1
  ret i64 %2
}

define void @"github.com/goplus/llgo/cl/_testdata/cpkg.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testdata/cpkg.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testdata/cpkg.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}
