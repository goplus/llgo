; ModuleID = 'main'
source_filename = "main"

%main.Foo = type { i32, i1 }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }

@"github.com/goplus/llgo/runtime/internal/runtime.cgoAlwaysFalse" = external global i1, align 1
@main.format = global [10 x i8] zeroinitializer, align 1
@"main.init$guard" = global i1 false, align 1
@__llgo_argc = global i32 0, align 4
@__llgo_argv = global ptr null, align 8

define void @main.Foo.Print(%main.Foo %0) {
_llgo_0:
  %1 = alloca %main.Foo, align 8
  call void @llvm.memset(ptr %1, i8 0, i64 8, i1 false)
  store %main.Foo %0, ptr %1, align 4
  %2 = getelementptr inbounds %main.Foo, ptr %1, i32 0, i32 1
  %3 = load i1, ptr %2, align 1
  br i1 %3, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %4 = getelementptr inbounds %main.Foo, ptr %1, i32 0, i32 0
  %5 = load i32, ptr %4, align 4
  call void (ptr, ...) @printf(ptr @main.format, i32 %5)
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"main.(*Foo).Print"(ptr %0) {
_llgo_0:
  %1 = load %main.Foo, ptr %0, align 4
  call void @main.Foo.Print(%main.Foo %1)
  ret void
}

define ptr @main._Cgo_ptr(ptr %0) {
_llgo_0:
  ret ptr %0
}

declare void @runtime.cgoUse(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

declare void @main._cgoCheckResult(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

define void @main.init() {
_llgo_0:
  %0 = load i1, ptr @"main.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"main.init$guard", align 1
  call void @syscall.init()
  store i8 72, ptr @main.format, align 1
  store i8 101, ptr getelementptr inbounds (i8, ptr @main.format, i64 1), align 1
  store i8 108, ptr getelementptr inbounds (i8, ptr @main.format, i64 2), align 1
  store i8 108, ptr getelementptr inbounds (i8, ptr @main.format, i64 3), align 1
  store i8 111, ptr getelementptr inbounds (i8, ptr @main.format, i64 4), align 1
  store i8 32, ptr getelementptr inbounds (i8, ptr @main.format, i64 5), align 1
  store i8 37, ptr getelementptr inbounds (i8, ptr @main.format, i64 6), align 1
  store i8 100, ptr getelementptr inbounds (i8, ptr @main.format, i64 7), align 1
  store i8 10, ptr getelementptr inbounds (i8, ptr @main.format, i64 8), align 1
  store i8 0, ptr getelementptr inbounds (i8, ptr @main.format, i64 9), align 1
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
  %2 = alloca %main.Foo, align 8
  call void @llvm.memset(ptr %2, i8 0, i64 8, i1 false)
  %3 = getelementptr inbounds %main.Foo, ptr %2, i32 0, i32 0
  %4 = getelementptr inbounds %main.Foo, ptr %2, i32 0, i32 1
  store i32 100, ptr %3, align 4
  store i1 true, ptr %4, align 1
  %5 = load %main.Foo, ptr %2, align 4
  call void @main.Foo.Print(%main.Foo %5)
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

declare void @printf(ptr, ...)

declare void @syscall.init()

declare void @"github.com/goplus/llgo/runtime/internal/runtime.init"()

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
