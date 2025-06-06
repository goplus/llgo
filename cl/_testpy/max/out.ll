; ModuleID = 'github.com/goplus/llgo/cl/_testpy/max'
source_filename = "github.com/goplus/llgo/cl/_testpy/max"

%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }

@"github.com/goplus/llgo/cl/_testpy/max.init$guard" = global i1 false, align 1
@__llgo_py.builtins.max = linkonce global ptr null, align 8
@__llgo_py.builtins.print = linkonce global ptr null, align 8
@__llgo_py.builtins.iter = linkonce global ptr null, align 8
@__llgo_py.builtins = external global ptr, align 8
@0 = private unnamed_addr constant [5 x i8] c"iter\00", align 1
@1 = private unnamed_addr constant [4 x i8] c"max\00", align 1
@2 = private unnamed_addr constant [6 x i8] c"print\00", align 1

define void @"github.com/goplus/llgo/cl/_testpy/max.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testpy/max.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testpy/max.init$guard", align 1
  call void @"github.com/goplus/lib/py/std.init"()
  %1 = load ptr, ptr @__llgo_py.builtins, align 8
  %2 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store ptr @0, ptr %2, align 8
  call void @llgoLoadPyModSyms(ptr %1, ptr %2, ptr @__llgo_py.builtins.iter, ptr @1, ptr @__llgo_py.builtins.max, ptr @2, ptr @__llgo_py.builtins.print, ptr null)
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testpy/max.main"() {
_llgo_0:
  %0 = call ptr @PyFloat_FromDouble(double 3.000000e+00)
  %1 = call ptr @PyFloat_FromDouble(double 9.000000e+00)
  %2 = call ptr @PyFloat_FromDouble(double 2.300000e+01)
  %3 = call ptr @PyFloat_FromDouble(double 1.000000e+02)
  %4 = load ptr, ptr @__llgo_py.builtins.max, align 8
  %5 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store ptr %0, ptr %5, align 8
  %6 = call ptr @PyObject_CallFunctionObjArgs(ptr %4, ptr %5, ptr %1, ptr %2, ptr %3, ptr null)
  %7 = load ptr, ptr @__llgo_py.builtins.print, align 8
  %8 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store ptr %6, ptr %8, align 8
  %9 = call ptr @PyObject_CallFunctionObjArgs(ptr %7, ptr %8, ptr null)
  %10 = call ptr @PyList_New(i64 4)
  %11 = call ptr @PyFloat_FromDouble(double 3.000000e+00)
  %12 = call i32 @PyList_SetItem(ptr %10, i64 0, ptr %11)
  %13 = call ptr @PyFloat_FromDouble(double 9.000000e+00)
  %14 = call i32 @PyList_SetItem(ptr %10, i64 1, ptr %13)
  %15 = call ptr @PyFloat_FromDouble(double 2.300000e+01)
  %16 = call i32 @PyList_SetItem(ptr %10, i64 2, ptr %15)
  %17 = call ptr @PyFloat_FromDouble(double 1.000000e+02)
  %18 = call i32 @PyList_SetItem(ptr %10, i64 3, ptr %17)
  %19 = load ptr, ptr @__llgo_py.builtins.iter, align 8
  %20 = call ptr @PyObject_CallOneArg(ptr %19, ptr %10)
  %21 = load ptr, ptr @__llgo_py.builtins.max, align 8
  %22 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store ptr %20, ptr %22, align 8
  %23 = call ptr @PyObject_CallFunctionObjArgs(ptr %21, ptr %22, ptr null)
  %24 = load ptr, ptr @__llgo_py.builtins.print, align 8
  %25 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store ptr %23, ptr %25, align 8
  %26 = call ptr @PyObject_CallFunctionObjArgs(ptr %24, ptr %25, ptr null)
  %27 = call ptr @PyTuple_New(i64 3)
  %28 = call ptr @PyFloat_FromDouble(double 1.000000e+00)
  %29 = call i32 @PyTuple_SetItem(ptr %27, i64 0, ptr %28)
  %30 = call ptr @PyFloat_FromDouble(double 2.000000e+00)
  %31 = call i32 @PyTuple_SetItem(ptr %27, i64 1, ptr %30)
  %32 = call ptr @PyFloat_FromDouble(double 3.000000e+00)
  %33 = call i32 @PyTuple_SetItem(ptr %27, i64 2, ptr %32)
  %34 = load ptr, ptr @__llgo_py.builtins.iter, align 8
  %35 = call ptr @PyObject_CallOneArg(ptr %34, ptr %27)
  %36 = load ptr, ptr @__llgo_py.builtins.max, align 8
  %37 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store ptr %35, ptr %37, align 8
  %38 = call ptr @PyObject_CallFunctionObjArgs(ptr %36, ptr %37, ptr null)
  %39 = load ptr, ptr @__llgo_py.builtins.print, align 8
  %40 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store ptr %38, ptr %40, align 8
  %41 = call ptr @PyObject_CallFunctionObjArgs(ptr %39, ptr %40, ptr null)
  ret void
}

declare void @"github.com/goplus/lib/py/std.init"()

declare ptr @PyFloat_FromDouble(double)

declare ptr @PyObject_CallFunctionObjArgs(ptr, %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare ptr @PyList_New(i64)

declare i32 @PyList_SetItem(ptr, i64, ptr)

declare ptr @PyObject_CallOneArg(ptr, ptr)

declare ptr @PyTuple_New(i64)

declare i32 @PyTuple_SetItem(ptr, i64, ptr)

declare void @llgoLoadPyModSyms(ptr, %"github.com/goplus/llgo/runtime/internal/runtime.Slice")
