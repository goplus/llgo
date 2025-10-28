; ModuleID = 'main'
source_filename = "main"

@"main.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [9 x i8] c"pi = %f\0A\00", align 1
@__llgo_py.math = external global ptr, align 8
@1 = private unnamed_addr constant [3 x i8] c"pi\00", align 1

define void @main.init() {
_llgo_0:
  %0 = load i1, ptr @"main.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"main.init$guard", align 1
  call void @"github.com/goplus/lib/py/math.init"()
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @main.main() {
_llgo_0:
  %0 = load ptr, ptr @__llgo_py.math, align 8
  %1 = call ptr @PyObject_GetAttrString(ptr %0, ptr @1)
  %2 = call double @PyFloat_AsDouble(ptr %1)
  %3 = call i32 (ptr, ...) @printf(ptr @0, double %2)
  ret void
}

declare void @"github.com/goplus/lib/py/math.init"()

declare ptr @PyObject_GetAttrString(ptr, ptr)

declare double @PyFloat_AsDouble(ptr)

declare i32 @printf(ptr, ...)
