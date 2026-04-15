; ModuleID = 'github.com/goplus/llgo/cl/_testrt/struct'
source_filename = "github.com/goplus/llgo/cl/_testrt/struct"

%"github.com/goplus/llgo/cl/_testrt/struct.Foo" = type { i32, i1 }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }

@"github.com/goplus/llgo/runtime/internal/runtime.cgoAlwaysFalse" = external global i1, align 1
@"github.com/goplus/llgo/cl/_testrt/struct.format" = global [10 x i8] zeroinitializer, align 1
@"github.com/goplus/llgo/cl/_testrt/struct.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [44 x i8] c"github.com/goplus/llgo/cl/_testrt/struct.Foo", align 1
@1 = private unnamed_addr constant [5 x i8] c"Print", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @"github.com/goplus/llgo/cl/_testrt/struct.Foo.Print", ptr @"github.com/goplus/llgo/cl/_testrt/struct.(*Foo).Print"], section "llvm.metadata"

define void @"github.com/goplus/llgo/cl/_testrt/struct.Foo.Print"(%"github.com/goplus/llgo/cl/_testrt/struct.Foo" %0) {
_llgo_0:
  %1 = alloca %"github.com/goplus/llgo/cl/_testrt/struct.Foo", align 8
  call void @llvm.memset(ptr %1, i8 0, i64 8, i1 false)
  store %"github.com/goplus/llgo/cl/_testrt/struct.Foo" %0, ptr %1, align 4
  %2 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %2)
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/struct.Foo", ptr %1, i32 0, i32 1
  %4 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %4)
  %5 = load i1, ptr %3, align 1
  br i1 %5, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  %6 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %6)
  %7 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/struct.Foo", ptr %1, i32 0, i32 0
  %8 = icmp eq ptr %7, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %8)
  %9 = load i32, ptr %7, align 4
  call void (ptr, ...) @printf(ptr @"github.com/goplus/llgo/cl/_testrt/struct.format", i32 %9)
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/struct.(*Foo).Print"(ptr %0) {
_llgo_0:
  %1 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertMethodWrapperNil"(i1 %1, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 44 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 5 })
  %2 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %2)
  %3 = load %"github.com/goplus/llgo/cl/_testrt/struct.Foo", ptr %0, align 4
  call void @"github.com/goplus/llgo/cl/_testrt/struct.Foo.Print"(%"github.com/goplus/llgo/cl/_testrt/struct.Foo" %3)
  ret void
}

define ptr @"github.com/goplus/llgo/cl/_testrt/struct._Cgo_ptr"(ptr %0) {
_llgo_0:
  ret ptr %0
}

declare void @runtime.cgoUse(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

declare void @runtime.cgoCheckResult(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

define void @"github.com/goplus/llgo/cl/_testrt/struct.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/struct.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/struct.init$guard", align 1
  call void @syscall.init()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
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
  %1 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1)
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/struct.Foo", ptr %0, i32 0, i32 0
  %3 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %3)
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/struct.Foo", ptr %0, i32 0, i32 1
  store i32 100, ptr %2, align 4
  store i1 true, ptr %4, align 1
  %5 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %5)
  %6 = load %"github.com/goplus/llgo/cl/_testrt/struct.Foo", ptr %0, align 4
  call void @"github.com/goplus/llgo/cl/_testrt/struct.Foo.Print"(%"github.com/goplus/llgo/cl/_testrt/struct.Foo" %6)
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1)

declare void @printf(ptr, ...)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertMethodWrapperNil"(i1, %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @syscall.init()

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
