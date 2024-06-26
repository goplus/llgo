; ModuleID = 'main'
source_filename = "main"

%"github.com/goplus/llgo/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/internal/runtime.iface" = type { ptr, ptr }

@"main.init$guard" = global i1 false, align 1
@__llgo_argc = global i32 0, align 4
@__llgo_argv = global ptr null, align 8
@0 = private unnamed_addr constant [6 x i8] c"Hello ", align 1
@1 = private unnamed_addr constant [5 x i8] c"World", align 1
@2 = private unnamed_addr constant [3 x i8] c"buf", align 1
@3 = private unnamed_addr constant [2 x i8] c"Go", align 1
@4 = private unnamed_addr constant [2 x i8] c"go", align 1

define void @main.init() {
_llgo_0:
  %0 = load i1, ptr @"main.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"main.init$guard", align 1
  call void @bytes.init()
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
  %2 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 40)
  %3 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %4 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3, i32 0, i32 0
  store ptr @0, ptr %4, align 8
  %5 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3, i32 0, i32 1
  store i64 6, ptr %5, align 4
  %6 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3, align 8
  %7 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.StringToBytes"(%"github.com/goplus/llgo/internal/runtime.String" %6)
  %8 = call { i64, %"github.com/goplus/llgo/internal/runtime.iface" } @"bytes.(*Buffer).Write"(ptr %2, %"github.com/goplus/llgo/internal/runtime.Slice" %7)
  %9 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %10 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %9, i32 0, i32 0
  store ptr @1, ptr %10, align 8
  %11 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %9, i32 0, i32 1
  store i64 5, ptr %11, align 4
  %12 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %9, align 8
  %13 = call { i64, %"github.com/goplus/llgo/internal/runtime.iface" } @"bytes.(*Buffer).WriteString"(ptr %2, %"github.com/goplus/llgo/internal/runtime.String" %12)
  %14 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"bytes.(*Buffer).Bytes"(ptr %2)
  %15 = call %"github.com/goplus/llgo/internal/runtime.String" @"bytes.(*Buffer).String"(ptr %2)
  %16 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %17 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %16, i32 0, i32 0
  store ptr @2, ptr %17, align 8
  %18 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %16, i32 0, i32 1
  store i64 3, ptr %18, align 4
  %19 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %16, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %19)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintSlice"(%"github.com/goplus/llgo/internal/runtime.Slice" %14)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %15)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %20 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %21 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %20, i32 0, i32 0
  store ptr @3, ptr %21, align 8
  %22 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %20, i32 0, i32 1
  store i64 2, ptr %22, align 4
  %23 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %20, align 8
  %24 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.StringToBytes"(%"github.com/goplus/llgo/internal/runtime.String" %23)
  %25 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %26 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %25, i32 0, i32 0
  store ptr @4, ptr %26, align 8
  %27 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %25, i32 0, i32 1
  store i64 2, ptr %27, align 4
  %28 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %25, align 8
  %29 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.StringToBytes"(%"github.com/goplus/llgo/internal/runtime.String" %28)
  %30 = call i1 @bytes.EqualFold(%"github.com/goplus/llgo/internal/runtime.Slice" %24, %"github.com/goplus/llgo/internal/runtime.Slice" %29)
  call void @"github.com/goplus/llgo/internal/runtime.PrintBool"(i1 %30)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  ret i32 0
}

declare void @bytes.init()

declare void @"github.com/goplus/llgo/internal/runtime.init"()

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64)

declare %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.StringToBytes"(%"github.com/goplus/llgo/internal/runtime.String")

declare { i64, %"github.com/goplus/llgo/internal/runtime.iface" } @"bytes.(*Buffer).Write"(ptr, %"github.com/goplus/llgo/internal/runtime.Slice")

declare { i64, %"github.com/goplus/llgo/internal/runtime.iface" } @"bytes.(*Buffer).WriteString"(ptr, %"github.com/goplus/llgo/internal/runtime.String")

declare %"github.com/goplus/llgo/internal/runtime.Slice" @"bytes.(*Buffer).Bytes"(ptr)

declare %"github.com/goplus/llgo/internal/runtime.String" @"bytes.(*Buffer).String"(ptr)

declare void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String")

declare void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/internal/runtime.PrintSlice"(%"github.com/goplus/llgo/internal/runtime.Slice")

declare i1 @bytes.EqualFold(%"github.com/goplus/llgo/internal/runtime.Slice", %"github.com/goplus/llgo/internal/runtime.Slice")

declare void @"github.com/goplus/llgo/internal/runtime.PrintBool"(i1)
