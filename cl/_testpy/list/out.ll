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
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testpy/list.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testpy/list.init$guard", align 1
  call void @"github.com/goplus/lib/py/math.init"()
  call void @"github.com/goplus/lib/py/std.init"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
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
  %3 = getelementptr inbounds i8, ptr %2, i64 0
  %4 = getelementptr inbounds i8, ptr %2, i64 1
  %5 = getelementptr inbounds i8, ptr %2, i64 2
  store i8 1, ptr %3, align 1
  store i8 2, ptr %4, align 1
  store i8 3, ptr %5, align 1
  %6 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %6)
  %7 = load [3 x i8], ptr %2, align 1
  %8 = call ptr @PyList_New(i64 14)
  %9 = call ptr @PyBool_FromLong(i32 -1)
  %10 = call i32 @PyList_SetItem(ptr %8, i64 0, ptr %9)
  %11 = call ptr @PyBool_FromLong(i32 0)
  %12 = call i32 @PyList_SetItem(ptr %8, i64 1, ptr %11)
  %13 = call ptr @PyLong_FromLongLong(i64 1)
  %14 = call i32 @PyList_SetItem(ptr %8, i64 2, ptr %13)
  %15 = call ptr @PyFloat_FromDouble(double 0x4000CCCCC0000000)
  %16 = call i32 @PyList_SetItem(ptr %8, i64 3, ptr %15)
  %17 = call ptr @PyFloat_FromDouble(double 3.100000e+00)
  %18 = call i32 @PyList_SetItem(ptr %8, i64 4, ptr %17)
  %19 = call ptr @PyLong_FromUnsignedLongLong(i64 4)
  %20 = call i32 @PyList_SetItem(ptr %8, i64 5, ptr %19)
  %21 = call ptr @PyComplex_FromDoubles(double 1.000000e+00, double 2.000000e+00)
  %22 = call i32 @PyList_SetItem(ptr %8, i64 6, ptr %21)
  %23 = call ptr @PyComplex_FromDoubles(double 3.000000e+00, double 4.000000e+00)
  %24 = call i32 @PyList_SetItem(ptr %8, i64 7, ptr %23)
  %25 = call ptr @PyUnicode_FromStringAndSize(ptr @1, i64 5)
  %26 = call i32 @PyList_SetItem(ptr %8, i64 8, ptr %25)
  %27 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1, 0
  %28 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1, 1
  %29 = call ptr @PyByteArray_FromStringAndSize(ptr %27, i64 %28)
  %30 = call i32 @PyList_SetItem(ptr %8, i64 9, ptr %29)
  %31 = alloca [3 x i8], align 1
  call void @llvm.memset(ptr %31, i8 0, i64 3, i1 false)
  store [3 x i8] %7, ptr %31, align 1
  %32 = getelementptr inbounds ptr, ptr %31, i64 0
  %33 = call ptr @PyBytes_FromStringAndSize(ptr %32, i64 3)
  %34 = call i32 @PyList_SetItem(ptr %8, i64 10, ptr %33)
  %35 = call ptr @PyBytes_FromStringAndSize(ptr null, i64 0)
  %36 = call i32 @PyList_SetItem(ptr %8, i64 11, ptr %35)
  %37 = ptrtoint ptr %0 to i64
  %38 = call ptr @PyLong_FromUnsignedLongLong(i64 %37)
  %39 = call i32 @PyList_SetItem(ptr %8, i64 12, ptr %38)
  %40 = ptrtoint ptr %0 to i64
  %41 = call ptr @PyLong_FromUnsignedLongLong(i64 %40)
  %42 = call i32 @PyList_SetItem(ptr %8, i64 13, ptr %41)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  %43 = load ptr, ptr @__llgo_py.math, align 8
  %44 = call ptr @PyObject_GetAttrString(ptr %43, ptr @2)
  %45 = call ptr @PyList_New(i64 3)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  %46 = load ptr, ptr @__llgo_py.builtins.abs, align 8
  %47 = call i32 @PyList_SetItem(ptr %45, i64 0, ptr %46)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  %48 = load ptr, ptr @__llgo_py.builtins.print, align 8
  %49 = call i32 @PyList_SetItem(ptr %45, i64 1, ptr %48)
  %50 = call i32 @PyList_SetItem(ptr %45, i64 2, ptr %44)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  %51 = load ptr, ptr @__llgo_py.builtins.print, align 8
  %52 = call ptr (ptr, ...) @PyObject_CallFunctionObjArgs(ptr %51, ptr %8, ptr %45, ptr null)
  ret void
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1)

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

declare void @llgoLoadPyModSyms(ptr, ...)

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
