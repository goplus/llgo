; ModuleID = 'github.com/goplus/llgo/compiler/cl/_testlibc/complex'
source_filename = "github.com/goplus/llgo/compiler/cl/_testlibc/complex"

%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }

@"github.com/goplus/llgo/compiler/cl/_testlibc/complex.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [5 x i8] c"addr:", align 1
@1 = private unnamed_addr constant [10 x i8] c"abs(3+4i):", align 1
@2 = private unnamed_addr constant [11 x i8] c"real(3+4i):", align 1
@3 = private unnamed_addr constant [11 x i8] c"imag(3+4i):", align 1

define void @"github.com/goplus/llgo/compiler/cl/_testlibc/complex.f"({ float, float } %0, { float, float } %1, ptr %2) {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %3 = call float @cabsf({ float, float } %0)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 10 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %4 = fpext float %3 to double
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintFloat"(double %4)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %5 = extractvalue { float, float } %1, 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 11 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %6 = fpext float %5 to double
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintFloat"(double %6)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %7 = extractvalue { float, float } %1, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 11 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %8 = fpext float %7 to double
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintFloat"(double %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

define void @"github.com/goplus/llgo/compiler/cl/_testlibc/complex.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/compiler/cl/_testlibc/complex.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/compiler/cl/_testlibc/complex.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/compiler/cl/_testlibc/complex.main"() {
_llgo_0:
  call void @"github.com/goplus/llgo/compiler/cl/_testlibc/complex.f"({ float, float } { float 3.000000e+00, float 4.000000e+00 }, { float, float } { float 3.000000e+00, float 4.000000e+00 }, ptr @"github.com/goplus/llgo/compiler/cl/_testlibc/complex.f")
  ret void
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr)

declare float @cabsf({ float, float })

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintFloat"(double)
