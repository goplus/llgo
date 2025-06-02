; ModuleID = 'github.com/goplus/llgo/cl/_testgo/cabi'
source_filename = "github.com/goplus/llgo/cl/_testgo/cabi"

%"github.com/goplus/llgo/cl/_testgo/cabi.LargeStruct" = type { i64, i64, i64, i64 }

@"github.com/goplus/llgo/cl/_testgo/cabi.init$guard" = global i1 false, align 1

define void @"github.com/goplus/llgo/cl/_testgo/cabi.foo"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = load { ptr, ptr }, ptr %2, align 8
  %4 = load %"github.com/goplus/llgo/cl/_testgo/cabi.LargeStruct", ptr %1, align 4
  %5 = extractvalue { ptr, ptr } %3, 1
  %6 = extractvalue { ptr, ptr } %3, 0
  %7 = alloca %"github.com/goplus/llgo/cl/_testgo/cabi.LargeStruct", align 8
  %8 = alloca %"github.com/goplus/llgo/cl/_testgo/cabi.LargeStruct", align 8
  store %"github.com/goplus/llgo/cl/_testgo/cabi.LargeStruct" %4, ptr %8, align 4
  call void %6(ptr %5, ptr %7, ptr %8)
  %9 = load %"github.com/goplus/llgo/cl/_testgo/cabi.LargeStruct", ptr %7, align 4
  store %"github.com/goplus/llgo/cl/_testgo/cabi.LargeStruct" %9, ptr %0, align 4
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/cabi.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testgo/cabi.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testgo/cabi.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/cabi.main"() {
_llgo_0:
  %0 = alloca %"github.com/goplus/llgo/cl/_testgo/cabi.LargeStruct", align 8
  call void @llvm.memset(ptr %0, i8 0, i64 32, i1 false)
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/cabi.LargeStruct", ptr %0, i32 0, i32 0
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/cabi.LargeStruct", ptr %0, i32 0, i32 1
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/cabi.LargeStruct", ptr %0, i32 0, i32 2
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/cabi.LargeStruct", ptr %0, i32 0, i32 3
  store i64 1, ptr %1, align 4
  store i64 2, ptr %2, align 4
  store i64 3, ptr %3, align 4
  store i64 4, ptr %4, align 4
  %5 = load %"github.com/goplus/llgo/cl/_testgo/cabi.LargeStruct", ptr %0, align 4
  %6 = alloca %"github.com/goplus/llgo/cl/_testgo/cabi.LargeStruct", align 8
  %7 = alloca %"github.com/goplus/llgo/cl/_testgo/cabi.LargeStruct", align 8
  store %"github.com/goplus/llgo/cl/_testgo/cabi.LargeStruct" %5, ptr %7, align 4
  %8 = alloca { ptr, ptr }, align 8
  store { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testgo/cabi.main$1", ptr null }, ptr %8, align 8
  call void @"github.com/goplus/llgo/cl/_testgo/cabi.foo"(ptr %6, ptr %7, ptr %8)
  %9 = load %"github.com/goplus/llgo/cl/_testgo/cabi.LargeStruct", ptr %6, align 4
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/cabi.main$1"(ptr %0, ptr %1) {
_llgo_0:
  %2 = load %"github.com/goplus/llgo/cl/_testgo/cabi.LargeStruct", ptr %1, align 4
  store %"github.com/goplus/llgo/cl/_testgo/cabi.LargeStruct" %2, ptr %0, align 4
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

define linkonce void @"__llgo_stub.github.com/goplus/llgo/cl/_testgo/cabi.main$1"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = alloca %"github.com/goplus/llgo/cl/_testgo/cabi.LargeStruct", align 8
  call void @"github.com/goplus/llgo/cl/_testgo/cabi.main$1"(ptr %3, ptr %1)
  %4 = load volatile %"github.com/goplus/llgo/cl/_testgo/cabi.LargeStruct", ptr %3, align 4
  ret void
}

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
