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
  %0 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 4 }, ptr %0, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr %0)
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
  call void @"github.com/goplus/llgo/cl/_testgo/reflectfn.init$after"()
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
  %6 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %7 = load ptr, ptr @_llgo_Pointer, align 8
  %8 = load ptr, ptr @"github.com/goplus/llgo/cl/_testgo/reflectfn.struct$b7Su1hWaFih-M0M9hMk6nO_RD1K_GQu5WjIXQp6Q2e8", align 8
  %9 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store { ptr, ptr } %3, ptr %9, align 8
  %10 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %8, 0
  %11 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %10, ptr %9, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %11, ptr %5, align 8
  %12 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %4, 0
  %13 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %12, i64 1, 1
  %14 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %13, i64 1, 2
  %15 = alloca { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, align 8
  %16 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %14, ptr %16, align 8
  call void @fmt.Println(ptr %15, ptr %16)
  %17 = load { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %15, align 8
  %18 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  %19 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %18, i64 0
  %20 = load ptr, ptr @"github.com/goplus/llgo/cl/_testgo/reflectfn.struct$b7Su1hWaFih-M0M9hMk6nO_RD1K_GQu5WjIXQp6Q2e8", align 8
  %21 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testgo/reflectfn.demo", ptr null }, ptr %21, align 8
  %22 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %20, 0
  %23 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %22, ptr %21, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %23, ptr %19, align 8
  %24 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %18, 0
  %25 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %24, i64 1, 1
  %26 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %25, i64 1, 2
  %27 = alloca { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, align 8
  %28 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %26, ptr %28, align 8
  call void @fmt.Println(ptr %27, ptr %28)
  %29 = load { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %27, align 8
  %30 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  %31 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %30, i64 0
  %32 = load ptr, ptr @"github.com/goplus/llgo/cl/_testgo/reflectfn.struct$b7Su1hWaFih-M0M9hMk6nO_RD1K_GQu5WjIXQp6Q2e8", align 8
  %33 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testgo/reflectfn.demo", ptr null }, ptr %33, align 8
  %34 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %32, 0
  %35 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %34, ptr %33, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %35, ptr %31, align 8
  %36 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %30, 0
  %37 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %36, i64 1, 1
  %38 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %37, i64 1, 2
  %39 = alloca { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, align 8
  %40 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %38, ptr %40, align 8
  call void @fmt.Println(ptr %39, ptr %40)
  %41 = load { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %39, align 8
  %42 = load ptr, ptr @"github.com/goplus/llgo/cl/_testgo/reflectfn.struct$b7Su1hWaFih-M0M9hMk6nO_RD1K_GQu5WjIXQp6Q2e8", align 8
  %43 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store { ptr, ptr } %3, ptr %43, align 8
  %44 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %42, 0
  %45 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %44, ptr %43, 1
  %46 = alloca %reflect.Value, align 8
  %47 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %45, ptr %47, align 8
  call void @reflect.ValueOf(ptr %46, ptr %47)
  %48 = load %reflect.Value, ptr %46, align 8
  %49 = alloca %reflect.Value, align 8
  store %reflect.Value %48, ptr %49, align 8
  %50 = call ptr @reflect.Value.UnsafePointer(ptr %49)
  %51 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  %52 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %51, i64 0
  %53 = load ptr, ptr @_llgo_Pointer, align 8
  %54 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %53, 0
  %55 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %54, ptr %50, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %55, ptr %52, align 8
  %56 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %51, 0
  %57 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %56, i64 1, 1
  %58 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %57, i64 1, 2
  %59 = alloca { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, align 8
  %60 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %58, ptr %60, align 8
  call void @fmt.Println(ptr %59, ptr %60)
  %61 = load { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %59, align 8
  %62 = load ptr, ptr @"github.com/goplus/llgo/cl/_testgo/reflectfn.struct$b7Su1hWaFih-M0M9hMk6nO_RD1K_GQu5WjIXQp6Q2e8", align 8
  %63 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testgo/reflectfn.demo", ptr null }, ptr %63, align 8
  %64 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %62, 0
  %65 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %64, ptr %63, 1
  %66 = alloca %reflect.Value, align 8
  %67 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %65, ptr %67, align 8
  call void @reflect.ValueOf(ptr %66, ptr %67)
  %68 = load %reflect.Value, ptr %66, align 8
  %69 = alloca %reflect.Value, align 8
  store %reflect.Value %68, ptr %69, align 8
  %70 = call ptr @reflect.Value.UnsafePointer(ptr %69)
  %71 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  %72 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %71, i64 0
  %73 = load ptr, ptr @_llgo_Pointer, align 8
  %74 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %73, 0
  %75 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %74, ptr %70, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %75, ptr %72, align 8
  %76 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %71, 0
  %77 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %76, i64 1, 1
  %78 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %77, i64 1, 2
  %79 = alloca { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, align 8
  %80 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %78, ptr %80, align 8
  call void @fmt.Println(ptr %79, ptr %80)
  %81 = load { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %79, align 8
  %82 = load ptr, ptr @"github.com/goplus/llgo/cl/_testgo/reflectfn.struct$b7Su1hWaFih-M0M9hMk6nO_RD1K_GQu5WjIXQp6Q2e8", align 8
  %83 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testgo/reflectfn.demo", ptr null }, ptr %83, align 8
  %84 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %82, 0
  %85 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %84, ptr %83, 1
  %86 = alloca %reflect.Value, align 8
  %87 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %85, ptr %87, align 8
  call void @reflect.ValueOf(ptr %86, ptr %87)
  %88 = load %reflect.Value, ptr %86, align 8
  %89 = alloca %reflect.Value, align 8
  store %reflect.Value %88, ptr %89, align 8
  %90 = call ptr @reflect.Value.UnsafePointer(ptr %89)
  %91 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  %92 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %91, i64 0
  %93 = load ptr, ptr @_llgo_Pointer, align 8
  %94 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %93, 0
  %95 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %94, ptr %90, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %95, ptr %92, align 8
  %96 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %91, 0
  %97 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %96, i64 1, 1
  %98 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %97, i64 1, 2
  %99 = alloca { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, align 8
  %100 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %98, ptr %100, align 8
  call void @fmt.Println(ptr %99, ptr %100)
  %101 = load { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %99, align 8
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

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare void @fmt.init()

declare void @reflect.init()

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

define void @"github.com/goplus/llgo/cl/_testgo/reflectfn.init$after"() {
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
  %10 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %5, ptr %10, align 8
  %11 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %9, ptr %11, align 8
  %12 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(ptr %10, ptr %11, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %12)
  store ptr %12, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %13 = load ptr, ptr @_llgo_Pointer, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %15 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %15)
  store ptr %15, ptr @_llgo_Pointer, align 8
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_2
  %16 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %17 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %16, 0
  %18 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %17, i64 0, 1
  %19 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %18, i64 0, 2
  %20 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %21 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %20, 0
  %22 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %21, i64 0, 1
  %23 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %22, i64 0, 2
  %24 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %19, ptr %24, align 8
  %25 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %23, ptr %25, align 8
  %26 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(ptr %24, ptr %25, i1 false)
  %27 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %28 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 2 }, ptr %28, align 8
  %29 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %29, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %27, ptr %28, ptr %26, i64 0, ptr %29, i1 false)
  %30 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %27, align 8
  %31 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %32 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %33 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, ptr %33, align 8
  %34 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %34, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %32, ptr %33, ptr %31, i64 8, ptr %34, i1 false)
  %35 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %32, align 8
  %36 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 112)
  %37 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %36, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %30, ptr %37, align 8
  %38 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %36, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %35, ptr %38, align 8
  %39 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %36, 0
  %40 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %39, i64 2, 1
  %41 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %40, i64 2, 2
  %42 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 43 }, ptr %42, align 8
  %43 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %41, ptr %43, align 8
  %44 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(ptr %42, i64 16, ptr %43)
  store ptr %44, ptr @"github.com/goplus/llgo/cl/_testgo/reflectfn.struct$b7Su1hWaFih-M0M9hMk6nO_RD1K_GQu5WjIXQp6Q2e8", align 8
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(ptr, ptr, i1)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(ptr, i64, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr, ptr, ptr, i64, ptr, i1)

declare void @fmt.Println(ptr, ptr)

define linkonce void @"__llgo_stub.github.com/goplus/llgo/cl/_testgo/reflectfn.demo"(ptr %0) {
_llgo_0:
  tail call void @"github.com/goplus/llgo/cl/_testgo/reflectfn.demo"()
  ret void
}

declare void @reflect.ValueOf(ptr, ptr)

declare ptr @reflect.Value.UnsafePointer(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64)
