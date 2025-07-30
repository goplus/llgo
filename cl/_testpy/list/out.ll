; ModuleID = 'github.com/goplus/llgo/cl/_testpy/list'
source_filename = "github.com/goplus/llgo/cl/_testpy/list"

%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }

@"github.com/goplus/llgo/cl/_testpy/list.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [5 x i8] c"world", align 1
@1 = private unnamed_addr constant [5 x i8] c"hello", align 1
@__llgo_py.math = external global ptr, align 8
@2 = private unnamed_addr constant [3 x i8] c"pi\00", align 1
@__llgo_py.builtins.abs = linkonce global ptr null, align 8
@__llgo_py.builtins.print = linkonce global ptr null, align 8
@__llgo_py.builtins = external global ptr, align 8
@3 = private unnamed_addr constant [4 x i8] c"abs\00", align 1
@4 = private unnamed_addr constant [6 x i8] c"print\00", align 1

define void @"github.com/goplus/llgo/cl/_testpy/list.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testpy/list.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testpy/list.init$guard", align 1
  call void @"github.com/goplus/lib/py/math.init"()
  call void @"github.com/goplus/lib/py/std.init"()
  %1 = load ptr, ptr @__llgo_py.builtins, align 8
  call void (ptr, ...) @llgoLoadPyModSyms(ptr %1, ptr @3, ptr @__llgo_py.builtins.abs, ptr @4, ptr @__llgo_py.builtins.print, ptr null)
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testpy/list.main"() {
_llgo_0:
  %0 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.StringToBytes"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 })
  %1 = alloca [3 x i8], align 1
  call void @llvm.memset(ptr %1, i8 0, i64 3, i1 false)
  %2 = getelementptr inbounds i8, ptr %1, i64 0
  %3 = getelementptr inbounds i8, ptr %1, i64 1
  %4 = getelementptr inbounds i8, ptr %1, i64 2
  store i8 1, ptr %2, align 1
  store i8 2, ptr %3, align 1
  store i8 3, ptr %4, align 1
  %5 = load [3 x i8], ptr %1, align 1
  %6 = call ptr @PyList_New(i64 12)
  %7 = call ptr @PyBool_FromLong(i32 -1)
  %8 = call i32 @PyList_SetItem(ptr %6, i64 0, ptr %7)
  %9 = call ptr @PyBool_FromLong(i32 0)
  %10 = call i32 @PyList_SetItem(ptr %6, i64 1, ptr %9)
  %11 = call ptr @PyLong_FromLongLong(i64 1)
  %12 = call i32 @PyList_SetItem(ptr %6, i64 2, ptr %11)
  %13 = call ptr @PyFloat_FromDouble(double 0x4000CCCCC0000000)
  %14 = call i32 @PyList_SetItem(ptr %6, i64 3, ptr %13)
  %15 = call ptr @PyFloat_FromDouble(double 3.100000e+00)
  %16 = call i32 @PyList_SetItem(ptr %6, i64 4, ptr %15)
  %17 = call ptr @PyLong_FromUnsignedLongLong(i64 4)
  %18 = call i32 @PyList_SetItem(ptr %6, i64 5, ptr %17)
  %19 = call ptr @PyComplex_FromDoubles(double 1.000000e+00, double 2.000000e+00)
  %20 = call i32 @PyList_SetItem(ptr %6, i64 6, ptr %19)
  %21 = call ptr @PyComplex_FromDoubles(double 3.000000e+00, double 4.000000e+00)
  %22 = call i32 @PyList_SetItem(ptr %6, i64 7, ptr %21)
  %23 = call ptr @PyUnicode_FromStringAndSize(ptr @1, i64 5)
  %24 = call i32 @PyList_SetItem(ptr %6, i64 8, ptr %23)
  %25 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %0, 0
  %26 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %0, 1
  %27 = call ptr @PyByteArray_FromStringAndSize(ptr %25, i64 %26)
  %28 = call i32 @PyList_SetItem(ptr %6, i64 9, ptr %27)
  %29 = alloca [3 x i8], align 1
  call void @llvm.memset(ptr %29, i8 0, i64 3, i1 false)
  store [3 x i8] %5, ptr %29, align 1
  %30 = getelementptr inbounds ptr, ptr %29, i64 0
  %31 = call ptr @PyBytes_FromStringAndSize(ptr %30, i64 3)
  %32 = call i32 @PyList_SetItem(ptr %6, i64 10, ptr %31)
  %33 = call ptr @PyBytes_FromStringAndSize(ptr null, i64 0)
  %34 = call i32 @PyList_SetItem(ptr %6, i64 11, ptr %33)
  %35 = load ptr, ptr @__llgo_py.math, align 8
  %36 = call ptr @PyObject_GetAttrString(ptr %35, ptr @2)
  %37 = call ptr @PyList_New(i64 3)
  %38 = load ptr, ptr @__llgo_py.builtins.abs, align 8
  %39 = call i32 @PyList_SetItem(ptr %37, i64 0, ptr %38)
  %40 = load ptr, ptr @__llgo_py.builtins.print, align 8
  %41 = call i32 @PyList_SetItem(ptr %37, i64 1, ptr %40)
  %42 = call i32 @PyList_SetItem(ptr %37, i64 2, ptr %36)
  %43 = load ptr, ptr @__llgo_py.builtins.print, align 8
  %44 = call ptr (ptr, ...) @PyObject_CallFunctionObjArgs(ptr %43, ptr %6, ptr %37, ptr null)
  ret void
}

declare void @"github.com/goplus/lib/py/math.init"()

declare void @"github.com/goplus/lib/py/std.init"()

declare %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.StringToBytes"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

declare ptr @PyList_New(i64)

declare ptr @PyBool_FromLong(i32)

declare i32 @PyList_SetItem(ptr, i64, ptr)

declare ptr @PyLong_FromLongLong(i64)

declare ptr @PyFloat_FromDouble(double)

declare ptr @PyLong_FromUnsignedLongLong(i64)

declare ptr @PyComplex_FromDoubles(double, double)

declare ptr @PyUnicode_FromStringAndSize(ptr, i64)

declare ptr @PyByteArray_FromStringAndSize(ptr, i64)

declare ptr @PyBytes_FromStringAndSize(ptr, i64)

declare ptr @PyObject_GetAttrString(ptr, ptr)

declare ptr @PyObject_CallFunctionObjArgs(ptr, ...)

declare void @llgoLoadPyModSyms(ptr, ...)

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
