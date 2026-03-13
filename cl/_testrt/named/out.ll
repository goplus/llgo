; ModuleID = 'github.com/goplus/llgo/cl/_testrt/named'
source_filename = "github.com/goplus/llgo/cl/_testrt/named"

%"github.com/goplus/llgo/cl/_testrt/named.mspan" = type { ptr, ptr, ptr, %"github.com/goplus/llgo/cl/_testrt/named.minfo", i64, { ptr, ptr } }
%"github.com/goplus/llgo/cl/_testrt/named.minfo" = type { ptr, i64 }
%"github.com/goplus/llgo/cl/_testrt/named.mSpanList" = type { ptr, ptr }

@"github.com/goplus/llgo/cl/_testrt/named.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [19 x i8] c"%d %d %d %d %d %d\0A\00", align 1

define void @"github.com/goplus/llgo/cl/_testrt/named.init"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
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
  %2 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %2)
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %3, i32 0, i32 4
  store i64 100, ptr %4, align 4
  %5 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %5)
  %6 = load ptr, ptr %0, align 8
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 64)
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %6, i32 0, i32 0
  store ptr %7, ptr %8, align 8
  %9 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %9)
  %10 = load ptr, ptr %0, align 8
  %11 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %10, i32 0, i32 0
  %12 = icmp eq ptr %11, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %12)
  %13 = load ptr, ptr %11, align 8
  %14 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %13, i32 0, i32 4
  store i64 200, ptr %14, align 4
  %15 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %15)
  %16 = load ptr, ptr %0, align 8
  %17 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  %18 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %16, i32 0, i32 2
  store ptr %17, ptr %18, align 8
  %19 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %19)
  %20 = load ptr, ptr %0, align 8
  %21 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %20, i32 0, i32 2
  %22 = icmp eq ptr %21, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %22)
  %23 = load ptr, ptr %21, align 8
  %24 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 64)
  %25 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mSpanList", ptr %23, i32 0, i32 1
  store ptr %24, ptr %25, align 8
  %26 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %26)
  %27 = load ptr, ptr %0, align 8
  %28 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %27, i32 0, i32 2
  %29 = icmp eq ptr %28, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %29)
  %30 = load ptr, ptr %28, align 8
  %31 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mSpanList", ptr %30, i32 0, i32 1
  %32 = icmp eq ptr %31, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %32)
  %33 = load ptr, ptr %31, align 8
  %34 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %33, i32 0, i32 4
  store i64 300, ptr %34, align 4
  %35 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %35)
  %36 = load ptr, ptr %0, align 8
  %37 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %36, i32 0, i32 3
  %38 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.minfo", ptr %37, i32 0, i32 1
  store i64 10, ptr %38, align 4
  %39 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %39)
  %40 = load ptr, ptr %0, align 8
  %41 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %40, i32 0, i32 3
  %42 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %42)
  %43 = load ptr, ptr %0, align 8
  %44 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.minfo", ptr %41, i32 0, i32 0
  store ptr %43, ptr %44, align 8
  %45 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %45)
  %46 = load ptr, ptr %0, align 8
  %47 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %48 = getelementptr inbounds { ptr }, ptr %47, i32 0, i32 0
  store ptr %0, ptr %48, align 8
  %49 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testrt/named.main$1", ptr undef }, ptr %47, 1
  %50 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %46, i32 0, i32 5
  store { ptr, ptr } %49, ptr %50, align 8
  %51 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %51)
  %52 = load ptr, ptr %0, align 8
  %53 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %52, i32 0, i32 0
  %54 = icmp eq ptr %53, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %54)
  %55 = load ptr, ptr %53, align 8
  %56 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %55, i32 0, i32 4
  %57 = icmp eq ptr %56, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %57)
  %58 = load i64, ptr %56, align 4
  %59 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %59)
  %60 = load ptr, ptr %0, align 8
  %61 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %60, i32 0, i32 2
  %62 = icmp eq ptr %61, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %62)
  %63 = load ptr, ptr %61, align 8
  %64 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mSpanList", ptr %63, i32 0, i32 1
  %65 = icmp eq ptr %64, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %65)
  %66 = load ptr, ptr %64, align 8
  %67 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %66, i32 0, i32 4
  %68 = icmp eq ptr %67, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %68)
  %69 = load i64, ptr %67, align 4
  %70 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %70)
  %71 = load ptr, ptr %0, align 8
  %72 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %71, i32 0, i32 3
  %73 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.minfo", ptr %72, i32 0, i32 1
  %74 = icmp eq ptr %73, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %74)
  %75 = load i64, ptr %73, align 4
  %76 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %76)
  %77 = load ptr, ptr %0, align 8
  %78 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %77, i32 0, i32 3
  %79 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.minfo", ptr %78, i32 0, i32 0
  %80 = icmp eq ptr %79, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %80)
  %81 = load ptr, ptr %79, align 8
  %82 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %81, i32 0, i32 4
  %83 = icmp eq ptr %82, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %83)
  %84 = load i64, ptr %82, align 4
  %85 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %85)
  %86 = load ptr, ptr %0, align 8
  %87 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %86, i32 0, i32 5
  %88 = icmp eq ptr %87, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %88)
  %89 = load { ptr, ptr }, ptr %87, align 8
  %90 = extractvalue { ptr, ptr } %89, 1
  %91 = extractvalue { ptr, ptr } %89, 0
  %92 = call i64 %91(ptr %90, i64 -2)
  %93 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %93)
  %94 = load ptr, ptr %0, align 8
  %95 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %94, i32 0, i32 3
  %96 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.minfo", ptr %95, i32 0, i32 0
  %97 = icmp eq ptr %96, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %97)
  %98 = load ptr, ptr %96, align 8
  %99 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %98, i32 0, i32 5
  %100 = icmp eq ptr %99, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %100)
  %101 = load { ptr, ptr }, ptr %99, align 8
  %102 = extractvalue { ptr, ptr } %101, 1
  %103 = extractvalue { ptr, ptr } %101, 0
  %104 = call i64 %103(ptr %102, i64 -3)
  %105 = call i32 (ptr, ...) @printf(ptr @0, i64 %58, i64 %69, i64 %75, i64 %84, i64 %92, i64 %104)
  ret void
}

define i64 @"github.com/goplus/llgo/cl/_testrt/named.main$1"(ptr %0, i64 %1) {
_llgo_0:
  %2 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %2)
  %3 = load { ptr }, ptr %0, align 8
  %4 = extractvalue { ptr } %3, 0
  %5 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %5)
  %6 = load ptr, ptr %4, align 8
  %7 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %6, i32 0, i32 4
  %8 = icmp eq ptr %7, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %8)
  %9 = load i64, ptr %7, align 4
  %10 = mul i64 %9, %1
  ret i64 %10
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare i32 @printf(ptr, ...)
