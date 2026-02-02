; ModuleID = 'github.com/goplus/llgo/cl/_testcall/valmethodval'
source_filename = "github.com/goplus/llgo/cl/_testcall/valmethodval"

%"github.com/goplus/llgo/cl/_testcall/valmethodval.S" = type { i64 }

@"github.com/goplus/llgo/cl/_testcall/valmethodval.init$guard" = global i1 false, align 1

define i64 @"github.com/goplus/llgo/cl/_testcall/valmethodval.S.Inc"(%"github.com/goplus/llgo/cl/_testcall/valmethodval.S" %0, i64 %1) {
_llgo_0:
  %2 = alloca %"github.com/goplus/llgo/cl/_testcall/valmethodval.S", align 8
  call void @llvm.memset(ptr %2, i8 0, i64 8, i1 false)
  store %"github.com/goplus/llgo/cl/_testcall/valmethodval.S" %0, ptr %2, align 4
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testcall/valmethodval.S", ptr %2, i32 0, i32 0
  %4 = load i64, ptr %3, align 4
  %5 = add i64 %4, %1
  ret i64 %5
}

define i64 @"github.com/goplus/llgo/cl/_testcall/valmethodval.(*S).Inc"(ptr %0, i64 %1) {
_llgo_0:
  %2 = load %"github.com/goplus/llgo/cl/_testcall/valmethodval.S", ptr %0, align 4
  %3 = call i64 @"github.com/goplus/llgo/cl/_testcall/valmethodval.S.Inc"(%"github.com/goplus/llgo/cl/_testcall/valmethodval.S" %2, i64 %1)
  ret i64 %3
}

define void @"github.com/goplus/llgo/cl/_testcall/valmethodval.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testcall/valmethodval.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testcall/valmethodval.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testcall/valmethodval.main"() {
_llgo_0:
  %0 = alloca %"github.com/goplus/llgo/cl/_testcall/valmethodval.S", align 8
  call void @llvm.memset(ptr %0, i8 0, i64 8, i1 false)
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testcall/valmethodval.S", ptr %0, i32 0, i32 0
  store i64 10, ptr %1, align 4
  %2 = load %"github.com/goplus/llgo/cl/_testcall/valmethodval.S", ptr %0, align 4
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %4 = getelementptr inbounds { ptr, i64, %"github.com/goplus/llgo/cl/_testcall/valmethodval.S" }, ptr %3, i32 0, i32 0
  store ptr @"github.com/goplus/llgo/cl/_testcall/valmethodval.S.Inc$bound", ptr %4, align 8
  %5 = getelementptr inbounds { ptr, i64, %"github.com/goplus/llgo/cl/_testcall/valmethodval.S" }, ptr %3, i32 0, i32 1
  store i64 1, ptr %5, align 4
  %6 = getelementptr inbounds { ptr, i64, %"github.com/goplus/llgo/cl/_testcall/valmethodval.S" }, ptr %3, i32 0, i32 2
  store %"github.com/goplus/llgo/cl/_testcall/valmethodval.S" %2, ptr %6, align 4
  %7 = load ptr, ptr %3, align 8
  %8 = getelementptr i8, ptr %3, i64 16
  call void asm sideeffect "mov x26, $0", "r,~{x26}"(ptr %8)
  %9 = call i64 %7(i64 3)
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

define i64 @"github.com/goplus/llgo/cl/_testcall/valmethodval.S.Inc$bound"(i64 %0) {
_llgo_0:
  %1 = call ptr asm sideeffect "mov $0, x26", "=r"()
  %2 = load { %"github.com/goplus/llgo/cl/_testcall/valmethodval.S" }, ptr %1, align 4
  %3 = extractvalue { %"github.com/goplus/llgo/cl/_testcall/valmethodval.S" } %2, 0
  %4 = call i64 @"github.com/goplus/llgo/cl/_testcall/valmethodval.S.Inc"(%"github.com/goplus/llgo/cl/_testcall/valmethodval.S" %3, i64 %0)
  ret i64 %4
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
