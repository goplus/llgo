; ModuleID = 'github.com/goplus/llgo/cl/_testgo/tplocaltype'
source_filename = "github.com/goplus/llgo/cl/_testgo/tplocaltype"

@"github.com/goplus/llgo/cl/_testgo/tplocaltype.init$guard" = global i1 false, align 1

define void @"github.com/goplus/llgo/cl/_testgo/tplocaltype.init"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testgo/tplocaltype.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testgo/tplocaltype.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/tplocaltype.main"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %1 = call i64 @"github.com/goplus/llgo/cl/_testgo/tplocaltype.use1"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %0)
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %3 = call i64 @"github.com/goplus/llgo/cl/_testgo/tplocaltype.use2"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %2)
  ret void
}

define i64 @"github.com/goplus/llgo/cl/_testgo/tplocaltype.use1"() {
_llgo_0:
  %0 = call i64 @"github.com/goplus/llgo/cl/_testgo/tplocaltype.id[github.com/goplus/llgo/cl/_testgo/tplocaltype.T.0.1]"(i64 1)
  ret i64 %0
}

define i64 @"github.com/goplus/llgo/cl/_testgo/tplocaltype.use2"() {
_llgo_0:
  %0 = call i64 @"github.com/goplus/llgo/cl/_testgo/tplocaltype.id[github.com/goplus/llgo/cl/_testgo/tplocaltype.T.0.2]"(i64 2)
  ret i64 %0
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr)

define linkonce i64 @"github.com/goplus/llgo/cl/_testgo/tplocaltype.id[github.com/goplus/llgo/cl/_testgo/tplocaltype.T.0.1]"(i64 %0) {
_llgo_0:
  ret i64 %0
}

define linkonce i64 @"github.com/goplus/llgo/cl/_testgo/tplocaltype.id[github.com/goplus/llgo/cl/_testgo/tplocaltype.T.0.2]"(i64 %0) {
_llgo_0:
  ret i64 %0
}
