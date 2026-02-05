; ModuleID = 'github.com/goplus/llgo/cl/_testgo/closure'
source_filename = "github.com/goplus/llgo/cl/_testgo/closure"

%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/cl/_testgo/closure.T" = type { ptr, ptr }

@"github.com/goplus/llgo/cl/_testgo/closure.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [3 x i8] c"env", align 1
@1 = private unnamed_addr constant [4 x i8] c"func", align 1
@2 = private unnamed_addr constant [7 x i8] c"closure", align 1

define void @"github.com/goplus/llgo/cl/_testgo/closure.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testgo/closure.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testgo/closure.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/closure.main"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 3 }, ptr %0, align 8
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %2 = getelementptr inbounds { ptr }, ptr %1, i32 0, i32 0
  store ptr %0, ptr %2, align 8
  %3 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testgo/closure.main$2", ptr undef }, ptr %1, 1
  %4 = alloca %"github.com/goplus/llgo/cl/_testgo/closure.T", align 8
  store { ptr, ptr } %3, ptr %4, align 8
  %5 = load %"github.com/goplus/llgo/cl/_testgo/closure.T", ptr %4, align 8
  call void @"__llgo_stub.github.com/goplus/llgo/cl/_testgo/closure.main$1"(ptr null, i64 100)
  %6 = extractvalue %"github.com/goplus/llgo/cl/_testgo/closure.T" %5, 1
  %7 = extractvalue %"github.com/goplus/llgo/cl/_testgo/closure.T" %5, 0
  call void %7(ptr %6, i64 200)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/closure.main$1"(i64 %0) {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 4 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %0)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/closure.main$2"(ptr %0, i64 %1) {
_llgo_0:
  %2 = load { ptr }, ptr %0, align 8
  %3 = extractvalue { ptr } %2, 0
  %4 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %3, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 7 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %4)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

define linkonce void @"__llgo_stub.github.com/goplus/llgo/cl/_testgo/closure.main$1"(ptr %0, i64 %1) {
_llgo_0:
  tail call void @"github.com/goplus/llgo/cl/_testgo/closure.main$1"(i64 %1)
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64)
