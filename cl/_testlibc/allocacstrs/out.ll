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
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
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
  %1 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %0, i64 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 1 }, ptr %1, align 8
  %2 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %0, i64 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 1 }, ptr %2, align 8
  %3 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %0, i64 2
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 1 }, ptr %3, align 8
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %0, 0
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %4, i64 3, 1
  %6 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %5, i64 3, 2
  %7 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %6, 1
  %8 = add i64 %7, 1
  %9 = alloca ptr, i64 %8, align 8
  br label %_llgo_4

_llgo_1:                                          ; preds = %_llgo_3, %_llgo_6
  %10 = phi i64 [ 0, %_llgo_6 ], [ %16, %_llgo_3 ]
  %11 = getelementptr ptr, ptr %9, i64 %10
  %12 = icmp eq ptr %11, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %12)
  %13 = load ptr, ptr %11, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  ret void

_llgo_3:                                          ; preds = %_llgo_1
  %15 = call i32 (ptr, ...) @printf(ptr @3, ptr %13)
  %16 = add i64 %10, 1
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_5, %_llgo_0
  %17 = phi i64 [ 0, %_llgo_0 ], [ %32, %_llgo_5 ]
  %18 = icmp slt i64 %17, %7
  br i1 %18, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %19 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %6, 0
  %20 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %6, 1
  %21 = icmp slt i64 %17, 0
  %22 = icmp sge i64 %17, %20
  %23 = or i1 %22, %21
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %23)
  %24 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %19, i64 %17
  %25 = icmp eq ptr %24, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %25)
  %26 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %24, align 8
  %27 = getelementptr ptr, ptr %9, i64 %17
  %28 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %26, 1
  %29 = add i64 %28, 1
  %30 = alloca i8, i64 %29, align 1
  %31 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.CStrCopy"(ptr %30, %"github.com/goplus/llgo/runtime/internal/runtime.String" %26)
  store ptr %31, ptr %27, align 8
  %32 = add i64 %17, 1
  br label %_llgo_4

_llgo_6:                                          ; preds = %_llgo_4
  %33 = getelementptr ptr, ptr %9, i64 %7
  store ptr null, ptr %33, align 8
  br label %_llgo_1
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.CStrCopy"(ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String")

declare i32 @printf(ptr, ...)
