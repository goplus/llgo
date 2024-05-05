; ModuleID = 'main'
source_filename = "main"

@"main.init$guard" = global ptr null
@0 = private unnamed_addr constant [7 x i8] c"Hello\0A\00", align 1
@1 = private unnamed_addr constant [10 x i8] c"callback\0A\00", align 1

define void @main.callback(ptr %0, { ptr, ptr } %1) {
_llgo_0:
  %2 = extractvalue { ptr, ptr } %1, 1
  %3 = extractvalue { ptr, ptr } %1, 0
  call void %3(ptr %2, ptr %0)
  ret void
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

define void @main() {
_llgo_0:
  call void @"github.com/goplus/llgo/internal/runtime.init"()
  call void @main.init()
  %0 = alloca { ptr, ptr }, align 8
  %1 = getelementptr inbounds { ptr, ptr }, ptr %0, i32 0, i32 0
  store ptr @__llgo_stub.main.print, ptr %1, align 8
  %2 = getelementptr inbounds { ptr, ptr }, ptr %0, i32 0, i32 1
  store ptr null, ptr %2, align 8
  %3 = load { ptr, ptr }, ptr %0, align 8
  call void @main.callback(ptr @0, { ptr, ptr } %3)
  %4 = alloca { ptr, ptr }, align 8
  %5 = getelementptr inbounds { ptr, ptr }, ptr %4, i32 0, i32 0
  store ptr @__llgo_stub.main.print, ptr %5, align 8
  %6 = getelementptr inbounds { ptr, ptr }, ptr %4, i32 0, i32 1
  store ptr null, ptr %6, align 8
  %7 = load { ptr, ptr }, ptr %4, align 8
  call void @main.callback(ptr @1, { ptr, ptr } %7)
  ret void
}

define void @main.print(ptr %0) {
_llgo_0:
  %1 = call i32 (ptr, ...) @printf(ptr %0)
  ret void
}

declare void @"github.com/goplus/llgo/internal/runtime.init"()

define linkonce void @__llgo_stub.main.print(ptr %0, ptr %1) {
_llgo_0:
  call void @main.print(ptr %1)
  ret void
}

declare i32 @printf(ptr, ...)
