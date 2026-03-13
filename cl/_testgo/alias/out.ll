; ModuleID = 'github.com/goplus/llgo/cl/_testgo/alias'
source_filename = "github.com/goplus/llgo/cl/_testgo/alias"

%"github.com/goplus/llgo/cl/_testgo/alias.Point" = type { double, double }

@"github.com/goplus/llgo/cl/_testgo/alias.init$guard" = global i1 false, align 1

define void @"github.com/goplus/llgo/cl/_testgo/alias.(*Point).Move"(ptr %0, double %1, double %2) {
_llgo_0:
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/alias.Point", ptr %0, i32 0, i32 0
  %4 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %4)
  %5 = load double, ptr %3, align 8
  %6 = fadd double %5, %1
  %7 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/alias.Point", ptr %0, i32 0, i32 0
  store double %6, ptr %7, align 8
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/alias.Point", ptr %0, i32 0, i32 1
  %9 = icmp eq ptr %8, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %9)
  %10 = load double, ptr %8, align 8
  %11 = fadd double %10, %2
  %12 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/alias.Point", ptr %0, i32 0, i32 1
  store double %11, ptr %12, align 8
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/alias.(*Point).Scale"(ptr %0, double %1) {
_llgo_0:
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/alias.Point", ptr %0, i32 0, i32 0
  %3 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %3)
  %4 = load double, ptr %2, align 8
  %5 = fmul double %4, %1
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/alias.Point", ptr %0, i32 0, i32 0
  store double %5, ptr %6, align 8
  %7 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/alias.Point", ptr %0, i32 0, i32 1
  %8 = icmp eq ptr %7, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %8)
  %9 = load double, ptr %7, align 8
  %10 = fmul double %9, %1
  %11 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/alias.Point", ptr %0, i32 0, i32 1
  store double %10, ptr %11, align 8
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/alias.init"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testgo/alias.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testgo/alias.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/alias.main"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/alias.Point", ptr %0, i32 0, i32 0
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/alias.Point", ptr %0, i32 0, i32 1
  store double 1.000000e+00, ptr %1, align 8
  store double 2.000000e+00, ptr %2, align 8
  call void @"github.com/goplus/llgo/cl/_testgo/alias.(*Point).Scale"(ptr %0, double 2.000000e+00)
  call void @"github.com/goplus/llgo/cl/_testgo/alias.(*Point).Move"(ptr %0, double 3.000000e+00, double 4.000000e+00)
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/alias.Point", ptr %0, i32 0, i32 0
  %4 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %4)
  %5 = load double, ptr %3, align 8
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/alias.Point", ptr %0, i32 0, i32 1
  %7 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %7)
  %8 = load double, ptr %6, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintFloat"(double %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintFloat"(double %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintFloat"(double)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)
