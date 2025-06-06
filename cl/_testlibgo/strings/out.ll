; ModuleID = 'github.com/goplus/llgo/cl/_testlibgo/strings'
source_filename = "github.com/goplus/llgo/cl/_testlibgo/strings"

%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }

@"github.com/goplus/llgo/cl/_testlibgo/strings.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [6 x i8] c"Hello ", align 1
@1 = private unnamed_addr constant [5 x i8] c"World", align 1
@2 = private unnamed_addr constant [4 x i8] c"len:", align 1
@3 = private unnamed_addr constant [4 x i8] c"cap:", align 1
@4 = private unnamed_addr constant [7 x i8] c"string:", align 1
@5 = private unnamed_addr constant [13 x i8] c"Hello, \E4\B8\96\E7\95\8C", align 1
@6 = private unnamed_addr constant [12 x i8] c"Hello, world", align 1
@unicode.Han = external global ptr, align 8

define void @"github.com/goplus/llgo/cl/_testlibgo/strings.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testlibgo/strings.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testlibgo/strings.init$guard", align 1
  call void @strings.init()
  call void @unicode.init()
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testlibgo/strings.main"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 32)
  %1 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  %2 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 6 }, ptr %2, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StringToBytes"(ptr %1, ptr %2)
  %3 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %1, align 8
  %4 = alloca { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, align 8
  %5 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %3, ptr %5, align 8
  call void @"strings.(*Builder).Write"(ptr %4, ptr %0, ptr %5)
  %6 = load { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %4, align 8
  %7 = alloca { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, align 8
  %8 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 5 }, ptr %8, align 8
  call void @"strings.(*Builder).WriteString"(ptr %7, ptr %0, ptr %8)
  %9 = load { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %7, align 8
  %10 = call i64 @"strings.(*Builder).Len"(ptr %0)
  %11 = call i64 @"strings.(*Builder).Cap"(ptr %0)
  %12 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  call void @"strings.(*Builder).String"(ptr %12, ptr %0)
  %13 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %12, align 8
  %14 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 4 }, ptr %14, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr %14)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %15 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, ptr %15, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr %15)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %11)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %16 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 7 }, ptr %16, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr %16)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %17 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %13, ptr %17, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr %17)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %18 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 13 }, ptr %18, align 8
  %19 = alloca { ptr, ptr }, align 8
  store { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testlibgo/strings.main$1", ptr null }, ptr %19, align 8
  %20 = call i64 @strings.IndexFunc(ptr %18, ptr %19)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %20)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %21 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 12 }, ptr %21, align 8
  %22 = alloca { ptr, ptr }, align 8
  store { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testlibgo/strings.main$1", ptr null }, ptr %22, align 8
  %23 = call i64 @strings.IndexFunc(ptr %21, ptr %22)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %23)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

define i1 @"github.com/goplus/llgo/cl/_testlibgo/strings.main$1"(i32 %0) {
_llgo_0:
  %1 = load ptr, ptr @unicode.Han, align 8
  %2 = call i1 @unicode.Is(ptr %1, i32 %0)
  ret i1 %2
}

declare void @strings.init()

declare void @unicode.init()

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.StringToBytes"(ptr, ptr)

declare void @"strings.(*Builder).Write"(ptr, ptr, ptr)

declare void @"strings.(*Builder).WriteString"(ptr, ptr, ptr)

declare i64 @"strings.(*Builder).Len"(ptr)

declare i64 @"strings.(*Builder).Cap"(ptr)

declare void @"strings.(*Builder).String"(ptr, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64)

declare i64 @strings.IndexFunc(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/cl/_testlibgo/strings.main$1"(ptr %0, i32 %1) {
_llgo_0:
  %2 = tail call i1 @"github.com/goplus/llgo/cl/_testlibgo/strings.main$1"(i32 %1)
  ret i1 %2
}

declare i1 @unicode.Is(ptr, i32)
