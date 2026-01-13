; ModuleID = 'github.com/goplus/llgo/cl/_testrt/linkname'
source_filename = "github.com/goplus/llgo/cl/_testrt/linkname"

%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/cl/_testrt/linkname.m" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String" }

@"github.com/goplus/llgo/cl/_testrt/linkname.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@1 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@2 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@3 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@4 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@5 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@6 = private unnamed_addr constant [2 x i8] c"3\00", align 1
@7 = private unnamed_addr constant [2 x i8] c"4\00", align 1
@8 = private unnamed_addr constant [5 x i8] c"hello", align 1
@9 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@10 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@11 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@12 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@13 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@14 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@15 = private unnamed_addr constant [2 x i8] c"3\00", align 1
@16 = private unnamed_addr constant [2 x i8] c"4\00", align 1

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/cl/_testrt/linkname/linktarget.m.info"(%"github.com/goplus/llgo/cl/_testrt/linkname.m")

define void @"github.com/goplus/llgo/cl/_testrt/linkname.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/linkname.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/linkname.init$guard", align 1
  call void @"github.com/goplus/llgo/cl/_testrt/linkname/linktarget.init"()
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/linkname.main"() {
_llgo_0:
  call void @"github.com/goplus/llgo/cl/_testrt/linkname/linktarget.F"(ptr @0, ptr @1, ptr @2, ptr @3)
  call void @"github.com/goplus/llgo/cl/_testrt/linkname/linktarget.F"(ptr @4, ptr @5, ptr @6, ptr @7)
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  call void @"github.com/goplus/llgo/cl/_testrt/linkname/linktarget.(*m).setInfo"(ptr %0, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 5 })
  %1 = load %"github.com/goplus/llgo/cl/_testrt/linkname.m", ptr %0, align 8
  %2 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/cl/_testrt/linkname/linktarget.m.info"(%"github.com/goplus/llgo/cl/_testrt/linkname.m" %1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/linkname.main$coro"() #0 {
_llgo_0:
  %0 = alloca { ptr }, align 8
  %1 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  store ptr null, ptr %1, align 8
  %2 = call token @llvm.coro.id(i32 0, ptr %0, ptr null, ptr null)
  %3 = call i1 @llvm.coro.alloc(token %2)
  br i1 %3, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_7
  call void @"github.com/goplus/llgo/cl/_testrt/linkname/linktarget.F"(ptr @9, ptr @10, ptr @11, ptr @12)
  call void @"github.com/goplus/llgo/cl/_testrt/linkname/linktarget.F"(ptr @13, ptr @14, ptr @15, ptr @16)
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  call void @"github.com/goplus/llgo/cl/_testrt/linkname/linktarget.(*m).setInfo"(ptr %4, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 5 })
  %5 = load %"github.com/goplus/llgo/cl/_testrt/linkname.m", ptr %4, align 8
  %6 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/cl/_testrt/linkname/linktarget.m.info"(%"github.com/goplus/llgo/cl/_testrt/linkname.m" %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %6)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_0
  %7 = call i64 @llvm.coro.size.i64()
  %8 = call ptr @malloc(i64 %7)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %9 = phi ptr [ null, %_llgo_0 ], [ %8, %_llgo_2 ]
  %10 = call ptr @llvm.coro.begin(token %2, ptr %9)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  %11 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %11, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_5
  ]

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_3
  %12 = call i1 @llvm.coro.end(ptr %10, i1 false, token none)
  ret ptr %10

_llgo_5:                                          ; preds = %_llgo_1, %_llgo_3
  %13 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %13, label %_llgo_4 [
    i8 0, label %_llgo_8
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_8, %_llgo_5
  %14 = call ptr @llvm.coro.free(token %2, ptr %10)
  call void @free(ptr %14)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_3
  br label %_llgo_1

_llgo_8:                                          ; preds = %_llgo_5
  br label %_llgo_6
}

declare void @"github.com/goplus/llgo/cl/_testrt/linkname/linktarget.F"(ptr, ptr, ptr, ptr)

declare void @"github.com/goplus/llgo/cl/_testrt/linkname/linktarget.(*m).setInfo"(ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/cl/_testrt/linkname/linktarget.init"()

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare token @llvm.coro.id(i32, ptr readnone, ptr nocapture readonly, ptr) #1

; Function Attrs: nounwind
declare i1 @llvm.coro.alloc(token) #2

; Function Attrs: nounwind memory(none)
declare i64 @llvm.coro.size.i64() #3

declare ptr @malloc(i64)

; Function Attrs: nounwind
declare ptr @llvm.coro.begin(token, ptr writeonly) #2

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()

; Function Attrs: nounwind
declare i8 @llvm.coro.suspend(token, i1) #2

; Function Attrs: nounwind
declare i1 @llvm.coro.end(ptr, i1, token) #2

; Function Attrs: nounwind memory(argmem: read)
declare ptr @llvm.coro.free(token, ptr nocapture readonly) #4

declare void @free(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()

attributes #0 = { presplitcoroutine }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #2 = { nounwind }
attributes #3 = { nounwind memory(none) }
attributes #4 = { nounwind memory(argmem: read) }
