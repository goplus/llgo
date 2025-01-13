; ModuleID = 'github.com/goplus/llgo/compiler/cl/_testlibc/allocacstrs'
source_filename = "github.com/goplus/llgo/compiler/cl/_testlibc/allocacstrs"

%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }

@"github.com/goplus/llgo/compiler/cl/_testlibc/allocacstrs.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [1 x i8] c"a", align 1
@1 = private unnamed_addr constant [1 x i8] c"b", align 1
@2 = private unnamed_addr constant [1 x i8] c"c", align 1
@3 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

define void @"github.com/goplus/llgo/compiler/cl/_testlibc/allocacstrs.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/compiler/cl/_testlibc/allocacstrs.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/compiler/cl/_testlibc/allocacstrs.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/compiler/cl/_testlibc/allocacstrs.main"() {
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
  %10 = phi i64 [ 0, %_llgo_6 ], [ %15, %_llgo_3 ]
  %11 = getelementptr ptr, ptr %9, i64 %10
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  ret void

_llgo_3:                                          ; preds = %_llgo_1
  %14 = call i32 (ptr, ...) @printf(ptr @3, ptr %12)
  %15 = add i64 %10, 1
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_5, %_llgo_0
  %16 = phi i64 [ 0, %_llgo_0 ], [ %30, %_llgo_5 ]
  %17 = icmp slt i64 %16, %7
  br i1 %17, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %18 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %6, 0
  %19 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %6, 1
  %20 = icmp slt i64 %16, 0
  %21 = icmp sge i64 %16, %19
  %22 = or i1 %21, %20
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %22)
  %23 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %18, i64 %16
  %24 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %23, align 8
  %25 = getelementptr ptr, ptr %9, i64 %16
  %26 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %24, 1
  %27 = add i64 %26, 1
  %28 = alloca i8, i64 %27, align 1
  %29 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.CStrCopy"(ptr %28, %"github.com/goplus/llgo/runtime/internal/runtime.String" %24)
  store ptr %29, ptr %25, align 8
  %30 = add i64 %16, 1
  br label %_llgo_4

_llgo_6:                                          ; preds = %_llgo_4
  %31 = getelementptr ptr, ptr %9, i64 %7
  store ptr null, ptr %31, align 8
  br label %_llgo_1
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.CStrCopy"(ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String")

declare i32 @printf(ptr, ...)
