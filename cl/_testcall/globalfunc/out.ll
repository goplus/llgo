; ModuleID = 'github.com/goplus/llgo/cl/_testcall/globalfunc'
source_filename = "github.com/goplus/llgo/cl/_testcall/globalfunc"

@"github.com/goplus/llgo/cl/_testcall/globalfunc.init$guard" = global i1 false, align 1

define i64 @"github.com/goplus/llgo/cl/_testcall/globalfunc.globalAdd"(i64 %0, i64 %1) {
_llgo_0:
  %2 = add i64 %0, %1
  ret i64 %2
}

define void @"github.com/goplus/llgo/cl/_testcall/globalfunc.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testcall/globalfunc.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testcall/globalfunc.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testcall/globalfunc.main"() {
_llgo_0:
  %0 = call i64 @"github.com/goplus/llgo/cl/_testcall/globalfunc.globalAdd"(i64 1, i64 2)
  ret void
}
