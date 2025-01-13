; ModuleID = 'github.com/goplus/llgo/compiler/cl/_testgo/cgobasic'
source_filename = "github.com/goplus/llgo/compiler/cl/_testgo/cgobasic"

%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }

@"github.com/goplus/llgo/runtime/internal/runtime.cgoAlwaysFalse" = external global i1, align 1
@_cgo_217b74f897b2_Cfunc__Cmalloc = external global i8, align 1
@_cgo_217b74f897b2_Cfunc_cos = external global i8, align 1
@_cgo_217b74f897b2_Cfunc_free = external global i8, align 1
@_cgo_217b74f897b2_Cfunc_log = external global i8, align 1
@_cgo_217b74f897b2_Cfunc_puts = external global i8, align 1
@_cgo_217b74f897b2_Cfunc_sin = external global i8, align 1
@_cgo_217b74f897b2_Cfunc_sqrt = external global i8, align 1
@"github.com/goplus/llgo/compiler/cl/_testgo/cgobasic._cgo_217b74f897b2_Cfunc__Cmalloc" = global ptr null, align 8
@"github.com/goplus/llgo/compiler/cl/_testgo/cgobasic._cgo_217b74f897b2_Cfunc_cos" = global ptr null, align 8
@"github.com/goplus/llgo/compiler/cl/_testgo/cgobasic._cgo_217b74f897b2_Cfunc_free" = global ptr null, align 8
@"github.com/goplus/llgo/compiler/cl/_testgo/cgobasic._cgo_217b74f897b2_Cfunc_log" = global ptr null, align 8
@"github.com/goplus/llgo/compiler/cl/_testgo/cgobasic._cgo_217b74f897b2_Cfunc_puts" = global ptr null, align 8
@"github.com/goplus/llgo/compiler/cl/_testgo/cgobasic._cgo_217b74f897b2_Cfunc_sin" = global ptr null, align 8
@"github.com/goplus/llgo/compiler/cl/_testgo/cgobasic._cgo_217b74f897b2_Cfunc_sqrt" = global ptr null, align 8
@"github.com/goplus/llgo/compiler/cl/_testgo/cgobasic.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [13 x i8] c"Hello, World!", align 1
@1 = private unnamed_addr constant [29 x i8] c"Converted back to Go string: ", align 1
@2 = private unnamed_addr constant [23 x i8] c"Length-limited string: ", align 1
@3 = private unnamed_addr constant [33 x i8] c"Converted back to Go byte slice: ", align 1
@_llgo_float64 = linkonce global ptr null, align 8
@4 = private unnamed_addr constant [14 x i8] c"sqrt(%v) = %v\0A", align 1
@5 = private unnamed_addr constant [13 x i8] c"sin(%v) = %v\0A", align 1
@6 = private unnamed_addr constant [13 x i8] c"cos(%v) = %v\0A", align 1
@7 = private unnamed_addr constant [13 x i8] c"log(%v) = %v\0A", align 1
@_llgo_byte = linkonce global ptr null, align 8
@"[]_llgo_byte" = linkonce global ptr null, align 8
@_llgo_Pointer = linkonce global ptr null, align 8

define double @"github.com/goplus/llgo/compiler/cl/_testgo/cgobasic._Cfunc_cos"(double %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %2 = load ptr, ptr @"github.com/goplus/llgo/compiler/cl/_testgo/cgobasic._cgo_217b74f897b2_Cfunc_cos", align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call double %3(double %0)
  ret double %4
}

define [0 x i8] @"github.com/goplus/llgo/compiler/cl/_testgo/cgobasic._Cfunc_free"(ptr %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %2 = load ptr, ptr @"github.com/goplus/llgo/compiler/cl/_testgo/cgobasic._cgo_217b74f897b2_Cfunc_free", align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call [0 x i8] %3(ptr %0)
  ret [0 x i8] %4
}

define double @"github.com/goplus/llgo/compiler/cl/_testgo/cgobasic._Cfunc_log"(double %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %2 = load ptr, ptr @"github.com/goplus/llgo/compiler/cl/_testgo/cgobasic._cgo_217b74f897b2_Cfunc_log", align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call double %3(double %0)
  ret double %4
}

define i32 @"github.com/goplus/llgo/compiler/cl/_testgo/cgobasic._Cfunc_puts"(ptr %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %2 = load ptr, ptr @"github.com/goplus/llgo/compiler/cl/_testgo/cgobasic._cgo_217b74f897b2_Cfunc_puts", align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call i32 %3(ptr %0)
  ret i32 %4
}

define double @"github.com/goplus/llgo/compiler/cl/_testgo/cgobasic._Cfunc_sin"(double %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %2 = load ptr, ptr @"github.com/goplus/llgo/compiler/cl/_testgo/cgobasic._cgo_217b74f897b2_Cfunc_sin", align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call double %3(double %0)
  ret double %4
}

define double @"github.com/goplus/llgo/compiler/cl/_testgo/cgobasic._Cfunc_sqrt"(double %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %2 = load ptr, ptr @"github.com/goplus/llgo/compiler/cl/_testgo/cgobasic._cgo_217b74f897b2_Cfunc_sqrt", align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call double %3(double %0)
  ret double %4
}

define ptr @"github.com/goplus/llgo/compiler/cl/_testgo/cgobasic._Cgo_ptr"(ptr %0) {
_llgo_0:
  ret ptr %0
}

declare void @runtime.cgoUse(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

declare void @"github.com/goplus/llgo/compiler/cl/_testgo/cgobasic._cgoCheckResult"(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

define void @"github.com/goplus/llgo/compiler/cl/_testgo/cgobasic.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/compiler/cl/_testgo/cgobasic.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/compiler/cl/_testgo/cgobasic.init$guard", align 1
  call void @syscall.init()
  call void @fmt.init()
  call void @"github.com/goplus/llgo/compiler/cl/_testgo/cgobasic.init$after"()
  store ptr @_cgo_217b74f897b2_Cfunc_cos, ptr @"github.com/goplus/llgo/compiler/cl/_testgo/cgobasic._cgo_217b74f897b2_Cfunc_cos", align 8
  store ptr @_cgo_217b74f897b2_Cfunc_free, ptr @"github.com/goplus/llgo/compiler/cl/_testgo/cgobasic._cgo_217b74f897b2_Cfunc_free", align 8
  store ptr @_cgo_217b74f897b2_Cfunc_log, ptr @"github.com/goplus/llgo/compiler/cl/_testgo/cgobasic._cgo_217b74f897b2_Cfunc_log", align 8
  store ptr @_cgo_217b74f897b2_Cfunc_puts, ptr @"github.com/goplus/llgo/compiler/cl/_testgo/cgobasic._cgo_217b74f897b2_Cfunc_puts", align 8
  store ptr @_cgo_217b74f897b2_Cfunc_sin, ptr @"github.com/goplus/llgo/compiler/cl/_testgo/cgobasic._cgo_217b74f897b2_Cfunc_sin", align 8
  store ptr @_cgo_217b74f897b2_Cfunc_sqrt, ptr @"github.com/goplus/llgo/compiler/cl/_testgo/cgobasic._cgo_217b74f897b2_Cfunc_sqrt", align 8
  store ptr @_cgo_217b74f897b2_Cfunc__Cmalloc, ptr @"github.com/goplus/llgo/compiler/cl/_testgo/cgobasic._cgo_217b74f897b2_Cfunc__Cmalloc", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/compiler/cl/_testgo/cgobasic.main"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.CString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 13 })
  store ptr %1, ptr %0, align 8
  %2 = load ptr, ptr %0, align 8
  %3 = call i32 @"github.com/goplus/llgo/compiler/cl/_testgo/cgobasic._Cfunc_puts"(ptr %2)
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 24)
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 4)
  %6 = getelementptr inbounds i8, ptr %5, i64 0
  store i8 65, ptr %6, align 1
  %7 = getelementptr inbounds i8, ptr %5, i64 1
  store i8 66, ptr %7, align 1
  %8 = getelementptr inbounds i8, ptr %5, i64 2
  store i8 67, ptr %8, align 1
  %9 = getelementptr inbounds i8, ptr %5, i64 3
  store i8 68, ptr %9, align 1
  %10 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %5, 0
  %11 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %10, i64 4, 1
  %12 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %11, i64 4, 2
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %12, ptr %4, align 8
  %13 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %14 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %15 = getelementptr inbounds { ptr }, ptr %14, i32 0, i32 0
  store ptr %4, ptr %15, align 8
  %16 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/compiler/cl/_testgo/cgobasic.main$1", ptr undef }, ptr %14, 1
  %17 = extractvalue { ptr, ptr } %16, 1
  %18 = extractvalue { ptr, ptr } %16, 0
  %19 = call ptr %18(ptr %17)
  store ptr %19, ptr %13, align 8
  %20 = load ptr, ptr %0, align 8
  %21 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.GoString"(ptr %20)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 29 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %21)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %22 = load ptr, ptr %0, align 8
  %23 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.GoStringN"(ptr %22, i32 5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 23 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %23)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %24 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %25 = getelementptr inbounds { ptr }, ptr %24, i32 0, i32 0
  store ptr %13, ptr %25, align 8
  %26 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/compiler/cl/_testgo/cgobasic.main$2", ptr undef }, ptr %24, 1
  %27 = extractvalue { ptr, ptr } %26, 1
  %28 = extractvalue { ptr, ptr } %26, 0
  %29 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %28(ptr %27)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 33 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %29)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %30 = call double @"github.com/goplus/llgo/compiler/cl/_testgo/cgobasic._Cfunc_sqrt"(double 2.000000e+00)
  %31 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 32)
  %32 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %31, i64 0
  %33 = load ptr, ptr @_llgo_float64, align 8
  %34 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %33, 0
  %35 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %34, ptr inttoptr (i64 4611686018427387904 to ptr), 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %35, ptr %32, align 8
  %36 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %31, i64 1
  %37 = load ptr, ptr @_llgo_float64, align 8
  %38 = bitcast double %30 to i64
  %39 = inttoptr i64 %38 to ptr
  %40 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %37, 0
  %41 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %40, ptr %39, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %41, ptr %36, align 8
  %42 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %31, 0
  %43 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %42, i64 2, 1
  %44 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %43, i64 2, 2
  %45 = call { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @fmt.Printf(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 14 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %44)
  %46 = call double @"github.com/goplus/llgo/compiler/cl/_testgo/cgobasic._Cfunc_sin"(double 2.000000e+00)
  %47 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 32)
  %48 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %47, i64 0
  %49 = load ptr, ptr @_llgo_float64, align 8
  %50 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %49, 0
  %51 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %50, ptr inttoptr (i64 4611686018427387904 to ptr), 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %51, ptr %48, align 8
  %52 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %47, i64 1
  %53 = load ptr, ptr @_llgo_float64, align 8
  %54 = bitcast double %46 to i64
  %55 = inttoptr i64 %54 to ptr
  %56 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %53, 0
  %57 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %56, ptr %55, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %57, ptr %52, align 8
  %58 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %47, 0
  %59 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %58, i64 2, 1
  %60 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %59, i64 2, 2
  %61 = call { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @fmt.Printf(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 13 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %60)
  %62 = call double @"github.com/goplus/llgo/compiler/cl/_testgo/cgobasic._Cfunc_cos"(double 2.000000e+00)
  %63 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 32)
  %64 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %63, i64 0
  %65 = load ptr, ptr @_llgo_float64, align 8
  %66 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %65, 0
  %67 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %66, ptr inttoptr (i64 4611686018427387904 to ptr), 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %67, ptr %64, align 8
  %68 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %63, i64 1
  %69 = load ptr, ptr @_llgo_float64, align 8
  %70 = bitcast double %62 to i64
  %71 = inttoptr i64 %70 to ptr
  %72 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %69, 0
  %73 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %72, ptr %71, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %73, ptr %68, align 8
  %74 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %63, 0
  %75 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %74, i64 2, 1
  %76 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %75, i64 2, 2
  %77 = call { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @fmt.Printf(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 13 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %76)
  %78 = call double @"github.com/goplus/llgo/compiler/cl/_testgo/cgobasic._Cfunc_log"(double 2.000000e+00)
  %79 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 32)
  %80 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %79, i64 0
  %81 = load ptr, ptr @_llgo_float64, align 8
  %82 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %81, 0
  %83 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %82, ptr inttoptr (i64 4611686018427387904 to ptr), 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %83, ptr %80, align 8
  %84 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %79, i64 1
  %85 = load ptr, ptr @_llgo_float64, align 8
  %86 = bitcast double %78 to i64
  %87 = inttoptr i64 %86 to ptr
  %88 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %85, 0
  %89 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %88, ptr %87, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %89, ptr %84, align 8
  %90 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %79, 0
  %91 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %90, i64 2, 1
  %92 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %91, i64 2, 2
  %93 = call { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @fmt.Printf(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 13 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %92)
  %94 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %95 = getelementptr inbounds { ptr }, ptr %94, i32 0, i32 0
  store ptr %0, ptr %95, align 8
  %96 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/compiler/cl/_testgo/cgobasic.main$3", ptr undef }, ptr %94, 1
  %97 = extractvalue { ptr, ptr } %96, 1
  %98 = extractvalue { ptr, ptr } %96, 0
  call void %98(ptr %97)
  %99 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %100 = getelementptr inbounds { ptr }, ptr %99, i32 0, i32 0
  store ptr %13, ptr %100, align 8
  %101 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/compiler/cl/_testgo/cgobasic.main$4", ptr undef }, ptr %99, 1
  %102 = extractvalue { ptr, ptr } %101, 1
  %103 = extractvalue { ptr, ptr } %101, 0
  call void %103(ptr %102)
  ret void
}

define ptr @"github.com/goplus/llgo/compiler/cl/_testgo/cgobasic.main$1"(ptr %0) {
_llgo_0:
  %1 = load { ptr }, ptr %0, align 8
  %2 = extractvalue { ptr } %1, 0
  %3 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %2, align 8
  %4 = load ptr, ptr @_llgo_byte, align 8
  %5 = load ptr, ptr @"[]_llgo_byte", align 8
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %3, ptr %6, align 8
  %7 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %5, 0
  %8 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %7, ptr %6, 1
  %9 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.CBytes"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %3)
  ret ptr %9
}

define %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/compiler/cl/_testgo/cgobasic.main$2"(ptr %0) {
_llgo_0:
  %1 = load { ptr }, ptr %0, align 8
  %2 = extractvalue { ptr } %1, 0
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr @_llgo_Pointer, align 8
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %4, 0
  %6 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %5, ptr %3, 1
  %7 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.GoBytes"(ptr %3, i32 4)
  ret %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7
}

define void @"github.com/goplus/llgo/compiler/cl/_testgo/cgobasic.main$3"(ptr %0) {
_llgo_0:
  %1 = load { ptr }, ptr %0, align 8
  %2 = extractvalue { ptr } %1, 0
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr @_llgo_Pointer, align 8
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %4, 0
  %6 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %5, ptr %3, 1
  %7 = call [0 x i8] @"github.com/goplus/llgo/compiler/cl/_testgo/cgobasic._Cfunc_free"(ptr %3)
  ret void
}

define void @"github.com/goplus/llgo/compiler/cl/_testgo/cgobasic.main$4"(ptr %0) {
_llgo_0:
  %1 = load { ptr }, ptr %0, align 8
  %2 = extractvalue { ptr } %1, 0
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr @_llgo_Pointer, align 8
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %4, 0
  %6 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %5, ptr %3, 1
  %7 = call [0 x i8] @"github.com/goplus/llgo/compiler/cl/_testgo/cgobasic._Cfunc_free"(ptr %3)
  ret void
}

declare void @runtime.throw(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare void @syscall.init()

declare void @fmt.init()

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.CString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.GoString"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.GoStringN"(ptr, i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice")

define void @"github.com/goplus/llgo/compiler/cl/_testgo/cgobasic.init$after"() {
_llgo_0:
  %0 = load ptr, ptr @_llgo_float64, align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 46)
  store ptr %2, ptr @_llgo_float64, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %3 = load ptr, ptr @_llgo_byte, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 40)
  store ptr %5, ptr @_llgo_byte, align 8
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_2
  %6 = load ptr, ptr @"[]_llgo_byte", align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 40)
  %9 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SliceOf"(ptr %8)
  store ptr %9, ptr @"[]_llgo_byte", align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %10 = load ptr, ptr @_llgo_Pointer, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %_llgo_7, label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_6
  %12 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %12)
  store ptr %12, ptr @_llgo_Pointer, align 8
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_6
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64)

declare { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @fmt.Printf(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.SliceOf"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.CBytes"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.GoBytes"(ptr, i64)
