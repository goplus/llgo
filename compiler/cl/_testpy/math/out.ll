; ModuleID = 'github.com/goplus/llgo/compiler/cl/_testpy/math'
source_filename = "github.com/goplus/llgo/compiler/cl/_testpy/math"

@"github.com/goplus/llgo/compiler/cl/_testpy/math.init$guard" = global i1 false, align 1
@__llgo_py.math = linkonce global ptr null, align 8
@0 = private unnamed_addr constant [5 x i8] c"math\00", align 1

define void @"github.com/goplus/llgo/compiler/cl/_testpy/math.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/compiler/cl/_testpy/math.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/compiler/cl/_testpy/math.init$guard", align 1
  %1 = load ptr, ptr @__llgo_py.math, align 8
  %2 = icmp ne ptr %1, null
  br i1 %2, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_3, %_llgo_1, %_llgo_0
  ret void

_llgo_3:                                          ; preds = %_llgo_1
  %3 = call ptr @PyImport_ImportModule(ptr @0)
  store ptr %3, ptr @__llgo_py.math, align 8
  br label %_llgo_2
}

declare ptr @PyImport_ImportModule(ptr)
