; ModuleID = 'main'
source_filename = "main"

@"main.init$guard" = global i1 false, align 1
@__llgo_argc = global i32 0, align 4
@__llgo_argv = global ptr null, align 8
@__llgo_py.math.gcd = linkonce global ptr null, align 8
@0 = private unnamed_addr constant [22 x i8] c"gcd(60, 20, 25) = %d\0A\00", align 1
@__llgo_py.math = external global ptr, align 8
@1 = private unnamed_addr constant [4 x i8] c"gcd\00", align 1

define void @main.init() {
_llgo_0:
  %0 = load i1, ptr @"main.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"main.init$guard", align 1
  call void @"github.com/goplus/llgo/py/math.init"()
  %1 = load ptr, ptr @__llgo_py.math, align 8
  call void (ptr, ...) @llgoLoadPyModSyms(ptr %1, ptr @1, ptr @__llgo_py.math.gcd, ptr null)
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
  %2 = call ptr @PyLong_FromLong(i64 60)
  %3 = call ptr @PyLong_FromLong(i64 20)
  %4 = call ptr @PyLong_FromLong(i64 25)
  %5 = load ptr, ptr @__llgo_py.math.gcd, align 8
  %6 = call ptr (ptr, ...) @PyObject_CallFunctionObjArgs(ptr %5, ptr %2, ptr %3, ptr %4, ptr null)
  %7 = call i64 @PyLong_AsLong(ptr %6)
  %8 = call i32 (ptr, ...) @printf(ptr @0, i64 %7)
  ret i32 0
}

declare void @"github.com/goplus/llgo/py/math.init"()

declare void @"github.com/goplus/llgo/runtime/internal/runtime.init"()

declare ptr @PyLong_FromLong(i64)

declare ptr @PyObject_CallFunctionObjArgs(ptr, ...)

declare i64 @PyLong_AsLong(ptr)

declare i32 @printf(ptr, ...)

declare void @llgoLoadPyModSyms(ptr, ...)
