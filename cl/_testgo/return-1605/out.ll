; ModuleID = 'github.com/goplus/llgo/cl/_testgo/return-1605'
source_filename = "github.com/goplus/llgo/cl/_testgo/return-1605"

%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/cl/_testgo/return-1605.T" = type { %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }

@"github.com/goplus/llgo/cl/_testgo/return-1605.init$guard" = global i1 false, align 1

define %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/cl/_testgo/return-1605.a"() {
_llgo_0:
  %0 = alloca %"github.com/goplus/llgo/cl/_testgo/return-1605.T", align 8
  call void @llvm.memset(ptr %0, i8 0, i64 24, i1 false)
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/return-1605.T", ptr %0, i32 0, i32 0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  %3 = getelementptr inbounds i64, ptr %2, i64 0
  store i64 1, ptr %3, align 4
  %4 = getelementptr inbounds i64, ptr %2, i64 1
  store i64 2, ptr %4, align 4
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %2, 0
  %6 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %5, i64 2, 1
  %7 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %6, i64 2, 2
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, ptr %1, align 8
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/return-1605.T", ptr %0, i32 0, i32 0
  %9 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %8, align 8
  %10 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 24)
  %11 = getelementptr inbounds i64, ptr %10, i64 0
  store i64 1, ptr %11, align 4
  %12 = getelementptr inbounds i64, ptr %10, i64 1
  store i64 2, ptr %12, align 4
  %13 = getelementptr inbounds i64, ptr %10, i64 2
  store i64 3, ptr %13, align 4
  %14 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %10, 0
  %15 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %14, i64 3, 1
  %16 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %15, i64 3, 2
  %17 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/return-1605.T", ptr %0, i32 0, i32 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %16, ptr %17, align 8
  ret %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %9
}

define { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", i1 } @"github.com/goplus/llgo/cl/_testgo/return-1605.b"() {
_llgo_0:
  %0 = alloca %"github.com/goplus/llgo/cl/_testgo/return-1605.T", align 8
  call void @llvm.memset(ptr %0, i8 0, i64 24, i1 false)
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/return-1605.T", ptr %0, i32 0, i32 0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  %3 = getelementptr inbounds i64, ptr %2, i64 0
  store i64 1, ptr %3, align 4
  %4 = getelementptr inbounds i64, ptr %2, i64 1
  store i64 2, ptr %4, align 4
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %2, 0
  %6 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %5, i64 2, 1
  %7 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %6, i64 2, 2
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, ptr %1, align 8
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/return-1605.T", ptr %0, i32 0, i32 0
  %9 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %8, align 8
  %10 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 24)
  %11 = getelementptr inbounds i64, ptr %10, i64 0
  store i64 1, ptr %11, align 4
  %12 = getelementptr inbounds i64, ptr %10, i64 1
  store i64 2, ptr %12, align 4
  %13 = getelementptr inbounds i64, ptr %10, i64 2
  store i64 3, ptr %13, align 4
  %14 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %10, 0
  %15 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %14, i64 3, 1
  %16 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %15, i64 3, 2
  %17 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/return-1605.T", ptr %0, i32 0, i32 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %16, ptr %17, align 8
  %18 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", i1 } undef, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %9, 0
  %19 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", i1 } %18, i1 true, 1
  ret { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", i1 } %19
}

define void @"github.com/goplus/llgo/cl/_testgo/return-1605.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testgo/return-1605.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testgo/return-1605.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/return-1605.main"() {
_llgo_0:
  %0 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/cl/_testgo/return-1605.a"()
  %1 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %0, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %2 = call { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", i1 } @"github.com/goplus/llgo/cl/_testgo/return-1605.b"()
  %3 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", i1 } %2, 0
  %4 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", i1 } %2, 1
  %5 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %3, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
