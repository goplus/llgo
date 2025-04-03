; ModuleID = 'github.com/goplus/llgo/cl/_testrt/concat'
source_filename = "github.com/goplus/llgo/cl/_testrt/concat"

%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }

@"github.com/goplus/llgo/cl/_testrt/concat.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [3 x i8] c"...", align 1
@1 = private unnamed_addr constant [5 x i8] c"Hello", align 1
@2 = private unnamed_addr constant [1 x i8] c" ", align 1
@3 = private unnamed_addr constant [5 x i8] c"World", align 1

define %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/cl/_testrt/concat.concat"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %0) {
_llgo_0:
  %1 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %0, 1
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_2, %_llgo_0
  %2 = phi %"github.com/goplus/llgo/runtime/internal/runtime.String" [ zeroinitializer, %_llgo_0 ], [ %13, %_llgo_2 ]
  %3 = phi i64 [ -1, %_llgo_0 ], [ %4, %_llgo_2 ]
  %4 = add i64 %3, 1
  %5 = icmp slt i64 %4, %1
  br i1 %5, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  %6 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %0, 0
  %7 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %0, 1
  %8 = icmp slt i64 %4, 0
  %9 = icmp sge i64 %4, %7
  %10 = or i1 %9, %8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %10)
  %11 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %6, i64 %4
  %12 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %11, align 8
  %13 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringCat"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %2, %"github.com/goplus/llgo/runtime/internal/runtime.String" %12)
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_1
  ret %"github.com/goplus/llgo/runtime/internal/runtime.String" %2
}

define %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/cl/_testrt/concat.info"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %0) {
_llgo_0:
  %1 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringCat"(%"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.String" %0)
  %2 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringCat"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %1, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 3 })
  ret %"github.com/goplus/llgo/runtime/internal/runtime.String" %2
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
  %7 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/cl/_testrt/concat.concat"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %6)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %7)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1)

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringCat"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.String")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)
