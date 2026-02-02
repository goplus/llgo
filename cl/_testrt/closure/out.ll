; ModuleID = 'github.com/goplus/llgo/cl/_testrt/closure'
source_filename = "github.com/goplus/llgo/cl/_testrt/closure"

@"github.com/goplus/llgo/cl/_testrt/closure.init$guard" = global i1 false, align 1
@"__llgo_closure_const$github.com/goplus/llgo/cl/_testrt/closure.main$2" = private constant { ptr, i64 } { ptr @"github.com/goplus/llgo/cl/_testrt/closure.main$2", i64 0 }
@0 = private unnamed_addr constant [7 x i8] c"%d %d\0A\00", align 1
@1 = private unnamed_addr constant [7 x i8] c"%d %d\0A\00", align 1

define void @"github.com/goplus/llgo/cl/_testrt/closure.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/closure.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/closure.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/closure.main"() {
_llgo_0:
  call void @"github.com/goplus/llgo/cl/_testrt/closure.main$1"(i64 100, i64 200)
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  store ptr @"__llgo_closure_const$github.com/goplus/llgo/cl/_testrt/closure.main$2", ptr %0, align 8
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %2 = getelementptr inbounds { ptr, i64, ptr }, ptr %1, i32 0, i32 0
  store ptr @"github.com/goplus/llgo/cl/_testrt/closure.main$3", ptr %2, align 8
  %3 = getelementptr inbounds { ptr, i64, ptr }, ptr %1, i32 0, i32 1
  store i64 1, ptr %3, align 4
  %4 = getelementptr inbounds { ptr, i64, ptr }, ptr %1, i32 0, i32 2
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %1, align 8
  %6 = getelementptr i8, ptr %1, i64 16
  call void asm sideeffect "mov x26, $0", "r,~{x26},~{memory}"(ptr %6)
  call void %5()
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/closure.main$1"(i64 %0, i64 %1) {
_llgo_0:
  %2 = call i32 (ptr, ...) @printf(ptr @0, i64 %0, i64 %1)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/closure.main$2"(i64 %0, i64 %1) {
_llgo_0:
  %2 = call i32 (ptr, ...) @printf(ptr @1, i64 %0, i64 %1)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/closure.main$3"() {
_llgo_0:
  %0 = call ptr asm sideeffect "mov $0, x26", "=r,~{memory}"()
  %1 = load { ptr }, ptr %0, align 8
  %2 = extractvalue { ptr } %1, 0
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %3, i64 16
  call void asm sideeffect "mov x26, $0", "r,~{x26},~{memory}"(ptr %5)
  call void %4(i64 100, i64 200)
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare i32 @printf(ptr, ...)
