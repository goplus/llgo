; ModuleID = 'github.com/goplus/llgo/cl/_testlibc/demangle'
source_filename = "github.com/goplus/llgo/cl/_testlibc/demangle"

%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }

@"github.com/goplus/llgo/cl/_testlibc/demangle.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [29 x i8] c"__ZNK9INIReader10ParseErrorEv", align 1
@1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@2 = private unnamed_addr constant [18 x i8] c"Failed to demangle", align 1

define void @"github.com/goplus/llgo/cl/_testlibc/demangle.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testlibc/demangle.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testlibc/demangle.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testlibc/demangle.main"() {
_llgo_0:
  %0 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 29 }, ptr %0, align 8
  %1 = call ptr @_ZN4llvm15itaniumDemangleENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEEb(ptr %0, i1 true)
  %2 = icmp ne ptr %1, null
  br i1 %2, label %_llgo_1, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_0
  %3 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store ptr %1, ptr %3, align 8
  %4 = call i32 @printf(ptr @1, ptr %3)
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_3, %_llgo_1
  ret void

_llgo_3:                                          ; preds = %_llgo_0
  %5 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 18 }, ptr %5, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_2
}

declare ptr @_ZN4llvm15itaniumDemangleENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEEb(ptr, i1)

declare i32 @printf(ptr, %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)
