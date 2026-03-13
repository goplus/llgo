; ModuleID = 'github.com/goplus/llgo/cl/_testgo/typerecur'
source_filename = "github.com/goplus/llgo/cl/_testgo/typerecur"

%"github.com/goplus/llgo/cl/_testgo/typerecur.stateFn" = type { ptr, ptr }
%"github.com/goplus/llgo/cl/_testgo/typerecur.counter" = type { i64, i64, %"github.com/goplus/llgo/cl/_testgo/typerecur.stateFn" }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }

@"github.com/goplus/llgo/cl/_testgo/typerecur.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [6 x i8] c"count:", align 1

define %"github.com/goplus/llgo/cl/_testgo/typerecur.stateFn" @"github.com/goplus/llgo/cl/_testgo/typerecur.countState"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/typerecur.counter", ptr %0, i32 0, i32 0
  %2 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %2)
  %3 = load i64, ptr %1, align 4
  %4 = add i64 %3, 1
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/typerecur.counter", ptr %0, i32 0, i32 0
  store i64 %4, ptr %5, align 4
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/typerecur.counter", ptr %0, i32 0, i32 0
  %7 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %7)
  %8 = load i64, ptr %6, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 6 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %9 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/typerecur.counter", ptr %0, i32 0, i32 0
  %10 = icmp eq ptr %9, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %10)
  %11 = load i64, ptr %9, align 4
  %12 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/typerecur.counter", ptr %0, i32 0, i32 1
  %13 = icmp eq ptr %12, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %13)
  %14 = load i64, ptr %12, align 4
  %15 = icmp sge i64 %11, %14
  br i1 %15, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  ret %"github.com/goplus/llgo/cl/_testgo/typerecur.stateFn" zeroinitializer

_llgo_2:                                          ; preds = %_llgo_0
  ret %"github.com/goplus/llgo/cl/_testgo/typerecur.stateFn" { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testgo/typerecur.countState", ptr null }
}

define void @"github.com/goplus/llgo/cl/_testgo/typerecur.init"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
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
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/typerecur.counter", ptr %0, i32 0, i32 1
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/typerecur.counter", ptr %0, i32 0, i32 2
  store i64 5, ptr %1, align 4
  store %"github.com/goplus/llgo/cl/_testgo/typerecur.stateFn" { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testgo/typerecur.countState", ptr null }, ptr %2, align 8
  br label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/typerecur.counter", ptr %0, i32 0, i32 2
  %4 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %4)
  %5 = load %"github.com/goplus/llgo/cl/_testgo/typerecur.stateFn", ptr %3, align 8
  %6 = extractvalue %"github.com/goplus/llgo/cl/_testgo/typerecur.stateFn" %5, 1
  %7 = extractvalue %"github.com/goplus/llgo/cl/_testgo/typerecur.stateFn" %5, 0
  %8 = call %"github.com/goplus/llgo/cl/_testgo/typerecur.stateFn" %7(ptr %6, ptr %0)
  %9 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/typerecur.counter", ptr %0, i32 0, i32 2
  store %"github.com/goplus/llgo/cl/_testgo/typerecur.stateFn" %8, ptr %9, align 8
  br label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_3
  ret void

_llgo_3:                                          ; preds = %_llgo_1, %_llgo_0
  %10 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/typerecur.counter", ptr %0, i32 0, i32 2
  %11 = icmp eq ptr %10, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %11)
  %12 = load %"github.com/goplus/llgo/cl/_testgo/typerecur.stateFn", ptr %10, align 8
  %13 = extractvalue %"github.com/goplus/llgo/cl/_testgo/typerecur.stateFn" %12, 0
  %14 = icmp ne ptr %13, null
  br i1 %14, label %_llgo_1, label %_llgo_2
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
