; ModuleID = 'main'
source_filename = "main"

@"main.init$guard" = global i1 false, align 1
@__llgo_argc = global i32 0, align 4
@__llgo_argv = global ptr null, align 8
@__llgo_py.math.sqrt = linkonce global ptr null, align 8
@__llgo_py.os.getcwd = linkonce global ptr null, align 8
@0 = private unnamed_addr constant [14 x i8] c"sqrt(2) = %f\0A\00", align 1
@1 = private unnamed_addr constant [6 x i8] c"cwd =\00", align 1
@__llgo_py.builtins.print = linkonce global ptr null, align 8
@__llgo_py.builtins = external global ptr, align 8
@2 = private unnamed_addr constant [6 x i8] c"print\00", align 1
@__llgo_py.math = external global ptr, align 8
@3 = private unnamed_addr constant [5 x i8] c"sqrt\00", align 1
@__llgo_py.os = external global ptr, align 8
@4 = private unnamed_addr constant [7 x i8] c"getcwd\00", align 1

define void @main.init() {
_llgo_0:
  %0 = load i1, ptr @"main.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"main.init$guard", align 1
  call void @"github.com/goplus/llgo/py/math.init"()
  call void @"github.com/goplus/llgo/py/os.init"()
  call void @"github.com/goplus/llgo/py/std.init"()
  %1 = load ptr, ptr @__llgo_py.builtins, align 8
  call void (ptr, ...) @llgoLoadPyModSyms(ptr %1, ptr @2, ptr @__llgo_py.builtins.print, ptr null)
  %2 = load ptr, ptr @__llgo_py.math, align 8
  call void (ptr, ...) @llgoLoadPyModSyms(ptr %2, ptr @3, ptr @__llgo_py.math.sqrt, ptr null)
  %3 = load ptr, ptr @__llgo_py.os, align 8
  call void (ptr, ...) @llgoLoadPyModSyms(ptr %3, ptr @4, ptr @__llgo_py.os.getcwd, ptr null)
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
  %2 = call ptr @PyFloat_FromDouble(double 2.000000e+00)
  %3 = load ptr, ptr @__llgo_py.math.sqrt, align 8
  %4 = call ptr @PyObject_CallOneArg(ptr %3, ptr %2)
  %5 = load ptr, ptr @__llgo_py.os.getcwd, align 8
  %6 = call ptr @PyObject_CallNoArgs(ptr %5)
  %7 = call double @PyFloat_AsDouble(ptr %4)
  %8 = call i32 (ptr, ...) @printf(ptr @0, double %7)
  %9 = call ptr @PyUnicode_FromString(ptr @1)
  %10 = load ptr, ptr @__llgo_py.builtins.print, align 8
  %11 = call ptr (ptr, ...) @PyObject_CallFunctionObjArgs(ptr %10, ptr %9, ptr %6, ptr null)
  ret i32 0
}

declare void @"github.com/goplus/llgo/py/math.init"()

declare void @"github.com/goplus/llgo/py/os.init"()

declare void @"github.com/goplus/llgo/py/std.init"()

declare void @"github.com/goplus/llgo/runtime/internal/runtime.init"()

declare ptr @PyFloat_FromDouble(double)

declare ptr @PyObject_CallOneArg(ptr, ptr)

declare ptr @PyObject_CallNoArgs(ptr)

declare double @PyFloat_AsDouble(ptr)

declare i32 @printf(ptr, ...)

declare ptr @PyUnicode_FromString(ptr)

declare ptr @PyObject_CallFunctionObjArgs(ptr, ...)

declare void @llgoLoadPyModSyms(ptr, ...)
