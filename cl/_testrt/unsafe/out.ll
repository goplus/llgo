; ModuleID = 'github.com/goplus/llgo/cl/_testrt/unsafe'
source_filename = "github.com/goplus/llgo/cl/_testrt/unsafe"

%"github.com/goplus/llgo/runtime/abi.Type" = type { i64, i64, i32, i8, i8, i8, i8, { ptr, ptr }, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/abi.PtrType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }

@"github.com/goplus/llgo/cl/_testrt/unsafe.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [5 x i8] c"error", align 1
@_llgo_string = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 8, i32 1749264893, i8 4, i8 8, i8 8, i8 24, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 6 }, ptr @"*_llgo_string" }, align 8
@1 = private unnamed_addr constant [6 x i8] c"string", align 1
@"*_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1323879264, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 6 }, ptr null }, ptr @_llgo_string }, align 8
@2 = private unnamed_addr constant [4 x i8] c"abc\00", align 1
@3 = private unnamed_addr constant [3 x i8] c"abc", align 1

define void @"github.com/goplus/llgo/cl/_testrt/unsafe.init"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/unsafe.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/unsafe.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/unsafe.main"() {
_llgo_0:
  %0 = alloca i64, align 8
  %1 = alloca ptr, align 8
  store ptr null, ptr %1, align 8
  %2 = alloca ptr, align 8
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  store ptr null, ptr %4, align 8
  %5 = alloca { i64, i64 }, align 8
  %6 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %6, align 8
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  store ptr null, ptr %8, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i64, align 8
  %11 = alloca ptr, align 8
  store ptr null, ptr %11, align 8
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
  %22 = alloca { i64, i64, i64 }, align 8
  %23 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %23, align 8
  %24 = alloca i64, align 8
  %25 = alloca ptr, align 8
  store ptr null, ptr %25, align 8
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
  %34 = alloca ptr, align 8
  br i1 false, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %35 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %35, align 8
  %36 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %35, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %36)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  br i1 false, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %37 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %37, align 8
  %38 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %37, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %38)
  unreachable

_llgo_4:                                          ; preds = %_llgo_2
  br i1 false, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %39 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %39, align 8
  %40 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %39, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %40)
  unreachable

_llgo_6:                                          ; preds = %_llgo_4
  br i1 false, label %_llgo_7, label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_6
  %41 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %41, align 8
  %42 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %41, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %42)
  unreachable

_llgo_8:                                          ; preds = %_llgo_6
  br i1 false, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  %43 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %43, align 8
  %44 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %43, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %44)
  unreachable

_llgo_10:                                         ; preds = %_llgo_8
  br i1 false, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  %45 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %45, align 8
  %46 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %45, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %46)
  unreachable

_llgo_12:                                         ; preds = %_llgo_10
  br i1 false, label %_llgo_13, label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_12
  %47 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %47, align 8
  %48 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %47, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %48)
  unreachable

_llgo_14:                                         ; preds = %_llgo_12
  br i1 false, label %_llgo_15, label %_llgo_16

_llgo_15:                                         ; preds = %_llgo_14
  %49 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %49, align 8
  %50 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %49, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %50)
  unreachable

_llgo_16:                                         ; preds = %_llgo_14
  br i1 false, label %_llgo_17, label %_llgo_18

_llgo_17:                                         ; preds = %_llgo_16
  %51 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %51, align 8
  %52 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %51, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %52)
  unreachable

_llgo_18:                                         ; preds = %_llgo_16
  br i1 false, label %_llgo_19, label %_llgo_20

_llgo_19:                                         ; preds = %_llgo_18
  %53 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %53, align 8
  %54 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %53, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %54)
  unreachable

_llgo_20:                                         ; preds = %_llgo_18
  %55 = and i64 ptrtoint (ptr @2 to i64), 72057594037927935
  %56 = xor i64 %55, 25399393228665167
  %57 = shl i64 %56, 17
  %58 = select i1 false, i64 0, i64 %57
  %59 = lshr i64 %56, 39
  %60 = select i1 false, i64 0, i64 %59
  %61 = or i64 %58, %60
  %62 = and i64 %61, 72057594037927935
  %63 = or i64 %62, -6557241057451442176
  store i64 %63, ptr %0, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %1, i64 %63)
  call void @runtime.ClobberPointerRegs()
  %64 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %64)
  %65 = load i64, ptr %0, align 4
  %66 = and i64 %65, 72057594037927935
  %67 = lshr i64 %66, 17
  %68 = select i1 false, i64 0, i64 %67
  %69 = shl i64 %66, 39
  %70 = select i1 false, i64 0, i64 %69
  %71 = or i64 %68, %70
  %72 = and i64 %71, 72057594037927935
  %73 = xor i64 %72, 25399393228665167
  %74 = inttoptr i64 %73 to ptr
  store ptr %74, ptr %2, align 8
  %75 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %75)
  %76 = load ptr, ptr %2, align 8
  %77 = ptrtoint ptr %76 to i64
  %78 = and i64 %77, 72057594037927935
  %79 = xor i64 %78, 25399393228665167
  %80 = shl i64 %79, 17
  %81 = select i1 false, i64 0, i64 %80
  %82 = lshr i64 %79, 39
  %83 = select i1 false, i64 0, i64 %82
  %84 = or i64 %81, %83
  %85 = and i64 %84, 72057594037927935
  %86 = or i64 %85, -6557241057451442176
  store i64 %86, ptr %3, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %4, i64 %86)
  call void @runtime.ClobberPointerRegs()
  %87 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %88 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %88)
  %89 = load i64, ptr %3, align 4
  %90 = and i64 %89, 72057594037927935
  %91 = lshr i64 %90, 17
  %92 = select i1 false, i64 0, i64 %91
  %93 = shl i64 %90, 39
  %94 = select i1 false, i64 0, i64 %93
  %95 = or i64 %92, %94
  %96 = and i64 %95, 72057594037927935
  %97 = xor i64 %96, 25399393228665167
  %98 = inttoptr i64 %97 to ptr
  store i64 0, ptr %0, align 4
  call void @runtime.TouchConservativeSlot(ptr %0, i64 8)
  store ptr null, ptr %1, align 8
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  store ptr null, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store i64 0, ptr %3, align 4
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  store ptr null, ptr %4, align 8
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  call void @runtime.ClobberPointerRegs()
  %99 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.UnsafeString"(ptr %98, i64 3)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %87)
  %100 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %99, ptr %100, align 8
  %101 = icmp eq ptr %100, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %101)
  %102 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %100, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %102, ptr %6, align 8
  %103 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %102, 0
  %104 = ptrtoint ptr %103 to i64
  %105 = and i64 %104, 72057594037927935
  %106 = xor i64 %105, 25399393228665167
  %107 = shl i64 %106, 17
  %108 = select i1 false, i64 0, i64 %107
  %109 = lshr i64 %106, 39
  %110 = select i1 false, i64 0, i64 %109
  %111 = or i64 %108, %110
  %112 = and i64 %111, 72057594037927935
  %113 = or i64 %112, -6557241057451442176
  %114 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %102, 1
  %115 = insertvalue { i64, i64 } undef, i64 %113, 0
  %116 = insertvalue { i64, i64 } %115, i64 %114, 1
  store { i64, i64 } %116, ptr %5, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %100, align 8
  call void @runtime.TouchConservativeSlot(ptr %100, i64 16)
  call void @runtime.ClobberPointerRegs()
  %117 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %117)
  %118 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %6, align 8
  %119 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %118, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 3 })
  %120 = xor i1 %119, true
  br i1 %120, label %_llgo_21, label %_llgo_22

_llgo_21:                                         ; preds = %_llgo_20
  %121 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %121, align 8
  %122 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %121, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %122)
  unreachable

_llgo_22:                                         ; preds = %_llgo_20
  %123 = icmp eq ptr %5, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %123)
  %124 = load { i64, i64 }, ptr %5, align 4
  %125 = extractvalue { i64, i64 } %124, 0
  store { i64, i64 } zeroinitializer, ptr %5, align 4
  call void @runtime.TouchConservativeSlot(ptr %5, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %6, align 8
  call void @runtime.TouchConservativeSlot(ptr %6, i64 16)
  call void @runtime.ClobberPointerRegs()
  store i64 %125, ptr %7, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %8, i64 %125)
  %126 = icmp eq ptr %7, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %126)
  %127 = load i64, ptr %7, align 4
  %128 = and i64 %127, 72057594037927935
  %129 = lshr i64 %128, 17
  %130 = select i1 false, i64 0, i64 %129
  %131 = shl i64 %128, 39
  %132 = select i1 false, i64 0, i64 %131
  %133 = or i64 %130, %132
  %134 = and i64 %133, 72057594037927935
  %135 = xor i64 %134, 25399393228665167
  %136 = inttoptr i64 %135 to ptr
  store ptr %136, ptr %9, align 8
  %137 = icmp eq ptr %9, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %137)
  %138 = load ptr, ptr %9, align 8
  %139 = ptrtoint ptr %138 to i64
  %140 = and i64 %139, 72057594037927935
  %141 = xor i64 %140, 25399393228665167
  %142 = shl i64 %141, 17
  %143 = select i1 false, i64 0, i64 %142
  %144 = lshr i64 %141, 39
  %145 = select i1 false, i64 0, i64 %144
  %146 = or i64 %143, %145
  %147 = and i64 %146, 72057594037927935
  %148 = or i64 %147, -6557241057451442176
  store i64 %148, ptr %10, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %11, i64 %148)
  call void @runtime.ClobberPointerRegs()
  %149 = icmp eq ptr %10, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %149)
  %150 = load i64, ptr %10, align 4
  %151 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 0, i64 3)
  %152 = call i64 @runtime.AdvanceHiddenPointer(i64 %150, i64 %151)
  store i64 %152, ptr %12, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %13, i64 %152)
  %153 = icmp eq ptr %12, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %153)
  %154 = load i64, ptr %12, align 4
  %155 = call i8 @runtime.LoadHiddenUint8(i64 %154)
  store i64 0, ptr %12, align 4
  call void @runtime.TouchConservativeSlot(ptr %12, i64 8)
  store ptr null, ptr %13, align 8
  call void @runtime.TouchConservativeSlot(ptr %13, i64 8)
  call void @runtime.ClobberPointerRegs()
  %156 = icmp ne i8 %155, 97
  br i1 %156, label %_llgo_23, label %_llgo_26

_llgo_23:                                         ; preds = %_llgo_25, %_llgo_26, %_llgo_22
  %157 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %157, align 8
  %158 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %157, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %158)
  unreachable

_llgo_24:                                         ; preds = %_llgo_25
  %159 = call i64 @runtime.AllocZHidden(i64 16)
  store i64 %159, ptr %14, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %15, i64 %159)
  %160 = icmp eq ptr %14, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %160)
  %161 = load i64, ptr %14, align 4
  %162 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 0, i64 2)
  %163 = mul i64 %162, 8
  %164 = call i64 @runtime.AdvanceHiddenPointer(i64 %161, i64 %163)
  store i64 %164, ptr %16, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %17, i64 %164)
  %165 = icmp eq ptr %14, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %165)
  %166 = load i64, ptr %14, align 4
  %167 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 1, i64 2)
  %168 = mul i64 %167, 8
  %169 = call i64 @runtime.AdvanceHiddenPointer(i64 %166, i64 %168)
  store i64 %169, ptr %18, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %19, i64 %169)
  %170 = icmp eq ptr %16, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %170)
  %171 = load i64, ptr %16, align 4
  %172 = alloca i64, align 8
  store i64 1, ptr %172, align 4
  call void @runtime.StoreHiddenPointee(i64 %171, ptr %172, i64 8)
  store i64 0, ptr %172, align 4
  store i64 0, ptr %16, align 4
  call void @runtime.TouchConservativeSlot(ptr %16, i64 8)
  store ptr null, ptr %17, align 8
  call void @runtime.TouchConservativeSlot(ptr %17, i64 8)
  call void @runtime.ClobberPointerRegs()
  %173 = icmp eq ptr %18, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %173)
  %174 = load i64, ptr %18, align 4
  %175 = alloca i64, align 8
  store i64 2, ptr %175, align 4
  call void @runtime.StoreHiddenPointee(i64 %174, ptr %175, i64 8)
  store i64 0, ptr %175, align 4
  store i64 0, ptr %18, align 4
  call void @runtime.TouchConservativeSlot(ptr %18, i64 8)
  store ptr null, ptr %19, align 8
  call void @runtime.TouchConservativeSlot(ptr %19, i64 8)
  call void @runtime.ClobberPointerRegs()
  %176 = icmp eq ptr %14, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %176)
  %177 = load i64, ptr %14, align 4
  %178 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 0, i64 2)
  %179 = mul i64 %178, 8
  %180 = call i64 @runtime.AdvanceHiddenPointer(i64 %177, i64 %179)
  store i64 %180, ptr %20, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %21, i64 %180)
  %181 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %182 = icmp eq ptr %20, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %182)
  %183 = load i64, ptr %20, align 4
  %184 = and i64 %183, 72057594037927935
  %185 = lshr i64 %184, 17
  %186 = select i1 false, i64 0, i64 %185
  %187 = shl i64 %184, 39
  %188 = select i1 false, i64 0, i64 %187
  %189 = or i64 %186, %188
  %190 = and i64 %189, 72057594037927935
  %191 = xor i64 %190, 25399393228665167
  %192 = inttoptr i64 %191 to ptr
  store i64 0, ptr %14, align 4
  call void @runtime.TouchConservativeSlot(ptr %14, i64 8)
  store ptr null, ptr %15, align 8
  call void @runtime.TouchConservativeSlot(ptr %15, i64 8)
  store i64 0, ptr %20, align 4
  call void @runtime.TouchConservativeSlot(ptr %20, i64 8)
  store ptr null, ptr %21, align 8
  call void @runtime.TouchConservativeSlot(ptr %21, i64 8)
  call void @runtime.ClobberPointerRegs()
  %193 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.UnsafeSlice"(ptr %192, i64 2, i64 8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %181)
  %194 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %193, ptr %194, align 8
  %195 = icmp eq ptr %194, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %195)
  %196 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %194, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %196, ptr %23, align 8
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
  store { i64, i64, i64 } %212, ptr %22, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %194, align 8
  call void @runtime.TouchConservativeSlot(ptr %194, i64 24)
  call void @runtime.ClobberPointerRegs()
  %213 = icmp eq ptr %22, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %213)
  %214 = load { i64, i64, i64 }, ptr %22, align 4
  %215 = extractvalue { i64, i64, i64 } %214, 0
  %216 = extractvalue { i64, i64, i64 } %214, 1
  %217 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 0, i64 %216)
  %218 = mul i64 %217, 8
  %219 = call i64 @runtime.AdvanceHiddenPointer(i64 %215, i64 %218)
  store i64 %219, ptr %24, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %25, i64 %219)
  %220 = icmp eq ptr %24, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %220)
  %221 = load i64, ptr %24, align 4
  %222 = alloca i64, align 8
  call void @runtime.LoadHiddenPointee(ptr %222, i64 %221, i64 8)
  %223 = icmp eq ptr %222, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %223)
  %224 = load i64, ptr %222, align 4
  store i64 0, ptr %222, align 4
  store i64 0, ptr %24, align 4
  call void @runtime.TouchConservativeSlot(ptr %24, i64 8)
  store ptr null, ptr %25, align 8
  call void @runtime.TouchConservativeSlot(ptr %25, i64 8)
  call void @runtime.ClobberPointerRegs()
  %225 = icmp ne i64 %224, 1
  br i1 %225, label %_llgo_27, label %_llgo_29

_llgo_25:                                         ; preds = %_llgo_26
  %226 = icmp eq ptr %10, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %226)
  %227 = load i64, ptr %10, align 4
  %228 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 2, i64 3)
  %229 = call i64 @runtime.AdvanceHiddenPointer(i64 %227, i64 %228)
  store i64 %229, ptr %26, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %27, i64 %229)
  %230 = icmp eq ptr %26, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %230)
  %231 = load i64, ptr %26, align 4
  %232 = call i8 @runtime.LoadHiddenUint8(i64 %231)
  store i64 0, ptr %7, align 4
  call void @runtime.TouchConservativeSlot(ptr %7, i64 8)
  store ptr null, ptr %8, align 8
  call void @runtime.TouchConservativeSlot(ptr %8, i64 8)
  store ptr null, ptr %9, align 8
  call void @runtime.TouchConservativeSlot(ptr %9, i64 8)
  store i64 0, ptr %10, align 4
  call void @runtime.TouchConservativeSlot(ptr %10, i64 8)
  store ptr null, ptr %11, align 8
  call void @runtime.TouchConservativeSlot(ptr %11, i64 8)
  store i64 0, ptr %26, align 4
  call void @runtime.TouchConservativeSlot(ptr %26, i64 8)
  store ptr null, ptr %27, align 8
  call void @runtime.TouchConservativeSlot(ptr %27, i64 8)
  call void @runtime.ClobberPointerRegs()
  %233 = icmp ne i8 %232, 99
  br i1 %233, label %_llgo_23, label %_llgo_24

_llgo_26:                                         ; preds = %_llgo_22
  %234 = icmp eq ptr %10, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %234)
  %235 = load i64, ptr %10, align 4
  %236 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 1, i64 3)
  %237 = call i64 @runtime.AdvanceHiddenPointer(i64 %235, i64 %236)
  store i64 %237, ptr %28, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %29, i64 %237)
  %238 = icmp eq ptr %28, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %238)
  %239 = load i64, ptr %28, align 4
  %240 = call i8 @runtime.LoadHiddenUint8(i64 %239)
  store i64 0, ptr %28, align 4
  call void @runtime.TouchConservativeSlot(ptr %28, i64 8)
  store ptr null, ptr %29, align 8
  call void @runtime.TouchConservativeSlot(ptr %29, i64 8)
  call void @runtime.ClobberPointerRegs()
  %241 = icmp ne i8 %240, 98
  br i1 %241, label %_llgo_23, label %_llgo_25

_llgo_27:                                         ; preds = %_llgo_29, %_llgo_24
  %242 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %242, align 8
  %243 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %242, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %243)
  unreachable

_llgo_28:                                         ; preds = %_llgo_29
  %244 = icmp eq ptr %22, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %244)
  %245 = load { i64, i64, i64 }, ptr %22, align 4
  %246 = extractvalue { i64, i64, i64 } %245, 0
  store { i64, i64, i64 } zeroinitializer, ptr %22, align 4
  call void @runtime.TouchConservativeSlot(ptr %22, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %23, align 8
  call void @runtime.TouchConservativeSlot(ptr %23, i64 24)
  call void @runtime.ClobberPointerRegs()
  store i64 %246, ptr %30, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %31, i64 %246)
  %247 = icmp eq ptr %30, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %247)
  %248 = load i64, ptr %30, align 4
  %249 = alloca i64, align 8
  call void @runtime.LoadHiddenPointee(ptr %249, i64 %248, i64 8)
  %250 = icmp eq ptr %249, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %250)
  %251 = load i64, ptr %249, align 4
  store i64 0, ptr %249, align 4
  store i64 0, ptr %30, align 4
  call void @runtime.TouchConservativeSlot(ptr %30, i64 8)
  store ptr null, ptr %31, align 8
  call void @runtime.TouchConservativeSlot(ptr %31, i64 8)
  call void @runtime.ClobberPointerRegs()
  %252 = icmp ne i64 %251, 1
  br i1 %252, label %_llgo_30, label %_llgo_31

_llgo_29:                                         ; preds = %_llgo_24
  %253 = icmp eq ptr %22, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %253)
  %254 = load { i64, i64, i64 }, ptr %22, align 4
  %255 = extractvalue { i64, i64, i64 } %254, 0
  %256 = extractvalue { i64, i64, i64 } %254, 1
  %257 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 1, i64 %256)
  %258 = mul i64 %257, 8
  %259 = call i64 @runtime.AdvanceHiddenPointer(i64 %255, i64 %258)
  store i64 %259, ptr %32, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %33, i64 %259)
  %260 = icmp eq ptr %32, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %260)
  %261 = load i64, ptr %32, align 4
  %262 = alloca i64, align 8
  call void @runtime.LoadHiddenPointee(ptr %262, i64 %261, i64 8)
  %263 = icmp eq ptr %262, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %263)
  %264 = load i64, ptr %262, align 4
  store i64 0, ptr %262, align 4
  store i64 0, ptr %32, align 4
  call void @runtime.TouchConservativeSlot(ptr %32, i64 8)
  store ptr null, ptr %33, align 8
  call void @runtime.TouchConservativeSlot(ptr %33, i64 8)
  call void @runtime.ClobberPointerRegs()
  %265 = icmp ne i64 %264, 2
  br i1 %265, label %_llgo_27, label %_llgo_28

_llgo_30:                                         ; preds = %_llgo_28
  %266 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %266, align 8
  %267 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %266, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %267)
  unreachable

_llgo_31:                                         ; preds = %_llgo_28
  %268 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %268)
  store ptr getelementptr (i8, ptr null, i64 1), ptr %34, align 8
  %269 = icmp eq ptr %34, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %269)
  %270 = load ptr, ptr %34, align 8
  %271 = ptrtoint ptr %270 to i64
  %272 = icmp ne i64 %271, 1
  store ptr null, ptr %34, align 8
  call void @runtime.TouchConservativeSlot(ptr %34, i64 8)
  call void @runtime.ClobberPointerRegs()
  br i1 %272, label %_llgo_32, label %_llgo_33

_llgo_32:                                         ; preds = %_llgo_31
  %273 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %273, align 8
  %274 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %273, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %274)
  unreachable

_llgo_33:                                         ; preds = %_llgo_31
  ret void

_llgo_34:                                         ; No predecessors!
  unreachable

_llgo_35:                                         ; No predecessors!
  unreachable

_llgo_36:                                         ; No predecessors!
  unreachable

_llgo_37:                                         ; No predecessors!
  unreachable

_llgo_38:                                         ; No predecessors!
  unreachable

_llgo_39:                                         ; No predecessors!
  unreachable

_llgo_40:                                         ; No predecessors!
  unreachable

_llgo_41:                                         ; No predecessors!
  unreachable

_llgo_42:                                         ; No predecessors!
  unreachable

_llgo_43:                                         ; No predecessors!
  unreachable

_llgo_44:                                         ; No predecessors!
  unreachable

_llgo_45:                                         ; No predecessors!
  unreachable

_llgo_46:                                         ; No predecessors!
  unreachable

_llgo_47:                                         ; No predecessors!
  unreachable

_llgo_48:                                         ; No predecessors!
  unreachable
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1)

declare void @unsafe.init()

declare void @"github.com/goplus/lib/c.init"()

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/runtime/internal/runtime.strequal")
  %4 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr %1, ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %3)
  ret i1 %4
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr")
  %4 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %1, ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %3)
  ret i1 %4
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

declare void @runtime.StoreHiddenPointerRoot(ptr, i64)

declare void @runtime.ClobberPointerRegs()

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr)

declare void @runtime.TouchConservativeSlot(ptr, i64)

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.UnsafeString"(ptr, i64)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.String")

declare i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64, i64)

declare i64 @runtime.AdvanceHiddenPointer(i64, i64)

declare i8 @runtime.LoadHiddenUint8(i64)

declare i64 @runtime.AllocZHidden(i64)

declare void @runtime.StoreHiddenPointee(i64, ptr, i64)

declare %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.UnsafeSlice"(ptr, i64, i64)

declare void @runtime.LoadHiddenPointee(ptr, i64, i64)
