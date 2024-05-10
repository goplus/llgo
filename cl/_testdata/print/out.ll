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
@3 = private unnamed_addr constant [5 x i8] c"llgo\00", align 1
@4 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@5 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@6 = private unnamed_addr constant [4 x i8] c"NaN\00", align 1
@7 = private unnamed_addr constant [5 x i8] c"+Inf\00", align 1
@8 = private unnamed_addr constant [5 x i8] c"-Inf\00", align 1
@9 = private unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 1
@10 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@11 = private unnamed_addr constant [2 x i8] c" \00", align 1
@12 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@13 = private unnamed_addr constant [2 x i8] c" \00", align 1

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
  %1 = call i64 @"github.com/goplus/llgo/internal/runtime.SliceLen"(%"github.com/goplus/llgo/internal/runtime.Slice" %0)
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

define void @main(i32 %0, ptr %1) {
_llgo_0:
  store i32 %0, ptr @__llgo_argc, align 4
  store ptr %1, ptr @__llgo_argv, align 8
  call void @"github.com/goplus/llgo/internal/runtime.init"()
  call void @main.init()
  %2 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @1, i64 4)
  call void @main.printstring(%"github.com/goplus/llgo/internal/runtime.String" %2)
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
  %3 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 13)
  %4 = call %"github.com/goplus/llgo/internal/runtime.iface" @"github.com/goplus/llgo/internal/runtime.MakeAnyInt"(ptr %3, i64 1315859240)
  call void @main.printany(%"github.com/goplus/llgo/internal/runtime.iface" %4)
  call void @main.printnl()
  %5 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 14)
  %6 = call %"github.com/goplus/llgo/internal/runtime.iface" @"github.com/goplus/llgo/internal/runtime.MakeAnyInt"(ptr %5, i64 4746175415993761792)
  call void @main.printany(%"github.com/goplus/llgo/internal/runtime.iface" %6)
  call void @main.printnl()
  br i1 true, label %_llgo_3, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_3
  %7 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 32)
  %8 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %7, i64 0
  %9 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @2, i64 10)
  %10 = call %"github.com/goplus/llgo/internal/runtime.iface" @"github.com/goplus/llgo/internal/runtime.MakeAnyString"(%"github.com/goplus/llgo/internal/runtime.String" %9)
  store %"github.com/goplus/llgo/internal/runtime.iface" %10, ptr %8, align 8
  %11 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %7, i64 1
  %12 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 1)
  %13 = call %"github.com/goplus/llgo/internal/runtime.iface" @"github.com/goplus/llgo/internal/runtime.MakeAnyInt"(ptr %12, i64 -1)
  store %"github.com/goplus/llgo/internal/runtime.iface" %13, ptr %11, align 8
  %14 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr %7, i64 16, i64 2, i64 0, i64 2, i64 2)
  call void @main.println(%"github.com/goplus/llgo/internal/runtime.Slice" %14)
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_3, %_llgo_1, %_llgo_0
  %15 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 256)
  %16 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %15, i64 0
  %17 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 1)
  %18 = call %"github.com/goplus/llgo/internal/runtime.iface" @"github.com/goplus/llgo/internal/runtime.MakeAnyInt"(ptr %17, i64 -1)
  store %"github.com/goplus/llgo/internal/runtime.iface" %18, ptr %16, align 8
  %19 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %15, i64 1
  %20 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 1)
  %21 = call %"github.com/goplus/llgo/internal/runtime.iface" @"github.com/goplus/llgo/internal/runtime.MakeAnyInt"(ptr %20, i64 0)
  store %"github.com/goplus/llgo/internal/runtime.iface" %21, ptr %19, align 8
  %22 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %15, i64 2
  %23 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 5)
  %24 = call %"github.com/goplus/llgo/internal/runtime.iface" @"github.com/goplus/llgo/internal/runtime.MakeAnyInt"(ptr %23, i64 97)
  store %"github.com/goplus/llgo/internal/runtime.iface" %24, ptr %22, align 8
  %25 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %15, i64 3
  %26 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 5)
  %27 = call %"github.com/goplus/llgo/internal/runtime.iface" @"github.com/goplus/llgo/internal/runtime.MakeAnyInt"(ptr %26, i64 65)
  store %"github.com/goplus/llgo/internal/runtime.iface" %27, ptr %25, align 8
  %28 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %15, i64 4
  %29 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 5)
  %30 = call %"github.com/goplus/llgo/internal/runtime.iface" @"github.com/goplus/llgo/internal/runtime.MakeAnyInt"(ptr %29, i64 20013)
  store %"github.com/goplus/llgo/internal/runtime.iface" %30, ptr %28, align 8
  %31 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %15, i64 5
  %32 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 3)
  %33 = call %"github.com/goplus/llgo/internal/runtime.iface" @"github.com/goplus/llgo/internal/runtime.MakeAnyInt"(ptr %32, i64 1)
  store %"github.com/goplus/llgo/internal/runtime.iface" %33, ptr %31, align 8
  %34 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %15, i64 6
  %35 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 4)
  %36 = call %"github.com/goplus/llgo/internal/runtime.iface" @"github.com/goplus/llgo/internal/runtime.MakeAnyInt"(ptr %35, i64 2)
  store %"github.com/goplus/llgo/internal/runtime.iface" %36, ptr %34, align 8
  %37 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %15, i64 7
  %38 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 5)
  %39 = call %"github.com/goplus/llgo/internal/runtime.iface" @"github.com/goplus/llgo/internal/runtime.MakeAnyInt"(ptr %38, i64 3)
  store %"github.com/goplus/llgo/internal/runtime.iface" %39, ptr %37, align 8
  %40 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %15, i64 8
  %41 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 6)
  %42 = call %"github.com/goplus/llgo/internal/runtime.iface" @"github.com/goplus/llgo/internal/runtime.MakeAnyInt"(ptr %41, i64 4)
  store %"github.com/goplus/llgo/internal/runtime.iface" %42, ptr %40, align 8
  %43 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %15, i64 9
  %44 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 2)
  %45 = call %"github.com/goplus/llgo/internal/runtime.iface" @"github.com/goplus/llgo/internal/runtime.MakeAnyInt"(ptr %44, i64 5)
  store %"github.com/goplus/llgo/internal/runtime.iface" %45, ptr %43, align 8
  %46 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %15, i64 10
  %47 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 8)
  %48 = call %"github.com/goplus/llgo/internal/runtime.iface" @"github.com/goplus/llgo/internal/runtime.MakeAnyInt"(ptr %47, i64 1)
  store %"github.com/goplus/llgo/internal/runtime.iface" %48, ptr %46, align 8
  %49 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %15, i64 11
  %50 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 9)
  %51 = call %"github.com/goplus/llgo/internal/runtime.iface" @"github.com/goplus/llgo/internal/runtime.MakeAnyInt"(ptr %50, i64 2)
  store %"github.com/goplus/llgo/internal/runtime.iface" %51, ptr %49, align 8
  %52 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %15, i64 12
  %53 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 10)
  %54 = call %"github.com/goplus/llgo/internal/runtime.iface" @"github.com/goplus/llgo/internal/runtime.MakeAnyInt"(ptr %53, i64 3)
  store %"github.com/goplus/llgo/internal/runtime.iface" %54, ptr %52, align 8
  %55 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %15, i64 13
  %56 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 11)
  %57 = call %"github.com/goplus/llgo/internal/runtime.iface" @"github.com/goplus/llgo/internal/runtime.MakeAnyInt"(ptr %56, i64 4)
  store %"github.com/goplus/llgo/internal/runtime.iface" %57, ptr %55, align 8
  %58 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %15, i64 14
  %59 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 12)
  %60 = call %"github.com/goplus/llgo/internal/runtime.iface" @"github.com/goplus/llgo/internal/runtime.MakeAnyInt"(ptr %59, i64 5)
  store %"github.com/goplus/llgo/internal/runtime.iface" %60, ptr %58, align 8
  %61 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %15, i64 15
  %62 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @3, i64 4)
  %63 = call %"github.com/goplus/llgo/internal/runtime.iface" @"github.com/goplus/llgo/internal/runtime.MakeAnyString"(%"github.com/goplus/llgo/internal/runtime.String" %62)
  store %"github.com/goplus/llgo/internal/runtime.iface" %63, ptr %61, align 8
  %64 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr %15, i64 16, i64 16, i64 0, i64 16, i64 16)
  call void @main.println(%"github.com/goplus/llgo/internal/runtime.Slice" %64)
  ret void

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
  %41 = sext i8 %39 to i64
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
  %47 = sext i16 %45 to i64
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
  %53 = sext i32 %51 to i64
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
  %1 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @4, i64 4)
  call void @main.printstring(%"github.com/goplus/llgo/internal/runtime.String" %1)
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_3, %_llgo_1
  ret void

_llgo_3:                                          ; preds = %_llgo_0
  %2 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @5, i64 5)
  call void @main.printstring(%"github.com/goplus/llgo/internal/runtime.String" %2)
  br label %_llgo_2
}

define void @main.printfloat(double %0) {
_llgo_0:
  %1 = fcmp one double %0, %0
  br i1 %1, label %_llgo_1, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @6, i64 3)
  call void @main.printstring(%"github.com/goplus/llgo/internal/runtime.String" %2)
  ret void

_llgo_2:                                          ; preds = %_llgo_7
  %3 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @7, i64 4)
  call void @main.printstring(%"github.com/goplus/llgo/internal/runtime.String" %3)
  ret void

_llgo_3:                                          ; preds = %_llgo_0
  %4 = fadd double %0, %0
  %5 = fcmp oeq double %4, %0
  br i1 %5, label %_llgo_6, label %_llgo_7

_llgo_4:                                          ; preds = %_llgo_10
  %6 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @8, i64 4)
  call void @main.printstring(%"github.com/goplus/llgo/internal/runtime.String" %6)
  ret void

_llgo_5:                                          ; preds = %_llgo_7
  %7 = fadd double %0, %0
  %8 = fcmp oeq double %7, %0
  br i1 %8, label %_llgo_9, label %_llgo_10

_llgo_6:                                          ; preds = %_llgo_3
  %9 = fcmp ogt double %0, 0.000000e+00
  br label %_llgo_7

_llgo_7:                                          ; preds = %_llgo_6, %_llgo_3
  %10 = phi i1 [ false, %_llgo_3 ], [ %9, %_llgo_6 ]
  br i1 %10, label %_llgo_2, label %_llgo_5

_llgo_8:                                          ; preds = %_llgo_10
  %11 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 14)
  %12 = getelementptr inbounds i8, ptr %11, i64 0
  store i8 43, ptr %12, align 1
  %13 = fcmp oeq double %0, 0.000000e+00
  br i1 %13, label %_llgo_11, label %_llgo_13

_llgo_9:                                          ; preds = %_llgo_5
  %14 = fcmp olt double %0, 0.000000e+00
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_5
  %15 = phi i1 [ false, %_llgo_5 ], [ %14, %_llgo_9 ]
  br i1 %15, label %_llgo_4, label %_llgo_8

_llgo_11:                                         ; preds = %_llgo_8
  %16 = fdiv double 1.000000e+00, %0
  %17 = fcmp olt double %16, 0.000000e+00
  br i1 %17, label %_llgo_14, label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_24, %_llgo_22, %_llgo_14, %_llgo_11
  %18 = phi double [ %0, %_llgo_11 ], [ %36, %_llgo_22 ], [ %0, %_llgo_14 ], [ %42, %_llgo_24 ]
  %19 = phi i64 [ 0, %_llgo_11 ], [ %32, %_llgo_22 ], [ 0, %_llgo_14 ], [ %41, %_llgo_24 ]
  br label %_llgo_27

_llgo_13:                                         ; preds = %_llgo_8
  %20 = fcmp olt double %0, 0.000000e+00
  br i1 %20, label %_llgo_15, label %_llgo_17

_llgo_14:                                         ; preds = %_llgo_11
  %21 = getelementptr inbounds i8, ptr %11, i64 0
  store i8 45, ptr %21, align 1
  br label %_llgo_12

_llgo_15:                                         ; preds = %_llgo_13
  %22 = fneg double %0
  %23 = getelementptr inbounds i8, ptr %11, i64 0
  store i8 45, ptr %23, align 1
  br label %_llgo_17

_llgo_16:                                         ; preds = %_llgo_17
  %24 = add i64 %27, 1
  %25 = fdiv double %26, 1.000000e+01
  br label %_llgo_17

_llgo_17:                                         ; preds = %_llgo_16, %_llgo_15, %_llgo_13
  %26 = phi double [ %0, %_llgo_13 ], [ %25, %_llgo_16 ], [ %22, %_llgo_15 ]
  %27 = phi i64 [ 0, %_llgo_13 ], [ %24, %_llgo_16 ], [ 0, %_llgo_15 ]
  %28 = fcmp oge double %26, 1.000000e+01
  br i1 %28, label %_llgo_16, label %_llgo_20

_llgo_18:                                         ; preds = %_llgo_20
  %29 = sub i64 %32, 1
  %30 = fmul double %31, 1.000000e+01
  br label %_llgo_20

_llgo_19:                                         ; preds = %_llgo_20
  br label %_llgo_23

_llgo_20:                                         ; preds = %_llgo_18, %_llgo_17
  %31 = phi double [ %26, %_llgo_17 ], [ %30, %_llgo_18 ]
  %32 = phi i64 [ %27, %_llgo_17 ], [ %29, %_llgo_18 ]
  %33 = fcmp olt double %31, 1.000000e+00
  br i1 %33, label %_llgo_18, label %_llgo_19

_llgo_21:                                         ; preds = %_llgo_23
  %34 = fdiv double %38, 1.000000e+01
  %35 = add i64 %39, 1
  br label %_llgo_23

_llgo_22:                                         ; preds = %_llgo_23
  %36 = fadd double %31, %38
  %37 = fcmp oge double %36, 1.000000e+01
  br i1 %37, label %_llgo_24, label %_llgo_12

_llgo_23:                                         ; preds = %_llgo_21, %_llgo_19
  %38 = phi double [ 5.000000e+00, %_llgo_19 ], [ %34, %_llgo_21 ]
  %39 = phi i64 [ 0, %_llgo_19 ], [ %35, %_llgo_21 ]
  %40 = icmp slt i64 %39, 7
  br i1 %40, label %_llgo_21, label %_llgo_22

_llgo_24:                                         ; preds = %_llgo_22
  %41 = add i64 %32, 1
  %42 = fdiv double %36, 1.000000e+01
  br label %_llgo_12

_llgo_25:                                         ; preds = %_llgo_27
  %43 = fptosi double %59 to i64
  %44 = add i64 %60, 2
  %45 = add i64 %43, 48
  %46 = trunc i64 %45 to i8
  %47 = getelementptr inbounds i8, ptr %11, i64 %44
  store i8 %46, ptr %47, align 1
  %48 = sitofp i64 %43 to double
  %49 = fsub double %59, %48
  %50 = fmul double %49, 1.000000e+01
  %51 = add i64 %60, 1
  br label %_llgo_27

_llgo_26:                                         ; preds = %_llgo_27
  %52 = getelementptr inbounds i8, ptr %11, i64 2
  %53 = load i8, ptr %52, align 1
  %54 = getelementptr inbounds i8, ptr %11, i64 1
  store i8 %53, ptr %54, align 1
  %55 = getelementptr inbounds i8, ptr %11, i64 2
  store i8 46, ptr %55, align 1
  %56 = getelementptr inbounds i8, ptr %11, i64 9
  store i8 101, ptr %56, align 1
  %57 = getelementptr inbounds i8, ptr %11, i64 10
  store i8 43, ptr %57, align 1
  %58 = icmp slt i64 %19, 0
  br i1 %58, label %_llgo_28, label %_llgo_29

_llgo_27:                                         ; preds = %_llgo_25, %_llgo_12
  %59 = phi double [ %18, %_llgo_12 ], [ %50, %_llgo_25 ]
  %60 = phi i64 [ 0, %_llgo_12 ], [ %51, %_llgo_25 ]
  %61 = icmp slt i64 %60, 7
  br i1 %61, label %_llgo_25, label %_llgo_26

_llgo_28:                                         ; preds = %_llgo_26
  %62 = sub i64 0, %19
  %63 = getelementptr inbounds i8, ptr %11, i64 10
  store i8 45, ptr %63, align 1
  br label %_llgo_29

_llgo_29:                                         ; preds = %_llgo_28, %_llgo_26
  %64 = phi i64 [ %19, %_llgo_26 ], [ %62, %_llgo_28 ]
  %65 = sdiv i64 %64, 100
  %66 = trunc i64 %65 to i8
  %67 = add i8 %66, 48
  %68 = getelementptr inbounds i8, ptr %11, i64 11
  store i8 %67, ptr %68, align 1
  %69 = sdiv i64 %64, 10
  %70 = trunc i64 %69 to i8
  %71 = urem i8 %70, 10
  %72 = add i8 %71, 48
  %73 = getelementptr inbounds i8, ptr %11, i64 12
  store i8 %72, ptr %73, align 1
  %74 = srem i64 %64, 10
  %75 = trunc i64 %74 to i8
  %76 = add i8 %75, 48
  %77 = getelementptr inbounds i8, ptr %11, i64 13
  store i8 %76, ptr %77, align 1
  %78 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr %11, i64 1, i64 14, i64 0, i64 14, i64 14)
  call void @main.gwrite(%"github.com/goplus/llgo/internal/runtime.Slice" %78)
  ret void
}

define void @main.printhex(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 100)
  br label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %2 = urem i64 %14, 16
  %3 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @9, i64 16)
  %4 = call ptr @"github.com/goplus/llgo/internal/runtime.StringData"(%"github.com/goplus/llgo/internal/runtime.String" %3)
  %5 = getelementptr inbounds i8, ptr %4, i64 %2
  %6 = load i8, ptr %5, align 1
  %7 = getelementptr inbounds i8, ptr %1, i64 %15
  store i8 %6, ptr %7, align 1
  %8 = icmp ult i64 %14, 16
  br i1 %8, label %_llgo_5, label %_llgo_4

_llgo_2:                                          ; preds = %_llgo_5, %_llgo_3
  %9 = sub i64 %15, 1
  %10 = getelementptr inbounds i8, ptr %1, i64 %9
  store i8 120, ptr %10, align 1
  %11 = sub i64 %9, 1
  %12 = getelementptr inbounds i8, ptr %1, i64 %11
  store i8 48, ptr %12, align 1
  %13 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr %1, i64 1, i64 100, i64 %11, i64 100, i64 100)
  call void @main.gwrite(%"github.com/goplus/llgo/internal/runtime.Slice" %13)
  ret void

_llgo_3:                                          ; preds = %_llgo_4, %_llgo_0
  %14 = phi i64 [ %0, %_llgo_0 ], [ %17, %_llgo_4 ]
  %15 = phi i64 [ 99, %_llgo_0 ], [ %18, %_llgo_4 ]
  %16 = icmp sgt i64 %15, 0
  br i1 %16, label %_llgo_1, label %_llgo_2

_llgo_4:                                          ; preds = %_llgo_5, %_llgo_1
  %17 = udiv i64 %14, 16
  %18 = sub i64 %15, 1
  br label %_llgo_3

_llgo_5:                                          ; preds = %_llgo_1
  %19 = sub i64 100, %15
  %20 = load i64, ptr @main.minhexdigits, align 4
  %21 = icmp sge i64 %19, %20
  br i1 %21, label %_llgo_2, label %_llgo_4
}

define void @main.printint(i64 %0) {
_llgo_0:
  %1 = icmp slt i64 %0, 0
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @10, i64 1)
  call void @main.printstring(%"github.com/goplus/llgo/internal/runtime.String" %2)
  %3 = sub i64 0, %0
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %4 = phi i64 [ %0, %_llgo_0 ], [ %3, %_llgo_1 ]
  call void @main.printuint(i64 %4)
  ret void
}

define void @main.println(%"github.com/goplus/llgo/internal/runtime.Slice" %0) {
_llgo_0:
  %1 = call i64 @"github.com/goplus/llgo/internal/runtime.SliceLen"(%"github.com/goplus/llgo/internal/runtime.Slice" %0)
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_5, %_llgo_0
  %2 = phi i64 [ -1, %_llgo_0 ], [ %3, %_llgo_5 ]
  %3 = add i64 %2, 1
  %4 = icmp slt i64 %3, %1
  br i1 %4, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  %5 = call ptr @"github.com/goplus/llgo/internal/runtime.SliceData"(%"github.com/goplus/llgo/internal/runtime.Slice" %0)
  %6 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %5, i64 %3
  %7 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %6, align 8
  %8 = icmp ne i64 %3, 0
  br i1 %8, label %_llgo_4, label %_llgo_5

_llgo_3:                                          ; preds = %_llgo_1
  call void @main.printnl()
  ret void

_llgo_4:                                          ; preds = %_llgo_2
  %9 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @11, i64 1)
  call void @main.printstring(%"github.com/goplus/llgo/internal/runtime.String" %9)
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_2
  call void @main.printany(%"github.com/goplus/llgo/internal/runtime.iface" %7)
  br label %_llgo_1
}

define void @main.printnl() {
_llgo_0:
  %0 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @12, i64 1)
  call void @main.printstring(%"github.com/goplus/llgo/internal/runtime.String" %0)
  ret void
}

define void @main.printsp() {
_llgo_0:
  %0 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @13, i64 1)
  call void @main.printstring(%"github.com/goplus/llgo/internal/runtime.String" %0)
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
  %2 = urem i64 %8, 10
  %3 = add i64 %2, 48
  %4 = trunc i64 %3 to i8
  %5 = getelementptr inbounds i8, ptr %1, i64 %9
  store i8 %4, ptr %5, align 1
  %6 = icmp ult i64 %8, 10
  br i1 %6, label %_llgo_2, label %_llgo_4

_llgo_2:                                          ; preds = %_llgo_3, %_llgo_1
  %7 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr %1, i64 1, i64 100, i64 %9, i64 100, i64 100)
  call void @main.gwrite(%"github.com/goplus/llgo/internal/runtime.Slice" %7)
  ret void

_llgo_3:                                          ; preds = %_llgo_4, %_llgo_0
  %8 = phi i64 [ %0, %_llgo_0 ], [ %11, %_llgo_4 ]
  %9 = phi i64 [ 99, %_llgo_0 ], [ %12, %_llgo_4 ]
  %10 = icmp sgt i64 %9, 0
  br i1 %10, label %_llgo_1, label %_llgo_2

_llgo_4:                                          ; preds = %_llgo_1
  %11 = udiv i64 %8, 10
  %12 = sub i64 %9, 1
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

declare i64 @"github.com/goplus/llgo/internal/runtime.SliceLen"(%"github.com/goplus/llgo/internal/runtime.Slice")

declare i32 @printf(ptr, ...)

declare void @"github.com/goplus/llgo/internal/runtime.init"()

declare %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr, i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64)

declare %"github.com/goplus/llgo/internal/runtime.iface" @"github.com/goplus/llgo/internal/runtime.MakeAnyInt"(ptr, i64)

declare %"github.com/goplus/llgo/internal/runtime.iface" @"github.com/goplus/llgo/internal/runtime.MakeAnyString"(%"github.com/goplus/llgo/internal/runtime.String")

declare %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr, i64, i64, i64, i64, i64)

declare { i64, i1 } @"github.com/goplus/llgo/internal/runtime.CheckI2Int"(%"github.com/goplus/llgo/internal/runtime.iface", ptr)

declare { %"github.com/goplus/llgo/internal/runtime.String", i1 } @"github.com/goplus/llgo/internal/runtime.CheckI2String"(%"github.com/goplus/llgo/internal/runtime.iface", ptr)

declare ptr @"github.com/goplus/llgo/internal/runtime.StringData"(%"github.com/goplus/llgo/internal/runtime.String")

declare ptr @"github.com/goplus/llgo/internal/runtime.SliceData"(%"github.com/goplus/llgo/internal/runtime.Slice")
