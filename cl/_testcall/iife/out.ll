; ModuleID = 'github.com/goplus/llgo/cl/_testcall/iife'
source_filename = "github.com/goplus/llgo/cl/_testcall/iife"

@"github.com/goplus/llgo/cl/_testcall/iife.init$guard" = global i1 false, align 1

define void @"github.com/goplus/llgo/cl/_testcall/iife.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testcall/iife.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testcall/iife.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testcall/iife.main"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  store i64 10, ptr %0, align 4
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %2 = getelementptr inbounds { ptr, i64, ptr }, ptr %1, i32 0, i32 0
  store ptr @"github.com/goplus/llgo/cl/_testcall/iife.main$1", ptr %2, align 8
  %3 = getelementptr inbounds { ptr, i64, ptr }, ptr %1, i32 0, i32 1
  store i64 1, ptr %3, align 4
  %4 = getelementptr inbounds { ptr, i64, ptr }, ptr %1, i32 0, i32 2
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %1, align 8
  %6 = getelementptr i8, ptr %1, i64 16
  call void asm sideeffect "mov x26, $0", "r,~{x26}"(ptr %6)
  %7 = call i64 %5(i64 5)
  ret void
}

define i64 @"github.com/goplus/llgo/cl/_testcall/iife.main$1"(i64 %0) {
_llgo_0:
  %1 = call ptr asm sideeffect "mov $0, x26", "=r"()
  %2 = load { ptr }, ptr %1, align 8
  %3 = extractvalue { ptr } %2, 0
  %4 = load i64, ptr %3, align 4
  %5 = add i64 %4, %0
  ret i64 %5
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)
