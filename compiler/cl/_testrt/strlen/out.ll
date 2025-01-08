; ModuleID = 'main'
source_filename = "main"

%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }

@"github.com/goplus/llgo/runtime/internal/runtime.cgoAlwaysFalse" = external global i1, align 1
@main.format = global [10 x i8] zeroinitializer, align 1
@"main.init$guard" = global i1 false, align 1
@__llgo_argc = global i32 0, align 4
@__llgo_argv = global ptr null, align 8

define ptr @main._Cgo_ptr(ptr %0) {
_llgo_0:
  ret ptr %0
}

declare void @runtime.cgoUse(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

declare void @main._cgoCheckResult(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

define void @main.init() {
_llgo_0:
  %0 = load i1, ptr @"main.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"main.init$guard", align 1
  call void @syscall.init()
  store i8 72, ptr @main.format, align 1
  store i8 101, ptr getelementptr inbounds (i8, ptr @main.format, i64 1), align 1
  store i8 108, ptr getelementptr inbounds (i8, ptr @main.format, i64 2), align 1
  store i8 108, ptr getelementptr inbounds (i8, ptr @main.format, i64 3), align 1
  store i8 111, ptr getelementptr inbounds (i8, ptr @main.format, i64 4), align 1
  store i8 32, ptr getelementptr inbounds (i8, ptr @main.format, i64 5), align 1
  store i8 37, ptr getelementptr inbounds (i8, ptr @main.format, i64 6), align 1
  store i8 100, ptr getelementptr inbounds (i8, ptr @main.format, i64 7), align 1
  store i8 10, ptr getelementptr inbounds (i8, ptr @main.format, i64 8), align 1
  store i8 0, ptr getelementptr inbounds (i8, ptr @main.format, i64 9), align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define i32 @main(i32 %0, ptr %1) {
_llgo_0:
  store i32 %0, ptr @__llgo_argc, align 4
  store ptr %1, ptr @__llgo_argv, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.init"()
  call void @main.init()
  %2 = call i32 @strlen(ptr @main.format)
  call void (ptr, ...) @printf(ptr @main.format, i32 %2)
  ret i32 0
}

declare void @syscall.init()

declare void @"github.com/goplus/llgo/runtime/internal/runtime.init"()

declare i32 @strlen(ptr)

declare void @printf(ptr, ...)
