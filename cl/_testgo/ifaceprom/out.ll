; ModuleID = 'github.com/goplus/llgo/cl/_testgo/ifaceprom'
source_filename = "github.com/goplus/llgo/cl/_testgo/ifaceprom"

%"github.com/goplus/llgo/cl/_testgo/ifaceprom.S" = type { %"github.com/goplus/llgo/runtime/internal/runtime.iface" }
%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/cl/_testgo/ifaceprom.impl" = type {}
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/abi.Method" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, ptr, ptr }
%"github.com/goplus/llgo/runtime/abi.Imethod" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
%"github.com/goplus/llgo/runtime/abi.StructField" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 }

@"github.com/goplus/llgo/cl/_testgo/ifaceprom.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [3 x i8] c"two", align 1
@"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceprom.impl" = linkonce global ptr null, align 8
@1 = private unnamed_addr constant [43 x i8] c"github.com/goplus/llgo/cl/_testgo/ifaceprom", align 1
@2 = private unnamed_addr constant [4 x i8] c"impl", align 1
@"_llgo_struct$n1H8J_3prDN3firMwPxBLVTkE5hJ9Di-AqNvaC9jczw" = linkonce global ptr null, align 8
@3 = private unnamed_addr constant [3 x i8] c"one", align 1
@4 = private unnamed_addr constant [47 x i8] c"github.com/goplus/llgo/cl/_testgo/ifaceprom.one", align 1
@_llgo_int = linkonce global ptr null, align 8
@"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" = linkonce global ptr null, align 8
@5 = private unnamed_addr constant [47 x i8] c"github.com/goplus/llgo/cl/_testgo/ifaceprom.two", align 1
@_llgo_string = linkonce global ptr null, align 8
@"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" = linkonce global ptr null, align 8
@"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceprom.I" = linkonce global ptr null, align 8
@6 = private unnamed_addr constant [1 x i8] c"I", align 1
@7 = private unnamed_addr constant [116 x i8] c"type assertion github.com/goplus/llgo/cl/_testgo/ifaceprom.I -> github.com/goplus/llgo/cl/_testgo/ifaceprom.I failed", align 1
@8 = private unnamed_addr constant [4 x i8] c"pass", align 1

define i64 @"github.com/goplus/llgo/cl/_testgo/ifaceprom.S.one"(%"github.com/goplus/llgo/cl/_testgo/ifaceprom.S" %0) {
_llgo_0:
  %1 = alloca %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S", align 8
  call void @llvm.memset(ptr %1, i8 0, i64 16, i1 false)
  store %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S" %0, ptr %1, align 8
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S", ptr %1, i32 0, i32 0
  %3 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %3)
  %5 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %3, 0
  %6 = getelementptr ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  %8 = insertvalue { ptr, ptr } undef, ptr %7, 0
  %9 = insertvalue { ptr, ptr } %8, ptr %4, 1
  %10 = extractvalue { ptr, ptr } %9, 1
  %11 = extractvalue { ptr, ptr } %9, 0
  %12 = call i64 %11(ptr %10)
  ret i64 %12
}

define %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/cl/_testgo/ifaceprom.S.two"(%"github.com/goplus/llgo/cl/_testgo/ifaceprom.S" %0) {
_llgo_0:
  %1 = alloca %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S", align 8
  call void @llvm.memset(ptr %1, i8 0, i64 16, i1 false)
  store %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S" %0, ptr %1, align 8
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S", ptr %1, i32 0, i32 0
  %3 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %3)
  %5 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %3, 0
  %6 = getelementptr ptr, ptr %5, i64 4
  %7 = load ptr, ptr %6, align 8
  %8 = insertvalue { ptr, ptr } undef, ptr %7, 0
  %9 = insertvalue { ptr, ptr } %8, ptr %4, 1
  %10 = extractvalue { ptr, ptr } %9, 1
  %11 = extractvalue { ptr, ptr } %9, 0
  %12 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" %11(ptr %10)
  ret %"github.com/goplus/llgo/runtime/internal/runtime.String" %12
}

define i64 @"github.com/goplus/llgo/cl/_testgo/ifaceprom.(*S).one"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S", ptr %0, i32 0, i32 0
  %2 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %1, align 8
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %2)
  %4 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %2, 0
  %5 = getelementptr ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  %7 = insertvalue { ptr, ptr } undef, ptr %6, 0
  %8 = insertvalue { ptr, ptr } %7, ptr %3, 1
  %9 = extractvalue { ptr, ptr } %8, 1
  %10 = extractvalue { ptr, ptr } %8, 0
  %11 = call i64 %10(ptr %9)
  ret i64 %11
}

define %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/cl/_testgo/ifaceprom.(*S).two"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S", ptr %0, i32 0, i32 0
  %2 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %1, align 8
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %2)
  %4 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %2, 0
  %5 = getelementptr ptr, ptr %4, i64 4
  %6 = load ptr, ptr %5, align 8
  %7 = insertvalue { ptr, ptr } undef, ptr %6, 0
  %8 = insertvalue { ptr, ptr } %7, ptr %3, 1
  %9 = extractvalue { ptr, ptr } %8, 1
  %10 = extractvalue { ptr, ptr } %8, 0
  %11 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" %10(ptr %9)
  ret %"github.com/goplus/llgo/runtime/internal/runtime.String" %11
}

define i64 @"github.com/goplus/llgo/cl/_testgo/ifaceprom.impl.one"(%"github.com/goplus/llgo/cl/_testgo/ifaceprom.impl" %0) {
_llgo_0:
  ret i64 1
}

define %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/cl/_testgo/ifaceprom.impl.two"(%"github.com/goplus/llgo/cl/_testgo/ifaceprom.impl" %0) {
_llgo_0:
  ret %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 3 }
}

define i64 @"github.com/goplus/llgo/cl/_testgo/ifaceprom.(*impl).one"(ptr %0) {
_llgo_0:
  %1 = load %"github.com/goplus/llgo/cl/_testgo/ifaceprom.impl", ptr %0, align 1
  %2 = call i64 @"github.com/goplus/llgo/cl/_testgo/ifaceprom.impl.one"(%"github.com/goplus/llgo/cl/_testgo/ifaceprom.impl" %1)
  ret i64 %2
}

define %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/cl/_testgo/ifaceprom.(*impl).two"(ptr %0) {
_llgo_0:
  %1 = load %"github.com/goplus/llgo/cl/_testgo/ifaceprom.impl", ptr %0, align 1
  %2 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/cl/_testgo/ifaceprom.impl.two"(%"github.com/goplus/llgo/cl/_testgo/ifaceprom.impl" %1)
  ret %"github.com/goplus/llgo/runtime/internal/runtime.String" %2
}

define void @"github.com/goplus/llgo/cl/_testgo/ifaceprom.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testgo/ifaceprom.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testgo/ifaceprom.init$guard", align 1
  call void @"github.com/goplus/llgo/cl/_testgo/ifaceprom.init$after"()
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/ifaceprom.main"() {
_llgo_0:
  %0 = alloca %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S", align 8
  call void @llvm.memset(ptr %0, i8 0, i64 16, i1 false)
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S", ptr %0, i32 0, i32 0
  %2 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceprom.impl", align 8
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  store %"github.com/goplus/llgo/cl/_testgo/ifaceprom.impl" zeroinitializer, ptr %3, align 1
  %4 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceprom.I", align 8
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %4, ptr %2)
  %6 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %5, 0
  %7 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %6, ptr %3, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %7, ptr %1, align 8
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S", ptr %0, i32 0, i32 0
  %9 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %8, align 8
  %10 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %9)
  %11 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %9, 0
  %12 = getelementptr ptr, ptr %11, i64 3
  %13 = load ptr, ptr %12, align 8
  %14 = insertvalue { ptr, ptr } undef, ptr %13, 0
  %15 = insertvalue { ptr, ptr } %14, ptr %10, 1
  %16 = extractvalue { ptr, ptr } %15, 1
  %17 = extractvalue { ptr, ptr } %15, 0
  %18 = call i64 %17(ptr %16)
  %19 = icmp ne i64 %18, 1
  br i1 %19, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %20 = load ptr, ptr @_llgo_int, align 8
  %21 = inttoptr i64 %18 to ptr
  %22 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %20, 0
  %23 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %22, ptr %21, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %23)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  %24 = load %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S", ptr %0, align 8
  %25 = extractvalue %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S" %24, 0
  %26 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %25)
  %27 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %25, 0
  %28 = getelementptr ptr, ptr %27, i64 3
  %29 = load ptr, ptr %28, align 8
  %30 = insertvalue { ptr, ptr } undef, ptr %29, 0
  %31 = insertvalue { ptr, ptr } %30, ptr %26, 1
  %32 = extractvalue { ptr, ptr } %31, 1
  %33 = extractvalue { ptr, ptr } %31, 0
  %34 = call i64 %33(ptr %32)
  %35 = icmp ne i64 %34, 1
  br i1 %35, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %36 = load ptr, ptr @_llgo_int, align 8
  %37 = inttoptr i64 %34 to ptr
  %38 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %36, 0
  %39 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %38, ptr %37, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %39)
  unreachable

_llgo_4:                                          ; preds = %_llgo_2
  %40 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S", ptr %0, i32 0, i32 0
  %41 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %40, align 8
  %42 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %41)
  %43 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceprom.I", align 8
  %44 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %41, 1
  br i1 true, label %_llgo_17, label %_llgo_18

_llgo_5:                                          ; preds = %_llgo_17
  %45 = load ptr, ptr @_llgo_int, align 8
  %46 = inttoptr i64 %115 to ptr
  %47 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %45, 0
  %48 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %47, ptr %46, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %48)
  unreachable

_llgo_6:                                          ; preds = %_llgo_17
  %49 = load %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S", ptr %0, align 8
  %50 = extractvalue %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S" %49, 0
  %51 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %50)
  %52 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceprom.I", align 8
  %53 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %50, 1
  br i1 true, label %_llgo_19, label %_llgo_20

_llgo_7:                                          ; preds = %_llgo_19
  %54 = load ptr, ptr @_llgo_int, align 8
  %55 = inttoptr i64 %126 to ptr
  %56 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %54, 0
  %57 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %56, ptr %55, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %57)
  unreachable

_llgo_8:                                          ; preds = %_llgo_19
  %58 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S", ptr %0, i32 0, i32 0
  %59 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %58, align 8
  %60 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %59)
  %61 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %59, 0
  %62 = getelementptr ptr, ptr %61, i64 4
  %63 = load ptr, ptr %62, align 8
  %64 = insertvalue { ptr, ptr } undef, ptr %63, 0
  %65 = insertvalue { ptr, ptr } %64, ptr %60, 1
  %66 = extractvalue { ptr, ptr } %65, 1
  %67 = extractvalue { ptr, ptr } %65, 0
  %68 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" %67(ptr %66)
  %69 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %68, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 3 })
  %70 = xor i1 %69, true
  br i1 %70, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  %71 = load ptr, ptr @_llgo_string, align 8
  %72 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %68, ptr %72, align 8
  %73 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %71, 0
  %74 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %73, ptr %72, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %74)
  unreachable

_llgo_10:                                         ; preds = %_llgo_8
  %75 = load %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S", ptr %0, align 8
  %76 = extractvalue %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S" %75, 0
  %77 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %76)
  %78 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %76, 0
  %79 = getelementptr ptr, ptr %78, i64 4
  %80 = load ptr, ptr %79, align 8
  %81 = insertvalue { ptr, ptr } undef, ptr %80, 0
  %82 = insertvalue { ptr, ptr } %81, ptr %77, 1
  %83 = extractvalue { ptr, ptr } %82, 1
  %84 = extractvalue { ptr, ptr } %82, 0
  %85 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" %84(ptr %83)
  %86 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %85, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 3 })
  %87 = xor i1 %86, true
  br i1 %87, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  %88 = load ptr, ptr @_llgo_string, align 8
  %89 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %85, ptr %89, align 8
  %90 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %88, 0
  %91 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %90, ptr %89, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %91)
  unreachable

_llgo_12:                                         ; preds = %_llgo_10
  %92 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S", ptr %0, i32 0, i32 0
  %93 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %92, align 8
  %94 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %93)
  %95 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceprom.I", align 8
  %96 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %93, 1
  br i1 true, label %_llgo_21, label %_llgo_22

_llgo_13:                                         ; preds = %_llgo_21
  %97 = load ptr, ptr @_llgo_string, align 8
  %98 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %137, ptr %98, align 8
  %99 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %97, 0
  %100 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %99, ptr %98, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %100)
  unreachable

_llgo_14:                                         ; preds = %_llgo_21
  %101 = load %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S", ptr %0, align 8
  %102 = extractvalue %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S" %101, 0
  %103 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %102)
  %104 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceprom.I", align 8
  %105 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %102, 1
  br i1 true, label %_llgo_23, label %_llgo_24

_llgo_15:                                         ; preds = %_llgo_23
  %106 = load ptr, ptr @_llgo_string, align 8
  %107 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %149, ptr %107, align 8
  %108 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %106, 0
  %109 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %108, ptr %107, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %109)
  unreachable

_llgo_16:                                         ; preds = %_llgo_23
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 4 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void

_llgo_17:                                         ; preds = %_llgo_4
  %110 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %111 = getelementptr inbounds { %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %110, i32 0, i32 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %41, ptr %111, align 8
  %112 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testgo/ifaceprom.I.one$bound", ptr undef }, ptr %110, 1
  %113 = extractvalue { ptr, ptr } %112, 1
  %114 = extractvalue { ptr, ptr } %112, 0
  %115 = call i64 %114(ptr %113)
  %116 = icmp ne i64 %115, 1
  br i1 %116, label %_llgo_5, label %_llgo_6

_llgo_18:                                         ; preds = %_llgo_4
  %117 = load ptr, ptr @_llgo_string, align 8
  %118 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 116 }, ptr %118, align 8
  %119 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %117, 0
  %120 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %119, ptr %118, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %120)
  unreachable

_llgo_19:                                         ; preds = %_llgo_6
  %121 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %122 = getelementptr inbounds { %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %121, i32 0, i32 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %50, ptr %122, align 8
  %123 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testgo/ifaceprom.I.one$bound", ptr undef }, ptr %121, 1
  %124 = extractvalue { ptr, ptr } %123, 1
  %125 = extractvalue { ptr, ptr } %123, 0
  %126 = call i64 %125(ptr %124)
  %127 = icmp ne i64 %126, 1
  br i1 %127, label %_llgo_7, label %_llgo_8

_llgo_20:                                         ; preds = %_llgo_6
  %128 = load ptr, ptr @_llgo_string, align 8
  %129 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 116 }, ptr %129, align 8
  %130 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %128, 0
  %131 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %130, ptr %129, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %131)
  unreachable

_llgo_21:                                         ; preds = %_llgo_12
  %132 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %133 = getelementptr inbounds { %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %132, i32 0, i32 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %93, ptr %133, align 8
  %134 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testgo/ifaceprom.I.two$bound", ptr undef }, ptr %132, 1
  %135 = extractvalue { ptr, ptr } %134, 1
  %136 = extractvalue { ptr, ptr } %134, 0
  %137 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" %136(ptr %135)
  %138 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %137, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 3 })
  %139 = xor i1 %138, true
  br i1 %139, label %_llgo_13, label %_llgo_14

_llgo_22:                                         ; preds = %_llgo_12
  %140 = load ptr, ptr @_llgo_string, align 8
  %141 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 116 }, ptr %141, align 8
  %142 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %140, 0
  %143 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %142, ptr %141, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %143)
  unreachable

_llgo_23:                                         ; preds = %_llgo_14
  %144 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %145 = getelementptr inbounds { %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %144, i32 0, i32 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %102, ptr %145, align 8
  %146 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testgo/ifaceprom.I.two$bound", ptr undef }, ptr %144, 1
  %147 = extractvalue { ptr, ptr } %146, 1
  %148 = extractvalue { ptr, ptr } %146, 0
  %149 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" %148(ptr %147)
  %150 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %149, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 3 })
  %151 = xor i1 %150, true
  br i1 %151, label %_llgo_15, label %_llgo_16

_llgo_24:                                         ; preds = %_llgo_14
  %152 = load ptr, ptr @_llgo_string, align 8
  %153 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 116 }, ptr %153, align 8
  %154 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %152, 0
  %155 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %154, ptr %153, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %155)
  unreachable
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

define void @"github.com/goplus/llgo/cl/_testgo/ifaceprom.init$after"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 4 }, i64 25, i64 0, i64 2, i64 2)
  store ptr %0, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceprom.impl", align 8
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %2 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1, 0
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %2, i64 0, 1
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %3, i64 0, 2
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 43 }, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %4)
  store ptr %5, ptr @"_llgo_struct$n1H8J_3prDN3firMwPxBLVTkE5hJ9Di-AqNvaC9jczw", align 8
  %6 = load ptr, ptr @"_llgo_struct$n1H8J_3prDN3firMwPxBLVTkE5hJ9Di-AqNvaC9jczw", align 8
  %7 = load ptr, ptr @_llgo_int, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %9 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  store ptr %9, ptr @_llgo_int, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %10 = load ptr, ptr @_llgo_int, align 8
  %11 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %13 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %14 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %13, 0
  %15 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %14, i64 0, 1
  %16 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %15, i64 0, 2
  %17 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %18 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %19 = getelementptr ptr, ptr %18, i64 0
  store ptr %17, ptr %19, align 8
  %20 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %18, 0
  %21 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %20, i64 1, 1
  %22 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %21, i64 1, 2
  %23 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %16, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %22, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %23)
  store ptr %23, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_2
  %24 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %25 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 47 }, ptr undef, ptr undef, ptr undef }, ptr %24, 1
  %26 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %25, ptr @"github.com/goplus/llgo/cl/_testgo/ifaceprom.(*impl).one", 2
  %27 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %26, ptr @"github.com/goplus/llgo/cl/_testgo/ifaceprom.(*impl).one", 3
  %28 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 47 }, ptr undef, ptr undef, ptr undef }, ptr %24, 1
  %29 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %28, ptr @"github.com/goplus/llgo/cl/_testgo/ifaceprom.(*impl).one", 2
  %30 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %29, ptr @"github.com/goplus/llgo/cl/_testgo/ifaceprom.impl.one", 3
  %31 = load ptr, ptr @_llgo_string, align 8
  %32 = icmp eq ptr %31, null
  br i1 %32, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %33 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  store ptr %33, ptr @_llgo_string, align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %34 = load ptr, ptr @_llgo_string, align 8
  %35 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %36 = icmp eq ptr %35, null
  br i1 %36, label %_llgo_7, label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_6
  %37 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %38 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %37, 0
  %39 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %38, i64 0, 1
  %40 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %39, i64 0, 2
  %41 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %42 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %43 = getelementptr ptr, ptr %42, i64 0
  store ptr %41, ptr %43, align 8
  %44 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %42, 0
  %45 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %44, i64 1, 1
  %46 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %45, i64 1, 2
  %47 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %40, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %46, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %47)
  store ptr %47, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_6
  %48 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %49 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 47 }, ptr undef, ptr undef, ptr undef }, ptr %48, 1
  %50 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %49, ptr @"github.com/goplus/llgo/cl/_testgo/ifaceprom.(*impl).two", 2
  %51 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %50, ptr @"github.com/goplus/llgo/cl/_testgo/ifaceprom.(*impl).two", 3
  %52 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 47 }, ptr undef, ptr undef, ptr undef }, ptr %48, 1
  %53 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %52, ptr @"github.com/goplus/llgo/cl/_testgo/ifaceprom.(*impl).two", 2
  %54 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %53, ptr @"github.com/goplus/llgo/cl/_testgo/ifaceprom.impl.two", 3
  %55 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 80)
  %56 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %55, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %30, ptr %56, align 8
  %57 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %55, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Method" %54, ptr %57, align 8
  %58 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %55, 0
  %59 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %58, i64 2, 1
  %60 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %59, i64 2, 2
  %61 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 80)
  %62 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %61, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %27, ptr %62, align 8
  %63 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %61, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Method" %51, ptr %63, align 8
  %64 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %61, 0
  %65 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %64, i64 2, 1
  %66 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %65, i64 2, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %0, ptr %6, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %60, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %66)
  %67 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 1 })
  %68 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceprom.I", align 8
  %69 = icmp eq ptr %68, null
  br i1 %69, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  store ptr %67, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceprom.I", align 8
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_8
  %70 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %71 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  br i1 %69, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  %72 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 47 }, ptr undef }, ptr %70, 1
  %73 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 47 }, ptr undef }, ptr %71, 1
  %74 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 48)
  %75 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %74, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %72, ptr %75, align 8
  %76 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %74, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %73, ptr %76, align 8
  %77 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %74, 0
  %78 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %77, i64 2, 1
  %79 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %78, i64 2, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamedInterface"(ptr %67, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %79)
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_10
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.String", i64, i64, i64, i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String", i64, %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.Slice", i1)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamedInterface"(ptr, %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

define i64 @"github.com/goplus/llgo/cl/_testgo/ifaceprom.I.one$bound"(ptr %0) {
_llgo_0:
  %1 = load { %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %0, align 8
  %2 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %1, 0
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %2)
  %4 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %2, 0
  %5 = getelementptr ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  %7 = insertvalue { ptr, ptr } undef, ptr %6, 0
  %8 = insertvalue { ptr, ptr } %7, ptr %3, 1
  %9 = extractvalue { ptr, ptr } %8, 1
  %10 = extractvalue { ptr, ptr } %8, 0
  %11 = call i64 %10(ptr %9)
  ret i64 %11
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.String")

define %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/cl/_testgo/ifaceprom.I.two$bound"(ptr %0) {
_llgo_0:
  %1 = load { %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %0, align 8
  %2 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %1, 0
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %2)
  %4 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %2, 0
  %5 = getelementptr ptr, ptr %4, i64 4
  %6 = load ptr, ptr %5, align 8
  %7 = insertvalue { ptr, ptr } undef, ptr %6, 0
  %8 = insertvalue { ptr, ptr } %7, ptr %3, 1
  %9 = extractvalue { ptr, ptr } %8, 1
  %10 = extractvalue { ptr, ptr } %8, 0
  %11 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" %10(ptr %9)
  ret %"github.com/goplus/llgo/runtime/internal/runtime.String" %11
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
