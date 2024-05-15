; ModuleID = 'main'
source_filename = "main"

%"github.com/goplus/llgo/internal/runtime.iface" = type { ptr, ptr }
%"github.com/goplus/llgo/internal/runtime.Slice" = type { ptr, i64, i64 }

@"main.init$guard" = global ptr null
@__llgo_argc = global ptr null
@__llgo_argv = global ptr null
@0 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

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

define void @main(i32 %0, ptr %1) {
_llgo_0:
  store i32 %0, ptr @__llgo_argc, align 4
  store ptr %1, ptr @__llgo_argv, align 8
  call void @"github.com/goplus/llgo/internal/runtime.init"()
  call void @main.init()
  %2 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 48)
  %3 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %2, i64 0
  %4 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 2)
  %5 = call %"github.com/goplus/llgo/internal/runtime.iface" @"github.com/goplus/llgo/internal/runtime.MakeAnyInt"(ptr %4, i64 1)
  store %"github.com/goplus/llgo/internal/runtime.iface" %5, ptr %3, align 8
  %6 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %2, i64 1
  %7 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 2)
  %8 = call %"github.com/goplus/llgo/internal/runtime.iface" @"github.com/goplus/llgo/internal/runtime.MakeAnyInt"(ptr %7, i64 2)
  store %"github.com/goplus/llgo/internal/runtime.iface" %8, ptr %6, align 8
  %9 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %2, i64 2
  %10 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 2)
  %11 = call %"github.com/goplus/llgo/internal/runtime.iface" @"github.com/goplus/llgo/internal/runtime.MakeAnyInt"(ptr %10, i64 3)
  store %"github.com/goplus/llgo/internal/runtime.iface" %11, ptr %9, align 8
  %12 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr %2, i64 16, i64 3, i64 0, i64 3, i64 3)
  call void @main.test(%"github.com/goplus/llgo/internal/runtime.Slice" %12)
  ret void
}

define void @main.test(%"github.com/goplus/llgo/internal/runtime.Slice" %0) {
_llgo_0:
  %1 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %0, 1
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_2, %_llgo_0
  %2 = phi i64 [ -1, %_llgo_0 ], [ %3, %_llgo_2 ]
  %3 = add i64 %2, 1
  %4 = icmp slt i64 %3, %1
  br i1 %4, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  %5 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %0, 0
  %6 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %5, i64 %3
  %7 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %6, align 8
  %8 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 2)
  %9 = call i64 @"github.com/goplus/llgo/internal/runtime.I2Int"(%"github.com/goplus/llgo/internal/runtime.iface" %7, ptr %8)
  %10 = call i32 (ptr, ...) @printf(ptr @0, i64 %9)
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_1
  ret void
}

declare void @"github.com/goplus/llgo/internal/runtime.init"()

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64)

declare %"github.com/goplus/llgo/internal/runtime.iface" @"github.com/goplus/llgo/internal/runtime.MakeAnyInt"(ptr, i64)

declare %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr, i64, i64, i64, i64, i64)

declare i64 @"github.com/goplus/llgo/internal/runtime.I2Int"(%"github.com/goplus/llgo/internal/runtime.iface", ptr)

declare i32 @printf(ptr, ...)
