; ModuleID = 'main'
source_filename = "main"

%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }

@"main.init$guard" = global i1 false, align 1
@__llgo_argc = global i32 0, align 4
@__llgo_argv = global ptr null, align 8
@0 = private unnamed_addr constant [5 x i8] c"error", align 1
@_llgo_string = linkonce global ptr null, align 8

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
  call void @"github.com/goplus/llgo/runtime/internal/runtime.init"()
  call void @main.init()
  call void @main.recursive()
  ret i32 0
}

define void @main.recursive() {
_llgo_0:
  %0 = call i64 @"main.recur1[main.T]"(i64 5)
  %1 = icmp ne i64 %0, 110
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = load ptr, ptr @_llgo_string, align 8
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %3, align 8
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %2, 0
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %4, ptr %3, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %5)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  ret void
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.init"()

define linkonce i64 @"main.recur1[main.T]"(i64 %0) {
_llgo_0:
  %1 = icmp eq i64 %0, 0
  br i1 %1, label %_llgo_1, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3, %_llgo_0
  ret i64 1

_llgo_2:                                          ; preds = %_llgo_3
  %2 = sub i64 %0, 1
  %3 = call i64 @"main.recur2[main.T]"(i64 %2)
  %4 = mul i64 %0, %3
  ret i64 %4

_llgo_3:                                          ; preds = %_llgo_0
  %5 = icmp eq i64 %0, 1
  br i1 %5, label %_llgo_1, label %_llgo_2
}

define void @"main.init$after"() {
_llgo_0:
  %0 = load ptr, ptr @_llgo_string, align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  store ptr %2, ptr @_llgo_string, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

define linkonce i64 @"main.recur2[main.T]"(i64 %0) {
_llgo_0:
  %1 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.MakeSlice"(i64 %0, i64 %0, i64 8)
  %2 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1, 1
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_2, %_llgo_0
  %3 = phi i64 [ -1, %_llgo_0 ], [ %4, %_llgo_2 ]
  %4 = add i64 %3, 1
  %5 = icmp slt i64 %4, %2
  br i1 %5, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  %6 = add i64 %4, 1
  %7 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1, 0
  %8 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1, 1
  %9 = icmp slt i64 %4, 0
  %10 = icmp sge i64 %4, %8
  %11 = or i1 %10, %9
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %11)
  %12 = getelementptr inbounds i64, ptr %7, i64 %4
  store i64 %6, ptr %12, align 4
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_1
  %13 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1, 1
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_5, %_llgo_3
  %14 = phi i64 [ 0, %_llgo_3 ], [ %25, %_llgo_5 ]
  %15 = phi i64 [ -1, %_llgo_3 ], [ %16, %_llgo_5 ]
  %16 = add i64 %15, 1
  %17 = icmp slt i64 %16, %13
  br i1 %17, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %18 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1, 0
  %19 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1, 1
  %20 = icmp slt i64 %16, 0
  %21 = icmp sge i64 %16, %19
  %22 = or i1 %21, %20
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %22)
  %23 = getelementptr inbounds i64, ptr %18, i64 %16
  %24 = load i64, ptr %23, align 4
  %25 = add i64 %14, %24
  br label %_llgo_4

_llgo_6:                                          ; preds = %_llgo_4
  %26 = sub i64 %0, 1
  %27 = call i64 @"main.recur1[main.T]"(i64 %26)
  %28 = add i64 %14, %27
  ret i64 %28
}

declare %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.MakeSlice"(i64, i64, i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1)
