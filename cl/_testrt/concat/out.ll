; ModuleID = 'github.com/goplus/llgo/cl/_testrt/concat'
source_filename = "github.com/goplus/llgo/cl/_testrt/concat"

%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }

@"github.com/goplus/llgo/cl/_testrt/concat.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [3 x i8] c"...", align 1
@1 = private unnamed_addr constant [5 x i8] c"Hello", align 1
@2 = private unnamed_addr constant [1 x i8] c" ", align 1
@3 = private unnamed_addr constant [5 x i8] c"World", align 1

define void @"github.com/goplus/llgo/cl/_testrt/concat.concat"(ptr %0, ptr %1) {
_llgo_0:
  %2 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %1, align 8
  %3 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %2, 1
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_2, %_llgo_0
  %4 = phi %"github.com/goplus/llgo/runtime/internal/runtime.String" [ zeroinitializer, %_llgo_0 ], [ %19, %_llgo_2 ]
  %5 = phi i64 [ -1, %_llgo_0 ], [ %6, %_llgo_2 ]
  %6 = add i64 %5, 1
  %7 = icmp slt i64 %6, %3
  br i1 %7, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  %8 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %1, align 8
  %9 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %8, 0
  %10 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %8, 1
  %11 = icmp slt i64 %6, 0
  %12 = icmp sge i64 %6, %10
  %13 = or i1 %12, %11
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %13)
  %14 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %9, i64 %6
  %15 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %14, align 8
  %16 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  %17 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %4, ptr %17, align 8
  %18 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %15, ptr %18, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StringCat"(ptr %16, ptr %17, ptr %18)
  %19 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %16, align 8
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_1
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %4, ptr %0, align 8
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/concat.info"(ptr %0, ptr %1) {
_llgo_0:
  %2 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %1, align 8
  %3 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  %4 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %4, align 8
  %5 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %2, ptr %5, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StringCat"(ptr %3, ptr %4, ptr %5)
  %6 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %3, align 8
  %7 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  %8 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %6, ptr %8, align 8
  %9 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 3 }, ptr %9, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StringCat"(ptr %7, ptr %8, ptr %9)
  %10 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %7, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %10, ptr %0, align 8
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/concat.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/concat.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/concat.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/concat.main"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 48)
  %1 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %0, i64 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 5 }, ptr %1, align 8
  %2 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %0, i64 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 1 }, ptr %2, align 8
  %3 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %0, i64 2
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 5 }, ptr %3, align 8
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %0, 0
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %4, i64 3, 1
  %6 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %5, i64 3, 2
  %7 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  %8 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %6, ptr %8, align 8
  call void @"github.com/goplus/llgo/cl/_testrt/concat.concat"(ptr %7, ptr %8)
  %9 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %7, align 8
  %10 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %9, ptr %10, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr %10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.StringCat"(ptr, ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)
