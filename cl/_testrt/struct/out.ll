; ModuleID = 'github.com/goplus/llgo/cl/_testrt/struct'
source_filename = "github.com/goplus/llgo/cl/_testrt/struct"

%"github.com/goplus/llgo/cl/_testrt/struct.Foo" = type { i32, i1 }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }

@"github.com/goplus/llgo/runtime/internal/runtime.cgoAlwaysFalse" = external global i1, align 1
@"github.com/goplus/llgo/cl/_testrt/struct.format" = global [10 x i8] zeroinitializer, align 1
@"github.com/goplus/llgo/cl/_testrt/struct.init$guard" = global i1 false, align 1

define void @"github.com/goplus/llgo/cl/_testrt/struct.Foo.Print"(%"github.com/goplus/llgo/cl/_testrt/struct.Foo" %0) {
_llgo_0:
  %1 = alloca %"github.com/goplus/llgo/cl/_testrt/struct.Foo", align 8
  call void @llvm.memset(ptr %1, i8 0, i64 8, i1 false)
  store %"github.com/goplus/llgo/cl/_testrt/struct.Foo" %0, ptr %1, align 4
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/struct.Foo", ptr %1, i32 0, i32 1
  %3 = load i1, ptr %2, align 1
  br i1 %3, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/struct.Foo", ptr %1, i32 0, i32 0
  %5 = load i32, ptr %4, align 4
  %6 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store i32 %5, ptr %6, align 4
  call void @printf(ptr @"github.com/goplus/llgo/cl/_testrt/struct.format", ptr %6)
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/struct.(*Foo).Print"(ptr %0) {
_llgo_0:
  %1 = load %"github.com/goplus/llgo/cl/_testrt/struct.Foo", ptr %0, align 4
  call void @"github.com/goplus/llgo/cl/_testrt/struct.Foo.Print"(%"github.com/goplus/llgo/cl/_testrt/struct.Foo" %1)
  ret void
}

define ptr @"github.com/goplus/llgo/cl/_testrt/struct._Cgo_ptr"(ptr %0) {
_llgo_0:
  ret ptr %0
}

declare void @runtime.cgoUse(ptr)

declare void @runtime.cgoCheckResult(ptr)

define void @"github.com/goplus/llgo/cl/_testrt/struct.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/struct.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/struct.init$guard", align 1
  call void @syscall.init()
  store i8 72, ptr @"github.com/goplus/llgo/cl/_testrt/struct.format", align 1
  store i8 101, ptr getelementptr inbounds (i8, ptr @"github.com/goplus/llgo/cl/_testrt/struct.format", i64 1), align 1
  store i8 108, ptr getelementptr inbounds (i8, ptr @"github.com/goplus/llgo/cl/_testrt/struct.format", i64 2), align 1
  store i8 108, ptr getelementptr inbounds (i8, ptr @"github.com/goplus/llgo/cl/_testrt/struct.format", i64 3), align 1
  store i8 111, ptr getelementptr inbounds (i8, ptr @"github.com/goplus/llgo/cl/_testrt/struct.format", i64 4), align 1
  store i8 32, ptr getelementptr inbounds (i8, ptr @"github.com/goplus/llgo/cl/_testrt/struct.format", i64 5), align 1
  store i8 37, ptr getelementptr inbounds (i8, ptr @"github.com/goplus/llgo/cl/_testrt/struct.format", i64 6), align 1
  store i8 100, ptr getelementptr inbounds (i8, ptr @"github.com/goplus/llgo/cl/_testrt/struct.format", i64 7), align 1
  store i8 10, ptr getelementptr inbounds (i8, ptr @"github.com/goplus/llgo/cl/_testrt/struct.format", i64 8), align 1
  store i8 0, ptr getelementptr inbounds (i8, ptr @"github.com/goplus/llgo/cl/_testrt/struct.format", i64 9), align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/struct.main"() {
_llgo_0:
  %0 = alloca %"github.com/goplus/llgo/cl/_testrt/struct.Foo", align 8
  call void @llvm.memset(ptr %0, i8 0, i64 8, i1 false)
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/struct.Foo", ptr %0, i32 0, i32 0
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/struct.Foo", ptr %0, i32 0, i32 1
  store i32 100, ptr %1, align 4
  store i1 true, ptr %2, align 1
  %3 = load %"github.com/goplus/llgo/cl/_testrt/struct.Foo", ptr %0, align 4
  call void @"github.com/goplus/llgo/cl/_testrt/struct.Foo.Print"(%"github.com/goplus/llgo/cl/_testrt/struct.Foo" %3)
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

declare void @printf(ptr, %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare void @syscall.init()

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
