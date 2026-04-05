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
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  store i64 100, ptr %0, align 4
  %1 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.StringToBytes"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 })
  %2 = alloca [3 x i8], align 1
  call void @llvm.memset(ptr %2, i8 0, i64 3, i1 false)
  %3 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %3)
  %4 = getelementptr inbounds i8, ptr %2, i64 0
  %5 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %5)
  %6 = getelementptr inbounds i8, ptr %2, i64 1
  %7 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %7)
  %8 = getelementptr inbounds i8, ptr %2, i64 2
  store i8 1, ptr %4, align 1
  store i8 2, ptr %6, align 1
  store i8 3, ptr %8, align 1
  %9 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %9)
  %10 = load [3 x i8], ptr %2, align 1
  %11 = call ptr @PyList_New(i64 14)
  %12 = call ptr @PyBool_FromLong(i32 -1)
  %13 = call i32 @PyList_SetItem(ptr %11, i64 0, ptr %12)
  %14 = call ptr @PyBool_FromLong(i32 0)
  %15 = call i32 @PyList_SetItem(ptr %11, i64 1, ptr %14)
  %16 = call ptr @PyLong_FromLongLong(i64 1)
  %17 = call i32 @PyList_SetItem(ptr %11, i64 2, ptr %16)
  %18 = call ptr @PyFloat_FromDouble(double 0x4000CCCCC0000000)
  %19 = call i32 @PyList_SetItem(ptr %11, i64 3, ptr %18)
  %20 = call ptr @PyFloat_FromDouble(double 3.100000e+00)
  %21 = call i32 @PyList_SetItem(ptr %11, i64 4, ptr %20)
  %22 = call ptr @PyLong_FromUnsignedLongLong(i64 4)
  %23 = call i32 @PyList_SetItem(ptr %11, i64 5, ptr %22)
  %24 = call ptr @PyComplex_FromDoubles(double 1.000000e+00, double 2.000000e+00)
  %25 = call i32 @PyList_SetItem(ptr %11, i64 6, ptr %24)
  %26 = call ptr @PyComplex_FromDoubles(double 3.000000e+00, double 4.000000e+00)
  %27 = call i32 @PyList_SetItem(ptr %11, i64 7, ptr %26)
  %28 = call ptr @PyUnicode_FromStringAndSize(ptr @1, i64 5)
  %29 = call i32 @PyList_SetItem(ptr %11, i64 8, ptr %28)
  %30 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1, 0
  %31 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1, 1
  %32 = call ptr @PyByteArray_FromStringAndSize(ptr %30, i64 %31)
  %33 = call i32 @PyList_SetItem(ptr %11, i64 9, ptr %32)
  %34 = alloca [3 x i8], align 1
  call void @llvm.memset(ptr %34, i8 0, i64 3, i1 false)
  store [3 x i8] %10, ptr %34, align 1
  %35 = getelementptr inbounds ptr, ptr %34, i64 0
  %36 = call ptr @PyBytes_FromStringAndSize(ptr %35, i64 3)
  %37 = call i32 @PyList_SetItem(ptr %11, i64 10, ptr %36)
  %38 = call ptr @PyBytes_FromStringAndSize(ptr null, i64 0)
  %39 = call i32 @PyList_SetItem(ptr %11, i64 11, ptr %38)
  %40 = ptrtoint ptr %0 to i64
  %41 = call ptr @PyLong_FromUnsignedLongLong(i64 %40)
  %42 = call i32 @PyList_SetItem(ptr %11, i64 12, ptr %41)
  %43 = ptrtoint ptr %0 to i64
  %44 = call ptr @PyLong_FromUnsignedLongLong(i64 %43)
  %45 = call i32 @PyList_SetItem(ptr %11, i64 13, ptr %44)
  %46 = load ptr, ptr @__llgo_py.math, align 8
  %47 = call ptr @PyObject_GetAttrString(ptr %46, ptr @2)
  %48 = call ptr @PyList_New(i64 3)
  %49 = load ptr, ptr @__llgo_py.builtins.abs, align 8
  %50 = call i32 @PyList_SetItem(ptr %48, i64 0, ptr %49)
  %51 = load ptr, ptr @__llgo_py.builtins.print, align 8
  %52 = call i32 @PyList_SetItem(ptr %48, i64 1, ptr %51)
  %53 = call i32 @PyList_SetItem(ptr %48, i64 2, ptr %47)
  %54 = load ptr, ptr @__llgo_py.builtins.print, align 8
  %55 = call ptr (ptr, ...) @PyObject_CallFunctionObjArgs(ptr %54, ptr %11, ptr %48, ptr null)
  ret void
}

declare void @"github.com/goplus/lib/py/math.init"()

declare void @"github.com/goplus/lib/py/std.init"()

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.StringToBytes"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1)

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
