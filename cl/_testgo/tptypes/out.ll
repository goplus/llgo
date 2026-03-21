; ModuleID = 'github.com/goplus/llgo/cl/_testgo/tptypes'
source_filename = "github.com/goplus/llgo/cl/_testgo/tptypes"

%"github.com/goplus/llgo/cl/_testgo/tptypes.Data[string]" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String" }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/cl/_testgo/tptypes.Data[int]" = type { i64 }
%"github.com/goplus/llgo/cl/_testgo/tptypes.Slice[[]int,int]" = type { %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"github.com/goplus/llgo/cl/_testgo/tptypes.Slice[[]string,string]" = type { %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }

@"github.com/goplus/llgo/cl/_testgo/tptypes.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [5 x i8] c"hello", align 1

define void @"github.com/goplus/llgo/cl/_testgo/tptypes.init"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testgo/tptypes.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testgo/tptypes.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/tptypes.main"() {
_llgo_0:
  %0 = alloca i64, align 8
  %1 = alloca ptr, align 8
  store ptr null, ptr %1, align 8
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  store ptr null, ptr %3, align 8
  %4 = alloca %"github.com/goplus/llgo/cl/_testgo/tptypes.Data[string]", align 8
  %5 = alloca { i64, i64 }, align 8
  %6 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %6, align 8
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  store ptr null, ptr %8, align 8
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 8
  store ptr null, ptr %10, align 8
  %11 = alloca { i64, i64 }, align 8
  %12 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %12, align 8
  %13 = alloca i64, align 8
  %14 = alloca ptr, align 8
  store ptr null, ptr %14, align 8
  %15 = alloca i64, align 8
  %16 = alloca ptr, align 8
  store ptr null, ptr %16, align 8
  %17 = alloca { i64, i64, i64 }, align 8
  %18 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %18, align 8
  %19 = alloca i64, align 8
  %20 = alloca ptr, align 8
  store ptr null, ptr %20, align 8
  %21 = alloca i64, align 8
  %22 = alloca ptr, align 8
  store ptr null, ptr %22, align 8
  %23 = alloca { i64, i64, i64 }, align 8
  %24 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %24, align 8
  %25 = alloca i64, align 8
  %26 = alloca ptr, align 8
  store ptr null, ptr %26, align 8
  %27 = alloca i64, align 8
  %28 = alloca ptr, align 8
  store ptr null, ptr %28, align 8
  %29 = alloca i64, align 8
  %30 = alloca ptr, align 8
  store ptr null, ptr %30, align 8
  %31 = alloca i64, align 8
  %32 = alloca ptr, align 8
  store ptr null, ptr %32, align 8
  %33 = alloca i64, align 8
  %34 = alloca ptr, align 8
  store ptr null, ptr %34, align 8
  %35 = alloca { i64, i64, i64 }, align 8
  %36 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %36, align 8
  %37 = alloca i64, align 8
  %38 = alloca ptr, align 8
  store ptr null, ptr %38, align 8
  %39 = alloca i64, align 8
  %40 = alloca ptr, align 8
  store ptr null, ptr %40, align 8
  %41 = alloca i64, align 8
  %42 = alloca ptr, align 8
  store ptr null, ptr %42, align 8
  %43 = alloca i64, align 8
  %44 = alloca ptr, align 8
  store ptr null, ptr %44, align 8
  %45 = alloca i64, align 8
  %46 = alloca ptr, align 8
  store ptr null, ptr %46, align 8
  %47 = alloca { i64, i64, i64 }, align 8
  %48 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %48, align 8
  %49 = alloca i64, align 8
  %50 = alloca ptr, align 8
  store ptr null, ptr %50, align 8
  %51 = alloca { i64, i64, i64 }, align 8
  %52 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %52, align 8
  %53 = alloca i64, align 8
  %54 = alloca ptr, align 8
  store ptr null, ptr %54, align 8
  %55 = alloca { i64, i64, i64 }, align 8
  %56 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %56, align 8
  %57 = alloca i64, align 8
  %58 = alloca ptr, align 8
  store ptr null, ptr %58, align 8
  %59 = alloca i64, align 8
  %60 = alloca ptr, align 8
  store ptr null, ptr %60, align 8
  %61 = alloca { i64, i64, i64 }, align 8
  %62 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %62, align 8
  %63 = alloca i64, align 8
  %64 = alloca ptr, align 8
  store ptr null, ptr %64, align 8
  %65 = alloca { i64, i64, i64 }, align 8
  %66 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %66, align 8
  %67 = alloca i64, align 8
  %68 = alloca ptr, align 8
  store ptr null, ptr %68, align 8
  %69 = alloca { i64, i64 }, align 8
  %70 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %70, align 8
  %71 = alloca i64, align 8
  %72 = alloca ptr, align 8
  store ptr null, ptr %72, align 8
  %73 = alloca { i64, i64, i64 }, align 8
  %74 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %74, align 8
  %75 = alloca i64, align 8
  %76 = alloca ptr, align 8
  store ptr null, ptr %76, align 8
  %77 = alloca { i64, i64, i64 }, align 8
  %78 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %78, align 8
  %79 = alloca i64, align 8
  %80 = alloca ptr, align 8
  store ptr null, ptr %80, align 8
  %81 = alloca %"github.com/goplus/llgo/cl/_testgo/tptypes.Data[int]", align 8
  call void @llvm.memset(ptr %81, i8 0, i64 8, i1 false)
  %82 = icmp eq ptr %81, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %82)
  %83 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/tptypes.Data[int]", ptr %81, i32 0, i32 0
  %84 = ptrtoint ptr %83 to i64
  %85 = and i64 %84, 72057594037927935
  %86 = xor i64 %85, 25399393228665167
  %87 = shl i64 %86, 17
  %88 = select i1 false, i64 0, i64 %87
  %89 = lshr i64 %86, 39
  %90 = select i1 false, i64 0, i64 %89
  %91 = or i64 %88, %90
  %92 = and i64 %91, 72057594037927935
  %93 = or i64 %92, -6557241057451442176
  store i64 %93, ptr %0, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %1, i64 %93)
  call void @runtime.ClobberPointerRegs()
  %94 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %94)
  %95 = load i64, ptr %0, align 4
  %96 = alloca i64, align 8
  store i64 1, ptr %96, align 4
  call void @runtime.StoreHiddenPointee(i64 %95, ptr %96, i64 8)
  store i64 0, ptr %96, align 4
  store i64 0, ptr %0, align 4
  call void @runtime.TouchConservativeSlot(ptr %0, i64 8)
  store ptr null, ptr %1, align 8
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  call void @runtime.ClobberPointerRegs()
  %97 = icmp eq ptr %81, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %97)
  %98 = load %"github.com/goplus/llgo/cl/_testgo/tptypes.Data[int]", ptr %81, align 4
  store %"github.com/goplus/llgo/cl/_testgo/tptypes.Data[int]" zeroinitializer, ptr %81, align 4
  call void @runtime.ClobberPointerRegs()
  %99 = extractvalue %"github.com/goplus/llgo/cl/_testgo/tptypes.Data[int]" %98, 0
  %100 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %99)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %100)
  %101 = alloca %"github.com/goplus/llgo/cl/_testgo/tptypes.Data[string]", align 8
  call void @llvm.memset(ptr %101, i8 0, i64 16, i1 false)
  %102 = icmp eq ptr %101, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %102)
  %103 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/tptypes.Data[string]", ptr %101, i32 0, i32 0
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
  store i64 %113, ptr %2, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %3, i64 %113)
  call void @runtime.ClobberPointerRegs()
  %114 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %114)
  %115 = load i64, ptr %2, align 4
  %116 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %116, align 8
  call void @runtime.StoreHiddenPointee(i64 %115, ptr %116, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %116, align 8
  call void @runtime.TouchConservativeSlot(ptr %116, i64 16)
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  call void @runtime.ClobberPointerRegs()
  %117 = icmp eq ptr %101, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %117)
  %118 = load %"github.com/goplus/llgo/cl/_testgo/tptypes.Data[string]", ptr %101, align 8
  store %"github.com/goplus/llgo/cl/_testgo/tptypes.Data[string]" %118, ptr %4, align 8
  store %"github.com/goplus/llgo/cl/_testgo/tptypes.Data[string]" zeroinitializer, ptr %101, align 8
  call void @runtime.TouchConservativeSlot(ptr %101, i64 16)
  call void @runtime.ClobberPointerRegs()
  %119 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %119)
  %120 = load %"github.com/goplus/llgo/cl/_testgo/tptypes.Data[string]", ptr %4, align 8
  %121 = extractvalue %"github.com/goplus/llgo/cl/_testgo/tptypes.Data[string]" %120, 0
  %122 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %121, ptr %122, align 8
  %123 = icmp eq ptr %122, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %123)
  %124 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %122, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %124, ptr %6, align 8
  %125 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %124, 0
  %126 = ptrtoint ptr %125 to i64
  %127 = and i64 %126, 72057594037927935
  %128 = xor i64 %127, 25399393228665167
  %129 = shl i64 %128, 17
  %130 = select i1 false, i64 0, i64 %129
  %131 = lshr i64 %128, 39
  %132 = select i1 false, i64 0, i64 %131
  %133 = or i64 %130, %132
  %134 = and i64 %133, 72057594037927935
  %135 = or i64 %134, -6557241057451442176
  %136 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %124, 1
  %137 = insertvalue { i64, i64 } undef, i64 %135, 0
  %138 = insertvalue { i64, i64 } %137, i64 %136, 1
  store { i64, i64 } %138, ptr %5, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %122, align 8
  call void @runtime.TouchConservativeSlot(ptr %122, i64 16)
  call void @runtime.ClobberPointerRegs()
  %139 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %140 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %140)
  %141 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %6, align 8
  store %"github.com/goplus/llgo/cl/_testgo/tptypes.Data[string]" zeroinitializer, ptr %4, align 8
  call void @runtime.TouchConservativeSlot(ptr %4, i64 16)
  store { i64, i64 } zeroinitializer, ptr %5, align 4
  call void @runtime.TouchConservativeSlot(ptr %5, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %6, align 8
  call void @runtime.TouchConservativeSlot(ptr %6, i64 16)
  call void @runtime.ClobberPointerRegs()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %141)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %139)
  %142 = alloca %"github.com/goplus/llgo/cl/_testgo/tptypes.Data[int]", align 8
  call void @llvm.memset(ptr %142, i8 0, i64 8, i1 false)
  %143 = icmp eq ptr %142, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %143)
  %144 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/tptypes.Data[int]", ptr %142, i32 0, i32 0
  %145 = ptrtoint ptr %144 to i64
  %146 = and i64 %145, 72057594037927935
  %147 = xor i64 %146, 25399393228665167
  %148 = shl i64 %147, 17
  %149 = select i1 false, i64 0, i64 %148
  %150 = lshr i64 %147, 39
  %151 = select i1 false, i64 0, i64 %150
  %152 = or i64 %149, %151
  %153 = and i64 %152, 72057594037927935
  %154 = or i64 %153, -6557241057451442176
  store i64 %154, ptr %7, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %8, i64 %154)
  call void @runtime.ClobberPointerRegs()
  %155 = icmp eq ptr %7, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %155)
  %156 = load i64, ptr %7, align 4
  %157 = alloca i64, align 8
  store i64 100, ptr %157, align 4
  call void @runtime.StoreHiddenPointee(i64 %156, ptr %157, i64 8)
  store i64 0, ptr %157, align 4
  store i64 0, ptr %7, align 4
  call void @runtime.TouchConservativeSlot(ptr %7, i64 8)
  store ptr null, ptr %8, align 8
  call void @runtime.TouchConservativeSlot(ptr %8, i64 8)
  call void @runtime.ClobberPointerRegs()
  %158 = icmp eq ptr %142, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %158)
  %159 = load %"github.com/goplus/llgo/cl/_testgo/tptypes.Data[int]", ptr %142, align 4
  store %"github.com/goplus/llgo/cl/_testgo/tptypes.Data[int]" zeroinitializer, ptr %142, align 4
  call void @runtime.ClobberPointerRegs()
  %160 = extractvalue %"github.com/goplus/llgo/cl/_testgo/tptypes.Data[int]" %159, 0
  %161 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %160)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %161)
  %162 = alloca %"github.com/goplus/llgo/cl/_testgo/tptypes.Data[string]", align 8
  call void @llvm.memset(ptr %162, i8 0, i64 16, i1 false)
  %163 = icmp eq ptr %162, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %163)
  %164 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/tptypes.Data[string]", ptr %162, i32 0, i32 0
  %165 = ptrtoint ptr %164 to i64
  %166 = and i64 %165, 72057594037927935
  %167 = xor i64 %166, 25399393228665167
  %168 = shl i64 %167, 17
  %169 = select i1 false, i64 0, i64 %168
  %170 = lshr i64 %167, 39
  %171 = select i1 false, i64 0, i64 %170
  %172 = or i64 %169, %171
  %173 = and i64 %172, 72057594037927935
  %174 = or i64 %173, -6557241057451442176
  store i64 %174, ptr %9, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %10, i64 %174)
  call void @runtime.ClobberPointerRegs()
  %175 = icmp eq ptr %9, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %175)
  %176 = load i64, ptr %9, align 4
  %177 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %177, align 8
  call void @runtime.StoreHiddenPointee(i64 %176, ptr %177, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %177, align 8
  call void @runtime.TouchConservativeSlot(ptr %177, i64 16)
  store i64 0, ptr %9, align 4
  call void @runtime.TouchConservativeSlot(ptr %9, i64 8)
  store ptr null, ptr %10, align 8
  call void @runtime.TouchConservativeSlot(ptr %10, i64 8)
  call void @runtime.ClobberPointerRegs()
  %178 = icmp eq ptr %162, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %178)
  %179 = load %"github.com/goplus/llgo/cl/_testgo/tptypes.Data[string]", ptr %162, align 8
  store %"github.com/goplus/llgo/cl/_testgo/tptypes.Data[string]" zeroinitializer, ptr %162, align 8
  call void @runtime.TouchConservativeSlot(ptr %162, i64 16)
  call void @runtime.ClobberPointerRegs()
  %180 = extractvalue %"github.com/goplus/llgo/cl/_testgo/tptypes.Data[string]" %179, 0
  %181 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %180, ptr %181, align 8
  %182 = icmp eq ptr %181, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %182)
  %183 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %181, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %183, ptr %12, align 8
  %184 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %183, 0
  %185 = ptrtoint ptr %184 to i64
  %186 = and i64 %185, 72057594037927935
  %187 = xor i64 %186, 25399393228665167
  %188 = shl i64 %187, 17
  %189 = select i1 false, i64 0, i64 %188
  %190 = lshr i64 %187, 39
  %191 = select i1 false, i64 0, i64 %190
  %192 = or i64 %189, %191
  %193 = and i64 %192, 72057594037927935
  %194 = or i64 %193, -6557241057451442176
  %195 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %183, 1
  %196 = insertvalue { i64, i64 } undef, i64 %194, 0
  %197 = insertvalue { i64, i64 } %196, i64 %195, 1
  store { i64, i64 } %197, ptr %11, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %181, align 8
  call void @runtime.TouchConservativeSlot(ptr %181, i64 16)
  call void @runtime.ClobberPointerRegs()
  %198 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %199 = icmp eq ptr %12, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %199)
  %200 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %12, align 8
  store { i64, i64 } zeroinitializer, ptr %11, align 4
  call void @runtime.TouchConservativeSlot(ptr %11, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %12, align 8
  call void @runtime.TouchConservativeSlot(ptr %12, i64 16)
  call void @runtime.ClobberPointerRegs()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %200)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %198)
  %201 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 0)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %201)
  %202 = alloca %"github.com/goplus/llgo/cl/_testgo/tptypes.Slice[[]int,int]", align 8
  call void @llvm.memset(ptr %202, i8 0, i64 24, i1 false)
  %203 = call i64 @runtime.AllocZHidden(i64 8)
  store i64 %203, ptr %13, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %14, i64 %203)
  %204 = icmp eq ptr %13, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %204)
  %205 = load i64, ptr %13, align 4
  %206 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 0, i64 1)
  %207 = mul i64 %206, 8
  %208 = call i64 @runtime.AdvanceHiddenPointer(i64 %205, i64 %207)
  store i64 %208, ptr %15, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %16, i64 %208)
  %209 = icmp eq ptr %15, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %209)
  %210 = load i64, ptr %15, align 4
  %211 = alloca i64, align 8
  store i64 100, ptr %211, align 4
  call void @runtime.StoreHiddenPointee(i64 %210, ptr %211, i64 8)
  store i64 0, ptr %211, align 4
  store i64 0, ptr %15, align 4
  call void @runtime.TouchConservativeSlot(ptr %15, i64 8)
  store ptr null, ptr %16, align 8
  call void @runtime.TouchConservativeSlot(ptr %16, i64 8)
  call void @runtime.ClobberPointerRegs()
  %212 = icmp eq ptr %13, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %212)
  %213 = load i64, ptr %13, align 4
  %214 = and i64 %213, 72057594037927935
  %215 = lshr i64 %214, 17
  %216 = select i1 false, i64 0, i64 %215
  %217 = shl i64 %214, 39
  %218 = select i1 false, i64 0, i64 %217
  %219 = or i64 %216, %218
  %220 = and i64 %219, 72057594037927935
  %221 = xor i64 %220, 25399393228665167
  %222 = inttoptr i64 %221 to ptr
  %223 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %222, 0
  %224 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %223, i64 1, 1
  %225 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %224, i64 1, 2
  %226 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %225, ptr %226, align 8
  %227 = icmp eq ptr %226, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %227)
  %228 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %226, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %228, ptr %18, align 8
  %229 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %228, 0
  %230 = ptrtoint ptr %229 to i64
  %231 = and i64 %230, 72057594037927935
  %232 = xor i64 %231, 25399393228665167
  %233 = shl i64 %232, 17
  %234 = select i1 false, i64 0, i64 %233
  %235 = lshr i64 %232, 39
  %236 = select i1 false, i64 0, i64 %235
  %237 = or i64 %234, %236
  %238 = and i64 %237, 72057594037927935
  %239 = or i64 %238, -6557241057451442176
  %240 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %228, 1
  %241 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %228, 2
  %242 = insertvalue { i64, i64, i64 } undef, i64 %239, 0
  %243 = insertvalue { i64, i64, i64 } %242, i64 %240, 1
  %244 = insertvalue { i64, i64, i64 } %243, i64 %241, 2
  store { i64, i64, i64 } %244, ptr %17, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %226, align 8
  call void @runtime.TouchConservativeSlot(ptr %226, i64 24)
  call void @runtime.ClobberPointerRegs()
  %245 = icmp eq ptr %18, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %245)
  %246 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %18, align 8
  store i64 0, ptr %13, align 4
  call void @runtime.TouchConservativeSlot(ptr %13, i64 8)
  store ptr null, ptr %14, align 8
  call void @runtime.TouchConservativeSlot(ptr %14, i64 8)
  store { i64, i64, i64 } zeroinitializer, ptr %17, align 4
  call void @runtime.TouchConservativeSlot(ptr %17, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %18, align 8
  call void @runtime.TouchConservativeSlot(ptr %18, i64 24)
  call void @runtime.ClobberPointerRegs()
  %247 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/cl/_testgo/tptypes.(*Slice[[]int,int]).Append"(ptr %202, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %246)
  %248 = alloca %"github.com/goplus/llgo/cl/_testgo/tptypes.Slice[[]string,string]", align 8
  call void @llvm.memset(ptr %248, i8 0, i64 24, i1 false)
  %249 = call i64 @runtime.AllocZHidden(i64 16)
  store i64 %249, ptr %19, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %20, i64 %249)
  %250 = icmp eq ptr %19, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %250)
  %251 = load i64, ptr %19, align 4
  %252 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 0, i64 1)
  %253 = mul i64 %252, 16
  %254 = call i64 @runtime.AdvanceHiddenPointer(i64 %251, i64 %253)
  store i64 %254, ptr %21, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %22, i64 %254)
  %255 = icmp eq ptr %21, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %255)
  %256 = load i64, ptr %21, align 4
  %257 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %257, align 8
  call void @runtime.StoreHiddenPointee(i64 %256, ptr %257, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %257, align 8
  call void @runtime.TouchConservativeSlot(ptr %257, i64 16)
  store i64 0, ptr %21, align 4
  call void @runtime.TouchConservativeSlot(ptr %21, i64 8)
  store ptr null, ptr %22, align 8
  call void @runtime.TouchConservativeSlot(ptr %22, i64 8)
  call void @runtime.ClobberPointerRegs()
  %258 = icmp eq ptr %19, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %258)
  %259 = load i64, ptr %19, align 4
  %260 = and i64 %259, 72057594037927935
  %261 = lshr i64 %260, 17
  %262 = select i1 false, i64 0, i64 %261
  %263 = shl i64 %260, 39
  %264 = select i1 false, i64 0, i64 %263
  %265 = or i64 %262, %264
  %266 = and i64 %265, 72057594037927935
  %267 = xor i64 %266, 25399393228665167
  %268 = inttoptr i64 %267 to ptr
  %269 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %268, 0
  %270 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %269, i64 1, 1
  %271 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %270, i64 1, 2
  %272 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %271, ptr %272, align 8
  %273 = icmp eq ptr %272, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %273)
  %274 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %272, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %274, ptr %24, align 8
  %275 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %274, 0
  %276 = ptrtoint ptr %275 to i64
  %277 = and i64 %276, 72057594037927935
  %278 = xor i64 %277, 25399393228665167
  %279 = shl i64 %278, 17
  %280 = select i1 false, i64 0, i64 %279
  %281 = lshr i64 %278, 39
  %282 = select i1 false, i64 0, i64 %281
  %283 = or i64 %280, %282
  %284 = and i64 %283, 72057594037927935
  %285 = or i64 %284, -6557241057451442176
  %286 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %274, 1
  %287 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %274, 2
  %288 = insertvalue { i64, i64, i64 } undef, i64 %285, 0
  %289 = insertvalue { i64, i64, i64 } %288, i64 %286, 1
  %290 = insertvalue { i64, i64, i64 } %289, i64 %287, 2
  store { i64, i64, i64 } %290, ptr %23, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %272, align 8
  call void @runtime.TouchConservativeSlot(ptr %272, i64 24)
  call void @runtime.ClobberPointerRegs()
  %291 = icmp eq ptr %24, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %291)
  %292 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %24, align 8
  store i64 0, ptr %19, align 4
  call void @runtime.TouchConservativeSlot(ptr %19, i64 8)
  store ptr null, ptr %20, align 8
  call void @runtime.TouchConservativeSlot(ptr %20, i64 8)
  store { i64, i64, i64 } zeroinitializer, ptr %23, align 4
  call void @runtime.TouchConservativeSlot(ptr %23, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %24, align 8
  call void @runtime.TouchConservativeSlot(ptr %24, i64 24)
  call void @runtime.ClobberPointerRegs()
  %293 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/cl/_testgo/tptypes.(*Slice[[]string,string]).Append"(ptr %248, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %292)
  %294 = alloca %"github.com/goplus/llgo/cl/_testgo/tptypes.Slice[[]int,int]", align 8
  call void @llvm.memset(ptr %294, i8 0, i64 24, i1 false)
  %295 = call i64 @runtime.AllocZHidden(i64 32)
  store i64 %295, ptr %25, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %26, i64 %295)
  %296 = icmp eq ptr %25, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %296)
  %297 = load i64, ptr %25, align 4
  %298 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 0, i64 4)
  %299 = mul i64 %298, 8
  %300 = call i64 @runtime.AdvanceHiddenPointer(i64 %297, i64 %299)
  store i64 %300, ptr %27, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %28, i64 %300)
  %301 = icmp eq ptr %27, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %301)
  %302 = load i64, ptr %27, align 4
  %303 = alloca i64, align 8
  store i64 1, ptr %303, align 4
  call void @runtime.StoreHiddenPointee(i64 %302, ptr %303, i64 8)
  store i64 0, ptr %303, align 4
  store i64 0, ptr %27, align 4
  call void @runtime.TouchConservativeSlot(ptr %27, i64 8)
  store ptr null, ptr %28, align 8
  call void @runtime.TouchConservativeSlot(ptr %28, i64 8)
  call void @runtime.ClobberPointerRegs()
  %304 = icmp eq ptr %25, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %304)
  %305 = load i64, ptr %25, align 4
  %306 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 1, i64 4)
  %307 = mul i64 %306, 8
  %308 = call i64 @runtime.AdvanceHiddenPointer(i64 %305, i64 %307)
  store i64 %308, ptr %29, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %30, i64 %308)
  %309 = icmp eq ptr %29, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %309)
  %310 = load i64, ptr %29, align 4
  %311 = alloca i64, align 8
  store i64 2, ptr %311, align 4
  call void @runtime.StoreHiddenPointee(i64 %310, ptr %311, i64 8)
  store i64 0, ptr %311, align 4
  store i64 0, ptr %29, align 4
  call void @runtime.TouchConservativeSlot(ptr %29, i64 8)
  store ptr null, ptr %30, align 8
  call void @runtime.TouchConservativeSlot(ptr %30, i64 8)
  call void @runtime.ClobberPointerRegs()
  %312 = icmp eq ptr %25, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %312)
  %313 = load i64, ptr %25, align 4
  %314 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 2, i64 4)
  %315 = mul i64 %314, 8
  %316 = call i64 @runtime.AdvanceHiddenPointer(i64 %313, i64 %315)
  store i64 %316, ptr %31, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %32, i64 %316)
  %317 = icmp eq ptr %31, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %317)
  %318 = load i64, ptr %31, align 4
  %319 = alloca i64, align 8
  store i64 3, ptr %319, align 4
  call void @runtime.StoreHiddenPointee(i64 %318, ptr %319, i64 8)
  store i64 0, ptr %319, align 4
  store i64 0, ptr %31, align 4
  call void @runtime.TouchConservativeSlot(ptr %31, i64 8)
  store ptr null, ptr %32, align 8
  call void @runtime.TouchConservativeSlot(ptr %32, i64 8)
  call void @runtime.ClobberPointerRegs()
  %320 = icmp eq ptr %25, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %320)
  %321 = load i64, ptr %25, align 4
  %322 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 3, i64 4)
  %323 = mul i64 %322, 8
  %324 = call i64 @runtime.AdvanceHiddenPointer(i64 %321, i64 %323)
  store i64 %324, ptr %33, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %34, i64 %324)
  %325 = icmp eq ptr %33, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %325)
  %326 = load i64, ptr %33, align 4
  %327 = alloca i64, align 8
  store i64 4, ptr %327, align 4
  call void @runtime.StoreHiddenPointee(i64 %326, ptr %327, i64 8)
  store i64 0, ptr %327, align 4
  store i64 0, ptr %33, align 4
  call void @runtime.TouchConservativeSlot(ptr %33, i64 8)
  store ptr null, ptr %34, align 8
  call void @runtime.TouchConservativeSlot(ptr %34, i64 8)
  call void @runtime.ClobberPointerRegs()
  %328 = icmp eq ptr %25, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %328)
  %329 = load i64, ptr %25, align 4
  %330 = and i64 %329, 72057594037927935
  %331 = lshr i64 %330, 17
  %332 = select i1 false, i64 0, i64 %331
  %333 = shl i64 %330, 39
  %334 = select i1 false, i64 0, i64 %333
  %335 = or i64 %332, %334
  %336 = and i64 %335, 72057594037927935
  %337 = xor i64 %336, 25399393228665167
  %338 = inttoptr i64 %337 to ptr
  %339 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %338, 0
  %340 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %339, i64 4, 1
  %341 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %340, i64 4, 2
  %342 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %341, ptr %342, align 8
  %343 = icmp eq ptr %342, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %343)
  %344 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %342, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %344, ptr %36, align 8
  %345 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %344, 0
  %346 = ptrtoint ptr %345 to i64
  %347 = and i64 %346, 72057594037927935
  %348 = xor i64 %347, 25399393228665167
  %349 = shl i64 %348, 17
  %350 = select i1 false, i64 0, i64 %349
  %351 = lshr i64 %348, 39
  %352 = select i1 false, i64 0, i64 %351
  %353 = or i64 %350, %352
  %354 = and i64 %353, 72057594037927935
  %355 = or i64 %354, -6557241057451442176
  %356 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %344, 1
  %357 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %344, 2
  %358 = insertvalue { i64, i64, i64 } undef, i64 %355, 0
  %359 = insertvalue { i64, i64, i64 } %358, i64 %356, 1
  %360 = insertvalue { i64, i64, i64 } %359, i64 %357, 2
  store { i64, i64, i64 } %360, ptr %35, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %342, align 8
  call void @runtime.TouchConservativeSlot(ptr %342, i64 24)
  call void @runtime.ClobberPointerRegs()
  %361 = icmp eq ptr %36, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %361)
  %362 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %36, align 8
  store i64 0, ptr %25, align 4
  call void @runtime.TouchConservativeSlot(ptr %25, i64 8)
  store ptr null, ptr %26, align 8
  call void @runtime.TouchConservativeSlot(ptr %26, i64 8)
  store { i64, i64, i64 } zeroinitializer, ptr %35, align 4
  call void @runtime.TouchConservativeSlot(ptr %35, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %36, align 8
  call void @runtime.TouchConservativeSlot(ptr %36, i64 24)
  call void @runtime.ClobberPointerRegs()
  %363 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/cl/_testgo/tptypes.(*Slice[[]int,int]).Append"(ptr %294, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %362)
  %364 = call i64 @runtime.AllocZHidden(i64 32)
  store i64 %364, ptr %37, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %38, i64 %364)
  %365 = icmp eq ptr %37, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %365)
  %366 = load i64, ptr %37, align 4
  %367 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 0, i64 4)
  %368 = mul i64 %367, 8
  %369 = call i64 @runtime.AdvanceHiddenPointer(i64 %366, i64 %368)
  store i64 %369, ptr %39, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %40, i64 %369)
  %370 = icmp eq ptr %39, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %370)
  %371 = load i64, ptr %39, align 4
  %372 = alloca i64, align 8
  store i64 1, ptr %372, align 4
  call void @runtime.StoreHiddenPointee(i64 %371, ptr %372, i64 8)
  store i64 0, ptr %372, align 4
  store i64 0, ptr %39, align 4
  call void @runtime.TouchConservativeSlot(ptr %39, i64 8)
  store ptr null, ptr %40, align 8
  call void @runtime.TouchConservativeSlot(ptr %40, i64 8)
  call void @runtime.ClobberPointerRegs()
  %373 = icmp eq ptr %37, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %373)
  %374 = load i64, ptr %37, align 4
  %375 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 1, i64 4)
  %376 = mul i64 %375, 8
  %377 = call i64 @runtime.AdvanceHiddenPointer(i64 %374, i64 %376)
  store i64 %377, ptr %41, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %42, i64 %377)
  %378 = icmp eq ptr %41, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %378)
  %379 = load i64, ptr %41, align 4
  %380 = alloca i64, align 8
  store i64 2, ptr %380, align 4
  call void @runtime.StoreHiddenPointee(i64 %379, ptr %380, i64 8)
  store i64 0, ptr %380, align 4
  store i64 0, ptr %41, align 4
  call void @runtime.TouchConservativeSlot(ptr %41, i64 8)
  store ptr null, ptr %42, align 8
  call void @runtime.TouchConservativeSlot(ptr %42, i64 8)
  call void @runtime.ClobberPointerRegs()
  %381 = icmp eq ptr %37, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %381)
  %382 = load i64, ptr %37, align 4
  %383 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 2, i64 4)
  %384 = mul i64 %383, 8
  %385 = call i64 @runtime.AdvanceHiddenPointer(i64 %382, i64 %384)
  store i64 %385, ptr %43, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %44, i64 %385)
  %386 = icmp eq ptr %43, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %386)
  %387 = load i64, ptr %43, align 4
  %388 = alloca i64, align 8
  store i64 3, ptr %388, align 4
  call void @runtime.StoreHiddenPointee(i64 %387, ptr %388, i64 8)
  store i64 0, ptr %388, align 4
  store i64 0, ptr %43, align 4
  call void @runtime.TouchConservativeSlot(ptr %43, i64 8)
  store ptr null, ptr %44, align 8
  call void @runtime.TouchConservativeSlot(ptr %44, i64 8)
  call void @runtime.ClobberPointerRegs()
  %389 = icmp eq ptr %37, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %389)
  %390 = load i64, ptr %37, align 4
  %391 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 3, i64 4)
  %392 = mul i64 %391, 8
  %393 = call i64 @runtime.AdvanceHiddenPointer(i64 %390, i64 %392)
  store i64 %393, ptr %45, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %46, i64 %393)
  %394 = icmp eq ptr %45, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %394)
  %395 = load i64, ptr %45, align 4
  %396 = alloca i64, align 8
  store i64 4, ptr %396, align 4
  call void @runtime.StoreHiddenPointee(i64 %395, ptr %396, i64 8)
  store i64 0, ptr %396, align 4
  store i64 0, ptr %45, align 4
  call void @runtime.TouchConservativeSlot(ptr %45, i64 8)
  store ptr null, ptr %46, align 8
  call void @runtime.TouchConservativeSlot(ptr %46, i64 8)
  call void @runtime.ClobberPointerRegs()
  %397 = icmp eq ptr %37, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %397)
  %398 = load i64, ptr %37, align 4
  %399 = and i64 %398, 72057594037927935
  %400 = lshr i64 %399, 17
  %401 = select i1 false, i64 0, i64 %400
  %402 = shl i64 %399, 39
  %403 = select i1 false, i64 0, i64 %402
  %404 = or i64 %401, %403
  %405 = and i64 %404, 72057594037927935
  %406 = xor i64 %405, 25399393228665167
  %407 = inttoptr i64 %406 to ptr
  %408 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %407, 0
  %409 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %408, i64 4, 1
  %410 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %409, i64 4, 2
  %411 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %410, ptr %411, align 8
  %412 = icmp eq ptr %411, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %412)
  %413 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %411, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %413, ptr %48, align 8
  %414 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %413, 0
  %415 = ptrtoint ptr %414 to i64
  %416 = and i64 %415, 72057594037927935
  %417 = xor i64 %416, 25399393228665167
  %418 = shl i64 %417, 17
  %419 = select i1 false, i64 0, i64 %418
  %420 = lshr i64 %417, 39
  %421 = select i1 false, i64 0, i64 %420
  %422 = or i64 %419, %421
  %423 = and i64 %422, 72057594037927935
  %424 = or i64 %423, -6557241057451442176
  %425 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %413, 1
  %426 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %413, 2
  %427 = insertvalue { i64, i64, i64 } undef, i64 %424, 0
  %428 = insertvalue { i64, i64, i64 } %427, i64 %425, 1
  %429 = insertvalue { i64, i64, i64 } %428, i64 %426, 2
  store { i64, i64, i64 } %429, ptr %47, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %411, align 8
  call void @runtime.TouchConservativeSlot(ptr %411, i64 24)
  call void @runtime.ClobberPointerRegs()
  %430 = icmp eq ptr %48, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %430)
  %431 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %48, align 8
  store i64 0, ptr %37, align 4
  call void @runtime.TouchConservativeSlot(ptr %37, i64 8)
  store ptr null, ptr %38, align 8
  call void @runtime.TouchConservativeSlot(ptr %38, i64 8)
  store { i64, i64, i64 } zeroinitializer, ptr %47, align 4
  call void @runtime.TouchConservativeSlot(ptr %47, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %48, align 8
  call void @runtime.TouchConservativeSlot(ptr %48, i64 24)
  call void @runtime.ClobberPointerRegs()
  %432 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/cl/_testgo/tptypes.(*Slice[[]int,int]).Append2"(ptr %294, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %431)
  %433 = icmp eq ptr %202, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %433)
  %434 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/tptypes.Slice[[]int,int]", ptr %202, i32 0, i32 0
  %435 = ptrtoint ptr %434 to i64
  %436 = and i64 %435, 72057594037927935
  %437 = xor i64 %436, 25399393228665167
  %438 = shl i64 %437, 17
  %439 = select i1 false, i64 0, i64 %438
  %440 = lshr i64 %437, 39
  %441 = select i1 false, i64 0, i64 %440
  %442 = or i64 %439, %441
  %443 = and i64 %442, 72057594037927935
  %444 = or i64 %443, -6557241057451442176
  store i64 %444, ptr %49, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %50, i64 %444)
  call void @runtime.ClobberPointerRegs()
  %445 = icmp eq ptr %49, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %445)
  %446 = load i64, ptr %49, align 4
  %447 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  call void @runtime.LoadHiddenPointee(ptr %447, i64 %446, i64 24)
  %448 = icmp eq ptr %447, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %448)
  %449 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %447, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %447, align 8
  %450 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %449, ptr %450, align 8
  %451 = icmp eq ptr %450, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %451)
  %452 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %450, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %452, ptr %52, align 8
  %453 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %452, 0
  %454 = ptrtoint ptr %453 to i64
  %455 = and i64 %454, 72057594037927935
  %456 = xor i64 %455, 25399393228665167
  %457 = shl i64 %456, 17
  %458 = select i1 false, i64 0, i64 %457
  %459 = lshr i64 %456, 39
  %460 = select i1 false, i64 0, i64 %459
  %461 = or i64 %458, %460
  %462 = and i64 %461, 72057594037927935
  %463 = or i64 %462, -6557241057451442176
  %464 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %452, 1
  %465 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %452, 2
  %466 = insertvalue { i64, i64, i64 } undef, i64 %463, 0
  %467 = insertvalue { i64, i64, i64 } %466, i64 %464, 1
  %468 = insertvalue { i64, i64, i64 } %467, i64 %465, 2
  store { i64, i64, i64 } %468, ptr %51, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %450, align 8
  call void @runtime.TouchConservativeSlot(ptr %450, i64 24)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %49, align 4
  call void @runtime.TouchConservativeSlot(ptr %49, i64 8)
  store ptr null, ptr %50, align 8
  call void @runtime.TouchConservativeSlot(ptr %50, i64 8)
  call void @runtime.ClobberPointerRegs()
  %469 = icmp eq ptr %202, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %469)
  %470 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/tptypes.Slice[[]int,int]", ptr %202, i32 0, i32 0
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
  store i64 %480, ptr %53, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %54, i64 %480)
  call void @runtime.ClobberPointerRegs()
  %481 = icmp eq ptr %53, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %481)
  %482 = load i64, ptr %53, align 4
  %483 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  call void @runtime.LoadHiddenPointee(ptr %483, i64 %482, i64 24)
  %484 = icmp eq ptr %483, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %484)
  %485 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %483, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %483, align 8
  %486 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %485, ptr %486, align 8
  %487 = icmp eq ptr %486, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %487)
  %488 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %486, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %488, ptr %56, align 8
  %489 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %488, 0
  %490 = ptrtoint ptr %489 to i64
  %491 = and i64 %490, 72057594037927935
  %492 = xor i64 %491, 25399393228665167
  %493 = shl i64 %492, 17
  %494 = select i1 false, i64 0, i64 %493
  %495 = lshr i64 %492, 39
  %496 = select i1 false, i64 0, i64 %495
  %497 = or i64 %494, %496
  %498 = and i64 %497, 72057594037927935
  %499 = or i64 %498, -6557241057451442176
  %500 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %488, 1
  %501 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %488, 2
  %502 = insertvalue { i64, i64, i64 } undef, i64 %499, 0
  %503 = insertvalue { i64, i64, i64 } %502, i64 %500, 1
  %504 = insertvalue { i64, i64, i64 } %503, i64 %501, 2
  store { i64, i64, i64 } %504, ptr %55, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %486, align 8
  call void @runtime.TouchConservativeSlot(ptr %486, i64 24)
  call void @runtime.ClobberPointerRegs()
  store %"github.com/goplus/llgo/cl/_testgo/tptypes.Slice[[]int,int]" zeroinitializer, ptr %202, align 8
  call void @runtime.TouchConservativeSlot(ptr %202, i64 24)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %53, align 4
  call void @runtime.TouchConservativeSlot(ptr %53, i64 8)
  store ptr null, ptr %54, align 8
  call void @runtime.TouchConservativeSlot(ptr %54, i64 8)
  call void @runtime.ClobberPointerRegs()
  %505 = icmp eq ptr %55, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %505)
  %506 = load { i64, i64, i64 }, ptr %55, align 4
  %507 = extractvalue { i64, i64, i64 } %506, 0
  %508 = extractvalue { i64, i64, i64 } %506, 1
  %509 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 0, i64 %508)
  %510 = mul i64 %509, 8
  %511 = call i64 @runtime.AdvanceHiddenPointer(i64 %507, i64 %510)
  store i64 %511, ptr %57, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %58, i64 %511)
  %512 = icmp eq ptr %57, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %512)
  %513 = load i64, ptr %57, align 4
  %514 = alloca i64, align 8
  call void @runtime.LoadHiddenPointee(ptr %514, i64 %513, i64 8)
  %515 = icmp eq ptr %514, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %515)
  %516 = load i64, ptr %514, align 4
  store i64 0, ptr %514, align 4
  store { i64, i64, i64 } zeroinitializer, ptr %55, align 4
  call void @runtime.TouchConservativeSlot(ptr %55, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %56, align 8
  call void @runtime.TouchConservativeSlot(ptr %56, i64 24)
  store i64 0, ptr %57, align 4
  call void @runtime.TouchConservativeSlot(ptr %57, i64 8)
  store ptr null, ptr %58, align 8
  call void @runtime.TouchConservativeSlot(ptr %58, i64 8)
  call void @runtime.ClobberPointerRegs()
  %517 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %518 = icmp eq ptr %52, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %518)
  %519 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %52, align 8
  store { i64, i64, i64 } zeroinitializer, ptr %51, align 4
  call void @runtime.TouchConservativeSlot(ptr %51, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %52, align 8
  call void @runtime.TouchConservativeSlot(ptr %52, i64 24)
  call void @runtime.ClobberPointerRegs()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %519)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %516)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %517)
  %520 = icmp eq ptr %248, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %520)
  %521 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/tptypes.Slice[[]string,string]", ptr %248, i32 0, i32 0
  %522 = ptrtoint ptr %521 to i64
  %523 = and i64 %522, 72057594037927935
  %524 = xor i64 %523, 25399393228665167
  %525 = shl i64 %524, 17
  %526 = select i1 false, i64 0, i64 %525
  %527 = lshr i64 %524, 39
  %528 = select i1 false, i64 0, i64 %527
  %529 = or i64 %526, %528
  %530 = and i64 %529, 72057594037927935
  %531 = or i64 %530, -6557241057451442176
  store i64 %531, ptr %59, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %60, i64 %531)
  call void @runtime.ClobberPointerRegs()
  %532 = icmp eq ptr %59, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %532)
  %533 = load i64, ptr %59, align 4
  %534 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  call void @runtime.LoadHiddenPointee(ptr %534, i64 %533, i64 24)
  %535 = icmp eq ptr %534, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %535)
  %536 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %534, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %534, align 8
  %537 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %536, ptr %537, align 8
  %538 = icmp eq ptr %537, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %538)
  %539 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %537, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %539, ptr %62, align 8
  %540 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %539, 0
  %541 = ptrtoint ptr %540 to i64
  %542 = and i64 %541, 72057594037927935
  %543 = xor i64 %542, 25399393228665167
  %544 = shl i64 %543, 17
  %545 = select i1 false, i64 0, i64 %544
  %546 = lshr i64 %543, 39
  %547 = select i1 false, i64 0, i64 %546
  %548 = or i64 %545, %547
  %549 = and i64 %548, 72057594037927935
  %550 = or i64 %549, -6557241057451442176
  %551 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %539, 1
  %552 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %539, 2
  %553 = insertvalue { i64, i64, i64 } undef, i64 %550, 0
  %554 = insertvalue { i64, i64, i64 } %553, i64 %551, 1
  %555 = insertvalue { i64, i64, i64 } %554, i64 %552, 2
  store { i64, i64, i64 } %555, ptr %61, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %537, align 8
  call void @runtime.TouchConservativeSlot(ptr %537, i64 24)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %59, align 4
  call void @runtime.TouchConservativeSlot(ptr %59, i64 8)
  store ptr null, ptr %60, align 8
  call void @runtime.TouchConservativeSlot(ptr %60, i64 8)
  call void @runtime.ClobberPointerRegs()
  %556 = icmp eq ptr %248, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %556)
  %557 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/tptypes.Slice[[]string,string]", ptr %248, i32 0, i32 0
  %558 = ptrtoint ptr %557 to i64
  %559 = and i64 %558, 72057594037927935
  %560 = xor i64 %559, 25399393228665167
  %561 = shl i64 %560, 17
  %562 = select i1 false, i64 0, i64 %561
  %563 = lshr i64 %560, 39
  %564 = select i1 false, i64 0, i64 %563
  %565 = or i64 %562, %564
  %566 = and i64 %565, 72057594037927935
  %567 = or i64 %566, -6557241057451442176
  store i64 %567, ptr %63, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %64, i64 %567)
  call void @runtime.ClobberPointerRegs()
  %568 = icmp eq ptr %63, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %568)
  %569 = load i64, ptr %63, align 4
  %570 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  call void @runtime.LoadHiddenPointee(ptr %570, i64 %569, i64 24)
  %571 = icmp eq ptr %570, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %571)
  %572 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %570, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %570, align 8
  %573 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %572, ptr %573, align 8
  %574 = icmp eq ptr %573, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %574)
  %575 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %573, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %575, ptr %66, align 8
  %576 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %575, 0
  %577 = ptrtoint ptr %576 to i64
  %578 = and i64 %577, 72057594037927935
  %579 = xor i64 %578, 25399393228665167
  %580 = shl i64 %579, 17
  %581 = select i1 false, i64 0, i64 %580
  %582 = lshr i64 %579, 39
  %583 = select i1 false, i64 0, i64 %582
  %584 = or i64 %581, %583
  %585 = and i64 %584, 72057594037927935
  %586 = or i64 %585, -6557241057451442176
  %587 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %575, 1
  %588 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %575, 2
  %589 = insertvalue { i64, i64, i64 } undef, i64 %586, 0
  %590 = insertvalue { i64, i64, i64 } %589, i64 %587, 1
  %591 = insertvalue { i64, i64, i64 } %590, i64 %588, 2
  store { i64, i64, i64 } %591, ptr %65, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %573, align 8
  call void @runtime.TouchConservativeSlot(ptr %573, i64 24)
  call void @runtime.ClobberPointerRegs()
  store %"github.com/goplus/llgo/cl/_testgo/tptypes.Slice[[]string,string]" zeroinitializer, ptr %248, align 8
  call void @runtime.TouchConservativeSlot(ptr %248, i64 24)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %63, align 4
  call void @runtime.TouchConservativeSlot(ptr %63, i64 8)
  store ptr null, ptr %64, align 8
  call void @runtime.TouchConservativeSlot(ptr %64, i64 8)
  call void @runtime.ClobberPointerRegs()
  %592 = icmp eq ptr %65, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %592)
  %593 = load { i64, i64, i64 }, ptr %65, align 4
  %594 = extractvalue { i64, i64, i64 } %593, 0
  %595 = extractvalue { i64, i64, i64 } %593, 1
  %596 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 0, i64 %595)
  %597 = mul i64 %596, 16
  %598 = call i64 @runtime.AdvanceHiddenPointer(i64 %594, i64 %597)
  store i64 %598, ptr %67, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %68, i64 %598)
  %599 = icmp eq ptr %67, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %599)
  %600 = load i64, ptr %67, align 4
  %601 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  call void @runtime.LoadHiddenPointee(ptr %601, i64 %600, i64 16)
  %602 = icmp eq ptr %601, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %602)
  %603 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %601, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %601, align 8
  %604 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %603, ptr %604, align 8
  %605 = icmp eq ptr %604, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %605)
  %606 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %604, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %606, ptr %70, align 8
  %607 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %606, 0
  %608 = ptrtoint ptr %607 to i64
  %609 = and i64 %608, 72057594037927935
  %610 = xor i64 %609, 25399393228665167
  %611 = shl i64 %610, 17
  %612 = select i1 false, i64 0, i64 %611
  %613 = lshr i64 %610, 39
  %614 = select i1 false, i64 0, i64 %613
  %615 = or i64 %612, %614
  %616 = and i64 %615, 72057594037927935
  %617 = or i64 %616, -6557241057451442176
  %618 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %606, 1
  %619 = insertvalue { i64, i64 } undef, i64 %617, 0
  %620 = insertvalue { i64, i64 } %619, i64 %618, 1
  store { i64, i64 } %620, ptr %69, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %604, align 8
  call void @runtime.TouchConservativeSlot(ptr %604, i64 16)
  call void @runtime.ClobberPointerRegs()
  store { i64, i64, i64 } zeroinitializer, ptr %65, align 4
  call void @runtime.TouchConservativeSlot(ptr %65, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %66, align 8
  call void @runtime.TouchConservativeSlot(ptr %66, i64 24)
  store i64 0, ptr %67, align 4
  call void @runtime.TouchConservativeSlot(ptr %67, i64 8)
  store ptr null, ptr %68, align 8
  call void @runtime.TouchConservativeSlot(ptr %68, i64 8)
  call void @runtime.ClobberPointerRegs()
  %621 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %622 = icmp eq ptr %62, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %622)
  %623 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %62, align 8
  %624 = icmp eq ptr %70, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %624)
  %625 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %70, align 8
  store { i64, i64, i64 } zeroinitializer, ptr %61, align 4
  call void @runtime.TouchConservativeSlot(ptr %61, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %62, align 8
  call void @runtime.TouchConservativeSlot(ptr %62, i64 24)
  store { i64, i64 } zeroinitializer, ptr %69, align 4
  call void @runtime.TouchConservativeSlot(ptr %69, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %70, align 8
  call void @runtime.TouchConservativeSlot(ptr %70, i64 16)
  call void @runtime.ClobberPointerRegs()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %623)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %625)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %621)
  %626 = icmp eq ptr %294, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %626)
  %627 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/tptypes.Slice[[]int,int]", ptr %294, i32 0, i32 0
  %628 = ptrtoint ptr %627 to i64
  %629 = and i64 %628, 72057594037927935
  %630 = xor i64 %629, 25399393228665167
  %631 = shl i64 %630, 17
  %632 = select i1 false, i64 0, i64 %631
  %633 = lshr i64 %630, 39
  %634 = select i1 false, i64 0, i64 %633
  %635 = or i64 %632, %634
  %636 = and i64 %635, 72057594037927935
  %637 = or i64 %636, -6557241057451442176
  store i64 %637, ptr %71, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %72, i64 %637)
  call void @runtime.ClobberPointerRegs()
  %638 = icmp eq ptr %71, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %638)
  %639 = load i64, ptr %71, align 4
  %640 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  call void @runtime.LoadHiddenPointee(ptr %640, i64 %639, i64 24)
  %641 = icmp eq ptr %640, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %641)
  %642 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %640, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %640, align 8
  %643 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %642, ptr %643, align 8
  %644 = icmp eq ptr %643, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %644)
  %645 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %643, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %645, ptr %74, align 8
  %646 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %645, 0
  %647 = ptrtoint ptr %646 to i64
  %648 = and i64 %647, 72057594037927935
  %649 = xor i64 %648, 25399393228665167
  %650 = shl i64 %649, 17
  %651 = select i1 false, i64 0, i64 %650
  %652 = lshr i64 %649, 39
  %653 = select i1 false, i64 0, i64 %652
  %654 = or i64 %651, %653
  %655 = and i64 %654, 72057594037927935
  %656 = or i64 %655, -6557241057451442176
  %657 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %645, 1
  %658 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %645, 2
  %659 = insertvalue { i64, i64, i64 } undef, i64 %656, 0
  %660 = insertvalue { i64, i64, i64 } %659, i64 %657, 1
  %661 = insertvalue { i64, i64, i64 } %660, i64 %658, 2
  store { i64, i64, i64 } %661, ptr %73, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %643, align 8
  call void @runtime.TouchConservativeSlot(ptr %643, i64 24)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %71, align 4
  call void @runtime.TouchConservativeSlot(ptr %71, i64 8)
  store ptr null, ptr %72, align 8
  call void @runtime.TouchConservativeSlot(ptr %72, i64 8)
  call void @runtime.ClobberPointerRegs()
  %662 = icmp eq ptr %294, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %662)
  %663 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/tptypes.Slice[[]int,int]", ptr %294, i32 0, i32 0
  %664 = ptrtoint ptr %663 to i64
  %665 = and i64 %664, 72057594037927935
  %666 = xor i64 %665, 25399393228665167
  %667 = shl i64 %666, 17
  %668 = select i1 false, i64 0, i64 %667
  %669 = lshr i64 %666, 39
  %670 = select i1 false, i64 0, i64 %669
  %671 = or i64 %668, %670
  %672 = and i64 %671, 72057594037927935
  %673 = or i64 %672, -6557241057451442176
  store i64 %673, ptr %75, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %76, i64 %673)
  call void @runtime.ClobberPointerRegs()
  %674 = icmp eq ptr %75, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %674)
  %675 = load i64, ptr %75, align 4
  %676 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  call void @runtime.LoadHiddenPointee(ptr %676, i64 %675, i64 24)
  %677 = icmp eq ptr %676, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %677)
  %678 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %676, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %676, align 8
  %679 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %678, ptr %679, align 8
  %680 = icmp eq ptr %679, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %680)
  %681 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %679, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %681, ptr %78, align 8
  %682 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %681, 0
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
  %693 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %681, 1
  %694 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %681, 2
  %695 = insertvalue { i64, i64, i64 } undef, i64 %692, 0
  %696 = insertvalue { i64, i64, i64 } %695, i64 %693, 1
  %697 = insertvalue { i64, i64, i64 } %696, i64 %694, 2
  store { i64, i64, i64 } %697, ptr %77, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %679, align 8
  call void @runtime.TouchConservativeSlot(ptr %679, i64 24)
  call void @runtime.ClobberPointerRegs()
  store %"github.com/goplus/llgo/cl/_testgo/tptypes.Slice[[]int,int]" zeroinitializer, ptr %294, align 8
  call void @runtime.TouchConservativeSlot(ptr %294, i64 24)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %75, align 4
  call void @runtime.TouchConservativeSlot(ptr %75, i64 8)
  store ptr null, ptr %76, align 8
  call void @runtime.TouchConservativeSlot(ptr %76, i64 8)
  call void @runtime.ClobberPointerRegs()
  %698 = icmp eq ptr %77, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %698)
  %699 = load { i64, i64, i64 }, ptr %77, align 4
  %700 = extractvalue { i64, i64, i64 } %699, 0
  %701 = extractvalue { i64, i64, i64 } %699, 1
  %702 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 0, i64 %701)
  %703 = mul i64 %702, 8
  %704 = call i64 @runtime.AdvanceHiddenPointer(i64 %700, i64 %703)
  store i64 %704, ptr %79, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %80, i64 %704)
  %705 = icmp eq ptr %79, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %705)
  %706 = load i64, ptr %79, align 4
  %707 = alloca i64, align 8
  call void @runtime.LoadHiddenPointee(ptr %707, i64 %706, i64 8)
  %708 = icmp eq ptr %707, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %708)
  %709 = load i64, ptr %707, align 4
  store i64 0, ptr %707, align 4
  store { i64, i64, i64 } zeroinitializer, ptr %77, align 4
  call void @runtime.TouchConservativeSlot(ptr %77, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %78, align 8
  call void @runtime.TouchConservativeSlot(ptr %78, i64 24)
  store i64 0, ptr %79, align 4
  call void @runtime.TouchConservativeSlot(ptr %79, i64 8)
  store ptr null, ptr %80, align 8
  call void @runtime.TouchConservativeSlot(ptr %80, i64 8)
  call void @runtime.ClobberPointerRegs()
  %710 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %711 = icmp eq ptr %74, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %711)
  %712 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %74, align 8
  store { i64, i64, i64 } zeroinitializer, ptr %73, align 4
  call void @runtime.TouchConservativeSlot(ptr %73, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %74, align 8
  call void @runtime.TouchConservativeSlot(ptr %74, i64 24)
  call void @runtime.ClobberPointerRegs()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %712)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %709)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %710)
  ret void
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1)

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

declare void @runtime.StoreHiddenPointerRoot(ptr, i64)

declare void @runtime.ClobberPointerRegs()

declare void @runtime.StoreHiddenPointee(i64, ptr, i64)

declare void @runtime.TouchConservativeSlot(ptr, i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare i64 @runtime.AllocZHidden(i64)

declare i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64, i64)

declare i64 @runtime.AdvanceHiddenPointer(i64, i64)

define linkonce %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/cl/_testgo/tptypes.(*Slice[[]int,int]).Append"(ptr %0, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1) {
_llgo_0:
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  store ptr null, ptr %3, align 8
  %4 = alloca { i64, i64, i64 }, align 8
  %5 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %5, align 8
  %6 = alloca { i64, i64, i64 }, align 8
  %7 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %7, align 8
  %8 = alloca i64, align 8
  %9 = alloca ptr, align 8
  store ptr null, ptr %9, align 8
  %10 = alloca i64, align 8
  %11 = alloca ptr, align 8
  store ptr null, ptr %11, align 8
  %12 = alloca { i64, i64, i64 }, align 8
  %13 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %13, align 8
  %14 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1, ptr %14, align 8
  call void @runtime.ClobberPointerRegs()
  %15 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %15)
  %16 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/tptypes.Slice[[]int,int]", ptr %0, i32 0, i32 0
  %17 = ptrtoint ptr %16 to i64
  %18 = and i64 %17, 72057594037927935
  %19 = xor i64 %18, 25399393228665167
  %20 = shl i64 %19, 17
  %21 = select i1 false, i64 0, i64 %20
  %22 = lshr i64 %19, 39
  %23 = select i1 false, i64 0, i64 %22
  %24 = or i64 %21, %23
  %25 = and i64 %24, 72057594037927935
  %26 = or i64 %25, -6557241057451442176
  store i64 %26, ptr %2, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %3, i64 %26)
  call void @runtime.ClobberPointerRegs()
  %27 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %27)
  %28 = load i64, ptr %2, align 4
  %29 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  call void @runtime.LoadHiddenPointee(ptr %29, i64 %28, i64 24)
  %30 = icmp eq ptr %29, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %30)
  %31 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %29, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %29, align 8
  %32 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %31, ptr %32, align 8
  %33 = icmp eq ptr %32, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %33)
  %34 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %32, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %34, ptr %5, align 8
  %35 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %34, 0
  %36 = ptrtoint ptr %35 to i64
  %37 = and i64 %36, 72057594037927935
  %38 = xor i64 %37, 25399393228665167
  %39 = shl i64 %38, 17
  %40 = select i1 false, i64 0, i64 %39
  %41 = lshr i64 %38, 39
  %42 = select i1 false, i64 0, i64 %41
  %43 = or i64 %40, %42
  %44 = and i64 %43, 72057594037927935
  %45 = or i64 %44, -6557241057451442176
  %46 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %34, 1
  %47 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %34, 2
  %48 = insertvalue { i64, i64, i64 } undef, i64 %45, 0
  %49 = insertvalue { i64, i64, i64 } %48, i64 %46, 1
  %50 = insertvalue { i64, i64, i64 } %49, i64 %47, 2
  store { i64, i64, i64 } %50, ptr %4, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %32, align 8
  call void @runtime.TouchConservativeSlot(ptr %32, i64 24)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  call void @runtime.ClobberPointerRegs()
  %51 = icmp eq ptr %5, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %51)
  %52 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %5, align 8
  %53 = icmp eq ptr %14, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %53)
  %54 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %14, align 8
  store { i64, i64, i64 } zeroinitializer, ptr %4, align 4
  call void @runtime.TouchConservativeSlot(ptr %4, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 24)
  call void @runtime.ClobberPointerRegs()
  %55 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %54, 0
  %56 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %54, 1
  %57 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.SliceAppend"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %52, ptr %55, i64 %56, i64 8)
  %58 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %57, ptr %58, align 8
  %59 = icmp eq ptr %58, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %59)
  %60 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %58, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %60, ptr %7, align 8
  %61 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %60, 0
  %62 = ptrtoint ptr %61 to i64
  %63 = and i64 %62, 72057594037927935
  %64 = xor i64 %63, 25399393228665167
  %65 = shl i64 %64, 17
  %66 = select i1 false, i64 0, i64 %65
  %67 = lshr i64 %64, 39
  %68 = select i1 false, i64 0, i64 %67
  %69 = or i64 %66, %68
  %70 = and i64 %69, 72057594037927935
  %71 = or i64 %70, -6557241057451442176
  %72 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %60, 1
  %73 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %60, 2
  %74 = insertvalue { i64, i64, i64 } undef, i64 %71, 0
  %75 = insertvalue { i64, i64, i64 } %74, i64 %72, 1
  %76 = insertvalue { i64, i64, i64 } %75, i64 %73, 2
  store { i64, i64, i64 } %76, ptr %6, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %58, align 8
  call void @runtime.TouchConservativeSlot(ptr %58, i64 24)
  call void @runtime.ClobberPointerRegs()
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %14, align 8
  call void @runtime.TouchConservativeSlot(ptr %14, i64 24)
  call void @runtime.ClobberPointerRegs()
  %77 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %77)
  %78 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/tptypes.Slice[[]int,int]", ptr %0, i32 0, i32 0
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
  store i64 %88, ptr %8, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %9, i64 %88)
  call void @runtime.ClobberPointerRegs()
  %89 = icmp eq ptr %8, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %89)
  %90 = load i64, ptr %8, align 4
  %91 = icmp eq ptr %7, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %91)
  %92 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %7, align 8
  %93 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %92, ptr %93, align 8
  call void @runtime.StoreHiddenPointee(i64 %90, ptr %93, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %93, align 8
  call void @runtime.TouchConservativeSlot(ptr %93, i64 24)
  store { i64, i64, i64 } zeroinitializer, ptr %6, align 4
  call void @runtime.TouchConservativeSlot(ptr %6, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 24)
  store i64 0, ptr %8, align 4
  call void @runtime.TouchConservativeSlot(ptr %8, i64 8)
  store ptr null, ptr %9, align 8
  call void @runtime.TouchConservativeSlot(ptr %9, i64 8)
  call void @runtime.ClobberPointerRegs()
  %94 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %94)
  %95 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/tptypes.Slice[[]int,int]", ptr %0, i32 0, i32 0
  %96 = ptrtoint ptr %95 to i64
  %97 = and i64 %96, 72057594037927935
  %98 = xor i64 %97, 25399393228665167
  %99 = shl i64 %98, 17
  %100 = select i1 false, i64 0, i64 %99
  %101 = lshr i64 %98, 39
  %102 = select i1 false, i64 0, i64 %101
  %103 = or i64 %100, %102
  %104 = and i64 %103, 72057594037927935
  %105 = or i64 %104, -6557241057451442176
  store i64 %105, ptr %10, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %11, i64 %105)
  call void @runtime.ClobberPointerRegs()
  %106 = icmp eq ptr %10, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %106)
  %107 = load i64, ptr %10, align 4
  %108 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  call void @runtime.LoadHiddenPointee(ptr %108, i64 %107, i64 24)
  %109 = icmp eq ptr %108, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %109)
  %110 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %108, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %108, align 8
  %111 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %110, ptr %111, align 8
  %112 = icmp eq ptr %111, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %112)
  %113 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %111, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %113, ptr %13, align 8
  %114 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %113, 0
  %115 = ptrtoint ptr %114 to i64
  %116 = and i64 %115, 72057594037927935
  %117 = xor i64 %116, 25399393228665167
  %118 = shl i64 %117, 17
  %119 = select i1 false, i64 0, i64 %118
  %120 = lshr i64 %117, 39
  %121 = select i1 false, i64 0, i64 %120
  %122 = or i64 %119, %121
  %123 = and i64 %122, 72057594037927935
  %124 = or i64 %123, -6557241057451442176
  %125 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %113, 1
  %126 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %113, 2
  %127 = insertvalue { i64, i64, i64 } undef, i64 %124, 0
  %128 = insertvalue { i64, i64, i64 } %127, i64 %125, 1
  %129 = insertvalue { i64, i64, i64 } %128, i64 %126, 2
  store { i64, i64, i64 } %129, ptr %12, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %111, align 8
  call void @runtime.TouchConservativeSlot(ptr %111, i64 24)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %10, align 4
  call void @runtime.TouchConservativeSlot(ptr %10, i64 8)
  store ptr null, ptr %11, align 8
  call void @runtime.TouchConservativeSlot(ptr %11, i64 8)
  call void @runtime.ClobberPointerRegs()
  %130 = icmp eq ptr %13, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %130)
  %131 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %13, align 8
  store { i64, i64, i64 } zeroinitializer, ptr %12, align 4
  call void @runtime.TouchConservativeSlot(ptr %12, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %13, align 8
  call void @runtime.TouchConservativeSlot(ptr %13, i64 24)
  store { i64, i64, i64 } zeroinitializer, ptr %12, align 4
  call void @runtime.TouchConservativeSlot(ptr %12, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %13, align 8
  call void @runtime.TouchConservativeSlot(ptr %13, i64 24)
  call void @runtime.ClobberPointerRegs()
  ret %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %131
}

define linkonce %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/cl/_testgo/tptypes.(*Slice[[]string,string]).Append"(ptr %0, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1) {
_llgo_0:
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  store ptr null, ptr %3, align 8
  %4 = alloca { i64, i64, i64 }, align 8
  %5 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %5, align 8
  %6 = alloca { i64, i64, i64 }, align 8
  %7 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %7, align 8
  %8 = alloca i64, align 8
  %9 = alloca ptr, align 8
  store ptr null, ptr %9, align 8
  %10 = alloca i64, align 8
  %11 = alloca ptr, align 8
  store ptr null, ptr %11, align 8
  %12 = alloca { i64, i64, i64 }, align 8
  %13 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %13, align 8
  %14 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1, ptr %14, align 8
  call void @runtime.ClobberPointerRegs()
  %15 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %15)
  %16 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/tptypes.Slice[[]string,string]", ptr %0, i32 0, i32 0
  %17 = ptrtoint ptr %16 to i64
  %18 = and i64 %17, 72057594037927935
  %19 = xor i64 %18, 25399393228665167
  %20 = shl i64 %19, 17
  %21 = select i1 false, i64 0, i64 %20
  %22 = lshr i64 %19, 39
  %23 = select i1 false, i64 0, i64 %22
  %24 = or i64 %21, %23
  %25 = and i64 %24, 72057594037927935
  %26 = or i64 %25, -6557241057451442176
  store i64 %26, ptr %2, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %3, i64 %26)
  call void @runtime.ClobberPointerRegs()
  %27 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %27)
  %28 = load i64, ptr %2, align 4
  %29 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  call void @runtime.LoadHiddenPointee(ptr %29, i64 %28, i64 24)
  %30 = icmp eq ptr %29, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %30)
  %31 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %29, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %29, align 8
  %32 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %31, ptr %32, align 8
  %33 = icmp eq ptr %32, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %33)
  %34 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %32, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %34, ptr %5, align 8
  %35 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %34, 0
  %36 = ptrtoint ptr %35 to i64
  %37 = and i64 %36, 72057594037927935
  %38 = xor i64 %37, 25399393228665167
  %39 = shl i64 %38, 17
  %40 = select i1 false, i64 0, i64 %39
  %41 = lshr i64 %38, 39
  %42 = select i1 false, i64 0, i64 %41
  %43 = or i64 %40, %42
  %44 = and i64 %43, 72057594037927935
  %45 = or i64 %44, -6557241057451442176
  %46 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %34, 1
  %47 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %34, 2
  %48 = insertvalue { i64, i64, i64 } undef, i64 %45, 0
  %49 = insertvalue { i64, i64, i64 } %48, i64 %46, 1
  %50 = insertvalue { i64, i64, i64 } %49, i64 %47, 2
  store { i64, i64, i64 } %50, ptr %4, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %32, align 8
  call void @runtime.TouchConservativeSlot(ptr %32, i64 24)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  call void @runtime.ClobberPointerRegs()
  %51 = icmp eq ptr %5, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %51)
  %52 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %5, align 8
  %53 = icmp eq ptr %14, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %53)
  %54 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %14, align 8
  store { i64, i64, i64 } zeroinitializer, ptr %4, align 4
  call void @runtime.TouchConservativeSlot(ptr %4, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 24)
  call void @runtime.ClobberPointerRegs()
  %55 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %54, 0
  %56 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %54, 1
  %57 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.SliceAppend"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %52, ptr %55, i64 %56, i64 16)
  %58 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %57, ptr %58, align 8
  %59 = icmp eq ptr %58, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %59)
  %60 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %58, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %60, ptr %7, align 8
  %61 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %60, 0
  %62 = ptrtoint ptr %61 to i64
  %63 = and i64 %62, 72057594037927935
  %64 = xor i64 %63, 25399393228665167
  %65 = shl i64 %64, 17
  %66 = select i1 false, i64 0, i64 %65
  %67 = lshr i64 %64, 39
  %68 = select i1 false, i64 0, i64 %67
  %69 = or i64 %66, %68
  %70 = and i64 %69, 72057594037927935
  %71 = or i64 %70, -6557241057451442176
  %72 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %60, 1
  %73 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %60, 2
  %74 = insertvalue { i64, i64, i64 } undef, i64 %71, 0
  %75 = insertvalue { i64, i64, i64 } %74, i64 %72, 1
  %76 = insertvalue { i64, i64, i64 } %75, i64 %73, 2
  store { i64, i64, i64 } %76, ptr %6, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %58, align 8
  call void @runtime.TouchConservativeSlot(ptr %58, i64 24)
  call void @runtime.ClobberPointerRegs()
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %14, align 8
  call void @runtime.TouchConservativeSlot(ptr %14, i64 24)
  call void @runtime.ClobberPointerRegs()
  %77 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %77)
  %78 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/tptypes.Slice[[]string,string]", ptr %0, i32 0, i32 0
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
  store i64 %88, ptr %8, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %9, i64 %88)
  call void @runtime.ClobberPointerRegs()
  %89 = icmp eq ptr %8, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %89)
  %90 = load i64, ptr %8, align 4
  %91 = icmp eq ptr %7, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %91)
  %92 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %7, align 8
  %93 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %92, ptr %93, align 8
  call void @runtime.StoreHiddenPointee(i64 %90, ptr %93, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %93, align 8
  call void @runtime.TouchConservativeSlot(ptr %93, i64 24)
  store { i64, i64, i64 } zeroinitializer, ptr %6, align 4
  call void @runtime.TouchConservativeSlot(ptr %6, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 24)
  store i64 0, ptr %8, align 4
  call void @runtime.TouchConservativeSlot(ptr %8, i64 8)
  store ptr null, ptr %9, align 8
  call void @runtime.TouchConservativeSlot(ptr %9, i64 8)
  call void @runtime.ClobberPointerRegs()
  %94 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %94)
  %95 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/tptypes.Slice[[]string,string]", ptr %0, i32 0, i32 0
  %96 = ptrtoint ptr %95 to i64
  %97 = and i64 %96, 72057594037927935
  %98 = xor i64 %97, 25399393228665167
  %99 = shl i64 %98, 17
  %100 = select i1 false, i64 0, i64 %99
  %101 = lshr i64 %98, 39
  %102 = select i1 false, i64 0, i64 %101
  %103 = or i64 %100, %102
  %104 = and i64 %103, 72057594037927935
  %105 = or i64 %104, -6557241057451442176
  store i64 %105, ptr %10, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %11, i64 %105)
  call void @runtime.ClobberPointerRegs()
  %106 = icmp eq ptr %10, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %106)
  %107 = load i64, ptr %10, align 4
  %108 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  call void @runtime.LoadHiddenPointee(ptr %108, i64 %107, i64 24)
  %109 = icmp eq ptr %108, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %109)
  %110 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %108, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %108, align 8
  %111 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %110, ptr %111, align 8
  %112 = icmp eq ptr %111, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %112)
  %113 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %111, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %113, ptr %13, align 8
  %114 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %113, 0
  %115 = ptrtoint ptr %114 to i64
  %116 = and i64 %115, 72057594037927935
  %117 = xor i64 %116, 25399393228665167
  %118 = shl i64 %117, 17
  %119 = select i1 false, i64 0, i64 %118
  %120 = lshr i64 %117, 39
  %121 = select i1 false, i64 0, i64 %120
  %122 = or i64 %119, %121
  %123 = and i64 %122, 72057594037927935
  %124 = or i64 %123, -6557241057451442176
  %125 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %113, 1
  %126 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %113, 2
  %127 = insertvalue { i64, i64, i64 } undef, i64 %124, 0
  %128 = insertvalue { i64, i64, i64 } %127, i64 %125, 1
  %129 = insertvalue { i64, i64, i64 } %128, i64 %126, 2
  store { i64, i64, i64 } %129, ptr %12, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %111, align 8
  call void @runtime.TouchConservativeSlot(ptr %111, i64 24)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %10, align 4
  call void @runtime.TouchConservativeSlot(ptr %10, i64 8)
  store ptr null, ptr %11, align 8
  call void @runtime.TouchConservativeSlot(ptr %11, i64 8)
  call void @runtime.ClobberPointerRegs()
  %130 = icmp eq ptr %13, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %130)
  %131 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %13, align 8
  store { i64, i64, i64 } zeroinitializer, ptr %12, align 4
  call void @runtime.TouchConservativeSlot(ptr %12, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %13, align 8
  call void @runtime.TouchConservativeSlot(ptr %13, i64 24)
  store { i64, i64, i64 } zeroinitializer, ptr %12, align 4
  call void @runtime.TouchConservativeSlot(ptr %12, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %13, align 8
  call void @runtime.TouchConservativeSlot(ptr %13, i64 24)
  call void @runtime.ClobberPointerRegs()
  ret %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %131
}

define linkonce %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/cl/_testgo/tptypes.(*Slice[[]int,int]).Append2"(ptr %0, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1) {
_llgo_0:
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  store ptr null, ptr %3, align 8
  %4 = alloca { i64, i64, i64 }, align 8
  %5 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %5, align 8
  %6 = alloca { i64, i64, i64 }, align 8
  %7 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %7, align 8
  %8 = alloca i64, align 8
  %9 = alloca ptr, align 8
  store ptr null, ptr %9, align 8
  %10 = alloca i64, align 8
  %11 = alloca ptr, align 8
  store ptr null, ptr %11, align 8
  %12 = alloca { i64, i64, i64 }, align 8
  %13 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %13, align 8
  %14 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1, ptr %14, align 8
  call void @runtime.ClobberPointerRegs()
  %15 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %15)
  %16 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/tptypes.Slice[[]int,int]", ptr %0, i32 0, i32 0
  %17 = ptrtoint ptr %16 to i64
  %18 = and i64 %17, 72057594037927935
  %19 = xor i64 %18, 25399393228665167
  %20 = shl i64 %19, 17
  %21 = select i1 false, i64 0, i64 %20
  %22 = lshr i64 %19, 39
  %23 = select i1 false, i64 0, i64 %22
  %24 = or i64 %21, %23
  %25 = and i64 %24, 72057594037927935
  %26 = or i64 %25, -6557241057451442176
  store i64 %26, ptr %2, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %3, i64 %26)
  call void @runtime.ClobberPointerRegs()
  %27 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %27)
  %28 = load i64, ptr %2, align 4
  %29 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  call void @runtime.LoadHiddenPointee(ptr %29, i64 %28, i64 24)
  %30 = icmp eq ptr %29, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %30)
  %31 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %29, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %29, align 8
  %32 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %31, ptr %32, align 8
  %33 = icmp eq ptr %32, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %33)
  %34 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %32, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %34, ptr %5, align 8
  %35 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %34, 0
  %36 = ptrtoint ptr %35 to i64
  %37 = and i64 %36, 72057594037927935
  %38 = xor i64 %37, 25399393228665167
  %39 = shl i64 %38, 17
  %40 = select i1 false, i64 0, i64 %39
  %41 = lshr i64 %38, 39
  %42 = select i1 false, i64 0, i64 %41
  %43 = or i64 %40, %42
  %44 = and i64 %43, 72057594037927935
  %45 = or i64 %44, -6557241057451442176
  %46 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %34, 1
  %47 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %34, 2
  %48 = insertvalue { i64, i64, i64 } undef, i64 %45, 0
  %49 = insertvalue { i64, i64, i64 } %48, i64 %46, 1
  %50 = insertvalue { i64, i64, i64 } %49, i64 %47, 2
  store { i64, i64, i64 } %50, ptr %4, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %32, align 8
  call void @runtime.TouchConservativeSlot(ptr %32, i64 24)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  call void @runtime.ClobberPointerRegs()
  %51 = icmp eq ptr %5, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %51)
  %52 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %5, align 8
  %53 = icmp eq ptr %14, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %53)
  %54 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %14, align 8
  store { i64, i64, i64 } zeroinitializer, ptr %4, align 4
  call void @runtime.TouchConservativeSlot(ptr %4, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 24)
  call void @runtime.ClobberPointerRegs()
  %55 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %54, 0
  %56 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %54, 1
  %57 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.SliceAppend"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %52, ptr %55, i64 %56, i64 8)
  %58 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %57, ptr %58, align 8
  %59 = icmp eq ptr %58, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %59)
  %60 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %58, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %60, ptr %7, align 8
  %61 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %60, 0
  %62 = ptrtoint ptr %61 to i64
  %63 = and i64 %62, 72057594037927935
  %64 = xor i64 %63, 25399393228665167
  %65 = shl i64 %64, 17
  %66 = select i1 false, i64 0, i64 %65
  %67 = lshr i64 %64, 39
  %68 = select i1 false, i64 0, i64 %67
  %69 = or i64 %66, %68
  %70 = and i64 %69, 72057594037927935
  %71 = or i64 %70, -6557241057451442176
  %72 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %60, 1
  %73 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %60, 2
  %74 = insertvalue { i64, i64, i64 } undef, i64 %71, 0
  %75 = insertvalue { i64, i64, i64 } %74, i64 %72, 1
  %76 = insertvalue { i64, i64, i64 } %75, i64 %73, 2
  store { i64, i64, i64 } %76, ptr %6, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %58, align 8
  call void @runtime.TouchConservativeSlot(ptr %58, i64 24)
  call void @runtime.ClobberPointerRegs()
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %14, align 8
  call void @runtime.TouchConservativeSlot(ptr %14, i64 24)
  call void @runtime.ClobberPointerRegs()
  %77 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %77)
  %78 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/tptypes.Slice[[]int,int]", ptr %0, i32 0, i32 0
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
  store i64 %88, ptr %8, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %9, i64 %88)
  call void @runtime.ClobberPointerRegs()
  %89 = icmp eq ptr %8, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %89)
  %90 = load i64, ptr %8, align 4
  %91 = icmp eq ptr %7, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %91)
  %92 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %7, align 8
  %93 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %92, ptr %93, align 8
  call void @runtime.StoreHiddenPointee(i64 %90, ptr %93, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %93, align 8
  call void @runtime.TouchConservativeSlot(ptr %93, i64 24)
  store { i64, i64, i64 } zeroinitializer, ptr %6, align 4
  call void @runtime.TouchConservativeSlot(ptr %6, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 24)
  store i64 0, ptr %8, align 4
  call void @runtime.TouchConservativeSlot(ptr %8, i64 8)
  store ptr null, ptr %9, align 8
  call void @runtime.TouchConservativeSlot(ptr %9, i64 8)
  call void @runtime.ClobberPointerRegs()
  %94 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %94)
  %95 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/tptypes.Slice[[]int,int]", ptr %0, i32 0, i32 0
  %96 = ptrtoint ptr %95 to i64
  %97 = and i64 %96, 72057594037927935
  %98 = xor i64 %97, 25399393228665167
  %99 = shl i64 %98, 17
  %100 = select i1 false, i64 0, i64 %99
  %101 = lshr i64 %98, 39
  %102 = select i1 false, i64 0, i64 %101
  %103 = or i64 %100, %102
  %104 = and i64 %103, 72057594037927935
  %105 = or i64 %104, -6557241057451442176
  store i64 %105, ptr %10, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %11, i64 %105)
  call void @runtime.ClobberPointerRegs()
  %106 = icmp eq ptr %10, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %106)
  %107 = load i64, ptr %10, align 4
  %108 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  call void @runtime.LoadHiddenPointee(ptr %108, i64 %107, i64 24)
  %109 = icmp eq ptr %108, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %109)
  %110 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %108, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %108, align 8
  %111 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %110, ptr %111, align 8
  %112 = icmp eq ptr %111, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %112)
  %113 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %111, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %113, ptr %13, align 8
  %114 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %113, 0
  %115 = ptrtoint ptr %114 to i64
  %116 = and i64 %115, 72057594037927935
  %117 = xor i64 %116, 25399393228665167
  %118 = shl i64 %117, 17
  %119 = select i1 false, i64 0, i64 %118
  %120 = lshr i64 %117, 39
  %121 = select i1 false, i64 0, i64 %120
  %122 = or i64 %119, %121
  %123 = and i64 %122, 72057594037927935
  %124 = or i64 %123, -6557241057451442176
  %125 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %113, 1
  %126 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %113, 2
  %127 = insertvalue { i64, i64, i64 } undef, i64 %124, 0
  %128 = insertvalue { i64, i64, i64 } %127, i64 %125, 1
  %129 = insertvalue { i64, i64, i64 } %128, i64 %126, 2
  store { i64, i64, i64 } %129, ptr %12, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %111, align 8
  call void @runtime.TouchConservativeSlot(ptr %111, i64 24)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %10, align 4
  call void @runtime.TouchConservativeSlot(ptr %10, i64 8)
  store ptr null, ptr %11, align 8
  call void @runtime.TouchConservativeSlot(ptr %11, i64 8)
  call void @runtime.ClobberPointerRegs()
  %130 = icmp eq ptr %13, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %130)
  %131 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %13, align 8
  store { i64, i64, i64 } zeroinitializer, ptr %12, align 4
  call void @runtime.TouchConservativeSlot(ptr %12, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %13, align 8
  call void @runtime.TouchConservativeSlot(ptr %13, i64 24)
  store { i64, i64, i64 } zeroinitializer, ptr %12, align 4
  call void @runtime.TouchConservativeSlot(ptr %12, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %13, align 8
  call void @runtime.TouchConservativeSlot(ptr %13, i64 24)
  call void @runtime.ClobberPointerRegs()
  ret %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %131
}

declare void @runtime.LoadHiddenPointee(ptr, i64, i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.SliceAppend"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr, i64, i64)

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
