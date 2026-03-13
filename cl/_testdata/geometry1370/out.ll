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
  %2 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %2)
  %3 = load double, ptr %1, align 8
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/geometry1370.Rectangle", ptr %0, i32 0, i32 1
  %5 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %5)
  %6 = load double, ptr %4, align 8
  %7 = fmul double %3, %6
  ret double %7
}

define i64 @"github.com/goplus/llgo/cl/_testdata/geometry1370.(*Rectangle).GetID"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/geometry1370.Rectangle", ptr %0, i32 0, i32 2
  %2 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %2)
  %3 = load i64, ptr %1, align 4
  ret i64 %3
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
  %2 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %2)
  %3 = load double, ptr %1, align 8
  %4 = fcmp ogt double %3, 0.000000e+00
  br i1 %4, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/geometry1370.Rectangle", ptr %0, i32 0, i32 1
  %6 = icmp eq ptr %5, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %6)
  %7 = load double, ptr %5, align 8
  %8 = fcmp ogt double %7, 0.000000e+00
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %9 = phi i1 [ false, %_llgo_0 ], [ %8, %_llgo_1 ]
  ret i1 %9
}

define void @"github.com/goplus/llgo/cl/_testdata/geometry1370.RegisterShape"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, i64 %1) {
_llgo_0:
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0)
  %3 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, 0
  %4 = getelementptr ptr, ptr %3, i64 4
  %5 = load ptr, ptr %4, align 8
  %6 = insertvalue { ptr, ptr } undef, ptr %5, 0
  %7 = insertvalue { ptr, ptr } %6, ptr %2, 1
  %8 = extractvalue { ptr, ptr } %7, 1
  %9 = extractvalue { ptr, ptr } %7, 0
  call void %9(ptr %8, i64 %1)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testdata/geometry1370.init"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testdata/geometry1370.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testdata/geometry1370.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")
