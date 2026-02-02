; ModuleID = 'github.com/goplus/llgo/cl/_testgo/reflectfn'
source_filename = "github.com/goplus/llgo/cl/_testgo/reflectfn"

%"github.com/goplus/llgo/runtime/abi.StructType" = type { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"github.com/goplus/llgo/runtime/abi.Type" = type { i64, i64, i32, i8, i8, i8, i8, ptr, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/abi.PtrType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr }
%"github.com/goplus/llgo/runtime/abi.FuncType" = type { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"github.com/goplus/llgo/runtime/abi.StructField" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }
%reflect.Value = type { ptr, ptr, i64 }

@"github.com/goplus/llgo/cl/_testgo/reflectfn.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [4 x i8] c"demo", align 1
@"_llgo_closure$bHIobfkZ-lxjkktO494lzwlfA9fqOLkRb9kTvfT7Uaw" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 0, i32 -2090952369, i8 32, i8 8, i8 8, i8 57, ptr null, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 32 }, ptr @"*_llgo_closure$bHIobfkZ-lxjkktO494lzwlfA9fqOLkRb9kTvfT7Uaw" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_closure$bHIobfkZ-lxjkktO494lzwlfA9fqOLkRb9kTvfT7Uaw$fields", i64 2, i64 2 } }, align 8
@1 = private unnamed_addr constant [32 x i8] c"struct { $f func(); $h uintptr }", align 1
@"*_llgo_closure$bHIobfkZ-lxjkktO494lzwlfA9fqOLkRb9kTvfT7Uaw" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -688245883, i8 10, i8 8, i8 8, i8 54, ptr @"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 32 }, ptr null }, ptr @"_llgo_closure$bHIobfkZ-lxjkktO494lzwlfA9fqOLkRb9kTvfT7Uaw" }, align 8
@"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.memequalptr" = private constant { ptr, i64 } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr", i64 0 }
@2 = private unnamed_addr constant [2 x i8] c"$f", align 1
@"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1790696805, i8 0, i8 8, i8 8, i8 51, ptr null, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 6 }, ptr @"*_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@3 = private unnamed_addr constant [6 x i8] c"func()", align 1
@"*_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -130179135, i8 10, i8 8, i8 8, i8 54, ptr @"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 6 }, ptr null }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" }, align 8
@4 = private unnamed_addr constant [2 x i8] c"$h", align 1
@_llgo_uintptr = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 1268343028, i8 12, i8 8, i8 8, i8 44, ptr @"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.memequal64", ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 7 }, ptr @"*_llgo_uintptr" }, align 8
@"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.memequal64" = private constant { ptr, i64 } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequal64", i64 0 }
@5 = private unnamed_addr constant [7 x i8] c"uintptr", align 1
@"*_llgo_uintptr" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1684891952, i8 10, i8 8, i8 8, i8 54, ptr @"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 7 }, ptr null }, ptr @_llgo_uintptr }, align 8
@"_llgo_closure$bHIobfkZ-lxjkktO494lzwlfA9fqOLkRb9kTvfT7Uaw$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 2 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 2 }, ptr @_llgo_uintptr, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"__llgo_closure_const$github.com/goplus/llgo/cl/_testgo/reflectfn.demo" = private constant { ptr, i64 } { ptr @"github.com/goplus/llgo/cl/_testgo/reflectfn.demo", i64 0 }
@_llgo_Pointer = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 507576105, i8 12, i8 8, i8 8, i8 58, ptr @"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 14 }, ptr @"*_llgo_Pointer" }, align 8
@6 = private unnamed_addr constant [14 x i8] c"unsafe.Pointer", align 1
@"*_llgo_Pointer" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1134390089, i8 10, i8 8, i8 8, i8 54, ptr @"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 14 }, ptr null }, ptr @_llgo_Pointer }, align 8

define void @"github.com/goplus/llgo/cl/_testgo/reflectfn.demo"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 4 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/reflectfn.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testgo/reflectfn.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testgo/reflectfn.init$guard", align 1
  call void @fmt.init()
  call void @reflect.init()
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/reflectfn.main"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  store i64 100, ptr %0, align 4
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %2 = getelementptr inbounds { ptr, i64, ptr }, ptr %1, i32 0, i32 0
  store ptr @"github.com/goplus/llgo/cl/_testgo/reflectfn.main$1", ptr %2, align 8
  %3 = getelementptr inbounds { ptr, i64, ptr }, ptr %1, i32 0, i32 1
  store i64 1, ptr %3, align 4
  %4 = getelementptr inbounds { ptr, i64, ptr }, ptr %1, i32 0, i32 2
  store ptr %0, ptr %4, align 8
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  %6 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %5, i64 0
  %7 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"_llgo_closure$bHIobfkZ-lxjkktO494lzwlfA9fqOLkRb9kTvfT7Uaw", ptr undef }, ptr %1, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %7, ptr %6, align 8
  %8 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %5, 0
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %8, i64 1, 1
  %10 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %9, i64 1, 2
  %11 = call { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @fmt.Println(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %10)
  %12 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  %13 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %12, i64 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"_llgo_closure$bHIobfkZ-lxjkktO494lzwlfA9fqOLkRb9kTvfT7Uaw", ptr @"__llgo_closure_const$github.com/goplus/llgo/cl/_testgo/reflectfn.demo" }, ptr %13, align 8
  %14 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %12, 0
  %15 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %14, i64 1, 1
  %16 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %15, i64 1, 2
  %17 = call { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @fmt.Println(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %16)
  %18 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  %19 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %18, i64 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"_llgo_closure$bHIobfkZ-lxjkktO494lzwlfA9fqOLkRb9kTvfT7Uaw", ptr @"__llgo_closure_const$github.com/goplus/llgo/cl/_testgo/reflectfn.demo" }, ptr %19, align 8
  %20 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %18, 0
  %21 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %20, i64 1, 1
  %22 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %21, i64 1, 2
  %23 = call { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @fmt.Println(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %22)
  %24 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"_llgo_closure$bHIobfkZ-lxjkktO494lzwlfA9fqOLkRb9kTvfT7Uaw", ptr undef }, ptr %1, 1
  %25 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %24)
  %26 = call ptr @reflect.Value.UnsafePointer(%reflect.Value %25)
  %27 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  %28 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %27, i64 0
  %29 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_Pointer, ptr undef }, ptr %26, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %29, ptr %28, align 8
  %30 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %27, 0
  %31 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %30, i64 1, 1
  %32 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %31, i64 1, 2
  %33 = call { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @fmt.Println(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %32)
  %34 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"_llgo_closure$bHIobfkZ-lxjkktO494lzwlfA9fqOLkRb9kTvfT7Uaw", ptr @"__llgo_closure_const$github.com/goplus/llgo/cl/_testgo/reflectfn.demo" })
  %35 = call ptr @reflect.Value.UnsafePointer(%reflect.Value %34)
  %36 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  %37 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %36, i64 0
  %38 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_Pointer, ptr undef }, ptr %35, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %38, ptr %37, align 8
  %39 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %36, 0
  %40 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %39, i64 1, 1
  %41 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %40, i64 1, 2
  %42 = call { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @fmt.Println(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %41)
  %43 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"_llgo_closure$bHIobfkZ-lxjkktO494lzwlfA9fqOLkRb9kTvfT7Uaw", ptr @"__llgo_closure_const$github.com/goplus/llgo/cl/_testgo/reflectfn.demo" })
  %44 = call ptr @reflect.Value.UnsafePointer(%reflect.Value %43)
  %45 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  %46 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %45, i64 0
  %47 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_Pointer, ptr undef }, ptr %44, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %47, ptr %46, align 8
  %48 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %45, 0
  %49 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %48, i64 1, 1
  %50 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %49, i64 1, 2
  %51 = call { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @fmt.Println(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %50)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/reflectfn.main$1"() {
_llgo_0:
  %0 = call ptr asm sideeffect "mov $0, x26", "=r"()
  %1 = load { ptr }, ptr %0, align 8
  %2 = extractvalue { ptr } %1, 0
  %3 = load i64, ptr %2, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %3)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare void @fmt.init()

declare void @reflect.init()

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr, ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal64"(ptr, ptr)

declare { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @fmt.Println(%"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

declare ptr @reflect.Value.UnsafePointer(%reflect.Value)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64)
