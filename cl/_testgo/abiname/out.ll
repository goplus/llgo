; ModuleID = 'main'
source_filename = "main"

%"github.com/goplus/llgo/internal/abi.Name" = type { ptr }
%"github.com/goplus/llgo/internal/runtime.String" = type { ptr, i64 }

@"main.init$guard" = global ptr null
@0 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@__llgo_argc = global ptr null
@__llgo_argv = global ptr null
@1 = private unnamed_addr constant [8 x i8] c"pkgPath\00", align 1

define %"github.com/goplus/llgo/internal/abi.Name" @main.NewPkgName(%"github.com/goplus/llgo/internal/runtime.String" %0) {
_llgo_0:
  %1 = extractvalue %"github.com/goplus/llgo/internal/runtime.String" %0, 1
  %2 = icmp sgt i64 %1, 0
  br i1 %2, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %3 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %4 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3, i32 0, i32 0
  store ptr @0, ptr %4, align 8
  %5 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3, i32 0, i32 1
  store i64 0, ptr %5, align 4
  %6 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3, align 8
  %7 = call %"github.com/goplus/llgo/internal/abi.Name" @"github.com/goplus/llgo/internal/abi.NewName"(%"github.com/goplus/llgo/internal/runtime.String" %0, %"github.com/goplus/llgo/internal/runtime.String" %6, i1 false, i1 false)
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %8 = phi ptr [ zeroinitializer, %_llgo_0 ], [ %7, %_llgo_1 ]
  ret ptr %8
}

define void @main.init() {
_llgo_0:
  %0 = load i1, ptr @"main.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"main.init$guard", align 1
  call void @"github.com/goplus/llgo/internal/abi.init"()
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
  %2 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2, i32 0, i32 0
  store ptr @1, ptr %3, align 8
  %4 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2, i32 0, i32 1
  store i64 7, ptr %4, align 4
  %5 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2, align 8
  %6 = call %"github.com/goplus/llgo/internal/abi.Name" @main.NewPkgName(%"github.com/goplus/llgo/internal/runtime.String" %5)
  %7 = call %"github.com/goplus/llgo/internal/runtime.String" @"(github.com/goplus/llgo/internal/abi.Name).Name"(%"github.com/goplus/llgo/internal/abi.Name" %6)
  %8 = call %"github.com/goplus/llgo/internal/runtime.String" @"(github.com/goplus/llgo/internal/abi.Name).Tag"(%"github.com/goplus/llgo/internal/abi.Name" %6)
  %9 = call i1 @"(github.com/goplus/llgo/internal/abi.Name).IsExported"(%"github.com/goplus/llgo/internal/abi.Name" %6)
  %10 = call i1 @"(github.com/goplus/llgo/internal/abi.Name).IsEmbedded"(%"github.com/goplus/llgo/internal/abi.Name" %6)
  %11 = call i1 @"(github.com/goplus/llgo/internal/abi.Name).IsBlank"(%"github.com/goplus/llgo/internal/abi.Name" %6)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %7)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %8)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintBool"(i1 %9)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintBool"(i1 %10)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintBool"(i1 %11)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  ret i32 0
}

declare %"github.com/goplus/llgo/internal/abi.Name" @"github.com/goplus/llgo/internal/abi.NewName"(%"github.com/goplus/llgo/internal/runtime.String", %"github.com/goplus/llgo/internal/runtime.String", i1, i1)

declare void @"github.com/goplus/llgo/internal/abi.init"()

declare void @"github.com/goplus/llgo/internal/runtime.init"()

declare %"github.com/goplus/llgo/internal/runtime.String" @"(github.com/goplus/llgo/internal/abi.Name).Name"(%"github.com/goplus/llgo/internal/abi.Name")

declare %"github.com/goplus/llgo/internal/runtime.String" @"(github.com/goplus/llgo/internal/abi.Name).Tag"(%"github.com/goplus/llgo/internal/abi.Name")

declare i1 @"(github.com/goplus/llgo/internal/abi.Name).IsExported"(%"github.com/goplus/llgo/internal/abi.Name")

declare i1 @"(github.com/goplus/llgo/internal/abi.Name).IsEmbedded"(%"github.com/goplus/llgo/internal/abi.Name")

declare i1 @"(github.com/goplus/llgo/internal/abi.Name).IsBlank"(%"github.com/goplus/llgo/internal/abi.Name")

declare void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String")

declare void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/internal/runtime.PrintBool"(i1)
