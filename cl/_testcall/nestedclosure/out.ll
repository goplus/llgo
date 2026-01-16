; ModuleID = 'github.com/goplus/llgo/cl/_testcall/nestedclosure'
source_filename = "github.com/goplus/llgo/cl/_testcall/nestedclosure"

@"github.com/goplus/llgo/cl/_testcall/nestedclosure.init$guard" = global i1 false, align 1

define void @"github.com/goplus/llgo/cl/_testcall/nestedclosure.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testcall/nestedclosure.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testcall/nestedclosure.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testcall/nestedclosure.main"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  store i64 1, ptr %0, align 4
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %2 = getelementptr inbounds { ptr }, ptr %1, i32 0, i32 0
  store ptr %0, ptr %2, align 8
  %3 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testcall/nestedclosure.main$1", ptr undef }, ptr %1, 1
  %4 = extractvalue { ptr, ptr } %3, 1
  %5 = extractvalue { ptr, ptr } %3, 0
  %6 = call ptr asm sideeffect "mov $0, x26", "=r,~{memory}"()
  call void asm sideeffect "mov x26, $0", "r,~{x26},~{memory}"(ptr %4)
  %7 = call { ptr, ptr } %5()
  call void asm sideeffect "mov x26, $0", "r,~{x26},~{memory}"(ptr %6)
  %8 = extractvalue { ptr, ptr } %7, 1
  %9 = extractvalue { ptr, ptr } %7, 0
  %10 = call ptr asm sideeffect "mov $0, x26", "=r,~{memory}"()
  call void asm sideeffect "mov x26, $0", "r,~{x26},~{memory}"(ptr %8)
  %11 = call i64 %9()
  call void asm sideeffect "mov x26, $0", "r,~{x26},~{memory}"(ptr %10)
  ret void
}

define { ptr, ptr } @"github.com/goplus/llgo/cl/_testcall/nestedclosure.main$1"() {
_llgo_0:
  %0 = call ptr asm sideeffect "mov $0, x26", "=r,~{memory}"()
  %1 = load { ptr }, ptr %0, align 8
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  store i64 2, ptr %2, align 4
  %3 = extractvalue { ptr } %1, 0
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %5 = getelementptr inbounds { ptr, ptr }, ptr %4, i32 0, i32 0
  store ptr %3, ptr %5, align 8
  %6 = getelementptr inbounds { ptr, ptr }, ptr %4, i32 0, i32 1
  store ptr %2, ptr %6, align 8
  %7 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testcall/nestedclosure.main$1$1", ptr undef }, ptr %4, 1
  ret { ptr, ptr } %7
}

define i64 @"github.com/goplus/llgo/cl/_testcall/nestedclosure.main$1$1"() {
_llgo_0:
  %0 = call ptr asm sideeffect "mov $0, x26", "=r,~{memory}"()
  %1 = load { ptr, ptr }, ptr %0, align 8
  %2 = extractvalue { ptr, ptr } %1, 0
  %3 = load i64, ptr %2, align 4
  %4 = extractvalue { ptr, ptr } %1, 1
  %5 = load i64, ptr %4, align 4
  %6 = add i64 %3, %5
  ret i64 %6
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)
