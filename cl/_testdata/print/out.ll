; ModuleID = 'main'
source_filename = "main"

%"github.com/goplus/llgo/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/internal/runtime.String" = type { ptr, i64 }
%main.stringStruct = type { ptr, i64 }
%main.slice = type { ptr, i64, i64 }

@"main.init$guard" = global ptr null
@main.minhexdigits = global ptr null
@0 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@__llgo_argc = global ptr null
@__llgo_argv = global ptr null
@1 = private unnamed_addr constant [5 x i8] c"llgo\00", align 1
@2 = private unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 1
@3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@4 = private unnamed_addr constant [2 x i8] c" \00", align 1

define %"github.com/goplus/llgo/internal/runtime.Slice" @main.bytes(%"github.com/goplus/llgo/internal/runtime.String" %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %0, ptr %1, align 8
  %2 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 24)
  %3 = call ptr @main.stringStructOf(ptr %1)
  %4 = getelementptr inbounds %main.stringStruct, ptr %3, i32 0, i32 0
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %main.slice, ptr %2, i32 0, i32 0
  store ptr %5, ptr %6, align 8
  %7 = getelementptr inbounds %main.stringStruct, ptr %3, i32 0, i32 1
  %8 = load i64, ptr %7, align 4
  %9 = getelementptr inbounds %main.slice, ptr %2, i32 0, i32 1
  store i64 %8, ptr %9, align 4
  %10 = getelementptr inbounds %main.stringStruct, ptr %3, i32 0, i32 1
  %11 = load i64, ptr %10, align 4
  %12 = getelementptr inbounds %main.slice, ptr %2, i32 0, i32 2
  store i64 %11, ptr %12, align 4
  %13 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2, align 8
  ret %"github.com/goplus/llgo/internal/runtime.Slice" %13
}

define void @main.gwrite(%"github.com/goplus/llgo/internal/runtime.Slice" %0) {
_llgo_0:
  %1 = call i64 @"github.com/goplus/llgo/internal/runtime.SliceLen"(%"github.com/goplus/llgo/internal/runtime.Slice" %0)
  %2 = icmp eq i64 %1, 0
  br i1 %2, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  ret void

_llgo_2:                                          ; preds = %_llgo_0
  %3 = call i64 @"github.com/goplus/llgo/internal/runtime.SliceLen"(%"github.com/goplus/llgo/internal/runtime.Slice" %0)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_4, %_llgo_2
  %4 = phi i64 [ -1, %_llgo_2 ], [ %5, %_llgo_4 ]
  %5 = add i64 %4, 1
  %6 = icmp slt i64 %5, %3
  br i1 %6, label %_llgo_4, label %_llgo_5

_llgo_4:                                          ; preds = %_llgo_3
  %7 = call ptr @"github.com/goplus/llgo/internal/runtime.SliceData"(%"github.com/goplus/llgo/internal/runtime.Slice" %0)
  %8 = getelementptr inbounds i8, ptr %7, i64 %5
  %9 = load i8, ptr %8, align 1
  %10 = call i32 (ptr, ...) @printf(ptr @0, i8 %9)
  br label %_llgo_3

_llgo_5:                                          ; preds = %_llgo_3
  ret void
}

define void @main.init() {
_llgo_0:
  %0 = load i1, ptr @"main.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"main.init$guard", align 1
  store i64 0, ptr @main.minhexdigits, align 4
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
  %2 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @1, i64 4)
  call void @main.printstring(%"github.com/goplus/llgo/internal/runtime.String" %2)
  call void @main.printnl()
  call void @main.printuint(i64 1024)
  call void @main.printnl()
  call void @main.printhex(i64 305441743)
  call void @main.printnl()
  ret void
}

define void @main.printhex(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 100)
  br label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %2 = urem i64 %14, 16
  %3 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @2, i64 16)
  %4 = call ptr @"github.com/goplus/llgo/internal/runtime.StringData"(%"github.com/goplus/llgo/internal/runtime.String" %3)
  %5 = getelementptr inbounds i8, ptr %4, i64 %2
  %6 = load i8, ptr %5, align 1
  %7 = getelementptr inbounds i8, ptr %1, i64 %15
  store i8 %6, ptr %7, align 1
  %8 = icmp ult i64 %14, 16
  br i1 %8, label %_llgo_5, label %_llgo_4

_llgo_2:                                          ; preds = %_llgo_5, %_llgo_3
  %9 = sub i64 %15, 1
  %10 = getelementptr inbounds i8, ptr %1, i64 %9
  store i8 120, ptr %10, align 1
  %11 = sub i64 %9, 1
  %12 = getelementptr inbounds i8, ptr %1, i64 %11
  store i8 48, ptr %12, align 1
  %13 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr %1, i64 1, i64 100, i64 %11, i64 100, i64 100)
  call void @main.gwrite(%"github.com/goplus/llgo/internal/runtime.Slice" %13)
  ret void

_llgo_3:                                          ; preds = %_llgo_4, %_llgo_0
  %14 = phi i64 [ %0, %_llgo_0 ], [ %17, %_llgo_4 ]
  %15 = phi i64 [ 99, %_llgo_0 ], [ %18, %_llgo_4 ]
  %16 = icmp sgt i64 %15, 0
  br i1 %16, label %_llgo_1, label %_llgo_2

_llgo_4:                                          ; preds = %_llgo_5, %_llgo_1
  %17 = udiv i64 %14, 16
  %18 = sub i64 %15, 1
  br label %_llgo_3

_llgo_5:                                          ; preds = %_llgo_1
  %19 = sub i64 100, %15
  %20 = load i64, ptr @main.minhexdigits, align 4
  %21 = icmp sge i64 %19, %20
  br i1 %21, label %_llgo_2, label %_llgo_4
}

define void @main.printnl() {
_llgo_0:
  %0 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @3, i64 1)
  call void @main.printstring(%"github.com/goplus/llgo/internal/runtime.String" %0)
  ret void
}

define void @main.printsp() {
_llgo_0:
  %0 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @4, i64 1)
  call void @main.printstring(%"github.com/goplus/llgo/internal/runtime.String" %0)
  ret void
}

define void @main.printstring(%"github.com/goplus/llgo/internal/runtime.String" %0) {
_llgo_0:
  %1 = call %"github.com/goplus/llgo/internal/runtime.Slice" @main.bytes(%"github.com/goplus/llgo/internal/runtime.String" %0)
  call void @main.gwrite(%"github.com/goplus/llgo/internal/runtime.Slice" %1)
  ret void
}

define void @main.printuint(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 100)
  br label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %2 = urem i64 %8, 10
  %3 = add i64 %2, 48
  %4 = trunc i64 %3 to i8
  %5 = getelementptr inbounds i8, ptr %1, i64 %9
  store i8 %4, ptr %5, align 1
  %6 = icmp ult i64 %8, 10
  br i1 %6, label %_llgo_2, label %_llgo_4

_llgo_2:                                          ; preds = %_llgo_3, %_llgo_1
  %7 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr %1, i64 1, i64 100, i64 %9, i64 100, i64 100)
  call void @main.gwrite(%"github.com/goplus/llgo/internal/runtime.Slice" %7)
  ret void

_llgo_3:                                          ; preds = %_llgo_4, %_llgo_0
  %8 = phi i64 [ %0, %_llgo_0 ], [ %11, %_llgo_4 ]
  %9 = phi i64 [ 99, %_llgo_0 ], [ %12, %_llgo_4 ]
  %10 = icmp sgt i64 %9, 0
  br i1 %10, label %_llgo_1, label %_llgo_2

_llgo_4:                                          ; preds = %_llgo_1
  %11 = udiv i64 %8, 10
  %12 = sub i64 %9, 1
  br label %_llgo_3
}

define ptr @main.stringStructOf(ptr %0) {
_llgo_0:
  ret ptr %0
}

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64)

declare i64 @"github.com/goplus/llgo/internal/runtime.SliceLen"(%"github.com/goplus/llgo/internal/runtime.Slice")

declare ptr @"github.com/goplus/llgo/internal/runtime.SliceData"(%"github.com/goplus/llgo/internal/runtime.Slice")

declare i32 @printf(ptr, ...)

declare void @"github.com/goplus/llgo/internal/runtime.init"()

declare %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr, i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.StringData"(%"github.com/goplus/llgo/internal/runtime.String")

declare %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr, i64, i64, i64, i64, i64)
