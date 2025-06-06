; ModuleID = 'github.com/goplus/llgo/cl/_testlibgo/bytes'
source_filename = "github.com/goplus/llgo/cl/_testlibgo/bytes"

%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }

@"github.com/goplus/llgo/cl/_testlibgo/bytes.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [6 x i8] c"Hello ", align 1
@1 = private unnamed_addr constant [5 x i8] c"World", align 1
@2 = private unnamed_addr constant [3 x i8] c"buf", align 1
@3 = private unnamed_addr constant [2 x i8] c"Go", align 1
@4 = private unnamed_addr constant [2 x i8] c"go", align 1

define void @"github.com/goplus/llgo/cl/_testlibgo/bytes.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testlibgo/bytes.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testlibgo/bytes.init$guard", align 1
  call void @bytes.init()
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testlibgo/bytes.main"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 40)
  %1 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  %2 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 6 }, ptr %2, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StringToBytes"(ptr %1, ptr %2)
  %3 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %1, align 8
  %4 = alloca { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, align 8
  %5 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %3, ptr %5, align 8
  call void @"bytes.(*Buffer).Write"(ptr %4, ptr %0, ptr %5)
  %6 = load { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %4, align 8
  %7 = alloca { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, align 8
  %8 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 5 }, ptr %8, align 8
  call void @"bytes.(*Buffer).WriteString"(ptr %7, ptr %0, ptr %8)
  %9 = load { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %7, align 8
  %10 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  call void @"bytes.(*Buffer).Bytes"(ptr %10, ptr %0)
  %11 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %10, align 8
  %12 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  call void @"bytes.(*Buffer).String"(ptr %12, ptr %0)
  %13 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %12, align 8
  %14 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 3 }, ptr %14, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr %14)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %15 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %11, ptr %15, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintSlice"(ptr %15)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %16 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %13, ptr %16, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr %16)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %17 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  %18 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 2 }, ptr %18, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StringToBytes"(ptr %17, ptr %18)
  %19 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %17, align 8
  %20 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  %21 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 2 }, ptr %21, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StringToBytes"(ptr %20, ptr %21)
  %22 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %20, align 8
  %23 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %19, ptr %23, align 8
  %24 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %22, ptr %24, align 8
  %25 = call i1 @bytes.EqualFold(ptr %23, ptr %24)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %25)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

declare void @bytes.init()

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.StringToBytes"(ptr, ptr)

declare void @"bytes.(*Buffer).Write"(ptr, ptr, ptr)

declare void @"bytes.(*Buffer).WriteString"(ptr, ptr, ptr)

declare void @"bytes.(*Buffer).Bytes"(ptr, ptr)

declare void @"bytes.(*Buffer).String"(ptr, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintSlice"(ptr)

declare i1 @bytes.EqualFold(ptr, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1)
