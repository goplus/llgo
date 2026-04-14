; ModuleID = 'github.com/goplus/llgo/cl/_testlibc/allocacstrs'
source_filename = "github.com/goplus/llgo/cl/_testlibc/allocacstrs"

%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }

@"github.com/goplus/llgo/cl/_testlibc/allocacstrs.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [1 x i8] c"a", align 1
@1 = private unnamed_addr constant [1 x i8] c"b", align 1
@2 = private unnamed_addr constant [1 x i8] c"c", align 1
@3 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

define void @"github.com/goplus/llgo/cl/_testlibc/allocacstrs.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testlibc/allocacstrs.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testlibc/allocacstrs.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testlibc/allocacstrs.main"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 48)
  %1 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1)
  %2 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %0, i64 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 1 }, ptr %2, align 8
  %3 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %3)
  %4 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %0, i64 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 1 }, ptr %4, align 8
  %5 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %5)
  %6 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %0, i64 2
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 1 }, ptr %6, align 8
  %7 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %7)
  %8 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %0, 0
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %8, i64 3, 1
  %10 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %9, i64 3, 2
  %11 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %10, 1
  %12 = add i64 %11, 1
  %13 = alloca ptr, i64 %12, align 8
  br label %_llgo_4

_llgo_1:                                          ; preds = %_llgo_3, %_llgo_6
  %14 = phi i64 [ 0, %_llgo_6 ], [ %20, %_llgo_3 ]
  %15 = getelementptr ptr, ptr %13, i64 %14
  %16 = icmp eq ptr %15, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %16)
  %17 = load ptr, ptr %15, align 8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  ret void

_llgo_3:                                          ; preds = %_llgo_1
  %19 = call i32 (ptr, ...) @printf(ptr @3, ptr %17)
  %20 = add i64 %14, 1
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_5, %_llgo_0
  %21 = phi i64 [ 0, %_llgo_0 ], [ %35, %_llgo_5 ]
  %22 = icmp slt i64 %21, %11
  br i1 %22, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %23 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %10, 0
  %24 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %10, 1
  %25 = icmp slt i64 %21, 0
  %26 = icmp sge i64 %21, %24
  %27 = or i1 %26, %25
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %27, i64 %21, i64 %24)
  %28 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %23, i64 %21
  %29 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %28, align 8
  %30 = getelementptr ptr, ptr %13, i64 %21
  %31 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %29, 1
  %32 = add i64 %31, 1
  %33 = alloca i8, i64 %32, align 1
  %34 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.CStrCopy"(ptr %33, %"github.com/goplus/llgo/runtime/internal/runtime.String" %29)
  store ptr %34, ptr %30, align 8
  %35 = add i64 %21, 1
  br label %_llgo_4

_llgo_6:                                          ; preds = %_llgo_4
  %36 = getelementptr ptr, ptr %13, i64 %11
  store ptr null, ptr %36, align 8
  br label %_llgo_1
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1, i64, i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.CStrCopy"(ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String")

declare i32 @printf(ptr, ...)
