; ModuleID = 'main'
source_filename = "main"

@main.hello = global [7 x i8] zeroinitializer, align 1
@"main.init$guard" = global i1 false, align 1
@__llgo_argc = global i32 0, align 4
@__llgo_argv = global ptr null, align 8

define void @main.init() {
_llgo_0:
  %0 = load i1, ptr @"main.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"main.init$guard", align 1
  call void @"github.com/goplus/llgo/compiler/cl/_testdata/importpkg/stdio.init"()
  store i8 72, ptr @main.hello, align 1
  store i8 101, ptr getelementptr inbounds (i8, ptr @main.hello, i64 1), align 1
  store i8 108, ptr getelementptr inbounds (i8, ptr @main.hello, i64 2), align 1
  store i8 108, ptr getelementptr inbounds (i8, ptr @main.hello, i64 3), align 1
  store i8 111, ptr getelementptr inbounds (i8, ptr @main.hello, i64 4), align 1
  store i8 10, ptr getelementptr inbounds (i8, ptr @main.hello, i64 5), align 1
  store i8 0, ptr getelementptr inbounds (i8, ptr @main.hello, i64 6), align 1
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
  %2 = call i64 @"github.com/goplus/llgo/compiler/cl/_testdata/importpkg/stdio.Max"(i64 2, i64 100)
  call void (ptr, ...) @printf(ptr @main.hello)
  ret i32 0
}

declare void @"github.com/goplus/llgo/compiler/cl/_testdata/importpkg/stdio.init"()

declare void @"github.com/goplus/llgo/runtime/internal/runtime.init"()

declare i64 @"github.com/goplus/llgo/compiler/cl/_testdata/importpkg/stdio.Max"(i64, i64)

declare void @printf(ptr, ...)
