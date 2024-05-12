; ModuleID = 'main'
source_filename = "main"

%main.mspan = type { ptr, ptr, ptr, %main.minfo, i64, { ptr, ptr } }
%main.minfo = type { ptr, i64 }
%main.mSpanList = type { ptr, ptr }

@"main.init$guard" = global ptr null
@__llgo_argc = global ptr null
@__llgo_argv = global ptr null
@0 = private unnamed_addr constant [19 x i8] c"%d %d %d %d %d %d\0A\00", align 1

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

define void @main(i32 %0, ptr %1) {
_llgo_0:
  store i32 %0, ptr @__llgo_argc, align 4
  store ptr %1, ptr @__llgo_argv, align 8
  call void @"github.com/goplus/llgo/internal/runtime.init"()
  call void @main.init()
  %2 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 8)
  %3 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 64)
  store ptr %3, ptr %2, align 8
  %4 = load ptr, ptr %2, align 8
  %5 = getelementptr inbounds %main.mspan, ptr %4, i32 0, i32 4
  store i64 100, ptr %5, align 4
  %6 = load ptr, ptr %2, align 8
  %7 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 64)
  %8 = getelementptr inbounds %main.mspan, ptr %6, i32 0, i32 0
  store ptr %7, ptr %8, align 8
  %9 = load ptr, ptr %2, align 8
  %10 = getelementptr inbounds %main.mspan, ptr %9, i32 0, i32 0
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %main.mspan, ptr %11, i32 0, i32 4
  store i64 200, ptr %12, align 4
  %13 = load ptr, ptr %2, align 8
  %14 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 16)
  %15 = getelementptr inbounds %main.mspan, ptr %13, i32 0, i32 2
  store ptr %14, ptr %15, align 8
  %16 = load ptr, ptr %2, align 8
  %17 = getelementptr inbounds %main.mspan, ptr %16, i32 0, i32 2
  %18 = load ptr, ptr %17, align 8
  %19 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 64)
  %20 = getelementptr inbounds %main.mSpanList, ptr %18, i32 0, i32 1
  store ptr %19, ptr %20, align 8
  %21 = load ptr, ptr %2, align 8
  %22 = getelementptr inbounds %main.mspan, ptr %21, i32 0, i32 2
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds %main.mSpanList, ptr %23, i32 0, i32 1
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds %main.mspan, ptr %25, i32 0, i32 4
  store i64 300, ptr %26, align 4
  %27 = load ptr, ptr %2, align 8
  %28 = getelementptr inbounds %main.mspan, ptr %27, i32 0, i32 3
  %29 = getelementptr inbounds %main.minfo, ptr %28, i32 0, i32 1
  store i64 10, ptr %29, align 4
  %30 = load ptr, ptr %2, align 8
  %31 = getelementptr inbounds %main.mspan, ptr %30, i32 0, i32 3
  %32 = load ptr, ptr %2, align 8
  %33 = getelementptr inbounds %main.minfo, ptr %31, i32 0, i32 0
  store ptr %32, ptr %33, align 8
  %34 = load ptr, ptr %2, align 8
  %35 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %36 = getelementptr inbounds { ptr }, ptr %35, i32 0, i32 0
  store ptr %2, ptr %36, align 8
  %37 = alloca { ptr, ptr }, align 8
  %38 = getelementptr inbounds { ptr, ptr }, ptr %37, i32 0, i32 0
  store ptr @"main.main$1", ptr %38, align 8
  %39 = getelementptr inbounds { ptr, ptr }, ptr %37, i32 0, i32 1
  store ptr %35, ptr %39, align 8
  %40 = load { ptr, ptr }, ptr %37, align 8
  %41 = getelementptr inbounds %main.mspan, ptr %34, i32 0, i32 5
  store { ptr, ptr } %40, ptr %41, align 8
  %42 = load ptr, ptr %2, align 8
  %43 = getelementptr inbounds %main.mspan, ptr %42, i32 0, i32 0
  %44 = load ptr, ptr %43, align 8
  %45 = getelementptr inbounds %main.mspan, ptr %44, i32 0, i32 4
  %46 = load i64, ptr %45, align 4
  %47 = load ptr, ptr %2, align 8
  %48 = getelementptr inbounds %main.mspan, ptr %47, i32 0, i32 2
  %49 = load ptr, ptr %48, align 8
  %50 = getelementptr inbounds %main.mSpanList, ptr %49, i32 0, i32 1
  %51 = load ptr, ptr %50, align 8
  %52 = getelementptr inbounds %main.mspan, ptr %51, i32 0, i32 4
  %53 = load i64, ptr %52, align 4
  %54 = load ptr, ptr %2, align 8
  %55 = getelementptr inbounds %main.mspan, ptr %54, i32 0, i32 3
  %56 = getelementptr inbounds %main.minfo, ptr %55, i32 0, i32 1
  %57 = load i64, ptr %56, align 4
  %58 = load ptr, ptr %2, align 8
  %59 = getelementptr inbounds %main.mspan, ptr %58, i32 0, i32 3
  %60 = getelementptr inbounds %main.minfo, ptr %59, i32 0, i32 0
  %61 = load ptr, ptr %60, align 8
  %62 = getelementptr inbounds %main.mspan, ptr %61, i32 0, i32 4
  %63 = load i64, ptr %62, align 4
  %64 = load ptr, ptr %2, align 8
  %65 = getelementptr inbounds %main.mspan, ptr %64, i32 0, i32 5
  %66 = load { ptr, ptr }, ptr %65, align 8
  %67 = extractvalue { ptr, ptr } %66, 1
  %68 = extractvalue { ptr, ptr } %66, 0
  %69 = call i64 %68(ptr %67, i64 -2)
  %70 = load ptr, ptr %2, align 8
  %71 = getelementptr inbounds %main.mspan, ptr %70, i32 0, i32 3
  %72 = getelementptr inbounds %main.minfo, ptr %71, i32 0, i32 0
  %73 = load ptr, ptr %72, align 8
  %74 = getelementptr inbounds %main.mspan, ptr %73, i32 0, i32 5
  %75 = load { ptr, ptr }, ptr %74, align 8
  %76 = extractvalue { ptr, ptr } %75, 1
  %77 = extractvalue { ptr, ptr } %75, 0
  %78 = call i64 %77(ptr %76, i64 -3)
  %79 = call i32 (ptr, ...) @printf(ptr @0, i64 %46, i64 %53, i64 %57, i64 %63, i64 %69, i64 %78)
  ret void
}

declare void @"github.com/goplus/llgo/internal/runtime.init"()

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64)

define i64 @"main.main$1"(ptr %0, i64 %1) {
_llgo_0:
  %2 = load { ptr }, ptr %0, align 8
  %3 = extractvalue { ptr } %2, 0
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %main.mspan, ptr %4, i32 0, i32 4
  %6 = load i64, ptr %5, align 4
  %7 = mul i64 %6, %1
  ret i64 %7
}

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64)

declare i32 @printf(ptr, ...)
