; ModuleID = 'github.com/goplus/llgo/compiler/cl/_testdata/apkg'
source_filename = "github.com/goplus/llgo/compiler/cl/_testdata/apkg"

@"github.com/goplus/llgo/compiler/cl/_testdata/apkg.init$guard" = global i1 false, align 1

define double @"github.com/goplus/llgo/compiler/cl/_testdata/apkg.Max"(double %0, double %1) {
_llgo_0:
  %2 = fcmp ogt double %0, %1
  br i1 %2, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  ret double %0

_llgo_2:                                          ; preds = %_llgo_0
  ret double %1
}

define void @"github.com/goplus/llgo/compiler/cl/_testdata/apkg.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/compiler/cl/_testdata/apkg.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/compiler/cl/_testdata/apkg.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}
