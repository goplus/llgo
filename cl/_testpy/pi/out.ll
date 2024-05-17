; ModuleID = 'main'
source_filename = "main"

@"main.init$guard" = global ptr null
@__llgo_argc = global ptr null
@__llgo_argv = global ptr null
@0 = private unnamed_addr constant [9 x i8] c"pi = %f\0A\00", align 1
@__llgo_py.math = external global ptr
@1 = private unnamed_addr constant [3 x i8] c"pi\00", align 1

define void @main.init() {
_llgo_0:
  %0 = load i1, ptr @"main.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"main.init$guard", align 1
  call void @"github.com/goplus/llgo/py/math.init"()
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define i32 @main(i32 %0, ptr %1) {
_llgo_0:
  call void @Py_Initialize()
  store i32 %0, ptr @__llgo_argc, align 4
  store ptr %1, ptr @__llgo_argv, align 8
  call void @"github.com/goplus/llgo/internal/runtime.init"()
  call void @main.init()
  %2 = load ptr, ptr @__llgo_py.math, align 8
  %3 = call ptr @PyObject_GetAttrString(ptr %2, ptr @1)
  %4 = call double @PyFloat_AsDouble(ptr %3)
  %5 = call i32 (ptr, ...) @printf(ptr @0, double %4)
  ret i32 0
}

declare void @"github.com/goplus/llgo/py/math.init"()

declare void @"github.com/goplus/llgo/internal/runtime.init"()

declare ptr @PyObject_GetAttrString(ptr, ptr)

declare double @PyFloat_AsDouble(ptr)

declare i32 @printf(ptr, ...)

declare void @Py_Initialize()
