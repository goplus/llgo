; ModuleID = 'main'
source_filename = "main"

%"github.com/goplus/llgo/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/internal/runtime.Slice" = type { ptr, i64, i64 }

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
  call void @"github.com/goplus/llgo/internal/runtime.init"()
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
  %2 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2, i32 0, i32 0
  store ptr @0, ptr %3, align 8
  %4 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2, i32 0, i32 1
  store i64 5, ptr %4, align 4
  %5 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2, align 8
  %6 = load ptr, ptr @_llgo_string, align 8
  %7 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %5, ptr %7, align 8
  %8 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %9 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %8, i32 0, i32 0
  store ptr %6, ptr %9, align 8
  %10 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %8, i32 0, i32 1
  store ptr %7, ptr %10, align 8
  %11 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %8, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %11)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  ret void
}

declare void @"github.com/goplus/llgo/internal/runtime.init"()

define i64 @"main.recur1[main.T]"(i64 %0) {
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
  %2 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  store ptr %2, ptr @_llgo_string, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

declare ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64)

declare void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface")

define i64 @"main.recur2[main.T]"(i64 %0) {
_llgo_0:
  %1 = mul i64 %0, 8
  %2 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 %1)
  %3 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %4 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %3, i32 0, i32 0
  store ptr %2, ptr %4, align 8
  %5 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %3, i32 0, i32 1
  store i64 %0, ptr %5, align 4
  %6 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %3, i32 0, i32 2
  store i64 %0, ptr %6, align 4
  %7 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %3, align 8
  %8 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %7, 1
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_2, %_llgo_0
  %9 = phi i64 [ -1, %_llgo_0 ], [ %10, %_llgo_2 ]
  %10 = add i64 %9, 1
  %11 = icmp slt i64 %10, %8
  br i1 %11, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  %12 = add i64 %10, 1
  %13 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %7, 0
  %14 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %7, 1
  %15 = icmp slt i64 %10, 0
  %16 = icmp sge i64 %10, %14
  %17 = or i1 %16, %15
  call void @"github.com/goplus/llgo/internal/runtime.AssertIndexRange"(i1 %17)
  %18 = getelementptr inbounds i64, ptr %13, i64 %10
  store i64 %12, ptr %18, align 4
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_1
  %19 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %7, 1
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_5, %_llgo_3
  %20 = phi i64 [ 0, %_llgo_3 ], [ %31, %_llgo_5 ]
  %21 = phi i64 [ -1, %_llgo_3 ], [ %22, %_llgo_5 ]
  %22 = add i64 %21, 1
  %23 = icmp slt i64 %22, %19
  br i1 %23, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %24 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %7, 0
  %25 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %7, 1
  %26 = icmp slt i64 %22, 0
  %27 = icmp sge i64 %22, %25
  %28 = or i1 %27, %26
  call void @"github.com/goplus/llgo/internal/runtime.AssertIndexRange"(i1 %28)
  %29 = getelementptr inbounds i64, ptr %24, i64 %22
  %30 = load i64, ptr %29, align 4
  %31 = add i64 %20, %30
  br label %_llgo_4

_llgo_6:                                          ; preds = %_llgo_4
  %32 = sub i64 %0, 1
  %33 = call i64 @"main.recur1[main.T]"(i64 %32)
  %34 = add i64 %20, %33
  ret i64 %34
}

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64)

declare void @"github.com/goplus/llgo/internal/runtime.AssertIndexRange"(i1)
