; ModuleID = 'github.com/goplus/llgo/cl/_testdata/geometry1370'
source_filename = "github.com/goplus/llgo/cl/_testdata/geometry1370"

%"github.com/goplus/llgo/cl/_testdata/geometry1370.Rectangle" = type { double, double, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }

@"github.com/goplus/llgo/cl/_testdata/geometry1370.init$guard" = global i1 false, align 1

define ptr @"github.com/goplus/llgo/cl/_testdata/geometry1370.NewRectangle"(double %0, double %1) {
_llgo_0:
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 24)
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/geometry1370.Rectangle", ptr %2, i32 0, i32 0
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/geometry1370.Rectangle", ptr %2, i32 0, i32 1
  store double %0, ptr %3, align 8
  store double %1, ptr %4, align 8
  ret ptr %2
}

define double @"github.com/goplus/llgo/cl/_testdata/geometry1370.(*Rectangle).Area"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/geometry1370.Rectangle", ptr %0, i32 0, i32 0
  %2 = load double, ptr %1, align 8
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/geometry1370.Rectangle", ptr %0, i32 0, i32 1
  %4 = load double, ptr %3, align 8
  %5 = fmul double %2, %4
  ret double %5
}

define i64 @"github.com/goplus/llgo/cl/_testdata/geometry1370.(*Rectangle).GetID"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/geometry1370.Rectangle", ptr %0, i32 0, i32 2
  %2 = load i64, ptr %1, align 4
  ret i64 %2
}

define void @"github.com/goplus/llgo/cl/_testdata/geometry1370.(*Rectangle).setID"(ptr %0, i64 %1) {
_llgo_0:
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/geometry1370.Rectangle", ptr %0, i32 0, i32 2
  store i64 %1, ptr %2, align 4
  ret void
}

define i1 @"github.com/goplus/llgo/cl/_testdata/geometry1370.(*Rectangle).validate"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/geometry1370.Rectangle", ptr %0, i32 0, i32 0
  %2 = load double, ptr %1, align 8
  %3 = fcmp ogt double %2, 0.000000e+00
  br i1 %3, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/geometry1370.Rectangle", ptr %0, i32 0, i32 1
  %5 = load double, ptr %4, align 8
  %6 = fcmp ogt double %5, 0.000000e+00
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %7 = phi i1 [ false, %_llgo_0 ], [ %6, %_llgo_1 ]
  ret i1 %7
}

define void @"github.com/goplus/llgo/cl/_testdata/geometry1370.RegisterShape"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, i64 %1) {
_llgo_0:
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0)
  %3 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, 0
  %4 = getelementptr ptr, ptr %3, i64 4
  %5 = load ptr, ptr %4, align 8
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %7 = getelementptr inbounds { ptr, i64, ptr }, ptr %6, i32 0, i32 0
  store ptr %5, ptr %7, align 8
  %8 = getelementptr inbounds { ptr, i64, ptr }, ptr %6, i32 0, i32 1
  store i64 1, ptr %8, align 4
  %9 = getelementptr inbounds { ptr, i64, ptr }, ptr %6, i32 0, i32 2
  store ptr %2, ptr %9, align 8
  %10 = load ptr, ptr %6, align 8
  %11 = getelementptr i8, ptr %6, i64 16
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr i8, ptr %6, i64 16
  call void asm sideeffect "mov x26, $0", "r,~{x26},~{memory}"(ptr %13)
  call void %10(ptr %12, i64 %1)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testdata/geometry1370.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testdata/geometry1370.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testdata/geometry1370.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)
