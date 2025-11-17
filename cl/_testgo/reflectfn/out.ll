; ModuleID = 'github.com/goplus/llgo/cl/_testgo/reflectfn'
source_filename = "github.com/goplus/llgo/cl/_testgo/reflectfn"

%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }
%reflect.Value = type { ptr, ptr, i64 }
%"github.com/goplus/llgo/runtime/abi.StructField" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 }

@"github.com/goplus/llgo/cl/_testgo/reflectfn.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [4 x i8] c"demo", align 1
@"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" = linkonce global ptr null, align 8
@_llgo_Pointer = linkonce global ptr null, align 8
@"github.com/goplus/llgo/cl/_testgo/reflectfn.struct$b7Su1hWaFih-M0M9hMk6nO_RD1K_GQu5WjIXQp6Q2e8" = linkonce global ptr null, align 8
@1 = private unnamed_addr constant [2 x i8] c"$f", align 1
@2 = private unnamed_addr constant [5 x i8] c"$data", align 1
@3 = private unnamed_addr constant [43 x i8] c"github.com/goplus/llgo/cl/_testgo/reflectfn", align 1

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
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %2 = getelementptr inbounds { ptr }, ptr %1, i32 0, i32 0
  store ptr %0, ptr %2, align 8
  %3 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testgo/reflectfn.main$1", ptr undef }, ptr %1, 1
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  %5 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %4, i64 0
  %6 = call ptr @"__llgo_load__llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac"()
  %7 = call ptr @__llgo_load__llgo_Pointer()
  %8 = call ptr @"__llgo_load_github.com/goplus/llgo/cl/_testgo/reflectfn.struct$b7Su1hWaFih-M0M9hMk6nO_RD1K_GQu5WjIXQp6Q2e8"()
  %9 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store { ptr, ptr } %3, ptr %9, align 8
  %10 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %8, 0
  %11 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %10, ptr %9, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %11, ptr %5, align 8
  %12 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %4, 0
  %13 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %12, i64 1, 1
  %14 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %13, i64 1, 2
  %15 = call { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @fmt.Println(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %14)
  %16 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  %17 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %16, i64 0
  %18 = call ptr @"__llgo_load_github.com/goplus/llgo/cl/_testgo/reflectfn.struct$b7Su1hWaFih-M0M9hMk6nO_RD1K_GQu5WjIXQp6Q2e8"()
  %19 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testgo/reflectfn.demo", ptr null }, ptr %19, align 8
  %20 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %18, 0
  %21 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %20, ptr %19, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %21, ptr %17, align 8
  %22 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %16, 0
  %23 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %22, i64 1, 1
  %24 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %23, i64 1, 2
  %25 = call { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @fmt.Println(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %24)
  %26 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  %27 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %26, i64 0
  %28 = call ptr @"__llgo_load_github.com/goplus/llgo/cl/_testgo/reflectfn.struct$b7Su1hWaFih-M0M9hMk6nO_RD1K_GQu5WjIXQp6Q2e8"()
  %29 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testgo/reflectfn.demo", ptr null }, ptr %29, align 8
  %30 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %28, 0
  %31 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %30, ptr %29, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %31, ptr %27, align 8
  %32 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %26, 0
  %33 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %32, i64 1, 1
  %34 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %33, i64 1, 2
  %35 = call { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @fmt.Println(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %34)
  %36 = call ptr @"__llgo_load_github.com/goplus/llgo/cl/_testgo/reflectfn.struct$b7Su1hWaFih-M0M9hMk6nO_RD1K_GQu5WjIXQp6Q2e8"()
  %37 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store { ptr, ptr } %3, ptr %37, align 8
  %38 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %36, 0
  %39 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %38, ptr %37, 1
  %40 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %39)
  %41 = call ptr @reflect.Value.UnsafePointer(%reflect.Value %40)
  %42 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  %43 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %42, i64 0
  %44 = call ptr @__llgo_load__llgo_Pointer()
  %45 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %44, 0
  %46 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %45, ptr %41, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %46, ptr %43, align 8
  %47 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %42, 0
  %48 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %47, i64 1, 1
  %49 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %48, i64 1, 2
  %50 = call { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @fmt.Println(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %49)
  %51 = call ptr @"__llgo_load_github.com/goplus/llgo/cl/_testgo/reflectfn.struct$b7Su1hWaFih-M0M9hMk6nO_RD1K_GQu5WjIXQp6Q2e8"()
  %52 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testgo/reflectfn.demo", ptr null }, ptr %52, align 8
  %53 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %51, 0
  %54 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %53, ptr %52, 1
  %55 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %54)
  %56 = call ptr @reflect.Value.UnsafePointer(%reflect.Value %55)
  %57 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  %58 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %57, i64 0
  %59 = call ptr @__llgo_load__llgo_Pointer()
  %60 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %59, 0
  %61 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %60, ptr %56, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %61, ptr %58, align 8
  %62 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %57, 0
  %63 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %62, i64 1, 1
  %64 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %63, i64 1, 2
  %65 = call { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @fmt.Println(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %64)
  %66 = call ptr @"__llgo_load_github.com/goplus/llgo/cl/_testgo/reflectfn.struct$b7Su1hWaFih-M0M9hMk6nO_RD1K_GQu5WjIXQp6Q2e8"()
  %67 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testgo/reflectfn.demo", ptr null }, ptr %67, align 8
  %68 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %66, 0
  %69 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %68, ptr %67, 1
  %70 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %69)
  %71 = call ptr @reflect.Value.UnsafePointer(%reflect.Value %70)
  %72 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  %73 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %72, i64 0
  %74 = call ptr @__llgo_load__llgo_Pointer()
  %75 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %74, 0
  %76 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %75, ptr %71, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %76, ptr %73, align 8
  %77 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %72, 0
  %78 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %77, i64 1, 1
  %79 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %78, i64 1, 2
  %80 = call { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @fmt.Println(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %79)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/reflectfn.main$1"(ptr %0) {
_llgo_0:
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

define linkonce ptr @"__llgo_load__llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac"() {
_llgo_0:
  %0 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %2, 0
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %3, i64 0, 1
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %4, i64 0, 2
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %7 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %6, 0
  %8 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, i64 0, 1
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %8, i64 0, 2
  %10 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %5, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %9, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %10)
  store ptr %10, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %11 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  ret ptr %11
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.Slice", i1)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr)

define linkonce ptr @__llgo_load__llgo_Pointer() {
_llgo_0:
  %0 = load ptr, ptr @_llgo_Pointer, align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %2)
  store ptr %2, ptr @_llgo_Pointer, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %3 = load ptr, ptr @_llgo_Pointer, align 8
  ret ptr %3
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64)

define linkonce ptr @"__llgo_load_github.com/goplus/llgo/cl/_testgo/reflectfn.struct$b7Su1hWaFih-M0M9hMk6nO_RD1K_GQu5WjIXQp6Q2e8"() {
_llgo_0:
  %0 = load ptr, ptr @"github.com/goplus/llgo/cl/_testgo/reflectfn.struct$b7Su1hWaFih-M0M9hMk6nO_RD1K_GQu5WjIXQp6Q2e8", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %2, 0
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %3, i64 0, 1
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %4, i64 0, 2
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %7 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %6, 0
  %8 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, i64 0, 1
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %8, i64 0, 2
  %10 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %5, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %9, i1 false)
  %11 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 2 }, ptr %10, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %12 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %13 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, ptr %12, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %14 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 112)
  %15 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %14, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %11, ptr %15, align 8
  %16 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %14, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %13, ptr %16, align 8
  %17 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %14, 0
  %18 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %17, i64 2, 1
  %19 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %18, i64 2, 2
  %20 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 43 }, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %19)
  store ptr %20, ptr @"github.com/goplus/llgo/cl/_testgo/reflectfn.struct$b7Su1hWaFih-M0M9hMk6nO_RD1K_GQu5WjIXQp6Q2e8", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %21 = load ptr, ptr @"github.com/goplus/llgo/cl/_testgo/reflectfn.struct$b7Su1hWaFih-M0M9hMk6nO_RD1K_GQu5WjIXQp6Q2e8", align 8
  ret ptr %21
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String", i64, %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1)

declare { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @fmt.Println(%"github.com/goplus/llgo/runtime/internal/runtime.Slice")

define linkonce void @"__llgo_stub.github.com/goplus/llgo/cl/_testgo/reflectfn.demo"(ptr %0) {
_llgo_0:
  tail call void @"github.com/goplus/llgo/cl/_testgo/reflectfn.demo"()
  ret void
}

declare %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

declare ptr @reflect.Value.UnsafePointer(%reflect.Value)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64)
