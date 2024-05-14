; ModuleID = 'main'
source_filename = "main"

%"github.com/goplus/llgo/internal/runtime.iface" = type { ptr, ptr }
%"github.com/goplus/llgo/internal/runtime.Slice" = type { ptr, i64, i64 }

@"main.init$guard" = global ptr null
@__llgo_argc = global ptr null
@__llgo_argv = global ptr null
@runtime.type.int = linkonce_odr constant { i64, i64, i32, i8, i8, i8, i8, ptr, i64, i32, i32 } { i64 8, i64 0, i32 0, i8 0, i8 0, i8 0, i8 2, ptr @"github.com/goplus/llgo/internal/runtime.EqualBasic", i64 0, i32 0, i32 0 }
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

define i32 @main(i32 %0, ptr %1) {
_llgo_0:
  store i32 %0, ptr @__llgo_argc, align 4
  store ptr %1, ptr @__llgo_argv, align 8
  call void @"github.com/goplus/llgo/internal/runtime.init"()
  call void @main.init()
  %2 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 48)
  %3 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %2, i64 0
  %4 = call %"github.com/goplus/llgo/internal/runtime.iface" @"github.com/goplus/llgo/internal/runtime.MakeAnyIntptr"(ptr @runtime.type.int, i64 1)
  store %"github.com/goplus/llgo/internal/runtime.iface" %4, ptr %3, align 8
  %5 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %2, i64 1
  %6 = call %"github.com/goplus/llgo/internal/runtime.iface" @"github.com/goplus/llgo/internal/runtime.MakeAnyIntptr"(ptr @runtime.type.int, i64 2)
  store %"github.com/goplus/llgo/internal/runtime.iface" %6, ptr %5, align 8
  %7 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %2, i64 2
  %8 = call %"github.com/goplus/llgo/internal/runtime.iface" @"github.com/goplus/llgo/internal/runtime.MakeAnyIntptr"(ptr @runtime.type.int, i64 3)
  store %"github.com/goplus/llgo/internal/runtime.iface" %8, ptr %7, align 8
  %9 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr %2, i64 16, i64 3, i64 0, i64 3, i64 3)
  call void @main.test(%"github.com/goplus/llgo/internal/runtime.Slice" %9)
  ret i32 0
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
  %5 = icmp slt i64 %3, 0
  call void @"github.com/goplus/llgo/internal/runtime.AssertIndexRange"(i1 %5)
  %6 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %0, 0
  %7 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %6, i64 %3
  %8 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %7, align 8
  %9 = call i64 @"github.com/goplus/llgo/internal/runtime.I2Int"(%"github.com/goplus/llgo/internal/runtime.iface" %8, ptr @runtime.type.int)
  %10 = call i32 (ptr, ...) @printf(ptr @0, i64 %9)
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_1
  ret void
}

declare void @"github.com/goplus/llgo/internal/runtime.init"()

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64)

declare %"github.com/goplus/llgo/internal/runtime.iface" @"github.com/goplus/llgo/internal/runtime.MakeAnyIntptr"(ptr, i64)

declare i1 @"github.com/goplus/llgo/internal/runtime.EqualBasic"(ptr, ptr)

declare %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr, i64, i64, i64, i64, i64)

declare void @"github.com/goplus/llgo/internal/runtime.AssertIndexRange"(i1)

declare i64 @"github.com/goplus/llgo/internal/runtime.I2Int"(%"github.com/goplus/llgo/internal/runtime.iface", ptr)

declare i32 @printf(ptr, ...)
