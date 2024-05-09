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
@2 = private unnamed_addr constant [4 x i8] c"NaN\00", align 1
@3 = private unnamed_addr constant [5 x i8] c"+Inf\00", align 1
@4 = private unnamed_addr constant [5 x i8] c"-Inf\00", align 1
@5 = private unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 1
@6 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@8 = private unnamed_addr constant [2 x i8] c" \00", align 1

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
  call void @main.printnum(%"github.com/goplus/llgo/internal/runtime.iface" %4)
  call void @main.printnl()
  %5 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 14)
  %6 = call %"github.com/goplus/llgo/internal/runtime.iface" @"github.com/goplus/llgo/internal/runtime.MakeAnyInt"(ptr %5, i64 4746175415993761792)
  call void @main.printnum(%"github.com/goplus/llgo/internal/runtime.iface" %6)
  call void @main.printnl()
  ret void
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

define void @main.printfloat(double %0) {
_llgo_0:
  %1 = fcmp one double %0, %0
  br i1 %1, label %_llgo_1, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @2, i64 3)
  call void @main.printstring(%"github.com/goplus/llgo/internal/runtime.String" %2)
  ret void

_llgo_2:                                          ; preds = %_llgo_7
  %3 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @3, i64 4)
  call void @main.printstring(%"github.com/goplus/llgo/internal/runtime.String" %3)
  ret void

_llgo_3:                                          ; preds = %_llgo_0
  %4 = fadd double %0, %0
  %5 = fcmp oeq double %4, %0
  br i1 %5, label %_llgo_6, label %_llgo_7

_llgo_4:                                          ; preds = %_llgo_10
  %6 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @4, i64 4)
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
  %3 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @5, i64 16)
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
  %2 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @6, i64 1)
  call void @main.printstring(%"github.com/goplus/llgo/internal/runtime.String" %2)
  %3 = sub i64 0, %0
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %4 = phi i64 [ %0, %_llgo_0 ], [ %3, %_llgo_1 ]
  call void @main.printuint(i64 %4)
  ret void
}

define void @main.printnl() {
_llgo_0:
  %0 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @7, i64 1)
  call void @main.printstring(%"github.com/goplus/llgo/internal/runtime.String" %0)
  ret void
}

define void @main.printnum(%"github.com/goplus/llgo/internal/runtime.iface" %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 2)
  %2 = call { i64, i1 } @"github.com/goplus/llgo/internal/runtime.CheckI2Int"(%"github.com/goplus/llgo/internal/runtime.iface" %0, ptr %1)
  %3 = extractvalue { i64, i1 } %2, 0
  %4 = extractvalue { i64, i1 } %2, 1
  br i1 %4, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_26, %_llgo_25, %_llgo_24, %_llgo_22, %_llgo_20, %_llgo_18, %_llgo_16, %_llgo_14, %_llgo_12, %_llgo_10, %_llgo_8, %_llgo_6, %_llgo_4, %_llgo_2
  ret void

_llgo_2:                                          ; preds = %_llgo_0
  call void @main.printint(i64 %3)
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_0
  %5 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 3)
  %6 = call { i64, i1 } @"github.com/goplus/llgo/internal/runtime.CheckI2Int"(%"github.com/goplus/llgo/internal/runtime.iface" %0, ptr %5)
  %7 = extractvalue { i64, i1 } %6, 0
  %8 = extractvalue { i64, i1 } %6, 1
  br i1 %8, label %_llgo_4, label %_llgo_5

_llgo_4:                                          ; preds = %_llgo_3
  call void @main.printint(i64 %7)
  br label %_llgo_1

_llgo_5:                                          ; preds = %_llgo_3
  %9 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 4)
  %10 = call { i64, i1 } @"github.com/goplus/llgo/internal/runtime.CheckI2Int"(%"github.com/goplus/llgo/internal/runtime.iface" %0, ptr %9)
  %11 = extractvalue { i64, i1 } %10, 0
  %12 = extractvalue { i64, i1 } %10, 1
  br i1 %12, label %_llgo_6, label %_llgo_7

_llgo_6:                                          ; preds = %_llgo_5
  call void @main.printint(i64 %11)
  br label %_llgo_1

_llgo_7:                                          ; preds = %_llgo_5
  %13 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 5)
  %14 = call { i64, i1 } @"github.com/goplus/llgo/internal/runtime.CheckI2Int"(%"github.com/goplus/llgo/internal/runtime.iface" %0, ptr %13)
  %15 = extractvalue { i64, i1 } %14, 0
  %16 = extractvalue { i64, i1 } %14, 1
  br i1 %16, label %_llgo_8, label %_llgo_9

_llgo_8:                                          ; preds = %_llgo_7
  call void @main.printint(i64 %15)
  br label %_llgo_1

_llgo_9:                                          ; preds = %_llgo_7
  %17 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 6)
  %18 = call { i64, i1 } @"github.com/goplus/llgo/internal/runtime.CheckI2Int"(%"github.com/goplus/llgo/internal/runtime.iface" %0, ptr %17)
  %19 = extractvalue { i64, i1 } %18, 0
  %20 = extractvalue { i64, i1 } %18, 1
  br i1 %20, label %_llgo_10, label %_llgo_11

_llgo_10:                                         ; preds = %_llgo_9
  call void @main.printint(i64 %19)
  br label %_llgo_1

_llgo_11:                                         ; preds = %_llgo_9
  %21 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 7)
  %22 = call { i64, i1 } @"github.com/goplus/llgo/internal/runtime.CheckI2Int"(%"github.com/goplus/llgo/internal/runtime.iface" %0, ptr %21)
  %23 = extractvalue { i64, i1 } %22, 0
  %24 = extractvalue { i64, i1 } %22, 1
  br i1 %24, label %_llgo_12, label %_llgo_13

_llgo_12:                                         ; preds = %_llgo_11
  call void @main.printuint(i64 %23)
  br label %_llgo_1

_llgo_13:                                         ; preds = %_llgo_11
  %25 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 8)
  %26 = call { i64, i1 } @"github.com/goplus/llgo/internal/runtime.CheckI2Int"(%"github.com/goplus/llgo/internal/runtime.iface" %0, ptr %25)
  %27 = extractvalue { i64, i1 } %26, 0
  %28 = extractvalue { i64, i1 } %26, 1
  br i1 %28, label %_llgo_14, label %_llgo_15

_llgo_14:                                         ; preds = %_llgo_13
  call void @main.printuint(i64 %27)
  br label %_llgo_1

_llgo_15:                                         ; preds = %_llgo_13
  %29 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 9)
  %30 = call { i64, i1 } @"github.com/goplus/llgo/internal/runtime.CheckI2Int"(%"github.com/goplus/llgo/internal/runtime.iface" %0, ptr %29)
  %31 = extractvalue { i64, i1 } %30, 0
  %32 = extractvalue { i64, i1 } %30, 1
  br i1 %32, label %_llgo_16, label %_llgo_17

_llgo_16:                                         ; preds = %_llgo_15
  call void @main.printuint(i64 %31)
  br label %_llgo_1

_llgo_17:                                         ; preds = %_llgo_15
  %33 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 10)
  %34 = call { i64, i1 } @"github.com/goplus/llgo/internal/runtime.CheckI2Int"(%"github.com/goplus/llgo/internal/runtime.iface" %0, ptr %33)
  %35 = extractvalue { i64, i1 } %34, 0
  %36 = extractvalue { i64, i1 } %34, 1
  br i1 %36, label %_llgo_18, label %_llgo_19

_llgo_18:                                         ; preds = %_llgo_17
  call void @main.printuint(i64 %35)
  br label %_llgo_1

_llgo_19:                                         ; preds = %_llgo_17
  %37 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 11)
  %38 = call { i64, i1 } @"github.com/goplus/llgo/internal/runtime.CheckI2Int"(%"github.com/goplus/llgo/internal/runtime.iface" %0, ptr %37)
  %39 = extractvalue { i64, i1 } %38, 0
  %40 = extractvalue { i64, i1 } %38, 1
  br i1 %40, label %_llgo_20, label %_llgo_21

_llgo_20:                                         ; preds = %_llgo_19
  call void @main.printuint(i64 %39)
  br label %_llgo_1

_llgo_21:                                         ; preds = %_llgo_19
  %41 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 12)
  %42 = call { i64, i1 } @"github.com/goplus/llgo/internal/runtime.CheckI2Int"(%"github.com/goplus/llgo/internal/runtime.iface" %0, ptr %41)
  %43 = extractvalue { i64, i1 } %42, 0
  %44 = extractvalue { i64, i1 } %42, 1
  br i1 %44, label %_llgo_22, label %_llgo_23

_llgo_22:                                         ; preds = %_llgo_21
  call void @main.printuint(i64 %43)
  br label %_llgo_1

_llgo_23:                                         ; preds = %_llgo_21
  %45 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 13)
  %46 = call { float, i1 } @"github.com/goplus/llgo/internal/runtime.CheckI2Float32"(%"github.com/goplus/llgo/internal/runtime.iface" %0, ptr %45)
  %47 = extractvalue { float, i1 } %46, 0
  %48 = extractvalue { float, i1 } %46, 1
  br i1 %48, label %_llgo_24, label %_llgo_25

_llgo_24:                                         ; preds = %_llgo_23
  %49 = fpext float %47 to double
  call void @main.printfloat(double %49)
  br label %_llgo_1

_llgo_25:                                         ; preds = %_llgo_23
  %50 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 14)
  %51 = call { double, i1 } @"github.com/goplus/llgo/internal/runtime.CheckI2Float64"(%"github.com/goplus/llgo/internal/runtime.iface" %0, ptr %50)
  %52 = extractvalue { double, i1 } %51, 0
  %53 = extractvalue { double, i1 } %51, 1
  br i1 %53, label %_llgo_26, label %_llgo_1

_llgo_26:                                         ; preds = %_llgo_25
  call void @main.printfloat(double %52)
  br label %_llgo_1
}

define void @main.printsp() {
_llgo_0:
  %0 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @8, i64 1)
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

declare %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr, i64, i64, i64, i64, i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.StringData"(%"github.com/goplus/llgo/internal/runtime.String")

declare { i64, i1 } @"github.com/goplus/llgo/internal/runtime.CheckI2Int"(%"github.com/goplus/llgo/internal/runtime.iface", ptr)

declare { float, i1 } @"github.com/goplus/llgo/internal/runtime.CheckI2Float32"(%"github.com/goplus/llgo/internal/runtime.iface", ptr)

declare { double, i1 } @"github.com/goplus/llgo/internal/runtime.CheckI2Float64"(%"github.com/goplus/llgo/internal/runtime.iface", ptr)
