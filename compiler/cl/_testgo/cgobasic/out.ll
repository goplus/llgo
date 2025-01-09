; ModuleID = 'main'
source_filename = "main"

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
@main._cgo_217b74f897b2_Cfunc__Cmalloc = global ptr null, align 8
@main._cgo_217b74f897b2_Cfunc_cos = global ptr null, align 8
@main._cgo_217b74f897b2_Cfunc_free = global ptr null, align 8
@main._cgo_217b74f897b2_Cfunc_log = global ptr null, align 8
@main._cgo_217b74f897b2_Cfunc_puts = global ptr null, align 8
@main._cgo_217b74f897b2_Cfunc_sin = global ptr null, align 8
@main._cgo_217b74f897b2_Cfunc_sqrt = global ptr null, align 8
@"main.init$guard" = global i1 false, align 1
@__llgo_argc = global i32 0, align 4
@__llgo_argv = global ptr null, align 8
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

define double @main._Cfunc_cos(double %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %2 = load ptr, ptr @main._cgo_217b74f897b2_Cfunc_cos, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call double %3(double %0)
  ret double %4
}

define [0 x i8] @main._Cfunc_free(ptr %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %2 = load ptr, ptr @main._cgo_217b74f897b2_Cfunc_free, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call [0 x i8] %3(ptr %0)
  ret [0 x i8] %4
}

define double @main._Cfunc_log(double %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %2 = load ptr, ptr @main._cgo_217b74f897b2_Cfunc_log, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call double %3(double %0)
  ret double %4
}

define i32 @main._Cfunc_puts(ptr %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %2 = load ptr, ptr @main._cgo_217b74f897b2_Cfunc_puts, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call i32 %3(ptr %0)
  ret i32 %4
}

define double @main._Cfunc_sin(double %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %2 = load ptr, ptr @main._cgo_217b74f897b2_Cfunc_sin, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call double %3(double %0)
  ret double %4
}

define double @main._Cfunc_sqrt(double %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %2 = load ptr, ptr @main._cgo_217b74f897b2_Cfunc_sqrt, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call double %3(double %0)
  ret double %4
}

define ptr @main._Cgo_ptr(ptr %0) {
_llgo_0:
  ret ptr %0
}

declare void @runtime.cgoUse(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

declare void @main._cgoCheckResult(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

define void @main.init() {
_llgo_0:
  %0 = load i1, ptr @"main.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"main.init$guard", align 1
  call void @syscall.init()
  call void @fmt.init()
  call void @"main.init$after"()
  store ptr @_cgo_217b74f897b2_Cfunc_cos, ptr @main._cgo_217b74f897b2_Cfunc_cos, align 8
  store ptr @_cgo_217b74f897b2_Cfunc_free, ptr @main._cgo_217b74f897b2_Cfunc_free, align 8
  store ptr @_cgo_217b74f897b2_Cfunc_log, ptr @main._cgo_217b74f897b2_Cfunc_log, align 8
  store ptr @_cgo_217b74f897b2_Cfunc_puts, ptr @main._cgo_217b74f897b2_Cfunc_puts, align 8
  store ptr @_cgo_217b74f897b2_Cfunc_sin, ptr @main._cgo_217b74f897b2_Cfunc_sin, align 8
  store ptr @_cgo_217b74f897b2_Cfunc_sqrt, ptr @main._cgo_217b74f897b2_Cfunc_sqrt, align 8
  store ptr @_cgo_217b74f897b2_Cfunc__Cmalloc, ptr @main._cgo_217b74f897b2_Cfunc__Cmalloc, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define i32 @main(i32 %0, ptr %1) {
_llgo_0:
  store i32 %0, ptr @__llgo_argc, align 4
  store ptr %1, ptr @__llgo_argv, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.init"()
  call void @main.init()
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.CString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 13 })
  store ptr %3, ptr %2, align 8
  %4 = load ptr, ptr %2, align 8
  %5 = call i32 @main._Cfunc_puts(ptr %4)
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 24)
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 4)
  %8 = getelementptr inbounds i8, ptr %7, i64 0
  store i8 65, ptr %8, align 1
  %9 = getelementptr inbounds i8, ptr %7, i64 1
  store i8 66, ptr %9, align 1
  %10 = getelementptr inbounds i8, ptr %7, i64 2
  store i8 67, ptr %10, align 1
  %11 = getelementptr inbounds i8, ptr %7, i64 3
  store i8 68, ptr %11, align 1
  %12 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %7, 0
  %13 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %12, i64 4, 1
  %14 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %13, i64 4, 2
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %14, ptr %6, align 8
  %15 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %16 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %17 = getelementptr inbounds { ptr }, ptr %16, i32 0, i32 0
  store ptr %6, ptr %17, align 8
  %18 = insertvalue { ptr, ptr } { ptr @"main.main$1", ptr undef }, ptr %16, 1
  %19 = extractvalue { ptr, ptr } %18, 1
  %20 = extractvalue { ptr, ptr } %18, 0
  %21 = call ptr %20(ptr %19)
  store ptr %21, ptr %15, align 8
  %22 = load ptr, ptr %2, align 8
  %23 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.GoString"(ptr %22)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 29 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %23)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %24 = load ptr, ptr %2, align 8
  %25 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.GoStringN"(ptr %24, i32 5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 23 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %25)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %26 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %27 = getelementptr inbounds { ptr }, ptr %26, i32 0, i32 0
  store ptr %15, ptr %27, align 8
  %28 = insertvalue { ptr, ptr } { ptr @"main.main$2", ptr undef }, ptr %26, 1
  %29 = extractvalue { ptr, ptr } %28, 1
  %30 = extractvalue { ptr, ptr } %28, 0
  %31 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %30(ptr %29)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 33 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %31)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %32 = call double @main._Cfunc_sqrt(double 2.000000e+00)
  %33 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 32)
  %34 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %33, i64 0
  %35 = load ptr, ptr @_llgo_float64, align 8
  %36 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %35, 0
  %37 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %36, ptr inttoptr (i64 4611686018427387904 to ptr), 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %37, ptr %34, align 8
  %38 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %33, i64 1
  %39 = load ptr, ptr @_llgo_float64, align 8
  %40 = bitcast double %32 to i64
  %41 = inttoptr i64 %40 to ptr
  %42 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %39, 0
  %43 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %42, ptr %41, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %43, ptr %38, align 8
  %44 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %33, 0
  %45 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %44, i64 2, 1
  %46 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %45, i64 2, 2
  %47 = call { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @fmt.Printf(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 14 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %46)
  %48 = call double @main._Cfunc_sin(double 2.000000e+00)
  %49 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 32)
  %50 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %49, i64 0
  %51 = load ptr, ptr @_llgo_float64, align 8
  %52 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %51, 0
  %53 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %52, ptr inttoptr (i64 4611686018427387904 to ptr), 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %53, ptr %50, align 8
  %54 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %49, i64 1
  %55 = load ptr, ptr @_llgo_float64, align 8
  %56 = bitcast double %48 to i64
  %57 = inttoptr i64 %56 to ptr
  %58 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %55, 0
  %59 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %58, ptr %57, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %59, ptr %54, align 8
  %60 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %49, 0
  %61 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %60, i64 2, 1
  %62 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %61, i64 2, 2
  %63 = call { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @fmt.Printf(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 13 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %62)
  %64 = call double @main._Cfunc_cos(double 2.000000e+00)
  %65 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 32)
  %66 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %65, i64 0
  %67 = load ptr, ptr @_llgo_float64, align 8
  %68 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %67, 0
  %69 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %68, ptr inttoptr (i64 4611686018427387904 to ptr), 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %69, ptr %66, align 8
  %70 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %65, i64 1
  %71 = load ptr, ptr @_llgo_float64, align 8
  %72 = bitcast double %64 to i64
  %73 = inttoptr i64 %72 to ptr
  %74 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %71, 0
  %75 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %74, ptr %73, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %75, ptr %70, align 8
  %76 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %65, 0
  %77 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %76, i64 2, 1
  %78 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %77, i64 2, 2
  %79 = call { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @fmt.Printf(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 13 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %78)
  %80 = call double @main._Cfunc_log(double 2.000000e+00)
  %81 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 32)
  %82 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %81, i64 0
  %83 = load ptr, ptr @_llgo_float64, align 8
  %84 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %83, 0
  %85 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %84, ptr inttoptr (i64 4611686018427387904 to ptr), 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %85, ptr %82, align 8
  %86 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %81, i64 1
  %87 = load ptr, ptr @_llgo_float64, align 8
  %88 = bitcast double %80 to i64
  %89 = inttoptr i64 %88 to ptr
  %90 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %87, 0
  %91 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %90, ptr %89, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %91, ptr %86, align 8
  %92 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %81, 0
  %93 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %92, i64 2, 1
  %94 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %93, i64 2, 2
  %95 = call { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @fmt.Printf(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 13 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %94)
  %96 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %97 = getelementptr inbounds { ptr }, ptr %96, i32 0, i32 0
  store ptr %2, ptr %97, align 8
  %98 = insertvalue { ptr, ptr } { ptr @"main.main$3", ptr undef }, ptr %96, 1
  %99 = extractvalue { ptr, ptr } %98, 1
  %100 = extractvalue { ptr, ptr } %98, 0
  call void %100(ptr %99)
  %101 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %102 = getelementptr inbounds { ptr }, ptr %101, i32 0, i32 0
  store ptr %15, ptr %102, align 8
  %103 = insertvalue { ptr, ptr } { ptr @"main.main$4", ptr undef }, ptr %101, 1
  %104 = extractvalue { ptr, ptr } %103, 1
  %105 = extractvalue { ptr, ptr } %103, 0
  call void %105(ptr %104)
  ret i32 0
}

define ptr @"main.main$1"(ptr %0) {
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

define %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"main.main$2"(ptr %0) {
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

define void @"main.main$3"(ptr %0) {
_llgo_0:
  %1 = load { ptr }, ptr %0, align 8
  %2 = extractvalue { ptr } %1, 0
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr @_llgo_Pointer, align 8
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %4, 0
  %6 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %5, ptr %3, 1
  %7 = call [0 x i8] @main._Cfunc_free(ptr %3)
  ret void
}

define void @"main.main$4"(ptr %0) {
_llgo_0:
  %1 = load { ptr }, ptr %0, align 8
  %2 = extractvalue { ptr } %1, 0
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr @_llgo_Pointer, align 8
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %4, 0
  %6 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %5, ptr %3, 1
  %7 = call [0 x i8] @main._Cfunc_free(ptr %3)
  ret void
}

declare void @runtime.throw(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare void @syscall.init()

declare void @fmt.init()

declare void @"github.com/goplus/llgo/runtime/internal/runtime.init"()

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.CString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.GoString"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.GoStringN"(ptr, i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice")

define void @"main.init$after"() {
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
