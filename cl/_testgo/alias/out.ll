; ModuleID = 'github.com/goplus/llgo/cl/_testgo/alias'
source_filename = "github.com/goplus/llgo/cl/_testgo/alias"

%"github.com/goplus/llgo/cl/_testgo/alias.Point" = type { double, double }

@"github.com/goplus/llgo/cl/_testgo/alias.init$guard" = global i1 false, align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @"github.com/goplus/llgo/cl/_testgo/alias.(*Point).Move", ptr @"github.com/goplus/llgo/cl/_testgo/alias.(*Point).Scale"], section "llvm.metadata"

define void @"github.com/goplus/llgo/cl/_testgo/alias.(*Point).Move"(ptr %0, double %1, double %2) {
_llgo_0:
  %3 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %3)
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/alias.Point", ptr %0, i32 0, i32 0
  %5 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %5)
  %6 = load double, ptr %4, align 8
  %7 = fadd double %6, %1
  %8 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %8)
  %9 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/alias.Point", ptr %0, i32 0, i32 0
  store double %7, ptr %9, align 8
  %10 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %10)
  %11 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/alias.Point", ptr %0, i32 0, i32 1
  %12 = icmp eq ptr %11, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %12)
  %13 = load double, ptr %11, align 8
  %14 = fadd double %13, %2
  %15 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %15)
  %16 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/alias.Point", ptr %0, i32 0, i32 1
  store double %14, ptr %16, align 8
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/alias.(*Point).Scale"(ptr %0, double %1) {
_llgo_0:
  %2 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %2)
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/alias.Point", ptr %0, i32 0, i32 0
  %4 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %4)
  %5 = load double, ptr %3, align 8
  %6 = fmul double %5, %1
  %7 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %7)
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/alias.Point", ptr %0, i32 0, i32 0
  store double %6, ptr %8, align 8
  %9 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %9)
  %10 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/alias.Point", ptr %0, i32 0, i32 1
  %11 = icmp eq ptr %10, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %11)
  %12 = load double, ptr %10, align 8
  %13 = fmul double %12, %1
  %14 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %14)
  %15 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/alias.Point", ptr %0, i32 0, i32 1
  store double %13, ptr %15, align 8
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/alias.init"() {
_llgo_0:
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
  %1 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1)
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/alias.Point", ptr %0, i32 0, i32 0
  %3 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %3)
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/alias.Point", ptr %0, i32 0, i32 1
  store double 1.000000e+00, ptr %2, align 8
  store double 2.000000e+00, ptr %4, align 8
  call void @"github.com/goplus/llgo/cl/_testgo/alias.(*Point).Scale"(ptr %0, double 2.000000e+00)
  call void @"github.com/goplus/llgo/cl/_testgo/alias.(*Point).Move"(ptr %0, double 3.000000e+00, double 4.000000e+00)
  %5 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %5)
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/alias.Point", ptr %0, i32 0, i32 0
  %7 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %7)
  %8 = load double, ptr %6, align 8
  %9 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %9)
  %10 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/alias.Point", ptr %0, i32 0, i32 1
  %11 = icmp eq ptr %10, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %11)
  %12 = load double, ptr %10, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintFloat"(double %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintFloat"(double %12)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintFloat"(double)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)
