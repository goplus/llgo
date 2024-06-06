; ModuleID = 'main'
source_filename = "main"

%"github.com/goplus/llgo/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/internal/abi.Type" = type { i64, i64, i32, i8, i8, i8, i8, { ptr, ptr }, ptr, %"github.com/goplus/llgo/internal/runtime.String", ptr }
%"github.com/goplus/llgo/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/internal/runtime.Slice" = type { ptr, i64, i64 }

@"main.init$guard" = global ptr null
@__llgo_argc = global ptr null
@__llgo_argv = global ptr null
@_llgo_int = linkonce global ptr null
@0 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@1 = private unnamed_addr constant [22 x i8] c"type assertion failed\00", align 1
@_llgo_string = linkonce global ptr null

define void @main.init() {
_llgo_0:
  %0 = load i1, ptr @"main.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"main.init$guard", align 1
  call void @"main.init$after"()
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
  %4 = load ptr, ptr @_llgo_int, align 8
  %5 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %4, i32 0, i32 6
  %6 = load i8, ptr %5, align 1
  %7 = or i8 %6, 32
  store i8 %7, ptr %5, align 1
  %8 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %9 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %8, i32 0, i32 0
  store ptr %4, ptr %9, align 8
  %10 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %8, i32 0, i32 1
  store ptr inttoptr (i64 1 to ptr), ptr %10, align 8
  %11 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %8, align 8
  store %"github.com/goplus/llgo/internal/runtime.eface" %11, ptr %3, align 8
  %12 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %2, i64 1
  %13 = load ptr, ptr @_llgo_int, align 8
  %14 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %13, i32 0, i32 6
  %15 = load i8, ptr %14, align 1
  %16 = or i8 %15, 32
  store i8 %16, ptr %14, align 1
  %17 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %18 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %17, i32 0, i32 0
  store ptr %13, ptr %18, align 8
  %19 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %17, i32 0, i32 1
  store ptr inttoptr (i64 2 to ptr), ptr %19, align 8
  %20 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %17, align 8
  store %"github.com/goplus/llgo/internal/runtime.eface" %20, ptr %12, align 8
  %21 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %2, i64 2
  %22 = load ptr, ptr @_llgo_int, align 8
  %23 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %22, i32 0, i32 6
  %24 = load i8, ptr %23, align 1
  %25 = or i8 %24, 32
  store i8 %25, ptr %23, align 1
  %26 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %27 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %26, i32 0, i32 0
  store ptr %22, ptr %27, align 8
  %28 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %26, i32 0, i32 1
  store ptr inttoptr (i64 3 to ptr), ptr %28, align 8
  %29 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %26, align 8
  store %"github.com/goplus/llgo/internal/runtime.eface" %29, ptr %21, align 8
  %30 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %31 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %30, i32 0, i32 0
  store ptr %2, ptr %31, align 8
  %32 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %30, i32 0, i32 1
  store i64 3, ptr %32, align 4
  %33 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %30, i32 0, i32 2
  store i64 3, ptr %33, align 4
  %34 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %30, align 8
  call void @main.test(%"github.com/goplus/llgo/internal/runtime.Slice" %34)
  ret i32 0
}

define void @main.test(%"github.com/goplus/llgo/internal/runtime.Slice" %0) {
_llgo_0:
  %1 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %0, 1
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_4, %_llgo_0
  %2 = phi i64 [ -1, %_llgo_0 ], [ %3, %_llgo_4 ]
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
  %10 = load ptr, ptr @_llgo_int, align 8
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
  %19 = load ptr, ptr @_llgo_string, align 8
  %20 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %18, ptr %20, align 8
  %21 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %22 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %21, i32 0, i32 0
  store ptr %19, ptr %22, align 8
  %23 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %21, i32 0, i32 1
  store ptr %20, ptr %23, align 8
  %24 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %21, align 8
  call void @"github.com/goplus/llgo/internal/runtime.TracePanic"(%"github.com/goplus/llgo/internal/runtime.eface" %24)
  unreachable
}

declare void @"github.com/goplus/llgo/internal/runtime.init"()

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64)

define void @"main.init$after"() {
_llgo_0:
  %0 = load ptr, ptr @_llgo_int, align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 2)
  store ptr %2, ptr @_llgo_int, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %3 = load ptr, ptr @_llgo_string, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %5 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  store ptr %5, ptr @_llgo_string, align 8
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_2
  ret void
}

declare ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64)

declare void @"github.com/goplus/llgo/internal/runtime.AssertIndexRange"(i1)

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64)

declare void @"github.com/goplus/llgo/internal/runtime.TracePanic"(%"github.com/goplus/llgo/internal/runtime.eface")

declare i32 @printf(ptr, ...)
