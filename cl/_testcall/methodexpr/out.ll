; ModuleID = 'github.com/goplus/llgo/cl/_testcall/methodexpr'
source_filename = "github.com/goplus/llgo/cl/_testcall/methodexpr"

%"github.com/goplus/llgo/cl/_testcall/methodexpr.S" = type { i64 }

@"github.com/goplus/llgo/cl/_testcall/methodexpr.init$guard" = global i1 false, align 1

define i64 @"github.com/goplus/llgo/cl/_testcall/methodexpr.(*S).Add"(ptr %0, i64 %1) {
_llgo_0:
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testcall/methodexpr.S", ptr %0, i32 0, i32 0
  %3 = load i64, ptr %2, align 4
  %4 = add i64 %3, %1
  ret i64 %4
}

define void @"github.com/goplus/llgo/cl/_testcall/methodexpr.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testcall/methodexpr.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testcall/methodexpr.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testcall/methodexpr.main"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testcall/methodexpr.S", ptr %0, i32 0, i32 0
  store i64 5, ptr %1, align 4
  %2 = call i64 @"github.com/goplus/llgo/cl/_testcall/methodexpr.(*S).Add$thunk"(ptr %0, i64 8)
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

define i64 @"github.com/goplus/llgo/cl/_testcall/methodexpr.(*S).Add$thunk"(ptr %0, i64 %1) {
_llgo_0:
  %2 = call i64 @"github.com/goplus/llgo/cl/_testcall/methodexpr.(*S).Add"(ptr %0, i64 %1)
  ret i64 %2
}
