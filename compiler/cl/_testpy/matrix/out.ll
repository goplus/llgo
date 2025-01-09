; ModuleID = 'main'
source_filename = "main"

@"main.init$guard" = global i1 false, align 1
@__llgo_argc = global i32 0, align 4
@__llgo_argv = global ptr null, align 8
@__llgo_py.numpy.add = linkonce global ptr null, align 8
@0 = private unnamed_addr constant [8 x i8] c"a = %s\0A\00", align 1
@1 = private unnamed_addr constant [8 x i8] c"a = %s\0A\00", align 1
@2 = private unnamed_addr constant [10 x i8] c"a+b = %s\0A\00", align 1
@__llgo_py.numpy = external global ptr, align 8
@3 = private unnamed_addr constant [4 x i8] c"add\00", align 1

define void @main.init() {
_llgo_0:
  %0 = load i1, ptr @"main.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"main.init$guard", align 1
  call void @"github.com/goplus/llgo/py/numpy.init"()
  %1 = load ptr, ptr @__llgo_py.numpy, align 8
  call void (ptr, ...) @llgoLoadPyModSyms(ptr %1, ptr @3, ptr @__llgo_py.numpy.add, ptr null)
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
  %2 = call ptr @PyList_New(i64 3)
  %3 = call ptr @PyFloat_FromDouble(double 1.000000e+00)
  %4 = call i32 @PyList_SetItem(ptr %2, i64 0, ptr %3)
  %5 = call ptr @PyFloat_FromDouble(double 2.000000e+00)
  %6 = call i32 @PyList_SetItem(ptr %2, i64 1, ptr %5)
  %7 = call ptr @PyFloat_FromDouble(double 3.000000e+00)
  %8 = call i32 @PyList_SetItem(ptr %2, i64 2, ptr %7)
  %9 = call ptr @PyList_New(i64 3)
  %10 = call ptr @PyFloat_FromDouble(double 4.000000e+00)
  %11 = call i32 @PyList_SetItem(ptr %9, i64 0, ptr %10)
  %12 = call ptr @PyFloat_FromDouble(double 5.000000e+00)
  %13 = call i32 @PyList_SetItem(ptr %9, i64 1, ptr %12)
  %14 = call ptr @PyFloat_FromDouble(double 6.000000e+00)
  %15 = call i32 @PyList_SetItem(ptr %9, i64 2, ptr %14)
  %16 = call ptr @PyList_New(i64 3)
  %17 = call ptr @PyFloat_FromDouble(double 7.000000e+00)
  %18 = call i32 @PyList_SetItem(ptr %16, i64 0, ptr %17)
  %19 = call ptr @PyFloat_FromDouble(double 8.000000e+00)
  %20 = call i32 @PyList_SetItem(ptr %16, i64 1, ptr %19)
  %21 = call ptr @PyFloat_FromDouble(double 9.000000e+00)
  %22 = call i32 @PyList_SetItem(ptr %16, i64 2, ptr %21)
  %23 = call ptr @PyList_New(i64 3)
  %24 = call i32 @PyList_SetItem(ptr %23, i64 0, ptr %2)
  %25 = call i32 @PyList_SetItem(ptr %23, i64 1, ptr %9)
  %26 = call i32 @PyList_SetItem(ptr %23, i64 2, ptr %16)
  %27 = call ptr @PyList_New(i64 3)
  %28 = call ptr @PyFloat_FromDouble(double 9.000000e+00)
  %29 = call i32 @PyList_SetItem(ptr %27, i64 0, ptr %28)
  %30 = call ptr @PyFloat_FromDouble(double 8.000000e+00)
  %31 = call i32 @PyList_SetItem(ptr %27, i64 1, ptr %30)
  %32 = call ptr @PyFloat_FromDouble(double 7.000000e+00)
  %33 = call i32 @PyList_SetItem(ptr %27, i64 2, ptr %32)
  %34 = call ptr @PyList_New(i64 3)
  %35 = call ptr @PyFloat_FromDouble(double 6.000000e+00)
  %36 = call i32 @PyList_SetItem(ptr %34, i64 0, ptr %35)
  %37 = call ptr @PyFloat_FromDouble(double 5.000000e+00)
  %38 = call i32 @PyList_SetItem(ptr %34, i64 1, ptr %37)
  %39 = call ptr @PyFloat_FromDouble(double 4.000000e+00)
  %40 = call i32 @PyList_SetItem(ptr %34, i64 2, ptr %39)
  %41 = call ptr @PyList_New(i64 3)
  %42 = call ptr @PyFloat_FromDouble(double 3.000000e+00)
  %43 = call i32 @PyList_SetItem(ptr %41, i64 0, ptr %42)
  %44 = call ptr @PyFloat_FromDouble(double 2.000000e+00)
  %45 = call i32 @PyList_SetItem(ptr %41, i64 1, ptr %44)
  %46 = call ptr @PyFloat_FromDouble(double 1.000000e+00)
  %47 = call i32 @PyList_SetItem(ptr %41, i64 2, ptr %46)
  %48 = call ptr @PyList_New(i64 3)
  %49 = call i32 @PyList_SetItem(ptr %48, i64 0, ptr %27)
  %50 = call i32 @PyList_SetItem(ptr %48, i64 1, ptr %34)
  %51 = call i32 @PyList_SetItem(ptr %48, i64 2, ptr %41)
  %52 = load ptr, ptr @__llgo_py.numpy.add, align 8
  %53 = call ptr (ptr, ...) @PyObject_CallFunctionObjArgs(ptr %52, ptr %23, ptr %48, ptr null)
  %54 = call ptr @PyObject_Str(ptr %23)
  %55 = call ptr @PyUnicode_AsUTF8(ptr %54)
  %56 = call i32 (ptr, ...) @printf(ptr @0, ptr %55)
  %57 = call ptr @PyObject_Str(ptr %48)
  %58 = call ptr @PyUnicode_AsUTF8(ptr %57)
  %59 = call i32 (ptr, ...) @printf(ptr @1, ptr %58)
  %60 = call ptr @PyObject_Str(ptr %53)
  %61 = call ptr @PyUnicode_AsUTF8(ptr %60)
  %62 = call i32 (ptr, ...) @printf(ptr @2, ptr %61)
  ret i32 0
}

declare void @"github.com/goplus/llgo/py/numpy.init"()

declare void @"github.com/goplus/llgo/runtime/internal/runtime.init"()

declare ptr @PyList_New(i64)

declare ptr @PyFloat_FromDouble(double)

declare i32 @PyList_SetItem(ptr, i64, ptr)

declare ptr @PyObject_CallFunctionObjArgs(ptr, ...)

declare ptr @PyObject_Str(ptr)

declare ptr @PyUnicode_AsUTF8(ptr)

declare i32 @printf(ptr, ...)

declare void @llgoLoadPyModSyms(ptr, ...)
