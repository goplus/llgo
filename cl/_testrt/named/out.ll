; ModuleID = 'github.com/goplus/llgo/cl/_testrt/named'
source_filename = "github.com/goplus/llgo/cl/_testrt/named"

%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/cl/_testrt/named.mspan" = type { ptr, ptr, ptr, %"github.com/goplus/llgo/cl/_testrt/named.minfo", i64, { ptr, ptr } }
%"github.com/goplus/llgo/cl/_testrt/named.minfo" = type { ptr, i64 }
%"github.com/goplus/llgo/cl/_testrt/named.mSpanList" = type { ptr, ptr }

@"github.com/goplus/llgo/cl/_testrt/named.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [19 x i8] c"%d %d %d %d %d %d\0A\00", align 1

define void @"github.com/goplus/llgo/cl/_testrt/named.init"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/named.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/named.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/named.main"() {
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
  %18 = alloca i64, align 8
  %19 = alloca ptr, align 8
  store ptr null, ptr %19, align 8
  %20 = alloca i64, align 8
  %21 = alloca ptr, align 8
  store ptr null, ptr %21, align 8
  %22 = alloca i64, align 8
  %23 = alloca ptr, align 8
  store ptr null, ptr %23, align 8
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
  %34 = alloca i64, align 8
  %35 = alloca ptr, align 8
  store ptr null, ptr %35, align 8
  %36 = alloca i64, align 8
  %37 = alloca ptr, align 8
  store ptr null, ptr %37, align 8
  %38 = alloca i64, align 8
  %39 = alloca ptr, align 8
  store ptr null, ptr %39, align 8
  %40 = alloca i64, align 8
  %41 = alloca ptr, align 8
  store ptr null, ptr %41, align 8
  %42 = alloca i64, align 8
  %43 = alloca ptr, align 8
  store ptr null, ptr %43, align 8
  %44 = alloca i64, align 8
  %45 = alloca ptr, align 8
  store ptr null, ptr %45, align 8
  %46 = alloca i64, align 8
  %47 = alloca ptr, align 8
  store ptr null, ptr %47, align 8
  %48 = alloca i64, align 8
  %49 = alloca ptr, align 8
  store ptr null, ptr %49, align 8
  %50 = alloca i64, align 8
  %51 = alloca ptr, align 8
  store ptr null, ptr %51, align 8
  %52 = alloca i64, align 8
  %53 = alloca ptr, align 8
  store ptr null, ptr %53, align 8
  %54 = alloca i64, align 8
  %55 = alloca ptr, align 8
  store ptr null, ptr %55, align 8
  %56 = alloca i64, align 8
  %57 = alloca ptr, align 8
  store ptr null, ptr %57, align 8
  %58 = alloca i64, align 8
  %59 = alloca ptr, align 8
  store ptr null, ptr %59, align 8
  %60 = alloca i64, align 8
  %61 = alloca ptr, align 8
  store ptr null, ptr %61, align 8
  %62 = alloca i64, align 8
  %63 = alloca ptr, align 8
  store ptr null, ptr %63, align 8
  %64 = alloca i64, align 8
  %65 = alloca ptr, align 8
  store ptr null, ptr %65, align 8
  %66 = alloca { ptr, ptr }, align 8
  %67 = alloca i64, align 8
  %68 = alloca ptr, align 8
  store ptr null, ptr %68, align 8
  %69 = alloca i64, align 8
  %70 = alloca ptr, align 8
  store ptr null, ptr %70, align 8
  %71 = alloca i64, align 8
  %72 = alloca ptr, align 8
  store ptr null, ptr %72, align 8
  %73 = alloca i64, align 8
  %74 = alloca ptr, align 8
  store ptr null, ptr %74, align 8
  %75 = alloca i64, align 8
  %76 = alloca ptr, align 8
  store ptr null, ptr %76, align 8
  %77 = alloca i64, align 8
  %78 = alloca ptr, align 8
  store ptr null, ptr %78, align 8
  %79 = alloca i64, align 8
  %80 = alloca ptr, align 8
  store ptr null, ptr %80, align 8
  %81 = alloca i64, align 8
  %82 = alloca ptr, align 8
  store ptr null, ptr %82, align 8
  %83 = alloca i64, align 8
  %84 = alloca ptr, align 8
  store ptr null, ptr %84, align 8
  %85 = alloca i64, align 8
  %86 = alloca ptr, align 8
  store ptr null, ptr %86, align 8
  %87 = alloca i64, align 8
  %88 = alloca ptr, align 8
  store ptr null, ptr %88, align 8
  %89 = alloca i64, align 8
  %90 = alloca ptr, align 8
  store ptr null, ptr %90, align 8
  %91 = alloca i64, align 8
  %92 = alloca ptr, align 8
  store ptr null, ptr %92, align 8
  %93 = alloca i64, align 8
  %94 = alloca ptr, align 8
  store ptr null, ptr %94, align 8
  %95 = alloca i64, align 8
  %96 = alloca ptr, align 8
  store ptr null, ptr %96, align 8
  %97 = alloca i64, align 8
  %98 = alloca ptr, align 8
  store ptr null, ptr %98, align 8
  %99 = alloca i64, align 8
  %100 = alloca ptr, align 8
  store ptr null, ptr %100, align 8
  %101 = alloca i64, align 8
  %102 = alloca ptr, align 8
  store ptr null, ptr %102, align 8
  %103 = alloca i64, align 8
  %104 = alloca ptr, align 8
  store ptr null, ptr %104, align 8
  %105 = alloca i64, align 8
  %106 = alloca ptr, align 8
  store ptr null, ptr %106, align 8
  %107 = alloca i64, align 8
  %108 = alloca ptr, align 8
  store ptr null, ptr %108, align 8
  %109 = alloca i64, align 8
  %110 = alloca ptr, align 8
  store ptr null, ptr %110, align 8
  %111 = alloca { ptr, ptr }, align 8
  %112 = alloca i64, align 8
  %113 = alloca ptr, align 8
  store ptr null, ptr %113, align 8
  %114 = alloca i64, align 8
  %115 = alloca ptr, align 8
  store ptr null, ptr %115, align 8
  %116 = alloca i64, align 8
  %117 = alloca ptr, align 8
  store ptr null, ptr %117, align 8
  %118 = alloca i64, align 8
  %119 = alloca ptr, align 8
  store ptr null, ptr %119, align 8
  %120 = alloca i64, align 8
  %121 = alloca ptr, align 8
  store ptr null, ptr %121, align 8
  %122 = alloca { ptr, ptr }, align 8
  %123 = alloca i64, align 8
  %124 = alloca ptr, align 8
  store ptr null, ptr %124, align 8
  %125 = alloca i64, align 8
  %126 = alloca ptr, align 8
  store ptr null, ptr %126, align 8
  %127 = alloca i64, align 8
  %128 = alloca ptr, align 8
  store ptr null, ptr %128, align 8
  %129 = alloca i64, align 8
  %130 = alloca ptr, align 8
  store ptr null, ptr %130, align 8
  %131 = alloca i64, align 8
  %132 = alloca ptr, align 8
  store ptr null, ptr %132, align 8
  %133 = alloca i64, align 8
  %134 = alloca ptr, align 8
  store ptr null, ptr %134, align 8
  %135 = alloca i64, align 8
  %136 = alloca ptr, align 8
  store ptr null, ptr %136, align 8
  %137 = alloca { i64, i64, i64 }, align 8
  %138 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %138, align 8
  %139 = call i64 @runtime.AllocZHidden(i64 8)
  store i64 %139, ptr %0, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %1, i64 %139)
  %140 = call i64 @runtime.AllocZHidden(i64 64)
  store i64 %140, ptr %2, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %3, i64 %140)
  %141 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %141)
  %142 = load i64, ptr %0, align 4
  %143 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %143)
  %144 = load i64, ptr %2, align 4
  %145 = and i64 %144, 72057594037927935
  %146 = lshr i64 %145, 17
  %147 = select i1 false, i64 0, i64 %146
  %148 = shl i64 %145, 39
  %149 = select i1 false, i64 0, i64 %148
  %150 = or i64 %147, %149
  %151 = and i64 %150, 72057594037927935
  %152 = xor i64 %151, 25399393228665167
  %153 = inttoptr i64 %152 to ptr
  %154 = alloca ptr, align 8
  store ptr %153, ptr %154, align 8
  call void @runtime.StoreHiddenPointee(i64 %142, ptr %154, i64 8)
  store ptr null, ptr %154, align 8
  call void @runtime.TouchConservativeSlot(ptr %154, i64 8)
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  call void @runtime.ClobberPointerRegs()
  %155 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %155)
  %156 = load i64, ptr %0, align 4
  %157 = call i64 @runtime.LoadHiddenPointerKey(i64 %156)
  store i64 %157, ptr %4, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %5, i64 %157)
  %158 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %158)
  %159 = load i64, ptr %4, align 4
  %160 = and i64 %159, 72057594037927935
  %161 = lshr i64 %160, 17
  %162 = select i1 false, i64 0, i64 %161
  %163 = shl i64 %160, 39
  %164 = select i1 false, i64 0, i64 %163
  %165 = or i64 %162, %164
  %166 = and i64 %165, 72057594037927935
  %167 = xor i64 %166, 25399393228665167
  %168 = inttoptr i64 %167 to ptr
  %169 = icmp eq ptr %168, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %169)
  %170 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %168, i32 0, i32 4
  %171 = ptrtoint ptr %170 to i64
  %172 = and i64 %171, 72057594037927935
  %173 = xor i64 %172, 25399393228665167
  %174 = shl i64 %173, 17
  %175 = select i1 false, i64 0, i64 %174
  %176 = lshr i64 %173, 39
  %177 = select i1 false, i64 0, i64 %176
  %178 = or i64 %175, %177
  %179 = and i64 %178, 72057594037927935
  %180 = or i64 %179, -6557241057451442176
  store i64 %180, ptr %6, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %7, i64 %180)
  call void @runtime.ClobberPointerRegs()
  %181 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %181)
  %182 = load i64, ptr %6, align 4
  %183 = alloca i64, align 8
  store i64 100, ptr %183, align 4
  call void @runtime.StoreHiddenPointee(i64 %182, ptr %183, i64 8)
  store i64 0, ptr %183, align 4
  store i64 0, ptr %4, align 4
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  store ptr null, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  store i64 0, ptr %6, align 4
  call void @runtime.TouchConservativeSlot(ptr %6, i64 8)
  store ptr null, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 8)
  call void @runtime.ClobberPointerRegs()
  %184 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %184)
  %185 = load i64, ptr %0, align 4
  %186 = call i64 @runtime.LoadHiddenPointerKey(i64 %185)
  store i64 %186, ptr %8, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %9, i64 %186)
  %187 = call i64 @runtime.AllocZHidden(i64 64)
  store i64 %187, ptr %10, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %11, i64 %187)
  %188 = icmp eq ptr %8, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %188)
  %189 = load i64, ptr %8, align 4
  %190 = and i64 %189, 72057594037927935
  %191 = lshr i64 %190, 17
  %192 = select i1 false, i64 0, i64 %191
  %193 = shl i64 %190, 39
  %194 = select i1 false, i64 0, i64 %193
  %195 = or i64 %192, %194
  %196 = and i64 %195, 72057594037927935
  %197 = xor i64 %196, 25399393228665167
  %198 = inttoptr i64 %197 to ptr
  %199 = icmp eq ptr %198, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %199)
  %200 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %198, i32 0, i32 0
  %201 = ptrtoint ptr %200 to i64
  %202 = and i64 %201, 72057594037927935
  %203 = xor i64 %202, 25399393228665167
  %204 = shl i64 %203, 17
  %205 = select i1 false, i64 0, i64 %204
  %206 = lshr i64 %203, 39
  %207 = select i1 false, i64 0, i64 %206
  %208 = or i64 %205, %207
  %209 = and i64 %208, 72057594037927935
  %210 = or i64 %209, -6557241057451442176
  store i64 %210, ptr %12, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %13, i64 %210)
  call void @runtime.ClobberPointerRegs()
  %211 = icmp eq ptr %12, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %211)
  %212 = load i64, ptr %12, align 4
  %213 = icmp eq ptr %10, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %213)
  %214 = load i64, ptr %10, align 4
  %215 = and i64 %214, 72057594037927935
  %216 = lshr i64 %215, 17
  %217 = select i1 false, i64 0, i64 %216
  %218 = shl i64 %215, 39
  %219 = select i1 false, i64 0, i64 %218
  %220 = or i64 %217, %219
  %221 = and i64 %220, 72057594037927935
  %222 = xor i64 %221, 25399393228665167
  %223 = inttoptr i64 %222 to ptr
  %224 = alloca ptr, align 8
  store ptr %223, ptr %224, align 8
  call void @runtime.StoreHiddenPointee(i64 %212, ptr %224, i64 8)
  store ptr null, ptr %224, align 8
  call void @runtime.TouchConservativeSlot(ptr %224, i64 8)
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
  call void @runtime.ClobberPointerRegs()
  %225 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %225)
  %226 = load i64, ptr %0, align 4
  %227 = call i64 @runtime.LoadHiddenPointerKey(i64 %226)
  store i64 %227, ptr %14, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %15, i64 %227)
  %228 = icmp eq ptr %14, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %228)
  %229 = load i64, ptr %14, align 4
  %230 = and i64 %229, 72057594037927935
  %231 = lshr i64 %230, 17
  %232 = select i1 false, i64 0, i64 %231
  %233 = shl i64 %230, 39
  %234 = select i1 false, i64 0, i64 %233
  %235 = or i64 %232, %234
  %236 = and i64 %235, 72057594037927935
  %237 = xor i64 %236, 25399393228665167
  %238 = inttoptr i64 %237 to ptr
  %239 = icmp eq ptr %238, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %239)
  %240 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %238, i32 0, i32 0
  %241 = ptrtoint ptr %240 to i64
  %242 = and i64 %241, 72057594037927935
  %243 = xor i64 %242, 25399393228665167
  %244 = shl i64 %243, 17
  %245 = select i1 false, i64 0, i64 %244
  %246 = lshr i64 %243, 39
  %247 = select i1 false, i64 0, i64 %246
  %248 = or i64 %245, %247
  %249 = and i64 %248, 72057594037927935
  %250 = or i64 %249, -6557241057451442176
  store i64 %250, ptr %16, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %17, i64 %250)
  call void @runtime.ClobberPointerRegs()
  %251 = icmp eq ptr %16, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %251)
  %252 = load i64, ptr %16, align 4
  %253 = call i64 @runtime.LoadHiddenPointerKey(i64 %252)
  store i64 %253, ptr %18, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %19, i64 %253)
  store i64 0, ptr %14, align 4
  call void @runtime.TouchConservativeSlot(ptr %14, i64 8)
  store ptr null, ptr %15, align 8
  call void @runtime.TouchConservativeSlot(ptr %15, i64 8)
  store i64 0, ptr %16, align 4
  call void @runtime.TouchConservativeSlot(ptr %16, i64 8)
  store ptr null, ptr %17, align 8
  call void @runtime.TouchConservativeSlot(ptr %17, i64 8)
  call void @runtime.ClobberPointerRegs()
  %254 = icmp eq ptr %18, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %254)
  %255 = load i64, ptr %18, align 4
  %256 = and i64 %255, 72057594037927935
  %257 = lshr i64 %256, 17
  %258 = select i1 false, i64 0, i64 %257
  %259 = shl i64 %256, 39
  %260 = select i1 false, i64 0, i64 %259
  %261 = or i64 %258, %260
  %262 = and i64 %261, 72057594037927935
  %263 = xor i64 %262, 25399393228665167
  %264 = inttoptr i64 %263 to ptr
  %265 = icmp eq ptr %264, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %265)
  %266 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %264, i32 0, i32 4
  %267 = ptrtoint ptr %266 to i64
  %268 = and i64 %267, 72057594037927935
  %269 = xor i64 %268, 25399393228665167
  %270 = shl i64 %269, 17
  %271 = select i1 false, i64 0, i64 %270
  %272 = lshr i64 %269, 39
  %273 = select i1 false, i64 0, i64 %272
  %274 = or i64 %271, %273
  %275 = and i64 %274, 72057594037927935
  %276 = or i64 %275, -6557241057451442176
  store i64 %276, ptr %20, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %21, i64 %276)
  call void @runtime.ClobberPointerRegs()
  %277 = icmp eq ptr %20, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %277)
  %278 = load i64, ptr %20, align 4
  %279 = alloca i64, align 8
  store i64 200, ptr %279, align 4
  call void @runtime.StoreHiddenPointee(i64 %278, ptr %279, i64 8)
  store i64 0, ptr %279, align 4
  store i64 0, ptr %18, align 4
  call void @runtime.TouchConservativeSlot(ptr %18, i64 8)
  store ptr null, ptr %19, align 8
  call void @runtime.TouchConservativeSlot(ptr %19, i64 8)
  store i64 0, ptr %20, align 4
  call void @runtime.TouchConservativeSlot(ptr %20, i64 8)
  store ptr null, ptr %21, align 8
  call void @runtime.TouchConservativeSlot(ptr %21, i64 8)
  call void @runtime.ClobberPointerRegs()
  %280 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %280)
  %281 = load i64, ptr %0, align 4
  %282 = call i64 @runtime.LoadHiddenPointerKey(i64 %281)
  store i64 %282, ptr %22, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %23, i64 %282)
  %283 = call i64 @runtime.AllocZHidden(i64 16)
  store i64 %283, ptr %24, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %25, i64 %283)
  %284 = icmp eq ptr %22, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %284)
  %285 = load i64, ptr %22, align 4
  %286 = and i64 %285, 72057594037927935
  %287 = lshr i64 %286, 17
  %288 = select i1 false, i64 0, i64 %287
  %289 = shl i64 %286, 39
  %290 = select i1 false, i64 0, i64 %289
  %291 = or i64 %288, %290
  %292 = and i64 %291, 72057594037927935
  %293 = xor i64 %292, 25399393228665167
  %294 = inttoptr i64 %293 to ptr
  %295 = icmp eq ptr %294, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %295)
  %296 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %294, i32 0, i32 2
  %297 = ptrtoint ptr %296 to i64
  %298 = and i64 %297, 72057594037927935
  %299 = xor i64 %298, 25399393228665167
  %300 = shl i64 %299, 17
  %301 = select i1 false, i64 0, i64 %300
  %302 = lshr i64 %299, 39
  %303 = select i1 false, i64 0, i64 %302
  %304 = or i64 %301, %303
  %305 = and i64 %304, 72057594037927935
  %306 = or i64 %305, -6557241057451442176
  store i64 %306, ptr %26, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %27, i64 %306)
  call void @runtime.ClobberPointerRegs()
  %307 = icmp eq ptr %26, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %307)
  %308 = load i64, ptr %26, align 4
  %309 = icmp eq ptr %24, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %309)
  %310 = load i64, ptr %24, align 4
  %311 = and i64 %310, 72057594037927935
  %312 = lshr i64 %311, 17
  %313 = select i1 false, i64 0, i64 %312
  %314 = shl i64 %311, 39
  %315 = select i1 false, i64 0, i64 %314
  %316 = or i64 %313, %315
  %317 = and i64 %316, 72057594037927935
  %318 = xor i64 %317, 25399393228665167
  %319 = inttoptr i64 %318 to ptr
  %320 = alloca ptr, align 8
  store ptr %319, ptr %320, align 8
  call void @runtime.StoreHiddenPointee(i64 %308, ptr %320, i64 8)
  store ptr null, ptr %320, align 8
  call void @runtime.TouchConservativeSlot(ptr %320, i64 8)
  store i64 0, ptr %22, align 4
  call void @runtime.TouchConservativeSlot(ptr %22, i64 8)
  store ptr null, ptr %23, align 8
  call void @runtime.TouchConservativeSlot(ptr %23, i64 8)
  store i64 0, ptr %24, align 4
  call void @runtime.TouchConservativeSlot(ptr %24, i64 8)
  store ptr null, ptr %25, align 8
  call void @runtime.TouchConservativeSlot(ptr %25, i64 8)
  store i64 0, ptr %26, align 4
  call void @runtime.TouchConservativeSlot(ptr %26, i64 8)
  store ptr null, ptr %27, align 8
  call void @runtime.TouchConservativeSlot(ptr %27, i64 8)
  call void @runtime.ClobberPointerRegs()
  %321 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %321)
  %322 = load i64, ptr %0, align 4
  %323 = call i64 @runtime.LoadHiddenPointerKey(i64 %322)
  store i64 %323, ptr %28, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %29, i64 %323)
  %324 = icmp eq ptr %28, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %324)
  %325 = load i64, ptr %28, align 4
  %326 = and i64 %325, 72057594037927935
  %327 = lshr i64 %326, 17
  %328 = select i1 false, i64 0, i64 %327
  %329 = shl i64 %326, 39
  %330 = select i1 false, i64 0, i64 %329
  %331 = or i64 %328, %330
  %332 = and i64 %331, 72057594037927935
  %333 = xor i64 %332, 25399393228665167
  %334 = inttoptr i64 %333 to ptr
  %335 = icmp eq ptr %334, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %335)
  %336 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %334, i32 0, i32 2
  %337 = ptrtoint ptr %336 to i64
  %338 = and i64 %337, 72057594037927935
  %339 = xor i64 %338, 25399393228665167
  %340 = shl i64 %339, 17
  %341 = select i1 false, i64 0, i64 %340
  %342 = lshr i64 %339, 39
  %343 = select i1 false, i64 0, i64 %342
  %344 = or i64 %341, %343
  %345 = and i64 %344, 72057594037927935
  %346 = or i64 %345, -6557241057451442176
  store i64 %346, ptr %30, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %31, i64 %346)
  call void @runtime.ClobberPointerRegs()
  %347 = icmp eq ptr %30, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %347)
  %348 = load i64, ptr %30, align 4
  %349 = call i64 @runtime.LoadHiddenPointerKey(i64 %348)
  store i64 %349, ptr %32, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %33, i64 %349)
  store i64 0, ptr %28, align 4
  call void @runtime.TouchConservativeSlot(ptr %28, i64 8)
  store ptr null, ptr %29, align 8
  call void @runtime.TouchConservativeSlot(ptr %29, i64 8)
  store i64 0, ptr %30, align 4
  call void @runtime.TouchConservativeSlot(ptr %30, i64 8)
  store ptr null, ptr %31, align 8
  call void @runtime.TouchConservativeSlot(ptr %31, i64 8)
  call void @runtime.ClobberPointerRegs()
  %350 = call i64 @runtime.AllocZHidden(i64 64)
  store i64 %350, ptr %34, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %35, i64 %350)
  %351 = icmp eq ptr %32, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %351)
  %352 = load i64, ptr %32, align 4
  %353 = and i64 %352, 72057594037927935
  %354 = lshr i64 %353, 17
  %355 = select i1 false, i64 0, i64 %354
  %356 = shl i64 %353, 39
  %357 = select i1 false, i64 0, i64 %356
  %358 = or i64 %355, %357
  %359 = and i64 %358, 72057594037927935
  %360 = xor i64 %359, 25399393228665167
  %361 = inttoptr i64 %360 to ptr
  %362 = icmp eq ptr %361, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %362)
  %363 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mSpanList", ptr %361, i32 0, i32 1
  %364 = ptrtoint ptr %363 to i64
  %365 = and i64 %364, 72057594037927935
  %366 = xor i64 %365, 25399393228665167
  %367 = shl i64 %366, 17
  %368 = select i1 false, i64 0, i64 %367
  %369 = lshr i64 %366, 39
  %370 = select i1 false, i64 0, i64 %369
  %371 = or i64 %368, %370
  %372 = and i64 %371, 72057594037927935
  %373 = or i64 %372, -6557241057451442176
  store i64 %373, ptr %36, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %37, i64 %373)
  call void @runtime.ClobberPointerRegs()
  %374 = icmp eq ptr %36, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %374)
  %375 = load i64, ptr %36, align 4
  %376 = icmp eq ptr %34, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %376)
  %377 = load i64, ptr %34, align 4
  %378 = and i64 %377, 72057594037927935
  %379 = lshr i64 %378, 17
  %380 = select i1 false, i64 0, i64 %379
  %381 = shl i64 %378, 39
  %382 = select i1 false, i64 0, i64 %381
  %383 = or i64 %380, %382
  %384 = and i64 %383, 72057594037927935
  %385 = xor i64 %384, 25399393228665167
  %386 = inttoptr i64 %385 to ptr
  %387 = alloca ptr, align 8
  store ptr %386, ptr %387, align 8
  call void @runtime.StoreHiddenPointee(i64 %375, ptr %387, i64 8)
  store ptr null, ptr %387, align 8
  call void @runtime.TouchConservativeSlot(ptr %387, i64 8)
  store i64 0, ptr %32, align 4
  call void @runtime.TouchConservativeSlot(ptr %32, i64 8)
  store ptr null, ptr %33, align 8
  call void @runtime.TouchConservativeSlot(ptr %33, i64 8)
  store i64 0, ptr %34, align 4
  call void @runtime.TouchConservativeSlot(ptr %34, i64 8)
  store ptr null, ptr %35, align 8
  call void @runtime.TouchConservativeSlot(ptr %35, i64 8)
  store i64 0, ptr %36, align 4
  call void @runtime.TouchConservativeSlot(ptr %36, i64 8)
  store ptr null, ptr %37, align 8
  call void @runtime.TouchConservativeSlot(ptr %37, i64 8)
  call void @runtime.ClobberPointerRegs()
  %388 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %388)
  %389 = load i64, ptr %0, align 4
  %390 = call i64 @runtime.LoadHiddenPointerKey(i64 %389)
  store i64 %390, ptr %38, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %39, i64 %390)
  %391 = icmp eq ptr %38, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %391)
  %392 = load i64, ptr %38, align 4
  %393 = and i64 %392, 72057594037927935
  %394 = lshr i64 %393, 17
  %395 = select i1 false, i64 0, i64 %394
  %396 = shl i64 %393, 39
  %397 = select i1 false, i64 0, i64 %396
  %398 = or i64 %395, %397
  %399 = and i64 %398, 72057594037927935
  %400 = xor i64 %399, 25399393228665167
  %401 = inttoptr i64 %400 to ptr
  %402 = icmp eq ptr %401, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %402)
  %403 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %401, i32 0, i32 2
  %404 = ptrtoint ptr %403 to i64
  %405 = and i64 %404, 72057594037927935
  %406 = xor i64 %405, 25399393228665167
  %407 = shl i64 %406, 17
  %408 = select i1 false, i64 0, i64 %407
  %409 = lshr i64 %406, 39
  %410 = select i1 false, i64 0, i64 %409
  %411 = or i64 %408, %410
  %412 = and i64 %411, 72057594037927935
  %413 = or i64 %412, -6557241057451442176
  store i64 %413, ptr %40, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %41, i64 %413)
  call void @runtime.ClobberPointerRegs()
  %414 = icmp eq ptr %40, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %414)
  %415 = load i64, ptr %40, align 4
  %416 = call i64 @runtime.LoadHiddenPointerKey(i64 %415)
  store i64 %416, ptr %42, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %43, i64 %416)
  store i64 0, ptr %38, align 4
  call void @runtime.TouchConservativeSlot(ptr %38, i64 8)
  store ptr null, ptr %39, align 8
  call void @runtime.TouchConservativeSlot(ptr %39, i64 8)
  store i64 0, ptr %40, align 4
  call void @runtime.TouchConservativeSlot(ptr %40, i64 8)
  store ptr null, ptr %41, align 8
  call void @runtime.TouchConservativeSlot(ptr %41, i64 8)
  call void @runtime.ClobberPointerRegs()
  %417 = icmp eq ptr %42, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %417)
  %418 = load i64, ptr %42, align 4
  %419 = and i64 %418, 72057594037927935
  %420 = lshr i64 %419, 17
  %421 = select i1 false, i64 0, i64 %420
  %422 = shl i64 %419, 39
  %423 = select i1 false, i64 0, i64 %422
  %424 = or i64 %421, %423
  %425 = and i64 %424, 72057594037927935
  %426 = xor i64 %425, 25399393228665167
  %427 = inttoptr i64 %426 to ptr
  %428 = icmp eq ptr %427, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %428)
  %429 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mSpanList", ptr %427, i32 0, i32 1
  %430 = ptrtoint ptr %429 to i64
  %431 = and i64 %430, 72057594037927935
  %432 = xor i64 %431, 25399393228665167
  %433 = shl i64 %432, 17
  %434 = select i1 false, i64 0, i64 %433
  %435 = lshr i64 %432, 39
  %436 = select i1 false, i64 0, i64 %435
  %437 = or i64 %434, %436
  %438 = and i64 %437, 72057594037927935
  %439 = or i64 %438, -6557241057451442176
  store i64 %439, ptr %44, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %45, i64 %439)
  call void @runtime.ClobberPointerRegs()
  %440 = icmp eq ptr %44, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %440)
  %441 = load i64, ptr %44, align 4
  %442 = call i64 @runtime.LoadHiddenPointerKey(i64 %441)
  store i64 %442, ptr %46, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %47, i64 %442)
  store i64 0, ptr %42, align 4
  call void @runtime.TouchConservativeSlot(ptr %42, i64 8)
  store ptr null, ptr %43, align 8
  call void @runtime.TouchConservativeSlot(ptr %43, i64 8)
  store i64 0, ptr %44, align 4
  call void @runtime.TouchConservativeSlot(ptr %44, i64 8)
  store ptr null, ptr %45, align 8
  call void @runtime.TouchConservativeSlot(ptr %45, i64 8)
  call void @runtime.ClobberPointerRegs()
  %443 = icmp eq ptr %46, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %443)
  %444 = load i64, ptr %46, align 4
  %445 = and i64 %444, 72057594037927935
  %446 = lshr i64 %445, 17
  %447 = select i1 false, i64 0, i64 %446
  %448 = shl i64 %445, 39
  %449 = select i1 false, i64 0, i64 %448
  %450 = or i64 %447, %449
  %451 = and i64 %450, 72057594037927935
  %452 = xor i64 %451, 25399393228665167
  %453 = inttoptr i64 %452 to ptr
  %454 = icmp eq ptr %453, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %454)
  %455 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %453, i32 0, i32 4
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
  store i64 %465, ptr %48, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %49, i64 %465)
  call void @runtime.ClobberPointerRegs()
  %466 = icmp eq ptr %48, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %466)
  %467 = load i64, ptr %48, align 4
  %468 = alloca i64, align 8
  store i64 300, ptr %468, align 4
  call void @runtime.StoreHiddenPointee(i64 %467, ptr %468, i64 8)
  store i64 0, ptr %468, align 4
  store i64 0, ptr %46, align 4
  call void @runtime.TouchConservativeSlot(ptr %46, i64 8)
  store ptr null, ptr %47, align 8
  call void @runtime.TouchConservativeSlot(ptr %47, i64 8)
  store i64 0, ptr %48, align 4
  call void @runtime.TouchConservativeSlot(ptr %48, i64 8)
  store ptr null, ptr %49, align 8
  call void @runtime.TouchConservativeSlot(ptr %49, i64 8)
  call void @runtime.ClobberPointerRegs()
  %469 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %469)
  %470 = load i64, ptr %0, align 4
  %471 = call i64 @runtime.LoadHiddenPointerKey(i64 %470)
  store i64 %471, ptr %50, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %51, i64 %471)
  %472 = icmp eq ptr %50, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %472)
  %473 = load i64, ptr %50, align 4
  %474 = and i64 %473, 72057594037927935
  %475 = lshr i64 %474, 17
  %476 = select i1 false, i64 0, i64 %475
  %477 = shl i64 %474, 39
  %478 = select i1 false, i64 0, i64 %477
  %479 = or i64 %476, %478
  %480 = and i64 %479, 72057594037927935
  %481 = xor i64 %480, 25399393228665167
  %482 = inttoptr i64 %481 to ptr
  %483 = icmp eq ptr %482, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %483)
  %484 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %482, i32 0, i32 3
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
  store i64 %494, ptr %52, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %53, i64 %494)
  call void @runtime.ClobberPointerRegs()
  %495 = icmp eq ptr %52, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %495)
  %496 = load i64, ptr %52, align 4
  %497 = and i64 %496, 72057594037927935
  %498 = lshr i64 %497, 17
  %499 = select i1 false, i64 0, i64 %498
  %500 = shl i64 %497, 39
  %501 = select i1 false, i64 0, i64 %500
  %502 = or i64 %499, %501
  %503 = and i64 %502, 72057594037927935
  %504 = xor i64 %503, 25399393228665167
  %505 = inttoptr i64 %504 to ptr
  %506 = icmp eq ptr %505, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %506)
  %507 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.minfo", ptr %505, i32 0, i32 1
  %508 = ptrtoint ptr %507 to i64
  %509 = and i64 %508, 72057594037927935
  %510 = xor i64 %509, 25399393228665167
  %511 = shl i64 %510, 17
  %512 = select i1 false, i64 0, i64 %511
  %513 = lshr i64 %510, 39
  %514 = select i1 false, i64 0, i64 %513
  %515 = or i64 %512, %514
  %516 = and i64 %515, 72057594037927935
  %517 = or i64 %516, -6557241057451442176
  store i64 %517, ptr %54, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %55, i64 %517)
  call void @runtime.ClobberPointerRegs()
  %518 = icmp eq ptr %54, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %518)
  %519 = load i64, ptr %54, align 4
  %520 = alloca i64, align 8
  store i64 10, ptr %520, align 4
  call void @runtime.StoreHiddenPointee(i64 %519, ptr %520, i64 8)
  store i64 0, ptr %520, align 4
  store i64 0, ptr %50, align 4
  call void @runtime.TouchConservativeSlot(ptr %50, i64 8)
  store ptr null, ptr %51, align 8
  call void @runtime.TouchConservativeSlot(ptr %51, i64 8)
  store i64 0, ptr %52, align 4
  call void @runtime.TouchConservativeSlot(ptr %52, i64 8)
  store ptr null, ptr %53, align 8
  call void @runtime.TouchConservativeSlot(ptr %53, i64 8)
  store i64 0, ptr %54, align 4
  call void @runtime.TouchConservativeSlot(ptr %54, i64 8)
  store ptr null, ptr %55, align 8
  call void @runtime.TouchConservativeSlot(ptr %55, i64 8)
  call void @runtime.ClobberPointerRegs()
  %521 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %521)
  %522 = load i64, ptr %0, align 4
  %523 = call i64 @runtime.LoadHiddenPointerKey(i64 %522)
  store i64 %523, ptr %56, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %57, i64 %523)
  %524 = icmp eq ptr %56, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %524)
  %525 = load i64, ptr %56, align 4
  %526 = and i64 %525, 72057594037927935
  %527 = lshr i64 %526, 17
  %528 = select i1 false, i64 0, i64 %527
  %529 = shl i64 %526, 39
  %530 = select i1 false, i64 0, i64 %529
  %531 = or i64 %528, %530
  %532 = and i64 %531, 72057594037927935
  %533 = xor i64 %532, 25399393228665167
  %534 = inttoptr i64 %533 to ptr
  %535 = icmp eq ptr %534, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %535)
  %536 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %534, i32 0, i32 3
  %537 = ptrtoint ptr %536 to i64
  %538 = and i64 %537, 72057594037927935
  %539 = xor i64 %538, 25399393228665167
  %540 = shl i64 %539, 17
  %541 = select i1 false, i64 0, i64 %540
  %542 = lshr i64 %539, 39
  %543 = select i1 false, i64 0, i64 %542
  %544 = or i64 %541, %543
  %545 = and i64 %544, 72057594037927935
  %546 = or i64 %545, -6557241057451442176
  store i64 %546, ptr %58, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %59, i64 %546)
  call void @runtime.ClobberPointerRegs()
  %547 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %547)
  %548 = load i64, ptr %0, align 4
  %549 = call i64 @runtime.LoadHiddenPointerKey(i64 %548)
  store i64 %549, ptr %60, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %61, i64 %549)
  %550 = icmp eq ptr %58, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %550)
  %551 = load i64, ptr %58, align 4
  %552 = and i64 %551, 72057594037927935
  %553 = lshr i64 %552, 17
  %554 = select i1 false, i64 0, i64 %553
  %555 = shl i64 %552, 39
  %556 = select i1 false, i64 0, i64 %555
  %557 = or i64 %554, %556
  %558 = and i64 %557, 72057594037927935
  %559 = xor i64 %558, 25399393228665167
  %560 = inttoptr i64 %559 to ptr
  %561 = icmp eq ptr %560, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %561)
  %562 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.minfo", ptr %560, i32 0, i32 0
  %563 = ptrtoint ptr %562 to i64
  %564 = and i64 %563, 72057594037927935
  %565 = xor i64 %564, 25399393228665167
  %566 = shl i64 %565, 17
  %567 = select i1 false, i64 0, i64 %566
  %568 = lshr i64 %565, 39
  %569 = select i1 false, i64 0, i64 %568
  %570 = or i64 %567, %569
  %571 = and i64 %570, 72057594037927935
  %572 = or i64 %571, -6557241057451442176
  store i64 %572, ptr %62, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %63, i64 %572)
  call void @runtime.ClobberPointerRegs()
  %573 = icmp eq ptr %62, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %573)
  %574 = load i64, ptr %62, align 4
  %575 = icmp eq ptr %60, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %575)
  %576 = load i64, ptr %60, align 4
  %577 = and i64 %576, 72057594037927935
  %578 = lshr i64 %577, 17
  %579 = select i1 false, i64 0, i64 %578
  %580 = shl i64 %577, 39
  %581 = select i1 false, i64 0, i64 %580
  %582 = or i64 %579, %581
  %583 = and i64 %582, 72057594037927935
  %584 = xor i64 %583, 25399393228665167
  %585 = inttoptr i64 %584 to ptr
  %586 = alloca ptr, align 8
  store ptr %585, ptr %586, align 8
  call void @runtime.StoreHiddenPointee(i64 %574, ptr %586, i64 8)
  store ptr null, ptr %586, align 8
  call void @runtime.TouchConservativeSlot(ptr %586, i64 8)
  store i64 0, ptr %56, align 4
  call void @runtime.TouchConservativeSlot(ptr %56, i64 8)
  store ptr null, ptr %57, align 8
  call void @runtime.TouchConservativeSlot(ptr %57, i64 8)
  store i64 0, ptr %58, align 4
  call void @runtime.TouchConservativeSlot(ptr %58, i64 8)
  store ptr null, ptr %59, align 8
  call void @runtime.TouchConservativeSlot(ptr %59, i64 8)
  store i64 0, ptr %60, align 4
  call void @runtime.TouchConservativeSlot(ptr %60, i64 8)
  store ptr null, ptr %61, align 8
  call void @runtime.TouchConservativeSlot(ptr %61, i64 8)
  store i64 0, ptr %62, align 4
  call void @runtime.TouchConservativeSlot(ptr %62, i64 8)
  store ptr null, ptr %63, align 8
  call void @runtime.TouchConservativeSlot(ptr %63, i64 8)
  call void @runtime.ClobberPointerRegs()
  %587 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %587)
  %588 = load i64, ptr %0, align 4
  %589 = call i64 @runtime.LoadHiddenPointerKey(i64 %588)
  store i64 %589, ptr %64, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %65, i64 %589)
  %590 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %590)
  %591 = load i64, ptr %0, align 4
  %592 = and i64 %591, 72057594037927935
  %593 = lshr i64 %592, 17
  %594 = select i1 false, i64 0, i64 %593
  %595 = shl i64 %592, 39
  %596 = select i1 false, i64 0, i64 %595
  %597 = or i64 %594, %596
  %598 = and i64 %597, 72057594037927935
  %599 = xor i64 %598, 25399393228665167
  %600 = inttoptr i64 %599 to ptr
  %601 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %602 = getelementptr inbounds { ptr }, ptr %601, i32 0, i32 0
  store ptr %600, ptr %602, align 8
  %603 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testrt/named.main$1", ptr undef }, ptr %601, 1
  store { ptr, ptr } %603, ptr %66, align 8
  %604 = icmp eq ptr %64, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %604)
  %605 = load i64, ptr %64, align 4
  %606 = and i64 %605, 72057594037927935
  %607 = lshr i64 %606, 17
  %608 = select i1 false, i64 0, i64 %607
  %609 = shl i64 %606, 39
  %610 = select i1 false, i64 0, i64 %609
  %611 = or i64 %608, %610
  %612 = and i64 %611, 72057594037927935
  %613 = xor i64 %612, 25399393228665167
  %614 = inttoptr i64 %613 to ptr
  %615 = icmp eq ptr %614, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %615)
  %616 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %614, i32 0, i32 5
  %617 = ptrtoint ptr %616 to i64
  %618 = and i64 %617, 72057594037927935
  %619 = xor i64 %618, 25399393228665167
  %620 = shl i64 %619, 17
  %621 = select i1 false, i64 0, i64 %620
  %622 = lshr i64 %619, 39
  %623 = select i1 false, i64 0, i64 %622
  %624 = or i64 %621, %623
  %625 = and i64 %624, 72057594037927935
  %626 = or i64 %625, -6557241057451442176
  store i64 %626, ptr %67, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %68, i64 %626)
  call void @runtime.ClobberPointerRegs()
  %627 = icmp eq ptr %67, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %627)
  %628 = load i64, ptr %67, align 4
  %629 = icmp eq ptr %66, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %629)
  %630 = load { ptr, ptr }, ptr %66, align 8
  %631 = alloca { ptr, ptr }, align 8
  store { ptr, ptr } %630, ptr %631, align 8
  call void @runtime.StoreHiddenPointee(i64 %628, ptr %631, i64 16)
  store { ptr, ptr } zeroinitializer, ptr %631, align 8
  call void @runtime.TouchConservativeSlot(ptr %631, i64 16)
  store i64 0, ptr %64, align 4
  call void @runtime.TouchConservativeSlot(ptr %64, i64 8)
  store ptr null, ptr %65, align 8
  call void @runtime.TouchConservativeSlot(ptr %65, i64 8)
  store { ptr, ptr } zeroinitializer, ptr %66, align 8
  call void @runtime.TouchConservativeSlot(ptr %66, i64 16)
  store i64 0, ptr %67, align 4
  call void @runtime.TouchConservativeSlot(ptr %67, i64 8)
  store ptr null, ptr %68, align 8
  call void @runtime.TouchConservativeSlot(ptr %68, i64 8)
  call void @runtime.ClobberPointerRegs()
  %632 = and i64 ptrtoint (ptr @0 to i64), 72057594037927935
  %633 = xor i64 %632, 25399393228665167
  %634 = shl i64 %633, 17
  %635 = select i1 false, i64 0, i64 %634
  %636 = lshr i64 %633, 39
  %637 = select i1 false, i64 0, i64 %636
  %638 = or i64 %635, %637
  %639 = and i64 %638, 72057594037927935
  %640 = or i64 %639, -6557241057451442176
  store i64 %640, ptr %69, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %70, i64 %640)
  call void @runtime.ClobberPointerRegs()
  %641 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %641)
  %642 = load i64, ptr %0, align 4
  %643 = call i64 @runtime.LoadHiddenPointerKey(i64 %642)
  store i64 %643, ptr %71, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %72, i64 %643)
  %644 = icmp eq ptr %71, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %644)
  %645 = load i64, ptr %71, align 4
  %646 = and i64 %645, 72057594037927935
  %647 = lshr i64 %646, 17
  %648 = select i1 false, i64 0, i64 %647
  %649 = shl i64 %646, 39
  %650 = select i1 false, i64 0, i64 %649
  %651 = or i64 %648, %650
  %652 = and i64 %651, 72057594037927935
  %653 = xor i64 %652, 25399393228665167
  %654 = inttoptr i64 %653 to ptr
  %655 = icmp eq ptr %654, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %655)
  %656 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %654, i32 0, i32 0
  %657 = ptrtoint ptr %656 to i64
  %658 = and i64 %657, 72057594037927935
  %659 = xor i64 %658, 25399393228665167
  %660 = shl i64 %659, 17
  %661 = select i1 false, i64 0, i64 %660
  %662 = lshr i64 %659, 39
  %663 = select i1 false, i64 0, i64 %662
  %664 = or i64 %661, %663
  %665 = and i64 %664, 72057594037927935
  %666 = or i64 %665, -6557241057451442176
  store i64 %666, ptr %73, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %74, i64 %666)
  call void @runtime.ClobberPointerRegs()
  %667 = icmp eq ptr %73, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %667)
  %668 = load i64, ptr %73, align 4
  %669 = call i64 @runtime.LoadHiddenPointerKey(i64 %668)
  store i64 %669, ptr %75, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %76, i64 %669)
  store i64 0, ptr %71, align 4
  call void @runtime.TouchConservativeSlot(ptr %71, i64 8)
  store ptr null, ptr %72, align 8
  call void @runtime.TouchConservativeSlot(ptr %72, i64 8)
  store i64 0, ptr %73, align 4
  call void @runtime.TouchConservativeSlot(ptr %73, i64 8)
  store ptr null, ptr %74, align 8
  call void @runtime.TouchConservativeSlot(ptr %74, i64 8)
  call void @runtime.ClobberPointerRegs()
  %670 = icmp eq ptr %75, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %670)
  %671 = load i64, ptr %75, align 4
  %672 = and i64 %671, 72057594037927935
  %673 = lshr i64 %672, 17
  %674 = select i1 false, i64 0, i64 %673
  %675 = shl i64 %672, 39
  %676 = select i1 false, i64 0, i64 %675
  %677 = or i64 %674, %676
  %678 = and i64 %677, 72057594037927935
  %679 = xor i64 %678, 25399393228665167
  %680 = inttoptr i64 %679 to ptr
  %681 = icmp eq ptr %680, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %681)
  %682 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %680, i32 0, i32 4
  %683 = ptrtoint ptr %682 to i64
  %684 = and i64 %683, 72057594037927935
  %685 = xor i64 %684, 25399393228665167
  %686 = shl i64 %685, 17
  %687 = select i1 false, i64 0, i64 %686
  %688 = lshr i64 %685, 39
  %689 = select i1 false, i64 0, i64 %688
  %690 = or i64 %687, %689
  %691 = and i64 %690, 72057594037927935
  %692 = or i64 %691, -6557241057451442176
  store i64 %692, ptr %77, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %78, i64 %692)
  call void @runtime.ClobberPointerRegs()
  %693 = icmp eq ptr %77, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %693)
  %694 = load i64, ptr %77, align 4
  %695 = alloca i64, align 8
  call void @runtime.LoadHiddenPointee(ptr %695, i64 %694, i64 8)
  %696 = icmp eq ptr %695, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %696)
  %697 = load i64, ptr %695, align 4
  store i64 0, ptr %695, align 4
  store i64 0, ptr %75, align 4
  call void @runtime.TouchConservativeSlot(ptr %75, i64 8)
  store ptr null, ptr %76, align 8
  call void @runtime.TouchConservativeSlot(ptr %76, i64 8)
  call void @runtime.ClobberPointerRegs()
  %698 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %698)
  %699 = load i64, ptr %0, align 4
  %700 = call i64 @runtime.LoadHiddenPointerKey(i64 %699)
  store i64 %700, ptr %79, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %80, i64 %700)
  %701 = icmp eq ptr %79, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %701)
  %702 = load i64, ptr %79, align 4
  %703 = and i64 %702, 72057594037927935
  %704 = lshr i64 %703, 17
  %705 = select i1 false, i64 0, i64 %704
  %706 = shl i64 %703, 39
  %707 = select i1 false, i64 0, i64 %706
  %708 = or i64 %705, %707
  %709 = and i64 %708, 72057594037927935
  %710 = xor i64 %709, 25399393228665167
  %711 = inttoptr i64 %710 to ptr
  %712 = icmp eq ptr %711, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %712)
  %713 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %711, i32 0, i32 2
  %714 = ptrtoint ptr %713 to i64
  %715 = and i64 %714, 72057594037927935
  %716 = xor i64 %715, 25399393228665167
  %717 = shl i64 %716, 17
  %718 = select i1 false, i64 0, i64 %717
  %719 = lshr i64 %716, 39
  %720 = select i1 false, i64 0, i64 %719
  %721 = or i64 %718, %720
  %722 = and i64 %721, 72057594037927935
  %723 = or i64 %722, -6557241057451442176
  store i64 %723, ptr %81, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %82, i64 %723)
  call void @runtime.ClobberPointerRegs()
  %724 = icmp eq ptr %81, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %724)
  %725 = load i64, ptr %81, align 4
  %726 = call i64 @runtime.LoadHiddenPointerKey(i64 %725)
  store i64 %726, ptr %83, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %84, i64 %726)
  store i64 0, ptr %79, align 4
  call void @runtime.TouchConservativeSlot(ptr %79, i64 8)
  store ptr null, ptr %80, align 8
  call void @runtime.TouchConservativeSlot(ptr %80, i64 8)
  store i64 0, ptr %81, align 4
  call void @runtime.TouchConservativeSlot(ptr %81, i64 8)
  store ptr null, ptr %82, align 8
  call void @runtime.TouchConservativeSlot(ptr %82, i64 8)
  call void @runtime.ClobberPointerRegs()
  %727 = icmp eq ptr %83, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %727)
  %728 = load i64, ptr %83, align 4
  %729 = and i64 %728, 72057594037927935
  %730 = lshr i64 %729, 17
  %731 = select i1 false, i64 0, i64 %730
  %732 = shl i64 %729, 39
  %733 = select i1 false, i64 0, i64 %732
  %734 = or i64 %731, %733
  %735 = and i64 %734, 72057594037927935
  %736 = xor i64 %735, 25399393228665167
  %737 = inttoptr i64 %736 to ptr
  %738 = icmp eq ptr %737, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %738)
  %739 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mSpanList", ptr %737, i32 0, i32 1
  %740 = ptrtoint ptr %739 to i64
  %741 = and i64 %740, 72057594037927935
  %742 = xor i64 %741, 25399393228665167
  %743 = shl i64 %742, 17
  %744 = select i1 false, i64 0, i64 %743
  %745 = lshr i64 %742, 39
  %746 = select i1 false, i64 0, i64 %745
  %747 = or i64 %744, %746
  %748 = and i64 %747, 72057594037927935
  %749 = or i64 %748, -6557241057451442176
  store i64 %749, ptr %85, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %86, i64 %749)
  call void @runtime.ClobberPointerRegs()
  %750 = icmp eq ptr %85, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %750)
  %751 = load i64, ptr %85, align 4
  %752 = call i64 @runtime.LoadHiddenPointerKey(i64 %751)
  store i64 %752, ptr %87, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %88, i64 %752)
  store i64 0, ptr %83, align 4
  call void @runtime.TouchConservativeSlot(ptr %83, i64 8)
  store ptr null, ptr %84, align 8
  call void @runtime.TouchConservativeSlot(ptr %84, i64 8)
  store i64 0, ptr %85, align 4
  call void @runtime.TouchConservativeSlot(ptr %85, i64 8)
  store ptr null, ptr %86, align 8
  call void @runtime.TouchConservativeSlot(ptr %86, i64 8)
  call void @runtime.ClobberPointerRegs()
  %753 = icmp eq ptr %87, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %753)
  %754 = load i64, ptr %87, align 4
  %755 = and i64 %754, 72057594037927935
  %756 = lshr i64 %755, 17
  %757 = select i1 false, i64 0, i64 %756
  %758 = shl i64 %755, 39
  %759 = select i1 false, i64 0, i64 %758
  %760 = or i64 %757, %759
  %761 = and i64 %760, 72057594037927935
  %762 = xor i64 %761, 25399393228665167
  %763 = inttoptr i64 %762 to ptr
  %764 = icmp eq ptr %763, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %764)
  %765 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %763, i32 0, i32 4
  %766 = ptrtoint ptr %765 to i64
  %767 = and i64 %766, 72057594037927935
  %768 = xor i64 %767, 25399393228665167
  %769 = shl i64 %768, 17
  %770 = select i1 false, i64 0, i64 %769
  %771 = lshr i64 %768, 39
  %772 = select i1 false, i64 0, i64 %771
  %773 = or i64 %770, %772
  %774 = and i64 %773, 72057594037927935
  %775 = or i64 %774, -6557241057451442176
  store i64 %775, ptr %89, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %90, i64 %775)
  call void @runtime.ClobberPointerRegs()
  %776 = icmp eq ptr %89, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %776)
  %777 = load i64, ptr %89, align 4
  %778 = alloca i64, align 8
  call void @runtime.LoadHiddenPointee(ptr %778, i64 %777, i64 8)
  %779 = icmp eq ptr %778, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %779)
  %780 = load i64, ptr %778, align 4
  store i64 0, ptr %778, align 4
  store i64 0, ptr %87, align 4
  call void @runtime.TouchConservativeSlot(ptr %87, i64 8)
  store ptr null, ptr %88, align 8
  call void @runtime.TouchConservativeSlot(ptr %88, i64 8)
  call void @runtime.ClobberPointerRegs()
  %781 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %781)
  %782 = load i64, ptr %0, align 4
  %783 = call i64 @runtime.LoadHiddenPointerKey(i64 %782)
  store i64 %783, ptr %91, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %92, i64 %783)
  %784 = icmp eq ptr %91, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %784)
  %785 = load i64, ptr %91, align 4
  %786 = and i64 %785, 72057594037927935
  %787 = lshr i64 %786, 17
  %788 = select i1 false, i64 0, i64 %787
  %789 = shl i64 %786, 39
  %790 = select i1 false, i64 0, i64 %789
  %791 = or i64 %788, %790
  %792 = and i64 %791, 72057594037927935
  %793 = xor i64 %792, 25399393228665167
  %794 = inttoptr i64 %793 to ptr
  %795 = icmp eq ptr %794, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %795)
  %796 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %794, i32 0, i32 3
  %797 = ptrtoint ptr %796 to i64
  %798 = and i64 %797, 72057594037927935
  %799 = xor i64 %798, 25399393228665167
  %800 = shl i64 %799, 17
  %801 = select i1 false, i64 0, i64 %800
  %802 = lshr i64 %799, 39
  %803 = select i1 false, i64 0, i64 %802
  %804 = or i64 %801, %803
  %805 = and i64 %804, 72057594037927935
  %806 = or i64 %805, -6557241057451442176
  store i64 %806, ptr %93, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %94, i64 %806)
  call void @runtime.ClobberPointerRegs()
  %807 = icmp eq ptr %93, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %807)
  %808 = load i64, ptr %93, align 4
  %809 = and i64 %808, 72057594037927935
  %810 = lshr i64 %809, 17
  %811 = select i1 false, i64 0, i64 %810
  %812 = shl i64 %809, 39
  %813 = select i1 false, i64 0, i64 %812
  %814 = or i64 %811, %813
  %815 = and i64 %814, 72057594037927935
  %816 = xor i64 %815, 25399393228665167
  %817 = inttoptr i64 %816 to ptr
  %818 = icmp eq ptr %817, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %818)
  %819 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.minfo", ptr %817, i32 0, i32 1
  %820 = ptrtoint ptr %819 to i64
  %821 = and i64 %820, 72057594037927935
  %822 = xor i64 %821, 25399393228665167
  %823 = shl i64 %822, 17
  %824 = select i1 false, i64 0, i64 %823
  %825 = lshr i64 %822, 39
  %826 = select i1 false, i64 0, i64 %825
  %827 = or i64 %824, %826
  %828 = and i64 %827, 72057594037927935
  %829 = or i64 %828, -6557241057451442176
  store i64 %829, ptr %95, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %96, i64 %829)
  call void @runtime.ClobberPointerRegs()
  %830 = icmp eq ptr %95, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %830)
  %831 = load i64, ptr %95, align 4
  %832 = alloca i64, align 8
  call void @runtime.LoadHiddenPointee(ptr %832, i64 %831, i64 8)
  %833 = icmp eq ptr %832, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %833)
  %834 = load i64, ptr %832, align 4
  store i64 0, ptr %832, align 4
  store i64 0, ptr %91, align 4
  call void @runtime.TouchConservativeSlot(ptr %91, i64 8)
  store ptr null, ptr %92, align 8
  call void @runtime.TouchConservativeSlot(ptr %92, i64 8)
  store i64 0, ptr %93, align 4
  call void @runtime.TouchConservativeSlot(ptr %93, i64 8)
  store ptr null, ptr %94, align 8
  call void @runtime.TouchConservativeSlot(ptr %94, i64 8)
  call void @runtime.ClobberPointerRegs()
  %835 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %835)
  %836 = load i64, ptr %0, align 4
  %837 = call i64 @runtime.LoadHiddenPointerKey(i64 %836)
  store i64 %837, ptr %97, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %98, i64 %837)
  %838 = icmp eq ptr %97, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %838)
  %839 = load i64, ptr %97, align 4
  %840 = and i64 %839, 72057594037927935
  %841 = lshr i64 %840, 17
  %842 = select i1 false, i64 0, i64 %841
  %843 = shl i64 %840, 39
  %844 = select i1 false, i64 0, i64 %843
  %845 = or i64 %842, %844
  %846 = and i64 %845, 72057594037927935
  %847 = xor i64 %846, 25399393228665167
  %848 = inttoptr i64 %847 to ptr
  %849 = icmp eq ptr %848, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %849)
  %850 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %848, i32 0, i32 3
  %851 = ptrtoint ptr %850 to i64
  %852 = and i64 %851, 72057594037927935
  %853 = xor i64 %852, 25399393228665167
  %854 = shl i64 %853, 17
  %855 = select i1 false, i64 0, i64 %854
  %856 = lshr i64 %853, 39
  %857 = select i1 false, i64 0, i64 %856
  %858 = or i64 %855, %857
  %859 = and i64 %858, 72057594037927935
  %860 = or i64 %859, -6557241057451442176
  store i64 %860, ptr %99, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %100, i64 %860)
  call void @runtime.ClobberPointerRegs()
  %861 = icmp eq ptr %99, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %861)
  %862 = load i64, ptr %99, align 4
  %863 = and i64 %862, 72057594037927935
  %864 = lshr i64 %863, 17
  %865 = select i1 false, i64 0, i64 %864
  %866 = shl i64 %863, 39
  %867 = select i1 false, i64 0, i64 %866
  %868 = or i64 %865, %867
  %869 = and i64 %868, 72057594037927935
  %870 = xor i64 %869, 25399393228665167
  %871 = inttoptr i64 %870 to ptr
  %872 = icmp eq ptr %871, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %872)
  %873 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.minfo", ptr %871, i32 0, i32 0
  %874 = ptrtoint ptr %873 to i64
  %875 = and i64 %874, 72057594037927935
  %876 = xor i64 %875, 25399393228665167
  %877 = shl i64 %876, 17
  %878 = select i1 false, i64 0, i64 %877
  %879 = lshr i64 %876, 39
  %880 = select i1 false, i64 0, i64 %879
  %881 = or i64 %878, %880
  %882 = and i64 %881, 72057594037927935
  %883 = or i64 %882, -6557241057451442176
  store i64 %883, ptr %101, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %102, i64 %883)
  call void @runtime.ClobberPointerRegs()
  %884 = icmp eq ptr %101, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %884)
  %885 = load i64, ptr %101, align 4
  %886 = call i64 @runtime.LoadHiddenPointerKey(i64 %885)
  store i64 %886, ptr %103, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %104, i64 %886)
  store i64 0, ptr %97, align 4
  call void @runtime.TouchConservativeSlot(ptr %97, i64 8)
  store ptr null, ptr %98, align 8
  call void @runtime.TouchConservativeSlot(ptr %98, i64 8)
  store i64 0, ptr %99, align 4
  call void @runtime.TouchConservativeSlot(ptr %99, i64 8)
  store ptr null, ptr %100, align 8
  call void @runtime.TouchConservativeSlot(ptr %100, i64 8)
  store i64 0, ptr %101, align 4
  call void @runtime.TouchConservativeSlot(ptr %101, i64 8)
  store ptr null, ptr %102, align 8
  call void @runtime.TouchConservativeSlot(ptr %102, i64 8)
  call void @runtime.ClobberPointerRegs()
  %887 = icmp eq ptr %103, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %887)
  %888 = load i64, ptr %103, align 4
  %889 = and i64 %888, 72057594037927935
  %890 = lshr i64 %889, 17
  %891 = select i1 false, i64 0, i64 %890
  %892 = shl i64 %889, 39
  %893 = select i1 false, i64 0, i64 %892
  %894 = or i64 %891, %893
  %895 = and i64 %894, 72057594037927935
  %896 = xor i64 %895, 25399393228665167
  %897 = inttoptr i64 %896 to ptr
  %898 = icmp eq ptr %897, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %898)
  %899 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %897, i32 0, i32 4
  %900 = ptrtoint ptr %899 to i64
  %901 = and i64 %900, 72057594037927935
  %902 = xor i64 %901, 25399393228665167
  %903 = shl i64 %902, 17
  %904 = select i1 false, i64 0, i64 %903
  %905 = lshr i64 %902, 39
  %906 = select i1 false, i64 0, i64 %905
  %907 = or i64 %904, %906
  %908 = and i64 %907, 72057594037927935
  %909 = or i64 %908, -6557241057451442176
  store i64 %909, ptr %105, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %106, i64 %909)
  call void @runtime.ClobberPointerRegs()
  %910 = icmp eq ptr %105, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %910)
  %911 = load i64, ptr %105, align 4
  %912 = alloca i64, align 8
  call void @runtime.LoadHiddenPointee(ptr %912, i64 %911, i64 8)
  %913 = icmp eq ptr %912, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %913)
  %914 = load i64, ptr %912, align 4
  store i64 0, ptr %912, align 4
  store i64 0, ptr %103, align 4
  call void @runtime.TouchConservativeSlot(ptr %103, i64 8)
  store ptr null, ptr %104, align 8
  call void @runtime.TouchConservativeSlot(ptr %104, i64 8)
  call void @runtime.ClobberPointerRegs()
  %915 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %915)
  %916 = load i64, ptr %0, align 4
  %917 = call i64 @runtime.LoadHiddenPointerKey(i64 %916)
  store i64 %917, ptr %107, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %108, i64 %917)
  %918 = icmp eq ptr %107, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %918)
  %919 = load i64, ptr %107, align 4
  %920 = and i64 %919, 72057594037927935
  %921 = lshr i64 %920, 17
  %922 = select i1 false, i64 0, i64 %921
  %923 = shl i64 %920, 39
  %924 = select i1 false, i64 0, i64 %923
  %925 = or i64 %922, %924
  %926 = and i64 %925, 72057594037927935
  %927 = xor i64 %926, 25399393228665167
  %928 = inttoptr i64 %927 to ptr
  %929 = icmp eq ptr %928, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %929)
  %930 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %928, i32 0, i32 5
  %931 = ptrtoint ptr %930 to i64
  %932 = and i64 %931, 72057594037927935
  %933 = xor i64 %932, 25399393228665167
  %934 = shl i64 %933, 17
  %935 = select i1 false, i64 0, i64 %934
  %936 = lshr i64 %933, 39
  %937 = select i1 false, i64 0, i64 %936
  %938 = or i64 %935, %937
  %939 = and i64 %938, 72057594037927935
  %940 = or i64 %939, -6557241057451442176
  store i64 %940, ptr %109, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %110, i64 %940)
  call void @runtime.ClobberPointerRegs()
  %941 = icmp eq ptr %109, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %941)
  %942 = load i64, ptr %109, align 4
  %943 = alloca { ptr, ptr }, align 8
  call void @runtime.LoadHiddenPointee(ptr %943, i64 %942, i64 16)
  %944 = icmp eq ptr %943, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %944)
  %945 = load { ptr, ptr }, ptr %943, align 8
  store { ptr, ptr } zeroinitializer, ptr %943, align 8
  store { ptr, ptr } %945, ptr %111, align 8
  store i64 0, ptr %107, align 4
  call void @runtime.TouchConservativeSlot(ptr %107, i64 8)
  store ptr null, ptr %108, align 8
  call void @runtime.TouchConservativeSlot(ptr %108, i64 8)
  store i64 0, ptr %109, align 4
  call void @runtime.TouchConservativeSlot(ptr %109, i64 8)
  store ptr null, ptr %110, align 8
  call void @runtime.TouchConservativeSlot(ptr %110, i64 8)
  call void @runtime.ClobberPointerRegs()
  %946 = icmp eq ptr %111, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %946)
  %947 = load { ptr, ptr }, ptr %111, align 8
  %948 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  store { ptr, ptr } zeroinitializer, ptr %111, align 8
  call void @runtime.TouchConservativeSlot(ptr %111, i64 16)
  call void @runtime.ClobberPointerRegs()
  %949 = extractvalue { ptr, ptr } %947, 1
  %950 = extractvalue { ptr, ptr } %947, 0
  %951 = call i64 %950(ptr %949, i64 -2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %948)
  %952 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %952)
  %953 = load i64, ptr %0, align 4
  %954 = call i64 @runtime.LoadHiddenPointerKey(i64 %953)
  store i64 %954, ptr %112, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %113, i64 %954)
  store i64 0, ptr %0, align 4
  call void @runtime.TouchConservativeSlot(ptr %0, i64 8)
  store ptr null, ptr %1, align 8
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  call void @runtime.ClobberPointerRegs()
  %955 = icmp eq ptr %112, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %955)
  %956 = load i64, ptr %112, align 4
  %957 = and i64 %956, 72057594037927935
  %958 = lshr i64 %957, 17
  %959 = select i1 false, i64 0, i64 %958
  %960 = shl i64 %957, 39
  %961 = select i1 false, i64 0, i64 %960
  %962 = or i64 %959, %961
  %963 = and i64 %962, 72057594037927935
  %964 = xor i64 %963, 25399393228665167
  %965 = inttoptr i64 %964 to ptr
  %966 = icmp eq ptr %965, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %966)
  %967 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %965, i32 0, i32 3
  %968 = ptrtoint ptr %967 to i64
  %969 = and i64 %968, 72057594037927935
  %970 = xor i64 %969, 25399393228665167
  %971 = shl i64 %970, 17
  %972 = select i1 false, i64 0, i64 %971
  %973 = lshr i64 %970, 39
  %974 = select i1 false, i64 0, i64 %973
  %975 = or i64 %972, %974
  %976 = and i64 %975, 72057594037927935
  %977 = or i64 %976, -6557241057451442176
  store i64 %977, ptr %114, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %115, i64 %977)
  call void @runtime.ClobberPointerRegs()
  %978 = icmp eq ptr %114, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %978)
  %979 = load i64, ptr %114, align 4
  %980 = and i64 %979, 72057594037927935
  %981 = lshr i64 %980, 17
  %982 = select i1 false, i64 0, i64 %981
  %983 = shl i64 %980, 39
  %984 = select i1 false, i64 0, i64 %983
  %985 = or i64 %982, %984
  %986 = and i64 %985, 72057594037927935
  %987 = xor i64 %986, 25399393228665167
  %988 = inttoptr i64 %987 to ptr
  %989 = icmp eq ptr %988, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %989)
  %990 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.minfo", ptr %988, i32 0, i32 0
  %991 = ptrtoint ptr %990 to i64
  %992 = and i64 %991, 72057594037927935
  %993 = xor i64 %992, 25399393228665167
  %994 = shl i64 %993, 17
  %995 = select i1 false, i64 0, i64 %994
  %996 = lshr i64 %993, 39
  %997 = select i1 false, i64 0, i64 %996
  %998 = or i64 %995, %997
  %999 = and i64 %998, 72057594037927935
  %1000 = or i64 %999, -6557241057451442176
  store i64 %1000, ptr %116, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %117, i64 %1000)
  call void @runtime.ClobberPointerRegs()
  %1001 = icmp eq ptr %116, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1001)
  %1002 = load i64, ptr %116, align 4
  %1003 = call i64 @runtime.LoadHiddenPointerKey(i64 %1002)
  store i64 %1003, ptr %118, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %119, i64 %1003)
  store i64 0, ptr %112, align 4
  call void @runtime.TouchConservativeSlot(ptr %112, i64 8)
  store ptr null, ptr %113, align 8
  call void @runtime.TouchConservativeSlot(ptr %113, i64 8)
  store i64 0, ptr %114, align 4
  call void @runtime.TouchConservativeSlot(ptr %114, i64 8)
  store ptr null, ptr %115, align 8
  call void @runtime.TouchConservativeSlot(ptr %115, i64 8)
  store i64 0, ptr %116, align 4
  call void @runtime.TouchConservativeSlot(ptr %116, i64 8)
  store ptr null, ptr %117, align 8
  call void @runtime.TouchConservativeSlot(ptr %117, i64 8)
  call void @runtime.ClobberPointerRegs()
  %1004 = icmp eq ptr %118, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1004)
  %1005 = load i64, ptr %118, align 4
  %1006 = and i64 %1005, 72057594037927935
  %1007 = lshr i64 %1006, 17
  %1008 = select i1 false, i64 0, i64 %1007
  %1009 = shl i64 %1006, 39
  %1010 = select i1 false, i64 0, i64 %1009
  %1011 = or i64 %1008, %1010
  %1012 = and i64 %1011, 72057594037927935
  %1013 = xor i64 %1012, 25399393228665167
  %1014 = inttoptr i64 %1013 to ptr
  %1015 = icmp eq ptr %1014, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1015)
  %1016 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %1014, i32 0, i32 5
  %1017 = ptrtoint ptr %1016 to i64
  %1018 = and i64 %1017, 72057594037927935
  %1019 = xor i64 %1018, 25399393228665167
  %1020 = shl i64 %1019, 17
  %1021 = select i1 false, i64 0, i64 %1020
  %1022 = lshr i64 %1019, 39
  %1023 = select i1 false, i64 0, i64 %1022
  %1024 = or i64 %1021, %1023
  %1025 = and i64 %1024, 72057594037927935
  %1026 = or i64 %1025, -6557241057451442176
  store i64 %1026, ptr %120, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %121, i64 %1026)
  call void @runtime.ClobberPointerRegs()
  %1027 = icmp eq ptr %120, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1027)
  %1028 = load i64, ptr %120, align 4
  %1029 = alloca { ptr, ptr }, align 8
  call void @runtime.LoadHiddenPointee(ptr %1029, i64 %1028, i64 16)
  %1030 = icmp eq ptr %1029, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1030)
  %1031 = load { ptr, ptr }, ptr %1029, align 8
  store { ptr, ptr } zeroinitializer, ptr %1029, align 8
  store { ptr, ptr } %1031, ptr %122, align 8
  store i64 0, ptr %118, align 4
  call void @runtime.TouchConservativeSlot(ptr %118, i64 8)
  store ptr null, ptr %119, align 8
  call void @runtime.TouchConservativeSlot(ptr %119, i64 8)
  store i64 0, ptr %120, align 4
  call void @runtime.TouchConservativeSlot(ptr %120, i64 8)
  store ptr null, ptr %121, align 8
  call void @runtime.TouchConservativeSlot(ptr %121, i64 8)
  call void @runtime.ClobberPointerRegs()
  %1032 = icmp eq ptr %122, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1032)
  %1033 = load { ptr, ptr }, ptr %122, align 8
  %1034 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  store { ptr, ptr } zeroinitializer, ptr %122, align 8
  call void @runtime.TouchConservativeSlot(ptr %122, i64 16)
  call void @runtime.ClobberPointerRegs()
  %1035 = extractvalue { ptr, ptr } %1033, 1
  %1036 = extractvalue { ptr, ptr } %1033, 0
  %1037 = call i64 %1036(ptr %1035, i64 -3)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %1034)
  store i64 0, ptr %125, align 4
  call void @runtime.TouchConservativeSlot(ptr %125, i64 8)
  store ptr null, ptr %126, align 8
  call void @runtime.TouchConservativeSlot(ptr %126, i64 8)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %127, align 4
  call void @runtime.TouchConservativeSlot(ptr %127, i64 8)
  store ptr null, ptr %128, align 8
  call void @runtime.TouchConservativeSlot(ptr %128, i64 8)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %129, align 4
  call void @runtime.TouchConservativeSlot(ptr %129, i64 8)
  store ptr null, ptr %130, align 8
  call void @runtime.TouchConservativeSlot(ptr %130, i64 8)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %131, align 4
  call void @runtime.TouchConservativeSlot(ptr %131, i64 8)
  store ptr null, ptr %132, align 8
  call void @runtime.TouchConservativeSlot(ptr %132, i64 8)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %133, align 4
  call void @runtime.TouchConservativeSlot(ptr %133, i64 8)
  store ptr null, ptr %134, align 8
  call void @runtime.TouchConservativeSlot(ptr %134, i64 8)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %135, align 4
  call void @runtime.TouchConservativeSlot(ptr %135, i64 8)
  store ptr null, ptr %136, align 8
  call void @runtime.TouchConservativeSlot(ptr %136, i64 8)
  call void @runtime.ClobberPointerRegs()
  %1038 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %1039 = icmp eq ptr %69, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1039)
  %1040 = load i64, ptr %69, align 4
  %1041 = and i64 %1040, 72057594037927935
  %1042 = lshr i64 %1041, 17
  %1043 = select i1 false, i64 0, i64 %1042
  %1044 = shl i64 %1041, 39
  %1045 = select i1 false, i64 0, i64 %1044
  %1046 = or i64 %1043, %1045
  %1047 = and i64 %1046, 72057594037927935
  %1048 = xor i64 %1047, 25399393228665167
  %1049 = inttoptr i64 %1048 to ptr
  store i64 0, ptr %69, align 4
  call void @runtime.TouchConservativeSlot(ptr %69, i64 8)
  store ptr null, ptr %70, align 8
  call void @runtime.TouchConservativeSlot(ptr %70, i64 8)
  store i64 0, ptr %123, align 4
  call void @runtime.TouchConservativeSlot(ptr %123, i64 8)
  store ptr null, ptr %124, align 8
  call void @runtime.TouchConservativeSlot(ptr %124, i64 8)
  store { i64, i64, i64 } zeroinitializer, ptr %137, align 4
  call void @runtime.TouchConservativeSlot(ptr %137, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %138, align 8
  call void @runtime.TouchConservativeSlot(ptr %138, i64 24)
  call void @runtime.ClobberPointerRegs()
  %1050 = call i32 (ptr, ...) @printf(ptr %1049, i64 %697, i64 %780, i64 %834, i64 %914, i64 %951, i64 %1037)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %1038)
  ret void
}

define i64 @"github.com/goplus/llgo/cl/_testrt/named.main$1"(ptr %0, i64 %1) {
_llgo_0:
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  store ptr null, ptr %3, align 8
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  store ptr null, ptr %5, align 8
  %6 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %6)
  %7 = load { ptr }, ptr %0, align 8
  %8 = extractvalue { ptr } %7, 0
  %9 = icmp eq ptr %8, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %9)
  %10 = load ptr, ptr %8, align 8
  %11 = ptrtoint ptr %10 to i64
  %12 = and i64 %11, 72057594037927935
  %13 = xor i64 %12, 25399393228665167
  %14 = shl i64 %13, 17
  %15 = select i1 false, i64 0, i64 %14
  %16 = lshr i64 %13, 39
  %17 = select i1 false, i64 0, i64 %16
  %18 = or i64 %15, %17
  %19 = and i64 %18, 72057594037927935
  %20 = or i64 %19, -6557241057451442176
  store i64 %20, ptr %2, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %3, i64 %20)
  call void @runtime.ClobberPointerRegs()
  %21 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %21)
  %22 = load i64, ptr %2, align 4
  %23 = and i64 %22, 72057594037927935
  %24 = lshr i64 %23, 17
  %25 = select i1 false, i64 0, i64 %24
  %26 = shl i64 %23, 39
  %27 = select i1 false, i64 0, i64 %26
  %28 = or i64 %25, %27
  %29 = and i64 %28, 72057594037927935
  %30 = xor i64 %29, 25399393228665167
  %31 = inttoptr i64 %30 to ptr
  %32 = icmp eq ptr %31, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %32)
  %33 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %31, i32 0, i32 4
  %34 = ptrtoint ptr %33 to i64
  %35 = and i64 %34, 72057594037927935
  %36 = xor i64 %35, 25399393228665167
  %37 = shl i64 %36, 17
  %38 = select i1 false, i64 0, i64 %37
  %39 = lshr i64 %36, 39
  %40 = select i1 false, i64 0, i64 %39
  %41 = or i64 %38, %40
  %42 = and i64 %41, 72057594037927935
  %43 = or i64 %42, -6557241057451442176
  store i64 %43, ptr %4, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %5, i64 %43)
  call void @runtime.ClobberPointerRegs()
  %44 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %44)
  %45 = load i64, ptr %4, align 4
  %46 = alloca i64, align 8
  call void @runtime.LoadHiddenPointee(ptr %46, i64 %45, i64 8)
  %47 = icmp eq ptr %46, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %47)
  %48 = load i64, ptr %46, align 4
  store i64 0, ptr %46, align 4
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  store i64 0, ptr %4, align 4
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  store ptr null, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  call void @runtime.ClobberPointerRegs()
  %49 = mul i64 %48, %1
  ret i64 %49
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1)

declare void @"github.com/goplus/lib/c.init"()

declare i64 @runtime.AllocZHidden(i64)

declare void @runtime.StoreHiddenPointerRoot(ptr, i64)

declare void @runtime.StoreHiddenPointee(i64, ptr, i64)

declare void @runtime.TouchConservativeSlot(ptr, i64)

declare void @runtime.ClobberPointerRegs()

declare i64 @runtime.LoadHiddenPointerKey(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare void @runtime.LoadHiddenPointee(ptr, i64, i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr)

declare i32 @printf(ptr, ...)
