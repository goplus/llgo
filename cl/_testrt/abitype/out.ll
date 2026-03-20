; ModuleID = 'github.com/goplus/llgo/cl/_testrt/abitype'
source_filename = "github.com/goplus/llgo/cl/_testrt/abitype"

%"github.com/goplus/llgo/runtime/abi.Type" = type { i64, i64, i32, i8, i8, i8, i8, { ptr, ptr }, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/abi.PtrType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/cl/_testrt/abitype.eface" = type { ptr, ptr }

@"github.com/goplus/llgo/cl/_testrt/abitype.init$guard" = global i1 false, align 1
@_llgo_int32 = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 4, i64 0, i32 1448558410, i8 12, i8 4, i8 4, i8 5, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal32", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr @"*_llgo_int32" }, align 8
@0 = private unnamed_addr constant [5 x i8] c"int32", align 1
@"*_llgo_int32" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -38689692, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr null }, ptr @_llgo_int32 }, align 8
@1 = private unnamed_addr constant [14 x i8] c"abi rune error", align 1
@_llgo_string = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 8, i32 1749264893, i8 4, i8 8, i8 8, i8 24, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 6 }, ptr @"*_llgo_string" }, align 8
@2 = private unnamed_addr constant [6 x i8] c"string", align 1
@"*_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1323879264, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 6 }, ptr null }, ptr @_llgo_string }, align 8
@_llgo_uint8 = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 1, i64 0, i32 269156761, i8 12, i8 1, i8 1, i8 8, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal8", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 5 }, ptr @"*_llgo_uint8" }, align 8
@3 = private unnamed_addr constant [5 x i8] c"uint8", align 1
@"*_llgo_uint8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1277858201, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 5 }, ptr null }, ptr @_llgo_uint8 }, align 8
@4 = private unnamed_addr constant [14 x i8] c"abi byte error", align 1

define void @"github.com/goplus/llgo/cl/_testrt/abitype.init"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/abitype.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/abitype.init$guard", align 1
  call void @"github.com/goplus/llgo/runtime/abi.init"()
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/abitype.main"() {
_llgo_0:
  %0 = alloca ptr, align 8
  %1 = alloca i64, align 8
  %2 = alloca ptr, align 8
  store ptr null, ptr %2, align 8
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  store ptr null, ptr %4, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  store ptr null, ptr %6, align 8
  %7 = alloca { i64, i64 }, align 8
  %8 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %8, align 8
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
  %16 = alloca { i64, i64 }, align 8
  %17 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %17, align 8
  %18 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  call void @llvm.memset(ptr %18, i8 0, i64 16, i1 false)
  %19 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 4)
  store i32 0, ptr %19, align 4
  %20 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_int32, ptr undef }, ptr %19, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %20, ptr %18, align 8
  store ptr %18, ptr %0, align 8
  %21 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %21)
  %22 = load ptr, ptr %0, align 8
  %23 = ptrtoint ptr %22 to i64
  %24 = and i64 %23, 72057594037927935
  %25 = xor i64 %24, 25399393228665167
  %26 = shl i64 %25, 17
  %27 = select i1 false, i64 0, i64 %26
  %28 = lshr i64 %25, 39
  %29 = select i1 false, i64 0, i64 %28
  %30 = or i64 %27, %29
  %31 = and i64 %30, 72057594037927935
  %32 = or i64 %31, -6557241057451442176
  store i64 %32, ptr %1, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %2, i64 %32)
  call void @runtime.ClobberPointerRegs()
  %33 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %33)
  %34 = load i64, ptr %1, align 4
  %35 = and i64 %34, 72057594037927935
  %36 = lshr i64 %35, 17
  %37 = select i1 false, i64 0, i64 %36
  %38 = shl i64 %35, 39
  %39 = select i1 false, i64 0, i64 %38
  %40 = or i64 %37, %39
  %41 = and i64 %40, 72057594037927935
  %42 = xor i64 %41, 25399393228665167
  %43 = inttoptr i64 %42 to ptr
  %44 = icmp eq ptr %43, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %44)
  %45 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/abitype.eface", ptr %43, i32 0, i32 0
  %46 = ptrtoint ptr %45 to i64
  %47 = and i64 %46, 72057594037927935
  %48 = xor i64 %47, 25399393228665167
  %49 = shl i64 %48, 17
  %50 = select i1 false, i64 0, i64 %49
  %51 = lshr i64 %48, 39
  %52 = select i1 false, i64 0, i64 %51
  %53 = or i64 %50, %52
  %54 = and i64 %53, 72057594037927935
  %55 = or i64 %54, -6557241057451442176
  store i64 %55, ptr %3, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %4, i64 %55)
  call void @runtime.ClobberPointerRegs()
  %56 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %56)
  %57 = load i64, ptr %3, align 4
  %58 = call i64 @runtime.LoadHiddenPointerKey(i64 %57)
  store i64 %58, ptr %5, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %6, i64 %58)
  store ptr null, ptr %0, align 8
  call void @runtime.TouchConservativeSlot(ptr %0, i64 8)
  store i64 0, ptr %1, align 4
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  store ptr null, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store i64 0, ptr %3, align 4
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  store ptr null, ptr %4, align 8
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  call void @runtime.ClobberPointerRegs()
  %59 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %60 = icmp eq ptr %5, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %60)
  %61 = load i64, ptr %5, align 4
  %62 = and i64 %61, 72057594037927935
  %63 = lshr i64 %62, 17
  %64 = select i1 false, i64 0, i64 %63
  %65 = shl i64 %62, 39
  %66 = select i1 false, i64 0, i64 %65
  %67 = or i64 %64, %66
  %68 = and i64 %67, 72057594037927935
  %69 = xor i64 %68, 25399393228665167
  %70 = inttoptr i64 %69 to ptr
  store i64 0, ptr %5, align 4
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  store ptr null, ptr %6, align 8
  call void @runtime.TouchConservativeSlot(ptr %6, i64 8)
  call void @runtime.ClobberPointerRegs()
  %71 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/abi.(*Type).String"(ptr %70)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %59)
  %72 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %71, ptr %72, align 8
  %73 = icmp eq ptr %72, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %73)
  %74 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %72, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %74, ptr %8, align 8
  %75 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %74, 0
  %76 = ptrtoint ptr %75 to i64
  %77 = and i64 %76, 72057594037927935
  %78 = xor i64 %77, 25399393228665167
  %79 = shl i64 %78, 17
  %80 = select i1 false, i64 0, i64 %79
  %81 = lshr i64 %78, 39
  %82 = select i1 false, i64 0, i64 %81
  %83 = or i64 %80, %82
  %84 = and i64 %83, 72057594037927935
  %85 = or i64 %84, -6557241057451442176
  %86 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %74, 1
  %87 = insertvalue { i64, i64 } undef, i64 %85, 0
  %88 = insertvalue { i64, i64 } %87, i64 %86, 1
  store { i64, i64 } %88, ptr %7, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %72, align 8
  call void @runtime.TouchConservativeSlot(ptr %72, i64 16)
  call void @runtime.ClobberPointerRegs()
  %89 = icmp eq ptr %8, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %89)
  %90 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %8, align 8
  %91 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %90, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 })
  %92 = xor i1 %91, true
  store { i64, i64 } zeroinitializer, ptr %7, align 4
  call void @runtime.TouchConservativeSlot(ptr %7, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %8, align 8
  call void @runtime.TouchConservativeSlot(ptr %8, i64 16)
  call void @runtime.ClobberPointerRegs()
  br i1 %92, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, ptr %18, align 8
  call void @runtime.TouchConservativeSlot(ptr %18, i64 16)
  call void @runtime.ClobberPointerRegs()
  %93 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 14 }, ptr %93, align 8
  %94 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %93, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %94)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  %95 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 1)
  store i8 0, ptr %95, align 1
  %96 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_uint8, ptr undef }, ptr %95, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %96, ptr %18, align 8
  store ptr %18, ptr %9, align 8
  %97 = icmp eq ptr %9, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %97)
  %98 = load ptr, ptr %9, align 8
  %99 = ptrtoint ptr %98 to i64
  %100 = and i64 %99, 72057594037927935
  %101 = xor i64 %100, 25399393228665167
  %102 = shl i64 %101, 17
  %103 = select i1 false, i64 0, i64 %102
  %104 = lshr i64 %101, 39
  %105 = select i1 false, i64 0, i64 %104
  %106 = or i64 %103, %105
  %107 = and i64 %106, 72057594037927935
  %108 = or i64 %107, -6557241057451442176
  store i64 %108, ptr %10, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %11, i64 %108)
  call void @runtime.ClobberPointerRegs()
  %109 = icmp eq ptr %10, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %109)
  %110 = load i64, ptr %10, align 4
  %111 = and i64 %110, 72057594037927935
  %112 = lshr i64 %111, 17
  %113 = select i1 false, i64 0, i64 %112
  %114 = shl i64 %111, 39
  %115 = select i1 false, i64 0, i64 %114
  %116 = or i64 %113, %115
  %117 = and i64 %116, 72057594037927935
  %118 = xor i64 %117, 25399393228665167
  %119 = inttoptr i64 %118 to ptr
  %120 = icmp eq ptr %119, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %120)
  %121 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/abitype.eface", ptr %119, i32 0, i32 0
  %122 = ptrtoint ptr %121 to i64
  %123 = and i64 %122, 72057594037927935
  %124 = xor i64 %123, 25399393228665167
  %125 = shl i64 %124, 17
  %126 = select i1 false, i64 0, i64 %125
  %127 = lshr i64 %124, 39
  %128 = select i1 false, i64 0, i64 %127
  %129 = or i64 %126, %128
  %130 = and i64 %129, 72057594037927935
  %131 = or i64 %130, -6557241057451442176
  store i64 %131, ptr %12, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %13, i64 %131)
  call void @runtime.ClobberPointerRegs()
  %132 = icmp eq ptr %12, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %132)
  %133 = load i64, ptr %12, align 4
  %134 = call i64 @runtime.LoadHiddenPointerKey(i64 %133)
  store i64 %134, ptr %14, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %15, i64 %134)
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, ptr %18, align 8
  call void @runtime.TouchConservativeSlot(ptr %18, i64 16)
  call void @runtime.ClobberPointerRegs()
  store ptr null, ptr %9, align 8
  call void @runtime.TouchConservativeSlot(ptr %9, i64 8)
  store i64 0, ptr %10, align 4
  call void @runtime.TouchConservativeSlot(ptr %10, i64 8)
  store ptr null, ptr %11, align 8
  call void @runtime.TouchConservativeSlot(ptr %11, i64 8)
  store i64 0, ptr %12, align 4
  call void @runtime.TouchConservativeSlot(ptr %12, i64 8)
  store ptr null, ptr %13, align 8
  call void @runtime.TouchConservativeSlot(ptr %13, i64 8)
  call void @runtime.ClobberPointerRegs()
  %135 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %136 = icmp eq ptr %14, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %136)
  %137 = load i64, ptr %14, align 4
  %138 = and i64 %137, 72057594037927935
  %139 = lshr i64 %138, 17
  %140 = select i1 false, i64 0, i64 %139
  %141 = shl i64 %138, 39
  %142 = select i1 false, i64 0, i64 %141
  %143 = or i64 %140, %142
  %144 = and i64 %143, 72057594037927935
  %145 = xor i64 %144, 25399393228665167
  %146 = inttoptr i64 %145 to ptr
  store i64 0, ptr %14, align 4
  call void @runtime.TouchConservativeSlot(ptr %14, i64 8)
  store ptr null, ptr %15, align 8
  call void @runtime.TouchConservativeSlot(ptr %15, i64 8)
  call void @runtime.ClobberPointerRegs()
  %147 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/abi.(*Type).String"(ptr %146)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %135)
  %148 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %147, ptr %148, align 8
  %149 = icmp eq ptr %148, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %149)
  %150 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %148, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %150, ptr %17, align 8
  %151 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %150, 0
  %152 = ptrtoint ptr %151 to i64
  %153 = and i64 %152, 72057594037927935
  %154 = xor i64 %153, 25399393228665167
  %155 = shl i64 %154, 17
  %156 = select i1 false, i64 0, i64 %155
  %157 = lshr i64 %154, 39
  %158 = select i1 false, i64 0, i64 %157
  %159 = or i64 %156, %158
  %160 = and i64 %159, 72057594037927935
  %161 = or i64 %160, -6557241057451442176
  %162 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %150, 1
  %163 = insertvalue { i64, i64 } undef, i64 %161, 0
  %164 = insertvalue { i64, i64 } %163, i64 %162, 1
  store { i64, i64 } %164, ptr %16, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %148, align 8
  call void @runtime.TouchConservativeSlot(ptr %148, i64 16)
  call void @runtime.ClobberPointerRegs()
  %165 = icmp eq ptr %17, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %165)
  %166 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %17, align 8
  %167 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %166, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 5 })
  %168 = xor i1 %167, true
  store { i64, i64 } zeroinitializer, ptr %16, align 4
  call void @runtime.TouchConservativeSlot(ptr %16, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %17, align 8
  call void @runtime.TouchConservativeSlot(ptr %17, i64 16)
  call void @runtime.ClobberPointerRegs()
  br i1 %168, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %169 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 14 }, ptr %169, align 8
  %170 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %169, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %170)
  unreachable

_llgo_4:                                          ; preds = %_llgo_2
  ret void

_llgo_5:                                          ; No predecessors!
  unreachable

_llgo_6:                                          ; No predecessors!
  unreachable
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1)

declare void @unsafe.init()

declare void @"github.com/goplus/llgo/runtime/abi.init"()

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal32"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal32"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequal32")
  %4 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal32"(ptr %1, ptr %2)
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

declare void @runtime.StoreHiddenPointerRoot(ptr, i64)

declare void @runtime.ClobberPointerRegs()

declare i64 @runtime.LoadHiddenPointerKey(i64)

declare void @runtime.TouchConservativeSlot(ptr, i64)

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/abi.(*Type).String"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.String")

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/runtime/internal/runtime.strequal")
  %4 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr %1, ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %3)
  ret i1 %4
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal8"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal8"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequal8")
  %4 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal8"(ptr %1, ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %3)
  ret i1 %4
}

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
