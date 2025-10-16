; ModuleID = 'github.com/goplus/llgo/cl/_testpy/list'
source_filename = "github.com/goplus/llgo/cl/_testpy/list"

%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }

@"github.com/goplus/llgo/cl/_testpy/list.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [5 x i8] c"world", align 1
@1 = private unnamed_addr constant [5 x i8] c"hello", align 1
@__llgo_py.math = external global ptr, align 8
@2 = private unnamed_addr constant [3 x i8] c"pi\00", align 1
@"__llgo_py.builtins$abs" = linkonce global ptr null, align 8
@"__llgo_py.builtins$print" = linkonce global ptr null, align 8
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
  call void @"github.com/goplus/llgo/cl/_testpy/list.init$python"()
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testpy/list.main"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  store i64 100, ptr %0, align 4
  %1 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.StringToBytes"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 })
  %2 = alloca [3 x i8], align 1
  call void @llvm.memset(ptr %2, i8 0, i64 3, i1 false)
  %3 = getelementptr inbounds i8, ptr %2, i64 0
  %4 = getelementptr inbounds i8, ptr %2, i64 1
  %5 = getelementptr inbounds i8, ptr %2, i64 2
  store i8 1, ptr %3, align 1
  store i8 2, ptr %4, align 1
  store i8 3, ptr %5, align 1
  %6 = load [3 x i8], ptr %2, align 1
  %7 = call ptr @PyList_New(i64 14)
  %8 = call ptr @PyBool_FromLong(i32 -1)
  %9 = call i32 @PyList_SetItem(ptr %7, i64 0, ptr %8)
  %10 = call ptr @PyBool_FromLong(i32 0)
  %11 = call i32 @PyList_SetItem(ptr %7, i64 1, ptr %10)
  %12 = call ptr @PyLong_FromLongLong(i64 1)
  %13 = call i32 @PyList_SetItem(ptr %7, i64 2, ptr %12)
  %14 = call ptr @PyFloat_FromDouble(double 0x4000CCCCC0000000)
  %15 = call i32 @PyList_SetItem(ptr %7, i64 3, ptr %14)
  %16 = call ptr @PyFloat_FromDouble(double 3.100000e+00)
  %17 = call i32 @PyList_SetItem(ptr %7, i64 4, ptr %16)
  %18 = call ptr @PyLong_FromUnsignedLongLong(i64 4)
  %19 = call i32 @PyList_SetItem(ptr %7, i64 5, ptr %18)
  %20 = call ptr @PyComplex_FromDoubles(double 1.000000e+00, double 2.000000e+00)
  %21 = call i32 @PyList_SetItem(ptr %7, i64 6, ptr %20)
  %22 = call ptr @PyComplex_FromDoubles(double 3.000000e+00, double 4.000000e+00)
  %23 = call i32 @PyList_SetItem(ptr %7, i64 7, ptr %22)
  %24 = call ptr @PyUnicode_FromStringAndSize(ptr @1, i64 5)
  %25 = call i32 @PyList_SetItem(ptr %7, i64 8, ptr %24)
  %26 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1, 0
  %27 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1, 1
  %28 = call ptr @PyByteArray_FromStringAndSize(ptr %26, i64 %27)
  %29 = call i32 @PyList_SetItem(ptr %7, i64 9, ptr %28)
  %30 = alloca [3 x i8], align 1
  call void @llvm.memset(ptr %30, i8 0, i64 3, i1 false)
  store [3 x i8] %6, ptr %30, align 1
  %31 = getelementptr inbounds ptr, ptr %30, i64 0
  %32 = call ptr @PyBytes_FromStringAndSize(ptr %31, i64 3)
  %33 = call i32 @PyList_SetItem(ptr %7, i64 10, ptr %32)
  %34 = call ptr @PyBytes_FromStringAndSize(ptr null, i64 0)
  %35 = call i32 @PyList_SetItem(ptr %7, i64 11, ptr %34)
  %36 = ptrtoint ptr %0 to i64
  %37 = call ptr @PyLong_FromUnsignedLongLong(i64 %36)
  %38 = call i32 @PyList_SetItem(ptr %7, i64 12, ptr %37)
  %39 = ptrtoint ptr %0 to i64
  %40 = call ptr @PyLong_FromUnsignedLongLong(i64 %39)
  %41 = call i32 @PyList_SetItem(ptr %7, i64 13, ptr %40)
  %42 = load ptr, ptr @__llgo_py.math, align 8
  %43 = call ptr @PyObject_GetAttrString(ptr %42, ptr @2)
  %44 = call ptr @PyList_New(i64 3)
  %45 = load ptr, ptr @"__llgo_py.builtins$abs", align 8
  %46 = call i32 @PyList_SetItem(ptr %44, i64 0, ptr %45)
  %47 = load ptr, ptr @"__llgo_py.builtins$print", align 8
  %48 = call i32 @PyList_SetItem(ptr %44, i64 1, ptr %47)
  %49 = call i32 @PyList_SetItem(ptr %44, i64 2, ptr %43)
  %50 = load ptr, ptr @"__llgo_py.builtins$print", align 8
  %51 = call ptr (ptr, ...) @PyObject_CallFunctionObjArgs(ptr %50, ptr %7, ptr %44, ptr null)
  ret void
}

declare void @"github.com/goplus/lib/py/math.init"()

declare void @"github.com/goplus/lib/py/std.init"()

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

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

define void @"github.com/goplus/llgo/cl/_testpy/list.init$python"() {
_llgo_0:
  %0 = load ptr, ptr @__llgo_py.builtins, align 8
  %1 = load ptr, ptr @"__llgo_py.builtins$abs", align 8
  %2 = icmp eq ptr %1, null
  br i1 %2, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %3 = call ptr @PyObject_GetAttrString(ptr %0, ptr @3)
  store ptr %3, ptr @"__llgo_py.builtins$abs", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %4 = load ptr, ptr @"__llgo_py.builtins$print", align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %6 = call ptr @PyObject_GetAttrString(ptr %0, ptr @4)
  store ptr %6, ptr @"__llgo_py.builtins$print", align 8
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_2
  ret void
}

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
