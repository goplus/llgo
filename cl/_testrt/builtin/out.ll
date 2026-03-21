; ModuleID = 'github.com/goplus/llgo/cl/_testrt/builtin'
source_filename = "github.com/goplus/llgo/cl/_testrt/builtin"

%"github.com/goplus/llgo/runtime/abi.Type" = type { i64, i64, i32, i8, i8, i8, i8, { ptr, ptr }, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/abi.PtrType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }

@"github.com/goplus/llgo/cl/_testrt/builtin.a" = global i64 0, align 8
@"github.com/goplus/llgo/cl/_testrt/builtin.b" = global i64 0, align 8
@"github.com/goplus/llgo/cl/_testrt/builtin.init$guard" = global i1 false, align 1
@"github.com/goplus/llgo/cl/_testrt/builtin.n" = global i64 0, align 8
@0 = private unnamed_addr constant [5 x i8] c"hello", align 1
@1 = private unnamed_addr constant [3 x i8] c"def", align 1
@_llgo_int = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 -25294021, i8 12, i8 8, i8 8, i8 2, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 3 }, ptr @"*_llgo_int" }, align 8
@2 = private unnamed_addr constant [3 x i8] c"int", align 1
@"*_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -939606833, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 3 }, ptr null }, ptr @_llgo_int }, align 8
@3 = private unnamed_addr constant [4 x i8] c"ABCD", align 1
@4 = private unnamed_addr constant [7 x i8] c"\E4\B8\ADabcd", align 1
@5 = private unnamed_addr constant [3 x i8] c"abc", align 1
@6 = private unnamed_addr constant [3 x i8] c"abd", align 1
@7 = private unnamed_addr constant [2 x i8] c"fn", align 1

define double @"github.com/goplus/llgo/cl/_testrt/builtin.Float64frombits"(i64 %0) {
_llgo_0:
  %1 = alloca ptr, align 8
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  store ptr null, ptr %3, align 8
  %4 = alloca i64, align 8
  call void @llvm.memset(ptr %4, i8 0, i64 8, i1 false)
  store i64 %0, ptr %4, align 4
  store ptr %4, ptr %1, align 8
  %5 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %5)
  %6 = load ptr, ptr %1, align 8
  %7 = ptrtoint ptr %6 to i64
  %8 = and i64 %7, 72057594037927935
  %9 = xor i64 %8, 25399393228665167
  %10 = shl i64 %9, 17
  %11 = select i1 false, i64 0, i64 %10
  %12 = lshr i64 %9, 39
  %13 = select i1 false, i64 0, i64 %12
  %14 = or i64 %11, %13
  %15 = and i64 %14, 72057594037927935
  %16 = or i64 %15, -6557241057451442176
  store i64 %16, ptr %2, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %3, i64 %16)
  call void @runtime.ClobberPointerRegs()
  %17 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %17)
  %18 = load i64, ptr %2, align 4
  %19 = alloca double, align 8
  call void @runtime.LoadHiddenPointee(ptr %19, i64 %18, i64 8)
  %20 = icmp eq ptr %19, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %20)
  %21 = load double, ptr %19, align 8
  store double 0.000000e+00, ptr %19, align 8
  store i64 0, ptr %4, align 4
  call void @runtime.ClobberPointerRegs()
  store ptr null, ptr %1, align 8
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  call void @runtime.ClobberPointerRegs()
  ret double %21
}

define double @"github.com/goplus/llgo/cl/_testrt/builtin.Inf"(i64 %0) {
_llgo_0:
  %1 = icmp sge i64 %0, 0
  br i1 %1, label %_llgo_1, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_0
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_3, %_llgo_1
  %2 = phi i64 [ 9218868437227405312, %_llgo_1 ], [ -4503599627370496, %_llgo_3 ]
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %4 = call double @"github.com/goplus/llgo/cl/_testrt/builtin.Float64frombits"(i64 %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %3)
  ret double %4

_llgo_3:                                          ; preds = %_llgo_0
  br label %_llgo_2
}

define i1 @"github.com/goplus/llgo/cl/_testrt/builtin.IsNaN"(double %0) {
_llgo_0:
  %1 = fcmp une double %0, %0
  ret i1 %1
}

define double @"github.com/goplus/llgo/cl/_testrt/builtin.NaN"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %1 = call double @"github.com/goplus/llgo/cl/_testrt/builtin.Float64frombits"(i64 9221120237041090561)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %0)
  ret double %1
}

define void @"github.com/goplus/llgo/cl/_testrt/builtin.demo"() {
_llgo_0:
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/builtin.init"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/builtin.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/builtin.init$guard", align 1
  store i64 9223372036854775807, ptr @"github.com/goplus/llgo/cl/_testrt/builtin.a", align 4
  store i64 -9223372036854775808, ptr @"github.com/goplus/llgo/cl/_testrt/builtin.b", align 4
  store i64 -1, ptr @"github.com/goplus/llgo/cl/_testrt/builtin.n", align 4
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/builtin.main"() {
_llgo_0:
  %0 = alloca i64, align 8
  %1 = alloca ptr, align 8
  store ptr null, ptr %1, align 8
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  store ptr null, ptr %3, align 8
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  store ptr null, ptr %5, align 8
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  store ptr null, ptr %7, align 8
  %8 = alloca i64, align 8
  %9 = alloca ptr, align 8
  store ptr null, ptr %9, align 8
  %10 = alloca { i64, i64, i64 }, align 8
  %11 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %11, align 8
  %12 = alloca i64, align 8
  %13 = alloca ptr, align 8
  store ptr null, ptr %13, align 8
  %14 = alloca i64, align 8
  %15 = alloca ptr, align 8
  store ptr null, ptr %15, align 8
  %16 = alloca i64, align 8
  %17 = alloca ptr, align 8
  store ptr null, ptr %17, align 8
  %18 = alloca i64, align 8
  %19 = alloca ptr, align 8
  store ptr null, ptr %19, align 8
  %20 = alloca i64, align 8
  %21 = alloca ptr, align 8
  store ptr null, ptr %21, align 8
  %22 = alloca i64, align 8
  %23 = alloca ptr, align 8
  store ptr null, ptr %23, align 8
  %24 = alloca { i64, i64, i64 }, align 8
  %25 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %25, align 8
  %26 = alloca i64, align 8
  %27 = alloca ptr, align 8
  store ptr null, ptr %27, align 8
  %28 = alloca i64, align 8
  %29 = alloca ptr, align 8
  store ptr null, ptr %29, align 8
  %30 = alloca i64, align 8
  %31 = alloca ptr, align 8
  store ptr null, ptr %31, align 8
  %32 = alloca i64, align 8
  %33 = alloca ptr, align 8
  store ptr null, ptr %33, align 8
  %34 = alloca i64, align 8
  %35 = alloca ptr, align 8
  store ptr null, ptr %35, align 8
  %36 = alloca { i64, i64, i64 }, align 8
  %37 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %37, align 8
  %38 = alloca { i64, i64, i64 }, align 8
  %39 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %39, align 8
  %40 = alloca { i64, i64, i64 }, align 8
  %41 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %41, align 8
  %42 = alloca { i64, i64, i64 }, align 8
  %43 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %43, align 8
  %44 = alloca { i64, i64, i64 }, align 8
  %45 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %45, align 8
  %46 = alloca { i64, i64, i64 }, align 8
  %47 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %47, align 8
  %48 = alloca { i64, i64, i64 }, align 8
  %49 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %49, align 8
  %50 = alloca { i64, i64, i64 }, align 8
  %51 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %51, align 8
  %52 = alloca { i64, i64, i64 }, align 8
  %53 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %53, align 8
  %54 = alloca { i64, i64, i64 }, align 8
  %55 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %55, align 8
  %56 = alloca { i64, i64, i64 }, align 8
  %57 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %57, align 8
  %58 = alloca { i64, i64, i64 }, align 8
  %59 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %59, align 8
  %60 = alloca { i64, i64, i64 }, align 8
  %61 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %61, align 8
  %62 = alloca { i64, i64 }, align 8
  %63 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %63, align 8
  %64 = alloca { i64, i64 }, align 8
  %65 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %65, align 8
  %66 = alloca { i64, i64 }, align 8
  %67 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %67, align 8
  %68 = alloca i64, align 8
  %69 = alloca ptr, align 8
  store ptr null, ptr %69, align 8
  %70 = alloca i64, align 8
  %71 = alloca ptr, align 8
  store ptr null, ptr %71, align 8
  %72 = alloca i64, align 8
  %73 = alloca ptr, align 8
  store ptr null, ptr %73, align 8
  %74 = alloca i64, align 8
  %75 = alloca ptr, align 8
  store ptr null, ptr %75, align 8
  %76 = alloca i64, align 8
  %77 = alloca ptr, align 8
  store ptr null, ptr %77, align 8
  %78 = alloca { i64, i64, i64 }, align 8
  %79 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %79, align 8
  %80 = alloca { i64, i64, i64 }, align 8
  %81 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %81, align 8
  %82 = alloca i64, align 8
  %83 = alloca ptr, align 8
  store ptr null, ptr %83, align 8
  %84 = alloca i64, align 8
  %85 = alloca ptr, align 8
  store ptr null, ptr %85, align 8
  %86 = alloca i64, align 8
  %87 = alloca ptr, align 8
  store ptr null, ptr %87, align 8
  %88 = alloca i64, align 8
  %89 = alloca ptr, align 8
  store ptr null, ptr %89, align 8
  %90 = alloca { i64, i64, i64 }, align 8
  %91 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %91, align 8
  %92 = alloca { i64, i64, i64 }, align 8
  %93 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %93, align 8
  %94 = alloca i64, align 8
  %95 = alloca ptr, align 8
  store ptr null, ptr %95, align 8
  %96 = alloca { i64, i64, i64 }, align 8
  %97 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %97, align 8
  %98 = alloca i64, align 8
  %99 = alloca ptr, align 8
  store ptr null, ptr %99, align 8
  %100 = alloca i64, align 8
  %101 = alloca ptr, align 8
  store ptr null, ptr %101, align 8
  %102 = alloca { i64, i64, i64 }, align 8
  %103 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %103, align 8
  %104 = alloca { i64, i64, i64 }, align 8
  %105 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %105, align 8
  %106 = alloca i64, align 8
  %107 = alloca ptr, align 8
  store ptr null, ptr %107, align 8
  %108 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  %109 = alloca ptr, align 8
  %110 = alloca i64, align 8
  %111 = alloca ptr, align 8
  store ptr null, ptr %111, align 8
  %112 = alloca i64, align 8
  %113 = alloca ptr, align 8
  store ptr null, ptr %113, align 8
  %114 = alloca { i64, i64, i64 }, align 8
  %115 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %115, align 8
  %116 = alloca i64, align 8
  %117 = alloca ptr, align 8
  store ptr null, ptr %117, align 8
  %118 = alloca i64, align 8
  %119 = alloca ptr, align 8
  store ptr null, ptr %119, align 8
  %120 = alloca i64, align 8
  %121 = alloca ptr, align 8
  store ptr null, ptr %121, align 8
  %122 = alloca { i64, i64, i64 }, align 8
  %123 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %123, align 8
  %124 = alloca i64, align 8
  %125 = alloca ptr, align 8
  store ptr null, ptr %125, align 8
  %126 = alloca i64, align 8
  %127 = alloca ptr, align 8
  store ptr null, ptr %127, align 8
  %128 = alloca i64, align 8
  %129 = alloca ptr, align 8
  store ptr null, ptr %129, align 8
  %130 = alloca { ptr, ptr }, align 8
  %131 = alloca { i64, i64, i64 }, align 8
  %132 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %132, align 8
  %133 = alloca { i64, i64, i64 }, align 8
  %134 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %134, align 8
  %135 = alloca { i64, i64 }, align 8
  %136 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %136, align 8
  %137 = alloca { i64, i64 }, align 8
  %138 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %138, align 8
  %139 = alloca i64, align 8
  %140 = alloca ptr, align 8
  store ptr null, ptr %140, align 8
  %141 = alloca { i64, i64 }, align 8
  %142 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %142, align 8
  %143 = alloca i64, align 8
  %144 = alloca ptr, align 8
  store ptr null, ptr %144, align 8
  %145 = alloca { i64, i64 }, align 8
  %146 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %146, align 8
  %147 = call i64 @runtime.AllocZHidden(i64 32)
  store i64 %147, ptr %0, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %1, i64 %147)
  %148 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %148)
  %149 = load i64, ptr %0, align 4
  %150 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 0, i64 4)
  %151 = mul i64 %150, 8
  %152 = call i64 @runtime.AdvanceHiddenPointer(i64 %149, i64 %151)
  store i64 %152, ptr %2, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %3, i64 %152)
  %153 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %153)
  %154 = load i64, ptr %2, align 4
  %155 = alloca i64, align 8
  store i64 1, ptr %155, align 4
  call void @runtime.StoreHiddenPointee(i64 %154, ptr %155, i64 8)
  store i64 0, ptr %155, align 4
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  call void @runtime.ClobberPointerRegs()
  %156 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %156)
  %157 = load i64, ptr %0, align 4
  %158 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 1, i64 4)
  %159 = mul i64 %158, 8
  %160 = call i64 @runtime.AdvanceHiddenPointer(i64 %157, i64 %159)
  store i64 %160, ptr %4, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %5, i64 %160)
  %161 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %161)
  %162 = load i64, ptr %4, align 4
  %163 = alloca i64, align 8
  store i64 2, ptr %163, align 4
  call void @runtime.StoreHiddenPointee(i64 %162, ptr %163, i64 8)
  store i64 0, ptr %163, align 4
  store i64 0, ptr %4, align 4
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  store ptr null, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  call void @runtime.ClobberPointerRegs()
  %164 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %164)
  %165 = load i64, ptr %0, align 4
  %166 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 2, i64 4)
  %167 = mul i64 %166, 8
  %168 = call i64 @runtime.AdvanceHiddenPointer(i64 %165, i64 %167)
  store i64 %168, ptr %6, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %7, i64 %168)
  %169 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %169)
  %170 = load i64, ptr %6, align 4
  %171 = alloca i64, align 8
  store i64 3, ptr %171, align 4
  call void @runtime.StoreHiddenPointee(i64 %170, ptr %171, i64 8)
  store i64 0, ptr %171, align 4
  store i64 0, ptr %6, align 4
  call void @runtime.TouchConservativeSlot(ptr %6, i64 8)
  store ptr null, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 8)
  call void @runtime.ClobberPointerRegs()
  %172 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %172)
  %173 = load i64, ptr %0, align 4
  %174 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 3, i64 4)
  %175 = mul i64 %174, 8
  %176 = call i64 @runtime.AdvanceHiddenPointer(i64 %173, i64 %175)
  store i64 %176, ptr %8, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %9, i64 %176)
  %177 = icmp eq ptr %8, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %177)
  %178 = load i64, ptr %8, align 4
  %179 = alloca i64, align 8
  store i64 4, ptr %179, align 4
  call void @runtime.StoreHiddenPointee(i64 %178, ptr %179, i64 8)
  store i64 0, ptr %179, align 4
  store i64 0, ptr %8, align 4
  call void @runtime.TouchConservativeSlot(ptr %8, i64 8)
  store ptr null, ptr %9, align 8
  call void @runtime.TouchConservativeSlot(ptr %9, i64 8)
  call void @runtime.ClobberPointerRegs()
  %180 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %180)
  %181 = load i64, ptr %0, align 4
  %182 = and i64 %181, 72057594037927935
  %183 = lshr i64 %182, 17
  %184 = select i1 false, i64 0, i64 %183
  %185 = shl i64 %182, 39
  %186 = select i1 false, i64 0, i64 %185
  %187 = or i64 %184, %186
  %188 = and i64 %187, 72057594037927935
  %189 = xor i64 %188, 25399393228665167
  %190 = inttoptr i64 %189 to ptr
  %191 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %190, 0
  %192 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %191, i64 4, 1
  %193 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %192, i64 4, 2
  %194 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %193, ptr %194, align 8
  %195 = icmp eq ptr %194, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %195)
  %196 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %194, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %196, ptr %11, align 8
  %197 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %196, 0
  %198 = ptrtoint ptr %197 to i64
  %199 = and i64 %198, 72057594037927935
  %200 = xor i64 %199, 25399393228665167
  %201 = shl i64 %200, 17
  %202 = select i1 false, i64 0, i64 %201
  %203 = lshr i64 %200, 39
  %204 = select i1 false, i64 0, i64 %203
  %205 = or i64 %202, %204
  %206 = and i64 %205, 72057594037927935
  %207 = or i64 %206, -6557241057451442176
  %208 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %196, 1
  %209 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %196, 2
  %210 = insertvalue { i64, i64, i64 } undef, i64 %207, 0
  %211 = insertvalue { i64, i64, i64 } %210, i64 %208, 1
  %212 = insertvalue { i64, i64, i64 } %211, i64 %209, 2
  store { i64, i64, i64 } %212, ptr %10, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %194, align 8
  call void @runtime.TouchConservativeSlot(ptr %194, i64 24)
  call void @runtime.ClobberPointerRegs()
  %213 = call i64 @runtime.AllocZHidden(i64 32)
  store i64 %213, ptr %12, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %13, i64 %213)
  %214 = icmp eq ptr %12, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %214)
  %215 = load i64, ptr %12, align 4
  %216 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 0, i64 4)
  %217 = mul i64 %216, 8
  %218 = call i64 @runtime.AdvanceHiddenPointer(i64 %215, i64 %217)
  store i64 %218, ptr %14, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %15, i64 %218)
  %219 = icmp eq ptr %12, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %219)
  %220 = load i64, ptr %12, align 4
  %221 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 1, i64 4)
  %222 = mul i64 %221, 8
  %223 = call i64 @runtime.AdvanceHiddenPointer(i64 %220, i64 %222)
  store i64 %223, ptr %16, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %17, i64 %223)
  %224 = icmp eq ptr %12, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %224)
  %225 = load i64, ptr %12, align 4
  %226 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 2, i64 4)
  %227 = mul i64 %226, 8
  %228 = call i64 @runtime.AdvanceHiddenPointer(i64 %225, i64 %227)
  store i64 %228, ptr %18, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %19, i64 %228)
  %229 = icmp eq ptr %12, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %229)
  %230 = load i64, ptr %12, align 4
  %231 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 3, i64 4)
  %232 = mul i64 %231, 8
  %233 = call i64 @runtime.AdvanceHiddenPointer(i64 %230, i64 %232)
  store i64 %233, ptr %20, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %21, i64 %233)
  %234 = icmp eq ptr %14, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %234)
  %235 = load i64, ptr %14, align 4
  %236 = alloca i64, align 8
  store i64 1, ptr %236, align 4
  call void @runtime.StoreHiddenPointee(i64 %235, ptr %236, i64 8)
  store i64 0, ptr %236, align 4
  store i64 0, ptr %14, align 4
  call void @runtime.TouchConservativeSlot(ptr %14, i64 8)
  store ptr null, ptr %15, align 8
  call void @runtime.TouchConservativeSlot(ptr %15, i64 8)
  call void @runtime.ClobberPointerRegs()
  %237 = icmp eq ptr %16, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %237)
  %238 = load i64, ptr %16, align 4
  %239 = alloca i64, align 8
  store i64 2, ptr %239, align 4
  call void @runtime.StoreHiddenPointee(i64 %238, ptr %239, i64 8)
  store i64 0, ptr %239, align 4
  store i64 0, ptr %16, align 4
  call void @runtime.TouchConservativeSlot(ptr %16, i64 8)
  store ptr null, ptr %17, align 8
  call void @runtime.TouchConservativeSlot(ptr %17, i64 8)
  call void @runtime.ClobberPointerRegs()
  %240 = icmp eq ptr %18, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %240)
  %241 = load i64, ptr %18, align 4
  %242 = alloca i64, align 8
  store i64 3, ptr %242, align 4
  call void @runtime.StoreHiddenPointee(i64 %241, ptr %242, i64 8)
  store i64 0, ptr %242, align 4
  store i64 0, ptr %18, align 4
  call void @runtime.TouchConservativeSlot(ptr %18, i64 8)
  store ptr null, ptr %19, align 8
  call void @runtime.TouchConservativeSlot(ptr %19, i64 8)
  call void @runtime.ClobberPointerRegs()
  %243 = icmp eq ptr %20, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %243)
  %244 = load i64, ptr %20, align 4
  %245 = alloca i64, align 8
  store i64 4, ptr %245, align 4
  call void @runtime.StoreHiddenPointee(i64 %244, ptr %245, i64 8)
  store i64 0, ptr %245, align 4
  store i64 0, ptr %20, align 4
  call void @runtime.TouchConservativeSlot(ptr %20, i64 8)
  store ptr null, ptr %21, align 8
  call void @runtime.TouchConservativeSlot(ptr %21, i64 8)
  call void @runtime.ClobberPointerRegs()
  %246 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.MakeSliceTo"(ptr %246, i64 4, i64 10, i64 1)
  %247 = icmp eq ptr %246, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %247)
  %248 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %246, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %248, ptr %25, align 8
  %249 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %248, 0
  %250 = ptrtoint ptr %249 to i64
  %251 = and i64 %250, 72057594037927935
  %252 = xor i64 %251, 25399393228665167
  %253 = shl i64 %252, 17
  %254 = select i1 false, i64 0, i64 %253
  %255 = lshr i64 %252, 39
  %256 = select i1 false, i64 0, i64 %255
  %257 = or i64 %254, %256
  %258 = and i64 %257, 72057594037927935
  %259 = or i64 %258, -6557241057451442176
  %260 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %248, 1
  %261 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %248, 2
  %262 = insertvalue { i64, i64, i64 } undef, i64 %259, 0
  %263 = insertvalue { i64, i64, i64 } %262, i64 %260, 1
  %264 = insertvalue { i64, i64, i64 } %263, i64 %261, 2
  store { i64, i64, i64 } %264, ptr %24, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %246, align 8
  call void @runtime.TouchConservativeSlot(ptr %246, i64 24)
  call void @runtime.ClobberPointerRegs()
  %265 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %266 = icmp eq ptr %11, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %266)
  %267 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %11, align 8
  %268 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %267, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %265)
  %269 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %270 = icmp eq ptr %11, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %270)
  %271 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %11, align 8
  %272 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %271, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %269)
  %273 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %274 = icmp eq ptr %11, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %274)
  %275 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %11, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %275)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %268)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %272)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %273)
  %276 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %277 = icmp eq ptr %25, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %277)
  %278 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %25, align 8
  %279 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %278, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %276)
  %280 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %281 = icmp eq ptr %25, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %281)
  %282 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %25, align 8
  %283 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %282, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %280)
  %284 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %285 = icmp eq ptr %25, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %285)
  %286 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %25, align 8
  store i64 0, ptr %22, align 4
  call void @runtime.TouchConservativeSlot(ptr %22, i64 8)
  store ptr null, ptr %23, align 8
  call void @runtime.TouchConservativeSlot(ptr %23, i64 8)
  store { i64, i64, i64 } zeroinitializer, ptr %24, align 4
  call void @runtime.TouchConservativeSlot(ptr %24, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %25, align 8
  call void @runtime.TouchConservativeSlot(ptr %25, i64 24)
  call void @runtime.ClobberPointerRegs()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %286)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %279)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %283)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %284)
  %287 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 4)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 4)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 4)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 4)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %287)
  %288 = call i64 @runtime.AllocZHidden(i64 32)
  store i64 %288, ptr %26, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %27, i64 %288)
  %289 = icmp eq ptr %26, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %289)
  %290 = load i64, ptr %26, align 4
  %291 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 0, i64 4)
  %292 = mul i64 %291, 8
  %293 = call i64 @runtime.AdvanceHiddenPointer(i64 %290, i64 %292)
  store i64 %293, ptr %28, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %29, i64 %293)
  %294 = icmp eq ptr %28, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %294)
  %295 = load i64, ptr %28, align 4
  %296 = alloca i64, align 8
  store i64 1, ptr %296, align 4
  call void @runtime.StoreHiddenPointee(i64 %295, ptr %296, i64 8)
  store i64 0, ptr %296, align 4
  store i64 0, ptr %28, align 4
  call void @runtime.TouchConservativeSlot(ptr %28, i64 8)
  store ptr null, ptr %29, align 8
  call void @runtime.TouchConservativeSlot(ptr %29, i64 8)
  call void @runtime.ClobberPointerRegs()
  %297 = icmp eq ptr %26, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %297)
  %298 = load i64, ptr %26, align 4
  %299 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 1, i64 4)
  %300 = mul i64 %299, 8
  %301 = call i64 @runtime.AdvanceHiddenPointer(i64 %298, i64 %300)
  store i64 %301, ptr %30, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %31, i64 %301)
  %302 = icmp eq ptr %30, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %302)
  %303 = load i64, ptr %30, align 4
  %304 = alloca i64, align 8
  store i64 2, ptr %304, align 4
  call void @runtime.StoreHiddenPointee(i64 %303, ptr %304, i64 8)
  store i64 0, ptr %304, align 4
  store i64 0, ptr %30, align 4
  call void @runtime.TouchConservativeSlot(ptr %30, i64 8)
  store ptr null, ptr %31, align 8
  call void @runtime.TouchConservativeSlot(ptr %31, i64 8)
  call void @runtime.ClobberPointerRegs()
  %305 = icmp eq ptr %26, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %305)
  %306 = load i64, ptr %26, align 4
  %307 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 2, i64 4)
  %308 = mul i64 %307, 8
  %309 = call i64 @runtime.AdvanceHiddenPointer(i64 %306, i64 %308)
  store i64 %309, ptr %32, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %33, i64 %309)
  %310 = icmp eq ptr %32, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %310)
  %311 = load i64, ptr %32, align 4
  %312 = alloca i64, align 8
  store i64 3, ptr %312, align 4
  call void @runtime.StoreHiddenPointee(i64 %311, ptr %312, i64 8)
  store i64 0, ptr %312, align 4
  store i64 0, ptr %32, align 4
  call void @runtime.TouchConservativeSlot(ptr %32, i64 8)
  store ptr null, ptr %33, align 8
  call void @runtime.TouchConservativeSlot(ptr %33, i64 8)
  call void @runtime.ClobberPointerRegs()
  %313 = icmp eq ptr %26, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %313)
  %314 = load i64, ptr %26, align 4
  %315 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 3, i64 4)
  %316 = mul i64 %315, 8
  %317 = call i64 @runtime.AdvanceHiddenPointer(i64 %314, i64 %316)
  store i64 %317, ptr %34, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %35, i64 %317)
  %318 = icmp eq ptr %34, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %318)
  %319 = load i64, ptr %34, align 4
  %320 = alloca i64, align 8
  store i64 4, ptr %320, align 4
  call void @runtime.StoreHiddenPointee(i64 %319, ptr %320, i64 8)
  store i64 0, ptr %320, align 4
  store i64 0, ptr %34, align 4
  call void @runtime.TouchConservativeSlot(ptr %34, i64 8)
  store ptr null, ptr %35, align 8
  call void @runtime.TouchConservativeSlot(ptr %35, i64 8)
  call void @runtime.ClobberPointerRegs()
  %321 = icmp eq ptr %26, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %321)
  %322 = load i64, ptr %26, align 4
  %323 = and i64 %322, 72057594037927935
  %324 = lshr i64 %323, 17
  %325 = select i1 false, i64 0, i64 %324
  %326 = shl i64 %323, 39
  %327 = select i1 false, i64 0, i64 %326
  %328 = or i64 %325, %327
  %329 = and i64 %328, 72057594037927935
  %330 = xor i64 %329, 25399393228665167
  %331 = inttoptr i64 %330 to ptr
  %332 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %331, 0
  %333 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %332, i64 4, 1
  %334 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %333, i64 4, 2
  %335 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %334, ptr %335, align 8
  %336 = icmp eq ptr %335, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %336)
  %337 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %335, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %337, ptr %37, align 8
  %338 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %337, 0
  %339 = ptrtoint ptr %338 to i64
  %340 = and i64 %339, 72057594037927935
  %341 = xor i64 %340, 25399393228665167
  %342 = shl i64 %341, 17
  %343 = select i1 false, i64 0, i64 %342
  %344 = lshr i64 %341, 39
  %345 = select i1 false, i64 0, i64 %344
  %346 = or i64 %343, %345
  %347 = and i64 %346, 72057594037927935
  %348 = or i64 %347, -6557241057451442176
  %349 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %337, 1
  %350 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %337, 2
  %351 = insertvalue { i64, i64, i64 } undef, i64 %348, 0
  %352 = insertvalue { i64, i64, i64 } %351, i64 %349, 1
  %353 = insertvalue { i64, i64, i64 } %352, i64 %350, 2
  store { i64, i64, i64 } %353, ptr %36, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %335, align 8
  call void @runtime.TouchConservativeSlot(ptr %335, i64 24)
  call void @runtime.ClobberPointerRegs()
  %354 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %355 = icmp eq ptr %37, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %355)
  %356 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %37, align 8
  store i64 0, ptr %26, align 4
  call void @runtime.TouchConservativeSlot(ptr %26, i64 8)
  store ptr null, ptr %27, align 8
  call void @runtime.TouchConservativeSlot(ptr %27, i64 8)
  store { i64, i64, i64 } zeroinitializer, ptr %36, align 4
  call void @runtime.TouchConservativeSlot(ptr %36, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %37, align 8
  call void @runtime.TouchConservativeSlot(ptr %37, i64 24)
  call void @runtime.ClobberPointerRegs()
  %357 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %356, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %354)
  %358 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %357)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 4)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %358)
  %359 = icmp eq ptr %11, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %359)
  %360 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %11, align 8
  %361 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %360, 2
  %362 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %360, 1
  %363 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %360, 0
  %364 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice2Cap"(ptr %363, i64 8, i64 %361, i64 1, i64 %362)
  %365 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %364, ptr %365, align 8
  %366 = icmp eq ptr %365, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %366)
  %367 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %365, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %367, ptr %39, align 8
  %368 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %367, 0
  %369 = ptrtoint ptr %368 to i64
  %370 = and i64 %369, 72057594037927935
  %371 = xor i64 %370, 25399393228665167
  %372 = shl i64 %371, 17
  %373 = select i1 false, i64 0, i64 %372
  %374 = lshr i64 %371, 39
  %375 = select i1 false, i64 0, i64 %374
  %376 = or i64 %373, %375
  %377 = and i64 %376, 72057594037927935
  %378 = or i64 %377, -6557241057451442176
  %379 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %367, 1
  %380 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %367, 2
  %381 = insertvalue { i64, i64, i64 } undef, i64 %378, 0
  %382 = insertvalue { i64, i64, i64 } %381, i64 %379, 1
  %383 = insertvalue { i64, i64, i64 } %382, i64 %380, 2
  store { i64, i64, i64 } %383, ptr %38, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %365, align 8
  call void @runtime.TouchConservativeSlot(ptr %365, i64 24)
  call void @runtime.ClobberPointerRegs()
  %384 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %385 = icmp eq ptr %39, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %385)
  %386 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %39, align 8
  store { i64, i64, i64 } zeroinitializer, ptr %38, align 4
  call void @runtime.TouchConservativeSlot(ptr %38, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %39, align 8
  call void @runtime.TouchConservativeSlot(ptr %39, i64 24)
  call void @runtime.ClobberPointerRegs()
  %387 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %386, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %384)
  %388 = icmp eq ptr %11, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %388)
  %389 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %11, align 8
  %390 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %389, 2
  %391 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %389, 1
  %392 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %389, 0
  %393 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice2Cap"(ptr %392, i64 8, i64 %390, i64 1, i64 %391)
  %394 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %393, ptr %394, align 8
  %395 = icmp eq ptr %394, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %395)
  %396 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %394, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %396, ptr %41, align 8
  %397 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %396, 0
  %398 = ptrtoint ptr %397 to i64
  %399 = and i64 %398, 72057594037927935
  %400 = xor i64 %399, 25399393228665167
  %401 = shl i64 %400, 17
  %402 = select i1 false, i64 0, i64 %401
  %403 = lshr i64 %400, 39
  %404 = select i1 false, i64 0, i64 %403
  %405 = or i64 %402, %404
  %406 = and i64 %405, 72057594037927935
  %407 = or i64 %406, -6557241057451442176
  %408 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %396, 1
  %409 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %396, 2
  %410 = insertvalue { i64, i64, i64 } undef, i64 %407, 0
  %411 = insertvalue { i64, i64, i64 } %410, i64 %408, 1
  %412 = insertvalue { i64, i64, i64 } %411, i64 %409, 2
  store { i64, i64, i64 } %412, ptr %40, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %394, align 8
  call void @runtime.TouchConservativeSlot(ptr %394, i64 24)
  call void @runtime.ClobberPointerRegs()
  %413 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %414 = icmp eq ptr %41, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %414)
  %415 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %41, align 8
  store { i64, i64, i64 } zeroinitializer, ptr %40, align 4
  call void @runtime.TouchConservativeSlot(ptr %40, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %41, align 8
  call void @runtime.TouchConservativeSlot(ptr %41, i64 24)
  call void @runtime.ClobberPointerRegs()
  %416 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %415, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %413)
  %417 = icmp eq ptr %11, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %417)
  %418 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %11, align 8
  %419 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %418, 2
  %420 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %418, 1
  %421 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %418, 0
  %422 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice2Cap"(ptr %421, i64 8, i64 %419, i64 1, i64 2)
  %423 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %422, ptr %423, align 8
  %424 = icmp eq ptr %423, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %424)
  %425 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %423, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %425, ptr %43, align 8
  %426 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %425, 0
  %427 = ptrtoint ptr %426 to i64
  %428 = and i64 %427, 72057594037927935
  %429 = xor i64 %428, 25399393228665167
  %430 = shl i64 %429, 17
  %431 = select i1 false, i64 0, i64 %430
  %432 = lshr i64 %429, 39
  %433 = select i1 false, i64 0, i64 %432
  %434 = or i64 %431, %433
  %435 = and i64 %434, 72057594037927935
  %436 = or i64 %435, -6557241057451442176
  %437 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %425, 1
  %438 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %425, 2
  %439 = insertvalue { i64, i64, i64 } undef, i64 %436, 0
  %440 = insertvalue { i64, i64, i64 } %439, i64 %437, 1
  %441 = insertvalue { i64, i64, i64 } %440, i64 %438, 2
  store { i64, i64, i64 } %441, ptr %42, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %423, align 8
  call void @runtime.TouchConservativeSlot(ptr %423, i64 24)
  call void @runtime.ClobberPointerRegs()
  %442 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %443 = icmp eq ptr %43, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %443)
  %444 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %43, align 8
  store { i64, i64, i64 } zeroinitializer, ptr %42, align 4
  call void @runtime.TouchConservativeSlot(ptr %42, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %43, align 8
  call void @runtime.TouchConservativeSlot(ptr %43, i64 24)
  call void @runtime.ClobberPointerRegs()
  %445 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %444, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %442)
  %446 = icmp eq ptr %11, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %446)
  %447 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %11, align 8
  %448 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %447, 2
  %449 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %447, 1
  %450 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %447, 0
  %451 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice2Cap"(ptr %450, i64 8, i64 %448, i64 1, i64 2)
  %452 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %451, ptr %452, align 8
  %453 = icmp eq ptr %452, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %453)
  %454 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %452, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %454, ptr %45, align 8
  %455 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %454, 0
  %456 = ptrtoint ptr %455 to i64
  %457 = and i64 %456, 72057594037927935
  %458 = xor i64 %457, 25399393228665167
  %459 = shl i64 %458, 17
  %460 = select i1 false, i64 0, i64 %459
  %461 = lshr i64 %458, 39
  %462 = select i1 false, i64 0, i64 %461
  %463 = or i64 %460, %462
  %464 = and i64 %463, 72057594037927935
  %465 = or i64 %464, -6557241057451442176
  %466 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %454, 1
  %467 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %454, 2
  %468 = insertvalue { i64, i64, i64 } undef, i64 %465, 0
  %469 = insertvalue { i64, i64, i64 } %468, i64 %466, 1
  %470 = insertvalue { i64, i64, i64 } %469, i64 %467, 2
  store { i64, i64, i64 } %470, ptr %44, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %452, align 8
  call void @runtime.TouchConservativeSlot(ptr %452, i64 24)
  call void @runtime.ClobberPointerRegs()
  %471 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %472 = icmp eq ptr %45, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %472)
  %473 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %45, align 8
  store { i64, i64, i64 } zeroinitializer, ptr %44, align 4
  call void @runtime.TouchConservativeSlot(ptr %44, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %45, align 8
  call void @runtime.TouchConservativeSlot(ptr %45, i64 24)
  call void @runtime.ClobberPointerRegs()
  %474 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %473, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %471)
  %475 = icmp eq ptr %11, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %475)
  %476 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %11, align 8
  %477 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %476, 2
  %478 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %476, 1
  %479 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %476, 0
  %480 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr %479, i64 8, i64 %477, i64 1, i64 2, i64 2)
  %481 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %480, ptr %481, align 8
  %482 = icmp eq ptr %481, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %482)
  %483 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %481, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %483, ptr %47, align 8
  %484 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %483, 0
  %485 = ptrtoint ptr %484 to i64
  %486 = and i64 %485, 72057594037927935
  %487 = xor i64 %486, 25399393228665167
  %488 = shl i64 %487, 17
  %489 = select i1 false, i64 0, i64 %488
  %490 = lshr i64 %487, 39
  %491 = select i1 false, i64 0, i64 %490
  %492 = or i64 %489, %491
  %493 = and i64 %492, 72057594037927935
  %494 = or i64 %493, -6557241057451442176
  %495 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %483, 1
  %496 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %483, 2
  %497 = insertvalue { i64, i64, i64 } undef, i64 %494, 0
  %498 = insertvalue { i64, i64, i64 } %497, i64 %495, 1
  %499 = insertvalue { i64, i64, i64 } %498, i64 %496, 2
  store { i64, i64, i64 } %499, ptr %46, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %481, align 8
  call void @runtime.TouchConservativeSlot(ptr %481, i64 24)
  call void @runtime.ClobberPointerRegs()
  %500 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %501 = icmp eq ptr %47, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %501)
  %502 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %47, align 8
  store { i64, i64, i64 } zeroinitializer, ptr %46, align 4
  call void @runtime.TouchConservativeSlot(ptr %46, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %47, align 8
  call void @runtime.TouchConservativeSlot(ptr %47, i64 24)
  call void @runtime.ClobberPointerRegs()
  %503 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %502, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %500)
  %504 = icmp eq ptr %11, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %504)
  %505 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %11, align 8
  %506 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %505, 2
  %507 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %505, 1
  %508 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %505, 0
  %509 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr %508, i64 8, i64 %506, i64 1, i64 2, i64 2)
  %510 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %509, ptr %510, align 8
  %511 = icmp eq ptr %510, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %511)
  %512 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %510, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %512, ptr %49, align 8
  %513 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %512, 0
  %514 = ptrtoint ptr %513 to i64
  %515 = and i64 %514, 72057594037927935
  %516 = xor i64 %515, 25399393228665167
  %517 = shl i64 %516, 17
  %518 = select i1 false, i64 0, i64 %517
  %519 = lshr i64 %516, 39
  %520 = select i1 false, i64 0, i64 %519
  %521 = or i64 %518, %520
  %522 = and i64 %521, 72057594037927935
  %523 = or i64 %522, -6557241057451442176
  %524 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %512, 1
  %525 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %512, 2
  %526 = insertvalue { i64, i64, i64 } undef, i64 %523, 0
  %527 = insertvalue { i64, i64, i64 } %526, i64 %524, 1
  %528 = insertvalue { i64, i64, i64 } %527, i64 %525, 2
  store { i64, i64, i64 } %528, ptr %48, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %510, align 8
  call void @runtime.TouchConservativeSlot(ptr %510, i64 24)
  call void @runtime.ClobberPointerRegs()
  %529 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %530 = icmp eq ptr %49, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %530)
  %531 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %49, align 8
  store { i64, i64, i64 } zeroinitializer, ptr %48, align 4
  call void @runtime.TouchConservativeSlot(ptr %48, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %49, align 8
  call void @runtime.TouchConservativeSlot(ptr %49, i64 24)
  call void @runtime.ClobberPointerRegs()
  %532 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %531, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %529)
  %533 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %387)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %416)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %445)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %474)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %503)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %532)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %533)
  %534 = icmp eq ptr %12, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %534)
  %535 = load i64, ptr %12, align 4
  %536 = and i64 %535, 72057594037927935
  %537 = lshr i64 %536, 17
  %538 = select i1 false, i64 0, i64 %537
  %539 = shl i64 %536, 39
  %540 = select i1 false, i64 0, i64 %539
  %541 = or i64 %538, %540
  %542 = and i64 %541, 72057594037927935
  %543 = xor i64 %542, 25399393228665167
  %544 = inttoptr i64 %543 to ptr
  %545 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice2Len"(ptr %544, i64 8, i64 4, i64 1, i64 4)
  %546 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %545, ptr %546, align 8
  %547 = icmp eq ptr %546, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %547)
  %548 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %546, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %548, ptr %51, align 8
  %549 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %548, 0
  %550 = ptrtoint ptr %549 to i64
  %551 = and i64 %550, 72057594037927935
  %552 = xor i64 %551, 25399393228665167
  %553 = shl i64 %552, 17
  %554 = select i1 false, i64 0, i64 %553
  %555 = lshr i64 %552, 39
  %556 = select i1 false, i64 0, i64 %555
  %557 = or i64 %554, %556
  %558 = and i64 %557, 72057594037927935
  %559 = or i64 %558, -6557241057451442176
  %560 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %548, 1
  %561 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %548, 2
  %562 = insertvalue { i64, i64, i64 } undef, i64 %559, 0
  %563 = insertvalue { i64, i64, i64 } %562, i64 %560, 1
  %564 = insertvalue { i64, i64, i64 } %563, i64 %561, 2
  store { i64, i64, i64 } %564, ptr %50, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %546, align 8
  call void @runtime.TouchConservativeSlot(ptr %546, i64 24)
  call void @runtime.ClobberPointerRegs()
  %565 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %566 = icmp eq ptr %51, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %566)
  %567 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %51, align 8
  store { i64, i64, i64 } zeroinitializer, ptr %50, align 4
  call void @runtime.TouchConservativeSlot(ptr %50, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %51, align 8
  call void @runtime.TouchConservativeSlot(ptr %51, i64 24)
  call void @runtime.ClobberPointerRegs()
  %568 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %567, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %565)
  %569 = icmp eq ptr %12, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %569)
  %570 = load i64, ptr %12, align 4
  %571 = and i64 %570, 72057594037927935
  %572 = lshr i64 %571, 17
  %573 = select i1 false, i64 0, i64 %572
  %574 = shl i64 %571, 39
  %575 = select i1 false, i64 0, i64 %574
  %576 = or i64 %573, %575
  %577 = and i64 %576, 72057594037927935
  %578 = xor i64 %577, 25399393228665167
  %579 = inttoptr i64 %578 to ptr
  %580 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice2Len"(ptr %579, i64 8, i64 4, i64 1, i64 4)
  %581 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %580, ptr %581, align 8
  %582 = icmp eq ptr %581, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %582)
  %583 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %581, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %583, ptr %53, align 8
  %584 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %583, 0
  %585 = ptrtoint ptr %584 to i64
  %586 = and i64 %585, 72057594037927935
  %587 = xor i64 %586, 25399393228665167
  %588 = shl i64 %587, 17
  %589 = select i1 false, i64 0, i64 %588
  %590 = lshr i64 %587, 39
  %591 = select i1 false, i64 0, i64 %590
  %592 = or i64 %589, %591
  %593 = and i64 %592, 72057594037927935
  %594 = or i64 %593, -6557241057451442176
  %595 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %583, 1
  %596 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %583, 2
  %597 = insertvalue { i64, i64, i64 } undef, i64 %594, 0
  %598 = insertvalue { i64, i64, i64 } %597, i64 %595, 1
  %599 = insertvalue { i64, i64, i64 } %598, i64 %596, 2
  store { i64, i64, i64 } %599, ptr %52, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %581, align 8
  call void @runtime.TouchConservativeSlot(ptr %581, i64 24)
  call void @runtime.ClobberPointerRegs()
  %600 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %601 = icmp eq ptr %53, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %601)
  %602 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %53, align 8
  store { i64, i64, i64 } zeroinitializer, ptr %52, align 4
  call void @runtime.TouchConservativeSlot(ptr %52, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %53, align 8
  call void @runtime.TouchConservativeSlot(ptr %53, i64 24)
  call void @runtime.ClobberPointerRegs()
  %603 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %602, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %600)
  %604 = icmp eq ptr %12, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %604)
  %605 = load i64, ptr %12, align 4
  %606 = and i64 %605, 72057594037927935
  %607 = lshr i64 %606, 17
  %608 = select i1 false, i64 0, i64 %607
  %609 = shl i64 %606, 39
  %610 = select i1 false, i64 0, i64 %609
  %611 = or i64 %608, %610
  %612 = and i64 %611, 72057594037927935
  %613 = xor i64 %612, 25399393228665167
  %614 = inttoptr i64 %613 to ptr
  %615 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice2Len"(ptr %614, i64 8, i64 4, i64 1, i64 2)
  %616 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %615, ptr %616, align 8
  %617 = icmp eq ptr %616, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %617)
  %618 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %616, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %618, ptr %55, align 8
  %619 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %618, 0
  %620 = ptrtoint ptr %619 to i64
  %621 = and i64 %620, 72057594037927935
  %622 = xor i64 %621, 25399393228665167
  %623 = shl i64 %622, 17
  %624 = select i1 false, i64 0, i64 %623
  %625 = lshr i64 %622, 39
  %626 = select i1 false, i64 0, i64 %625
  %627 = or i64 %624, %626
  %628 = and i64 %627, 72057594037927935
  %629 = or i64 %628, -6557241057451442176
  %630 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %618, 1
  %631 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %618, 2
  %632 = insertvalue { i64, i64, i64 } undef, i64 %629, 0
  %633 = insertvalue { i64, i64, i64 } %632, i64 %630, 1
  %634 = insertvalue { i64, i64, i64 } %633, i64 %631, 2
  store { i64, i64, i64 } %634, ptr %54, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %616, align 8
  call void @runtime.TouchConservativeSlot(ptr %616, i64 24)
  call void @runtime.ClobberPointerRegs()
  %635 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %636 = icmp eq ptr %55, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %636)
  %637 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %55, align 8
  store { i64, i64, i64 } zeroinitializer, ptr %54, align 4
  call void @runtime.TouchConservativeSlot(ptr %54, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %55, align 8
  call void @runtime.TouchConservativeSlot(ptr %55, i64 24)
  call void @runtime.ClobberPointerRegs()
  %638 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %637, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %635)
  %639 = icmp eq ptr %12, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %639)
  %640 = load i64, ptr %12, align 4
  %641 = and i64 %640, 72057594037927935
  %642 = lshr i64 %641, 17
  %643 = select i1 false, i64 0, i64 %642
  %644 = shl i64 %641, 39
  %645 = select i1 false, i64 0, i64 %644
  %646 = or i64 %643, %645
  %647 = and i64 %646, 72057594037927935
  %648 = xor i64 %647, 25399393228665167
  %649 = inttoptr i64 %648 to ptr
  %650 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice2Len"(ptr %649, i64 8, i64 4, i64 1, i64 2)
  %651 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %650, ptr %651, align 8
  %652 = icmp eq ptr %651, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %652)
  %653 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %651, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %653, ptr %57, align 8
  %654 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %653, 0
  %655 = ptrtoint ptr %654 to i64
  %656 = and i64 %655, 72057594037927935
  %657 = xor i64 %656, 25399393228665167
  %658 = shl i64 %657, 17
  %659 = select i1 false, i64 0, i64 %658
  %660 = lshr i64 %657, 39
  %661 = select i1 false, i64 0, i64 %660
  %662 = or i64 %659, %661
  %663 = and i64 %662, 72057594037927935
  %664 = or i64 %663, -6557241057451442176
  %665 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %653, 1
  %666 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %653, 2
  %667 = insertvalue { i64, i64, i64 } undef, i64 %664, 0
  %668 = insertvalue { i64, i64, i64 } %667, i64 %665, 1
  %669 = insertvalue { i64, i64, i64 } %668, i64 %666, 2
  store { i64, i64, i64 } %669, ptr %56, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %651, align 8
  call void @runtime.TouchConservativeSlot(ptr %651, i64 24)
  call void @runtime.ClobberPointerRegs()
  %670 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %671 = icmp eq ptr %57, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %671)
  %672 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %57, align 8
  store { i64, i64, i64 } zeroinitializer, ptr %56, align 4
  call void @runtime.TouchConservativeSlot(ptr %56, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %57, align 8
  call void @runtime.TouchConservativeSlot(ptr %57, i64 24)
  call void @runtime.ClobberPointerRegs()
  %673 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %672, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %670)
  %674 = icmp eq ptr %12, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %674)
  %675 = load i64, ptr %12, align 4
  %676 = and i64 %675, 72057594037927935
  %677 = lshr i64 %676, 17
  %678 = select i1 false, i64 0, i64 %677
  %679 = shl i64 %676, 39
  %680 = select i1 false, i64 0, i64 %679
  %681 = or i64 %678, %680
  %682 = and i64 %681, 72057594037927935
  %683 = xor i64 %682, 25399393228665167
  %684 = inttoptr i64 %683 to ptr
  %685 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3Len"(ptr %684, i64 8, i64 4, i64 1, i64 2, i64 2)
  %686 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %685, ptr %686, align 8
  %687 = icmp eq ptr %686, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %687)
  %688 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %686, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %688, ptr %59, align 8
  %689 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %688, 0
  %690 = ptrtoint ptr %689 to i64
  %691 = and i64 %690, 72057594037927935
  %692 = xor i64 %691, 25399393228665167
  %693 = shl i64 %692, 17
  %694 = select i1 false, i64 0, i64 %693
  %695 = lshr i64 %692, 39
  %696 = select i1 false, i64 0, i64 %695
  %697 = or i64 %694, %696
  %698 = and i64 %697, 72057594037927935
  %699 = or i64 %698, -6557241057451442176
  %700 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %688, 1
  %701 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %688, 2
  %702 = insertvalue { i64, i64, i64 } undef, i64 %699, 0
  %703 = insertvalue { i64, i64, i64 } %702, i64 %700, 1
  %704 = insertvalue { i64, i64, i64 } %703, i64 %701, 2
  store { i64, i64, i64 } %704, ptr %58, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %686, align 8
  call void @runtime.TouchConservativeSlot(ptr %686, i64 24)
  call void @runtime.ClobberPointerRegs()
  %705 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %706 = icmp eq ptr %59, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %706)
  %707 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %59, align 8
  store { i64, i64, i64 } zeroinitializer, ptr %58, align 4
  call void @runtime.TouchConservativeSlot(ptr %58, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %59, align 8
  call void @runtime.TouchConservativeSlot(ptr %59, i64 24)
  call void @runtime.ClobberPointerRegs()
  %708 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %707, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %705)
  %709 = icmp eq ptr %12, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %709)
  %710 = load i64, ptr %12, align 4
  %711 = and i64 %710, 72057594037927935
  %712 = lshr i64 %711, 17
  %713 = select i1 false, i64 0, i64 %712
  %714 = shl i64 %711, 39
  %715 = select i1 false, i64 0, i64 %714
  %716 = or i64 %713, %715
  %717 = and i64 %716, 72057594037927935
  %718 = xor i64 %717, 25399393228665167
  %719 = inttoptr i64 %718 to ptr
  %720 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3Len"(ptr %719, i64 8, i64 4, i64 1, i64 2, i64 2)
  %721 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %720, ptr %721, align 8
  %722 = icmp eq ptr %721, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %722)
  %723 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %721, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %723, ptr %61, align 8
  %724 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %723, 0
  %725 = ptrtoint ptr %724 to i64
  %726 = and i64 %725, 72057594037927935
  %727 = xor i64 %726, 25399393228665167
  %728 = shl i64 %727, 17
  %729 = select i1 false, i64 0, i64 %728
  %730 = lshr i64 %727, 39
  %731 = select i1 false, i64 0, i64 %730
  %732 = or i64 %729, %731
  %733 = and i64 %732, 72057594037927935
  %734 = or i64 %733, -6557241057451442176
  %735 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %723, 1
  %736 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %723, 2
  %737 = insertvalue { i64, i64, i64 } undef, i64 %734, 0
  %738 = insertvalue { i64, i64, i64 } %737, i64 %735, 1
  %739 = insertvalue { i64, i64, i64 } %738, i64 %736, 2
  store { i64, i64, i64 } %739, ptr %60, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %721, align 8
  call void @runtime.TouchConservativeSlot(ptr %721, i64 24)
  call void @runtime.ClobberPointerRegs()
  %740 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %741 = icmp eq ptr %61, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %741)
  %742 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %61, align 8
  store i64 0, ptr %12, align 4
  call void @runtime.TouchConservativeSlot(ptr %12, i64 8)
  store ptr null, ptr %13, align 8
  call void @runtime.TouchConservativeSlot(ptr %13, i64 8)
  store { i64, i64, i64 } zeroinitializer, ptr %60, align 4
  call void @runtime.TouchConservativeSlot(ptr %60, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %61, align 8
  call void @runtime.TouchConservativeSlot(ptr %61, i64 24)
  call void @runtime.ClobberPointerRegs()
  %743 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %742, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %740)
  %744 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %568)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %603)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %638)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %673)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %708)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %743)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %744)
  %745 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, i64 1, i64 5)
  %746 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %745, ptr %746, align 8
  %747 = icmp eq ptr %746, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %747)
  %748 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %746, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %748, ptr %63, align 8
  %749 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %748, 0
  %750 = ptrtoint ptr %749 to i64
  %751 = and i64 %750, 72057594037927935
  %752 = xor i64 %751, 25399393228665167
  %753 = shl i64 %752, 17
  %754 = select i1 false, i64 0, i64 %753
  %755 = lshr i64 %752, 39
  %756 = select i1 false, i64 0, i64 %755
  %757 = or i64 %754, %756
  %758 = and i64 %757, 72057594037927935
  %759 = or i64 %758, -6557241057451442176
  %760 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %748, 1
  %761 = insertvalue { i64, i64 } undef, i64 %759, 0
  %762 = insertvalue { i64, i64 } %761, i64 %760, 1
  store { i64, i64 } %762, ptr %62, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %746, align 8
  call void @runtime.TouchConservativeSlot(ptr %746, i64 16)
  call void @runtime.ClobberPointerRegs()
  %763 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, i64 1, i64 2)
  %764 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %763, ptr %764, align 8
  %765 = icmp eq ptr %764, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %765)
  %766 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %764, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %766, ptr %65, align 8
  %767 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %766, 0
  %768 = ptrtoint ptr %767 to i64
  %769 = and i64 %768, 72057594037927935
  %770 = xor i64 %769, 25399393228665167
  %771 = shl i64 %770, 17
  %772 = select i1 false, i64 0, i64 %771
  %773 = lshr i64 %770, 39
  %774 = select i1 false, i64 0, i64 %773
  %775 = or i64 %772, %774
  %776 = and i64 %775, 72057594037927935
  %777 = or i64 %776, -6557241057451442176
  %778 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %766, 1
  %779 = insertvalue { i64, i64 } undef, i64 %777, 0
  %780 = insertvalue { i64, i64 } %779, i64 %778, 1
  store { i64, i64 } %780, ptr %64, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %764, align 8
  call void @runtime.TouchConservativeSlot(ptr %764, i64 16)
  call void @runtime.ClobberPointerRegs()
  %781 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, i64 5, i64 5)
  %782 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %781, ptr %782, align 8
  %783 = icmp eq ptr %782, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %783)
  %784 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %782, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %784, ptr %67, align 8
  %785 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %784, 0
  %786 = ptrtoint ptr %785 to i64
  %787 = and i64 %786, 72057594037927935
  %788 = xor i64 %787, 25399393228665167
  %789 = shl i64 %788, 17
  %790 = select i1 false, i64 0, i64 %789
  %791 = lshr i64 %788, 39
  %792 = select i1 false, i64 0, i64 %791
  %793 = or i64 %790, %792
  %794 = and i64 %793, 72057594037927935
  %795 = or i64 %794, -6557241057451442176
  %796 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %784, 1
  %797 = insertvalue { i64, i64 } undef, i64 %795, 0
  %798 = insertvalue { i64, i64 } %797, i64 %796, 1
  store { i64, i64 } %798, ptr %66, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %782, align 8
  call void @runtime.TouchConservativeSlot(ptr %782, i64 16)
  call void @runtime.ClobberPointerRegs()
  %799 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %800 = icmp eq ptr %67, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %800)
  %801 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %67, align 8
  store { i64, i64 } zeroinitializer, ptr %66, align 4
  call void @runtime.TouchConservativeSlot(ptr %66, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %67, align 8
  call void @runtime.TouchConservativeSlot(ptr %67, i64 16)
  call void @runtime.ClobberPointerRegs()
  %802 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %801, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %799)
  %803 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %804 = icmp eq ptr %63, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %804)
  %805 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %63, align 8
  %806 = icmp eq ptr %65, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %806)
  %807 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %65, align 8
  store { i64, i64 } zeroinitializer, ptr %62, align 4
  call void @runtime.TouchConservativeSlot(ptr %62, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %63, align 8
  call void @runtime.TouchConservativeSlot(ptr %63, i64 16)
  store { i64, i64 } zeroinitializer, ptr %64, align 4
  call void @runtime.TouchConservativeSlot(ptr %64, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %65, align 8
  call void @runtime.TouchConservativeSlot(ptr %65, i64 16)
  call void @runtime.ClobberPointerRegs()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %805)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %807)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %802)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %803)
  %808 = call i64 @runtime.AllocZHidden(i64 32)
  store i64 %808, ptr %68, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %69, i64 %808)
  %809 = icmp eq ptr %68, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %809)
  %810 = load i64, ptr %68, align 4
  %811 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 0, i64 4)
  %812 = mul i64 %811, 8
  %813 = call i64 @runtime.AdvanceHiddenPointer(i64 %810, i64 %812)
  store i64 %813, ptr %70, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %71, i64 %813)
  %814 = icmp eq ptr %70, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %814)
  %815 = load i64, ptr %70, align 4
  %816 = alloca i64, align 8
  store i64 5, ptr %816, align 4
  call void @runtime.StoreHiddenPointee(i64 %815, ptr %816, i64 8)
  store i64 0, ptr %816, align 4
  store i64 0, ptr %70, align 4
  call void @runtime.TouchConservativeSlot(ptr %70, i64 8)
  store ptr null, ptr %71, align 8
  call void @runtime.TouchConservativeSlot(ptr %71, i64 8)
  call void @runtime.ClobberPointerRegs()
  %817 = icmp eq ptr %68, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %817)
  %818 = load i64, ptr %68, align 4
  %819 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 1, i64 4)
  %820 = mul i64 %819, 8
  %821 = call i64 @runtime.AdvanceHiddenPointer(i64 %818, i64 %820)
  store i64 %821, ptr %72, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %73, i64 %821)
  %822 = icmp eq ptr %72, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %822)
  %823 = load i64, ptr %72, align 4
  %824 = alloca i64, align 8
  store i64 6, ptr %824, align 4
  call void @runtime.StoreHiddenPointee(i64 %823, ptr %824, i64 8)
  store i64 0, ptr %824, align 4
  store i64 0, ptr %72, align 4
  call void @runtime.TouchConservativeSlot(ptr %72, i64 8)
  store ptr null, ptr %73, align 8
  call void @runtime.TouchConservativeSlot(ptr %73, i64 8)
  call void @runtime.ClobberPointerRegs()
  %825 = icmp eq ptr %68, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %825)
  %826 = load i64, ptr %68, align 4
  %827 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 2, i64 4)
  %828 = mul i64 %827, 8
  %829 = call i64 @runtime.AdvanceHiddenPointer(i64 %826, i64 %828)
  store i64 %829, ptr %74, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %75, i64 %829)
  %830 = icmp eq ptr %74, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %830)
  %831 = load i64, ptr %74, align 4
  %832 = alloca i64, align 8
  store i64 7, ptr %832, align 4
  call void @runtime.StoreHiddenPointee(i64 %831, ptr %832, i64 8)
  store i64 0, ptr %832, align 4
  store i64 0, ptr %74, align 4
  call void @runtime.TouchConservativeSlot(ptr %74, i64 8)
  store ptr null, ptr %75, align 8
  call void @runtime.TouchConservativeSlot(ptr %75, i64 8)
  call void @runtime.ClobberPointerRegs()
  %833 = icmp eq ptr %68, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %833)
  %834 = load i64, ptr %68, align 4
  %835 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 3, i64 4)
  %836 = mul i64 %835, 8
  %837 = call i64 @runtime.AdvanceHiddenPointer(i64 %834, i64 %836)
  store i64 %837, ptr %76, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %77, i64 %837)
  %838 = icmp eq ptr %76, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %838)
  %839 = load i64, ptr %76, align 4
  %840 = alloca i64, align 8
  store i64 8, ptr %840, align 4
  call void @runtime.StoreHiddenPointee(i64 %839, ptr %840, i64 8)
  store i64 0, ptr %840, align 4
  store i64 0, ptr %76, align 4
  call void @runtime.TouchConservativeSlot(ptr %76, i64 8)
  store ptr null, ptr %77, align 8
  call void @runtime.TouchConservativeSlot(ptr %77, i64 8)
  call void @runtime.ClobberPointerRegs()
  %841 = icmp eq ptr %68, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %841)
  %842 = load i64, ptr %68, align 4
  %843 = and i64 %842, 72057594037927935
  %844 = lshr i64 %843, 17
  %845 = select i1 false, i64 0, i64 %844
  %846 = shl i64 %843, 39
  %847 = select i1 false, i64 0, i64 %846
  %848 = or i64 %845, %847
  %849 = and i64 %848, 72057594037927935
  %850 = xor i64 %849, 25399393228665167
  %851 = inttoptr i64 %850 to ptr
  %852 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %851, 0
  %853 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %852, i64 4, 1
  %854 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %853, i64 4, 2
  %855 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %854, ptr %855, align 8
  %856 = icmp eq ptr %855, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %856)
  %857 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %855, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %857, ptr %79, align 8
  %858 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %857, 0
  %859 = ptrtoint ptr %858 to i64
  %860 = and i64 %859, 72057594037927935
  %861 = xor i64 %860, 25399393228665167
  %862 = shl i64 %861, 17
  %863 = select i1 false, i64 0, i64 %862
  %864 = lshr i64 %861, 39
  %865 = select i1 false, i64 0, i64 %864
  %866 = or i64 %863, %865
  %867 = and i64 %866, 72057594037927935
  %868 = or i64 %867, -6557241057451442176
  %869 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %857, 1
  %870 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %857, 2
  %871 = insertvalue { i64, i64, i64 } undef, i64 %868, 0
  %872 = insertvalue { i64, i64, i64 } %871, i64 %869, 1
  %873 = insertvalue { i64, i64, i64 } %872, i64 %870, 2
  store { i64, i64, i64 } %873, ptr %78, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %855, align 8
  call void @runtime.TouchConservativeSlot(ptr %855, i64 24)
  call void @runtime.ClobberPointerRegs()
  %874 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %875 = icmp eq ptr %11, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %875)
  %876 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %11, align 8
  %877 = icmp eq ptr %79, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %877)
  %878 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %79, align 8
  store i64 0, ptr %0, align 4
  call void @runtime.TouchConservativeSlot(ptr %0, i64 8)
  store ptr null, ptr %1, align 8
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  store { i64, i64, i64 } zeroinitializer, ptr %10, align 4
  call void @runtime.TouchConservativeSlot(ptr %10, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %11, align 8
  call void @runtime.TouchConservativeSlot(ptr %11, i64 24)
  store i64 0, ptr %68, align 4
  call void @runtime.TouchConservativeSlot(ptr %68, i64 8)
  store ptr null, ptr %69, align 8
  call void @runtime.TouchConservativeSlot(ptr %69, i64 8)
  store { i64, i64, i64 } zeroinitializer, ptr %78, align 4
  call void @runtime.TouchConservativeSlot(ptr %78, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %79, align 8
  call void @runtime.TouchConservativeSlot(ptr %79, i64 24)
  call void @runtime.ClobberPointerRegs()
  %879 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %878, 0
  %880 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %878, 1
  %881 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.SliceAppend"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %876, ptr %879, i64 %880, i64 8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %874)
  %882 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %881, ptr %882, align 8
  %883 = icmp eq ptr %882, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %883)
  %884 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %882, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %884, ptr %81, align 8
  %885 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %884, 0
  %886 = ptrtoint ptr %885 to i64
  %887 = and i64 %886, 72057594037927935
  %888 = xor i64 %887, 25399393228665167
  %889 = shl i64 %888, 17
  %890 = select i1 false, i64 0, i64 %889
  %891 = lshr i64 %888, 39
  %892 = select i1 false, i64 0, i64 %891
  %893 = or i64 %890, %892
  %894 = and i64 %893, 72057594037927935
  %895 = or i64 %894, -6557241057451442176
  %896 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %884, 1
  %897 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %884, 2
  %898 = insertvalue { i64, i64, i64 } undef, i64 %895, 0
  %899 = insertvalue { i64, i64, i64 } %898, i64 %896, 1
  %900 = insertvalue { i64, i64, i64 } %899, i64 %897, 2
  store { i64, i64, i64 } %900, ptr %80, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %882, align 8
  call void @runtime.TouchConservativeSlot(ptr %882, i64 24)
  call void @runtime.ClobberPointerRegs()
  %901 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %902 = icmp eq ptr %81, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %902)
  %903 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %81, align 8
  store { i64, i64, i64 } zeroinitializer, ptr %80, align 4
  call void @runtime.TouchConservativeSlot(ptr %80, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %81, align 8
  call void @runtime.TouchConservativeSlot(ptr %81, i64 24)
  call void @runtime.ClobberPointerRegs()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %903)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %901)
  %904 = call i64 @runtime.AllocZHidden(i64 3)
  store i64 %904, ptr %82, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %83, i64 %904)
  %905 = icmp eq ptr %82, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %905)
  %906 = load i64, ptr %82, align 4
  %907 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 0, i64 3)
  %908 = call i64 @runtime.AdvanceHiddenPointer(i64 %906, i64 %907)
  store i64 %908, ptr %84, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %85, i64 %908)
  %909 = icmp eq ptr %84, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %909)
  %910 = load i64, ptr %84, align 4
  %911 = alloca i8, align 1
  store i8 97, ptr %911, align 1
  call void @runtime.StoreHiddenPointee(i64 %910, ptr %911, i64 1)
  store i8 0, ptr %911, align 1
  store i64 0, ptr %84, align 4
  call void @runtime.TouchConservativeSlot(ptr %84, i64 8)
  store ptr null, ptr %85, align 8
  call void @runtime.TouchConservativeSlot(ptr %85, i64 8)
  call void @runtime.ClobberPointerRegs()
  %912 = icmp eq ptr %82, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %912)
  %913 = load i64, ptr %82, align 4
  %914 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 1, i64 3)
  %915 = call i64 @runtime.AdvanceHiddenPointer(i64 %913, i64 %914)
  store i64 %915, ptr %86, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %87, i64 %915)
  %916 = icmp eq ptr %86, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %916)
  %917 = load i64, ptr %86, align 4
  %918 = alloca i8, align 1
  store i8 98, ptr %918, align 1
  call void @runtime.StoreHiddenPointee(i64 %917, ptr %918, i64 1)
  store i8 0, ptr %918, align 1
  store i64 0, ptr %86, align 4
  call void @runtime.TouchConservativeSlot(ptr %86, i64 8)
  store ptr null, ptr %87, align 8
  call void @runtime.TouchConservativeSlot(ptr %87, i64 8)
  call void @runtime.ClobberPointerRegs()
  %919 = icmp eq ptr %82, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %919)
  %920 = load i64, ptr %82, align 4
  %921 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 2, i64 3)
  %922 = call i64 @runtime.AdvanceHiddenPointer(i64 %920, i64 %921)
  store i64 %922, ptr %88, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %89, i64 %922)
  %923 = icmp eq ptr %88, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %923)
  %924 = load i64, ptr %88, align 4
  %925 = alloca i8, align 1
  store i8 99, ptr %925, align 1
  call void @runtime.StoreHiddenPointee(i64 %924, ptr %925, i64 1)
  store i8 0, ptr %925, align 1
  store i64 0, ptr %88, align 4
  call void @runtime.TouchConservativeSlot(ptr %88, i64 8)
  store ptr null, ptr %89, align 8
  call void @runtime.TouchConservativeSlot(ptr %89, i64 8)
  call void @runtime.ClobberPointerRegs()
  %926 = icmp eq ptr %82, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %926)
  %927 = load i64, ptr %82, align 4
  %928 = and i64 %927, 72057594037927935
  %929 = lshr i64 %928, 17
  %930 = select i1 false, i64 0, i64 %929
  %931 = shl i64 %928, 39
  %932 = select i1 false, i64 0, i64 %931
  %933 = or i64 %930, %932
  %934 = and i64 %933, 72057594037927935
  %935 = xor i64 %934, 25399393228665167
  %936 = inttoptr i64 %935 to ptr
  %937 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %936, 0
  %938 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %937, i64 3, 1
  %939 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %938, i64 3, 2
  %940 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %939, ptr %940, align 8
  %941 = icmp eq ptr %940, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %941)
  %942 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %940, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %942, ptr %91, align 8
  %943 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %942, 0
  %944 = ptrtoint ptr %943 to i64
  %945 = and i64 %944, 72057594037927935
  %946 = xor i64 %945, 25399393228665167
  %947 = shl i64 %946, 17
  %948 = select i1 false, i64 0, i64 %947
  %949 = lshr i64 %946, 39
  %950 = select i1 false, i64 0, i64 %949
  %951 = or i64 %948, %950
  %952 = and i64 %951, 72057594037927935
  %953 = or i64 %952, -6557241057451442176
  %954 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %942, 1
  %955 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %942, 2
  %956 = insertvalue { i64, i64, i64 } undef, i64 %953, 0
  %957 = insertvalue { i64, i64, i64 } %956, i64 %954, 1
  %958 = insertvalue { i64, i64, i64 } %957, i64 %955, 2
  store { i64, i64, i64 } %958, ptr %90, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %940, align 8
  call void @runtime.TouchConservativeSlot(ptr %940, i64 24)
  call void @runtime.ClobberPointerRegs()
  %959 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %960 = icmp eq ptr %91, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %960)
  %961 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %91, align 8
  store i64 0, ptr %82, align 4
  call void @runtime.TouchConservativeSlot(ptr %82, i64 8)
  store ptr null, ptr %83, align 8
  call void @runtime.TouchConservativeSlot(ptr %83, i64 8)
  store { i64, i64, i64 } zeroinitializer, ptr %90, align 4
  call void @runtime.TouchConservativeSlot(ptr %90, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %91, align 8
  call void @runtime.TouchConservativeSlot(ptr %91, i64 24)
  call void @runtime.ClobberPointerRegs()
  %962 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.SliceAppend"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %961, ptr @1, i64 3, i64 1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %959)
  %963 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %962, ptr %963, align 8
  %964 = icmp eq ptr %963, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %964)
  %965 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %963, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %965, ptr %93, align 8
  %966 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %965, 0
  %967 = ptrtoint ptr %966 to i64
  %968 = and i64 %967, 72057594037927935
  %969 = xor i64 %968, 25399393228665167
  %970 = shl i64 %969, 17
  %971 = select i1 false, i64 0, i64 %970
  %972 = lshr i64 %969, 39
  %973 = select i1 false, i64 0, i64 %972
  %974 = or i64 %971, %973
  %975 = and i64 %974, 72057594037927935
  %976 = or i64 %975, -6557241057451442176
  %977 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %965, 1
  %978 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %965, 2
  %979 = insertvalue { i64, i64, i64 } undef, i64 %976, 0
  %980 = insertvalue { i64, i64, i64 } %979, i64 %977, 1
  %981 = insertvalue { i64, i64, i64 } %980, i64 %978, 2
  store { i64, i64, i64 } %981, ptr %92, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %963, align 8
  call void @runtime.TouchConservativeSlot(ptr %963, i64 24)
  call void @runtime.ClobberPointerRegs()
  %982 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %983 = icmp eq ptr %93, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %983)
  %984 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %93, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %984)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %982)
  %985 = call i64 @runtime.AllocZHidden(i64 0)
  store i64 %985, ptr %94, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %95, i64 %985)
  %986 = icmp eq ptr %94, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %986)
  %987 = load i64, ptr %94, align 4
  %988 = and i64 %987, 72057594037927935
  %989 = lshr i64 %988, 17
  %990 = select i1 false, i64 0, i64 %989
  %991 = shl i64 %988, 39
  %992 = select i1 false, i64 0, i64 %991
  %993 = or i64 %990, %992
  %994 = and i64 %993, 72057594037927935
  %995 = xor i64 %994, 25399393228665167
  %996 = inttoptr i64 %995 to ptr
  %997 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %996, 0
  %998 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %997, i64 0, 1
  %999 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %998, i64 0, 2
  %1000 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %999, ptr %1000, align 8
  %1001 = icmp eq ptr %1000, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1001)
  %1002 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %1000, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1002, ptr %97, align 8
  %1003 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1002, 0
  %1004 = ptrtoint ptr %1003 to i64
  %1005 = and i64 %1004, 72057594037927935
  %1006 = xor i64 %1005, 25399393228665167
  %1007 = shl i64 %1006, 17
  %1008 = select i1 false, i64 0, i64 %1007
  %1009 = lshr i64 %1006, 39
  %1010 = select i1 false, i64 0, i64 %1009
  %1011 = or i64 %1008, %1010
  %1012 = and i64 %1011, 72057594037927935
  %1013 = or i64 %1012, -6557241057451442176
  %1014 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1002, 1
  %1015 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1002, 2
  %1016 = insertvalue { i64, i64, i64 } undef, i64 %1013, 0
  %1017 = insertvalue { i64, i64, i64 } %1016, i64 %1014, 1
  %1018 = insertvalue { i64, i64, i64 } %1017, i64 %1015, 2
  store { i64, i64, i64 } %1018, ptr %96, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %1000, align 8
  call void @runtime.TouchConservativeSlot(ptr %1000, i64 24)
  call void @runtime.ClobberPointerRegs()
  %1019 = call i64 @runtime.AllocZHidden(i64 16)
  store i64 %1019, ptr %98, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %99, i64 %1019)
  %1020 = icmp eq ptr %98, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1020)
  %1021 = load i64, ptr %98, align 4
  %1022 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 0, i64 1)
  %1023 = mul i64 %1022, 16
  %1024 = call i64 @runtime.AdvanceHiddenPointer(i64 %1021, i64 %1023)
  store i64 %1024, ptr %100, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %101, i64 %1024)
  %1025 = icmp eq ptr %100, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1025)
  %1026 = load i64, ptr %100, align 4
  %1027 = alloca { ptr, ptr }, align 8
  store { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/builtin.main$1", ptr null }, ptr %1027, align 8
  call void @runtime.StoreHiddenPointee(i64 %1026, ptr %1027, i64 16)
  store { ptr, ptr } zeroinitializer, ptr %1027, align 8
  call void @runtime.TouchConservativeSlot(ptr %1027, i64 16)
  store i64 0, ptr %100, align 4
  call void @runtime.TouchConservativeSlot(ptr %100, i64 8)
  store ptr null, ptr %101, align 8
  call void @runtime.TouchConservativeSlot(ptr %101, i64 8)
  call void @runtime.ClobberPointerRegs()
  %1028 = icmp eq ptr %98, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1028)
  %1029 = load i64, ptr %98, align 4
  %1030 = and i64 %1029, 72057594037927935
  %1031 = lshr i64 %1030, 17
  %1032 = select i1 false, i64 0, i64 %1031
  %1033 = shl i64 %1030, 39
  %1034 = select i1 false, i64 0, i64 %1033
  %1035 = or i64 %1032, %1034
  %1036 = and i64 %1035, 72057594037927935
  %1037 = xor i64 %1036, 25399393228665167
  %1038 = inttoptr i64 %1037 to ptr
  %1039 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1038, 0
  %1040 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1039, i64 1, 1
  %1041 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1040, i64 1, 2
  %1042 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1041, ptr %1042, align 8
  %1043 = icmp eq ptr %1042, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1043)
  %1044 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %1042, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1044, ptr %103, align 8
  %1045 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1044, 0
  %1046 = ptrtoint ptr %1045 to i64
  %1047 = and i64 %1046, 72057594037927935
  %1048 = xor i64 %1047, 25399393228665167
  %1049 = shl i64 %1048, 17
  %1050 = select i1 false, i64 0, i64 %1049
  %1051 = lshr i64 %1048, 39
  %1052 = select i1 false, i64 0, i64 %1051
  %1053 = or i64 %1050, %1052
  %1054 = and i64 %1053, 72057594037927935
  %1055 = or i64 %1054, -6557241057451442176
  %1056 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1044, 1
  %1057 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1044, 2
  %1058 = insertvalue { i64, i64, i64 } undef, i64 %1055, 0
  %1059 = insertvalue { i64, i64, i64 } %1058, i64 %1056, 1
  %1060 = insertvalue { i64, i64, i64 } %1059, i64 %1057, 2
  store { i64, i64, i64 } %1060, ptr %102, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %1042, align 8
  call void @runtime.TouchConservativeSlot(ptr %1042, i64 24)
  call void @runtime.ClobberPointerRegs()
  %1061 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %1062 = icmp eq ptr %97, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1062)
  %1063 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %97, align 8
  %1064 = icmp eq ptr %103, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1064)
  %1065 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %103, align 8
  store i64 0, ptr %94, align 4
  call void @runtime.TouchConservativeSlot(ptr %94, i64 8)
  store ptr null, ptr %95, align 8
  call void @runtime.TouchConservativeSlot(ptr %95, i64 8)
  store { i64, i64, i64 } zeroinitializer, ptr %96, align 4
  call void @runtime.TouchConservativeSlot(ptr %96, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %97, align 8
  call void @runtime.TouchConservativeSlot(ptr %97, i64 24)
  store i64 0, ptr %98, align 4
  call void @runtime.TouchConservativeSlot(ptr %98, i64 8)
  store ptr null, ptr %99, align 8
  call void @runtime.TouchConservativeSlot(ptr %99, i64 8)
  store { i64, i64, i64 } zeroinitializer, ptr %102, align 4
  call void @runtime.TouchConservativeSlot(ptr %102, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %103, align 8
  call void @runtime.TouchConservativeSlot(ptr %103, i64 24)
  call void @runtime.ClobberPointerRegs()
  %1066 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1065, 0
  %1067 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1065, 1
  %1068 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.SliceAppend"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1063, ptr %1066, i64 %1067, i64 16)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %1061)
  %1069 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1068, ptr %1069, align 8
  %1070 = icmp eq ptr %1069, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1070)
  %1071 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %1069, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1071, ptr %105, align 8
  %1072 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1071, 0
  %1073 = ptrtoint ptr %1072 to i64
  %1074 = and i64 %1073, 72057594037927935
  %1075 = xor i64 %1074, 25399393228665167
  %1076 = shl i64 %1075, 17
  %1077 = select i1 false, i64 0, i64 %1076
  %1078 = lshr i64 %1075, 39
  %1079 = select i1 false, i64 0, i64 %1078
  %1080 = or i64 %1077, %1079
  %1081 = and i64 %1080, 72057594037927935
  %1082 = or i64 %1081, -6557241057451442176
  %1083 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1071, 1
  %1084 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1071, 2
  %1085 = insertvalue { i64, i64, i64 } undef, i64 %1082, 0
  %1086 = insertvalue { i64, i64, i64 } %1085, i64 %1083, 1
  %1087 = insertvalue { i64, i64, i64 } %1086, i64 %1084, 2
  store { i64, i64, i64 } %1087, ptr %104, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %1069, align 8
  call void @runtime.TouchConservativeSlot(ptr %1069, i64 24)
  call void @runtime.ClobberPointerRegs()
  %1088 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %1089 = icmp eq ptr %105, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1089)
  %1090 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %105, align 8
  store { i64, i64, i64 } zeroinitializer, ptr %104, align 4
  call void @runtime.TouchConservativeSlot(ptr %104, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %105, align 8
  call void @runtime.TouchConservativeSlot(ptr %105, i64 24)
  call void @runtime.ClobberPointerRegs()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1090)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %1088)
  %1091 = call i64 @runtime.AllocZHidden(i64 16)
  store i64 %1091, ptr %106, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %107, i64 %1091)
  %1092 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 100, ptr %1092, align 4
  %1093 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr undef }, ptr %1092, 1
  %1094 = icmp eq ptr %106, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1094)
  %1095 = load i64, ptr %106, align 4
  %1096 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %1093, ptr %1096, align 8
  call void @runtime.StoreHiddenPointee(i64 %1095, ptr %1096, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, ptr %1096, align 8
  call void @runtime.TouchConservativeSlot(ptr %1096, i64 16)
  %1097 = icmp eq ptr %106, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1097)
  %1098 = load i64, ptr %106, align 4
  %1099 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  call void @runtime.LoadHiddenPointee(ptr %1099, i64 %1098, i64 16)
  %1100 = icmp eq ptr %1099, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1100)
  %1101 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %1099, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, ptr %1099, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %1101, ptr %108, align 8
  %1102 = icmp eq ptr %106, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1102)
  %1103 = load i64, ptr %106, align 4
  %1104 = and i64 %1103, 72057594037927935
  %1105 = lshr i64 %1104, 17
  %1106 = select i1 false, i64 0, i64 %1105
  %1107 = shl i64 %1104, 39
  %1108 = select i1 false, i64 0, i64 %1107
  %1109 = or i64 %1106, %1108
  %1110 = and i64 %1109, 72057594037927935
  %1111 = xor i64 %1110, 25399393228665167
  %1112 = inttoptr i64 %1111 to ptr
  store ptr %1112, ptr %109, align 8
  %1113 = icmp eq ptr %109, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1113)
  %1114 = load ptr, ptr %109, align 8
  %1115 = ptrtoint ptr %1114 to i64
  %1116 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %1117 = icmp eq ptr %108, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1117)
  %1118 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %108, align 8
  %1119 = icmp eq ptr %106, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1119)
  %1120 = load i64, ptr %106, align 4
  %1121 = and i64 %1120, 72057594037927935
  %1122 = lshr i64 %1121, 17
  %1123 = select i1 false, i64 0, i64 %1122
  %1124 = shl i64 %1121, 39
  %1125 = select i1 false, i64 0, i64 %1124
  %1126 = or i64 %1123, %1125
  %1127 = and i64 %1126, 72057594037927935
  %1128 = xor i64 %1127, 25399393228665167
  %1129 = inttoptr i64 %1128 to ptr
  store i64 0, ptr %106, align 4
  call void @runtime.TouchConservativeSlot(ptr %106, i64 8)
  store ptr null, ptr %107, align 8
  call void @runtime.TouchConservativeSlot(ptr %107, i64 8)
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, ptr %108, align 8
  call void @runtime.TouchConservativeSlot(ptr %108, i64 16)
  store ptr null, ptr %109, align 8
  call void @runtime.TouchConservativeSlot(ptr %109, i64 8)
  call void @runtime.ClobberPointerRegs()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 true)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 0)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 100)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 -100)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 255)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 -100)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintFloat"(double 0.000000e+00)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintFloat"(double 1.005000e+02)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintEface"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %1118)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr %1129)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %1115)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %1116)
  %1130 = call i64 @runtime.AllocZHidden(i64 3)
  store i64 %1130, ptr %110, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %111, i64 %1130)
  %1131 = call i64 @runtime.AllocZHidden(i64 8)
  store i64 %1131, ptr %112, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %113, i64 %1131)
  %1132 = icmp eq ptr %110, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1132)
  %1133 = load i64, ptr %110, align 4
  %1134 = and i64 %1133, 72057594037927935
  %1135 = lshr i64 %1134, 17
  %1136 = select i1 false, i64 0, i64 %1135
  %1137 = shl i64 %1134, 39
  %1138 = select i1 false, i64 0, i64 %1137
  %1139 = or i64 %1136, %1138
  %1140 = and i64 %1139, 72057594037927935
  %1141 = xor i64 %1140, 25399393228665167
  %1142 = inttoptr i64 %1141 to ptr
  %1143 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1142, 0
  %1144 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1143, i64 3, 1
  %1145 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1144, i64 3, 2
  %1146 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1145, ptr %1146, align 8
  %1147 = icmp eq ptr %1146, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1147)
  %1148 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %1146, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1148, ptr %115, align 8
  %1149 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1148, 0
  %1150 = ptrtoint ptr %1149 to i64
  %1151 = and i64 %1150, 72057594037927935
  %1152 = xor i64 %1151, 25399393228665167
  %1153 = shl i64 %1152, 17
  %1154 = select i1 false, i64 0, i64 %1153
  %1155 = lshr i64 %1152, 39
  %1156 = select i1 false, i64 0, i64 %1155
  %1157 = or i64 %1154, %1156
  %1158 = and i64 %1157, 72057594037927935
  %1159 = or i64 %1158, -6557241057451442176
  %1160 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1148, 1
  %1161 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1148, 2
  %1162 = insertvalue { i64, i64, i64 } undef, i64 %1159, 0
  %1163 = insertvalue { i64, i64, i64 } %1162, i64 %1160, 1
  %1164 = insertvalue { i64, i64, i64 } %1163, i64 %1161, 2
  store { i64, i64, i64 } %1164, ptr %114, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %1146, align 8
  call void @runtime.TouchConservativeSlot(ptr %1146, i64 24)
  call void @runtime.ClobberPointerRegs()
  %1165 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %1166 = icmp eq ptr %115, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1166)
  %1167 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %115, align 8
  %1168 = icmp eq ptr %93, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1168)
  %1169 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %93, align 8
  store { i64, i64, i64 } zeroinitializer, ptr %92, align 4
  call void @runtime.TouchConservativeSlot(ptr %92, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %93, align 8
  call void @runtime.TouchConservativeSlot(ptr %93, i64 24)
  store { i64, i64, i64 } zeroinitializer, ptr %114, align 4
  call void @runtime.TouchConservativeSlot(ptr %114, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %115, align 8
  call void @runtime.TouchConservativeSlot(ptr %115, i64 24)
  call void @runtime.ClobberPointerRegs()
  %1170 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1169, 0
  %1171 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1169, 1
  %1172 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.SliceCopy"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1167, ptr %1170, i64 %1171, i64 1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %1165)
  %1173 = icmp eq ptr %112, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1173)
  %1174 = load i64, ptr %112, align 4
  %1175 = alloca i64, align 8
  store i64 %1172, ptr %1175, align 4
  call void @runtime.StoreHiddenPointee(i64 %1174, ptr %1175, i64 8)
  store i64 0, ptr %1175, align 4
  %1176 = icmp eq ptr %112, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1176)
  %1177 = load i64, ptr %112, align 4
  %1178 = alloca i64, align 8
  call void @runtime.LoadHiddenPointee(ptr %1178, i64 %1177, i64 8)
  %1179 = icmp eq ptr %1178, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1179)
  %1180 = load i64, ptr %1178, align 4
  store i64 0, ptr %1178, align 4
  %1181 = icmp eq ptr %110, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1181)
  %1182 = load i64, ptr %110, align 4
  %1183 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 0, i64 3)
  %1184 = call i64 @runtime.AdvanceHiddenPointer(i64 %1182, i64 %1183)
  store i64 %1184, ptr %116, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %117, i64 %1184)
  %1185 = icmp eq ptr %116, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1185)
  %1186 = load i64, ptr %116, align 4
  %1187 = call i8 @runtime.LoadHiddenUint8(i64 %1186)
  store i64 0, ptr %116, align 4
  call void @runtime.TouchConservativeSlot(ptr %116, i64 8)
  store ptr null, ptr %117, align 8
  call void @runtime.TouchConservativeSlot(ptr %117, i64 8)
  call void @runtime.ClobberPointerRegs()
  %1188 = icmp eq ptr %110, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1188)
  %1189 = load i64, ptr %110, align 4
  %1190 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 1, i64 3)
  %1191 = call i64 @runtime.AdvanceHiddenPointer(i64 %1189, i64 %1190)
  store i64 %1191, ptr %118, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %119, i64 %1191)
  %1192 = icmp eq ptr %118, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1192)
  %1193 = load i64, ptr %118, align 4
  %1194 = call i8 @runtime.LoadHiddenUint8(i64 %1193)
  store i64 0, ptr %118, align 4
  call void @runtime.TouchConservativeSlot(ptr %118, i64 8)
  store ptr null, ptr %119, align 8
  call void @runtime.TouchConservativeSlot(ptr %119, i64 8)
  call void @runtime.ClobberPointerRegs()
  %1195 = icmp eq ptr %110, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1195)
  %1196 = load i64, ptr %110, align 4
  %1197 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 2, i64 3)
  %1198 = call i64 @runtime.AdvanceHiddenPointer(i64 %1196, i64 %1197)
  store i64 %1198, ptr %120, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %121, i64 %1198)
  %1199 = icmp eq ptr %120, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1199)
  %1200 = load i64, ptr %120, align 4
  %1201 = call i8 @runtime.LoadHiddenUint8(i64 %1200)
  store i64 0, ptr %120, align 4
  call void @runtime.TouchConservativeSlot(ptr %120, i64 8)
  store ptr null, ptr %121, align 8
  call void @runtime.TouchConservativeSlot(ptr %121, i64 8)
  call void @runtime.ClobberPointerRegs()
  %1202 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %1180)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %1203 = zext i8 %1187 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %1203)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %1204 = zext i8 %1194 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %1204)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %1205 = zext i8 %1201 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %1205)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %1202)
  %1206 = icmp eq ptr %110, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1206)
  %1207 = load i64, ptr %110, align 4
  %1208 = and i64 %1207, 72057594037927935
  %1209 = lshr i64 %1208, 17
  %1210 = select i1 false, i64 0, i64 %1209
  %1211 = shl i64 %1208, 39
  %1212 = select i1 false, i64 0, i64 %1211
  %1213 = or i64 %1210, %1212
  %1214 = and i64 %1213, 72057594037927935
  %1215 = xor i64 %1214, 25399393228665167
  %1216 = inttoptr i64 %1215 to ptr
  %1217 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice2Len"(ptr %1216, i64 1, i64 3, i64 1, i64 3)
  %1218 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1217, ptr %1218, align 8
  %1219 = icmp eq ptr %1218, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1219)
  %1220 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %1218, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1220, ptr %123, align 8
  %1221 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1220, 0
  %1222 = ptrtoint ptr %1221 to i64
  %1223 = and i64 %1222, 72057594037927935
  %1224 = xor i64 %1223, 25399393228665167
  %1225 = shl i64 %1224, 17
  %1226 = select i1 false, i64 0, i64 %1225
  %1227 = lshr i64 %1224, 39
  %1228 = select i1 false, i64 0, i64 %1227
  %1229 = or i64 %1226, %1228
  %1230 = and i64 %1229, 72057594037927935
  %1231 = or i64 %1230, -6557241057451442176
  %1232 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1220, 1
  %1233 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1220, 2
  %1234 = insertvalue { i64, i64, i64 } undef, i64 %1231, 0
  %1235 = insertvalue { i64, i64, i64 } %1234, i64 %1232, 1
  %1236 = insertvalue { i64, i64, i64 } %1235, i64 %1233, 2
  store { i64, i64, i64 } %1236, ptr %122, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %1218, align 8
  call void @runtime.TouchConservativeSlot(ptr %1218, i64 24)
  call void @runtime.ClobberPointerRegs()
  %1237 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %1238 = icmp eq ptr %123, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1238)
  %1239 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %123, align 8
  store { i64, i64, i64 } zeroinitializer, ptr %122, align 4
  call void @runtime.TouchConservativeSlot(ptr %122, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %123, align 8
  call void @runtime.TouchConservativeSlot(ptr %123, i64 24)
  call void @runtime.ClobberPointerRegs()
  %1240 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.SliceCopy"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1239, ptr @3, i64 4, i64 1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %1237)
  %1241 = icmp eq ptr %112, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1241)
  %1242 = load i64, ptr %112, align 4
  %1243 = alloca i64, align 8
  store i64 %1240, ptr %1243, align 4
  call void @runtime.StoreHiddenPointee(i64 %1242, ptr %1243, i64 8)
  store i64 0, ptr %1243, align 4
  %1244 = icmp eq ptr %112, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1244)
  %1245 = load i64, ptr %112, align 4
  %1246 = alloca i64, align 8
  call void @runtime.LoadHiddenPointee(ptr %1246, i64 %1245, i64 8)
  %1247 = icmp eq ptr %1246, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1247)
  %1248 = load i64, ptr %1246, align 4
  store i64 0, ptr %1246, align 4
  %1249 = icmp eq ptr %110, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1249)
  %1250 = load i64, ptr %110, align 4
  %1251 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 0, i64 3)
  %1252 = call i64 @runtime.AdvanceHiddenPointer(i64 %1250, i64 %1251)
  store i64 %1252, ptr %124, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %125, i64 %1252)
  %1253 = icmp eq ptr %124, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1253)
  %1254 = load i64, ptr %124, align 4
  %1255 = call i8 @runtime.LoadHiddenUint8(i64 %1254)
  store i64 0, ptr %124, align 4
  call void @runtime.TouchConservativeSlot(ptr %124, i64 8)
  store ptr null, ptr %125, align 8
  call void @runtime.TouchConservativeSlot(ptr %125, i64 8)
  call void @runtime.ClobberPointerRegs()
  %1256 = icmp eq ptr %110, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1256)
  %1257 = load i64, ptr %110, align 4
  %1258 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 1, i64 3)
  %1259 = call i64 @runtime.AdvanceHiddenPointer(i64 %1257, i64 %1258)
  store i64 %1259, ptr %126, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %127, i64 %1259)
  %1260 = icmp eq ptr %126, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1260)
  %1261 = load i64, ptr %126, align 4
  %1262 = call i8 @runtime.LoadHiddenUint8(i64 %1261)
  store i64 0, ptr %126, align 4
  call void @runtime.TouchConservativeSlot(ptr %126, i64 8)
  store ptr null, ptr %127, align 8
  call void @runtime.TouchConservativeSlot(ptr %127, i64 8)
  call void @runtime.ClobberPointerRegs()
  %1263 = icmp eq ptr %110, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1263)
  %1264 = load i64, ptr %110, align 4
  %1265 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 2, i64 3)
  %1266 = call i64 @runtime.AdvanceHiddenPointer(i64 %1264, i64 %1265)
  store i64 %1266, ptr %128, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %129, i64 %1266)
  %1267 = icmp eq ptr %128, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1267)
  %1268 = load i64, ptr %128, align 4
  %1269 = call i8 @runtime.LoadHiddenUint8(i64 %1268)
  store i64 0, ptr %110, align 4
  call void @runtime.TouchConservativeSlot(ptr %110, i64 8)
  store ptr null, ptr %111, align 8
  call void @runtime.TouchConservativeSlot(ptr %111, i64 8)
  store i64 0, ptr %128, align 4
  call void @runtime.TouchConservativeSlot(ptr %128, i64 8)
  store ptr null, ptr %129, align 8
  call void @runtime.TouchConservativeSlot(ptr %129, i64 8)
  call void @runtime.ClobberPointerRegs()
  %1270 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %1248)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %1271 = zext i8 %1255 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %1271)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %1272 = zext i8 %1262 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %1272)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %1273 = zext i8 %1269 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %1273)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %1270)
  %1274 = icmp eq ptr %112, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1274)
  %1275 = load i64, ptr %112, align 4
  %1276 = and i64 %1275, 72057594037927935
  %1277 = lshr i64 %1276, 17
  %1278 = select i1 false, i64 0, i64 %1277
  %1279 = shl i64 %1276, 39
  %1280 = select i1 false, i64 0, i64 %1279
  %1281 = or i64 %1278, %1280
  %1282 = and i64 %1281, 72057594037927935
  %1283 = xor i64 %1282, 25399393228665167
  %1284 = inttoptr i64 %1283 to ptr
  %1285 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %1286 = getelementptr inbounds { ptr }, ptr %1285, i32 0, i32 0
  store ptr %1284, ptr %1286, align 8
  %1287 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testrt/builtin.main$3", ptr undef }, ptr %1285, 1
  store { ptr, ptr } %1287, ptr %130, align 8
  store i64 0, ptr %112, align 4
  call void @runtime.TouchConservativeSlot(ptr %112, i64 8)
  store ptr null, ptr %113, align 8
  call void @runtime.TouchConservativeSlot(ptr %113, i64 8)
  call void @runtime.ClobberPointerRegs()
  %1288 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %1289 = icmp eq ptr %130, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1289)
  %1290 = load { ptr, ptr }, ptr %130, align 8
  store { ptr, ptr } zeroinitializer, ptr %130, align 8
  call void @runtime.TouchConservativeSlot(ptr %130, i64 16)
  call void @runtime.ClobberPointerRegs()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr @"github.com/goplus/llgo/cl/_testrt/builtin.demo")
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr @"github.com/goplus/llgo/cl/_testrt/builtin.demo")
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr @"github.com/goplus/llgo/cl/_testrt/builtin.main$2")
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %1291 = extractvalue { ptr, ptr } %1290, 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr %1291)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %1288)
  %1292 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewStringIter"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 7 })
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_2, %_llgo_0
  %1293 = call { i1, i64, i32 } @"github.com/goplus/llgo/runtime/internal/runtime.StringIterNext"(ptr %1292)
  %1294 = extractvalue { i1, i64, i32 } %1293, 0
  br i1 %1294, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  %1295 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %1296 = extractvalue { i1, i64, i32 } %1293, 1
  %1297 = extractvalue { i1, i64, i32 } %1293, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %1296)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %1298 = sext i32 %1297 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %1298)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %1295)
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_1
  %1299 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %1300 = call double @"github.com/goplus/llgo/cl/_testrt/builtin.Inf"(i64 1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %1299)
  %1301 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %1302 = call double @"github.com/goplus/llgo/cl/_testrt/builtin.Inf"(i64 -1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %1301)
  %1303 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %1304 = call double @"github.com/goplus/llgo/cl/_testrt/builtin.NaN"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %1303)
  %1305 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %1306 = call double @"github.com/goplus/llgo/cl/_testrt/builtin.NaN"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %1305)
  %1307 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %1308 = call i1 @"github.com/goplus/llgo/cl/_testrt/builtin.IsNaN"(double %1306)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %1307)
  %1309 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %1310 = call i1 @"github.com/goplus/llgo/cl/_testrt/builtin.IsNaN"(double 1.000000e+00)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %1309)
  %1311 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintFloat"(double %1300)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintFloat"(double %1302)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintFloat"(double %1304)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %1308)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %1310)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %1311)
  %1312 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.StringToBytes"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 7 })
  %1313 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1312, ptr %1313, align 8
  %1314 = icmp eq ptr %1313, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1314)
  %1315 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %1313, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1315, ptr %132, align 8
  %1316 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1315, 0
  %1317 = ptrtoint ptr %1316 to i64
  %1318 = and i64 %1317, 72057594037927935
  %1319 = xor i64 %1318, 25399393228665167
  %1320 = shl i64 %1319, 17
  %1321 = select i1 false, i64 0, i64 %1320
  %1322 = lshr i64 %1319, 39
  %1323 = select i1 false, i64 0, i64 %1322
  %1324 = or i64 %1321, %1323
  %1325 = and i64 %1324, 72057594037927935
  %1326 = or i64 %1325, -6557241057451442176
  %1327 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1315, 1
  %1328 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1315, 2
  %1329 = insertvalue { i64, i64, i64 } undef, i64 %1326, 0
  %1330 = insertvalue { i64, i64, i64 } %1329, i64 %1327, 1
  %1331 = insertvalue { i64, i64, i64 } %1330, i64 %1328, 2
  store { i64, i64, i64 } %1331, ptr %131, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %1313, align 8
  call void @runtime.TouchConservativeSlot(ptr %1313, i64 24)
  call void @runtime.ClobberPointerRegs()
  %1332 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.StringToRunes"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 7 })
  %1333 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1332, ptr %1333, align 8
  %1334 = icmp eq ptr %1333, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1334)
  %1335 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %1333, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1335, ptr %134, align 8
  %1336 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1335, 0
  %1337 = ptrtoint ptr %1336 to i64
  %1338 = and i64 %1337, 72057594037927935
  %1339 = xor i64 %1338, 25399393228665167
  %1340 = shl i64 %1339, 17
  %1341 = select i1 false, i64 0, i64 %1340
  %1342 = lshr i64 %1339, 39
  %1343 = select i1 false, i64 0, i64 %1342
  %1344 = or i64 %1341, %1343
  %1345 = and i64 %1344, 72057594037927935
  %1346 = or i64 %1345, -6557241057451442176
  %1347 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1335, 1
  %1348 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1335, 2
  %1349 = insertvalue { i64, i64, i64 } undef, i64 %1346, 0
  %1350 = insertvalue { i64, i64, i64 } %1349, i64 %1347, 1
  %1351 = insertvalue { i64, i64, i64 } %1350, i64 %1348, 2
  store { i64, i64, i64 } %1351, ptr %133, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %1333, align 8
  call void @runtime.TouchConservativeSlot(ptr %1333, i64 24)
  call void @runtime.ClobberPointerRegs()
  %1352 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %1353 = icmp eq ptr %132, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1353)
  %1354 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %132, align 8
  %1355 = icmp eq ptr %134, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1355)
  %1356 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %134, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1354)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1356)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %1352)
  %1357 = icmp eq ptr %132, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1357)
  %1358 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %132, align 8
  %1359 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringFromBytes"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1358)
  %1360 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %1359, ptr %1360, align 8
  %1361 = icmp eq ptr %1360, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1361)
  %1362 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %1360, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %1362, ptr %136, align 8
  %1363 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %1362, 0
  %1364 = ptrtoint ptr %1363 to i64
  %1365 = and i64 %1364, 72057594037927935
  %1366 = xor i64 %1365, 25399393228665167
  %1367 = shl i64 %1366, 17
  %1368 = select i1 false, i64 0, i64 %1367
  %1369 = lshr i64 %1366, 39
  %1370 = select i1 false, i64 0, i64 %1369
  %1371 = or i64 %1368, %1370
  %1372 = and i64 %1371, 72057594037927935
  %1373 = or i64 %1372, -6557241057451442176
  %1374 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %1362, 1
  %1375 = insertvalue { i64, i64 } undef, i64 %1373, 0
  %1376 = insertvalue { i64, i64 } %1375, i64 %1374, 1
  store { i64, i64 } %1376, ptr %135, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %1360, align 8
  call void @runtime.TouchConservativeSlot(ptr %1360, i64 16)
  call void @runtime.ClobberPointerRegs()
  %1377 = icmp eq ptr %134, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1377)
  %1378 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %134, align 8
  %1379 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringFromRunes"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1378)
  %1380 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %1379, ptr %1380, align 8
  %1381 = icmp eq ptr %1380, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1381)
  %1382 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %1380, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %1382, ptr %138, align 8
  %1383 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %1382, 0
  %1384 = ptrtoint ptr %1383 to i64
  %1385 = and i64 %1384, 72057594037927935
  %1386 = xor i64 %1385, 25399393228665167
  %1387 = shl i64 %1386, 17
  %1388 = select i1 false, i64 0, i64 %1387
  %1389 = lshr i64 %1386, 39
  %1390 = select i1 false, i64 0, i64 %1389
  %1391 = or i64 %1388, %1390
  %1392 = and i64 %1391, 72057594037927935
  %1393 = or i64 %1392, -6557241057451442176
  %1394 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %1382, 1
  %1395 = insertvalue { i64, i64 } undef, i64 %1393, 0
  %1396 = insertvalue { i64, i64 } %1395, i64 %1394, 1
  store { i64, i64 } %1396, ptr %137, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %1380, align 8
  call void @runtime.TouchConservativeSlot(ptr %1380, i64 16)
  call void @runtime.ClobberPointerRegs()
  %1397 = icmp eq ptr %131, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1397)
  %1398 = load { i64, i64, i64 }, ptr %131, align 4
  %1399 = extractvalue { i64, i64, i64 } %1398, 0
  %1400 = extractvalue { i64, i64, i64 } %1398, 1
  %1401 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 3, i64 %1400)
  %1402 = call i64 @runtime.AdvanceHiddenPointer(i64 %1399, i64 %1401)
  store i64 %1402, ptr %139, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %140, i64 %1402)
  %1403 = icmp eq ptr %139, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1403)
  %1404 = load i64, ptr %139, align 4
  %1405 = call i8 @runtime.LoadHiddenUint8(i64 %1404)
  store i64 0, ptr %139, align 4
  call void @runtime.TouchConservativeSlot(ptr %139, i64 8)
  store ptr null, ptr %140, align 8
  call void @runtime.TouchConservativeSlot(ptr %140, i64 8)
  call void @runtime.ClobberPointerRegs()
  %1406 = zext i8 %1405 to i64
  %1407 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringFromUint64"(i64 %1406)
  %1408 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %1407, ptr %1408, align 8
  %1409 = icmp eq ptr %1408, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1409)
  %1410 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %1408, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %1410, ptr %142, align 8
  %1411 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %1410, 0
  %1412 = ptrtoint ptr %1411 to i64
  %1413 = and i64 %1412, 72057594037927935
  %1414 = xor i64 %1413, 25399393228665167
  %1415 = shl i64 %1414, 17
  %1416 = select i1 false, i64 0, i64 %1415
  %1417 = lshr i64 %1414, 39
  %1418 = select i1 false, i64 0, i64 %1417
  %1419 = or i64 %1416, %1418
  %1420 = and i64 %1419, 72057594037927935
  %1421 = or i64 %1420, -6557241057451442176
  %1422 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %1410, 1
  %1423 = insertvalue { i64, i64 } undef, i64 %1421, 0
  %1424 = insertvalue { i64, i64 } %1423, i64 %1422, 1
  store { i64, i64 } %1424, ptr %141, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %1408, align 8
  call void @runtime.TouchConservativeSlot(ptr %1408, i64 16)
  call void @runtime.ClobberPointerRegs()
  %1425 = icmp eq ptr %133, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1425)
  %1426 = load { i64, i64, i64 }, ptr %133, align 4
  %1427 = extractvalue { i64, i64, i64 } %1426, 0
  %1428 = extractvalue { i64, i64, i64 } %1426, 1
  %1429 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 0, i64 %1428)
  %1430 = mul i64 %1429, 4
  %1431 = call i64 @runtime.AdvanceHiddenPointer(i64 %1427, i64 %1430)
  store i64 %1431, ptr %143, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %144, i64 %1431)
  %1432 = icmp eq ptr %143, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1432)
  %1433 = load i64, ptr %143, align 4
  %1434 = alloca i32, align 4
  call void @runtime.LoadHiddenPointee(ptr %1434, i64 %1433, i64 4)
  %1435 = icmp eq ptr %1434, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1435)
  %1436 = load i32, ptr %1434, align 4
  store i32 0, ptr %1434, align 4
  store i64 0, ptr %143, align 4
  call void @runtime.TouchConservativeSlot(ptr %143, i64 8)
  store ptr null, ptr %144, align 8
  call void @runtime.TouchConservativeSlot(ptr %144, i64 8)
  call void @runtime.ClobberPointerRegs()
  %1437 = sext i32 %1436 to i64
  %1438 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringFromInt64"(i64 %1437)
  %1439 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %1438, ptr %1439, align 8
  %1440 = icmp eq ptr %1439, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1440)
  %1441 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %1439, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %1441, ptr %146, align 8
  %1442 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %1441, 0
  %1443 = ptrtoint ptr %1442 to i64
  %1444 = and i64 %1443, 72057594037927935
  %1445 = xor i64 %1444, 25399393228665167
  %1446 = shl i64 %1445, 17
  %1447 = select i1 false, i64 0, i64 %1446
  %1448 = lshr i64 %1445, 39
  %1449 = select i1 false, i64 0, i64 %1448
  %1450 = or i64 %1447, %1449
  %1451 = and i64 %1450, 72057594037927935
  %1452 = or i64 %1451, -6557241057451442176
  %1453 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %1441, 1
  %1454 = insertvalue { i64, i64 } undef, i64 %1452, 0
  %1455 = insertvalue { i64, i64 } %1454, i64 %1453, 1
  store { i64, i64 } %1455, ptr %145, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %1439, align 8
  call void @runtime.TouchConservativeSlot(ptr %1439, i64 16)
  call void @runtime.ClobberPointerRegs()
  %1456 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %1457 = icmp eq ptr %136, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1457)
  %1458 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %136, align 8
  %1459 = icmp eq ptr %138, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1459)
  %1460 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %138, align 8
  %1461 = icmp eq ptr %142, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1461)
  %1462 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %142, align 8
  %1463 = icmp eq ptr %146, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1463)
  %1464 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %146, align 8
  store { i64, i64, i64 } zeroinitializer, ptr %131, align 4
  call void @runtime.TouchConservativeSlot(ptr %131, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %132, align 8
  call void @runtime.TouchConservativeSlot(ptr %132, i64 24)
  store { i64, i64, i64 } zeroinitializer, ptr %133, align 4
  call void @runtime.TouchConservativeSlot(ptr %133, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %134, align 8
  call void @runtime.TouchConservativeSlot(ptr %134, i64 24)
  store { i64, i64 } zeroinitializer, ptr %135, align 4
  call void @runtime.TouchConservativeSlot(ptr %135, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %136, align 8
  call void @runtime.TouchConservativeSlot(ptr %136, i64 16)
  store { i64, i64 } zeroinitializer, ptr %137, align 4
  call void @runtime.TouchConservativeSlot(ptr %137, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %138, align 8
  call void @runtime.TouchConservativeSlot(ptr %138, i64 16)
  store { i64, i64 } zeroinitializer, ptr %141, align 4
  call void @runtime.TouchConservativeSlot(ptr %141, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %142, align 8
  call void @runtime.TouchConservativeSlot(ptr %142, i64 16)
  store { i64, i64 } zeroinitializer, ptr %145, align 4
  call void @runtime.TouchConservativeSlot(ptr %145, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %146, align 8
  call void @runtime.TouchConservativeSlot(ptr %146, i64 16)
  call void @runtime.ClobberPointerRegs()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %1458)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %1460)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %1462)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %1464)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %1456)
  %1465 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 3 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 3 })
  %1466 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 3 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 3 })
  %1467 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 3 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 3 })
  %1468 = xor i1 %1467, true
  %1469 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringLess"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 3 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 3 })
  %1470 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringLess"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 3 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 3 })
  %1471 = xor i1 %1470, true
  %1472 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringLess"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 3 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 3 })
  %1473 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringLess"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 3 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 3 })
  %1474 = xor i1 %1473, true
  %1475 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %1465)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %1466)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %1468)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %1469)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %1471)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %1472)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %1474)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %1475)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/builtin.main$1"() {
_llgo_0:
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/builtin.main$2"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 2 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %0)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/builtin.main$3"(ptr %0) {
_llgo_0:
  %1 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1)
  %2 = load { ptr }, ptr %0, align 8
  %3 = extractvalue { ptr } %2, 0
  %4 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %4)
  %5 = load i64, ptr %3, align 4
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %6)
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1)

declare void @runtime.StoreHiddenPointerRoot(ptr, i64)

declare void @runtime.ClobberPointerRegs()

declare void @runtime.LoadHiddenPointee(ptr, i64, i64)

declare void @runtime.TouchConservativeSlot(ptr, i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr)

declare void @unsafe.init()

declare i64 @runtime.AllocZHidden(i64)

declare i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64, i64)

declare i64 @runtime.AdvanceHiddenPointer(i64, i64)

declare void @runtime.StoreHiddenPointee(i64, ptr, i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.MakeSliceTo"(ptr, i64, i64, i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64)

declare %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice2Cap"(ptr, i64, i64, i64, i64)

declare %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr, i64, i64, i64, i64, i64)

declare %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice2Len"(ptr, i64, i64, i64, i64)

declare %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3Len"(ptr, i64, i64, i64, i64, i64)

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.String", i64, i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.SliceAppend"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr, i64, i64)

define linkonce void @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/builtin.main$1"(ptr %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/cl/_testrt/builtin.main$1")
  tail call void @"github.com/goplus/llgo/cl/_testrt/builtin.main$1"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %1)
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal64"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequal64")
  %4 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal64"(ptr %1, ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %3)
  ret i1 %4
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr")
  %4 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %1, ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %3)
  ret i1 %4
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintFloat"(double)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintEface"(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/internal/runtime.SliceCopy"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr, i64, i64)

declare i8 @runtime.LoadHiddenUint8(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewStringIter"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare { i1, i64, i32 } @"github.com/goplus/llgo/runtime/internal/runtime.StringIterNext"(ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.StringToBytes"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.StringToRunes"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringFromBytes"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringFromRunes"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringFromUint64"(i64)

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringFromInt64"(i64)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.String")

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringLess"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.String")

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
