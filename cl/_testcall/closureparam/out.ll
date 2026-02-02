; ModuleID = 'github.com/goplus/llgo/cl/_testcall/closureparam'
source_filename = "github.com/goplus/llgo/cl/_testcall/closureparam"

%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }

@"github.com/goplus/llgo/cl/_testcall/closureparam.init$guard" = global i1 false, align 1

define void @"github.com/goplus/llgo/cl/_testcall/closureparam.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testcall/closureparam.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testcall/closureparam.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testcall/closureparam.main"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  store i64 3, ptr %0, align 4
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 24)
  %2 = getelementptr inbounds i64, ptr %1, i64 0
  store i64 1, ptr %2, align 4
  %3 = getelementptr inbounds i64, ptr %1, i64 1
  store i64 2, ptr %3, align 4
  %4 = getelementptr inbounds i64, ptr %1, i64 2
  store i64 3, ptr %4, align 4
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1, 0
  %6 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %5, i64 3, 1
  %7 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %6, i64 3, 2
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %9 = getelementptr inbounds { ptr, i64, ptr }, ptr %8, i32 0, i32 0
  store ptr @"github.com/goplus/llgo/cl/_testcall/closureparam.main$2", ptr %9, align 8
  %10 = getelementptr inbounds { ptr, i64, ptr }, ptr %8, i32 0, i32 1
  store i64 1, ptr %10, align 4
  %11 = getelementptr inbounds { ptr, i64, ptr }, ptr %8, i32 0, i32 2
  store ptr %0, ptr %11, align 8
  %12 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/cl/_testcall/closureparam.main$1"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, ptr %8)
  ret void
}

define %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/cl/_testcall/closureparam.main$1"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %0, ptr %1) {
_llgo_0:
  %2 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %0, 1
  %3 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.MakeSlice"(i64 %2, i64 %2, i64 8)
  %4 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %0, 1
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_2, %_llgo_0
  %5 = phi i64 [ -1, %_llgo_0 ], [ %6, %_llgo_2 ]
  %6 = add i64 %5, 1
  %7 = icmp slt i64 %6, %4
  br i1 %7, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  %8 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %0, 0
  %9 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %0, 1
  %10 = icmp slt i64 %6, 0
  %11 = icmp sge i64 %6, %9
  %12 = or i1 %11, %10
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %12)
  %13 = getelementptr inbounds i64, ptr %8, i64 %6
  %14 = load i64, ptr %13, align 4
  %15 = load ptr, ptr %1, align 8
  %16 = getelementptr i8, ptr %1, i64 16
  call void asm sideeffect "mov x26, $0", "r,~{x26},~{memory}"(ptr %16)
  %17 = call i64 %15(i64 %14)
  %18 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %3, 0
  %19 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %3, 1
  %20 = icmp slt i64 %6, 0
  %21 = icmp sge i64 %6, %19
  %22 = or i1 %21, %20
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %22)
  %23 = getelementptr inbounds i64, ptr %18, i64 %6
  store i64 %17, ptr %23, align 4
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_1
  ret %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %3
}

define i64 @"github.com/goplus/llgo/cl/_testcall/closureparam.main$2"(i64 %0) {
_llgo_0:
  %1 = call ptr asm sideeffect "mov $0, x26", "=r,~{memory}"()
  %2 = load { ptr }, ptr %1, align 8
  %3 = extractvalue { ptr } %2, 0
  %4 = load i64, ptr %3, align 4
  %5 = mul i64 %0, %4
  ret i64 %5
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.MakeSlice"(i64, i64, i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1)
