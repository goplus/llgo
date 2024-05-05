; ModuleID = 'main'
source_filename = "main"

%"github.com/goplus/llgo/internal/runtime.Slice" = type { ptr, i64, i64 }

@"main.init$guard" = global ptr null
@0 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

define %"github.com/goplus/llgo/internal/runtime.Slice" @main.genInts(i64 %0, { ptr, ptr } %1) {
_llgo_0:
  %2 = mul i64 %0, 4
  %3 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 %2)
  %4 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice"(ptr %3, i64 %0, i64 %0)
  %5 = call i64 @"github.com/goplus/llgo/internal/runtime.SliceLen"(%"github.com/goplus/llgo/internal/runtime.Slice" %4)
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_2, %_llgo_0
  %6 = phi i64 [ -1, %_llgo_0 ], [ %7, %_llgo_2 ]
  %7 = add i64 %6, 1
  %8 = icmp slt i64 %7, %5
  br i1 %8, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  %9 = extractvalue { i32 ()*, ptr } %1, 0
  %10 = call i32 ()* %9()
  %11 = call ptr @"github.com/goplus/llgo/internal/runtime.SliceData"(%"github.com/goplus/llgo/internal/runtime.Slice" %4)
  %12 = getelementptr inbounds i32, ptr %11, i64 %7
  store ptr %10, ptr %12, align 8
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_1
  ret %"github.com/goplus/llgo/internal/runtime.Slice" %4
}

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

define void @main() {
_llgo_0:
  call void @"github.com/goplus/llgo/internal/runtime.init"()
  call void @main.init()
  %0 = alloca { ptr, ptr }, align 8
  %1 = getelementptr inbounds { ptr, ptr }, ptr %0, i32 0, i32 0
  store ptr @rand, ptr %1, align 8
  %2 = getelementptr inbounds { ptr, ptr }, ptr %0, i32 0, i32 1
  store ptr null, ptr %2, align 8
  %3 = load { ptr, ptr }, ptr %0, align 8
  %4 = call %"github.com/goplus/llgo/internal/runtime.Slice" @main.genInts(i64 5, { ptr, ptr } %3)
  %5 = call i64 @"github.com/goplus/llgo/internal/runtime.SliceLen"(%"github.com/goplus/llgo/internal/runtime.Slice" %4)
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_2, %_llgo_0
  %6 = phi i64 [ -1, %_llgo_0 ], [ %7, %_llgo_2 ]
  %7 = add i64 %6, 1
  %8 = icmp slt i64 %7, %5
  br i1 %8, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  %9 = call ptr @"github.com/goplus/llgo/internal/runtime.SliceData"(%"github.com/goplus/llgo/internal/runtime.Slice" %4)
  %10 = getelementptr inbounds i32, ptr %9, i64 %7
  %11 = load i32, ptr %10, align 4
  %12 = call i32 (ptr, ...) @printf(ptr @0, i32 %11)
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_1
  ret void
}

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64)

declare %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice"(ptr, i64, i64)

declare i64 @"github.com/goplus/llgo/internal/runtime.SliceLen"(%"github.com/goplus/llgo/internal/runtime.Slice")

declare ptr @"github.com/goplus/llgo/internal/runtime.SliceData"(%"github.com/goplus/llgo/internal/runtime.Slice")

declare void @"github.com/goplus/llgo/internal/runtime.init"()

declare i32 @rand()

declare i32 @printf(ptr, ...)
