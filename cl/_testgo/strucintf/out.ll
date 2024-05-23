; ModuleID = 'main'
source_filename = "main"

%"github.com/goplus/llgo/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/internal/runtime.String" = type { ptr, i64 }

@"main.init$guard" = global ptr null
@__llgo_argc = global ptr null
@__llgo_argv = global ptr null
@"_llgo_struct$K-dZ9QotZfVPz2a0YdRa9vmZUuDXPTqZOlMShKEDJtk" = global ptr null
@"main.struct$MYpsoM99ZwFY087IpUOkIw1zjBA_sgFXVodmn1m-G88" = global ptr null
@0 = private unnamed_addr constant [12 x i8] c"Bar: not ok\00", align 1
@1 = private unnamed_addr constant [10 x i8] c"F: not ok\00", align 1

define void @main.init() {
_llgo_0:
  %0 = load i1, ptr @"main.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"main.init$guard", align 1
  call void @"github.com/goplus/llgo/_demo/interf/foo.init"()
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
  %2 = alloca { i64 }, align 8
  %3 = call ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr %2, i64 8)
  %4 = call %"github.com/goplus/llgo/internal/runtime.eface" @"github.com/goplus/llgo/_demo/interf/foo.Bar"()
  %5 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %4, 0
  %6 = load ptr, ptr @"_llgo_struct$K-dZ9QotZfVPz2a0YdRa9vmZUuDXPTqZOlMShKEDJtk", align 8
  %7 = icmp eq ptr %5, %6
  %8 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %4, 1
  %9 = ptrtoint ptr %8 to i64
  %10 = alloca { i64 }, align 8
  %11 = getelementptr inbounds { i64 }, ptr %10, i32 0, i32 0
  store i64 %9, ptr %11, align 4
  %12 = load { i64 }, ptr %10, align 4
  %13 = alloca { { i64 }, i1 }, align 8
  %14 = getelementptr inbounds { { i64 }, i1 }, ptr %13, i32 0, i32 0
  store { i64 } %12, ptr %14, align 4
  %15 = getelementptr inbounds { { i64 }, i1 }, ptr %13, i32 0, i32 1
  store i1 true, ptr %15, align 1
  %16 = load { { i64 }, i1 }, ptr %13, align 4
  %17 = alloca { { i64 }, i1 }, align 8
  %18 = getelementptr inbounds { { i64 }, i1 }, ptr %17, i32 0, i32 0
  store { i64 } zeroinitializer, ptr %18, align 4
  %19 = getelementptr inbounds { { i64 }, i1 }, ptr %17, i32 0, i32 1
  store i1 false, ptr %19, align 1
  %20 = load { { i64 }, i1 }, ptr %17, align 4
  %21 = select i1 %7, { { i64 }, i1 } %16, { { i64 }, i1 } %20
  %22 = extractvalue { { i64 }, i1 } %21, 0
  store { i64 } %22, ptr %3, align 4
  %23 = extractvalue { { i64 }, i1 } %21, 1
  br i1 %23, label %_llgo_1, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_0
  %24 = getelementptr inbounds { i64 }, ptr %3, i32 0, i32 0
  %25 = load i64, ptr %24, align 4
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %25)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_3, %_llgo_1
  %26 = alloca { i64 }, align 8
  %27 = call ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr %26, i64 8)
  %28 = call %"github.com/goplus/llgo/internal/runtime.eface" @"github.com/goplus/llgo/_demo/interf/foo.F"()
  %29 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %28, 0
  %30 = load ptr, ptr @"main.struct$MYpsoM99ZwFY087IpUOkIw1zjBA_sgFXVodmn1m-G88", align 8
  %31 = icmp eq ptr %29, %30
  %32 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %28, 1
  %33 = ptrtoint ptr %32 to i64
  %34 = alloca { i64 }, align 8
  %35 = getelementptr inbounds { i64 }, ptr %34, i32 0, i32 0
  store i64 %33, ptr %35, align 4
  %36 = load { i64 }, ptr %34, align 4
  %37 = alloca { { i64 }, i1 }, align 8
  %38 = getelementptr inbounds { { i64 }, i1 }, ptr %37, i32 0, i32 0
  store { i64 } %36, ptr %38, align 4
  %39 = getelementptr inbounds { { i64 }, i1 }, ptr %37, i32 0, i32 1
  store i1 true, ptr %39, align 1
  %40 = load { { i64 }, i1 }, ptr %37, align 4
  %41 = alloca { { i64 }, i1 }, align 8
  %42 = getelementptr inbounds { { i64 }, i1 }, ptr %41, i32 0, i32 0
  store { i64 } zeroinitializer, ptr %42, align 4
  %43 = getelementptr inbounds { { i64 }, i1 }, ptr %41, i32 0, i32 1
  store i1 false, ptr %43, align 1
  %44 = load { { i64 }, i1 }, ptr %41, align 4
  %45 = select i1 %31, { { i64 }, i1 } %40, { { i64 }, i1 } %44
  %46 = extractvalue { { i64 }, i1 } %45, 0
  store { i64 } %46, ptr %27, align 4
  %47 = extractvalue { { i64 }, i1 } %45, 1
  br i1 %47, label %_llgo_4, label %_llgo_6

_llgo_3:                                          ; preds = %_llgo_0
  %48 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %49 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %48, i32 0, i32 0
  store ptr @0, ptr %49, align 8
  %50 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %48, i32 0, i32 1
  store i64 11, ptr %50, align 4
  %51 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %48, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %51)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_2

_llgo_4:                                          ; preds = %_llgo_2
  %52 = getelementptr inbounds { i64 }, ptr %27, i32 0, i32 0
  %53 = load i64, ptr %52, align 4
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %53)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_6, %_llgo_4
  ret i32 0

_llgo_6:                                          ; preds = %_llgo_2
  %54 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %55 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %54, i32 0, i32 0
  store ptr @1, ptr %55, align 8
  %56 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %54, i32 0, i32 1
  store i64 9, ptr %56, align 4
  %57 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %54, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %57)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_5
}

declare void @"github.com/goplus/llgo/_demo/interf/foo.init"()

declare void @"github.com/goplus/llgo/internal/runtime.init"()

declare ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr, i64)

declare %"github.com/goplus/llgo/internal/runtime.eface" @"github.com/goplus/llgo/_demo/interf/foo.Bar"()

declare void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64)

declare void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8)

declare %"github.com/goplus/llgo/internal/runtime.eface" @"github.com/goplus/llgo/_demo/interf/foo.F"()

declare void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String")
