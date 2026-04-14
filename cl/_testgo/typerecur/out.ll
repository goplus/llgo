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
  %2 = load i64, ptr %1, align 4
  %3 = add i64 %2, 1
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/typerecur.counter", ptr %0, i32 0, i32 0
  store i64 %3, ptr %4, align 4
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/typerecur.counter", ptr %0, i32 0, i32 0
  %6 = load i64, ptr %5, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 6 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %6)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %7 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/typerecur.counter", ptr %0, i32 0, i32 0
  %8 = load i64, ptr %7, align 4
  %9 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/typerecur.counter", ptr %0, i32 0, i32 1
  %10 = load i64, ptr %9, align 4
  %11 = icmp sge i64 %8, %10
  br i1 %11, label %_llgo_1, label %_llgo_2

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
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/typerecur.counter", ptr %0, i32 0, i32 1
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/typerecur.counter", ptr %0, i32 0, i32 2
  store i64 5, ptr %1, align 4
  store %"github.com/goplus/llgo/cl/_testgo/typerecur.stateFn" { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testgo/typerecur.countState", ptr null }, ptr %2, align 8
  br label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/typerecur.counter", ptr %0, i32 0, i32 2
  %4 = load %"github.com/goplus/llgo/cl/_testgo/typerecur.stateFn", ptr %3, align 8
  %5 = extractvalue %"github.com/goplus/llgo/cl/_testgo/typerecur.stateFn" %4, 1
  %6 = extractvalue %"github.com/goplus/llgo/cl/_testgo/typerecur.stateFn" %4, 0
  %7 = call %"github.com/goplus/llgo/cl/_testgo/typerecur.stateFn" %6(ptr %5, ptr %0)
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/typerecur.counter", ptr %0, i32 0, i32 2
  store %"github.com/goplus/llgo/cl/_testgo/typerecur.stateFn" %7, ptr %8, align 8
  br label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_3
  ret void

_llgo_3:                                          ; preds = %_llgo_1, %_llgo_0
  %9 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/typerecur.counter", ptr %0, i32 0, i32 2
  %10 = load %"github.com/goplus/llgo/cl/_testgo/typerecur.stateFn", ptr %9, align 8
  %11 = extractvalue %"github.com/goplus/llgo/cl/_testgo/typerecur.stateFn" %10, 0
  %12 = icmp ne ptr %11, null
  br i1 %12, label %_llgo_1, label %_llgo_2
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64)

define linkonce %"github.com/goplus/llgo/cl/_testgo/typerecur.stateFn" @"__llgo_stub.github.com/goplus/llgo/cl/_testgo/typerecur.countState"(ptr %0, ptr %1) {
_llgo_0:
  %2 = tail call %"github.com/goplus/llgo/cl/_testgo/typerecur.stateFn" @"github.com/goplus/llgo/cl/_testgo/typerecur.countState"(ptr %1)
  ret %"github.com/goplus/llgo/cl/_testgo/typerecur.stateFn" %2
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)
