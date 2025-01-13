; ModuleID = 'github.com/goplus/llgo/compiler/cl/_testdata/varinit'
source_filename = "github.com/goplus/llgo/compiler/cl/_testdata/varinit"

@"github.com/goplus/llgo/compiler/cl/_testdata/varinit.a" = global i64 0, align 8
@"github.com/goplus/llgo/compiler/cl/_testdata/varinit.init$guard" = global i1 false, align 1

define void @"github.com/goplus/llgo/compiler/cl/_testdata/varinit.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/compiler/cl/_testdata/varinit.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/compiler/cl/_testdata/varinit.init$guard", align 1
  store i64 100, ptr @"github.com/goplus/llgo/compiler/cl/_testdata/varinit.a", align 4
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/compiler/cl/_testdata/varinit.main"() {
_llgo_0:
  %0 = load i64, ptr @"github.com/goplus/llgo/compiler/cl/_testdata/varinit.a", align 4
  %1 = add i64 %0, 1
  store i64 %1, ptr @"github.com/goplus/llgo/compiler/cl/_testdata/varinit.a", align 4
  %2 = load i64, ptr @"github.com/goplus/llgo/compiler/cl/_testdata/varinit.a", align 4
  ret void
}
