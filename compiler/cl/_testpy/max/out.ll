; ModuleID = 'main'
source_filename = "main"

@"main.init$guard" = global i1 false, align 1
@__llgo_argc = global i32 0, align 4
@__llgo_argv = global ptr null, align 8
@__llgo_py.builtins.max = linkonce global ptr null, align 8
@__llgo_py.builtins.print = linkonce global ptr null, align 8
@__llgo_py.builtins.iter = linkonce global ptr null, align 8
@__llgo_py.builtins = external global ptr, align 8
@0 = private unnamed_addr constant [5 x i8] c"iter\00", align 1
@1 = private unnamed_addr constant [4 x i8] c"max\00", align 1
@2 = private unnamed_addr constant [6 x i8] c"print\00", align 1

define void @main.init() {
_llgo_0:
  %0 = load i1, ptr @"main.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"main.init$guard", align 1
  call void @"github.com/goplus/llgo/py/std.init"()
  %1 = load ptr, ptr @__llgo_py.builtins, align 8
  call void (ptr, ...) @llgoLoadPyModSyms(ptr %1, ptr @0, ptr @__llgo_py.builtins.iter, ptr @1, ptr @__llgo_py.builtins.max, ptr @2, ptr @__llgo_py.builtins.print, ptr null)
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
  %2 = call ptr @PyFloat_FromDouble(double 3.000000e+00)
  %3 = call ptr @PyFloat_FromDouble(double 9.000000e+00)
  %4 = call ptr @PyFloat_FromDouble(double 2.300000e+01)
  %5 = call ptr @PyFloat_FromDouble(double 1.000000e+02)
  %6 = load ptr, ptr @__llgo_py.builtins.max, align 8
  %7 = call ptr (ptr, ...) @PyObject_CallFunctionObjArgs(ptr %6, ptr %2, ptr %3, ptr %4, ptr %5, ptr null)
  %8 = load ptr, ptr @__llgo_py.builtins.print, align 8
  %9 = call ptr (ptr, ...) @PyObject_CallFunctionObjArgs(ptr %8, ptr %7, ptr null)
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
  %22 = call ptr (ptr, ...) @PyObject_CallFunctionObjArgs(ptr %21, ptr %20, ptr null)
  %23 = load ptr, ptr @__llgo_py.builtins.print, align 8
  %24 = call ptr (ptr, ...) @PyObject_CallFunctionObjArgs(ptr %23, ptr %22, ptr null)
  %25 = call ptr @PyTuple_New(i64 3)
  %26 = call ptr @PyFloat_FromDouble(double 1.000000e+00)
  %27 = call i32 @PyTuple_SetItem(ptr %25, i64 0, ptr %26)
  %28 = call ptr @PyFloat_FromDouble(double 2.000000e+00)
  %29 = call i32 @PyTuple_SetItem(ptr %25, i64 1, ptr %28)
  %30 = call ptr @PyFloat_FromDouble(double 3.000000e+00)
  %31 = call i32 @PyTuple_SetItem(ptr %25, i64 2, ptr %30)
  %32 = load ptr, ptr @__llgo_py.builtins.iter, align 8
  %33 = call ptr @PyObject_CallOneArg(ptr %32, ptr %25)
  %34 = load ptr, ptr @__llgo_py.builtins.max, align 8
  %35 = call ptr (ptr, ...) @PyObject_CallFunctionObjArgs(ptr %34, ptr %33, ptr null)
  %36 = load ptr, ptr @__llgo_py.builtins.print, align 8
  %37 = call ptr (ptr, ...) @PyObject_CallFunctionObjArgs(ptr %36, ptr %35, ptr null)
  ret i32 0
}

declare void @"github.com/goplus/llgo/py/std.init"()

declare void @"github.com/goplus/llgo/runtime/internal/runtime.init"()

declare ptr @PyFloat_FromDouble(double)

declare ptr @PyObject_CallFunctionObjArgs(ptr, ...)

declare ptr @PyList_New(i64)

declare i32 @PyList_SetItem(ptr, i64, ptr)

declare ptr @PyObject_CallOneArg(ptr, ptr)

declare ptr @PyTuple_New(i64)

declare i32 @PyTuple_SetItem(ptr, i64, ptr)

declare void @llgoLoadPyModSyms(ptr, ...)
