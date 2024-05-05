; ModuleID = 'main'
source_filename = "main"

@"main.init$guard" = global ptr null
@__stderrp = external global ptr
@0 = private unnamed_addr constant [10 x i8] c"Hello %d\0A\00", align 1

define void @main.init() {
_llgo_0:
  %0 = load i1, ptr @"main.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"main.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @main() {
_llgo_0:
  call void @"github.com/goplus/llgo/internal/runtime.init"()
  call void @main.init()
  %0 = load ptr, ptr @__stderrp, align 8
  call void (ptr, ptr, ...) @fprintf(ptr %0, ptr @0, i64 100)
  ret void
}

declare void @"github.com/goplus/llgo/internal/runtime.init"()

declare void @fprintf(ptr, ptr, ...)
