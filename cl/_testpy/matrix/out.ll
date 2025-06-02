; ModuleID = 'github.com/goplus/llgo/cl/_testpy/matrix'
source_filename = "github.com/goplus/llgo/cl/_testpy/matrix"

%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }

@"github.com/goplus/llgo/cl/_testpy/matrix.init$guard" = global i1 false, align 1
@__llgo_py.numpy.add = linkonce global ptr null, align 8
@0 = private unnamed_addr constant [8 x i8] c"a = %s\0A\00", align 1
@1 = private unnamed_addr constant [8 x i8] c"a = %s\0A\00", align 1
@2 = private unnamed_addr constant [10 x i8] c"a+b = %s\0A\00", align 1
@__llgo_py.numpy = external global ptr, align 8
@3 = private unnamed_addr constant [4 x i8] c"add\00", align 1

define void @"github.com/goplus/llgo/cl/_testpy/matrix.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testpy/matrix.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testpy/matrix.init$guard", align 1
  call void @"github.com/goplus/lib/py/numpy.init"()
  %1 = load ptr, ptr @__llgo_py.numpy, align 8
  %2 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store ptr @3, ptr %2, align 8
  call void @llgoLoadPyModSyms(ptr %1, ptr %2, ptr @__llgo_py.numpy.add, ptr null)
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testpy/matrix.main"() {
_llgo_0:
  %0 = call ptr @PyList_New(i64 3)
  %1 = call ptr @PyFloat_FromDouble(double 1.000000e+00)
  %2 = call i32 @PyList_SetItem(ptr %0, i64 0, ptr %1)
  %3 = call ptr @PyFloat_FromDouble(double 2.000000e+00)
  %4 = call i32 @PyList_SetItem(ptr %0, i64 1, ptr %3)
  %5 = call ptr @PyFloat_FromDouble(double 3.000000e+00)
  %6 = call i32 @PyList_SetItem(ptr %0, i64 2, ptr %5)
  %7 = call ptr @PyList_New(i64 3)
  %8 = call ptr @PyFloat_FromDouble(double 4.000000e+00)
  %9 = call i32 @PyList_SetItem(ptr %7, i64 0, ptr %8)
  %10 = call ptr @PyFloat_FromDouble(double 5.000000e+00)
  %11 = call i32 @PyList_SetItem(ptr %7, i64 1, ptr %10)
  %12 = call ptr @PyFloat_FromDouble(double 6.000000e+00)
  %13 = call i32 @PyList_SetItem(ptr %7, i64 2, ptr %12)
  %14 = call ptr @PyList_New(i64 3)
  %15 = call ptr @PyFloat_FromDouble(double 7.000000e+00)
  %16 = call i32 @PyList_SetItem(ptr %14, i64 0, ptr %15)
  %17 = call ptr @PyFloat_FromDouble(double 8.000000e+00)
  %18 = call i32 @PyList_SetItem(ptr %14, i64 1, ptr %17)
  %19 = call ptr @PyFloat_FromDouble(double 9.000000e+00)
  %20 = call i32 @PyList_SetItem(ptr %14, i64 2, ptr %19)
  %21 = call ptr @PyList_New(i64 3)
  %22 = call i32 @PyList_SetItem(ptr %21, i64 0, ptr %0)
  %23 = call i32 @PyList_SetItem(ptr %21, i64 1, ptr %7)
  %24 = call i32 @PyList_SetItem(ptr %21, i64 2, ptr %14)
  %25 = call ptr @PyList_New(i64 3)
  %26 = call ptr @PyFloat_FromDouble(double 9.000000e+00)
  %27 = call i32 @PyList_SetItem(ptr %25, i64 0, ptr %26)
  %28 = call ptr @PyFloat_FromDouble(double 8.000000e+00)
  %29 = call i32 @PyList_SetItem(ptr %25, i64 1, ptr %28)
  %30 = call ptr @PyFloat_FromDouble(double 7.000000e+00)
  %31 = call i32 @PyList_SetItem(ptr %25, i64 2, ptr %30)
  %32 = call ptr @PyList_New(i64 3)
  %33 = call ptr @PyFloat_FromDouble(double 6.000000e+00)
  %34 = call i32 @PyList_SetItem(ptr %32, i64 0, ptr %33)
  %35 = call ptr @PyFloat_FromDouble(double 5.000000e+00)
  %36 = call i32 @PyList_SetItem(ptr %32, i64 1, ptr %35)
  %37 = call ptr @PyFloat_FromDouble(double 4.000000e+00)
  %38 = call i32 @PyList_SetItem(ptr %32, i64 2, ptr %37)
  %39 = call ptr @PyList_New(i64 3)
  %40 = call ptr @PyFloat_FromDouble(double 3.000000e+00)
  %41 = call i32 @PyList_SetItem(ptr %39, i64 0, ptr %40)
  %42 = call ptr @PyFloat_FromDouble(double 2.000000e+00)
  %43 = call i32 @PyList_SetItem(ptr %39, i64 1, ptr %42)
  %44 = call ptr @PyFloat_FromDouble(double 1.000000e+00)
  %45 = call i32 @PyList_SetItem(ptr %39, i64 2, ptr %44)
  %46 = call ptr @PyList_New(i64 3)
  %47 = call i32 @PyList_SetItem(ptr %46, i64 0, ptr %25)
  %48 = call i32 @PyList_SetItem(ptr %46, i64 1, ptr %32)
  %49 = call i32 @PyList_SetItem(ptr %46, i64 2, ptr %39)
  %50 = load ptr, ptr @__llgo_py.numpy.add, align 8
  %51 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store ptr %21, ptr %51, align 8
  %52 = call ptr @PyObject_CallFunctionObjArgs(ptr %50, ptr %51, ptr %46, ptr null)
  %53 = call ptr @PyObject_Str(ptr %21)
  %54 = call ptr @PyUnicode_AsUTF8(ptr %53)
  %55 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store ptr %54, ptr %55, align 8
  %56 = call i32 @printf(ptr @0, ptr %55)
  %57 = call ptr @PyObject_Str(ptr %46)
  %58 = call ptr @PyUnicode_AsUTF8(ptr %57)
  %59 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store ptr %58, ptr %59, align 8
  %60 = call i32 @printf(ptr @1, ptr %59)
  %61 = call ptr @PyObject_Str(ptr %52)
  %62 = call ptr @PyUnicode_AsUTF8(ptr %61)
  %63 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store ptr %62, ptr %63, align 8
  %64 = call i32 @printf(ptr @2, ptr %63)
  ret void
}

declare void @"github.com/goplus/lib/py/numpy.init"()

declare ptr @PyList_New(i64)

declare ptr @PyFloat_FromDouble(double)

declare i32 @PyList_SetItem(ptr, i64, ptr)

declare ptr @PyObject_CallFunctionObjArgs(ptr, %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare ptr @PyObject_Str(ptr)

declare ptr @PyUnicode_AsUTF8(ptr)

declare i32 @printf(ptr, %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare void @llgoLoadPyModSyms(ptr, %"github.com/goplus/llgo/runtime/internal/runtime.Slice")
