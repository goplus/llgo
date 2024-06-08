; ModuleID = 'main'
source_filename = "main"

%"github.com/goplus/llgo/internal/runtime.String" = type { ptr, i64 }

@"main.init$guard" = global ptr null
@__llgo_argc = global ptr null
@__llgo_argv = global ptr null
@0 = private unnamed_addr constant [17 x i8] c"?Hello, setjmp!\0A\00", align 1
@__stderrp = external global ptr
@1 = private unnamed_addr constant [11 x i8] c"exception:\00", align 1

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

define i32 @main(i32 %0, ptr %1) {
_llgo_0:
  store i32 %0, ptr @__llgo_argc, align 4
  store ptr %1, ptr @__llgo_argv, align 8
  call void @"github.com/goplus/llgo/internal/runtime.init"()
  call void @main.init()
  %2 = alloca i8, i64 196, align 1
  %3 = call i32 @sigsetjmp(ptr %2, i32 0)
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3, %_llgo_2
  ret i32 0

_llgo_2:                                          ; preds = %_llgo_0
  %5 = load ptr, ptr @__stderrp, align 8
  %6 = call i32 (ptr, ptr, ...) @fprintf(ptr %5, ptr getelementptr (i8, ptr @0, i64 1))
  call void @siglongjmp(ptr %2, i32 1)
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_0
  %7 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %8 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %7, i32 0, i32 0
  store ptr @1, ptr %8, align 8
  %9 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %7, i32 0, i32 1
  store i64 10, ptr %9, align 4
  %10 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %7, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %10)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  %11 = sext i32 %3 to i64
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %11)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_1
}

declare void @"github.com/goplus/llgo/internal/runtime.init"()

declare i32 @sigsetjmp(ptr, i32)

declare i32 @fprintf(ptr, ptr, ...)

declare void @siglongjmp(ptr, i32)

declare void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String")

declare void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64)
