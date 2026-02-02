; ModuleID = 'github.com/goplus/llgo/cl/_testcall/freeclosure'
source_filename = "github.com/goplus/llgo/cl/_testcall/freeclosure"

@"github.com/goplus/llgo/cl/_testcall/freeclosure.init$guard" = global i1 false, align 1

define void @"github.com/goplus/llgo/cl/_testcall/freeclosure.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testcall/freeclosure.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testcall/freeclosure.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testcall/freeclosure.main"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/cl/_testcall/freeclosure.main$1"(i64 3)
  %1 = load ptr, ptr %0, align 8
  %2 = getelementptr i8, ptr %0, i64 16
  call void asm sideeffect "mov x26, $0", "r,~{x26}"(ptr %2)
  %3 = call i64 %1(i64 2)
  ret void
}

define ptr @"github.com/goplus/llgo/cl/_testcall/freeclosure.main$1"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  store i64 %0, ptr %1, align 4
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %3 = getelementptr inbounds { ptr, i64, ptr }, ptr %2, i32 0, i32 0
  store ptr @"github.com/goplus/llgo/cl/_testcall/freeclosure.main$1$1", ptr %3, align 8
  %4 = getelementptr inbounds { ptr, i64, ptr }, ptr %2, i32 0, i32 1
  store i64 1, ptr %4, align 4
  %5 = getelementptr inbounds { ptr, i64, ptr }, ptr %2, i32 0, i32 2
  store ptr %1, ptr %5, align 8
  %6 = alloca ptr, align 8
  store ptr %2, ptr %6, align 8
  %7 = load ptr, ptr %6, align 8
  ret ptr %7
}

define i64 @"github.com/goplus/llgo/cl/_testcall/freeclosure.main$1$1"(i64 %0) {
_llgo_0:
  %1 = call ptr asm sideeffect "mov $0, x26", "=r"()
  %2 = load { ptr }, ptr %1, align 8
  %3 = extractvalue { ptr } %2, 0
  %4 = load i64, ptr %3, align 4
  %5 = add i64 %0, %4
  ret i64 %5
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)
