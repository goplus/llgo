; ModuleID = 'github.com/goplus/llgo/cl/_testpy/callpy'
source_filename = "github.com/goplus/llgo/cl/_testpy/callpy"

@"github.com/goplus/llgo/cl/_testpy/callpy.init$guard" = global i1 false, align 1
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

define void @"github.com/goplus/llgo/cl/_testpy/callpy.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testpy/callpy.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testpy/callpy.init$guard", align 1
  call void @"github.com/goplus/lib/py.init"()
  call void @"github.com/goplus/lib/py/math.init"()
  call void @"github.com/goplus/lib/py/os.init"()
  call void @"github.com/goplus/lib/py/std.init"()
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

define void @"github.com/goplus/llgo/cl/_testpy/callpy.main"() {
_llgo_0:
  %0 = call ptr @PyFloat_FromDouble(double 2.000000e+00)
  %1 = load ptr, ptr @__llgo_py.math.sqrt, align 8
  %2 = call ptr @PyObject_CallOneArg(ptr %1, ptr %0)
  %3 = load ptr, ptr @__llgo_py.os.getcwd, align 8
  %4 = call ptr @PyObject_CallNoArgs(ptr %3)
  %5 = call double @PyFloat_AsDouble(ptr %2)
  %6 = call i32 (ptr, ...) @printf(ptr @0, double %5)
  %7 = call ptr @PyUnicode_FromString(ptr @1)
  %8 = load ptr, ptr @__llgo_py.builtins.print, align 8
  %9 = call ptr (ptr, ...) @PyObject_CallFunctionObjArgs(ptr %8, ptr %7, ptr %4, ptr null)
  ret void
}

declare void @"github.com/goplus/lib/py.init"()

declare void @"github.com/goplus/lib/py/math.init"()

declare void @"github.com/goplus/lib/py/os.init"()

declare void @"github.com/goplus/lib/py/std.init"()

declare ptr @PyFloat_FromDouble(double)

declare ptr @PyObject_CallOneArg(ptr, ptr)

declare ptr @PyObject_CallNoArgs(ptr)

declare double @PyFloat_AsDouble(ptr)

declare i32 @printf(ptr, ...)

declare ptr @PyUnicode_FromString(ptr)

declare ptr @PyObject_CallFunctionObjArgs(ptr, ...)

declare void @llgoLoadPyModSyms(ptr, ...)
