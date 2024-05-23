; ModuleID = 'main'
source_filename = "main"

%"github.com/goplus/llgo/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/internal/runtime.String" = type { ptr, i64 }

@"main.init$guard" = global ptr null
@__llgo_argc = global ptr null
@__llgo_argv = global ptr null
@0 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@1 = private unnamed_addr constant [22 x i8] c"type assertion failed\00", align 1

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
  %3 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %2, i64 0
  %4 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 2)
  %5 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %6 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %5, i32 0, i32 0
  store ptr %4, ptr %6, align 8
  %7 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %5, i32 0, i32 1
  store ptr inttoptr (i64 1 to ptr), ptr %7, align 8
  %8 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %5, align 8
  store %"github.com/goplus/llgo/internal/runtime.eface" %8, ptr %3, align 8
  %9 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %2, i64 1
  %10 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 2)
  %11 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %12 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %11, i32 0, i32 0
  store ptr %10, ptr %12, align 8
  %13 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %11, i32 0, i32 1
  store ptr inttoptr (i64 2 to ptr), ptr %13, align 8
  %14 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %11, align 8
  store %"github.com/goplus/llgo/internal/runtime.eface" %14, ptr %9, align 8
  %15 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %2, i64 2
  %16 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 2)
  %17 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %18 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %17, i32 0, i32 0
  store ptr %16, ptr %18, align 8
  %19 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %17, i32 0, i32 1
  store ptr inttoptr (i64 3 to ptr), ptr %19, align 8
  %20 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %17, align 8
  store %"github.com/goplus/llgo/internal/runtime.eface" %20, ptr %15, align 8
  %21 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr %2, i64 16, i64 3, i64 0, i64 3, i64 3)
  call void @main.test(%"github.com/goplus/llgo/internal/runtime.Slice" %21)
  ret i32 0
}

define void @main.test(%"github.com/goplus/llgo/internal/runtime.Slice" %0) {
_llgo_0:
  %1 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %0, 1
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_4, %_llgo_0
  %2 = phi i64 [ -1, %_llgo_0 ], [ %3, %_llgo_2 ]
  %3 = add i64 %2, 1
  %4 = icmp slt i64 %3, %1
  br i1 %4, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  %5 = icmp slt i64 %3, 0
  call void @"github.com/goplus/llgo/internal/runtime.AssertIndexRange"(i1 %5)
  %6 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %0, 0
  %7 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %6, i64 %3
  %8 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %7, align 8
  %9 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %8, 0
  %10 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 2)
  %11 = icmp eq ptr %9, %10
  br i1 %11, label %_llgo_4, label %_llgo_5

_llgo_3:                                          ; preds = %_llgo_1
  ret void

_llgo_4:                                          ; preds = %_llgo_2
  %12 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %8, 1
  %13 = ptrtoint ptr %12 to i64
  %14 = call i32 (ptr, ...) @printf(ptr @0, i64 %13)
  br label %_llgo_1

_llgo_5:                                          ; preds = %_llgo_2
  %15 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %16 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %15, i32 0, i32 0
  store ptr @1, ptr %16, align 8
  %17 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %15, i32 0, i32 1
  store i64 21, ptr %17, align 4
  %18 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %15, align 8
  call void @"github.com/goplus/llgo/internal/runtime.TracePanic"(%"github.com/goplus/llgo/internal/runtime.String" %18)
  unreachable
}

declare void @"github.com/goplus/llgo/internal/runtime.init"()

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64)

declare %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr, i64, i64, i64, i64, i64)

declare void @"github.com/goplus/llgo/internal/runtime.AssertIndexRange"(i1)

declare void @"github.com/goplus/llgo/internal/runtime.TracePanic"(%"github.com/goplus/llgo/internal/runtime.eface")

declare i32 @printf(ptr, ...)
