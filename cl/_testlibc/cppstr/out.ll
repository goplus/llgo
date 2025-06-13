; ModuleID = 'github.com/goplus/llgo/cl/_testlibc/cppstr'
source_filename = "github.com/goplus/llgo/cl/_testlibc/cppstr"

%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }

@"github.com/goplus/llgo/cl/_testlibc/cppstr.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [12 x i8] c"Hello world\0A", align 1
@1 = private unnamed_addr constant [1 x i8] c"\0A", align 1

define void @"github.com/goplus/llgo/cl/_testlibc/cppstr.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testlibc/cppstr.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testlibc/cppstr.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testlibc/cppstr.main"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/lib/cpp/std.Str"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 12 })
  %1 = call ptr @stdStringCStr(ptr %0)
  %2 = call i32 (ptr, ...) @printf(ptr %1)
  %3 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/lib/cpp/std.(*String).Str"(ptr %0)
  %4 = call i64 @stdStringSize(ptr %0)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %3)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %4)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 1 })
  ret void
}

declare ptr @"github.com/goplus/lib/cpp/std.Str"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare ptr @stdStringCStr(ptr)

declare i32 @printf(ptr, ...)

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/lib/cpp/std.(*String).Str"(ptr)

declare i64 @stdStringSize(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64)
