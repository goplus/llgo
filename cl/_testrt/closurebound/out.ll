; ModuleID = 'main'
source_filename = "main"

%main.demo1 = type {}
%main.demo2 = type {}
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }

@"main.init$guard" = global i1 false, align 1
@main.my = global { ptr, ptr } zeroinitializer, align 8
@0 = private unnamed_addr constant [5 x i8] c"error", align 1
@_llgo_string = linkonce global ptr null, align 8

define i64 @main.demo1.encode(%main.demo1 %0) {
_llgo_0:
  ret i64 1
}

define i64 @"main.(*demo1).encode"(ptr %0) {
_llgo_0:
  %1 = load %main.demo1, ptr %0, align 1
  %2 = call i64 @main.demo1.encode(%main.demo1 %1)
  ret i64 %2
}

define i64 @main.demo2.encode(%main.demo2 %0) {
_llgo_0:
  ret i64 2
}

define i64 @"main.(*demo2).encode"(ptr %0) {
_llgo_0:
  %1 = load %main.demo2, ptr %0, align 1
  %2 = call i64 @main.demo2.encode(%main.demo2 %1)
  ret i64 %2
}

define void @main.init() {
_llgo_0:
  %0 = load i1, ptr @"main.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"main.init$guard", align 1
  call void @"main.init$after"()
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %2 = getelementptr inbounds { %main.demo2 }, ptr %1, i32 0, i32 0
  store %main.demo2 zeroinitializer, ptr %2, align 1
  %3 = insertvalue { ptr, ptr } { ptr @"main.demo2.encode$bound", ptr undef }, ptr %1, 1
  store { ptr, ptr } %3, ptr @main.my, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @main.main() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %1 = getelementptr inbounds { %main.demo1 }, ptr %0, i32 0, i32 0
  store %main.demo1 zeroinitializer, ptr %1, align 1
  %2 = insertvalue { ptr, ptr } { ptr @"main.demo1.encode$bound", ptr undef }, ptr %0, 1
  %3 = extractvalue { ptr, ptr } %2, 1
  %4 = extractvalue { ptr, ptr } %2, 0
  %5 = call i64 %4(ptr %3)
  %6 = icmp ne i64 %5, 1
  br i1 %6, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %7 = load ptr, ptr @_llgo_string, align 8
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %8, align 8
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %7, 0
  %10 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %9, ptr %8, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %10)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  ret void
}

define i64 @"main.demo2.encode$bound"(ptr %0) {
_llgo_0:
  %1 = load { %main.demo2 }, ptr %0, align 1
  %2 = extractvalue { %main.demo2 } %1, 0
  %3 = call i64 @main.demo2.encode(%main.demo2 %2)
  ret i64 %3
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

define i64 @"main.demo1.encode$bound"(ptr %0) {
_llgo_0:
  %1 = load { %main.demo1 }, ptr %0, align 1
  %2 = extractvalue { %main.demo1 } %1, 0
  %3 = call i64 @main.demo1.encode(%main.demo1 %2)
  ret i64 %3
}

define void @"main.init$after"() {
_llgo_0:
  %0 = load ptr, ptr @_llgo_string, align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  store ptr %2, ptr @_llgo_string, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface")
