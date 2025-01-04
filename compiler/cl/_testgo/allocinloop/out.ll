; ModuleID = 'main'
source_filename = "main"

%"github.com/goplus/llgo/internal/runtime.String" = type { ptr, i64 }

@"main.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [5 x i8] c"hello", align 1
@__llgo_argc = global i32 0, align 4
@__llgo_argv = global ptr null, align 8

define i64 @main.Foo(%"github.com/goplus/llgo/internal/runtime.String" %0) {
_llgo_0:
  %1 = extractvalue %"github.com/goplus/llgo/internal/runtime.String" %0, 1
  ret i64 %1
}

define void @main.Test() {
_llgo_0:
  br label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %0 = call i64 @main.Foo(%"github.com/goplus/llgo/internal/runtime.String" { ptr @0, i64 5 })
  %1 = add i64 %3, %0
  %2 = add i64 %4, 1
  br label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_3
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %3)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  ret void

_llgo_3:                                          ; preds = %_llgo_1, %_llgo_0
  %3 = phi i64 [ 0, %_llgo_0 ], [ %1, %_llgo_1 ]
  %4 = phi i64 [ 0, %_llgo_0 ], [ %2, %_llgo_1 ]
  %5 = icmp slt i64 %4, 10000000
  br i1 %5, label %_llgo_1, label %_llgo_2
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
  call void @"github.com/goplus/llgo/internal/runtime.init"()
  call void @main.init()
  call void @main.Test()
  ret i32 0
}

declare void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64)

declare void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/internal/runtime.init"()
