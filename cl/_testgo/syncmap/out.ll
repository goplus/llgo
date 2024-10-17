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
  %2 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 32)
  %3 = load ptr, ptr @_llgo_int, align 8
  %4 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %5 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %4, i32 0, i32 0
  store ptr %3, ptr %5, align 8
  %6 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %4, i32 0, i32 1
  store ptr inttoptr (i64 1 to ptr), ptr %6, align 8
  %7 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %4, align 8
  %8 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %9 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %8, i32 0, i32 0
  store ptr @0, ptr %9, align 8
  %10 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %8, i32 0, i32 1
  store i64 5, ptr %10, align 4
  %11 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %8, align 8
  %12 = load ptr, ptr @_llgo_string, align 8
  %13 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %11, ptr %13, align 8
  %14 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %15 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %14, i32 0, i32 0
  store ptr %12, ptr %15, align 8
  %16 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %14, i32 0, i32 1
  store ptr %13, ptr %16, align 8
  %17 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %14, align 8
  call void @"sync.(*Map).Store"(ptr %2, %"github.com/goplus/llgo/internal/runtime.eface" %7, %"github.com/goplus/llgo/internal/runtime.eface" %17)
  %18 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %19 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %18, i32 0, i32 0
  store ptr @1, ptr %19, align 8
  %20 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %18, i32 0, i32 1
  store i64 1, ptr %20, align 4
  %21 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %18, align 8
  %22 = load ptr, ptr @_llgo_string, align 8
  %23 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %21, ptr %23, align 8
  %24 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %25 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %24, i32 0, i32 0
  store ptr %22, ptr %25, align 8
  %26 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %24, i32 0, i32 1
  store ptr %23, ptr %26, align 8
  %27 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %24, align 8
  %28 = load ptr, ptr @_llgo_int, align 8
  %29 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %30 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %29, i32 0, i32 0
  store ptr %28, ptr %30, align 8
  %31 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %29, i32 0, i32 1
  store ptr inttoptr (i64 100 to ptr), ptr %31, align 8
  %32 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %29, align 8
  call void @"sync.(*Map).Store"(ptr %2, %"github.com/goplus/llgo/internal/runtime.eface" %27, %"github.com/goplus/llgo/internal/runtime.eface" %32)
  %33 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %34 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %33, i32 0, i32 0
  store ptr @1, ptr %34, align 8
  %35 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %33, i32 0, i32 1
  store i64 1, ptr %35, align 4
  %36 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %33, align 8
  %37 = load ptr, ptr @_llgo_string, align 8
  %38 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %36, ptr %38, align 8
  %39 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %40 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %39, i32 0, i32 0
  store ptr %37, ptr %40, align 8
  %41 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %39, i32 0, i32 1
  store ptr %38, ptr %41, align 8
  %42 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %39, align 8
  %43 = call { %"github.com/goplus/llgo/internal/runtime.eface", i1 } @"sync.(*Map).Load"(ptr %2, %"github.com/goplus/llgo/internal/runtime.eface" %42)
  %44 = extractvalue { %"github.com/goplus/llgo/internal/runtime.eface", i1 } %43, 0
  %45 = extractvalue { %"github.com/goplus/llgo/internal/runtime.eface", i1 } %43, 1
  %46 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 32)
  %47 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %46, i64 0
  store %"github.com/goplus/llgo/internal/runtime.eface" %44, ptr %47, align 8
  %48 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %46, i64 1
  %49 = load ptr, ptr @_llgo_bool, align 8
  %50 = sext i1 %45 to i64
  %51 = inttoptr i64 %50 to ptr
  %52 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %53 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %52, i32 0, i32 0
  store ptr %49, ptr %53, align 8
  %54 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %52, i32 0, i32 1
  store ptr %51, ptr %54, align 8
  %55 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %52, align 8
  store %"github.com/goplus/llgo/internal/runtime.eface" %55, ptr %48, align 8
  %56 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %57 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %56, i32 0, i32 0
  store ptr %46, ptr %57, align 8
  %58 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %56, i32 0, i32 1
  store i64 2, ptr %58, align 4
  %59 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %56, i32 0, i32 2
  store i64 2, ptr %59, align 4
  %60 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %56, align 8
  %61 = call { i64, %"github.com/goplus/llgo/internal/runtime.iface" } @fmt.Println(%"github.com/goplus/llgo/internal/runtime.Slice" %60)
  %62 = alloca { ptr, ptr }, align 8
  %63 = getelementptr inbounds { ptr, ptr }, ptr %62, i32 0, i32 0
  store ptr @"__llgo_stub.main.main$1", ptr %63, align 8
  %64 = getelementptr inbounds { ptr, ptr }, ptr %62, i32 0, i32 1
  store ptr null, ptr %64, align 8
  %65 = load { ptr, ptr }, ptr %62, align 8
  call void @"sync.(*Map).Range"(ptr %2, { ptr, ptr } %65)
  ret i32 0
}

define i1 @"main.main$1"(%"github.com/goplus/llgo/internal/runtime.eface" %0, %"github.com/goplus/llgo/internal/runtime.eface" %1) {
_llgo_0:
  %2 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 32)
  %3 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %2, i64 0
  store %"github.com/goplus/llgo/internal/runtime.eface" %0, ptr %3, align 8
  %4 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %2, i64 1
  store %"github.com/goplus/llgo/internal/runtime.eface" %1, ptr %4, align 8
  %5 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %6 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %5, i32 0, i32 0
  store ptr %2, ptr %6, align 8
  %7 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %5, i32 0, i32 1
  store i64 2, ptr %7, align 4
  %8 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %5, i32 0, i32 2
  store i64 2, ptr %8, align 4
  %9 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %5, align 8
  %10 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %11 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %10, i32 0, i32 0
  store ptr @2, ptr %11, align 8
  %12 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %10, i32 0, i32 1
  store i64 7, ptr %12, align 4
  %13 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %10, align 8
  %14 = call { i64, %"github.com/goplus/llgo/internal/runtime.iface" } @fmt.Printf(%"github.com/goplus/llgo/internal/runtime.String" %13, %"github.com/goplus/llgo/internal/runtime.Slice" %9)
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
