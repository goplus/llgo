; ModuleID = 'main'
source_filename = "main"

%"github.com/goplus/llgo/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/internal/runtime.String" = type { ptr, i64 }

@"main.init$guard" = global i1 false, align 1
@__llgo_argc = global i32 0, align 4
@__llgo_argv = global ptr null, align 8
@0 = private unnamed_addr constant [7 x i8] c"len > 0", align 1

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
  %2 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %3 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2, i32 0, i32 0
  store ptr null, ptr %3, align 8
  %4 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2, i32 0, i32 1
  store i64 0, ptr %4, align 4
  %5 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2, i32 0, i32 2
  store i64 0, ptr %5, align 4
  %6 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2, align 8
  %7 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %6, 1
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %7)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %8 = icmp sgt i64 %7, 0
  br i1 %8, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %9 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %10 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %9, i32 0, i32 0
  store ptr @0, ptr %10, align 8
  %11 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %9, i32 0, i32 1
  store i64 7, ptr %11, align 4
  %12 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %9, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %12)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret i32 0
}

declare void @"github.com/goplus/llgo/internal/runtime.init"()

declare void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64)

declare void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String")
