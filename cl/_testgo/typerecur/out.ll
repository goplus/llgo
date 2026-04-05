; ModuleID = 'github.com/goplus/llgo/cl/_testgo/typerecur'
source_filename = "github.com/goplus/llgo/cl/_testgo/typerecur"

%"github.com/goplus/llgo/cl/_testgo/typerecur.stateFn" = type { ptr, ptr }
%"github.com/goplus/llgo/cl/_testgo/typerecur.counter" = type { i64, i64, %"github.com/goplus/llgo/cl/_testgo/typerecur.stateFn" }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }

@"github.com/goplus/llgo/cl/_testgo/typerecur.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [6 x i8] c"count:", align 1

define %"github.com/goplus/llgo/cl/_testgo/typerecur.stateFn" @"github.com/goplus/llgo/cl/_testgo/typerecur.countState"(ptr %0) {
_llgo_0:
  %1 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1)
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/typerecur.counter", ptr %0, i32 0, i32 0
  %3 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %3)
  %4 = load i64, ptr %2, align 4
  %5 = add i64 %4, 1
  %6 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %6)
  %7 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/typerecur.counter", ptr %0, i32 0, i32 0
  store i64 %5, ptr %7, align 4
  %8 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %8)
  %9 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/typerecur.counter", ptr %0, i32 0, i32 0
  %10 = icmp eq ptr %9, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %10)
  %11 = load i64, ptr %9, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 6 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %11)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %12 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %12)
  %13 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/typerecur.counter", ptr %0, i32 0, i32 0
  %14 = icmp eq ptr %13, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %14)
  %15 = load i64, ptr %13, align 4
  %16 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %16)
  %17 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/typerecur.counter", ptr %0, i32 0, i32 1
  %18 = icmp eq ptr %17, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %18)
  %19 = load i64, ptr %17, align 4
  %20 = icmp sge i64 %15, %19
  br i1 %20, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  ret %"github.com/goplus/llgo/cl/_testgo/typerecur.stateFn" zeroinitializer

_llgo_2:                                          ; preds = %_llgo_0
  ret %"github.com/goplus/llgo/cl/_testgo/typerecur.stateFn" { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testgo/typerecur.countState", ptr null }
}

define void @"github.com/goplus/llgo/cl/_testgo/typerecur.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testgo/typerecur.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testgo/typerecur.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/typerecur.main"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 32)
  %1 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1)
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/typerecur.counter", ptr %0, i32 0, i32 1
  %3 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %3)
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/typerecur.counter", ptr %0, i32 0, i32 2
  store i64 5, ptr %2, align 4
  store %"github.com/goplus/llgo/cl/_testgo/typerecur.stateFn" { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testgo/typerecur.countState", ptr null }, ptr %4, align 8
  br label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %5 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %5)
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/typerecur.counter", ptr %0, i32 0, i32 2
  %7 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %7)
  %8 = load %"github.com/goplus/llgo/cl/_testgo/typerecur.stateFn", ptr %6, align 8
  %9 = extractvalue %"github.com/goplus/llgo/cl/_testgo/typerecur.stateFn" %8, 1
  %10 = extractvalue %"github.com/goplus/llgo/cl/_testgo/typerecur.stateFn" %8, 0
  %11 = call %"github.com/goplus/llgo/cl/_testgo/typerecur.stateFn" %10(ptr %9, ptr %0)
  %12 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %12)
  %13 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/typerecur.counter", ptr %0, i32 0, i32 2
  store %"github.com/goplus/llgo/cl/_testgo/typerecur.stateFn" %11, ptr %13, align 8
  br label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_3
  ret void

_llgo_3:                                          ; preds = %_llgo_1, %_llgo_0
  %14 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %14)
  %15 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/typerecur.counter", ptr %0, i32 0, i32 2
  %16 = icmp eq ptr %15, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %16)
  %17 = load %"github.com/goplus/llgo/cl/_testgo/typerecur.stateFn", ptr %15, align 8
  %18 = extractvalue %"github.com/goplus/llgo/cl/_testgo/typerecur.stateFn" %17, 0
  %19 = icmp ne ptr %18, null
  br i1 %19, label %_llgo_1, label %_llgo_2
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64)

define linkonce %"github.com/goplus/llgo/cl/_testgo/typerecur.stateFn" @"__llgo_stub.github.com/goplus/llgo/cl/_testgo/typerecur.countState"(ptr %0, ptr %1) {
_llgo_0:
  %2 = tail call %"github.com/goplus/llgo/cl/_testgo/typerecur.stateFn" @"github.com/goplus/llgo/cl/_testgo/typerecur.countState"(ptr %1)
  ret %"github.com/goplus/llgo/cl/_testgo/typerecur.stateFn" %2
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)
