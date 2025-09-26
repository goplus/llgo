; ModuleID = 'github.com/goplus/llgo/cl/_testpy/pow'
source_filename = "github.com/goplus/llgo/cl/_testpy/pow"

@"github.com/goplus/llgo/cl/_testpy/pow.init$guard" = global i1 false, align 1
@"__llgo_py.math$pow" = linkonce global ptr null, align 8
@0 = private unnamed_addr constant [16 x i8] c"pow(2, 3) = %f\0A\00", align 1
@__llgo_py.math = external global ptr, align 8
@1 = private unnamed_addr constant [4 x i8] c"pow\00", align 1

define void @"github.com/goplus/llgo/cl/_testpy/pow.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testpy/pow.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testpy/pow.init$guard", align 1
  call void @"github.com/goplus/lib/py/math.init"()
  %1 = load ptr, ptr @__llgo_py.math, align 8
  %2 = call ptr @PyObject_GetAttrString(ptr %1, ptr @1)
  store ptr %2, ptr @"__llgo_py.math$pow", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testpy/pow.main"() {
_llgo_0:
  %0 = call ptr @PyFloat_FromDouble(double 2.000000e+00)
  %1 = call ptr @PyFloat_FromDouble(double 3.000000e+00)
  %2 = load ptr, ptr @"__llgo_py.math$pow", align 8
  %3 = call ptr (ptr, ...) @PyObject_CallFunctionObjArgs(ptr %2, ptr %0, ptr %1, ptr null)
  %4 = call double @PyFloat_AsDouble(ptr %3)
  %5 = call i32 (ptr, ...) @printf(ptr @0, double %4)
  ret void
}

declare void @"github.com/goplus/lib/py/math.init"()

declare ptr @PyFloat_FromDouble(double)

declare ptr @PyObject_CallFunctionObjArgs(ptr, ...)

declare double @PyFloat_AsDouble(ptr)

declare i32 @printf(ptr, ...)

declare ptr @PyObject_GetAttrString(ptr, ptr)
