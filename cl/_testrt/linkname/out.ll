; ModuleID = 'github.com/goplus/llgo/cl/_testrt/linkname'
source_filename = "github.com/goplus/llgo/cl/_testrt/linkname"

%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/cl/_testrt/linkname.m" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String" }

@"github.com/goplus/llgo/cl/_testrt/linkname.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@1 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@2 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@3 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@4 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@5 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@6 = private unnamed_addr constant [2 x i8] c"3\00", align 1
@7 = private unnamed_addr constant [2 x i8] c"4\00", align 1
@8 = private unnamed_addr constant [5 x i8] c"hello", align 1

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/cl/_testrt/linkname/linktarget.m.info"(%"github.com/goplus/llgo/cl/_testrt/linkname.m")

define void @"github.com/goplus/llgo/cl/_testrt/linkname.init"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/linkname.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/linkname.init$guard", align 1
  call void @"github.com/goplus/llgo/cl/_testrt/linkname/linktarget.init"()
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/linkname.main"() {
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
  %18 = alloca %"github.com/goplus/llgo/cl/_testrt/linkname.m", align 8
  %19 = alloca { i64, i64 }, align 8
  %20 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %20, align 8
  %21 = and i64 ptrtoint (ptr @0 to i64), 72057594037927935
  %22 = xor i64 %21, 25399393228665167
  %23 = shl i64 %22, 17
  %24 = select i1 false, i64 0, i64 %23
  %25 = lshr i64 %22, 39
  %26 = select i1 false, i64 0, i64 %25
  %27 = or i64 %24, %26
  %28 = and i64 %27, 72057594037927935
  %29 = or i64 %28, -6557241057451442176
  store i64 %29, ptr %0, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %1, i64 %29)
  call void @runtime.ClobberPointerRegs()
  %30 = and i64 ptrtoint (ptr @1 to i64), 72057594037927935
  %31 = xor i64 %30, 25399393228665167
  %32 = shl i64 %31, 17
  %33 = select i1 false, i64 0, i64 %32
  %34 = lshr i64 %31, 39
  %35 = select i1 false, i64 0, i64 %34
  %36 = or i64 %33, %35
  %37 = and i64 %36, 72057594037927935
  %38 = or i64 %37, -6557241057451442176
  store i64 %38, ptr %2, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %3, i64 %38)
  call void @runtime.ClobberPointerRegs()
  %39 = and i64 ptrtoint (ptr @2 to i64), 72057594037927935
  %40 = xor i64 %39, 25399393228665167
  %41 = shl i64 %40, 17
  %42 = select i1 false, i64 0, i64 %41
  %43 = lshr i64 %40, 39
  %44 = select i1 false, i64 0, i64 %43
  %45 = or i64 %42, %44
  %46 = and i64 %45, 72057594037927935
  %47 = or i64 %46, -6557241057451442176
  store i64 %47, ptr %4, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %5, i64 %47)
  call void @runtime.ClobberPointerRegs()
  %48 = and i64 ptrtoint (ptr @3 to i64), 72057594037927935
  %49 = xor i64 %48, 25399393228665167
  %50 = shl i64 %49, 17
  %51 = select i1 false, i64 0, i64 %50
  %52 = lshr i64 %49, 39
  %53 = select i1 false, i64 0, i64 %52
  %54 = or i64 %51, %53
  %55 = and i64 %54, 72057594037927935
  %56 = or i64 %55, -6557241057451442176
  store i64 %56, ptr %6, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %7, i64 %56)
  call void @runtime.ClobberPointerRegs()
  %57 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %58 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %58)
  %59 = load i64, ptr %0, align 4
  %60 = and i64 %59, 72057594037927935
  %61 = lshr i64 %60, 17
  %62 = select i1 false, i64 0, i64 %61
  %63 = shl i64 %60, 39
  %64 = select i1 false, i64 0, i64 %63
  %65 = or i64 %62, %64
  %66 = and i64 %65, 72057594037927935
  %67 = xor i64 %66, 25399393228665167
  %68 = inttoptr i64 %67 to ptr
  %69 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %69)
  %70 = load i64, ptr %2, align 4
  %71 = and i64 %70, 72057594037927935
  %72 = lshr i64 %71, 17
  %73 = select i1 false, i64 0, i64 %72
  %74 = shl i64 %71, 39
  %75 = select i1 false, i64 0, i64 %74
  %76 = or i64 %73, %75
  %77 = and i64 %76, 72057594037927935
  %78 = xor i64 %77, 25399393228665167
  %79 = inttoptr i64 %78 to ptr
  %80 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %80)
  %81 = load i64, ptr %4, align 4
  %82 = and i64 %81, 72057594037927935
  %83 = lshr i64 %82, 17
  %84 = select i1 false, i64 0, i64 %83
  %85 = shl i64 %82, 39
  %86 = select i1 false, i64 0, i64 %85
  %87 = or i64 %84, %86
  %88 = and i64 %87, 72057594037927935
  %89 = xor i64 %88, 25399393228665167
  %90 = inttoptr i64 %89 to ptr
  %91 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %91)
  %92 = load i64, ptr %6, align 4
  %93 = and i64 %92, 72057594037927935
  %94 = lshr i64 %93, 17
  %95 = select i1 false, i64 0, i64 %94
  %96 = shl i64 %93, 39
  %97 = select i1 false, i64 0, i64 %96
  %98 = or i64 %95, %97
  %99 = and i64 %98, 72057594037927935
  %100 = xor i64 %99, 25399393228665167
  %101 = inttoptr i64 %100 to ptr
  store i64 0, ptr %0, align 4
  call void @runtime.TouchConservativeSlot(ptr %0, i64 8)
  store ptr null, ptr %1, align 8
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  store i64 0, ptr %4, align 4
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  store ptr null, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  store i64 0, ptr %6, align 4
  call void @runtime.TouchConservativeSlot(ptr %6, i64 8)
  store ptr null, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 8)
  call void @runtime.ClobberPointerRegs()
  call void @"github.com/goplus/llgo/cl/_testrt/linkname/linktarget.F"(ptr %68, ptr %79, ptr %90, ptr %101)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %57)
  %102 = and i64 ptrtoint (ptr @4 to i64), 72057594037927935
  %103 = xor i64 %102, 25399393228665167
  %104 = shl i64 %103, 17
  %105 = select i1 false, i64 0, i64 %104
  %106 = lshr i64 %103, 39
  %107 = select i1 false, i64 0, i64 %106
  %108 = or i64 %105, %107
  %109 = and i64 %108, 72057594037927935
  %110 = or i64 %109, -6557241057451442176
  store i64 %110, ptr %8, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %9, i64 %110)
  call void @runtime.ClobberPointerRegs()
  %111 = and i64 ptrtoint (ptr @5 to i64), 72057594037927935
  %112 = xor i64 %111, 25399393228665167
  %113 = shl i64 %112, 17
  %114 = select i1 false, i64 0, i64 %113
  %115 = lshr i64 %112, 39
  %116 = select i1 false, i64 0, i64 %115
  %117 = or i64 %114, %116
  %118 = and i64 %117, 72057594037927935
  %119 = or i64 %118, -6557241057451442176
  store i64 %119, ptr %10, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %11, i64 %119)
  call void @runtime.ClobberPointerRegs()
  %120 = and i64 ptrtoint (ptr @6 to i64), 72057594037927935
  %121 = xor i64 %120, 25399393228665167
  %122 = shl i64 %121, 17
  %123 = select i1 false, i64 0, i64 %122
  %124 = lshr i64 %121, 39
  %125 = select i1 false, i64 0, i64 %124
  %126 = or i64 %123, %125
  %127 = and i64 %126, 72057594037927935
  %128 = or i64 %127, -6557241057451442176
  store i64 %128, ptr %12, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %13, i64 %128)
  call void @runtime.ClobberPointerRegs()
  %129 = and i64 ptrtoint (ptr @7 to i64), 72057594037927935
  %130 = xor i64 %129, 25399393228665167
  %131 = shl i64 %130, 17
  %132 = select i1 false, i64 0, i64 %131
  %133 = lshr i64 %130, 39
  %134 = select i1 false, i64 0, i64 %133
  %135 = or i64 %132, %134
  %136 = and i64 %135, 72057594037927935
  %137 = or i64 %136, -6557241057451442176
  store i64 %137, ptr %14, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %15, i64 %137)
  call void @runtime.ClobberPointerRegs()
  %138 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %139 = icmp eq ptr %8, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %139)
  %140 = load i64, ptr %8, align 4
  %141 = and i64 %140, 72057594037927935
  %142 = lshr i64 %141, 17
  %143 = select i1 false, i64 0, i64 %142
  %144 = shl i64 %141, 39
  %145 = select i1 false, i64 0, i64 %144
  %146 = or i64 %143, %145
  %147 = and i64 %146, 72057594037927935
  %148 = xor i64 %147, 25399393228665167
  %149 = inttoptr i64 %148 to ptr
  %150 = icmp eq ptr %10, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %150)
  %151 = load i64, ptr %10, align 4
  %152 = and i64 %151, 72057594037927935
  %153 = lshr i64 %152, 17
  %154 = select i1 false, i64 0, i64 %153
  %155 = shl i64 %152, 39
  %156 = select i1 false, i64 0, i64 %155
  %157 = or i64 %154, %156
  %158 = and i64 %157, 72057594037927935
  %159 = xor i64 %158, 25399393228665167
  %160 = inttoptr i64 %159 to ptr
  %161 = icmp eq ptr %12, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %161)
  %162 = load i64, ptr %12, align 4
  %163 = and i64 %162, 72057594037927935
  %164 = lshr i64 %163, 17
  %165 = select i1 false, i64 0, i64 %164
  %166 = shl i64 %163, 39
  %167 = select i1 false, i64 0, i64 %166
  %168 = or i64 %165, %167
  %169 = and i64 %168, 72057594037927935
  %170 = xor i64 %169, 25399393228665167
  %171 = inttoptr i64 %170 to ptr
  %172 = icmp eq ptr %14, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %172)
  %173 = load i64, ptr %14, align 4
  %174 = and i64 %173, 72057594037927935
  %175 = lshr i64 %174, 17
  %176 = select i1 false, i64 0, i64 %175
  %177 = shl i64 %174, 39
  %178 = select i1 false, i64 0, i64 %177
  %179 = or i64 %176, %178
  %180 = and i64 %179, 72057594037927935
  %181 = xor i64 %180, 25399393228665167
  %182 = inttoptr i64 %181 to ptr
  store i64 0, ptr %8, align 4
  call void @runtime.TouchConservativeSlot(ptr %8, i64 8)
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
  store i64 0, ptr %14, align 4
  call void @runtime.TouchConservativeSlot(ptr %14, i64 8)
  store ptr null, ptr %15, align 8
  call void @runtime.TouchConservativeSlot(ptr %15, i64 8)
  call void @runtime.ClobberPointerRegs()
  call void @"github.com/goplus/llgo/cl/_testrt/linkname/linktarget.F"(ptr %149, ptr %160, ptr %171, ptr %182)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %138)
  %183 = call i64 @runtime.AllocZHidden(i64 16)
  store i64 %183, ptr %16, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %17, i64 %183)
  %184 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %185 = icmp eq ptr %16, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %185)
  %186 = load i64, ptr %16, align 4
  %187 = and i64 %186, 72057594037927935
  %188 = lshr i64 %187, 17
  %189 = select i1 false, i64 0, i64 %188
  %190 = shl i64 %187, 39
  %191 = select i1 false, i64 0, i64 %190
  %192 = or i64 %189, %191
  %193 = and i64 %192, 72057594037927935
  %194 = xor i64 %193, 25399393228665167
  %195 = inttoptr i64 %194 to ptr
  call void @"github.com/goplus/llgo/cl/_testrt/linkname/linktarget.(*m).setInfo"(ptr %195, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 5 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %184)
  %196 = icmp eq ptr %16, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %196)
  %197 = load i64, ptr %16, align 4
  %198 = alloca %"github.com/goplus/llgo/cl/_testrt/linkname.m", align 8
  call void @runtime.LoadHiddenPointee(ptr %198, i64 %197, i64 16)
  %199 = icmp eq ptr %198, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %199)
  %200 = load %"github.com/goplus/llgo/cl/_testrt/linkname.m", ptr %198, align 8
  store %"github.com/goplus/llgo/cl/_testrt/linkname.m" zeroinitializer, ptr %198, align 8
  store %"github.com/goplus/llgo/cl/_testrt/linkname.m" %200, ptr %18, align 8
  store i64 0, ptr %16, align 4
  call void @runtime.TouchConservativeSlot(ptr %16, i64 8)
  store ptr null, ptr %17, align 8
  call void @runtime.TouchConservativeSlot(ptr %17, i64 8)
  call void @runtime.ClobberPointerRegs()
  %201 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %202 = icmp eq ptr %18, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %202)
  %203 = load %"github.com/goplus/llgo/cl/_testrt/linkname.m", ptr %18, align 8
  store %"github.com/goplus/llgo/cl/_testrt/linkname.m" zeroinitializer, ptr %18, align 8
  call void @runtime.TouchConservativeSlot(ptr %18, i64 16)
  call void @runtime.ClobberPointerRegs()
  %204 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/cl/_testrt/linkname/linktarget.m.info"(%"github.com/goplus/llgo/cl/_testrt/linkname.m" %203)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %201)
  %205 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %204, ptr %205, align 8
  %206 = icmp eq ptr %205, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %206)
  %207 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %205, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %207, ptr %20, align 8
  %208 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %207, 0
  %209 = ptrtoint ptr %208 to i64
  %210 = and i64 %209, 72057594037927935
  %211 = xor i64 %210, 25399393228665167
  %212 = shl i64 %211, 17
  %213 = select i1 false, i64 0, i64 %212
  %214 = lshr i64 %211, 39
  %215 = select i1 false, i64 0, i64 %214
  %216 = or i64 %213, %215
  %217 = and i64 %216, 72057594037927935
  %218 = or i64 %217, -6557241057451442176
  %219 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %207, 1
  %220 = insertvalue { i64, i64 } undef, i64 %218, 0
  %221 = insertvalue { i64, i64 } %220, i64 %219, 1
  store { i64, i64 } %221, ptr %19, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %205, align 8
  call void @runtime.TouchConservativeSlot(ptr %205, i64 16)
  call void @runtime.ClobberPointerRegs()
  %222 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %223 = icmp eq ptr %20, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %223)
  %224 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %20, align 8
  store { i64, i64 } zeroinitializer, ptr %19, align 4
  call void @runtime.TouchConservativeSlot(ptr %19, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %20, align 8
  call void @runtime.TouchConservativeSlot(ptr %20, i64 16)
  call void @runtime.ClobberPointerRegs()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %224)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %222)
  ret void
}

declare void @"github.com/goplus/llgo/cl/_testrt/linkname/linktarget.F"(ptr, ptr, ptr, ptr)

declare void @"github.com/goplus/llgo/cl/_testrt/linkname/linktarget.(*m).setInfo"(ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1)

declare void @unsafe.init()

declare void @"github.com/goplus/lib/c.init"()

declare void @"github.com/goplus/llgo/cl/_testrt/linkname/linktarget.init"()

declare void @runtime.StoreHiddenPointerRoot(ptr, i64)

declare void @runtime.ClobberPointerRegs()

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr)

declare void @runtime.TouchConservativeSlot(ptr, i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr)

declare i64 @runtime.AllocZHidden(i64)

declare void @runtime.LoadHiddenPointee(ptr, i64, i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)
