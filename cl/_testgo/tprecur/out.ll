; ModuleID = 'github.com/goplus/llgo/cl/_testgo/tprecur'
source_filename = "github.com/goplus/llgo/cl/_testgo/tprecur"

%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }

@"github.com/goplus/llgo/cl/_testgo/tprecur.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [5 x i8] c"error", align 1
@_llgo_string = linkonce global ptr null, align 8

define void @"github.com/goplus/llgo/cl/_testgo/tprecur.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testgo/tprecur.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testgo/tprecur.init$guard", align 1
  call void @"github.com/goplus/llgo/cl/_testgo/tprecur.init$after"()
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/tprecur.main"() {
_llgo_0:
  call void @"github.com/goplus/llgo/cl/_testgo/tprecur.recursive"()
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/tprecur.recursive"() {
_llgo_0:
  %0 = call i64 @"github.com/goplus/llgo/cl/_testgo/tprecur.recur1[github.com/goplus/llgo/cl/_testgo/tprecur.T]"(i64 5)
  %1 = icmp ne i64 %0, 110
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = load ptr, ptr @_llgo_string, align 8
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %3, align 8
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %2, 0
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %4, ptr %3, 1
  %6 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %5, ptr %6, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(ptr %6)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  ret void
}

define linkonce i64 @"github.com/goplus/llgo/cl/_testgo/tprecur.recur1[github.com/goplus/llgo/cl/_testgo/tprecur.T]"(i64 %0) {
_llgo_0:
  %1 = icmp eq i64 %0, 0
  br i1 %1, label %_llgo_1, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3, %_llgo_0
  ret i64 1

_llgo_2:                                          ; preds = %_llgo_3
  %2 = sub i64 %0, 1
  %3 = call i64 @"github.com/goplus/llgo/cl/_testgo/tprecur.recur2[github.com/goplus/llgo/cl/_testgo/tprecur.T]"(i64 %2)
  %4 = mul i64 %0, %3
  ret i64 %4

_llgo_3:                                          ; preds = %_llgo_0
  %5 = icmp eq i64 %0, 1
  br i1 %5, label %_llgo_1, label %_llgo_2
}

define void @"github.com/goplus/llgo/cl/_testgo/tprecur.init$after"() {
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

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(ptr)

define linkonce i64 @"github.com/goplus/llgo/cl/_testgo/tprecur.recur2[github.com/goplus/llgo/cl/_testgo/tprecur.T]"(i64 %0) {
_llgo_0:
  %1 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.MakeSlice"(ptr %1, i64 %0, i64 %0, i64 8)
  %2 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %1, align 8
  %3 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %2, 1
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_2, %_llgo_0
  %4 = phi i64 [ -1, %_llgo_0 ], [ %5, %_llgo_2 ]
  %5 = add i64 %4, 1
  %6 = icmp slt i64 %5, %3
  br i1 %6, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  %7 = add i64 %5, 1
  %8 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %2, 0
  %9 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %2, 1
  %10 = icmp slt i64 %5, 0
  %11 = icmp sge i64 %5, %9
  %12 = or i1 %11, %10
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %12)
  %13 = getelementptr inbounds i64, ptr %8, i64 %5
  store i64 %7, ptr %13, align 4
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_1
  %14 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %2, 1
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_5, %_llgo_3
  %15 = phi i64 [ 0, %_llgo_3 ], [ %26, %_llgo_5 ]
  %16 = phi i64 [ -1, %_llgo_3 ], [ %17, %_llgo_5 ]
  %17 = add i64 %16, 1
  %18 = icmp slt i64 %17, %14
  br i1 %18, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %19 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %2, 0
  %20 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %2, 1
  %21 = icmp slt i64 %17, 0
  %22 = icmp sge i64 %17, %20
  %23 = or i1 %22, %21
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %23)
  %24 = getelementptr inbounds i64, ptr %19, i64 %17
  %25 = load i64, ptr %24, align 4
  %26 = add i64 %15, %25
  br label %_llgo_4

_llgo_6:                                          ; preds = %_llgo_4
  %27 = sub i64 %0, 1
  %28 = call i64 @"github.com/goplus/llgo/cl/_testgo/tprecur.recur1[github.com/goplus/llgo/cl/_testgo/tprecur.T]"(i64 %27)
  %29 = add i64 %15, %28
  ret i64 %29
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.MakeSlice"(ptr, i64, i64, i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1)
