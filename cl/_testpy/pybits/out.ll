; ModuleID = 'github.com/goplus/llgo/cl/_testpy/pybits'
source_filename = "github.com/goplus/llgo/cl/_testpy/pybits"

%"github.com/goplus/llgo/cl/_testpy/pybits/bits.Bits" = type { %"github.com/goplus/lib/py.Object" }
%"github.com/goplus/lib/py.Object" = type { [8 x i8] }

@"github.com/goplus/llgo/cl/_testpy/pybits.init$guard" = global i1 false, align 1
@"__llgo_py.builtins$int.bit_length" = linkonce global ptr null, align 8
@__llgo_py.builtins = external global ptr, align 8
@0 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@1 = private unnamed_addr constant [11 x i8] c"bit_length\00", align 1

define void @"github.com/goplus/llgo/cl/_testpy/pybits.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testpy/pybits.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testpy/pybits.init$guard", align 1
  call void @"github.com/goplus/llgo/cl/_testpy/pybits/bits.init"()
  call void @"github.com/goplus/llgo/cl/_testpy/pybits.init$python"()
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testpy/pybits.main"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/cl/_testpy/pybits/bits.NewBits"(i64 100)
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpy/pybits/bits.Bits", ptr %0, i32 0, i32 0
  %2 = call i64 @PyLong_AsLong(ptr %1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %3 = load ptr, ptr @"__llgo_py.builtins$int.bit_length", align 8
  %4 = call ptr @PyObject_CallOneArg(ptr %3, ptr %0)
  %5 = call i64 @PyLong_AsLong(ptr %4)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

declare void @"github.com/goplus/llgo/cl/_testpy/pybits/bits.init"()

declare ptr @"github.com/goplus/llgo/cl/_testpy/pybits/bits.NewBits"(i64)

declare i64 @PyLong_AsLong(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare ptr @PyObject_CallOneArg(ptr, ptr)

define void @"github.com/goplus/llgo/cl/_testpy/pybits.init$python"() {
_llgo_0:
  %0 = load ptr, ptr @__llgo_py.builtins, align 8
  %1 = load ptr, ptr @"__llgo_py.builtins$int.bit_length", align 8
  %2 = icmp eq ptr %1, null
  br i1 %2, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %3 = call ptr @PyObject_GetAttrString(ptr %0, ptr @0)
  %4 = call ptr @PyObject_GetAttrString(ptr %3, ptr @1)
  store ptr %4, ptr @"__llgo_py.builtins$int.bit_length", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

declare ptr @PyObject_GetAttrString(ptr, ptr)
