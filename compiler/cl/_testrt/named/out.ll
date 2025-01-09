; ModuleID = 'main'
source_filename = "main"

%main.mspan = type { ptr, ptr, ptr, %main.minfo, i64, { ptr, ptr } }
%main.minfo = type { ptr, i64 }
%main.mSpanList = type { ptr, ptr }

@"main.init$guard" = global i1 false, align 1
@__llgo_argc = global i32 0, align 4
@__llgo_argv = global ptr null, align 8
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

define i32 @main(i32 %0, ptr %1) {
_llgo_0:
  store i32 %0, ptr @__llgo_argc, align 4
  store ptr %1, ptr @__llgo_argv, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.init"()
  call void @main.init()
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 64)
  store ptr %3, ptr %2, align 8
  %4 = load ptr, ptr %2, align 8
  %5 = getelementptr inbounds %main.mspan, ptr %4, i32 0, i32 4
  store i64 100, ptr %5, align 4
  %6 = load ptr, ptr %2, align 8
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 64)
  %8 = getelementptr inbounds %main.mspan, ptr %6, i32 0, i32 0
  store ptr %7, ptr %8, align 8
  %9 = load ptr, ptr %2, align 8
  %10 = getelementptr inbounds %main.mspan, ptr %9, i32 0, i32 0
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %main.mspan, ptr %11, i32 0, i32 4
  store i64 200, ptr %12, align 4
  %13 = load ptr, ptr %2, align 8
  %14 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  %15 = getelementptr inbounds %main.mspan, ptr %13, i32 0, i32 2
  store ptr %14, ptr %15, align 8
  %16 = load ptr, ptr %2, align 8
  %17 = getelementptr inbounds %main.mspan, ptr %16, i32 0, i32 2
  %18 = load ptr, ptr %17, align 8
  %19 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 64)
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
  %35 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %36 = getelementptr inbounds { ptr }, ptr %35, i32 0, i32 0
  store ptr %2, ptr %36, align 8
  %37 = insertvalue { ptr, ptr } { ptr @"main.main$1", ptr undef }, ptr %35, 1
  %38 = getelementptr inbounds %main.mspan, ptr %34, i32 0, i32 5
  store { ptr, ptr } %37, ptr %38, align 8
  %39 = load ptr, ptr %2, align 8
  %40 = getelementptr inbounds %main.mspan, ptr %39, i32 0, i32 0
  %41 = load ptr, ptr %40, align 8
  %42 = getelementptr inbounds %main.mspan, ptr %41, i32 0, i32 4
  %43 = load i64, ptr %42, align 4
  %44 = load ptr, ptr %2, align 8
  %45 = getelementptr inbounds %main.mspan, ptr %44, i32 0, i32 2
  %46 = load ptr, ptr %45, align 8
  %47 = getelementptr inbounds %main.mSpanList, ptr %46, i32 0, i32 1
  %48 = load ptr, ptr %47, align 8
  %49 = getelementptr inbounds %main.mspan, ptr %48, i32 0, i32 4
  %50 = load i64, ptr %49, align 4
  %51 = load ptr, ptr %2, align 8
  %52 = getelementptr inbounds %main.mspan, ptr %51, i32 0, i32 3
  %53 = getelementptr inbounds %main.minfo, ptr %52, i32 0, i32 1
  %54 = load i64, ptr %53, align 4
  %55 = load ptr, ptr %2, align 8
  %56 = getelementptr inbounds %main.mspan, ptr %55, i32 0, i32 3
  %57 = getelementptr inbounds %main.minfo, ptr %56, i32 0, i32 0
  %58 = load ptr, ptr %57, align 8
  %59 = getelementptr inbounds %main.mspan, ptr %58, i32 0, i32 4
  %60 = load i64, ptr %59, align 4
  %61 = load ptr, ptr %2, align 8
  %62 = getelementptr inbounds %main.mspan, ptr %61, i32 0, i32 5
  %63 = load { ptr, ptr }, ptr %62, align 8
  %64 = extractvalue { ptr, ptr } %63, 1
  %65 = extractvalue { ptr, ptr } %63, 0
  %66 = call i64 %65(ptr %64, i64 -2)
  %67 = load ptr, ptr %2, align 8
  %68 = getelementptr inbounds %main.mspan, ptr %67, i32 0, i32 3
  %69 = getelementptr inbounds %main.minfo, ptr %68, i32 0, i32 0
  %70 = load ptr, ptr %69, align 8
  %71 = getelementptr inbounds %main.mspan, ptr %70, i32 0, i32 5
  %72 = load { ptr, ptr }, ptr %71, align 8
  %73 = extractvalue { ptr, ptr } %72, 1
  %74 = extractvalue { ptr, ptr } %72, 0
  %75 = call i64 %74(ptr %73, i64 -3)
  %76 = call i32 (ptr, ...) @printf(ptr @0, i64 %43, i64 %50, i64 %54, i64 %60, i64 %66, i64 %75)
  ret i32 0
}

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

declare void @"github.com/goplus/llgo/runtime/internal/runtime.init"()

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare i32 @printf(ptr, ...)
