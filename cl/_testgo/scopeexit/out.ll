; ModuleID = 'main'
source_filename = "main"

%main.RefObj = type { i32, double }

@"main.init$guard" = global ptr null
@__llgo_argc = global ptr null
@__llgo_argv = global ptr null
@0 = private unnamed_addr constant [10 x i8] c"Hello %v\0A\00", align 1

define ptr @main.Float(double %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 16)
  %2 = getelementptr inbounds %main.RefObj, ptr %1, i32 0, i32 0
  %3 = getelementptr inbounds %main.RefObj, ptr %1, i32 0, i32 1
  store i32 1, ptr %2, align 4
  store double %0, ptr %3, align 8
  ret ptr %1
}

define void @"main.(*RefObj).DecRef"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %main.RefObj, ptr %0, i32 0, i32 0
  %2 = load i32, ptr %1, align 4
  %3 = sub i32 %2, 1
  %4 = getelementptr inbounds %main.RefObj, ptr %0, i32 0, i32 0
  store i32 %3, ptr %4, align 4
  ret void
}

define void @"main.(*RefObj).IncRef"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %main.RefObj, ptr %0, i32 0, i32 0
  %2 = load i32, ptr %1, align 4
  %3 = add i32 %2, 1
  %4 = getelementptr inbounds %main.RefObj, ptr %0, i32 0, i32 0
  store i32 %3, ptr %4, align 4
  ret void
}

define double @"main.(*RefObj).Value"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %main.RefObj, ptr %0, i32 0, i32 1
  %2 = load double, ptr %1, align 8
  ret double %2
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

define i32 @main(i32 %0, ptr %1) {
_llgo_0:
  store i32 %0, ptr @__llgo_argc, align 4
  store ptr %1, ptr @__llgo_argv, align 8
  call void @"github.com/goplus/llgo/internal/runtime.init"()
  call void @main.init()
  %2 = call ptr @main.Float(double 3.140000e+00)
  %3 = call double @"main.(*RefObj).Value"(ptr %2)
  %4 = call i32 (ptr, ...) @printf(ptr @0, double %3)
  ret i32 0
}

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64)

declare void @"github.com/goplus/llgo/internal/runtime.init"()

declare i32 @printf(ptr, ...)
