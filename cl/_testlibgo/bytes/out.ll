; ModuleID = 'github.com/goplus/llgo/cl/_testlibgo/bytes'
source_filename = "github.com/goplus/llgo/cl/_testlibgo/bytes"

%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }

@"github.com/goplus/llgo/cl/_testlibgo/bytes.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [6 x i8] c"Hello ", align 1
@1 = private unnamed_addr constant [5 x i8] c"World", align 1
@2 = private unnamed_addr constant [3 x i8] c"buf", align 1
@3 = private unnamed_addr constant [2 x i8] c"Go", align 1
@4 = private unnamed_addr constant [2 x i8] c"go", align 1

define void @"github.com/goplus/llgo/cl/_testlibgo/bytes.init"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testlibgo/bytes.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testlibgo/bytes.init$guard", align 1
  call void @bytes.init()
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testlibgo/bytes.main"() {
_llgo_0:
  %0 = alloca i64, align 8
  %1 = alloca ptr, align 8
  store ptr null, ptr %1, align 8
  %2 = alloca { i64, i64, i64 }, align 8
  %3 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %3, align 8
  %4 = alloca { i64, i64, i64 }, align 8
  %5 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %5, align 8
  %6 = alloca { i64, i64 }, align 8
  %7 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %7, align 8
  %8 = alloca { i64, i64, i64 }, align 8
  %9 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %9, align 8
  %10 = alloca { i64, i64, i64 }, align 8
  %11 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %11, align 8
  %12 = call i64 @runtime.AllocZHidden(i64 40)
  store i64 %12, ptr %0, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %1, i64 %12)
  %13 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.StringToBytes"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 6 })
  %14 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %13, ptr %14, align 8
  %15 = icmp eq ptr %14, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %15)
  %16 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %14, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %16, ptr %3, align 8
  %17 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %16, 0
  %18 = ptrtoint ptr %17 to i64
  %19 = and i64 %18, 72057594037927935
  %20 = xor i64 %19, 25399393228665167
  %21 = shl i64 %20, 17
  %22 = select i1 false, i64 0, i64 %21
  %23 = lshr i64 %20, 39
  %24 = select i1 false, i64 0, i64 %23
  %25 = or i64 %22, %24
  %26 = and i64 %25, 72057594037927935
  %27 = or i64 %26, -6557241057451442176
  %28 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %16, 1
  %29 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %16, 2
  %30 = insertvalue { i64, i64, i64 } undef, i64 %27, 0
  %31 = insertvalue { i64, i64, i64 } %30, i64 %28, 1
  %32 = insertvalue { i64, i64, i64 } %31, i64 %29, 2
  store { i64, i64, i64 } %32, ptr %2, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %14, align 8
  call void @runtime.TouchConservativeSlot(ptr %14, i64 24)
  call void @runtime.ClobberPointerRegs()
  %33 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %34 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %34)
  %35 = load i64, ptr %0, align 4
  %36 = and i64 %35, 72057594037927935
  %37 = lshr i64 %36, 17
  %38 = select i1 false, i64 0, i64 %37
  %39 = shl i64 %36, 39
  %40 = select i1 false, i64 0, i64 %39
  %41 = or i64 %38, %40
  %42 = and i64 %41, 72057594037927935
  %43 = xor i64 %42, 25399393228665167
  %44 = inttoptr i64 %43 to ptr
  %45 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %45)
  %46 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %3, align 8
  store { i64, i64, i64 } zeroinitializer, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 24)
  call void @runtime.ClobberPointerRegs()
  %47 = call { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"bytes.(*Buffer).Write"(ptr %44, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %46)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %33)
  %48 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %49 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %49)
  %50 = load i64, ptr %0, align 4
  %51 = and i64 %50, 72057594037927935
  %52 = lshr i64 %51, 17
  %53 = select i1 false, i64 0, i64 %52
  %54 = shl i64 %51, 39
  %55 = select i1 false, i64 0, i64 %54
  %56 = or i64 %53, %55
  %57 = and i64 %56, 72057594037927935
  %58 = xor i64 %57, 25399393228665167
  %59 = inttoptr i64 %58 to ptr
  %60 = call { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"bytes.(*Buffer).WriteString"(ptr %59, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 5 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %48)
  %61 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %62 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %62)
  %63 = load i64, ptr %0, align 4
  %64 = and i64 %63, 72057594037927935
  %65 = lshr i64 %64, 17
  %66 = select i1 false, i64 0, i64 %65
  %67 = shl i64 %64, 39
  %68 = select i1 false, i64 0, i64 %67
  %69 = or i64 %66, %68
  %70 = and i64 %69, 72057594037927935
  %71 = xor i64 %70, 25399393228665167
  %72 = inttoptr i64 %71 to ptr
  %73 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"bytes.(*Buffer).Bytes"(ptr %72)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %61)
  %74 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %73, ptr %74, align 8
  %75 = icmp eq ptr %74, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %75)
  %76 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %74, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %76, ptr %5, align 8
  %77 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %76, 0
  %78 = ptrtoint ptr %77 to i64
  %79 = and i64 %78, 72057594037927935
  %80 = xor i64 %79, 25399393228665167
  %81 = shl i64 %80, 17
  %82 = select i1 false, i64 0, i64 %81
  %83 = lshr i64 %80, 39
  %84 = select i1 false, i64 0, i64 %83
  %85 = or i64 %82, %84
  %86 = and i64 %85, 72057594037927935
  %87 = or i64 %86, -6557241057451442176
  %88 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %76, 1
  %89 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %76, 2
  %90 = insertvalue { i64, i64, i64 } undef, i64 %87, 0
  %91 = insertvalue { i64, i64, i64 } %90, i64 %88, 1
  %92 = insertvalue { i64, i64, i64 } %91, i64 %89, 2
  store { i64, i64, i64 } %92, ptr %4, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %74, align 8
  call void @runtime.TouchConservativeSlot(ptr %74, i64 24)
  call void @runtime.ClobberPointerRegs()
  %93 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %94 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %94)
  %95 = load i64, ptr %0, align 4
  %96 = and i64 %95, 72057594037927935
  %97 = lshr i64 %96, 17
  %98 = select i1 false, i64 0, i64 %97
  %99 = shl i64 %96, 39
  %100 = select i1 false, i64 0, i64 %99
  %101 = or i64 %98, %100
  %102 = and i64 %101, 72057594037927935
  %103 = xor i64 %102, 25399393228665167
  %104 = inttoptr i64 %103 to ptr
  store i64 0, ptr %0, align 4
  call void @runtime.TouchConservativeSlot(ptr %0, i64 8)
  store ptr null, ptr %1, align 8
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  call void @runtime.ClobberPointerRegs()
  %105 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"bytes.(*Buffer).String"(ptr %104)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %93)
  %106 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %105, ptr %106, align 8
  %107 = icmp eq ptr %106, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %107)
  %108 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %106, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %108, ptr %7, align 8
  %109 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %108, 0
  %110 = ptrtoint ptr %109 to i64
  %111 = and i64 %110, 72057594037927935
  %112 = xor i64 %111, 25399393228665167
  %113 = shl i64 %112, 17
  %114 = select i1 false, i64 0, i64 %113
  %115 = lshr i64 %112, 39
  %116 = select i1 false, i64 0, i64 %115
  %117 = or i64 %114, %116
  %118 = and i64 %117, 72057594037927935
  %119 = or i64 %118, -6557241057451442176
  %120 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %108, 1
  %121 = insertvalue { i64, i64 } undef, i64 %119, 0
  %122 = insertvalue { i64, i64 } %121, i64 %120, 1
  store { i64, i64 } %122, ptr %6, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %106, align 8
  call void @runtime.TouchConservativeSlot(ptr %106, i64 16)
  call void @runtime.ClobberPointerRegs()
  %123 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %124 = icmp eq ptr %5, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %124)
  %125 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %5, align 8
  %126 = icmp eq ptr %7, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %126)
  %127 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %7, align 8
  store { i64, i64, i64 } zeroinitializer, ptr %4, align 4
  call void @runtime.TouchConservativeSlot(ptr %4, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 24)
  store { i64, i64 } zeroinitializer, ptr %6, align 4
  call void @runtime.TouchConservativeSlot(ptr %6, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 16)
  call void @runtime.ClobberPointerRegs()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 3 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %125)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %127)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %123)
  %128 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.StringToBytes"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 2 })
  %129 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %128, ptr %129, align 8
  %130 = icmp eq ptr %129, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %130)
  %131 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %129, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %131, ptr %9, align 8
  %132 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %131, 0
  %133 = ptrtoint ptr %132 to i64
  %134 = and i64 %133, 72057594037927935
  %135 = xor i64 %134, 25399393228665167
  %136 = shl i64 %135, 17
  %137 = select i1 false, i64 0, i64 %136
  %138 = lshr i64 %135, 39
  %139 = select i1 false, i64 0, i64 %138
  %140 = or i64 %137, %139
  %141 = and i64 %140, 72057594037927935
  %142 = or i64 %141, -6557241057451442176
  %143 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %131, 1
  %144 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %131, 2
  %145 = insertvalue { i64, i64, i64 } undef, i64 %142, 0
  %146 = insertvalue { i64, i64, i64 } %145, i64 %143, 1
  %147 = insertvalue { i64, i64, i64 } %146, i64 %144, 2
  store { i64, i64, i64 } %147, ptr %8, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %129, align 8
  call void @runtime.TouchConservativeSlot(ptr %129, i64 24)
  call void @runtime.ClobberPointerRegs()
  %148 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.StringToBytes"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 2 })
  %149 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %148, ptr %149, align 8
  %150 = icmp eq ptr %149, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %150)
  %151 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %149, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %151, ptr %11, align 8
  %152 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %151, 0
  %153 = ptrtoint ptr %152 to i64
  %154 = and i64 %153, 72057594037927935
  %155 = xor i64 %154, 25399393228665167
  %156 = shl i64 %155, 17
  %157 = select i1 false, i64 0, i64 %156
  %158 = lshr i64 %155, 39
  %159 = select i1 false, i64 0, i64 %158
  %160 = or i64 %157, %159
  %161 = and i64 %160, 72057594037927935
  %162 = or i64 %161, -6557241057451442176
  %163 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %151, 1
  %164 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %151, 2
  %165 = insertvalue { i64, i64, i64 } undef, i64 %162, 0
  %166 = insertvalue { i64, i64, i64 } %165, i64 %163, 1
  %167 = insertvalue { i64, i64, i64 } %166, i64 %164, 2
  store { i64, i64, i64 } %167, ptr %10, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %149, align 8
  call void @runtime.TouchConservativeSlot(ptr %149, i64 24)
  call void @runtime.ClobberPointerRegs()
  %168 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %169 = icmp eq ptr %9, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %169)
  %170 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %9, align 8
  %171 = icmp eq ptr %11, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %171)
  %172 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %11, align 8
  store { i64, i64, i64 } zeroinitializer, ptr %8, align 4
  call void @runtime.TouchConservativeSlot(ptr %8, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %9, align 8
  call void @runtime.TouchConservativeSlot(ptr %9, i64 24)
  store { i64, i64, i64 } zeroinitializer, ptr %10, align 4
  call void @runtime.TouchConservativeSlot(ptr %10, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %11, align 8
  call void @runtime.TouchConservativeSlot(ptr %11, i64 24)
  call void @runtime.ClobberPointerRegs()
  %173 = call i1 @bytes.EqualFold(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %170, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %172)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %168)
  %174 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %173)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %174)
  ret void
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1)

declare void @bytes.init()

declare i64 @runtime.AllocZHidden(i64)

declare void @runtime.StoreHiddenPointerRoot(ptr, i64)

declare %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.StringToBytes"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @runtime.TouchConservativeSlot(ptr, i64)

declare void @runtime.ClobberPointerRegs()

declare { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"bytes.(*Buffer).Write"(ptr, %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr)

declare { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"bytes.(*Buffer).WriteString"(ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String")

declare %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"bytes.(*Buffer).Bytes"(ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"bytes.(*Buffer).String"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare i1 @bytes.EqualFold(%"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1)
