; ModuleID = 'main'
source_filename = "main"

@"main.init$guard" = global i1 false, align 1
@__llgo_argc = global i32 0, align 4
@__llgo_argv = global ptr null, align 8
@__llgo_py.math.pow = linkonce global ptr null, align 8
@0 = private unnamed_addr constant [16 x i8] c"pow(2, 3) = %f\0A\00", align 1
@__llgo_py.math = external global ptr, align 8
@1 = private unnamed_addr constant [4 x i8] c"pow\00", align 1

define void @main.init() {
_llgo_0:
  %0 = load i1, ptr @"main.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"main.init$guard", align 1
  call void @"github.com/goplus/llgo/py/math.init"()
  %1 = load ptr, ptr @__llgo_py.math, align 8
  call void (ptr, ...) @llgoLoadPyModSyms(ptr %1, ptr @1, ptr @__llgo_py.math.pow, ptr null)
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
  %3 = call ptr @PyFloat_FromDouble(double 3.000000e+00)
  %4 = load ptr, ptr @__llgo_py.math.pow, align 8
  %5 = call ptr (ptr, ...) @PyObject_CallFunctionObjArgs(ptr %4, ptr %2, ptr %3, ptr null)
  %6 = call double @PyFloat_AsDouble(ptr %5)
  %7 = call i32 (ptr, ...) @printf(ptr @0, double %6)
  ret i32 0
}

declare void @"github.com/goplus/llgo/py/math.init"()

declare void @"github.com/goplus/llgo/runtime/internal/runtime.init"()

declare ptr @PyFloat_FromDouble(double)

declare ptr @PyObject_CallFunctionObjArgs(ptr, ...)

declare double @PyFloat_AsDouble(ptr)

declare i32 @printf(ptr, ...)

declare void @llgoLoadPyModSyms(ptr, ...)
