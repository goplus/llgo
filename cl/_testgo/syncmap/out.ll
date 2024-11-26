; ModuleID = 'main'
source_filename = "main"

%"github.com/goplus/llgo/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/internal/runtime.iface" = type { ptr, ptr }

@"main.init$guard" = global i1 false, align 1
@__llgo_argc = global i32 0, align 4
@__llgo_argv = global ptr null, align 8
@_llgo_int = linkonce global ptr null, align 8
@0 = private unnamed_addr constant [5 x i8] c"hello", align 1
@_llgo_string = linkonce global ptr null, align 8
@1 = private unnamed_addr constant [1 x i8] c"1", align 1
@_llgo_bool = linkonce global ptr null, align 8
@2 = private unnamed_addr constant [7 x i8] c"%#v %v\0A", align 1

define void @main.init() {
_llgo_0:
  %0 = load i1, ptr @"main.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"main.init$guard", align 1
  call void @fmt.init()
  call void @sync.init()
  call void @"main.init$after"()
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
  %2 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 88)
  %3 = load ptr, ptr @_llgo_int, align 8
  %4 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" undef, ptr %3, 0
  %5 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" %4, ptr inttoptr (i64 1 to ptr), 1
  %6 = load ptr, ptr @_llgo_string, align 8
  %7 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" { ptr @0, i64 5 }, ptr %7, align 8
  %8 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" undef, ptr %6, 0
  %9 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" %8, ptr %7, 1
  call void @"sync.(*Map).Store"(ptr %2, %"github.com/goplus/llgo/internal/runtime.eface" %5, %"github.com/goplus/llgo/internal/runtime.eface" %9)
  %10 = load ptr, ptr @_llgo_string, align 8
  %11 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" { ptr @1, i64 1 }, ptr %11, align 8
  %12 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" undef, ptr %10, 0
  %13 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" %12, ptr %11, 1
  %14 = load ptr, ptr @_llgo_int, align 8
  %15 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" undef, ptr %14, 0
  %16 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" %15, ptr inttoptr (i64 100 to ptr), 1
  call void @"sync.(*Map).Store"(ptr %2, %"github.com/goplus/llgo/internal/runtime.eface" %13, %"github.com/goplus/llgo/internal/runtime.eface" %16)
  %17 = load ptr, ptr @_llgo_string, align 8
  %18 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" { ptr @1, i64 1 }, ptr %18, align 8
  %19 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" undef, ptr %17, 0
  %20 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" %19, ptr %18, 1
  %21 = call { %"github.com/goplus/llgo/internal/runtime.eface", i1 } @"sync.(*Map).Load"(ptr %2, %"github.com/goplus/llgo/internal/runtime.eface" %20)
  %22 = extractvalue { %"github.com/goplus/llgo/internal/runtime.eface", i1 } %21, 0
  %23 = extractvalue { %"github.com/goplus/llgo/internal/runtime.eface", i1 } %21, 1
  %24 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 32)
  %25 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %24, i64 0
  store %"github.com/goplus/llgo/internal/runtime.eface" %22, ptr %25, align 8
  %26 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %24, i64 1
  %27 = load ptr, ptr @_llgo_bool, align 8
  %28 = sext i1 %23 to i64
  %29 = inttoptr i64 %28 to ptr
  %30 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" undef, ptr %27, 0
  %31 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" %30, ptr %29, 1
  store %"github.com/goplus/llgo/internal/runtime.eface" %31, ptr %26, align 8
  %32 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %24, 0
  %33 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %32, i64 2, 1
  %34 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %33, i64 2, 2
  %35 = call { i64, %"github.com/goplus/llgo/internal/runtime.iface" } @fmt.Println(%"github.com/goplus/llgo/internal/runtime.Slice" %34)
  call void @"sync.(*Map).Range"(ptr %2, { ptr, ptr } { ptr @"__llgo_stub.main.main$1", ptr null })
  ret i32 0
}

define i1 @"main.main$1"(%"github.com/goplus/llgo/internal/runtime.eface" %0, %"github.com/goplus/llgo/internal/runtime.eface" %1) {
_llgo_0:
  %2 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 32)
  %3 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %2, i64 0
  store %"github.com/goplus/llgo/internal/runtime.eface" %0, ptr %3, align 8
  %4 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %2, i64 1
  store %"github.com/goplus/llgo/internal/runtime.eface" %1, ptr %4, align 8
  %5 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %2, 0
  %6 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %5, i64 2, 1
  %7 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %6, i64 2, 2
  %8 = call { i64, %"github.com/goplus/llgo/internal/runtime.iface" } @fmt.Printf(%"github.com/goplus/llgo/internal/runtime.String" { ptr @2, i64 7 }, %"github.com/goplus/llgo/internal/runtime.Slice" %7)
  ret i1 true
}

declare void @fmt.init()

declare void @sync.init()

declare void @"github.com/goplus/llgo/internal/runtime.init"()

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64)

declare void @"sync.(*Map).Store"(ptr, %"github.com/goplus/llgo/internal/runtime.eface", %"github.com/goplus/llgo/internal/runtime.eface")

define void @"main.init$after"() {
_llgo_0:
  %0 = load ptr, ptr @_llgo_int, align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 34)
  store ptr %2, ptr @_llgo_int, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %3 = load ptr, ptr @_llgo_string, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %5 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  store ptr %5, ptr @_llgo_string, align 8
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_2
  %6 = load ptr, ptr @_llgo_bool, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %8 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 33)
  store ptr %8, ptr @_llgo_bool, align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  ret void
}

declare ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64)

declare { %"github.com/goplus/llgo/internal/runtime.eface", i1 } @"sync.(*Map).Load"(ptr, %"github.com/goplus/llgo/internal/runtime.eface")

declare { i64, %"github.com/goplus/llgo/internal/runtime.iface" } @fmt.Println(%"github.com/goplus/llgo/internal/runtime.Slice")

declare void @"sync.(*Map).Range"(ptr, { ptr, ptr })

define linkonce i1 @"__llgo_stub.main.main$1"(ptr %0, %"github.com/goplus/llgo/internal/runtime.eface" %1, %"github.com/goplus/llgo/internal/runtime.eface" %2) {
_llgo_0:
  %3 = tail call i1 @"main.main$1"(%"github.com/goplus/llgo/internal/runtime.eface" %1, %"github.com/goplus/llgo/internal/runtime.eface" %2)
  ret i1 %3
}

declare { i64, %"github.com/goplus/llgo/internal/runtime.iface" } @fmt.Printf(%"github.com/goplus/llgo/internal/runtime.String", %"github.com/goplus/llgo/internal/runtime.Slice")
