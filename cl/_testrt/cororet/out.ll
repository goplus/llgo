; ModuleID = 'github.com/goplus/llgo/cl/_testrt/cororet'
source_filename = "github.com/goplus/llgo/cl/_testrt/cororet"

%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }

@"github.com/goplus/llgo/cl/_testrt/cororet.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [22 x i8] c"caller: calling simple", align 1
@1 = private unnamed_addr constant [16 x i8] c"caller: result =", align 1
@2 = private unnamed_addr constant [12 x i8] c"=== sync ===", align 1
@3 = private unnamed_addr constant [13 x i8] c"=== async ===", align 1
@4 = private unnamed_addr constant [10 x i8] c"main: done", align 1
@5 = private unnamed_addr constant [11 x i8] c"simple: x =", align 1
@6 = private unnamed_addr constant [17 x i8] c"simple: returning", align 1

define void @"github.com/goplus/llgo/cl/_testrt/cororet.caller"(i64 %0) {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 22 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %1 = call i64 @"github.com/goplus/llgo/cl/_testrt/cororet.simple"(i64 %0)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 16 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/cororet.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/cororet.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/cororet.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/cororet.main"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 12 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/cl/_testrt/cororet.caller"(i64 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 13 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %0 = call ptr @malloc(i64 16)
  %1 = getelementptr inbounds { ptr, i64 }, ptr %0, i32 0, i32 0
  store ptr @"github.com/goplus/llgo/cl/_testrt/cororet.caller", ptr %1, align 8
  %2 = getelementptr inbounds { ptr, i64 }, ptr %0, i32 0, i32 1
  store i64 20, ptr %2, align 4
  %3 = alloca i8, i64 8, align 1
  %4 = call i32 @"github.com/goplus/llgo/runtime/internal/runtime.CreateThread"(ptr %3, ptr null, ptr @"github.com/goplus/llgo/cl/_testrt/cororet._llgo_routine$1", ptr %0)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 10 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

define i64 @"github.com/goplus/llgo/cl/_testrt/cororet.simple"(i64 %0) {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 11 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %0)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %1 = mul i64 %0, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 17 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret i64 %1
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64)

declare ptr @malloc(i64)

define ptr @"github.com/goplus/llgo/cl/_testrt/cororet._llgo_routine$1"(ptr %0) {
_llgo_0:
  %1 = load { ptr, i64 }, ptr %0, align 8
  %2 = extractvalue { ptr, i64 } %1, 0
  %3 = extractvalue { ptr, i64 } %1, 1
  call void %2(i64 %3)
  call void @free(ptr %0)
  ret ptr null
}

declare void @free(ptr)

declare i32 @"github.com/goplus/llgo/runtime/internal/runtime.CreateThread"(ptr, ptr, ptr, ptr)
