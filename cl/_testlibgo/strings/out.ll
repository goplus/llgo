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
@2 = private unnamed_addr constant [4 x i8] c"len:", align 1
@3 = private unnamed_addr constant [4 x i8] c"cap:", align 1
@4 = private unnamed_addr constant [7 x i8] c"string:", align 1
@5 = private unnamed_addr constant [13 x i8] c"Hello, \E4\B8\96\E7\95\8C", align 1
@6 = private unnamed_addr constant [12 x i8] c"Hello, world", align 1
@unicode.Han = external global ptr, align 8

define void @main.init() {
_llgo_0:
  %0 = load i1, ptr @"main.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"main.init$guard", align 1
  call void @strings.init()
  call void @unicode.init()
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
  %2 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 32)
  %3 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %4 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3, i32 0, i32 0
  store ptr @0, ptr %4, align 8
  %5 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3, i32 0, i32 1
  store i64 6, ptr %5, align 4
  %6 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3, align 8
  %7 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.StringToBytes"(%"github.com/goplus/llgo/internal/runtime.String" %6)
  %8 = call { i64, %"github.com/goplus/llgo/internal/runtime.iface" } @"strings.(*Builder).Write"(ptr %2, %"github.com/goplus/llgo/internal/runtime.Slice" %7)
  %9 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %10 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %9, i32 0, i32 0
  store ptr @1, ptr %10, align 8
  %11 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %9, i32 0, i32 1
  store i64 5, ptr %11, align 4
  %12 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %9, align 8
  %13 = call { i64, %"github.com/goplus/llgo/internal/runtime.iface" } @"strings.(*Builder).WriteString"(ptr %2, %"github.com/goplus/llgo/internal/runtime.String" %12)
  %14 = call i64 @"strings.(*Builder).Len"(ptr %2)
  %15 = call i64 @"strings.(*Builder).Cap"(ptr %2)
  %16 = call %"github.com/goplus/llgo/internal/runtime.String" @"strings.(*Builder).String"(ptr %2)
  %17 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %18 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %17, i32 0, i32 0
  store ptr @2, ptr %18, align 8
  %19 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %17, i32 0, i32 1
  store i64 4, ptr %19, align 4
  %20 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %17, align 8
  %21 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %22 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %21, i32 0, i32 0
  store ptr @3, ptr %22, align 8
  %23 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %21, i32 0, i32 1
  store i64 4, ptr %23, align 4
  %24 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %21, align 8
  %25 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %26 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %25, i32 0, i32 0
  store ptr @4, ptr %26, align 8
  %27 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %25, i32 0, i32 1
  store i64 7, ptr %27, align 4
  %28 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %25, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %20)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %14)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %24)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %15)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %28)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %16)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %29 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %30 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %29, i32 0, i32 0
  store ptr @5, ptr %30, align 8
  %31 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %29, i32 0, i32 1
  store i64 13, ptr %31, align 4
  %32 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %29, align 8
  %33 = alloca { ptr, ptr }, align 8
  %34 = getelementptr inbounds { ptr, ptr }, ptr %33, i32 0, i32 0
  store ptr @"__llgo_stub.main.main$1", ptr %34, align 8
  %35 = getelementptr inbounds { ptr, ptr }, ptr %33, i32 0, i32 1
  store ptr null, ptr %35, align 8
  %36 = load { ptr, ptr }, ptr %33, align 8
  %37 = call i64 @strings.IndexFunc(%"github.com/goplus/llgo/internal/runtime.String" %32, { ptr, ptr } %36)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %37)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %38 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %39 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %38, i32 0, i32 0
  store ptr @6, ptr %39, align 8
  %40 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %38, i32 0, i32 1
  store i64 12, ptr %40, align 4
  %41 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %38, align 8
  %42 = alloca { ptr, ptr }, align 8
  %43 = getelementptr inbounds { ptr, ptr }, ptr %42, i32 0, i32 0
  store ptr @"__llgo_stub.main.main$1", ptr %43, align 8
  %44 = getelementptr inbounds { ptr, ptr }, ptr %42, i32 0, i32 1
  store ptr null, ptr %44, align 8
  %45 = load { ptr, ptr }, ptr %42, align 8
  %46 = call i64 @strings.IndexFunc(%"github.com/goplus/llgo/internal/runtime.String" %41, { ptr, ptr } %45)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %46)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  ret i32 0
}

define i1 @"main.main$1"(i32 %0) {
_llgo_0:
  %1 = load ptr, ptr @unicode.Han, align 8
  %2 = call i1 @unicode.Is(ptr %1, i32 %0)
  ret i1 %2
}

declare void @strings.init()

declare void @unicode.init()

declare void @"github.com/goplus/llgo/internal/runtime.init"()

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64)

declare %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.StringToBytes"(%"github.com/goplus/llgo/internal/runtime.String")

declare { i64, %"github.com/goplus/llgo/internal/runtime.iface" } @"strings.(*Builder).Write"(ptr, %"github.com/goplus/llgo/internal/runtime.Slice")

declare { i64, %"github.com/goplus/llgo/internal/runtime.iface" } @"strings.(*Builder).WriteString"(ptr, %"github.com/goplus/llgo/internal/runtime.String")

declare i64 @"strings.(*Builder).Len"(ptr)

declare i64 @"strings.(*Builder).Cap"(ptr)

declare %"github.com/goplus/llgo/internal/runtime.String" @"strings.(*Builder).String"(ptr)

declare void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String")

declare void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64)

declare i64 @strings.IndexFunc(%"github.com/goplus/llgo/internal/runtime.String", { ptr, ptr })

define linkonce i1 @"__llgo_stub.main.main$1"(ptr %0, i32 %1) {
_llgo_0:
  %2 = tail call i1 @"main.main$1"(i32 %1)
  ret i1 %2
}

declare i1 @unicode.Is(ptr, i32)
