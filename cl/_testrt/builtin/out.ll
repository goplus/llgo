; ModuleID = 'main'
source_filename = "main"

%"github.com/goplus/llgo/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/internal/runtime.String" = type { ptr, i64 }

@main.a = global ptr null
@main.b = global ptr null
@"main.init$guard" = global ptr null
@main.n = global ptr null
@0 = private unnamed_addr constant [6 x i8] c"hello\00", align 1
@1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

define void @main.init() {
_llgo_0:
  %0 = load i1, ptr @"main.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"main.init$guard", align 1
  store i64 9223372036854775807, ptr @main.a, align 4
  store i64 -9223372036854775808, ptr @main.b, align 4
  store i64 -1, ptr @main.n, align 4
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @main() {
_llgo_0:
  call void @"github.com/goplus/llgo/internal/runtime.init"()
  call void @main.init()
  %0 = call ptr @"github.com/goplus/llgo/internal/runtime.Alloc"(i64 32)
  %1 = getelementptr inbounds i64, ptr %0, i64 0
  store i64 1, ptr %1, align 4
  %2 = getelementptr inbounds i64, ptr %0, i64 1
  store i64 2, ptr %2, align 4
  %3 = getelementptr inbounds i64, ptr %0, i64 2
  store i64 3, ptr %3, align 4
  %4 = getelementptr inbounds i64, ptr %0, i64 3
  store i64 4, ptr %4, align 4
  %5 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice"(ptr %0, i64 4, i64 4)
  %6 = alloca [4 x i64], align 8
  %7 = getelementptr inbounds i64, ptr %6, i64 0
  %8 = getelementptr inbounds i64, ptr %6, i64 1
  %9 = getelementptr inbounds i64, ptr %6, i64 2
  %10 = getelementptr inbounds i64, ptr %6, i64 3
  store i64 1, ptr %7, align 4
  store i64 2, ptr %8, align 4
  store i64 3, ptr %9, align 4
  store i64 4, ptr %10, align 4
  %11 = call i64 @"github.com/goplus/llgo/internal/runtime.SliceLen"(%"github.com/goplus/llgo/internal/runtime.Slice" %5)
  call void @main.out(i64 %11)
  %12 = call ptr @"github.com/goplus/llgo/internal/runtime.Alloc"(i64 32)
  %13 = getelementptr inbounds i64, ptr %12, i64 0
  store i64 1, ptr %13, align 4
  %14 = getelementptr inbounds i64, ptr %12, i64 1
  store i64 2, ptr %14, align 4
  %15 = getelementptr inbounds i64, ptr %12, i64 2
  store i64 3, ptr %15, align 4
  %16 = getelementptr inbounds i64, ptr %12, i64 3
  store i64 4, ptr %16, align 4
  %17 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice"(ptr %12, i64 4, i64 4)
  %18 = call i64 @"github.com/goplus/llgo/internal/runtime.SliceLen"(%"github.com/goplus/llgo/internal/runtime.Slice" %17)
  call void @main.out(i64 %18)
  call void @main.out(i64 4)
  call void @main.out(i64 4)
  call void @main.out(i64 4)
  %19 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @0, i64 5)
  call void @main.string_len(%"github.com/goplus/llgo/internal/runtime.String" %19)
  %20 = call i64 @"github.com/goplus/llgo/internal/runtime.SliceCap"(%"github.com/goplus/llgo/internal/runtime.Slice" %5)
  call void @main.out(i64 %20)
  call void @main.out(i64 4)
  call void @main.out(i64 4)
  ret void
}

define void @main.out(i64 %0) {
_llgo_0:
  %1 = call i32 (ptr, ...) @printf(ptr @1, i64 %0)
  ret void
}

define void @main.string_len(%"github.com/goplus/llgo/internal/runtime.String" %0) {
_llgo_0:
  %1 = call i64 @"github.com/goplus/llgo/internal/runtime.StringLen"(%"github.com/goplus/llgo/internal/runtime.String" %0)
  call void @main.out(i64 %1)
  ret void
}

declare void @"github.com/goplus/llgo/internal/runtime.init"()

declare ptr @"github.com/goplus/llgo/internal/runtime.Alloc"(i64)

declare %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice"(ptr, i64, i64)

declare i64 @"github.com/goplus/llgo/internal/runtime.SliceLen"(%"github.com/goplus/llgo/internal/runtime.Slice")

declare %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr, i64)

declare i64 @"github.com/goplus/llgo/internal/runtime.SliceCap"(%"github.com/goplus/llgo/internal/runtime.Slice")

declare i32 @printf(ptr, ...)

declare i64 @"github.com/goplus/llgo/internal/runtime.StringLen"(%"github.com/goplus/llgo/internal/runtime.String")
