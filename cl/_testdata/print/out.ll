; ModuleID = 'main'
source_filename = "main"

%"github.com/goplus/llgo/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/internal/runtime.String" = type { ptr, i64 }
%main.stringStruct = type { ptr, i64 }
%main.slice = type { ptr, i64, i64 }
%"github.com/goplus/llgo/internal/runtime.iface" = type { ptr, ptr }

@"main.init$guard" = global ptr null
@main.minhexdigits = global ptr null
@0 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@__llgo_argc = global ptr null
@__llgo_argv = global ptr null
@1 = private unnamed_addr constant [5 x i8] c"llgo\00", align 1
@2 = private unnamed_addr constant [11 x i8] c"check bool\00", align 1
@3 = private unnamed_addr constant [9 x i8] c"check &^\00", align 1
@4 = private unnamed_addr constant [5 x i8] c"llgo\00", align 1
@5 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@6 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@7 = private unnamed_addr constant [4 x i8] c"NaN\00", align 1
@8 = private unnamed_addr constant [5 x i8] c"+Inf\00", align 1
@9 = private unnamed_addr constant [5 x i8] c"-Inf\00", align 1
@10 = private unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 1
@11 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@12 = private unnamed_addr constant [2 x i8] c" \00", align 1
@13 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@14 = private unnamed_addr constant [2 x i8] c" \00", align 1

define %"github.com/goplus/llgo/internal/runtime.Slice" @main.bytes(%"github.com/goplus/llgo/internal/runtime.String" %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %0, ptr %1, align 8
  %2 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 24)
  %3 = call ptr @main.stringStructOf(ptr %1)
  %4 = getelementptr inbounds %main.stringStruct, ptr %3, i32 0, i32 0
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %main.slice, ptr %2, i32 0, i32 0
  store ptr %5, ptr %6, align 8
  %7 = getelementptr inbounds %main.stringStruct, ptr %3, i32 0, i32 1
  %8 = load i64, ptr %7, align 4
  %9 = getelementptr inbounds %main.slice, ptr %2, i32 0, i32 1
  store i64 %8, ptr %9, align 4
  %10 = getelementptr inbounds %main.stringStruct, ptr %3, i32 0, i32 1
  %11 = load i64, ptr %10, align 4
  %12 = getelementptr inbounds %main.slice, ptr %2, i32 0, i32 2
  store i64 %11, ptr %12, align 4
  %13 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2, align 8
  ret %"github.com/goplus/llgo/internal/runtime.Slice" %13
}

define void @main.gwrite(%"github.com/goplus/llgo/internal/runtime.Slice" %0) {
_llgo_0:
  %1 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %0, 1
  %2 = icmp eq i64 %1, 0
  br i1 %2, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  ret void

_llgo_2:                                          ; preds = %_llgo_0
  %3 = call i32 (ptr, ...) @printf(ptr @0, %"github.com/goplus/llgo/internal/runtime.Slice" %0)
  ret void
}

define void @main.init() {
_llgo_0:
  %0 = load i1, ptr @"main.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"main.init$guard", align 1
  store i64 0, ptr @main.minhexdigits, align 4
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
  store i64 4, ptr %4, align 4
  %5 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2, align 8
  call void @main.printstring(%"github.com/goplus/llgo/internal/runtime.String" %5)
  call void @main.printnl()
  call void @main.printuint(i64 1024)
  call void @main.printnl()
  call void @main.printhex(i64 305441743)
  call void @main.printnl()
  call void @main.prinxor(i64 1)
  call void @main.printnl()
  call void @main.prinsub(i64 100)
  call void @main.printnl()
  call void @main.prinusub(i64 -1)
  call void @main.printnl()
  call void @main.prinfsub(double 1.001000e+02)
  call void @main.printnl()
  %6 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 13)
  %7 = call %"github.com/goplus/llgo/internal/runtime.iface" @"github.com/goplus/llgo/internal/runtime.MakeAnyIntptr"(ptr %6, i64 1315859240)
  call void @main.printany(%"github.com/goplus/llgo/internal/runtime.iface" %7)
  call void @main.printnl()
  %8 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 14)
  %9 = call %"github.com/goplus/llgo/internal/runtime.iface" @"github.com/goplus/llgo/internal/runtime.MakeAnyIntptr"(ptr %8, i64 4746175415993761792)
  call void @main.printany(%"github.com/goplus/llgo/internal/runtime.iface" %9)
  call void @main.printnl()
  br i1 true, label %_llgo_3, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_3
  %10 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 32)
  %11 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %10, i64 0
  %12 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %13 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %12, i32 0, i32 0
  store ptr @2, ptr %13, align 8
  %14 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %12, i32 0, i32 1
  store i64 10, ptr %14, align 4
  %15 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %12, align 8
  %16 = call %"github.com/goplus/llgo/internal/runtime.iface" @"github.com/goplus/llgo/internal/runtime.MakeAnyString"(%"github.com/goplus/llgo/internal/runtime.String" %15)
  store %"github.com/goplus/llgo/internal/runtime.iface" %16, ptr %11, align 8
  %17 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %10, i64 1
  %18 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 1)
  %19 = call %"github.com/goplus/llgo/internal/runtime.iface" @"github.com/goplus/llgo/internal/runtime.MakeAnyIntptr"(ptr %18, i64 -1)
  store %"github.com/goplus/llgo/internal/runtime.iface" %19, ptr %17, align 8
  %20 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr %10, i64 16, i64 2, i64 0, i64 2, i64 2)
  call void @main.println(%"github.com/goplus/llgo/internal/runtime.Slice" %20)
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_3, %_llgo_1, %_llgo_0
  %21 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 48)
  %22 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %21, i64 0
  %23 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %24 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %23, i32 0, i32 0
  store ptr @3, ptr %24, align 8
  %25 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %23, i32 0, i32 1
  store i64 8, ptr %25, align 4
  %26 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %23, align 8
  %27 = call %"github.com/goplus/llgo/internal/runtime.iface" @"github.com/goplus/llgo/internal/runtime.MakeAnyString"(%"github.com/goplus/llgo/internal/runtime.String" %26)
  store %"github.com/goplus/llgo/internal/runtime.iface" %27, ptr %22, align 8
  %28 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %21, i64 1
  %29 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 1)
  %30 = call %"github.com/goplus/llgo/internal/runtime.iface" @"github.com/goplus/llgo/internal/runtime.MakeAnyIntptr"(ptr %29, i64 -1)
  store %"github.com/goplus/llgo/internal/runtime.iface" %30, ptr %28, align 8
  %31 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %21, i64 2
  %32 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 1)
  %33 = call %"github.com/goplus/llgo/internal/runtime.iface" @"github.com/goplus/llgo/internal/runtime.MakeAnyIntptr"(ptr %32, i64 -1)
  store %"github.com/goplus/llgo/internal/runtime.iface" %33, ptr %31, align 8
  %34 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr %21, i64 16, i64 3, i64 0, i64 3, i64 3)
  call void @main.println(%"github.com/goplus/llgo/internal/runtime.Slice" %34)
  %35 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 256)
  %36 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %35, i64 0
  %37 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 1)
  %38 = call %"github.com/goplus/llgo/internal/runtime.iface" @"github.com/goplus/llgo/internal/runtime.MakeAnyIntptr"(ptr %37, i64 -1)
  store %"github.com/goplus/llgo/internal/runtime.iface" %38, ptr %36, align 8
  %39 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %35, i64 1
  %40 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 1)
  %41 = call %"github.com/goplus/llgo/internal/runtime.iface" @"github.com/goplus/llgo/internal/runtime.MakeAnyIntptr"(ptr %40, i64 0)
  store %"github.com/goplus/llgo/internal/runtime.iface" %41, ptr %39, align 8
  %42 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %35, i64 2
  %43 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 5)
  %44 = call %"github.com/goplus/llgo/internal/runtime.iface" @"github.com/goplus/llgo/internal/runtime.MakeAnyIntptr"(ptr %43, i64 97)
  store %"github.com/goplus/llgo/internal/runtime.iface" %44, ptr %42, align 8
  %45 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %35, i64 3
  %46 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 5)
  %47 = call %"github.com/goplus/llgo/internal/runtime.iface" @"github.com/goplus/llgo/internal/runtime.MakeAnyIntptr"(ptr %46, i64 65)
  store %"github.com/goplus/llgo/internal/runtime.iface" %47, ptr %45, align 8
  %48 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %35, i64 4
  %49 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 5)
  %50 = call %"github.com/goplus/llgo/internal/runtime.iface" @"github.com/goplus/llgo/internal/runtime.MakeAnyIntptr"(ptr %49, i64 20013)
  store %"github.com/goplus/llgo/internal/runtime.iface" %50, ptr %48, align 8
  %51 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %35, i64 5
  %52 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 3)
  %53 = call %"github.com/goplus/llgo/internal/runtime.iface" @"github.com/goplus/llgo/internal/runtime.MakeAnyIntptr"(ptr %52, i64 1)
  store %"github.com/goplus/llgo/internal/runtime.iface" %53, ptr %51, align 8
  %54 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %35, i64 6
  %55 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 4)
  %56 = call %"github.com/goplus/llgo/internal/runtime.iface" @"github.com/goplus/llgo/internal/runtime.MakeAnyIntptr"(ptr %55, i64 2)
  store %"github.com/goplus/llgo/internal/runtime.iface" %56, ptr %54, align 8
  %57 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %35, i64 7
  %58 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 5)
  %59 = call %"github.com/goplus/llgo/internal/runtime.iface" @"github.com/goplus/llgo/internal/runtime.MakeAnyIntptr"(ptr %58, i64 3)
  store %"github.com/goplus/llgo/internal/runtime.iface" %59, ptr %57, align 8
  %60 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %35, i64 8
  %61 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 6)
  %62 = call %"github.com/goplus/llgo/internal/runtime.iface" @"github.com/goplus/llgo/internal/runtime.MakeAnyIntptr"(ptr %61, i64 4)
  store %"github.com/goplus/llgo/internal/runtime.iface" %62, ptr %60, align 8
  %63 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %35, i64 9
  %64 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 2)
  %65 = call %"github.com/goplus/llgo/internal/runtime.iface" @"github.com/goplus/llgo/internal/runtime.MakeAnyIntptr"(ptr %64, i64 5)
  store %"github.com/goplus/llgo/internal/runtime.iface" %65, ptr %63, align 8
  %66 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %35, i64 10
  %67 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 8)
  %68 = call %"github.com/goplus/llgo/internal/runtime.iface" @"github.com/goplus/llgo/internal/runtime.MakeAnyIntptr"(ptr %67, i64 1)
  store %"github.com/goplus/llgo/internal/runtime.iface" %68, ptr %66, align 8
  %69 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %35, i64 11
  %70 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 9)
  %71 = call %"github.com/goplus/llgo/internal/runtime.iface" @"github.com/goplus/llgo/internal/runtime.MakeAnyIntptr"(ptr %70, i64 2)
  store %"github.com/goplus/llgo/internal/runtime.iface" %71, ptr %69, align 8
  %72 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %35, i64 12
  %73 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 10)
  %74 = call %"github.com/goplus/llgo/internal/runtime.iface" @"github.com/goplus/llgo/internal/runtime.MakeAnyIntptr"(ptr %73, i64 3)
  store %"github.com/goplus/llgo/internal/runtime.iface" %74, ptr %72, align 8
  %75 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %35, i64 13
  %76 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 11)
  %77 = call %"github.com/goplus/llgo/internal/runtime.iface" @"github.com/goplus/llgo/internal/runtime.MakeAnyIntptr"(ptr %76, i64 4)
  store %"github.com/goplus/llgo/internal/runtime.iface" %77, ptr %75, align 8
  %78 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %35, i64 14
  %79 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 12)
  %80 = call %"github.com/goplus/llgo/internal/runtime.iface" @"github.com/goplus/llgo/internal/runtime.MakeAnyIntptr"(ptr %79, i64 5)
  store %"github.com/goplus/llgo/internal/runtime.iface" %80, ptr %78, align 8
  %81 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %35, i64 15
  %82 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %83 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %82, i32 0, i32 0
  store ptr @4, ptr %83, align 8
  %84 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %82, i32 0, i32 1
  store i64 4, ptr %84, align 4
  %85 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %82, align 8
  %86 = call %"github.com/goplus/llgo/internal/runtime.iface" @"github.com/goplus/llgo/internal/runtime.MakeAnyString"(%"github.com/goplus/llgo/internal/runtime.String" %85)
  store %"github.com/goplus/llgo/internal/runtime.iface" %86, ptr %81, align 8
  %87 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr %35, i64 16, i64 16, i64 0, i64 16, i64 16)
  call void @main.println(%"github.com/goplus/llgo/internal/runtime.Slice" %87)
  ret i32 0

_llgo_3:                                          ; preds = %_llgo_0
  br i1 true, label %_llgo_1, label %_llgo_2
}

define void @main.prinfsub(double %0) {
_llgo_0:
  %1 = fneg double %0
  call void @main.printfloat(double %1)
  ret void
}

define void @main.prinsub(i64 %0) {
_llgo_0:
  %1 = sub i64 0, %0
  call void @main.printint(i64 %1)
  ret void
}

define void @main.printany(%"github.com/goplus/llgo/internal/runtime.iface" %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 1)
  %2 = call { i64, i1 } @"github.com/goplus/llgo/internal/runtime.CheckI2Int"(%"github.com/goplus/llgo/internal/runtime.iface" %0, ptr %1)
  %3 = extractvalue { i64, i1 } %2, 0
  %4 = trunc i64 %3 to i1
  %5 = extractvalue { i64, i1 } %2, 1
  br i1 %5, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_30, %_llgo_29, %_llgo_28, %_llgo_26, %_llgo_24, %_llgo_22, %_llgo_20, %_llgo_18, %_llgo_16, %_llgo_14, %_llgo_12, %_llgo_10, %_llgo_8, %_llgo_6, %_llgo_4, %_llgo_2
  ret void

_llgo_2:                                          ; preds = %_llgo_0
  call void @main.printbool(i1 %4)
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_0
  %6 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 2)
  %7 = call { i64, i1 } @"github.com/goplus/llgo/internal/runtime.CheckI2Int"(%"github.com/goplus/llgo/internal/runtime.iface" %0, ptr %6)
  %8 = extractvalue { i64, i1 } %7, 0
  %9 = extractvalue { i64, i1 } %7, 1
  br i1 %9, label %_llgo_4, label %_llgo_5

_llgo_4:                                          ; preds = %_llgo_3
  call void @main.printint(i64 %8)
  br label %_llgo_1

_llgo_5:                                          ; preds = %_llgo_3
  %10 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 3)
  %11 = call { i64, i1 } @"github.com/goplus/llgo/internal/runtime.CheckI2Int"(%"github.com/goplus/llgo/internal/runtime.iface" %0, ptr %10)
  %12 = extractvalue { i64, i1 } %11, 0
  %13 = trunc i64 %12 to i8
  %14 = extractvalue { i64, i1 } %11, 1
  br i1 %14, label %_llgo_6, label %_llgo_7

_llgo_6:                                          ; preds = %_llgo_5
  %15 = sext i8 %13 to i64
  call void @main.printint(i64 %15)
  br label %_llgo_1

_llgo_7:                                          ; preds = %_llgo_5
  %16 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 4)
  %17 = call { i64, i1 } @"github.com/goplus/llgo/internal/runtime.CheckI2Int"(%"github.com/goplus/llgo/internal/runtime.iface" %0, ptr %16)
  %18 = extractvalue { i64, i1 } %17, 0
  %19 = trunc i64 %18 to i16
  %20 = extractvalue { i64, i1 } %17, 1
  br i1 %20, label %_llgo_8, label %_llgo_9

_llgo_8:                                          ; preds = %_llgo_7
  %21 = sext i16 %19 to i64
  call void @main.printint(i64 %21)
  br label %_llgo_1

_llgo_9:                                          ; preds = %_llgo_7
  %22 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 5)
  %23 = call { i64, i1 } @"github.com/goplus/llgo/internal/runtime.CheckI2Int"(%"github.com/goplus/llgo/internal/runtime.iface" %0, ptr %22)
  %24 = extractvalue { i64, i1 } %23, 0
  %25 = trunc i64 %24 to i32
  %26 = extractvalue { i64, i1 } %23, 1
  br i1 %26, label %_llgo_10, label %_llgo_11

_llgo_10:                                         ; preds = %_llgo_9
  %27 = sext i32 %25 to i64
  call void @main.printint(i64 %27)
  br label %_llgo_1

_llgo_11:                                         ; preds = %_llgo_9
  %28 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 6)
  %29 = call { i64, i1 } @"github.com/goplus/llgo/internal/runtime.CheckI2Int"(%"github.com/goplus/llgo/internal/runtime.iface" %0, ptr %28)
  %30 = extractvalue { i64, i1 } %29, 0
  %31 = extractvalue { i64, i1 } %29, 1
  br i1 %31, label %_llgo_12, label %_llgo_13

_llgo_12:                                         ; preds = %_llgo_11
  call void @main.printint(i64 %30)
  br label %_llgo_1

_llgo_13:                                         ; preds = %_llgo_11
  %32 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 7)
  %33 = call { i64, i1 } @"github.com/goplus/llgo/internal/runtime.CheckI2Int"(%"github.com/goplus/llgo/internal/runtime.iface" %0, ptr %32)
  %34 = extractvalue { i64, i1 } %33, 0
  %35 = extractvalue { i64, i1 } %33, 1
  br i1 %35, label %_llgo_14, label %_llgo_15

_llgo_14:                                         ; preds = %_llgo_13
  call void @main.printuint(i64 %34)
  br label %_llgo_1

_llgo_15:                                         ; preds = %_llgo_13
  %36 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 8)
  %37 = call { i64, i1 } @"github.com/goplus/llgo/internal/runtime.CheckI2Int"(%"github.com/goplus/llgo/internal/runtime.iface" %0, ptr %36)
  %38 = extractvalue { i64, i1 } %37, 0
  %39 = trunc i64 %38 to i8
  %40 = extractvalue { i64, i1 } %37, 1
  br i1 %40, label %_llgo_16, label %_llgo_17

_llgo_16:                                         ; preds = %_llgo_15
  %41 = zext i8 %39 to i64
  call void @main.printuint(i64 %41)
  br label %_llgo_1

_llgo_17:                                         ; preds = %_llgo_15
  %42 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 9)
  %43 = call { i64, i1 } @"github.com/goplus/llgo/internal/runtime.CheckI2Int"(%"github.com/goplus/llgo/internal/runtime.iface" %0, ptr %42)
  %44 = extractvalue { i64, i1 } %43, 0
  %45 = trunc i64 %44 to i16
  %46 = extractvalue { i64, i1 } %43, 1
  br i1 %46, label %_llgo_18, label %_llgo_19

_llgo_18:                                         ; preds = %_llgo_17
  %47 = zext i16 %45 to i64
  call void @main.printuint(i64 %47)
  br label %_llgo_1

_llgo_19:                                         ; preds = %_llgo_17
  %48 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 10)
  %49 = call { i64, i1 } @"github.com/goplus/llgo/internal/runtime.CheckI2Int"(%"github.com/goplus/llgo/internal/runtime.iface" %0, ptr %48)
  %50 = extractvalue { i64, i1 } %49, 0
  %51 = trunc i64 %50 to i32
  %52 = extractvalue { i64, i1 } %49, 1
  br i1 %52, label %_llgo_20, label %_llgo_21

_llgo_20:                                         ; preds = %_llgo_19
  %53 = zext i32 %51 to i64
  call void @main.printuint(i64 %53)
  br label %_llgo_1

_llgo_21:                                         ; preds = %_llgo_19
  %54 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 11)
  %55 = call { i64, i1 } @"github.com/goplus/llgo/internal/runtime.CheckI2Int"(%"github.com/goplus/llgo/internal/runtime.iface" %0, ptr %54)
  %56 = extractvalue { i64, i1 } %55, 0
  %57 = extractvalue { i64, i1 } %55, 1
  br i1 %57, label %_llgo_22, label %_llgo_23

_llgo_22:                                         ; preds = %_llgo_21
  call void @main.printuint(i64 %56)
  br label %_llgo_1

_llgo_23:                                         ; preds = %_llgo_21
  %58 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 12)
  %59 = call { i64, i1 } @"github.com/goplus/llgo/internal/runtime.CheckI2Int"(%"github.com/goplus/llgo/internal/runtime.iface" %0, ptr %58)
  %60 = extractvalue { i64, i1 } %59, 0
  %61 = extractvalue { i64, i1 } %59, 1
  br i1 %61, label %_llgo_24, label %_llgo_25

_llgo_24:                                         ; preds = %_llgo_23
  call void @main.printuint(i64 %60)
  br label %_llgo_1

_llgo_25:                                         ; preds = %_llgo_23
  %62 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 13)
  %63 = call { i64, i1 } @"github.com/goplus/llgo/internal/runtime.CheckI2Int"(%"github.com/goplus/llgo/internal/runtime.iface" %0, ptr %62)
  %64 = extractvalue { i64, i1 } %63, 0
  %65 = trunc i64 %64 to i32
  %66 = bitcast i32 %65 to float
  %67 = extractvalue { i64, i1 } %63, 1
  br i1 %67, label %_llgo_26, label %_llgo_27

_llgo_26:                                         ; preds = %_llgo_25
  %68 = fpext float %66 to double
  call void @main.printfloat(double %68)
  br label %_llgo_1

_llgo_27:                                         ; preds = %_llgo_25
  %69 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 14)
  %70 = call { i64, i1 } @"github.com/goplus/llgo/internal/runtime.CheckI2Int"(%"github.com/goplus/llgo/internal/runtime.iface" %0, ptr %69)
  %71 = extractvalue { i64, i1 } %70, 0
  %72 = bitcast i64 %71 to double
  %73 = extractvalue { i64, i1 } %70, 1
  br i1 %73, label %_llgo_28, label %_llgo_29

_llgo_28:                                         ; preds = %_llgo_27
  call void @main.printfloat(double %72)
  br label %_llgo_1

_llgo_29:                                         ; preds = %_llgo_27
  %74 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  %75 = call { %"github.com/goplus/llgo/internal/runtime.String", i1 } @"github.com/goplus/llgo/internal/runtime.CheckI2String"(%"github.com/goplus/llgo/internal/runtime.iface" %0, ptr %74)
  %76 = extractvalue { %"github.com/goplus/llgo/internal/runtime.String", i1 } %75, 0
  %77 = extractvalue { %"github.com/goplus/llgo/internal/runtime.String", i1 } %75, 1
  br i1 %77, label %_llgo_30, label %_llgo_1

_llgo_30:                                         ; preds = %_llgo_29
  call void @main.printstring(%"github.com/goplus/llgo/internal/runtime.String" %76)
  br label %_llgo_1
}

define void @main.printbool(i1 %0) {
_llgo_0:
  br i1 %0, label %_llgo_1, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_0
  %1 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1, i32 0, i32 0
  store ptr @5, ptr %2, align 8
  %3 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1, i32 0, i32 1
  store i64 4, ptr %3, align 4
  %4 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1, align 8
  call void @main.printstring(%"github.com/goplus/llgo/internal/runtime.String" %4)
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_3, %_llgo_1
  ret void

_llgo_3:                                          ; preds = %_llgo_0
  %5 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %6 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %5, i32 0, i32 0
  store ptr @6, ptr %6, align 8
  %7 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %5, i32 0, i32 1
  store i64 5, ptr %7, align 4
  %8 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %5, align 8
  call void @main.printstring(%"github.com/goplus/llgo/internal/runtime.String" %8)
  br label %_llgo_2
}

define void @main.printfloat(double %0) {
_llgo_0:
  %1 = fcmp one double %0, %0
  br i1 %1, label %_llgo_1, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_0
  %2 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2, i32 0, i32 0
  store ptr @7, ptr %3, align 8
  %4 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2, i32 0, i32 1
  store i64 3, ptr %4, align 4
  %5 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2, align 8
  call void @main.printstring(%"github.com/goplus/llgo/internal/runtime.String" %5)
  ret void

_llgo_2:                                          ; preds = %_llgo_7
  %6 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %7 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %6, i32 0, i32 0
  store ptr @8, ptr %7, align 8
  %8 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %6, i32 0, i32 1
  store i64 4, ptr %8, align 4
  %9 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %6, align 8
  call void @main.printstring(%"github.com/goplus/llgo/internal/runtime.String" %9)
  ret void

_llgo_3:                                          ; preds = %_llgo_0
  %10 = fadd double %0, %0
  %11 = fcmp oeq double %10, %0
  br i1 %11, label %_llgo_6, label %_llgo_7

_llgo_4:                                          ; preds = %_llgo_10
  %12 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %13 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %12, i32 0, i32 0
  store ptr @9, ptr %13, align 8
  %14 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %12, i32 0, i32 1
  store i64 4, ptr %14, align 4
  %15 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %12, align 8
  call void @main.printstring(%"github.com/goplus/llgo/internal/runtime.String" %15)
  ret void

_llgo_5:                                          ; preds = %_llgo_7
  %16 = fadd double %0, %0
  %17 = fcmp oeq double %16, %0
  br i1 %17, label %_llgo_9, label %_llgo_10

_llgo_6:                                          ; preds = %_llgo_3
  %18 = fcmp ogt double %0, 0.000000e+00
  br label %_llgo_7

_llgo_7:                                          ; preds = %_llgo_6, %_llgo_3
  %19 = phi i1 [ false, %_llgo_3 ], [ %18, %_llgo_6 ]
  br i1 %19, label %_llgo_2, label %_llgo_5

_llgo_8:                                          ; preds = %_llgo_10
  %20 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 14)
  %21 = getelementptr inbounds i8, ptr %20, i64 0
  store i8 43, ptr %21, align 1
  %22 = fcmp oeq double %0, 0.000000e+00
  br i1 %22, label %_llgo_11, label %_llgo_13

_llgo_9:                                          ; preds = %_llgo_5
  %23 = fcmp olt double %0, 0.000000e+00
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_5
  %24 = phi i1 [ false, %_llgo_5 ], [ %23, %_llgo_9 ]
  br i1 %24, label %_llgo_4, label %_llgo_8

_llgo_11:                                         ; preds = %_llgo_8
  %25 = fdiv double 1.000000e+00, %0
  %26 = fcmp olt double %25, 0.000000e+00
  br i1 %26, label %_llgo_14, label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_24, %_llgo_22, %_llgo_14, %_llgo_11
  %27 = phi double [ %0, %_llgo_11 ], [ %45, %_llgo_22 ], [ %0, %_llgo_14 ], [ %51, %_llgo_24 ]
  %28 = phi i64 [ 0, %_llgo_11 ], [ %41, %_llgo_22 ], [ 0, %_llgo_14 ], [ %50, %_llgo_24 ]
  br label %_llgo_27

_llgo_13:                                         ; preds = %_llgo_8
  %29 = fcmp olt double %0, 0.000000e+00
  br i1 %29, label %_llgo_15, label %_llgo_17

_llgo_14:                                         ; preds = %_llgo_11
  %30 = getelementptr inbounds i8, ptr %20, i64 0
  store i8 45, ptr %30, align 1
  br label %_llgo_12

_llgo_15:                                         ; preds = %_llgo_13
  %31 = fneg double %0
  %32 = getelementptr inbounds i8, ptr %20, i64 0
  store i8 45, ptr %32, align 1
  br label %_llgo_17

_llgo_16:                                         ; preds = %_llgo_17
  %33 = add i64 %36, 1
  %34 = fdiv double %35, 1.000000e+01
  br label %_llgo_17

_llgo_17:                                         ; preds = %_llgo_16, %_llgo_15, %_llgo_13
  %35 = phi double [ %0, %_llgo_13 ], [ %34, %_llgo_16 ], [ %31, %_llgo_15 ]
  %36 = phi i64 [ 0, %_llgo_13 ], [ %33, %_llgo_16 ], [ 0, %_llgo_15 ]
  %37 = fcmp oge double %35, 1.000000e+01
  br i1 %37, label %_llgo_16, label %_llgo_20

_llgo_18:                                         ; preds = %_llgo_20
  %38 = sub i64 %41, 1
  %39 = fmul double %40, 1.000000e+01
  br label %_llgo_20

_llgo_19:                                         ; preds = %_llgo_20
  br label %_llgo_23

_llgo_20:                                         ; preds = %_llgo_18, %_llgo_17
  %40 = phi double [ %35, %_llgo_17 ], [ %39, %_llgo_18 ]
  %41 = phi i64 [ %36, %_llgo_17 ], [ %38, %_llgo_18 ]
  %42 = fcmp olt double %40, 1.000000e+00
  br i1 %42, label %_llgo_18, label %_llgo_19

_llgo_21:                                         ; preds = %_llgo_23
  %43 = fdiv double %47, 1.000000e+01
  %44 = add i64 %48, 1
  br label %_llgo_23

_llgo_22:                                         ; preds = %_llgo_23
  %45 = fadd double %40, %47
  %46 = fcmp oge double %45, 1.000000e+01
  br i1 %46, label %_llgo_24, label %_llgo_12

_llgo_23:                                         ; preds = %_llgo_21, %_llgo_19
  %47 = phi double [ 5.000000e+00, %_llgo_19 ], [ %43, %_llgo_21 ]
  %48 = phi i64 [ 0, %_llgo_19 ], [ %44, %_llgo_21 ]
  %49 = icmp slt i64 %48, 7
  br i1 %49, label %_llgo_21, label %_llgo_22

_llgo_24:                                         ; preds = %_llgo_22
  %50 = add i64 %41, 1
  %51 = fdiv double %45, 1.000000e+01
  br label %_llgo_12

_llgo_25:                                         ; preds = %_llgo_27
  %52 = fptosi double %69 to i64
  %53 = add i64 %70, 2
  %54 = add i64 %52, 48
  %55 = trunc i64 %54 to i8
  %56 = icmp slt i64 %53, 0
  call void @"github.com/goplus/llgo/internal/runtime.AssertIndexRange"(i1 %56)
  %57 = getelementptr inbounds i8, ptr %20, i64 %53
  store i8 %55, ptr %57, align 1
  %58 = sitofp i64 %52 to double
  %59 = fsub double %69, %58
  %60 = fmul double %59, 1.000000e+01
  %61 = add i64 %70, 1
  br label %_llgo_27

_llgo_26:                                         ; preds = %_llgo_27
  %62 = getelementptr inbounds i8, ptr %20, i64 2
  %63 = load i8, ptr %62, align 1
  %64 = getelementptr inbounds i8, ptr %20, i64 1
  store i8 %63, ptr %64, align 1
  %65 = getelementptr inbounds i8, ptr %20, i64 2
  store i8 46, ptr %65, align 1
  %66 = getelementptr inbounds i8, ptr %20, i64 9
  store i8 101, ptr %66, align 1
  %67 = getelementptr inbounds i8, ptr %20, i64 10
  store i8 43, ptr %67, align 1
  %68 = icmp slt i64 %28, 0
  br i1 %68, label %_llgo_28, label %_llgo_29

_llgo_27:                                         ; preds = %_llgo_25, %_llgo_12
  %69 = phi double [ %27, %_llgo_12 ], [ %60, %_llgo_25 ]
  %70 = phi i64 [ 0, %_llgo_12 ], [ %61, %_llgo_25 ]
  %71 = icmp slt i64 %70, 7
  br i1 %71, label %_llgo_25, label %_llgo_26

_llgo_28:                                         ; preds = %_llgo_26
  %72 = sub i64 0, %28
  %73 = getelementptr inbounds i8, ptr %20, i64 10
  store i8 45, ptr %73, align 1
  br label %_llgo_29

_llgo_29:                                         ; preds = %_llgo_28, %_llgo_26
  %74 = phi i64 [ %28, %_llgo_26 ], [ %72, %_llgo_28 ]
  %75 = sdiv i64 %74, 100
  %76 = trunc i64 %75 to i8
  %77 = add i8 %76, 48
  %78 = getelementptr inbounds i8, ptr %20, i64 11
  store i8 %77, ptr %78, align 1
  %79 = sdiv i64 %74, 10
  %80 = trunc i64 %79 to i8
  %81 = urem i8 %80, 10
  %82 = add i8 %81, 48
  %83 = getelementptr inbounds i8, ptr %20, i64 12
  store i8 %82, ptr %83, align 1
  %84 = srem i64 %74, 10
  %85 = trunc i64 %84 to i8
  %86 = add i8 %85, 48
  %87 = getelementptr inbounds i8, ptr %20, i64 13
  store i8 %86, ptr %87, align 1
  %88 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr %20, i64 1, i64 14, i64 0, i64 14, i64 14)
  call void @main.gwrite(%"github.com/goplus/llgo/internal/runtime.Slice" %88)
  ret void
}

define void @main.printhex(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 100)
  br label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %2 = urem i64 %20, 16
  %3 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %4 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3, i32 0, i32 0
  store ptr @10, ptr %4, align 8
  %5 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3, i32 0, i32 1
  store i64 16, ptr %5, align 4
  %6 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3, align 8
  %7 = extractvalue %"github.com/goplus/llgo/internal/runtime.String" %6, 0
  %8 = getelementptr inbounds i8, ptr %7, i64 %2
  %9 = load i8, ptr %8, align 1
  %10 = icmp slt i64 %21, 0
  call void @"github.com/goplus/llgo/internal/runtime.AssertIndexRange"(i1 %10)
  %11 = getelementptr inbounds i8, ptr %1, i64 %21
  store i8 %9, ptr %11, align 1
  %12 = icmp ult i64 %20, 16
  br i1 %12, label %_llgo_5, label %_llgo_4

_llgo_2:                                          ; preds = %_llgo_5, %_llgo_3
  %13 = sub i64 %21, 1
  %14 = icmp slt i64 %13, 0
  call void @"github.com/goplus/llgo/internal/runtime.AssertIndexRange"(i1 %14)
  %15 = getelementptr inbounds i8, ptr %1, i64 %13
  store i8 120, ptr %15, align 1
  %16 = sub i64 %13, 1
  %17 = icmp slt i64 %16, 0
  call void @"github.com/goplus/llgo/internal/runtime.AssertIndexRange"(i1 %17)
  %18 = getelementptr inbounds i8, ptr %1, i64 %16
  store i8 48, ptr %18, align 1
  %19 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr %1, i64 1, i64 100, i64 %16, i64 100, i64 100)
  call void @main.gwrite(%"github.com/goplus/llgo/internal/runtime.Slice" %19)
  ret void

_llgo_3:                                          ; preds = %_llgo_4, %_llgo_0
  %20 = phi i64 [ %0, %_llgo_0 ], [ %23, %_llgo_4 ]
  %21 = phi i64 [ 99, %_llgo_0 ], [ %24, %_llgo_4 ]
  %22 = icmp sgt i64 %21, 0
  br i1 %22, label %_llgo_1, label %_llgo_2

_llgo_4:                                          ; preds = %_llgo_5, %_llgo_1
  %23 = udiv i64 %20, 16
  %24 = sub i64 %21, 1
  br label %_llgo_3

_llgo_5:                                          ; preds = %_llgo_1
  %25 = sub i64 100, %21
  %26 = load i64, ptr @main.minhexdigits, align 4
  %27 = icmp sge i64 %25, %26
  br i1 %27, label %_llgo_2, label %_llgo_4
}

define void @main.printint(i64 %0) {
_llgo_0:
  %1 = icmp slt i64 %0, 0
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2, i32 0, i32 0
  store ptr @11, ptr %3, align 8
  %4 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2, i32 0, i32 1
  store i64 1, ptr %4, align 4
  %5 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2, align 8
  call void @main.printstring(%"github.com/goplus/llgo/internal/runtime.String" %5)
  %6 = sub i64 0, %0
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %7 = phi i64 [ %0, %_llgo_0 ], [ %6, %_llgo_1 ]
  call void @main.printuint(i64 %7)
  ret void
}

define void @main.println(%"github.com/goplus/llgo/internal/runtime.Slice" %0) {
_llgo_0:
  %1 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %0, 1
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_5, %_llgo_0
  %2 = phi i64 [ -1, %_llgo_0 ], [ %3, %_llgo_5 ]
  %3 = add i64 %2, 1
  %4 = icmp slt i64 %3, %1
  br i1 %4, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  %5 = icmp slt i64 %3, 0
  call void @"github.com/goplus/llgo/internal/runtime.AssertIndexRange"(i1 %5)
  %6 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %0, 0
  %7 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %6, i64 %3
  %8 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %7, align 8
  %9 = icmp ne i64 %3, 0
  br i1 %9, label %_llgo_4, label %_llgo_5

_llgo_3:                                          ; preds = %_llgo_1
  call void @main.printnl()
  ret void

_llgo_4:                                          ; preds = %_llgo_2
  %10 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %11 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %10, i32 0, i32 0
  store ptr @12, ptr %11, align 8
  %12 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %10, i32 0, i32 1
  store i64 1, ptr %12, align 4
  %13 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %10, align 8
  call void @main.printstring(%"github.com/goplus/llgo/internal/runtime.String" %13)
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_2
  call void @main.printany(%"github.com/goplus/llgo/internal/runtime.iface" %8)
  br label %_llgo_1
}

define void @main.printnl() {
_llgo_0:
  %0 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %0, i32 0, i32 0
  store ptr @13, ptr %1, align 8
  %2 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %0, i32 0, i32 1
  store i64 1, ptr %2, align 4
  %3 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %0, align 8
  call void @main.printstring(%"github.com/goplus/llgo/internal/runtime.String" %3)
  ret void
}

define void @main.printsp() {
_llgo_0:
  %0 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %0, i32 0, i32 0
  store ptr @14, ptr %1, align 8
  %2 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %0, i32 0, i32 1
  store i64 1, ptr %2, align 4
  %3 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %0, align 8
  call void @main.printstring(%"github.com/goplus/llgo/internal/runtime.String" %3)
  ret void
}

define void @main.printstring(%"github.com/goplus/llgo/internal/runtime.String" %0) {
_llgo_0:
  %1 = call %"github.com/goplus/llgo/internal/runtime.Slice" @main.bytes(%"github.com/goplus/llgo/internal/runtime.String" %0)
  call void @main.gwrite(%"github.com/goplus/llgo/internal/runtime.Slice" %1)
  ret void
}

define void @main.printuint(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 100)
  br label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %2 = urem i64 %9, 10
  %3 = add i64 %2, 48
  %4 = trunc i64 %3 to i8
  %5 = icmp slt i64 %10, 0
  call void @"github.com/goplus/llgo/internal/runtime.AssertIndexRange"(i1 %5)
  %6 = getelementptr inbounds i8, ptr %1, i64 %10
  store i8 %4, ptr %6, align 1
  %7 = icmp ult i64 %9, 10
  br i1 %7, label %_llgo_2, label %_llgo_4

_llgo_2:                                          ; preds = %_llgo_3, %_llgo_1
  %8 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr %1, i64 1, i64 100, i64 %10, i64 100, i64 100)
  call void @main.gwrite(%"github.com/goplus/llgo/internal/runtime.Slice" %8)
  ret void

_llgo_3:                                          ; preds = %_llgo_4, %_llgo_0
  %9 = phi i64 [ %0, %_llgo_0 ], [ %12, %_llgo_4 ]
  %10 = phi i64 [ 99, %_llgo_0 ], [ %13, %_llgo_4 ]
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %_llgo_1, label %_llgo_2

_llgo_4:                                          ; preds = %_llgo_1
  %12 = udiv i64 %9, 10
  %13 = sub i64 %10, 1
  br label %_llgo_3
}

define void @main.prinusub(i64 %0) {
_llgo_0:
  %1 = sub i64 0, %0
  call void @main.printuint(i64 %1)
  ret void
}

define void @main.prinxor(i64 %0) {
_llgo_0:
  %1 = xor i64 %0, -1
  call void @main.printint(i64 %1)
  ret void
}

define ptr @main.stringStructOf(ptr %0) {
_llgo_0:
  ret ptr %0
}

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64)

declare i32 @printf(ptr, ...)

declare void @"github.com/goplus/llgo/internal/runtime.init"()

declare %"github.com/goplus/llgo/internal/runtime.iface" @"github.com/goplus/llgo/internal/runtime.MakeAnyIntptr"(ptr, i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64)

declare %"github.com/goplus/llgo/internal/runtime.iface" @"github.com/goplus/llgo/internal/runtime.MakeAnyString"(%"github.com/goplus/llgo/internal/runtime.String")

declare %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr, i64, i64, i64, i64, i64)

declare { i64, i1 } @"github.com/goplus/llgo/internal/runtime.CheckI2Int"(%"github.com/goplus/llgo/internal/runtime.iface", ptr)

declare { %"github.com/goplus/llgo/internal/runtime.String", i1 } @"github.com/goplus/llgo/internal/runtime.CheckI2String"(%"github.com/goplus/llgo/internal/runtime.iface", ptr)

declare void @"github.com/goplus/llgo/internal/runtime.AssertIndexRange"(i1)
