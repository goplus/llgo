; ModuleID = 'main'
source_filename = "main"

%"github.com/goplus/llgo/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/internal/abi.StructField" = type { %"github.com/goplus/llgo/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/internal/runtime.String", i1 }
%"github.com/goplus/llgo/internal/runtime.Slice" = type { ptr, i64, i64 }

@"main.init$guard" = global i1 false, align 1
@_llgo_int = linkonce global ptr null, align 8
@"main.struct$MYpsoM99ZwFY087IpUOkIw1zjBA_sgFXVodmn1m-G88" = linkonce global ptr null, align 8
@0 = private unnamed_addr constant [1 x i8] c"v", align 1
@1 = private unnamed_addr constant [4 x i8] c"main", align 1
@__llgo_argc = global i32 0, align 4
@__llgo_argv = global ptr null, align 8
@2 = private unnamed_addr constant [11 x i8] c"Foo: not ok", align 1
@"_llgo_struct$K-dZ9QotZfVPz2a0YdRa9vmZUuDXPTqZOlMShKEDJtk" = linkonce global ptr null, align 8
@3 = private unnamed_addr constant [1 x i8] c"V", align 1
@4 = private unnamed_addr constant [11 x i8] c"Bar: not ok", align 1
@5 = private unnamed_addr constant [9 x i8] c"F: not ok", align 1

define %"github.com/goplus/llgo/internal/runtime.eface" @main.Foo() {
_llgo_0:
  %0 = alloca { i64 }, align 8
<<<<<<< HEAD
  call void @llvm.memset(ptr %0, i8 0, i64 8, i1 false)
  %1 = getelementptr inbounds { i64 }, ptr %0, i32 0, i32 0
  store i64 1, ptr %1, align 4
  %2 = load { i64 }, ptr %0, align 4
  %3 = load ptr, ptr @"main.struct$MYpsoM99ZwFY087IpUOkIw1zjBA_sgFXVodmn1m-G88", align 8
  %4 = extractvalue { i64 } %2, 0
  %5 = inttoptr i64 %4 to ptr
  %6 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %7 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %6, i32 0, i32 0
  store ptr %3, ptr %7, align 8
  %8 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %6, i32 0, i32 1
  store ptr %5, ptr %8, align 8
  %9 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %6, align 8
  ret %"github.com/goplus/llgo/internal/runtime.eface" %9
=======
  %1 = call ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr %0, i64 8)
  %2 = getelementptr inbounds { i64 }, ptr %1, i32 0, i32 0
  store i64 1, ptr %2, align 4
  %3 = load { i64 }, ptr %1, align 4
  %4 = load ptr, ptr @_llgo_int, align 8
  %5 = load ptr, ptr @"main.struct$MYpsoM99ZwFY087IpUOkIw1zjBA_sgFXVodmn1m-G88", align 8
  %6 = extractvalue { i64 } %3, 0
  %7 = inttoptr i64 %6 to ptr
  %8 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %9 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %8, i32 0, i32 0
  store ptr %5, ptr %9, align 8
  %10 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %8, i32 0, i32 1
  store ptr %7, ptr %10, align 8
  %11 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %8, align 8
  ret %"github.com/goplus/llgo/internal/runtime.eface" %11
>>>>>>> 0436d183 (ssa: fix map key has typeargs)
}

define void @main.init() {
_llgo_0:
  %0 = load i1, ptr @"main.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"main.init$guard", align 1
  call void @"github.com/goplus/llgo/cl/internal/foo.init"()
  call void @"main.init$after"()
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
  %2 = call %"github.com/goplus/llgo/internal/runtime.eface" @main.Foo()
  %3 = alloca { i64 }, align 8
<<<<<<< HEAD
  call void @llvm.memset(ptr %3, i8 0, i64 8, i1 false)
  %4 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %2, 0
  %5 = load ptr, ptr @"main.struct$MYpsoM99ZwFY087IpUOkIw1zjBA_sgFXVodmn1m-G88", align 8
  %6 = icmp eq ptr %4, %5
  br i1 %6, label %_llgo_10, label %_llgo_11

_llgo_1:                                          ; preds = %_llgo_12
  %7 = getelementptr inbounds { i64 }, ptr %3, i32 0, i32 0
  %8 = load i64, ptr %7, align 4
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %8)
=======
  %4 = call ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr %3, i64 8)
  %5 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %2, 0
  %6 = load ptr, ptr @_llgo_int, align 8
  %7 = load ptr, ptr @"main.struct$MYpsoM99ZwFY087IpUOkIw1zjBA_sgFXVodmn1m-G88", align 8
  %8 = icmp eq ptr %5, %7
  br i1 %8, label %_llgo_10, label %_llgo_11

_llgo_1:                                          ; preds = %_llgo_12
  %9 = getelementptr inbounds { i64 }, ptr %4, i32 0, i32 0
  %10 = load i64, ptr %9, align 4
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %10)
>>>>>>> 0436d183 (ssa: fix map key has typeargs)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_3, %_llgo_1
<<<<<<< HEAD
  %9 = call %"github.com/goplus/llgo/internal/runtime.eface" @"github.com/goplus/llgo/cl/internal/foo.Bar"()
  %10 = alloca { i64 }, align 8
  call void @llvm.memset(ptr %10, i8 0, i64 8, i1 false)
  %11 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %9, 0
  %12 = load ptr, ptr @"_llgo_struct$K-dZ9QotZfVPz2a0YdRa9vmZUuDXPTqZOlMShKEDJtk", align 8
  %13 = icmp eq ptr %11, %12
  br i1 %13, label %_llgo_13, label %_llgo_14

_llgo_3:                                          ; preds = %_llgo_12
  %14 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %15 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %14, i32 0, i32 0
  store ptr @2, ptr %15, align 8
  %16 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %14, i32 0, i32 1
  store i64 11, ptr %16, align 4
  %17 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %14, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %17)
=======
  %11 = call %"github.com/goplus/llgo/internal/runtime.eface" @"github.com/goplus/llgo/cl/internal/foo.Bar"()
  %12 = alloca { i64 }, align 8
  %13 = call ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr %12, i64 8)
  %14 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %11, 0
  %15 = load ptr, ptr @_llgo_int, align 8
  %16 = load ptr, ptr @"_llgo_struct$K-dZ9QotZfVPz2a0YdRa9vmZUuDXPTqZOlMShKEDJtk", align 8
  %17 = icmp eq ptr %14, %16
  br i1 %17, label %_llgo_13, label %_llgo_14

_llgo_3:                                          ; preds = %_llgo_12
  %18 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %19 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %18, i32 0, i32 0
  store ptr @2, ptr %19, align 8
  %20 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %18, i32 0, i32 1
  store i64 11, ptr %20, align 4
  %21 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %18, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %21)
>>>>>>> 0436d183 (ssa: fix map key has typeargs)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_2

_llgo_4:                                          ; preds = %_llgo_15
<<<<<<< HEAD
  %18 = getelementptr inbounds { i64 }, ptr %10, i32 0, i32 0
  %19 = load i64, ptr %18, align 4
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %19)
=======
  %22 = getelementptr inbounds { i64 }, ptr %13, i32 0, i32 0
  %23 = load i64, ptr %22, align 4
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %23)
>>>>>>> 0436d183 (ssa: fix map key has typeargs)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_6, %_llgo_4
<<<<<<< HEAD
  %20 = alloca { i64 }, align 8
  call void @llvm.memset(ptr %20, i8 0, i64 8, i1 false)
  %21 = call %"github.com/goplus/llgo/internal/runtime.eface" @"github.com/goplus/llgo/cl/internal/foo.F"()
  %22 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %21, 0
  %23 = load ptr, ptr @"main.struct$MYpsoM99ZwFY087IpUOkIw1zjBA_sgFXVodmn1m-G88", align 8
  %24 = icmp eq ptr %22, %23
  br i1 %24, label %_llgo_16, label %_llgo_17

_llgo_6:                                          ; preds = %_llgo_15
  %25 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %26 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %25, i32 0, i32 0
  store ptr @4, ptr %26, align 8
  %27 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %25, i32 0, i32 1
  store i64 11, ptr %27, align 4
  %28 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %25, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %28)
=======
  %24 = alloca { i64 }, align 8
  %25 = call ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr %24, i64 8)
  %26 = call %"github.com/goplus/llgo/internal/runtime.eface" @"github.com/goplus/llgo/cl/internal/foo.F"()
  %27 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %26, 0
  %28 = load ptr, ptr @_llgo_int, align 8
  %29 = load ptr, ptr @"main.struct$MYpsoM99ZwFY087IpUOkIw1zjBA_sgFXVodmn1m-G88", align 8
  %30 = icmp eq ptr %27, %29
  br i1 %30, label %_llgo_16, label %_llgo_17

_llgo_6:                                          ; preds = %_llgo_15
  %31 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %32 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %31, i32 0, i32 0
  store ptr @4, ptr %32, align 8
  %33 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %31, i32 0, i32 1
  store i64 11, ptr %33, align 4
  %34 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %31, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %34)
>>>>>>> 0436d183 (ssa: fix map key has typeargs)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_5

_llgo_7:                                          ; preds = %_llgo_18
<<<<<<< HEAD
  %29 = getelementptr inbounds { i64 }, ptr %20, i32 0, i32 0
  %30 = load i64, ptr %29, align 4
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %30)
=======
  %35 = getelementptr inbounds { i64 }, ptr %25, i32 0, i32 0
  %36 = load i64, ptr %35, align 4
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %36)
>>>>>>> 0436d183 (ssa: fix map key has typeargs)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_9, %_llgo_7
  ret i32 0

_llgo_9:                                          ; preds = %_llgo_18
<<<<<<< HEAD
  %31 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %32 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %31, i32 0, i32 0
  store ptr @5, ptr %32, align 8
  %33 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %31, i32 0, i32 1
  store i64 9, ptr %33, align 4
  %34 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %31, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %34)
=======
  %37 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %38 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %37, i32 0, i32 0
  store ptr @5, ptr %38, align 8
  %39 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %37, i32 0, i32 1
  store i64 9, ptr %39, align 4
  %40 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %37, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %40)
>>>>>>> 0436d183 (ssa: fix map key has typeargs)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_8

_llgo_10:                                         ; preds = %_llgo_0
<<<<<<< HEAD
  %35 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %2, 1
  %36 = ptrtoint ptr %35 to i64
  %37 = alloca { i64 }, align 8
  %38 = getelementptr inbounds { i64 }, ptr %37, i32 0, i32 0
  store i64 %36, ptr %38, align 4
  %39 = load { i64 }, ptr %37, align 4
  %40 = alloca { { i64 }, i1 }, align 8
  %41 = getelementptr inbounds { { i64 }, i1 }, ptr %40, i32 0, i32 0
  store { i64 } %39, ptr %41, align 4
  %42 = getelementptr inbounds { { i64 }, i1 }, ptr %40, i32 0, i32 1
  store i1 true, ptr %42, align 1
  %43 = load { { i64 }, i1 }, ptr %40, align 4
  br label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_0
  %44 = alloca { { i64 }, i1 }, align 8
  %45 = getelementptr inbounds { { i64 }, i1 }, ptr %44, i32 0, i32 0
  store { i64 } zeroinitializer, ptr %45, align 4
  %46 = getelementptr inbounds { { i64 }, i1 }, ptr %44, i32 0, i32 1
  store i1 false, ptr %46, align 1
  %47 = load { { i64 }, i1 }, ptr %44, align 4
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_10
  %48 = phi { { i64 }, i1 } [ %43, %_llgo_10 ], [ %47, %_llgo_11 ]
  %49 = extractvalue { { i64 }, i1 } %48, 0
  store { i64 } %49, ptr %3, align 4
  %50 = extractvalue { { i64 }, i1 } %48, 1
  br i1 %50, label %_llgo_1, label %_llgo_3

_llgo_13:                                         ; preds = %_llgo_2
  %51 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %9, 1
  %52 = ptrtoint ptr %51 to i64
  %53 = alloca { i64 }, align 8
  %54 = getelementptr inbounds { i64 }, ptr %53, i32 0, i32 0
  store i64 %52, ptr %54, align 4
  %55 = load { i64 }, ptr %53, align 4
  %56 = alloca { { i64 }, i1 }, align 8
  %57 = getelementptr inbounds { { i64 }, i1 }, ptr %56, i32 0, i32 0
  store { i64 } %55, ptr %57, align 4
  %58 = getelementptr inbounds { { i64 }, i1 }, ptr %56, i32 0, i32 1
  store i1 true, ptr %58, align 1
  %59 = load { { i64 }, i1 }, ptr %56, align 4
  br label %_llgo_15

_llgo_14:                                         ; preds = %_llgo_2
  %60 = alloca { { i64 }, i1 }, align 8
  %61 = getelementptr inbounds { { i64 }, i1 }, ptr %60, i32 0, i32 0
  store { i64 } zeroinitializer, ptr %61, align 4
  %62 = getelementptr inbounds { { i64 }, i1 }, ptr %60, i32 0, i32 1
  store i1 false, ptr %62, align 1
  %63 = load { { i64 }, i1 }, ptr %60, align 4
  br label %_llgo_15

_llgo_15:                                         ; preds = %_llgo_14, %_llgo_13
  %64 = phi { { i64 }, i1 } [ %59, %_llgo_13 ], [ %63, %_llgo_14 ]
  %65 = extractvalue { { i64 }, i1 } %64, 0
  store { i64 } %65, ptr %10, align 4
  %66 = extractvalue { { i64 }, i1 } %64, 1
  br i1 %66, label %_llgo_4, label %_llgo_6

_llgo_16:                                         ; preds = %_llgo_5
  %67 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %21, 1
  %68 = ptrtoint ptr %67 to i64
  %69 = alloca { i64 }, align 8
  %70 = getelementptr inbounds { i64 }, ptr %69, i32 0, i32 0
  store i64 %68, ptr %70, align 4
  %71 = load { i64 }, ptr %69, align 4
  %72 = alloca { { i64 }, i1 }, align 8
  %73 = getelementptr inbounds { { i64 }, i1 }, ptr %72, i32 0, i32 0
  store { i64 } %71, ptr %73, align 4
  %74 = getelementptr inbounds { { i64 }, i1 }, ptr %72, i32 0, i32 1
  store i1 true, ptr %74, align 1
  %75 = load { { i64 }, i1 }, ptr %72, align 4
  br label %_llgo_18

_llgo_17:                                         ; preds = %_llgo_5
  %76 = alloca { { i64 }, i1 }, align 8
  %77 = getelementptr inbounds { { i64 }, i1 }, ptr %76, i32 0, i32 0
  store { i64 } zeroinitializer, ptr %77, align 4
  %78 = getelementptr inbounds { { i64 }, i1 }, ptr %76, i32 0, i32 1
  store i1 false, ptr %78, align 1
  %79 = load { { i64 }, i1 }, ptr %76, align 4
  br label %_llgo_18

_llgo_18:                                         ; preds = %_llgo_17, %_llgo_16
  %80 = phi { { i64 }, i1 } [ %75, %_llgo_16 ], [ %79, %_llgo_17 ]
  %81 = extractvalue { { i64 }, i1 } %80, 0
  store { i64 } %81, ptr %20, align 4
  %82 = extractvalue { { i64 }, i1 } %80, 1
  br i1 %82, label %_llgo_7, label %_llgo_9
=======
  %41 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %2, 1
  %42 = ptrtoint ptr %41 to i64
  %43 = alloca { i64 }, align 8
  %44 = getelementptr inbounds { i64 }, ptr %43, i32 0, i32 0
  store i64 %42, ptr %44, align 4
  %45 = load { i64 }, ptr %43, align 4
  %46 = alloca { { i64 }, i1 }, align 8
  %47 = getelementptr inbounds { { i64 }, i1 }, ptr %46, i32 0, i32 0
  store { i64 } %45, ptr %47, align 4
  %48 = getelementptr inbounds { { i64 }, i1 }, ptr %46, i32 0, i32 1
  store i1 true, ptr %48, align 1
  %49 = load { { i64 }, i1 }, ptr %46, align 4
  br label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_0
  %50 = alloca { { i64 }, i1 }, align 8
  %51 = getelementptr inbounds { { i64 }, i1 }, ptr %50, i32 0, i32 0
  store { i64 } zeroinitializer, ptr %51, align 4
  %52 = getelementptr inbounds { { i64 }, i1 }, ptr %50, i32 0, i32 1
  store i1 false, ptr %52, align 1
  %53 = load { { i64 }, i1 }, ptr %50, align 4
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_10
  %54 = phi { { i64 }, i1 } [ %49, %_llgo_10 ], [ %53, %_llgo_11 ]
  %55 = extractvalue { { i64 }, i1 } %54, 0
  store { i64 } %55, ptr %4, align 4
  %56 = extractvalue { { i64 }, i1 } %54, 1
  br i1 %56, label %_llgo_1, label %_llgo_3

_llgo_13:                                         ; preds = %_llgo_2
  %57 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %11, 1
  %58 = ptrtoint ptr %57 to i64
  %59 = alloca { i64 }, align 8
  %60 = getelementptr inbounds { i64 }, ptr %59, i32 0, i32 0
  store i64 %58, ptr %60, align 4
  %61 = load { i64 }, ptr %59, align 4
  %62 = alloca { { i64 }, i1 }, align 8
  %63 = getelementptr inbounds { { i64 }, i1 }, ptr %62, i32 0, i32 0
  store { i64 } %61, ptr %63, align 4
  %64 = getelementptr inbounds { { i64 }, i1 }, ptr %62, i32 0, i32 1
  store i1 true, ptr %64, align 1
  %65 = load { { i64 }, i1 }, ptr %62, align 4
  br label %_llgo_15

_llgo_14:                                         ; preds = %_llgo_2
  %66 = alloca { { i64 }, i1 }, align 8
  %67 = getelementptr inbounds { { i64 }, i1 }, ptr %66, i32 0, i32 0
  store { i64 } zeroinitializer, ptr %67, align 4
  %68 = getelementptr inbounds { { i64 }, i1 }, ptr %66, i32 0, i32 1
  store i1 false, ptr %68, align 1
  %69 = load { { i64 }, i1 }, ptr %66, align 4
  br label %_llgo_15

_llgo_15:                                         ; preds = %_llgo_14, %_llgo_13
  %70 = phi { { i64 }, i1 } [ %65, %_llgo_13 ], [ %69, %_llgo_14 ]
  %71 = extractvalue { { i64 }, i1 } %70, 0
  store { i64 } %71, ptr %13, align 4
  %72 = extractvalue { { i64 }, i1 } %70, 1
  br i1 %72, label %_llgo_4, label %_llgo_6

_llgo_16:                                         ; preds = %_llgo_5
  %73 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %26, 1
  %74 = ptrtoint ptr %73 to i64
  %75 = alloca { i64 }, align 8
  %76 = getelementptr inbounds { i64 }, ptr %75, i32 0, i32 0
  store i64 %74, ptr %76, align 4
  %77 = load { i64 }, ptr %75, align 4
  %78 = alloca { { i64 }, i1 }, align 8
  %79 = getelementptr inbounds { { i64 }, i1 }, ptr %78, i32 0, i32 0
  store { i64 } %77, ptr %79, align 4
  %80 = getelementptr inbounds { { i64 }, i1 }, ptr %78, i32 0, i32 1
  store i1 true, ptr %80, align 1
  %81 = load { { i64 }, i1 }, ptr %78, align 4
  br label %_llgo_18

_llgo_17:                                         ; preds = %_llgo_5
  %82 = alloca { { i64 }, i1 }, align 8
  %83 = getelementptr inbounds { { i64 }, i1 }, ptr %82, i32 0, i32 0
  store { i64 } zeroinitializer, ptr %83, align 4
  %84 = getelementptr inbounds { { i64 }, i1 }, ptr %82, i32 0, i32 1
  store i1 false, ptr %84, align 1
  %85 = load { { i64 }, i1 }, ptr %82, align 4
  br label %_llgo_18

_llgo_18:                                         ; preds = %_llgo_17, %_llgo_16
  %86 = phi { { i64 }, i1 } [ %81, %_llgo_16 ], [ %85, %_llgo_17 ]
  %87 = extractvalue { { i64 }, i1 } %86, 0
  store { i64 } %87, ptr %25, align 4
  %88 = extractvalue { { i64 }, i1 } %86, 1
  br i1 %88, label %_llgo_7, label %_llgo_9
>>>>>>> 0436d183 (ssa: fix map key has typeargs)
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

define void @"main.init$after"() {
_llgo_0:
  %0 = load ptr, ptr @_llgo_int, align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 34)
  store ptr %2, ptr @_llgo_int, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %3 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %4 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3, i32 0, i32 0
  store ptr @0, ptr %4, align 8
  %5 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3, i32 0, i32 1
  store i64 1, ptr %5, align 4
  %6 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3, align 8
  %7 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %8 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %7, i32 0, i32 0
  store ptr null, ptr %8, align 8
  %9 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %7, i32 0, i32 1
  store i64 0, ptr %9, align 4
  %10 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %7, align 8
  %11 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 34)
  %12 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %6, ptr %11, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %10, i1 false)
  %13 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %14 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %13, i32 0, i32 0
  store ptr @1, ptr %14, align 8
  %15 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %13, i32 0, i32 1
  store i64 4, ptr %15, align 4
  %16 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %13, align 8
  %17 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 56)
  %18 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %17, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %12, ptr %18, align 8
  %19 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %20 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %19, i32 0, i32 0
  store ptr %17, ptr %20, align 8
  %21 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %19, i32 0, i32 1
  store i64 1, ptr %21, align 4
  %22 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %19, i32 0, i32 2
  store i64 1, ptr %22, align 4
  %23 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %19, align 8
  %24 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %16, i64 8, %"github.com/goplus/llgo/internal/runtime.Slice" %23)
  store ptr %24, ptr @"main.struct$MYpsoM99ZwFY087IpUOkIw1zjBA_sgFXVodmn1m-G88", align 8
  %25 = load ptr, ptr @"_llgo_struct$K-dZ9QotZfVPz2a0YdRa9vmZUuDXPTqZOlMShKEDJtk", align 8
  %26 = icmp eq ptr %25, null
  br i1 %26, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %27 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %28 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %27, i32 0, i32 0
  store ptr @3, ptr %28, align 8
  %29 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %27, i32 0, i32 1
  store i64 1, ptr %29, align 4
  %30 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %27, align 8
  %31 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %32 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %31, i32 0, i32 0
  store ptr null, ptr %32, align 8
  %33 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %31, i32 0, i32 1
  store i64 0, ptr %33, align 4
  %34 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %31, align 8
  %35 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 34)
  %36 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %30, ptr %35, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %34, i1 false)
  %37 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %38 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %37, i32 0, i32 0
  store ptr @1, ptr %38, align 8
  %39 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %37, i32 0, i32 1
  store i64 4, ptr %39, align 4
  %40 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %37, align 8
  %41 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 56)
  %42 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %41, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %36, ptr %42, align 8
  %43 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %44 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %43, i32 0, i32 0
  store ptr %41, ptr %44, align 8
  %45 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %43, i32 0, i32 1
  store i64 1, ptr %45, align 4
  %46 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %43, i32 0, i32 2
  store i64 1, ptr %46, align 4
  %47 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %43, align 8
  %48 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %40, i64 8, %"github.com/goplus/llgo/internal/runtime.Slice" %47)
  store ptr %48, ptr @"_llgo_struct$K-dZ9QotZfVPz2a0YdRa9vmZUuDXPTqZOlMShKEDJtk", align 8
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_2
  ret void
}

declare ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String", i64, %"github.com/goplus/llgo/internal/runtime.Slice")

declare %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/internal/runtime.String", i1)

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64)

declare void @"github.com/goplus/llgo/cl/internal/foo.init"()

declare void @"github.com/goplus/llgo/internal/runtime.init"()

declare void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64)

declare void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String")

declare %"github.com/goplus/llgo/internal/runtime.eface" @"github.com/goplus/llgo/cl/internal/foo.Bar"()

declare %"github.com/goplus/llgo/internal/runtime.eface" @"github.com/goplus/llgo/cl/internal/foo.F"()

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
