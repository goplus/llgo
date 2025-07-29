; ModuleID = 'github.com/goplus/llgo/cl/_testpy/list'
source_filename = "github.com/goplus/llgo/cl/_testpy/list"

%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }

@"github.com/goplus/llgo/cl/_testpy/list.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [5 x i8] c"world", align 1
@1 = private unnamed_addr constant [5 x i8] c"hello", align 1
@__llgo_py.builtins.print = linkonce global ptr null, align 8
@__llgo_py.builtins = external global ptr, align 8
@2 = private unnamed_addr constant [6 x i8] c"print\00", align 1

define void @"github.com/goplus/llgo/cl/_testpy/list.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testpy/list.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testpy/list.init$guard", align 1
  call void @"github.com/goplus/lib/py/std.init"()
  %1 = load ptr, ptr @__llgo_py.builtins, align 8
  call void (ptr, ...) @llgoLoadPyModSyms(ptr %1, ptr @2, ptr @__llgo_py.builtins.print, ptr null)
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testpy/list.main"() {
_llgo_0:
  %0 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.StringToBytes"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 })
  %1 = call ptr @PyList_New(i64 10)
  %2 = call ptr @PyBool_FromLong(i32 -1)
  %3 = call i32 @PyList_SetItem(ptr %1, i64 0, ptr %2)
  %4 = call ptr @PyBool_FromLong(i32 0)
  %5 = call i32 @PyList_SetItem(ptr %1, i64 1, ptr %4)
  %6 = call ptr @PyLong_FromLongLong(i64 1)
  %7 = call i32 @PyList_SetItem(ptr %1, i64 2, ptr %6)
  %8 = call ptr @PyFloat_FromDouble(double 0x4000CCCCC0000000)
  %9 = call i32 @PyList_SetItem(ptr %1, i64 3, ptr %8)
  %10 = call ptr @PyFloat_FromDouble(double 3.100000e+00)
  %11 = call i32 @PyList_SetItem(ptr %1, i64 4, ptr %10)
  %12 = call ptr @PyLong_FromUnsignedLongLong(i64 4)
  %13 = call i32 @PyList_SetItem(ptr %1, i64 5, ptr %12)
  %14 = call ptr @PyComplex_FromDoubles(double 1.000000e+00, double 2.000000e+00)
  %15 = call i32 @PyList_SetItem(ptr %1, i64 6, ptr %14)
  %16 = call ptr @PyComplex_FromDoubles(double 3.000000e+00, double 4.000000e+00)
  %17 = call i32 @PyList_SetItem(ptr %1, i64 7, ptr %16)
  %18 = call ptr @PyUnicode_FromStringAndSize(ptr @1, i64 5)
  %19 = call i32 @PyList_SetItem(ptr %1, i64 8, ptr %18)
  %20 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %0, 0
  %21 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %0, 1
  %22 = call ptr @PyByteArray_FromStringAndSize(ptr %20, i64 %21)
  %23 = call i32 @PyList_SetItem(ptr %1, i64 9, ptr %22)
  %24 = load ptr, ptr @__llgo_py.builtins.print, align 8
  %25 = call ptr (ptr, ...) @PyObject_CallFunctionObjArgs(ptr %24, ptr %1, ptr null)
  ret void
}

declare void @"github.com/goplus/lib/py/std.init"()

declare %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.StringToBytes"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare ptr @PyList_New(i64)

declare ptr @PyBool_FromLong(i32)

declare i32 @PyList_SetItem(ptr, i64, ptr)

declare ptr @PyLong_FromLongLong(i64)

declare ptr @PyFloat_FromDouble(double)

declare ptr @PyLong_FromUnsignedLongLong(i64)

declare ptr @PyComplex_FromDoubles(double, double)

declare ptr @PyUnicode_FromStringAndSize(ptr, i64)

declare ptr @PyByteArray_FromStringAndSize(ptr, i64)

declare ptr @PyObject_CallFunctionObjArgs(ptr, ...)

declare void @llgoLoadPyModSyms(ptr, ...)
