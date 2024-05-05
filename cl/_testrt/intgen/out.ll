; ModuleID = 'main'
source_filename = "main"

%"github.com/goplus/llgo/internal/runtime.Slice" = type { ptr, i64, i64 }

@"main.init$guard" = global ptr null
@0 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

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
  %9 = extractvalue { ptr, ptr } %1, 1
  %10 = extractvalue { ptr, ptr } %1, 0
  %11 = call i32 %10(ptr %9)
  %12 = call ptr @"github.com/goplus/llgo/internal/runtime.SliceData"(%"github.com/goplus/llgo/internal/runtime.Slice" %4)
  %13 = getelementptr inbounds i32, ptr %12, i64 %7
  store i32 %11, ptr %13, align 4
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
  %0 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 4)
  store i32 1, ptr %0, align 4
  %1 = alloca { ptr, ptr }, align 8
  %2 = getelementptr inbounds { ptr, ptr }, ptr %1, i32 0, i32 0
  store ptr @__llgo_stub.rand, ptr %2, align 8
  %3 = getelementptr inbounds { ptr, ptr }, ptr %1, i32 0, i32 1
  store ptr null, ptr %3, align 8
  %4 = load { ptr, ptr }, ptr %1, align 8
  %5 = call %"github.com/goplus/llgo/internal/runtime.Slice" @main.genInts(i64 5, { ptr, ptr } %4)
  %6 = call i64 @"github.com/goplus/llgo/internal/runtime.SliceLen"(%"github.com/goplus/llgo/internal/runtime.Slice" %5)
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_2, %_llgo_0
  %7 = phi i64 [ -1, %_llgo_0 ], [ %8, %_llgo_2 ]
  %8 = add i64 %7, 1
  %9 = icmp slt i64 %8, %6
  br i1 %9, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  %10 = call ptr @"github.com/goplus/llgo/internal/runtime.SliceData"(%"github.com/goplus/llgo/internal/runtime.Slice" %5)
  %11 = getelementptr inbounds i32, ptr %10, i64 %8
  %12 = load i32, ptr %11, align 4
  %13 = call i32 (ptr, ...) @printf(ptr @0, i32 %12)
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_1
  %14 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %15 = getelementptr inbounds { ptr }, ptr %14, i32 0, i32 0
  store ptr %0, ptr %15, align 8
  %16 = alloca { ptr, ptr }, align 8
  %17 = getelementptr inbounds { ptr, ptr }, ptr %16, i32 0, i32 0
  store ptr @"main.main$1", ptr %17, align 8
  %18 = getelementptr inbounds { ptr, ptr }, ptr %16, i32 0, i32 1
  store ptr %14, ptr %18, align 8
  %19 = load { ptr, ptr }, ptr %16, align 8
  %20 = call %"github.com/goplus/llgo/internal/runtime.Slice" @main.genInts(i64 5, { ptr, ptr } %19)
  %21 = call i64 @"github.com/goplus/llgo/internal/runtime.SliceLen"(%"github.com/goplus/llgo/internal/runtime.Slice" %20)
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_5, %_llgo_3
  %22 = phi i64 [ -1, %_llgo_3 ], [ %23, %_llgo_5 ]
  %23 = add i64 %22, 1
  %24 = icmp slt i64 %23, %21
  br i1 %24, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %25 = call ptr @"github.com/goplus/llgo/internal/runtime.SliceData"(%"github.com/goplus/llgo/internal/runtime.Slice" %20)
  %26 = getelementptr inbounds i32, ptr %25, i64 %23
  %27 = load i32, ptr %26, align 4
  %28 = call i32 (ptr, ...) @printf(ptr @1, i32 %27)
  br label %_llgo_4

_llgo_6:                                          ; preds = %_llgo_4
  ret void
}

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64)

declare %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice"(ptr, i64, i64)

declare i64 @"github.com/goplus/llgo/internal/runtime.SliceLen"(%"github.com/goplus/llgo/internal/runtime.Slice")

declare ptr @"github.com/goplus/llgo/internal/runtime.SliceData"(%"github.com/goplus/llgo/internal/runtime.Slice")

declare void @"github.com/goplus/llgo/internal/runtime.init"()

declare i32 @rand()

define i32 @__llgo_stub.rand(ptr %0) {
_llgo_0:
  %1 = call i32 @rand()
  ret i32 %1
}

declare i32 @printf(ptr, ...)

define i32 @"main.main$1"({ ptr } %0) {
_llgo_0:
  %1 = extractvalue { ptr } %0, 0
  %2 = load i32, ptr %1, align 4
  %3 = mul i32 %2, 2
  %4 = extractvalue { ptr } %0, 0
  store i32 %3, ptr %4, align 4
  %5 = extractvalue { ptr } %0, 0
  %6 = load i32, ptr %5, align 4
  ret i32 %6
}

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64)
