; ModuleID = 'github.com/goplus/llgo/cl/_testrt/vamethod'
source_filename = "github.com/goplus/llgo/cl/_testrt/vamethod"

%"github.com/goplus/llgo/cl/_testrt/vamethod.CFmt" = type { ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }

@"github.com/goplus/llgo/cl/_testrt/vamethod.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [8 x i8] c"%s (%d)\0A", align 1
@1 = private unnamed_addr constant [6 x i8] c"hello\00", align 1
@2 = private unnamed_addr constant [8 x i8] c"(%d) %s\0A", align 1
@3 = private unnamed_addr constant [6 x i8] c"world\00", align 1

define i32 @"github.com/goplus/llgo/cl/_testrt/vamethod.CFmt.Printf"(%"github.com/goplus/llgo/cl/_testrt/vamethod.CFmt" %0, ...) {
_llgo_0:
  %1 = alloca %"github.com/goplus/llgo/cl/_testrt/vamethod.CFmt", align 8
  call void @llvm.memset(ptr %1, i8 0, i64 8, i1 false)
  store %"github.com/goplus/llgo/cl/_testrt/vamethod.CFmt" %0, ptr %1, align 8
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/vamethod.CFmt", ptr %1, i32 0, i32 0
  %3 = load ptr, ptr %2, align 8
  %4 = call i32 (ptr, ...) @printf(ptr %3)
  ret i32 %4
}

define i32 @"github.com/goplus/llgo/cl/_testrt/vamethod.(*CFmt).Printf"(ptr %0, ...) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/vamethod.CFmt", ptr %0, i32 0, i32 0
  %2 = load ptr, ptr %1, align 8
  %3 = call i32 (ptr, ...) @printf(ptr %2)
  ret i32 %3
}

define void @"github.com/goplus/llgo/cl/_testrt/vamethod.(*CFmt).SetFormat"(ptr %0, %"github.com/goplus/llgo/runtime/internal/runtime.String" %1) {
_llgo_0:
  %2 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %1, 1
  %3 = add i64 %2, 1
  %4 = alloca i8, i64 %3, align 1
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.CStrCopy"(ptr %4, %"github.com/goplus/llgo/runtime/internal/runtime.String" %1)
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/vamethod.CFmt", ptr %0, i32 0, i32 0
  store ptr %5, ptr %6, align 8
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/vamethod.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/vamethod.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/vamethod.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/vamethod.main"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  call void @"github.com/goplus/llgo/cl/_testrt/vamethod.(*CFmt).SetFormat"(ptr %0, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 8 })
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/vamethod.CFmt", ptr %0, i32 0, i32 0
  %2 = load ptr, ptr %1, align 8
  %3 = call i32 (ptr, ...) @printf(ptr %2, ptr @1, i64 100)
  call void @"github.com/goplus/llgo/cl/_testrt/vamethod.(*CFmt).SetFormat"(ptr %0, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 8 })
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/vamethod.CFmt", ptr %0, i32 0, i32 0
  %5 = load ptr, ptr %4, align 8
  %6 = call i32 (ptr, ...) @printf(ptr %5, i64 200, ptr @3)
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

declare i32 @printf(ptr, ...)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.CStrCopy"(ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
