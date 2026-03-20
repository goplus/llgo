; ModuleID = 'github.com/goplus/llgo/cl/_testrt/slice2array'
source_filename = "github.com/goplus/llgo/cl/_testrt/slice2array"

%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }

@"github.com/goplus/llgo/cl/_testrt/slice2array.init$guard" = global i1 false, align 1

define void @"github.com/goplus/llgo/cl/_testrt/slice2array.init"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/slice2array.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/slice2array.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/slice2array.main"() {
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
  %14 = alloca { i64, i64, i64 }, align 8
  %15 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %15, align 8
  %16 = alloca i64, align 8
  %17 = alloca ptr, align 8
  store ptr null, ptr %17, align 8
  %18 = alloca i64, align 8
  %19 = alloca ptr, align 8
  store ptr null, ptr %19, align 8
  %20 = alloca i64, align 8
  %21 = alloca ptr, align 8
  store ptr null, ptr %21, align 8
  %22 = call i64 @runtime.AllocZHidden(i64 4)
  store i64 %22, ptr %0, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %1, i64 %22)
  %23 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %23)
  %24 = load i64, ptr %0, align 4
  %25 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 0, i64 4)
  %26 = call i64 @runtime.AdvanceHiddenPointer(i64 %24, i64 %25)
  store i64 %26, ptr %2, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %3, i64 %26)
  %27 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %27)
  %28 = load i64, ptr %0, align 4
  %29 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 1, i64 4)
  %30 = call i64 @runtime.AdvanceHiddenPointer(i64 %28, i64 %29)
  store i64 %30, ptr %4, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %5, i64 %30)
  %31 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %31)
  %32 = load i64, ptr %0, align 4
  %33 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 2, i64 4)
  %34 = call i64 @runtime.AdvanceHiddenPointer(i64 %32, i64 %33)
  store i64 %34, ptr %6, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %7, i64 %34)
  %35 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %35)
  %36 = load i64, ptr %0, align 4
  %37 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 3, i64 4)
  %38 = call i64 @runtime.AdvanceHiddenPointer(i64 %36, i64 %37)
  store i64 %38, ptr %8, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %9, i64 %38)
  %39 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %39)
  %40 = load i64, ptr %2, align 4
  %41 = alloca i8, align 1
  store i8 1, ptr %41, align 1
  call void @runtime.StoreHiddenPointee(i64 %40, ptr %41, i64 1)
  store i8 0, ptr %41, align 1
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  call void @runtime.ClobberPointerRegs()
  %42 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %42)
  %43 = load i64, ptr %4, align 4
  %44 = alloca i8, align 1
  store i8 2, ptr %44, align 1
  call void @runtime.StoreHiddenPointee(i64 %43, ptr %44, i64 1)
  store i8 0, ptr %44, align 1
  store i64 0, ptr %4, align 4
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  store ptr null, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  call void @runtime.ClobberPointerRegs()
  %45 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %45)
  %46 = load i64, ptr %6, align 4
  %47 = alloca i8, align 1
  store i8 3, ptr %47, align 1
  call void @runtime.StoreHiddenPointee(i64 %46, ptr %47, i64 1)
  store i8 0, ptr %47, align 1
  store i64 0, ptr %6, align 4
  call void @runtime.TouchConservativeSlot(ptr %6, i64 8)
  store ptr null, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 8)
  call void @runtime.ClobberPointerRegs()
  %48 = icmp eq ptr %8, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %48)
  %49 = load i64, ptr %8, align 4
  %50 = alloca i8, align 1
  store i8 4, ptr %50, align 1
  call void @runtime.StoreHiddenPointee(i64 %49, ptr %50, i64 1)
  store i8 0, ptr %50, align 1
  store i64 0, ptr %8, align 4
  call void @runtime.TouchConservativeSlot(ptr %8, i64 8)
  store ptr null, ptr %9, align 8
  call void @runtime.TouchConservativeSlot(ptr %9, i64 8)
  call void @runtime.ClobberPointerRegs()
  %51 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %51)
  %52 = load i64, ptr %0, align 4
  %53 = and i64 %52, 72057594037927935
  %54 = lshr i64 %53, 17
  %55 = select i1 false, i64 0, i64 %54
  %56 = shl i64 %53, 39
  %57 = select i1 false, i64 0, i64 %56
  %58 = or i64 %55, %57
  %59 = and i64 %58, 72057594037927935
  %60 = xor i64 %59, 25399393228665167
  %61 = inttoptr i64 %60 to ptr
  %62 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %61, 0
  %63 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %62, i64 4, 1
  %64 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %63, i64 4, 2
  %65 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %64, ptr %65, align 8
  %66 = icmp eq ptr %65, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %66)
  %67 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %65, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %67, ptr %11, align 8
  %68 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %67, 0
  %69 = ptrtoint ptr %68 to i64
  %70 = and i64 %69, 72057594037927935
  %71 = xor i64 %70, 25399393228665167
  %72 = shl i64 %71, 17
  %73 = select i1 false, i64 0, i64 %72
  %74 = lshr i64 %71, 39
  %75 = select i1 false, i64 0, i64 %74
  %76 = or i64 %73, %75
  %77 = and i64 %76, 72057594037927935
  %78 = or i64 %77, -6557241057451442176
  %79 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %67, 1
  %80 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %67, 2
  %81 = insertvalue { i64, i64, i64 } undef, i64 %78, 0
  %82 = insertvalue { i64, i64, i64 } %81, i64 %79, 1
  %83 = insertvalue { i64, i64, i64 } %82, i64 %80, 2
  store { i64, i64, i64 } %83, ptr %10, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %65, align 8
  call void @runtime.TouchConservativeSlot(ptr %65, i64 24)
  call void @runtime.ClobberPointerRegs()
  %84 = icmp eq ptr %11, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %84)
  %85 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %11, align 8
  %86 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SliceToArrayPtr"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %85, i64 4)
  %87 = ptrtoint ptr %86 to i64
  %88 = and i64 %87, 72057594037927935
  %89 = xor i64 %88, 25399393228665167
  %90 = shl i64 %89, 17
  %91 = select i1 false, i64 0, i64 %90
  %92 = lshr i64 %89, 39
  %93 = select i1 false, i64 0, i64 %92
  %94 = or i64 %91, %93
  %95 = and i64 %94, 72057594037927935
  %96 = or i64 %95, -6557241057451442176
  store i64 %96, ptr %12, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %13, i64 %96)
  call void @runtime.ClobberPointerRegs()
  store { i64, i64, i64 } zeroinitializer, ptr %10, align 4
  call void @runtime.TouchConservativeSlot(ptr %10, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %11, align 8
  call void @runtime.TouchConservativeSlot(ptr %11, i64 24)
  call void @runtime.ClobberPointerRegs()
  %97 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %97)
  %98 = load i64, ptr %0, align 4
  %99 = alloca [4 x i8], align 1
  call void @runtime.LoadHiddenPointee(ptr %99, i64 %98, i64 4)
  %100 = icmp eq ptr %99, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %100)
  %101 = load [4 x i8], ptr %99, align 1
  store [4 x i8] zeroinitializer, ptr %99, align 1
  %102 = icmp eq ptr %12, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %102)
  %103 = load i64, ptr %12, align 4
  %104 = alloca [4 x i8], align 1
  call void @runtime.LoadHiddenPointee(ptr %104, i64 %103, i64 4)
  %105 = icmp eq ptr %104, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %105)
  %106 = load [4 x i8], ptr %104, align 1
  store [4 x i8] zeroinitializer, ptr %104, align 1
  store i64 0, ptr %12, align 4
  call void @runtime.TouchConservativeSlot(ptr %12, i64 8)
  store ptr null, ptr %13, align 8
  call void @runtime.TouchConservativeSlot(ptr %13, i64 8)
  call void @runtime.ClobberPointerRegs()
  %107 = extractvalue [4 x i8] %101, 0
  %108 = extractvalue [4 x i8] %106, 0
  %109 = icmp eq i8 %107, %108
  %110 = and i1 true, %109
  %111 = extractvalue [4 x i8] %101, 1
  %112 = extractvalue [4 x i8] %106, 1
  %113 = icmp eq i8 %111, %112
  %114 = and i1 %110, %113
  %115 = extractvalue [4 x i8] %101, 2
  %116 = extractvalue [4 x i8] %106, 2
  %117 = icmp eq i8 %115, %116
  %118 = and i1 %114, %117
  %119 = extractvalue [4 x i8] %101, 3
  %120 = extractvalue [4 x i8] %106, 3
  %121 = icmp eq i8 %119, %120
  %122 = and i1 %118, %121
  %123 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %122)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %123)
  %124 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %124)
  %125 = load i64, ptr %0, align 4
  %126 = and i64 %125, 72057594037927935
  %127 = lshr i64 %126, 17
  %128 = select i1 false, i64 0, i64 %127
  %129 = shl i64 %126, 39
  %130 = select i1 false, i64 0, i64 %129
  %131 = or i64 %128, %130
  %132 = and i64 %131, 72057594037927935
  %133 = xor i64 %132, 25399393228665167
  %134 = inttoptr i64 %133 to ptr
  %135 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %134, 0
  %136 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %135, i64 4, 1
  %137 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %136, i64 4, 2
  %138 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %137, ptr %138, align 8
  %139 = icmp eq ptr %138, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %139)
  %140 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %138, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %140, ptr %15, align 8
  %141 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %140, 0
  %142 = ptrtoint ptr %141 to i64
  %143 = and i64 %142, 72057594037927935
  %144 = xor i64 %143, 25399393228665167
  %145 = shl i64 %144, 17
  %146 = select i1 false, i64 0, i64 %145
  %147 = lshr i64 %144, 39
  %148 = select i1 false, i64 0, i64 %147
  %149 = or i64 %146, %148
  %150 = and i64 %149, 72057594037927935
  %151 = or i64 %150, -6557241057451442176
  %152 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %140, 1
  %153 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %140, 2
  %154 = insertvalue { i64, i64, i64 } undef, i64 %151, 0
  %155 = insertvalue { i64, i64, i64 } %154, i64 %152, 1
  %156 = insertvalue { i64, i64, i64 } %155, i64 %153, 2
  store { i64, i64, i64 } %156, ptr %14, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %138, align 8
  call void @runtime.TouchConservativeSlot(ptr %138, i64 24)
  call void @runtime.ClobberPointerRegs()
  %157 = icmp eq ptr %15, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %157)
  %158 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %15, align 8
  %159 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SliceToArrayPtr"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %158, i64 2)
  %160 = ptrtoint ptr %159 to i64
  %161 = and i64 %160, 72057594037927935
  %162 = xor i64 %161, 25399393228665167
  %163 = shl i64 %162, 17
  %164 = select i1 false, i64 0, i64 %163
  %165 = lshr i64 %162, 39
  %166 = select i1 false, i64 0, i64 %165
  %167 = or i64 %164, %166
  %168 = and i64 %167, 72057594037927935
  %169 = or i64 %168, -6557241057451442176
  store i64 %169, ptr %16, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %17, i64 %169)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %0, align 4
  call void @runtime.TouchConservativeSlot(ptr %0, i64 8)
  store ptr null, ptr %1, align 8
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  store { i64, i64, i64 } zeroinitializer, ptr %14, align 4
  call void @runtime.TouchConservativeSlot(ptr %14, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %15, align 8
  call void @runtime.TouchConservativeSlot(ptr %15, i64 24)
  call void @runtime.ClobberPointerRegs()
  %170 = icmp eq ptr %16, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %170)
  %171 = load i64, ptr %16, align 4
  %172 = alloca [2 x i8], align 1
  call void @runtime.LoadHiddenPointee(ptr %172, i64 %171, i64 2)
  %173 = icmp eq ptr %172, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %173)
  %174 = load [2 x i8], ptr %172, align 1
  store [2 x i8] zeroinitializer, ptr %172, align 1
  store i64 0, ptr %16, align 4
  call void @runtime.TouchConservativeSlot(ptr %16, i64 8)
  store ptr null, ptr %17, align 8
  call void @runtime.TouchConservativeSlot(ptr %17, i64 8)
  call void @runtime.ClobberPointerRegs()
  %175 = alloca [2 x i8], align 1
  call void @llvm.memset(ptr %175, i8 0, i64 2, i1 false)
  %176 = icmp eq ptr %175, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %176)
  %177 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 0, i64 2)
  %178 = getelementptr inbounds i8, ptr %175, i64 %177
  %179 = ptrtoint ptr %178 to i64
  %180 = and i64 %179, 72057594037927935
  %181 = xor i64 %180, 25399393228665167
  %182 = shl i64 %181, 17
  %183 = select i1 false, i64 0, i64 %182
  %184 = lshr i64 %181, 39
  %185 = select i1 false, i64 0, i64 %184
  %186 = or i64 %183, %185
  %187 = and i64 %186, 72057594037927935
  %188 = or i64 %187, -6557241057451442176
  store i64 %188, ptr %18, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %19, i64 %188)
  call void @runtime.ClobberPointerRegs()
  %189 = icmp eq ptr %175, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %189)
  %190 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 1, i64 2)
  %191 = getelementptr inbounds i8, ptr %175, i64 %190
  %192 = ptrtoint ptr %191 to i64
  %193 = and i64 %192, 72057594037927935
  %194 = xor i64 %193, 25399393228665167
  %195 = shl i64 %194, 17
  %196 = select i1 false, i64 0, i64 %195
  %197 = lshr i64 %194, 39
  %198 = select i1 false, i64 0, i64 %197
  %199 = or i64 %196, %198
  %200 = and i64 %199, 72057594037927935
  %201 = or i64 %200, -6557241057451442176
  store i64 %201, ptr %20, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %21, i64 %201)
  call void @runtime.ClobberPointerRegs()
  %202 = icmp eq ptr %18, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %202)
  %203 = load i64, ptr %18, align 4
  %204 = alloca i8, align 1
  store i8 1, ptr %204, align 1
  call void @runtime.StoreHiddenPointee(i64 %203, ptr %204, i64 1)
  store i8 0, ptr %204, align 1
  store i64 0, ptr %18, align 4
  call void @runtime.TouchConservativeSlot(ptr %18, i64 8)
  store ptr null, ptr %19, align 8
  call void @runtime.TouchConservativeSlot(ptr %19, i64 8)
  call void @runtime.ClobberPointerRegs()
  %205 = icmp eq ptr %20, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %205)
  %206 = load i64, ptr %20, align 4
  %207 = alloca i8, align 1
  store i8 2, ptr %207, align 1
  call void @runtime.StoreHiddenPointee(i64 %206, ptr %207, i64 1)
  store i8 0, ptr %207, align 1
  store i64 0, ptr %20, align 4
  call void @runtime.TouchConservativeSlot(ptr %20, i64 8)
  store ptr null, ptr %21, align 8
  call void @runtime.TouchConservativeSlot(ptr %21, i64 8)
  call void @runtime.ClobberPointerRegs()
  %208 = icmp eq ptr %175, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %208)
  %209 = load [2 x i8], ptr %175, align 1
  store [2 x i8] zeroinitializer, ptr %175, align 1
  call void @runtime.ClobberPointerRegs()
  %210 = extractvalue [2 x i8] %174, 0
  %211 = extractvalue [2 x i8] %209, 0
  %212 = icmp eq i8 %210, %211
  %213 = and i1 true, %212
  %214 = extractvalue [2 x i8] %174, 1
  %215 = extractvalue [2 x i8] %209, 1
  %216 = icmp eq i8 %214, %215
  %217 = and i1 %213, %216
  %218 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %217)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %218)
  ret void
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1)

declare i64 @runtime.AllocZHidden(i64)

declare void @runtime.StoreHiddenPointerRoot(ptr, i64)

declare i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64, i64)

declare i64 @runtime.AdvanceHiddenPointer(i64, i64)

declare void @runtime.StoreHiddenPointee(i64, ptr, i64)

declare void @runtime.TouchConservativeSlot(ptr, i64)

declare void @runtime.ClobberPointerRegs()

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.SliceToArrayPtr"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice", i64)

declare void @runtime.LoadHiddenPointee(ptr, i64, i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr)

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
