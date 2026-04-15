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
  %2 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %2)
  %3 = load ptr, ptr %0, align 8
  %4 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %4)
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %3, i32 0, i32 4
  store i64 100, ptr %5, align 4
  %6 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %6)
  %7 = load ptr, ptr %0, align 8
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 64)
  %9 = icmp eq ptr %7, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %9)
  %10 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %7, i32 0, i32 0
  store ptr %8, ptr %10, align 8
  %11 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %11)
  %12 = load ptr, ptr %0, align 8
  %13 = icmp eq ptr %12, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %13)
  %14 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %12, i32 0, i32 0
  %15 = icmp eq ptr %14, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %15)
  %16 = load ptr, ptr %14, align 8
  %17 = icmp eq ptr %16, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %17)
  %18 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %16, i32 0, i32 4
  store i64 200, ptr %18, align 4
  %19 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %19)
  %20 = load ptr, ptr %0, align 8
  %21 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  %22 = icmp eq ptr %20, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %22)
  %23 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %20, i32 0, i32 2
  store ptr %21, ptr %23, align 8
  %24 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %24)
  %25 = load ptr, ptr %0, align 8
  %26 = icmp eq ptr %25, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %26)
  %27 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %25, i32 0, i32 2
  %28 = icmp eq ptr %27, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %28)
  %29 = load ptr, ptr %27, align 8
  %30 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 64)
  %31 = icmp eq ptr %29, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %31)
  %32 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mSpanList", ptr %29, i32 0, i32 1
  store ptr %30, ptr %32, align 8
  %33 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %33)
  %34 = load ptr, ptr %0, align 8
  %35 = icmp eq ptr %34, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %35)
  %36 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %34, i32 0, i32 2
  %37 = icmp eq ptr %36, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %37)
  %38 = load ptr, ptr %36, align 8
  %39 = icmp eq ptr %38, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %39)
  %40 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mSpanList", ptr %38, i32 0, i32 1
  %41 = icmp eq ptr %40, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %41)
  %42 = load ptr, ptr %40, align 8
  %43 = icmp eq ptr %42, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %43)
  %44 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %42, i32 0, i32 4
  store i64 300, ptr %44, align 4
  %45 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %45)
  %46 = load ptr, ptr %0, align 8
  %47 = icmp eq ptr %46, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %47)
  %48 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %46, i32 0, i32 3
  %49 = icmp eq ptr %48, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %49)
  %50 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.minfo", ptr %48, i32 0, i32 1
  store i64 10, ptr %50, align 4
  %51 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %51)
  %52 = load ptr, ptr %0, align 8
  %53 = icmp eq ptr %52, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %53)
  %54 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %52, i32 0, i32 3
  %55 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %55)
  %56 = load ptr, ptr %0, align 8
  %57 = icmp eq ptr %54, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %57)
  %58 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.minfo", ptr %54, i32 0, i32 0
  store ptr %56, ptr %58, align 8
  %59 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %59)
  %60 = load ptr, ptr %0, align 8
  %61 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %62 = getelementptr inbounds { ptr }, ptr %61, i32 0, i32 0
  store ptr %0, ptr %62, align 8
  %63 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testrt/named.main$1", ptr undef }, ptr %61, 1
  %64 = icmp eq ptr %60, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %64)
  %65 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %60, i32 0, i32 5
  store { ptr, ptr } %63, ptr %65, align 8
  %66 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %66)
  %67 = load ptr, ptr %0, align 8
  %68 = icmp eq ptr %67, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %68)
  %69 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %67, i32 0, i32 0
  %70 = icmp eq ptr %69, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %70)
  %71 = load ptr, ptr %69, align 8
  %72 = icmp eq ptr %71, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %72)
  %73 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %71, i32 0, i32 4
  %74 = icmp eq ptr %73, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %74)
  %75 = load i64, ptr %73, align 4
  %76 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %76)
  %77 = load ptr, ptr %0, align 8
  %78 = icmp eq ptr %77, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %78)
  %79 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %77, i32 0, i32 2
  %80 = icmp eq ptr %79, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %80)
  %81 = load ptr, ptr %79, align 8
  %82 = icmp eq ptr %81, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %82)
  %83 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mSpanList", ptr %81, i32 0, i32 1
  %84 = icmp eq ptr %83, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %84)
  %85 = load ptr, ptr %83, align 8
  %86 = icmp eq ptr %85, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %86)
  %87 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %85, i32 0, i32 4
  %88 = icmp eq ptr %87, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %88)
  %89 = load i64, ptr %87, align 4
  %90 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %90)
  %91 = load ptr, ptr %0, align 8
  %92 = icmp eq ptr %91, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %92)
  %93 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %91, i32 0, i32 3
  %94 = icmp eq ptr %93, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %94)
  %95 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.minfo", ptr %93, i32 0, i32 1
  %96 = icmp eq ptr %95, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %96)
  %97 = load i64, ptr %95, align 4
  %98 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %98)
  %99 = load ptr, ptr %0, align 8
  %100 = icmp eq ptr %99, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %100)
  %101 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %99, i32 0, i32 3
  %102 = icmp eq ptr %101, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %102)
  %103 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.minfo", ptr %101, i32 0, i32 0
  %104 = icmp eq ptr %103, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %104)
  %105 = load ptr, ptr %103, align 8
  %106 = icmp eq ptr %105, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %106)
  %107 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %105, i32 0, i32 4
  %108 = icmp eq ptr %107, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %108)
  %109 = load i64, ptr %107, align 4
  %110 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %110)
  %111 = load ptr, ptr %0, align 8
  %112 = icmp eq ptr %111, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %112)
  %113 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %111, i32 0, i32 5
  %114 = icmp eq ptr %113, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %114)
  %115 = load { ptr, ptr }, ptr %113, align 8
  %116 = extractvalue { ptr, ptr } %115, 1
  %117 = extractvalue { ptr, ptr } %115, 0
  %118 = call i64 %117(ptr %116, i64 -2)
  %119 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %119)
  %120 = load ptr, ptr %0, align 8
  %121 = icmp eq ptr %120, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %121)
  %122 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %120, i32 0, i32 3
  %123 = icmp eq ptr %122, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %123)
  %124 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.minfo", ptr %122, i32 0, i32 0
  %125 = icmp eq ptr %124, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %125)
  %126 = load ptr, ptr %124, align 8
  %127 = icmp eq ptr %126, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %127)
  %128 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %126, i32 0, i32 5
  %129 = icmp eq ptr %128, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %129)
  %130 = load { ptr, ptr }, ptr %128, align 8
  %131 = extractvalue { ptr, ptr } %130, 1
  %132 = extractvalue { ptr, ptr } %130, 0
  %133 = call i64 %132(ptr %131, i64 -3)
  %134 = call i32 (ptr, ...) @printf(ptr @0, i64 %75, i64 %89, i64 %97, i64 %109, i64 %118, i64 %133)
  ret void
}

define i64 @"github.com/goplus/llgo/cl/_testrt/named.main$1"(ptr %0, i64 %1) {
_llgo_0:
  %2 = load { ptr }, ptr %0, align 8
  %3 = extractvalue { ptr } %2, 0
  %4 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %4)
  %5 = load ptr, ptr %3, align 8
  %6 = icmp eq ptr %5, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %6)
  %7 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %5, i32 0, i32 4
  %8 = icmp eq ptr %7, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %8)
  %9 = load i64, ptr %7, align 4
  %10 = mul i64 %9, %1
  ret i64 %10
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare i32 @printf(ptr, ...)
