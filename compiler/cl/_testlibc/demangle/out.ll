; ModuleID = 'main'
source_filename = "main"

%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }

@"main.init$guard" = global i1 false, align 1
@__llgo_argc = global i32 0, align 4
@__llgo_argv = global ptr null, align 8
@0 = private unnamed_addr constant [29 x i8] c"__ZNK9INIReader10ParseErrorEv", align 1
@1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@2 = private unnamed_addr constant [18 x i8] c"Failed to demangle", align 1

define void @main.init() {
_llgo_0:
  %0 = load i1, ptr @"main.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"main.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define i32 @main(i32 %0, ptr %1) {
_llgo_0:
  store i32 %0, ptr @__llgo_argc, align 4
  store ptr %1, ptr @__llgo_argv, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.init"()
  call void @main.init()
  %2 = call ptr @_ZN4llvm15itaniumDemangleENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEEb(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 29 }, i1 true)
  %3 = icmp ne ptr %2, null
  br i1 %3, label %_llgo_1, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_0
  %4 = call i32 (ptr, ...) @printf(ptr @1, ptr %2)
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_3, %_llgo_1
  ret i32 0

_llgo_3:                                          ; preds = %_llgo_0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 18 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_2
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.init"()

declare ptr @_ZN4llvm15itaniumDemangleENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEEb(%"github.com/goplus/llgo/runtime/internal/runtime.String", i1)

declare i32 @printf(ptr, ...)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)
