; ModuleID = 'main'
source_filename = "main"

@"main.init$guard" = global i1 false, align 1
@__llgo_argc = global i32 0, align 4
@__llgo_argv = global ptr null, align 8

define i64 @main.add(i64 %0, i64 %1) {
_llgo_0:
  %2 = add i64 %0, %1
  ret i64 %2
}

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
  call void @"github.com/goplus/llgo/runtime/internal/runtime.init"()
  call void @main.init()
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  store ptr @main.add, ptr %2, align 8
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  store ptr @"main.main$1", ptr %3, align 8
  %4 = load ptr, ptr %2, align 8
  %5 = icmp eq ptr @main.add, %4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %6 = load ptr, ptr %2, align 8
  %7 = load ptr, ptr %2, align 8
  %8 = icmp eq ptr %6, %7
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %9 = load ptr, ptr %3, align 8
  %10 = load ptr, ptr %3, align 8
  %11 = icmp eq ptr %9, %10
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %11)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret i32 0
}

define i64 @"main.main$1"(i64 %0, i64 %1) {
_llgo_0:
  %2 = add i64 %0, %1
  ret i64 %2
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.init"()

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)
