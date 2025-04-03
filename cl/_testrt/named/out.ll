; ModuleID = 'github.com/goplus/llgo/cl/_testrt/named'
source_filename = "github.com/goplus/llgo/cl/_testrt/named"

%"github.com/goplus/llgo/cl/_testrt/named.mspan" = type { ptr, ptr, ptr, %"github.com/goplus/llgo/cl/_testrt/named.minfo", i64, { ptr, ptr } }
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
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 64)
  store ptr %1, ptr %0, align 8
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %2, i32 0, i32 4
  store i64 100, ptr %3, align 4
  %4 = load ptr, ptr %0, align 8
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 64)
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
  %17 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 64)
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
  %33 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %34 = getelementptr inbounds { ptr }, ptr %33, i32 0, i32 0
  store ptr %0, ptr %34, align 8
  %35 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testrt/named.main$1", ptr undef }, ptr %33, 1
  %36 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %32, i32 0, i32 5
  store { ptr, ptr } %35, ptr %36, align 8
  %37 = load ptr, ptr %0, align 8
  %38 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %37, i32 0, i32 0
  %39 = load ptr, ptr %38, align 8
  %40 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %39, i32 0, i32 4
  %41 = load i64, ptr %40, align 4
  %42 = load ptr, ptr %0, align 8
  %43 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %42, i32 0, i32 2
  %44 = load ptr, ptr %43, align 8
  %45 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mSpanList", ptr %44, i32 0, i32 1
  %46 = load ptr, ptr %45, align 8
  %47 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %46, i32 0, i32 4
  %48 = load i64, ptr %47, align 4
  %49 = load ptr, ptr %0, align 8
  %50 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %49, i32 0, i32 3
  %51 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.minfo", ptr %50, i32 0, i32 1
  %52 = load i64, ptr %51, align 4
  %53 = load ptr, ptr %0, align 8
  %54 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %53, i32 0, i32 3
  %55 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.minfo", ptr %54, i32 0, i32 0
  %56 = load ptr, ptr %55, align 8
  %57 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %56, i32 0, i32 4
  %58 = load i64, ptr %57, align 4
  %59 = load ptr, ptr %0, align 8
  %60 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %59, i32 0, i32 5
  %61 = load { ptr, ptr }, ptr %60, align 8
  %62 = extractvalue { ptr, ptr } %61, 1
  %63 = extractvalue { ptr, ptr } %61, 0
  %64 = call i64 %63(ptr %62, i64 -2)
  %65 = load ptr, ptr %0, align 8
  %66 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %65, i32 0, i32 3
  %67 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.minfo", ptr %66, i32 0, i32 0
  %68 = load ptr, ptr %67, align 8
  %69 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %68, i32 0, i32 5
  %70 = load { ptr, ptr }, ptr %69, align 8
  %71 = extractvalue { ptr, ptr } %70, 1
  %72 = extractvalue { ptr, ptr } %70, 0
  %73 = call i64 %72(ptr %71, i64 -3)
  %74 = call i32 (ptr, ...) @printf(ptr @0, i64 %41, i64 %48, i64 %52, i64 %58, i64 %64, i64 %73)
  ret void
}

define i64 @"github.com/goplus/llgo/cl/_testrt/named.main$1"(ptr %0, i64 %1) {
_llgo_0:
  %2 = load { ptr }, ptr %0, align 8
  %3 = extractvalue { ptr } %2, 0
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %4, i32 0, i32 4
  %6 = load i64, ptr %5, align 4
  %7 = mul i64 %6, %1
  ret i64 %7
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare i32 @printf(ptr, ...)
