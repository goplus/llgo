; ModuleID = 'github.com/goplus/llgo/cl/_testlibgo/mathbits'
source_filename = "github.com/goplus/llgo/cl/_testlibgo/mathbits"

@"github.com/goplus/llgo/cl/_testlibgo/mathbits.init$guard" = global i1 false, align 1

; Function Attrs: null_pointer_is_valid
define void @"github.com/goplus/llgo/cl/_testlibgo/mathbits.init"() #0 {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testlibgo/mathbits.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testlibgo/mathbits.init$guard", align 1
  call void @"math/bits.init"()
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

; Function Attrs: null_pointer_is_valid
define void @"github.com/goplus/llgo/cl/_testlibgo/mathbits.main"() #0 {
_llgo_0:
  %0 = call i64 @"math/bits.Len8"(i8 20)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %0)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %1 = call i64 @"math/bits.OnesCount"(i64 20)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @"math/bits.init"() #0

; Function Attrs: null_pointer_is_valid
declare i64 @"math/bits.Len8"(i8) #0

; Function Attrs: null_pointer_is_valid
declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64) #0

; Function Attrs: null_pointer_is_valid
declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8) #0

; Function Attrs: null_pointer_is_valid
declare i64 @"math/bits.OnesCount"(i64) #0

attributes #0 = { null_pointer_is_valid }
