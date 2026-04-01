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
  %7 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %0, 0
  %8 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, i64 3, 1
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %8, i64 3, 2
  %10 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %9, 1
  %11 = add i64 %10, 1
  %12 = alloca ptr, i64 %11, align 8
  br label %_llgo_4

_llgo_1:                                          ; preds = %_llgo_3, %_llgo_6
  %13 = phi i64 [ 0, %_llgo_6 ], [ %19, %_llgo_3 ]
  %14 = getelementptr ptr, ptr %12, i64 %13
  %15 = icmp eq ptr %14, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %15)
  %16 = load ptr, ptr %14, align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  ret void

_llgo_3:                                          ; preds = %_llgo_1
  %18 = call i32 (ptr, ...) @printf(ptr @3, ptr %16)
  %19 = add i64 %13, 1
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_5, %_llgo_0
  %20 = phi i64 [ 0, %_llgo_0 ], [ %34, %_llgo_5 ]
  %21 = icmp slt i64 %20, %10
  br i1 %21, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %22 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %9, 0
  %23 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %9, 1
  %24 = icmp slt i64 %20, 0
  %25 = icmp sge i64 %20, %23
  %26 = or i1 %25, %24
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %26)
  %27 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %22, i64 %20
  %28 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %27, align 8
  %29 = getelementptr ptr, ptr %12, i64 %20
  %30 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %28, 1
  %31 = add i64 %30, 1
  %32 = alloca i8, i64 %31, align 1
  %33 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.CStrCopy"(ptr %32, %"github.com/goplus/llgo/runtime/internal/runtime.String" %28)
  store ptr %33, ptr %29, align 8
  %34 = add i64 %20, 1
  br label %_llgo_4

_llgo_6:                                          ; preds = %_llgo_4
  %35 = getelementptr ptr, ptr %12, i64 %10
  store ptr null, ptr %35, align 8
  br label %_llgo_1
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.CStrCopy"(ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String")

declare i32 @printf(ptr, ...)
