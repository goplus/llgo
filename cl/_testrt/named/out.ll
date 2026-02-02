; ModuleID = 'github.com/goplus/llgo/cl/_testrt/named'
source_filename = "github.com/goplus/llgo/cl/_testrt/named"

%"github.com/goplus/llgo/cl/_testrt/named.mspan" = type { ptr, ptr, ptr, %"github.com/goplus/llgo/cl/_testrt/named.minfo", i64, ptr }
%"github.com/goplus/llgo/cl/_testrt/named.minfo" = type { ptr, i64 }
%"github.com/goplus/llgo/cl/_testrt/named.mSpanList" = type { ptr, ptr }

@"github.com/goplus/llgo/cl/_testrt/named.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [19 x i8] c"%d %d %d %d %d %d\0A\00", align 1

define void @"github.com/goplus/llgo/cl/_testrt/named.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/named.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/named.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/named.main"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 56)
  store ptr %1, ptr %0, align 8
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %2, i32 0, i32 4
  store i64 100, ptr %3, align 4
  %4 = load ptr, ptr %0, align 8
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 56)
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %4, i32 0, i32 0
  store ptr %5, ptr %6, align 8
  %7 = load ptr, ptr %0, align 8
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %7, i32 0, i32 0
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %9, i32 0, i32 4
  store i64 200, ptr %10, align 4
  %11 = load ptr, ptr %0, align 8
  %12 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  %13 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %11, i32 0, i32 2
  store ptr %12, ptr %13, align 8
  %14 = load ptr, ptr %0, align 8
  %15 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %14, i32 0, i32 2
  %16 = load ptr, ptr %15, align 8
  %17 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 56)
  %18 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mSpanList", ptr %16, i32 0, i32 1
  store ptr %17, ptr %18, align 8
  %19 = load ptr, ptr %0, align 8
  %20 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %19, i32 0, i32 2
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mSpanList", ptr %21, i32 0, i32 1
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %23, i32 0, i32 4
  store i64 300, ptr %24, align 4
  %25 = load ptr, ptr %0, align 8
  %26 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %25, i32 0, i32 3
  %27 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.minfo", ptr %26, i32 0, i32 1
  store i64 10, ptr %27, align 4
  %28 = load ptr, ptr %0, align 8
  %29 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %28, i32 0, i32 3
  %30 = load ptr, ptr %0, align 8
  %31 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.minfo", ptr %29, i32 0, i32 0
  store ptr %30, ptr %31, align 8
  %32 = load ptr, ptr %0, align 8
  %33 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %34 = getelementptr inbounds { ptr, i64, ptr }, ptr %33, i32 0, i32 0
  store ptr @"github.com/goplus/llgo/cl/_testrt/named.main$1", ptr %34, align 8
  %35 = getelementptr inbounds { ptr, i64, ptr }, ptr %33, i32 0, i32 1
  store i64 1, ptr %35, align 4
  %36 = getelementptr inbounds { ptr, i64, ptr }, ptr %33, i32 0, i32 2
  store ptr %0, ptr %36, align 8
  %37 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %32, i32 0, i32 5
  store ptr %33, ptr %37, align 8
  %38 = load ptr, ptr %0, align 8
  %39 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %38, i32 0, i32 0
  %40 = load ptr, ptr %39, align 8
  %41 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %40, i32 0, i32 4
  %42 = load i64, ptr %41, align 4
  %43 = load ptr, ptr %0, align 8
  %44 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %43, i32 0, i32 2
  %45 = load ptr, ptr %44, align 8
  %46 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mSpanList", ptr %45, i32 0, i32 1
  %47 = load ptr, ptr %46, align 8
  %48 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %47, i32 0, i32 4
  %49 = load i64, ptr %48, align 4
  %50 = load ptr, ptr %0, align 8
  %51 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %50, i32 0, i32 3
  %52 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.minfo", ptr %51, i32 0, i32 1
  %53 = load i64, ptr %52, align 4
  %54 = load ptr, ptr %0, align 8
  %55 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %54, i32 0, i32 3
  %56 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.minfo", ptr %55, i32 0, i32 0
  %57 = load ptr, ptr %56, align 8
  %58 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %57, i32 0, i32 4
  %59 = load i64, ptr %58, align 4
  %60 = load ptr, ptr %0, align 8
  %61 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %60, i32 0, i32 5
  %62 = load ptr, ptr %61, align 8
  %63 = load ptr, ptr %62, align 8
  %64 = getelementptr i8, ptr %62, i64 16
  call void asm sideeffect "mov x26, $0", "r,~{x26},~{memory}"(ptr %64)
  %65 = call i64 %63(i64 -2)
  %66 = load ptr, ptr %0, align 8
  %67 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %66, i32 0, i32 3
  %68 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.minfo", ptr %67, i32 0, i32 0
  %69 = load ptr, ptr %68, align 8
  %70 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %69, i32 0, i32 5
  %71 = load ptr, ptr %70, align 8
  %72 = load ptr, ptr %71, align 8
  %73 = getelementptr i8, ptr %71, i64 16
  call void asm sideeffect "mov x26, $0", "r,~{x26},~{memory}"(ptr %73)
  %74 = call i64 %72(i64 -3)
  %75 = call i32 (ptr, ...) @printf(ptr @0, i64 %42, i64 %49, i64 %53, i64 %59, i64 %65, i64 %74)
  ret void
}

define i64 @"github.com/goplus/llgo/cl/_testrt/named.main$1"(i64 %0) {
_llgo_0:
  %1 = call ptr asm sideeffect "mov $0, x26", "=r,~{memory}"()
  %2 = load { ptr }, ptr %1, align 8
  %3 = extractvalue { ptr } %2, 0
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %4, i32 0, i32 4
  %6 = load i64, ptr %5, align 4
  %7 = mul i64 %6, %0
  ret i64 %7
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare i32 @printf(ptr, ...)
