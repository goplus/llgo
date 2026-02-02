; ModuleID = 'github.com/goplus/llgo/cl/_testcall/ptrmethodval'
source_filename = "github.com/goplus/llgo/cl/_testcall/ptrmethodval"

%"github.com/goplus/llgo/cl/_testcall/ptrmethodval.S" = type { i64 }

@"github.com/goplus/llgo/cl/_testcall/ptrmethodval.init$guard" = global i1 false, align 1

define i64 @"github.com/goplus/llgo/cl/_testcall/ptrmethodval.(*S).Add"(ptr %0, i64 %1) {
_llgo_0:
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testcall/ptrmethodval.S", ptr %0, i32 0, i32 0
  %3 = load i64, ptr %2, align 4
  %4 = add i64 %3, %1
  ret i64 %4
}

define void @"github.com/goplus/llgo/cl/_testcall/ptrmethodval.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testcall/ptrmethodval.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testcall/ptrmethodval.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testcall/ptrmethodval.main"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testcall/ptrmethodval.S", ptr %0, i32 0, i32 0
  store i64 5, ptr %1, align 4
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %3 = getelementptr inbounds { ptr, i64, ptr }, ptr %2, i32 0, i32 0
  store ptr @"github.com/goplus/llgo/cl/_testcall/ptrmethodval.(*S).Add$bound", ptr %3, align 8
  %4 = getelementptr inbounds { ptr, i64, ptr }, ptr %2, i32 0, i32 1
  store i64 1, ptr %4, align 4
  %5 = getelementptr inbounds { ptr, i64, ptr }, ptr %2, i32 0, i32 2
  store ptr %0, ptr %5, align 8
  %6 = load ptr, ptr %2, align 8
  %7 = getelementptr i8, ptr %2, i64 16
  call void asm sideeffect "mov x26, $0", "r,~{x26},~{memory}"(ptr %7)
  %8 = call i64 %6(i64 7)
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

define i64 @"github.com/goplus/llgo/cl/_testcall/ptrmethodval.(*S).Add$bound"(i64 %0) {
_llgo_0:
  %1 = call ptr asm sideeffect "mov $0, x26", "=r,~{memory}"()
  %2 = load { ptr }, ptr %1, align 8
  %3 = extractvalue { ptr } %2, 0
  %4 = call i64 @"github.com/goplus/llgo/cl/_testcall/ptrmethodval.(*S).Add"(ptr %3, i64 %0)
  ret i64 %4
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)
