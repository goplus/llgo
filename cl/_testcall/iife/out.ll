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
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %2 = getelementptr inbounds { ptr }, ptr %1, i32 0, i32 0
  store ptr %0, ptr %2, align 8
  %3 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testcall/iife.main$1", ptr undef }, ptr %1, 1
  %4 = extractvalue { ptr, ptr } %3, 1
  %5 = extractvalue { ptr, ptr } %3, 0
  %6 = call ptr asm sideeffect "", "={x26},~{memory}"()
  %7 = call ptr asm sideeffect "", "={x26},0,~{memory}"(ptr %4)
  %8 = call i64 %5(i64 5)
  %9 = call ptr asm sideeffect "", "={x26},0,~{memory}"(ptr %6)
  ret void
}

define i64 @"github.com/goplus/llgo/cl/_testcall/iife.main$1"(i64 %0) {
_llgo_0:
  %1 = call ptr asm sideeffect "", "={x26},~{memory}"()
  %2 = load { ptr }, ptr %1, align 8
  %3 = extractvalue { ptr } %2, 0
  %4 = load i64, ptr %3, align 4
  %5 = add i64 %4, %0
  ret i64 %5
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)
