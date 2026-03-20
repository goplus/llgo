; ModuleID = 'github.com/goplus/llgo/cl/_testrt/index'
source_filename = "github.com/goplus/llgo/cl/_testrt/index"

%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/cl/_testrt/index.point" = type { i64, i64 }

@"github.com/goplus/llgo/cl/_testrt/index.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [6 x i8] c"123456", align 1

define void @"github.com/goplus/llgo/cl/_testrt/index.init"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/index.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/index.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/index.main"() {
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
  %48 = alloca { i64, i64 }, align 8
  %49 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %49, align 8
  %50 = alloca { i64, i64 }, align 8
  %51 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %51, align 8
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
  %66 = alloca i64, align 8
  %67 = alloca ptr, align 8
  store ptr null, ptr %67, align 8
  %68 = alloca i64, align 8
  %69 = alloca ptr, align 8
  store ptr null, ptr %69, align 8
  %70 = alloca { i64, i64, i64 }, align 8
  %71 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %71, align 8
  %72 = alloca i64, align 8
  %73 = alloca ptr, align 8
  store ptr null, ptr %73, align 8
  %74 = alloca %"github.com/goplus/llgo/cl/_testrt/index.point", align 8
  call void @llvm.memset(ptr %74, i8 0, i64 16, i1 false)
  %75 = alloca [3 x %"github.com/goplus/llgo/cl/_testrt/index.point"], align 8
  call void @llvm.memset(ptr %75, i8 0, i64 48, i1 false)
  %76 = icmp eq ptr %75, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %76)
  %77 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 0, i64 3)
  %78 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/index.point", ptr %75, i64 %77
  %79 = ptrtoint ptr %78 to i64
  %80 = and i64 %79, 72057594037927935
  %81 = xor i64 %80, 25399393228665167
  %82 = shl i64 %81, 17
  %83 = select i1 false, i64 0, i64 %82
  %84 = lshr i64 %81, 39
  %85 = select i1 false, i64 0, i64 %84
  %86 = or i64 %83, %85
  %87 = and i64 %86, 72057594037927935
  %88 = or i64 %87, -6557241057451442176
  store i64 %88, ptr %0, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %1, i64 %88)
  call void @runtime.ClobberPointerRegs()
  %89 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %89)
  %90 = load i64, ptr %0, align 4
  %91 = and i64 %90, 72057594037927935
  %92 = lshr i64 %91, 17
  %93 = select i1 false, i64 0, i64 %92
  %94 = shl i64 %91, 39
  %95 = select i1 false, i64 0, i64 %94
  %96 = or i64 %93, %95
  %97 = and i64 %96, 72057594037927935
  %98 = xor i64 %97, 25399393228665167
  %99 = inttoptr i64 %98 to ptr
  %100 = icmp eq ptr %99, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %100)
  %101 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/index.point", ptr %99, i32 0, i32 0
  %102 = ptrtoint ptr %101 to i64
  %103 = and i64 %102, 72057594037927935
  %104 = xor i64 %103, 25399393228665167
  %105 = shl i64 %104, 17
  %106 = select i1 false, i64 0, i64 %105
  %107 = lshr i64 %104, 39
  %108 = select i1 false, i64 0, i64 %107
  %109 = or i64 %106, %108
  %110 = and i64 %109, 72057594037927935
  %111 = or i64 %110, -6557241057451442176
  store i64 %111, ptr %2, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %3, i64 %111)
  call void @runtime.ClobberPointerRegs()
  %112 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %112)
  %113 = load i64, ptr %0, align 4
  %114 = and i64 %113, 72057594037927935
  %115 = lshr i64 %114, 17
  %116 = select i1 false, i64 0, i64 %115
  %117 = shl i64 %114, 39
  %118 = select i1 false, i64 0, i64 %117
  %119 = or i64 %116, %118
  %120 = and i64 %119, 72057594037927935
  %121 = xor i64 %120, 25399393228665167
  %122 = inttoptr i64 %121 to ptr
  %123 = icmp eq ptr %122, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %123)
  %124 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/index.point", ptr %122, i32 0, i32 1
  %125 = ptrtoint ptr %124 to i64
  %126 = and i64 %125, 72057594037927935
  %127 = xor i64 %126, 25399393228665167
  %128 = shl i64 %127, 17
  %129 = select i1 false, i64 0, i64 %128
  %130 = lshr i64 %127, 39
  %131 = select i1 false, i64 0, i64 %130
  %132 = or i64 %129, %131
  %133 = and i64 %132, 72057594037927935
  %134 = or i64 %133, -6557241057451442176
  store i64 %134, ptr %4, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %5, i64 %134)
  call void @runtime.ClobberPointerRegs()
  %135 = icmp eq ptr %75, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %135)
  %136 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 1, i64 3)
  %137 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/index.point", ptr %75, i64 %136
  %138 = ptrtoint ptr %137 to i64
  %139 = and i64 %138, 72057594037927935
  %140 = xor i64 %139, 25399393228665167
  %141 = shl i64 %140, 17
  %142 = select i1 false, i64 0, i64 %141
  %143 = lshr i64 %140, 39
  %144 = select i1 false, i64 0, i64 %143
  %145 = or i64 %142, %144
  %146 = and i64 %145, 72057594037927935
  %147 = or i64 %146, -6557241057451442176
  store i64 %147, ptr %6, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %7, i64 %147)
  call void @runtime.ClobberPointerRegs()
  %148 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %148)
  %149 = load i64, ptr %6, align 4
  %150 = and i64 %149, 72057594037927935
  %151 = lshr i64 %150, 17
  %152 = select i1 false, i64 0, i64 %151
  %153 = shl i64 %150, 39
  %154 = select i1 false, i64 0, i64 %153
  %155 = or i64 %152, %154
  %156 = and i64 %155, 72057594037927935
  %157 = xor i64 %156, 25399393228665167
  %158 = inttoptr i64 %157 to ptr
  %159 = icmp eq ptr %158, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %159)
  %160 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/index.point", ptr %158, i32 0, i32 0
  %161 = ptrtoint ptr %160 to i64
  %162 = and i64 %161, 72057594037927935
  %163 = xor i64 %162, 25399393228665167
  %164 = shl i64 %163, 17
  %165 = select i1 false, i64 0, i64 %164
  %166 = lshr i64 %163, 39
  %167 = select i1 false, i64 0, i64 %166
  %168 = or i64 %165, %167
  %169 = and i64 %168, 72057594037927935
  %170 = or i64 %169, -6557241057451442176
  store i64 %170, ptr %8, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %9, i64 %170)
  call void @runtime.ClobberPointerRegs()
  %171 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %171)
  %172 = load i64, ptr %6, align 4
  %173 = and i64 %172, 72057594037927935
  %174 = lshr i64 %173, 17
  %175 = select i1 false, i64 0, i64 %174
  %176 = shl i64 %173, 39
  %177 = select i1 false, i64 0, i64 %176
  %178 = or i64 %175, %177
  %179 = and i64 %178, 72057594037927935
  %180 = xor i64 %179, 25399393228665167
  %181 = inttoptr i64 %180 to ptr
  %182 = icmp eq ptr %181, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %182)
  %183 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/index.point", ptr %181, i32 0, i32 1
  %184 = ptrtoint ptr %183 to i64
  %185 = and i64 %184, 72057594037927935
  %186 = xor i64 %185, 25399393228665167
  %187 = shl i64 %186, 17
  %188 = select i1 false, i64 0, i64 %187
  %189 = lshr i64 %186, 39
  %190 = select i1 false, i64 0, i64 %189
  %191 = or i64 %188, %190
  %192 = and i64 %191, 72057594037927935
  %193 = or i64 %192, -6557241057451442176
  store i64 %193, ptr %10, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %11, i64 %193)
  call void @runtime.ClobberPointerRegs()
  %194 = icmp eq ptr %75, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %194)
  %195 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 2, i64 3)
  %196 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/index.point", ptr %75, i64 %195
  %197 = ptrtoint ptr %196 to i64
  %198 = and i64 %197, 72057594037927935
  %199 = xor i64 %198, 25399393228665167
  %200 = shl i64 %199, 17
  %201 = select i1 false, i64 0, i64 %200
  %202 = lshr i64 %199, 39
  %203 = select i1 false, i64 0, i64 %202
  %204 = or i64 %201, %203
  %205 = and i64 %204, 72057594037927935
  %206 = or i64 %205, -6557241057451442176
  store i64 %206, ptr %12, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %13, i64 %206)
  call void @runtime.ClobberPointerRegs()
  %207 = icmp eq ptr %12, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %207)
  %208 = load i64, ptr %12, align 4
  %209 = and i64 %208, 72057594037927935
  %210 = lshr i64 %209, 17
  %211 = select i1 false, i64 0, i64 %210
  %212 = shl i64 %209, 39
  %213 = select i1 false, i64 0, i64 %212
  %214 = or i64 %211, %213
  %215 = and i64 %214, 72057594037927935
  %216 = xor i64 %215, 25399393228665167
  %217 = inttoptr i64 %216 to ptr
  %218 = icmp eq ptr %217, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %218)
  %219 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/index.point", ptr %217, i32 0, i32 0
  %220 = ptrtoint ptr %219 to i64
  %221 = and i64 %220, 72057594037927935
  %222 = xor i64 %221, 25399393228665167
  %223 = shl i64 %222, 17
  %224 = select i1 false, i64 0, i64 %223
  %225 = lshr i64 %222, 39
  %226 = select i1 false, i64 0, i64 %225
  %227 = or i64 %224, %226
  %228 = and i64 %227, 72057594037927935
  %229 = or i64 %228, -6557241057451442176
  store i64 %229, ptr %14, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %15, i64 %229)
  call void @runtime.ClobberPointerRegs()
  %230 = icmp eq ptr %12, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %230)
  %231 = load i64, ptr %12, align 4
  %232 = and i64 %231, 72057594037927935
  %233 = lshr i64 %232, 17
  %234 = select i1 false, i64 0, i64 %233
  %235 = shl i64 %232, 39
  %236 = select i1 false, i64 0, i64 %235
  %237 = or i64 %234, %236
  %238 = and i64 %237, 72057594037927935
  %239 = xor i64 %238, 25399393228665167
  %240 = inttoptr i64 %239 to ptr
  %241 = icmp eq ptr %240, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %241)
  %242 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/index.point", ptr %240, i32 0, i32 1
  %243 = ptrtoint ptr %242 to i64
  %244 = and i64 %243, 72057594037927935
  %245 = xor i64 %244, 25399393228665167
  %246 = shl i64 %245, 17
  %247 = select i1 false, i64 0, i64 %246
  %248 = lshr i64 %245, 39
  %249 = select i1 false, i64 0, i64 %248
  %250 = or i64 %247, %249
  %251 = and i64 %250, 72057594037927935
  %252 = or i64 %251, -6557241057451442176
  store i64 %252, ptr %16, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %17, i64 %252)
  call void @runtime.ClobberPointerRegs()
  %253 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %253)
  %254 = load i64, ptr %2, align 4
  %255 = alloca i64, align 8
  store i64 1, ptr %255, align 4
  call void @runtime.StoreHiddenPointee(i64 %254, ptr %255, i64 8)
  store i64 0, ptr %255, align 4
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  call void @runtime.ClobberPointerRegs()
  %256 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %256)
  %257 = load i64, ptr %4, align 4
  %258 = alloca i64, align 8
  store i64 2, ptr %258, align 4
  call void @runtime.StoreHiddenPointee(i64 %257, ptr %258, i64 8)
  store i64 0, ptr %258, align 4
  store i64 0, ptr %0, align 4
  call void @runtime.TouchConservativeSlot(ptr %0, i64 8)
  store ptr null, ptr %1, align 8
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  store i64 0, ptr %4, align 4
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  store ptr null, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  call void @runtime.ClobberPointerRegs()
  %259 = icmp eq ptr %8, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %259)
  %260 = load i64, ptr %8, align 4
  %261 = alloca i64, align 8
  store i64 3, ptr %261, align 4
  call void @runtime.StoreHiddenPointee(i64 %260, ptr %261, i64 8)
  store i64 0, ptr %261, align 4
  store i64 0, ptr %8, align 4
  call void @runtime.TouchConservativeSlot(ptr %8, i64 8)
  store ptr null, ptr %9, align 8
  call void @runtime.TouchConservativeSlot(ptr %9, i64 8)
  call void @runtime.ClobberPointerRegs()
  %262 = icmp eq ptr %10, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %262)
  %263 = load i64, ptr %10, align 4
  %264 = alloca i64, align 8
  store i64 4, ptr %264, align 4
  call void @runtime.StoreHiddenPointee(i64 %263, ptr %264, i64 8)
  store i64 0, ptr %264, align 4
  store i64 0, ptr %6, align 4
  call void @runtime.TouchConservativeSlot(ptr %6, i64 8)
  store ptr null, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 8)
  store i64 0, ptr %10, align 4
  call void @runtime.TouchConservativeSlot(ptr %10, i64 8)
  store ptr null, ptr %11, align 8
  call void @runtime.TouchConservativeSlot(ptr %11, i64 8)
  call void @runtime.ClobberPointerRegs()
  %265 = icmp eq ptr %14, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %265)
  %266 = load i64, ptr %14, align 4
  %267 = alloca i64, align 8
  store i64 5, ptr %267, align 4
  call void @runtime.StoreHiddenPointee(i64 %266, ptr %267, i64 8)
  store i64 0, ptr %267, align 4
  store i64 0, ptr %14, align 4
  call void @runtime.TouchConservativeSlot(ptr %14, i64 8)
  store ptr null, ptr %15, align 8
  call void @runtime.TouchConservativeSlot(ptr %15, i64 8)
  call void @runtime.ClobberPointerRegs()
  %268 = icmp eq ptr %16, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %268)
  %269 = load i64, ptr %16, align 4
  %270 = alloca i64, align 8
  store i64 6, ptr %270, align 4
  call void @runtime.StoreHiddenPointee(i64 %269, ptr %270, i64 8)
  store i64 0, ptr %270, align 4
  store i64 0, ptr %12, align 4
  call void @runtime.TouchConservativeSlot(ptr %12, i64 8)
  store ptr null, ptr %13, align 8
  call void @runtime.TouchConservativeSlot(ptr %13, i64 8)
  store i64 0, ptr %16, align 4
  call void @runtime.TouchConservativeSlot(ptr %16, i64 8)
  store ptr null, ptr %17, align 8
  call void @runtime.TouchConservativeSlot(ptr %17, i64 8)
  call void @runtime.ClobberPointerRegs()
  %271 = icmp eq ptr %75, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %271)
  %272 = load [3 x %"github.com/goplus/llgo/cl/_testrt/index.point"], ptr %75, align 4
  store [3 x %"github.com/goplus/llgo/cl/_testrt/index.point"] zeroinitializer, ptr %75, align 4
  call void @runtime.ClobberPointerRegs()
  %273 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 2, i64 3)
  %274 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/index.point", ptr %75, i64 %273
  %275 = icmp eq ptr %274, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %275)
  %276 = load %"github.com/goplus/llgo/cl/_testrt/index.point", ptr %274, align 4
  store %"github.com/goplus/llgo/cl/_testrt/index.point" %276, ptr %74, align 4
  %277 = icmp eq ptr %74, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %277)
  %278 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/index.point", ptr %74, i32 0, i32 0
  %279 = ptrtoint ptr %278 to i64
  %280 = and i64 %279, 72057594037927935
  %281 = xor i64 %280, 25399393228665167
  %282 = shl i64 %281, 17
  %283 = select i1 false, i64 0, i64 %282
  %284 = lshr i64 %281, 39
  %285 = select i1 false, i64 0, i64 %284
  %286 = or i64 %283, %285
  %287 = and i64 %286, 72057594037927935
  %288 = or i64 %287, -6557241057451442176
  store i64 %288, ptr %18, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %19, i64 %288)
  call void @runtime.ClobberPointerRegs()
  %289 = icmp eq ptr %18, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %289)
  %290 = load i64, ptr %18, align 4
  %291 = alloca i64, align 8
  call void @runtime.LoadHiddenPointee(ptr %291, i64 %290, i64 8)
  %292 = icmp eq ptr %291, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %292)
  %293 = load i64, ptr %291, align 4
  store i64 0, ptr %291, align 4
  store i64 0, ptr %18, align 4
  call void @runtime.TouchConservativeSlot(ptr %18, i64 8)
  store ptr null, ptr %19, align 8
  call void @runtime.TouchConservativeSlot(ptr %19, i64 8)
  call void @runtime.ClobberPointerRegs()
  %294 = icmp eq ptr %74, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %294)
  %295 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/index.point", ptr %74, i32 0, i32 1
  %296 = ptrtoint ptr %295 to i64
  %297 = and i64 %296, 72057594037927935
  %298 = xor i64 %297, 25399393228665167
  %299 = shl i64 %298, 17
  %300 = select i1 false, i64 0, i64 %299
  %301 = lshr i64 %298, 39
  %302 = select i1 false, i64 0, i64 %301
  %303 = or i64 %300, %302
  %304 = and i64 %303, 72057594037927935
  %305 = or i64 %304, -6557241057451442176
  store i64 %305, ptr %20, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %21, i64 %305)
  call void @runtime.ClobberPointerRegs()
  %306 = icmp eq ptr %20, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %306)
  %307 = load i64, ptr %20, align 4
  %308 = alloca i64, align 8
  call void @runtime.LoadHiddenPointee(ptr %308, i64 %307, i64 8)
  %309 = icmp eq ptr %308, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %309)
  %310 = load i64, ptr %308, align 4
  store i64 0, ptr %308, align 4
  store %"github.com/goplus/llgo/cl/_testrt/index.point" zeroinitializer, ptr %74, align 4
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %20, align 4
  call void @runtime.TouchConservativeSlot(ptr %20, i64 8)
  store ptr null, ptr %21, align 8
  call void @runtime.TouchConservativeSlot(ptr %21, i64 8)
  call void @runtime.ClobberPointerRegs()
  %311 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %293)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %310)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %311)
  %312 = alloca [2 x i64], align 8
  call void @llvm.memset(ptr %312, i8 0, i64 16, i1 false)
  %313 = alloca [2 x [2 x i64]], align 8
  call void @llvm.memset(ptr %313, i8 0, i64 32, i1 false)
  %314 = icmp eq ptr %313, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %314)
  %315 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 0, i64 2)
  %316 = getelementptr inbounds [2 x i64], ptr %313, i64 %315
  %317 = ptrtoint ptr %316 to i64
  %318 = and i64 %317, 72057594037927935
  %319 = xor i64 %318, 25399393228665167
  %320 = shl i64 %319, 17
  %321 = select i1 false, i64 0, i64 %320
  %322 = lshr i64 %319, 39
  %323 = select i1 false, i64 0, i64 %322
  %324 = or i64 %321, %323
  %325 = and i64 %324, 72057594037927935
  %326 = or i64 %325, -6557241057451442176
  store i64 %326, ptr %22, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %23, i64 %326)
  call void @runtime.ClobberPointerRegs()
  %327 = icmp eq ptr %22, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %327)
  %328 = load i64, ptr %22, align 4
  %329 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 0, i64 2)
  %330 = mul i64 %329, 8
  %331 = call i64 @runtime.AdvanceHiddenPointer(i64 %328, i64 %330)
  store i64 %331, ptr %24, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %25, i64 %331)
  %332 = icmp eq ptr %22, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %332)
  %333 = load i64, ptr %22, align 4
  %334 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 1, i64 2)
  %335 = mul i64 %334, 8
  %336 = call i64 @runtime.AdvanceHiddenPointer(i64 %333, i64 %335)
  store i64 %336, ptr %26, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %27, i64 %336)
  %337 = icmp eq ptr %313, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %337)
  %338 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 1, i64 2)
  %339 = getelementptr inbounds [2 x i64], ptr %313, i64 %338
  %340 = ptrtoint ptr %339 to i64
  %341 = and i64 %340, 72057594037927935
  %342 = xor i64 %341, 25399393228665167
  %343 = shl i64 %342, 17
  %344 = select i1 false, i64 0, i64 %343
  %345 = lshr i64 %342, 39
  %346 = select i1 false, i64 0, i64 %345
  %347 = or i64 %344, %346
  %348 = and i64 %347, 72057594037927935
  %349 = or i64 %348, -6557241057451442176
  store i64 %349, ptr %28, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %29, i64 %349)
  call void @runtime.ClobberPointerRegs()
  %350 = icmp eq ptr %28, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %350)
  %351 = load i64, ptr %28, align 4
  %352 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 0, i64 2)
  %353 = mul i64 %352, 8
  %354 = call i64 @runtime.AdvanceHiddenPointer(i64 %351, i64 %353)
  store i64 %354, ptr %30, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %31, i64 %354)
  %355 = icmp eq ptr %28, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %355)
  %356 = load i64, ptr %28, align 4
  %357 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 1, i64 2)
  %358 = mul i64 %357, 8
  %359 = call i64 @runtime.AdvanceHiddenPointer(i64 %356, i64 %358)
  store i64 %359, ptr %32, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %33, i64 %359)
  %360 = icmp eq ptr %24, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %360)
  %361 = load i64, ptr %24, align 4
  %362 = alloca i64, align 8
  store i64 1, ptr %362, align 4
  call void @runtime.StoreHiddenPointee(i64 %361, ptr %362, i64 8)
  store i64 0, ptr %362, align 4
  store i64 0, ptr %24, align 4
  call void @runtime.TouchConservativeSlot(ptr %24, i64 8)
  store ptr null, ptr %25, align 8
  call void @runtime.TouchConservativeSlot(ptr %25, i64 8)
  call void @runtime.ClobberPointerRegs()
  %363 = icmp eq ptr %26, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %363)
  %364 = load i64, ptr %26, align 4
  %365 = alloca i64, align 8
  store i64 2, ptr %365, align 4
  call void @runtime.StoreHiddenPointee(i64 %364, ptr %365, i64 8)
  store i64 0, ptr %365, align 4
  store i64 0, ptr %22, align 4
  call void @runtime.TouchConservativeSlot(ptr %22, i64 8)
  store ptr null, ptr %23, align 8
  call void @runtime.TouchConservativeSlot(ptr %23, i64 8)
  store i64 0, ptr %26, align 4
  call void @runtime.TouchConservativeSlot(ptr %26, i64 8)
  store ptr null, ptr %27, align 8
  call void @runtime.TouchConservativeSlot(ptr %27, i64 8)
  call void @runtime.ClobberPointerRegs()
  %366 = icmp eq ptr %30, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %366)
  %367 = load i64, ptr %30, align 4
  %368 = alloca i64, align 8
  store i64 3, ptr %368, align 4
  call void @runtime.StoreHiddenPointee(i64 %367, ptr %368, i64 8)
  store i64 0, ptr %368, align 4
  store i64 0, ptr %30, align 4
  call void @runtime.TouchConservativeSlot(ptr %30, i64 8)
  store ptr null, ptr %31, align 8
  call void @runtime.TouchConservativeSlot(ptr %31, i64 8)
  call void @runtime.ClobberPointerRegs()
  %369 = icmp eq ptr %32, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %369)
  %370 = load i64, ptr %32, align 4
  %371 = alloca i64, align 8
  store i64 4, ptr %371, align 4
  call void @runtime.StoreHiddenPointee(i64 %370, ptr %371, i64 8)
  store i64 0, ptr %371, align 4
  store i64 0, ptr %28, align 4
  call void @runtime.TouchConservativeSlot(ptr %28, i64 8)
  store ptr null, ptr %29, align 8
  call void @runtime.TouchConservativeSlot(ptr %29, i64 8)
  store i64 0, ptr %32, align 4
  call void @runtime.TouchConservativeSlot(ptr %32, i64 8)
  store ptr null, ptr %33, align 8
  call void @runtime.TouchConservativeSlot(ptr %33, i64 8)
  call void @runtime.ClobberPointerRegs()
  %372 = icmp eq ptr %313, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %372)
  %373 = load [2 x [2 x i64]], ptr %313, align 4
  store [2 x [2 x i64]] zeroinitializer, ptr %313, align 4
  call void @runtime.ClobberPointerRegs()
  %374 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 1, i64 2)
  %375 = getelementptr inbounds [2 x i64], ptr %313, i64 %374
  %376 = icmp eq ptr %375, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %376)
  %377 = load [2 x i64], ptr %375, align 4
  store [2 x i64] %377, ptr %312, align 4
  %378 = icmp eq ptr %312, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %378)
  %379 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 0, i64 2)
  %380 = getelementptr inbounds i64, ptr %312, i64 %379
  %381 = ptrtoint ptr %380 to i64
  %382 = and i64 %381, 72057594037927935
  %383 = xor i64 %382, 25399393228665167
  %384 = shl i64 %383, 17
  %385 = select i1 false, i64 0, i64 %384
  %386 = lshr i64 %383, 39
  %387 = select i1 false, i64 0, i64 %386
  %388 = or i64 %385, %387
  %389 = and i64 %388, 72057594037927935
  %390 = or i64 %389, -6557241057451442176
  store i64 %390, ptr %34, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %35, i64 %390)
  call void @runtime.ClobberPointerRegs()
  %391 = icmp eq ptr %34, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %391)
  %392 = load i64, ptr %34, align 4
  %393 = alloca i64, align 8
  call void @runtime.LoadHiddenPointee(ptr %393, i64 %392, i64 8)
  %394 = icmp eq ptr %393, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %394)
  %395 = load i64, ptr %393, align 4
  store i64 0, ptr %393, align 4
  store i64 0, ptr %34, align 4
  call void @runtime.TouchConservativeSlot(ptr %34, i64 8)
  store ptr null, ptr %35, align 8
  call void @runtime.TouchConservativeSlot(ptr %35, i64 8)
  call void @runtime.ClobberPointerRegs()
  %396 = icmp eq ptr %312, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %396)
  %397 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 1, i64 2)
  %398 = getelementptr inbounds i64, ptr %312, i64 %397
  %399 = ptrtoint ptr %398 to i64
  %400 = and i64 %399, 72057594037927935
  %401 = xor i64 %400, 25399393228665167
  %402 = shl i64 %401, 17
  %403 = select i1 false, i64 0, i64 %402
  %404 = lshr i64 %401, 39
  %405 = select i1 false, i64 0, i64 %404
  %406 = or i64 %403, %405
  %407 = and i64 %406, 72057594037927935
  %408 = or i64 %407, -6557241057451442176
  store i64 %408, ptr %36, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %37, i64 %408)
  call void @runtime.ClobberPointerRegs()
  %409 = icmp eq ptr %36, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %409)
  %410 = load i64, ptr %36, align 4
  %411 = alloca i64, align 8
  call void @runtime.LoadHiddenPointee(ptr %411, i64 %410, i64 8)
  %412 = icmp eq ptr %411, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %412)
  %413 = load i64, ptr %411, align 4
  store i64 0, ptr %411, align 4
  store [2 x i64] zeroinitializer, ptr %312, align 4
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %36, align 4
  call void @runtime.TouchConservativeSlot(ptr %36, i64 8)
  store ptr null, ptr %37, align 8
  call void @runtime.TouchConservativeSlot(ptr %37, i64 8)
  call void @runtime.ClobberPointerRegs()
  %414 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %395)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %413)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %414)
  %415 = alloca [5 x i64], align 8
  call void @llvm.memset(ptr %415, i8 0, i64 40, i1 false)
  %416 = icmp eq ptr %415, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %416)
  %417 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 0, i64 5)
  %418 = getelementptr inbounds i64, ptr %415, i64 %417
  %419 = ptrtoint ptr %418 to i64
  %420 = and i64 %419, 72057594037927935
  %421 = xor i64 %420, 25399393228665167
  %422 = shl i64 %421, 17
  %423 = select i1 false, i64 0, i64 %422
  %424 = lshr i64 %421, 39
  %425 = select i1 false, i64 0, i64 %424
  %426 = or i64 %423, %425
  %427 = and i64 %426, 72057594037927935
  %428 = or i64 %427, -6557241057451442176
  store i64 %428, ptr %38, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %39, i64 %428)
  call void @runtime.ClobberPointerRegs()
  %429 = icmp eq ptr %415, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %429)
  %430 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 1, i64 5)
  %431 = getelementptr inbounds i64, ptr %415, i64 %430
  %432 = ptrtoint ptr %431 to i64
  %433 = and i64 %432, 72057594037927935
  %434 = xor i64 %433, 25399393228665167
  %435 = shl i64 %434, 17
  %436 = select i1 false, i64 0, i64 %435
  %437 = lshr i64 %434, 39
  %438 = select i1 false, i64 0, i64 %437
  %439 = or i64 %436, %438
  %440 = and i64 %439, 72057594037927935
  %441 = or i64 %440, -6557241057451442176
  store i64 %441, ptr %40, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %41, i64 %441)
  call void @runtime.ClobberPointerRegs()
  %442 = icmp eq ptr %415, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %442)
  %443 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 2, i64 5)
  %444 = getelementptr inbounds i64, ptr %415, i64 %443
  %445 = ptrtoint ptr %444 to i64
  %446 = and i64 %445, 72057594037927935
  %447 = xor i64 %446, 25399393228665167
  %448 = shl i64 %447, 17
  %449 = select i1 false, i64 0, i64 %448
  %450 = lshr i64 %447, 39
  %451 = select i1 false, i64 0, i64 %450
  %452 = or i64 %449, %451
  %453 = and i64 %452, 72057594037927935
  %454 = or i64 %453, -6557241057451442176
  store i64 %454, ptr %42, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %43, i64 %454)
  call void @runtime.ClobberPointerRegs()
  %455 = icmp eq ptr %415, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %455)
  %456 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 3, i64 5)
  %457 = getelementptr inbounds i64, ptr %415, i64 %456
  %458 = ptrtoint ptr %457 to i64
  %459 = and i64 %458, 72057594037927935
  %460 = xor i64 %459, 25399393228665167
  %461 = shl i64 %460, 17
  %462 = select i1 false, i64 0, i64 %461
  %463 = lshr i64 %460, 39
  %464 = select i1 false, i64 0, i64 %463
  %465 = or i64 %462, %464
  %466 = and i64 %465, 72057594037927935
  %467 = or i64 %466, -6557241057451442176
  store i64 %467, ptr %44, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %45, i64 %467)
  call void @runtime.ClobberPointerRegs()
  %468 = icmp eq ptr %415, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %468)
  %469 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 4, i64 5)
  %470 = getelementptr inbounds i64, ptr %415, i64 %469
  %471 = ptrtoint ptr %470 to i64
  %472 = and i64 %471, 72057594037927935
  %473 = xor i64 %472, 25399393228665167
  %474 = shl i64 %473, 17
  %475 = select i1 false, i64 0, i64 %474
  %476 = lshr i64 %473, 39
  %477 = select i1 false, i64 0, i64 %476
  %478 = or i64 %475, %477
  %479 = and i64 %478, 72057594037927935
  %480 = or i64 %479, -6557241057451442176
  store i64 %480, ptr %46, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %47, i64 %480)
  call void @runtime.ClobberPointerRegs()
  %481 = icmp eq ptr %38, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %481)
  %482 = load i64, ptr %38, align 4
  %483 = alloca i64, align 8
  store i64 1, ptr %483, align 4
  call void @runtime.StoreHiddenPointee(i64 %482, ptr %483, i64 8)
  store i64 0, ptr %483, align 4
  store i64 0, ptr %38, align 4
  call void @runtime.TouchConservativeSlot(ptr %38, i64 8)
  store ptr null, ptr %39, align 8
  call void @runtime.TouchConservativeSlot(ptr %39, i64 8)
  call void @runtime.ClobberPointerRegs()
  %484 = icmp eq ptr %40, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %484)
  %485 = load i64, ptr %40, align 4
  %486 = alloca i64, align 8
  store i64 2, ptr %486, align 4
  call void @runtime.StoreHiddenPointee(i64 %485, ptr %486, i64 8)
  store i64 0, ptr %486, align 4
  store i64 0, ptr %40, align 4
  call void @runtime.TouchConservativeSlot(ptr %40, i64 8)
  store ptr null, ptr %41, align 8
  call void @runtime.TouchConservativeSlot(ptr %41, i64 8)
  call void @runtime.ClobberPointerRegs()
  %487 = icmp eq ptr %42, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %487)
  %488 = load i64, ptr %42, align 4
  %489 = alloca i64, align 8
  store i64 3, ptr %489, align 4
  call void @runtime.StoreHiddenPointee(i64 %488, ptr %489, i64 8)
  store i64 0, ptr %489, align 4
  store i64 0, ptr %42, align 4
  call void @runtime.TouchConservativeSlot(ptr %42, i64 8)
  store ptr null, ptr %43, align 8
  call void @runtime.TouchConservativeSlot(ptr %43, i64 8)
  call void @runtime.ClobberPointerRegs()
  %490 = icmp eq ptr %44, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %490)
  %491 = load i64, ptr %44, align 4
  %492 = alloca i64, align 8
  store i64 4, ptr %492, align 4
  call void @runtime.StoreHiddenPointee(i64 %491, ptr %492, i64 8)
  store i64 0, ptr %492, align 4
  store i64 0, ptr %44, align 4
  call void @runtime.TouchConservativeSlot(ptr %44, i64 8)
  store ptr null, ptr %45, align 8
  call void @runtime.TouchConservativeSlot(ptr %45, i64 8)
  call void @runtime.ClobberPointerRegs()
  %493 = icmp eq ptr %46, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %493)
  %494 = load i64, ptr %46, align 4
  %495 = alloca i64, align 8
  store i64 5, ptr %495, align 4
  call void @runtime.StoreHiddenPointee(i64 %494, ptr %495, i64 8)
  store i64 0, ptr %495, align 4
  store i64 0, ptr %46, align 4
  call void @runtime.TouchConservativeSlot(ptr %46, i64 8)
  store ptr null, ptr %47, align 8
  call void @runtime.TouchConservativeSlot(ptr %47, i64 8)
  call void @runtime.ClobberPointerRegs()
  %496 = icmp eq ptr %415, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %496)
  %497 = load [5 x i64], ptr %415, align 4
  store [5 x i64] zeroinitializer, ptr %415, align 4
  call void @runtime.ClobberPointerRegs()
  %498 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 2, i64 5)
  %499 = getelementptr inbounds i64, ptr %415, i64 %498
  %500 = icmp eq ptr %499, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %500)
  %501 = load i64, ptr %499, align 4
  %502 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %501)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %502)
  %503 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 2, i64 6)
  %504 = getelementptr inbounds i8, ptr @0, i64 %503
  %505 = icmp eq ptr %504, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %505)
  %506 = load i8, ptr %504, align 1
  %507 = zext i8 %506 to i64
  %508 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringFromUint64"(i64 %507)
  %509 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %508, ptr %509, align 8
  %510 = icmp eq ptr %509, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %510)
  %511 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %509, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %511, ptr %49, align 8
  %512 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %511, 0
  %513 = ptrtoint ptr %512 to i64
  %514 = and i64 %513, 72057594037927935
  %515 = xor i64 %514, 25399393228665167
  %516 = shl i64 %515, 17
  %517 = select i1 false, i64 0, i64 %516
  %518 = lshr i64 %515, 39
  %519 = select i1 false, i64 0, i64 %518
  %520 = or i64 %517, %519
  %521 = and i64 %520, 72057594037927935
  %522 = or i64 %521, -6557241057451442176
  %523 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %511, 1
  %524 = insertvalue { i64, i64 } undef, i64 %522, 0
  %525 = insertvalue { i64, i64 } %524, i64 %523, 1
  store { i64, i64 } %525, ptr %48, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %509, align 8
  call void @runtime.TouchConservativeSlot(ptr %509, i64 16)
  call void @runtime.ClobberPointerRegs()
  %526 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %527 = icmp eq ptr %49, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %527)
  %528 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %49, align 8
  store { i64, i64 } zeroinitializer, ptr %48, align 4
  call void @runtime.TouchConservativeSlot(ptr %48, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %49, align 8
  call void @runtime.TouchConservativeSlot(ptr %49, i64 16)
  call void @runtime.ClobberPointerRegs()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %528)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %526)
  %529 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 1, i64 6)
  %530 = getelementptr inbounds i8, ptr @0, i64 %529
  %531 = icmp eq ptr %530, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %531)
  %532 = load i8, ptr %530, align 1
  %533 = zext i8 %532 to i64
  %534 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringFromUint64"(i64 %533)
  %535 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %534, ptr %535, align 8
  %536 = icmp eq ptr %535, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %536)
  %537 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %535, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %537, ptr %51, align 8
  %538 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %537, 0
  %539 = ptrtoint ptr %538 to i64
  %540 = and i64 %539, 72057594037927935
  %541 = xor i64 %540, 25399393228665167
  %542 = shl i64 %541, 17
  %543 = select i1 false, i64 0, i64 %542
  %544 = lshr i64 %541, 39
  %545 = select i1 false, i64 0, i64 %544
  %546 = or i64 %543, %545
  %547 = and i64 %546, 72057594037927935
  %548 = or i64 %547, -6557241057451442176
  %549 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %537, 1
  %550 = insertvalue { i64, i64 } undef, i64 %548, 0
  %551 = insertvalue { i64, i64 } %550, i64 %549, 1
  store { i64, i64 } %551, ptr %50, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %535, align 8
  call void @runtime.TouchConservativeSlot(ptr %535, i64 16)
  call void @runtime.ClobberPointerRegs()
  %552 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %553 = icmp eq ptr %51, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %553)
  %554 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %51, align 8
  store { i64, i64 } zeroinitializer, ptr %50, align 4
  call void @runtime.TouchConservativeSlot(ptr %50, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %51, align 8
  call void @runtime.TouchConservativeSlot(ptr %51, i64 16)
  call void @runtime.ClobberPointerRegs()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %554)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %552)
  %555 = alloca [2 x i64], align 8
  call void @llvm.memset(ptr %555, i8 0, i64 16, i1 false)
  %556 = icmp eq ptr %555, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %556)
  %557 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 0, i64 2)
  %558 = getelementptr inbounds i64, ptr %555, i64 %557
  %559 = ptrtoint ptr %558 to i64
  %560 = and i64 %559, 72057594037927935
  %561 = xor i64 %560, 25399393228665167
  %562 = shl i64 %561, 17
  %563 = select i1 false, i64 0, i64 %562
  %564 = lshr i64 %561, 39
  %565 = select i1 false, i64 0, i64 %564
  %566 = or i64 %563, %565
  %567 = and i64 %566, 72057594037927935
  %568 = or i64 %567, -6557241057451442176
  store i64 %568, ptr %52, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %53, i64 %568)
  call void @runtime.ClobberPointerRegs()
  %569 = icmp eq ptr %555, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %569)
  %570 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 1, i64 2)
  %571 = getelementptr inbounds i64, ptr %555, i64 %570
  %572 = ptrtoint ptr %571 to i64
  %573 = and i64 %572, 72057594037927935
  %574 = xor i64 %573, 25399393228665167
  %575 = shl i64 %574, 17
  %576 = select i1 false, i64 0, i64 %575
  %577 = lshr i64 %574, 39
  %578 = select i1 false, i64 0, i64 %577
  %579 = or i64 %576, %578
  %580 = and i64 %579, 72057594037927935
  %581 = or i64 %580, -6557241057451442176
  store i64 %581, ptr %54, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %55, i64 %581)
  call void @runtime.ClobberPointerRegs()
  %582 = icmp eq ptr %52, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %582)
  %583 = load i64, ptr %52, align 4
  %584 = alloca i64, align 8
  store i64 1, ptr %584, align 4
  call void @runtime.StoreHiddenPointee(i64 %583, ptr %584, i64 8)
  store i64 0, ptr %584, align 4
  store i64 0, ptr %52, align 4
  call void @runtime.TouchConservativeSlot(ptr %52, i64 8)
  store ptr null, ptr %53, align 8
  call void @runtime.TouchConservativeSlot(ptr %53, i64 8)
  call void @runtime.ClobberPointerRegs()
  %585 = icmp eq ptr %54, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %585)
  %586 = load i64, ptr %54, align 4
  %587 = alloca i64, align 8
  store i64 2, ptr %587, align 4
  call void @runtime.StoreHiddenPointee(i64 %586, ptr %587, i64 8)
  store i64 0, ptr %587, align 4
  store i64 0, ptr %54, align 4
  call void @runtime.TouchConservativeSlot(ptr %54, i64 8)
  store ptr null, ptr %55, align 8
  call void @runtime.TouchConservativeSlot(ptr %55, i64 8)
  call void @runtime.ClobberPointerRegs()
  %588 = ptrtoint ptr %555 to i64
  %589 = and i64 %588, 72057594037927935
  %590 = xor i64 %589, 25399393228665167
  %591 = shl i64 %590, 17
  %592 = select i1 false, i64 0, i64 %591
  %593 = lshr i64 %590, 39
  %594 = select i1 false, i64 0, i64 %593
  %595 = or i64 %592, %594
  %596 = and i64 %595, 72057594037927935
  %597 = or i64 %596, -6557241057451442176
  store i64 %597, ptr %56, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %57, i64 %597)
  call void @runtime.ClobberPointerRegs()
  %598 = icmp eq ptr %56, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %598)
  %599 = load i64, ptr %56, align 4
  %600 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 1, i64 2)
  %601 = mul i64 %600, 8
  %602 = call i64 @runtime.AdvanceHiddenPointer(i64 %599, i64 %601)
  store i64 %602, ptr %58, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %59, i64 %602)
  %603 = icmp eq ptr %58, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %603)
  %604 = load i64, ptr %58, align 4
  %605 = alloca i64, align 8
  call void @runtime.LoadHiddenPointee(ptr %605, i64 %604, i64 8)
  %606 = icmp eq ptr %605, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %606)
  %607 = load i64, ptr %605, align 4
  store i64 0, ptr %605, align 4
  store [2 x i64] zeroinitializer, ptr %555, align 4
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %56, align 4
  call void @runtime.TouchConservativeSlot(ptr %56, i64 8)
  store ptr null, ptr %57, align 8
  call void @runtime.TouchConservativeSlot(ptr %57, i64 8)
  store i64 0, ptr %58, align 4
  call void @runtime.TouchConservativeSlot(ptr %58, i64 8)
  store ptr null, ptr %59, align 8
  call void @runtime.TouchConservativeSlot(ptr %59, i64 8)
  call void @runtime.ClobberPointerRegs()
  %608 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %607)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %608)
  %609 = call i64 @runtime.AllocZHidden(i64 32)
  store i64 %609, ptr %60, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %61, i64 %609)
  %610 = icmp eq ptr %60, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %610)
  %611 = load i64, ptr %60, align 4
  %612 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 0, i64 4)
  %613 = mul i64 %612, 8
  %614 = call i64 @runtime.AdvanceHiddenPointer(i64 %611, i64 %613)
  store i64 %614, ptr %62, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %63, i64 %614)
  %615 = icmp eq ptr %62, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %615)
  %616 = load i64, ptr %62, align 4
  %617 = alloca i64, align 8
  store i64 1, ptr %617, align 4
  call void @runtime.StoreHiddenPointee(i64 %616, ptr %617, i64 8)
  store i64 0, ptr %617, align 4
  store i64 0, ptr %62, align 4
  call void @runtime.TouchConservativeSlot(ptr %62, i64 8)
  store ptr null, ptr %63, align 8
  call void @runtime.TouchConservativeSlot(ptr %63, i64 8)
  call void @runtime.ClobberPointerRegs()
  %618 = icmp eq ptr %60, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %618)
  %619 = load i64, ptr %60, align 4
  %620 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 1, i64 4)
  %621 = mul i64 %620, 8
  %622 = call i64 @runtime.AdvanceHiddenPointer(i64 %619, i64 %621)
  store i64 %622, ptr %64, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %65, i64 %622)
  %623 = icmp eq ptr %64, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %623)
  %624 = load i64, ptr %64, align 4
  %625 = alloca i64, align 8
  store i64 2, ptr %625, align 4
  call void @runtime.StoreHiddenPointee(i64 %624, ptr %625, i64 8)
  store i64 0, ptr %625, align 4
  store i64 0, ptr %64, align 4
  call void @runtime.TouchConservativeSlot(ptr %64, i64 8)
  store ptr null, ptr %65, align 8
  call void @runtime.TouchConservativeSlot(ptr %65, i64 8)
  call void @runtime.ClobberPointerRegs()
  %626 = icmp eq ptr %60, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %626)
  %627 = load i64, ptr %60, align 4
  %628 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 2, i64 4)
  %629 = mul i64 %628, 8
  %630 = call i64 @runtime.AdvanceHiddenPointer(i64 %627, i64 %629)
  store i64 %630, ptr %66, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %67, i64 %630)
  %631 = icmp eq ptr %66, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %631)
  %632 = load i64, ptr %66, align 4
  %633 = alloca i64, align 8
  store i64 3, ptr %633, align 4
  call void @runtime.StoreHiddenPointee(i64 %632, ptr %633, i64 8)
  store i64 0, ptr %633, align 4
  store i64 0, ptr %66, align 4
  call void @runtime.TouchConservativeSlot(ptr %66, i64 8)
  store ptr null, ptr %67, align 8
  call void @runtime.TouchConservativeSlot(ptr %67, i64 8)
  call void @runtime.ClobberPointerRegs()
  %634 = icmp eq ptr %60, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %634)
  %635 = load i64, ptr %60, align 4
  %636 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 3, i64 4)
  %637 = mul i64 %636, 8
  %638 = call i64 @runtime.AdvanceHiddenPointer(i64 %635, i64 %637)
  store i64 %638, ptr %68, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %69, i64 %638)
  %639 = icmp eq ptr %68, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %639)
  %640 = load i64, ptr %68, align 4
  %641 = alloca i64, align 8
  store i64 4, ptr %641, align 4
  call void @runtime.StoreHiddenPointee(i64 %640, ptr %641, i64 8)
  store i64 0, ptr %641, align 4
  store i64 0, ptr %68, align 4
  call void @runtime.TouchConservativeSlot(ptr %68, i64 8)
  store ptr null, ptr %69, align 8
  call void @runtime.TouchConservativeSlot(ptr %69, i64 8)
  call void @runtime.ClobberPointerRegs()
  %642 = icmp eq ptr %60, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %642)
  %643 = load i64, ptr %60, align 4
  %644 = and i64 %643, 72057594037927935
  %645 = lshr i64 %644, 17
  %646 = select i1 false, i64 0, i64 %645
  %647 = shl i64 %644, 39
  %648 = select i1 false, i64 0, i64 %647
  %649 = or i64 %646, %648
  %650 = and i64 %649, 72057594037927935
  %651 = xor i64 %650, 25399393228665167
  %652 = inttoptr i64 %651 to ptr
  %653 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %652, 0
  %654 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %653, i64 4, 1
  %655 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %654, i64 4, 2
  %656 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %655, ptr %656, align 8
  %657 = icmp eq ptr %656, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %657)
  %658 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %656, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %658, ptr %71, align 8
  %659 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %658, 0
  %660 = ptrtoint ptr %659 to i64
  %661 = and i64 %660, 72057594037927935
  %662 = xor i64 %661, 25399393228665167
  %663 = shl i64 %662, 17
  %664 = select i1 false, i64 0, i64 %663
  %665 = lshr i64 %662, 39
  %666 = select i1 false, i64 0, i64 %665
  %667 = or i64 %664, %666
  %668 = and i64 %667, 72057594037927935
  %669 = or i64 %668, -6557241057451442176
  %670 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %658, 1
  %671 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %658, 2
  %672 = insertvalue { i64, i64, i64 } undef, i64 %669, 0
  %673 = insertvalue { i64, i64, i64 } %672, i64 %670, 1
  %674 = insertvalue { i64, i64, i64 } %673, i64 %671, 2
  store { i64, i64, i64 } %674, ptr %70, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %656, align 8
  call void @runtime.TouchConservativeSlot(ptr %656, i64 24)
  call void @runtime.ClobberPointerRegs()
  %675 = icmp eq ptr %70, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %675)
  %676 = load { i64, i64, i64 }, ptr %70, align 4
  %677 = extractvalue { i64, i64, i64 } %676, 0
  %678 = extractvalue { i64, i64, i64 } %676, 1
  %679 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 1, i64 %678)
  %680 = mul i64 %679, 8
  %681 = call i64 @runtime.AdvanceHiddenPointer(i64 %677, i64 %680)
  store i64 %681, ptr %72, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %73, i64 %681)
  %682 = icmp eq ptr %72, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %682)
  %683 = load i64, ptr %72, align 4
  %684 = alloca i64, align 8
  call void @runtime.LoadHiddenPointee(ptr %684, i64 %683, i64 8)
  %685 = icmp eq ptr %684, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %685)
  %686 = load i64, ptr %684, align 4
  store i64 0, ptr %684, align 4
  store i64 0, ptr %60, align 4
  call void @runtime.TouchConservativeSlot(ptr %60, i64 8)
  store ptr null, ptr %61, align 8
  call void @runtime.TouchConservativeSlot(ptr %61, i64 8)
  store { i64, i64, i64 } zeroinitializer, ptr %70, align 4
  call void @runtime.TouchConservativeSlot(ptr %70, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %71, align 8
  call void @runtime.TouchConservativeSlot(ptr %71, i64 24)
  store i64 0, ptr %72, align 4
  call void @runtime.TouchConservativeSlot(ptr %72, i64 8)
  store ptr null, ptr %73, align 8
  call void @runtime.TouchConservativeSlot(ptr %73, i64 8)
  call void @runtime.ClobberPointerRegs()
  %687 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %686)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %687)
  %688 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 0, i64 2)
  %689 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 0)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %689)
  ret void
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1)

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

declare i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64, i64)

declare void @runtime.StoreHiddenPointerRoot(ptr, i64)

declare void @runtime.ClobberPointerRegs()

declare void @runtime.StoreHiddenPointee(i64, ptr, i64)

declare void @runtime.TouchConservativeSlot(ptr, i64)

declare void @runtime.LoadHiddenPointee(ptr, i64, i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr)

declare i64 @runtime.AdvanceHiddenPointer(i64, i64)

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringFromUint64"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare i64 @runtime.AllocZHidden(i64)

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
