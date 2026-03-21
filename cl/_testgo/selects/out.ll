; ModuleID = 'github.com/goplus/llgo/cl/_testgo/selects'
source_filename = "github.com/goplus/llgo/cl/_testgo/selects"

%"github.com/goplus/llgo/runtime/abi.Type" = type { i64, i64, i32, i8, i8, i8, i8, { ptr, ptr }, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/abi.PtrType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.ChanOp" = type { ptr, ptr, i32, i1 }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }

@"github.com/goplus/llgo/cl/_testgo/selects.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [4 x i8] c"c1<-", align 1
@1 = private unnamed_addr constant [4 x i8] c"<-c2", align 1
@2 = private unnamed_addr constant [4 x i8] c"<-c4", align 1
@3 = private unnamed_addr constant [31 x i8] c"blocking select matched no case", align 1
@_llgo_string = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 8, i32 1749264893, i8 4, i8 8, i8 8, i8 24, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 6 }, ptr @"*_llgo_string" }, align 8
@4 = private unnamed_addr constant [6 x i8] c"string", align 1
@"*_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1323879264, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 6 }, ptr null }, ptr @_llgo_string }, align 8
@5 = private unnamed_addr constant [4 x i8] c"<-c1", align 1
@6 = private unnamed_addr constant [4 x i8] c"c2<-", align 1
@7 = private unnamed_addr constant [4 x i8] c"<-c3", align 1

define void @"github.com/goplus/llgo/cl/_testgo/selects.init"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testgo/selects.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testgo/selects.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/selects.main"() {
_llgo_0:
  %0 = alloca i64, align 8
  %1 = alloca ptr, align 8
  store ptr null, ptr %1, align 8
  %2 = alloca ptr, align 8
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  store ptr null, ptr %4, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  store ptr null, ptr %7, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca { ptr, ptr }, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = call i64 @runtime.AllocZHidden(i64 8)
  store i64 %13, ptr %0, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %1, i64 %13)
  %14 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewChan"(i64 0, i64 1)
  store ptr %14, ptr %2, align 8
  %15 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %15)
  %16 = load i64, ptr %0, align 4
  %17 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %17)
  %18 = load ptr, ptr %2, align 8
  %19 = alloca ptr, align 8
  store ptr %18, ptr %19, align 8
  call void @runtime.StoreHiddenPointee(i64 %16, ptr %19, i64 8)
  store ptr null, ptr %19, align 8
  call void @runtime.TouchConservativeSlot(ptr %19, i64 8)
  store ptr null, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  call void @runtime.ClobberPointerRegs()
  %20 = call i64 @runtime.AllocZHidden(i64 8)
  store i64 %20, ptr %3, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %4, i64 %20)
  %21 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewChan"(i64 0, i64 1)
  store ptr %21, ptr %5, align 8
  %22 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %22)
  %23 = load i64, ptr %3, align 4
  %24 = icmp eq ptr %5, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %24)
  %25 = load ptr, ptr %5, align 8
  %26 = alloca ptr, align 8
  store ptr %25, ptr %26, align 8
  call void @runtime.StoreHiddenPointee(i64 %23, ptr %26, i64 8)
  store ptr null, ptr %26, align 8
  call void @runtime.TouchConservativeSlot(ptr %26, i64 8)
  store ptr null, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  call void @runtime.ClobberPointerRegs()
  %27 = call i64 @runtime.AllocZHidden(i64 8)
  store i64 %27, ptr %6, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %7, i64 %27)
  %28 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewChan"(i64 0, i64 1)
  store ptr %28, ptr %8, align 8
  %29 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %29)
  %30 = load i64, ptr %6, align 4
  %31 = icmp eq ptr %8, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %31)
  %32 = load ptr, ptr %8, align 8
  %33 = alloca ptr, align 8
  store ptr %32, ptr %33, align 8
  call void @runtime.StoreHiddenPointee(i64 %30, ptr %33, i64 8)
  store ptr null, ptr %33, align 8
  call void @runtime.TouchConservativeSlot(ptr %33, i64 8)
  store ptr null, ptr %8, align 8
  call void @runtime.TouchConservativeSlot(ptr %8, i64 8)
  call void @runtime.ClobberPointerRegs()
  %34 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewChan"(i64 0, i64 1)
  store ptr %34, ptr %9, align 8
  %35 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %35)
  %36 = load i64, ptr %0, align 4
  %37 = and i64 %36, 72057594037927935
  %38 = lshr i64 %37, 17
  %39 = select i1 false, i64 0, i64 %38
  %40 = shl i64 %37, 39
  %41 = select i1 false, i64 0, i64 %40
  %42 = or i64 %39, %41
  %43 = and i64 %42, 72057594037927935
  %44 = xor i64 %43, 25399393228665167
  %45 = inttoptr i64 %44 to ptr
  %46 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %46)
  %47 = load i64, ptr %3, align 4
  %48 = and i64 %47, 72057594037927935
  %49 = lshr i64 %48, 17
  %50 = select i1 false, i64 0, i64 %49
  %51 = shl i64 %48, 39
  %52 = select i1 false, i64 0, i64 %51
  %53 = or i64 %50, %52
  %54 = and i64 %53, 72057594037927935
  %55 = xor i64 %54, 25399393228665167
  %56 = inttoptr i64 %55 to ptr
  %57 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %57)
  %58 = load i64, ptr %6, align 4
  %59 = and i64 %58, 72057594037927935
  %60 = lshr i64 %59, 17
  %61 = select i1 false, i64 0, i64 %60
  %62 = shl i64 %59, 39
  %63 = select i1 false, i64 0, i64 %62
  %64 = or i64 %61, %63
  %65 = and i64 %64, 72057594037927935
  %66 = xor i64 %65, 25399393228665167
  %67 = inttoptr i64 %66 to ptr
  %68 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %69 = getelementptr inbounds { ptr, ptr, ptr }, ptr %68, i32 0, i32 0
  store ptr %45, ptr %69, align 8
  %70 = getelementptr inbounds { ptr, ptr, ptr }, ptr %68, i32 0, i32 1
  store ptr %56, ptr %70, align 8
  %71 = getelementptr inbounds { ptr, ptr, ptr }, ptr %68, i32 0, i32 2
  store ptr %67, ptr %71, align 8
  %72 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testgo/selects.main$1", ptr undef }, ptr %68, 1
  store { ptr, ptr } %72, ptr %10, align 8
  store i64 0, ptr %6, align 4
  call void @runtime.TouchConservativeSlot(ptr %6, i64 8)
  store ptr null, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 8)
  call void @runtime.ClobberPointerRegs()
  %73 = icmp eq ptr %10, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %73)
  %74 = load { ptr, ptr }, ptr %10, align 8
  store { ptr, ptr } zeroinitializer, ptr %10, align 8
  call void @runtime.TouchConservativeSlot(ptr %10, i64 16)
  call void @runtime.ClobberPointerRegs()
  %75 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %76 = getelementptr inbounds { { ptr, ptr } }, ptr %75, i32 0, i32 0
  store { ptr, ptr } %74, ptr %76, align 8
  %77 = alloca i8, i64 8, align 1
  %78 = call i32 @"github.com/goplus/llgo/runtime/internal/runtime.CreateThread"(ptr %77, ptr null, ptr @"github.com/goplus/llgo/cl/_testgo/selects._llgo_routine$1", ptr %75)
  %79 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %79)
  %80 = load i64, ptr %0, align 4
  %81 = alloca ptr, align 8
  call void @runtime.LoadHiddenPointee(ptr %81, i64 %80, i64 8)
  %82 = icmp eq ptr %81, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %82)
  %83 = load ptr, ptr %81, align 8
  store ptr null, ptr %81, align 8
  store ptr %83, ptr %11, align 8
  store i64 0, ptr %0, align 4
  call void @runtime.TouchConservativeSlot(ptr %0, i64 8)
  store ptr null, ptr %1, align 8
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  call void @runtime.ClobberPointerRegs()
  %84 = icmp eq ptr %11, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %84)
  %85 = load ptr, ptr %11, align 8
  %86 = alloca {}, align 8
  call void @llvm.memset(ptr %86, i8 0, i64 0, i1 false)
  store {} zeroinitializer, ptr %86, align 1
  %87 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.ChanSend"(ptr %85, ptr %86, i64 0)
  call void @llvm.memset(ptr %86, i8 0, i64 0, i1 false)
  store ptr null, ptr %11, align 8
  call void @runtime.TouchConservativeSlot(ptr %11, i64 8)
  call void @runtime.ClobberPointerRegs()
  %88 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 4 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %88)
  %89 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %89)
  %90 = load i64, ptr %3, align 4
  %91 = alloca ptr, align 8
  call void @runtime.LoadHiddenPointee(ptr %91, i64 %90, i64 8)
  %92 = icmp eq ptr %91, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %92)
  %93 = load ptr, ptr %91, align 8
  store ptr null, ptr %91, align 8
  store ptr %93, ptr %12, align 8
  store i64 0, ptr %3, align 4
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  store ptr null, ptr %4, align 8
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  call void @runtime.ClobberPointerRegs()
  %94 = icmp eq ptr %12, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %94)
  %95 = load ptr, ptr %12, align 8
  %96 = icmp eq ptr %9, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %96)
  %97 = load ptr, ptr %9, align 8
  %98 = alloca {}, align 8
  call void @llvm.memset(ptr %98, i8 0, i64 0, i1 false)
  %99 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.ChanOp" undef, ptr %95, 0
  %100 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.ChanOp" %99, ptr %98, 1
  %101 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.ChanOp" %100, i32 0, 2
  %102 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.ChanOp" %101, i1 false, 3
  %103 = alloca {}, align 8
  call void @llvm.memset(ptr %103, i8 0, i64 0, i1 false)
  %104 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.ChanOp" undef, ptr %97, 0
  %105 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.ChanOp" %104, ptr %103, 1
  %106 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.ChanOp" %105, i32 0, 2
  %107 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.ChanOp" %106, i1 false, 3
  %108 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 48)
  %109 = getelementptr %"github.com/goplus/llgo/runtime/internal/runtime.ChanOp", ptr %108, i64 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.ChanOp" %102, ptr %109, align 8
  %110 = getelementptr %"github.com/goplus/llgo/runtime/internal/runtime.ChanOp", ptr %108, i64 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.ChanOp" %107, ptr %110, align 8
  %111 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %108, 0
  %112 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %111, i64 2, 1
  %113 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %112, i64 2, 2
  %114 = call { i64, i1 } @"github.com/goplus/llgo/runtime/internal/runtime.Select"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %113)
  %115 = extractvalue { i64, i1 } %114, 0
  %116 = extractvalue { i64, i1 } %114, 1
  %117 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.ChanOp" %102, 1
  %118 = icmp eq ptr %117, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %118)
  %119 = load {}, ptr %117, align 1
  %120 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.ChanOp" %107, 1
  %121 = icmp eq ptr %120, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %121)
  %122 = load {}, ptr %120, align 1
  %123 = insertvalue { i64, i1, {}, {} } undef, i64 %115, 0
  %124 = insertvalue { i64, i1, {}, {} } %123, i1 %116, 1
  %125 = insertvalue { i64, i1, {}, {} } %124, {} %119, 2
  %126 = insertvalue { i64, i1, {}, {} } %125, {} %122, 3
  store ptr null, ptr %9, align 8
  call void @runtime.TouchConservativeSlot(ptr %9, i64 8)
  store ptr null, ptr %12, align 8
  call void @runtime.TouchConservativeSlot(ptr %12, i64 8)
  call void @runtime.ClobberPointerRegs()
  %127 = extractvalue { i64, i1, {}, {} } %126, 0
  call void @runtime.ClobberPointerRegs()
  %128 = icmp eq i64 %127, 0
  br i1 %128, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_4, %_llgo_2
  ret void

_llgo_2:                                          ; preds = %_llgo_0
  %129 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 4 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %129)
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_0
  %130 = icmp eq i64 %127, 1
  br i1 %130, label %_llgo_4, label %_llgo_5

_llgo_4:                                          ; preds = %_llgo_3
  %131 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 4 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %131)
  br label %_llgo_1

_llgo_5:                                          ; preds = %_llgo_3
  %132 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 31 }, ptr %132, align 8
  %133 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %132, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %133)
  unreachable

_llgo_6:                                          ; No predecessors!
  unreachable
}

define void @"github.com/goplus/llgo/cl/_testgo/selects.main$1"(ptr %0) {
_llgo_0:
  %1 = alloca ptr, align 8
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %4)
  %5 = load { ptr, ptr, ptr }, ptr %0, align 8
  %6 = extractvalue { ptr, ptr, ptr } %5, 0
  %7 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %7)
  %8 = load ptr, ptr %6, align 8
  store ptr %8, ptr %1, align 8
  %9 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %9)
  %10 = load ptr, ptr %1, align 8
  %11 = alloca {}, align 8
  call void @llvm.memset(ptr %11, i8 0, i64 0, i1 false)
  %12 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.ChanRecv"(ptr %10, ptr %11, i64 0)
  %13 = icmp eq ptr %11, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %13)
  %14 = load {}, ptr %11, align 1
  call void @llvm.memset(ptr %11, i8 0, i64 0, i1 false)
  store ptr null, ptr %1, align 8
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  call void @runtime.ClobberPointerRegs()
  %15 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 4 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %15)
  %16 = extractvalue { ptr, ptr, ptr } %5, 1
  %17 = icmp eq ptr %16, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %17)
  %18 = load ptr, ptr %16, align 8
  store ptr %18, ptr %2, align 8
  %19 = extractvalue { ptr, ptr, ptr } %5, 2
  %20 = icmp eq ptr %19, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %20)
  %21 = load ptr, ptr %19, align 8
  store ptr %21, ptr %3, align 8
  %22 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %22)
  %23 = load ptr, ptr %2, align 8
  %24 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %24)
  %25 = load ptr, ptr %3, align 8
  %26 = alloca {}, align 8
  call void @llvm.memset(ptr %26, i8 0, i64 0, i1 false)
  store {} zeroinitializer, ptr %26, align 1
  %27 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.ChanOp" undef, ptr %23, 0
  %28 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.ChanOp" %27, ptr %26, 1
  %29 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.ChanOp" %28, i32 0, 2
  %30 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.ChanOp" %29, i1 true, 3
  %31 = alloca {}, align 8
  call void @llvm.memset(ptr %31, i8 0, i64 0, i1 false)
  %32 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.ChanOp" undef, ptr %25, 0
  %33 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.ChanOp" %32, ptr %31, 1
  %34 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.ChanOp" %33, i32 0, 2
  %35 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.ChanOp" %34, i1 false, 3
  %36 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 48)
  %37 = getelementptr %"github.com/goplus/llgo/runtime/internal/runtime.ChanOp", ptr %36, i64 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.ChanOp" %30, ptr %37, align 8
  %38 = getelementptr %"github.com/goplus/llgo/runtime/internal/runtime.ChanOp", ptr %36, i64 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.ChanOp" %35, ptr %38, align 8
  %39 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %36, 0
  %40 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %39, i64 2, 1
  %41 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %40, i64 2, 2
  %42 = call { i64, i1 } @"github.com/goplus/llgo/runtime/internal/runtime.Select"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %41)
  %43 = extractvalue { i64, i1 } %42, 0
  %44 = extractvalue { i64, i1 } %42, 1
  %45 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.ChanOp" %35, 1
  %46 = icmp eq ptr %45, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %46)
  %47 = load {}, ptr %45, align 1
  %48 = insertvalue { i64, i1, {} } undef, i64 %43, 0
  %49 = insertvalue { i64, i1, {} } %48, i1 %44, 1
  %50 = insertvalue { i64, i1, {} } %49, {} %47, 2
  store ptr null, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  call void @runtime.ClobberPointerRegs()
  %51 = extractvalue { i64, i1, {} } %50, 0
  call void @runtime.ClobberPointerRegs()
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_4, %_llgo_2
  ret void

_llgo_2:                                          ; preds = %_llgo_0
  %53 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 4 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %53)
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_0
  %54 = icmp eq i64 %51, 1
  br i1 %54, label %_llgo_4, label %_llgo_5

_llgo_4:                                          ; preds = %_llgo_3
  %55 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 4 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %55)
  br label %_llgo_1

_llgo_5:                                          ; preds = %_llgo_3
  %56 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 31 }, ptr %56, align 8
  %57 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %56, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %57)
  unreachable

_llgo_6:                                          ; No predecessors!
  unreachable
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1)

declare i64 @runtime.AllocZHidden(i64)

declare void @runtime.StoreHiddenPointerRoot(ptr, i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewChan"(i64, i64)

declare void @runtime.StoreHiddenPointee(i64, ptr, i64)

declare void @runtime.TouchConservativeSlot(ptr, i64)

declare void @runtime.ClobberPointerRegs()

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

define ptr @"github.com/goplus/llgo/cl/_testgo/selects._llgo_routine$1"(ptr %0) {
_llgo_0:
  %1 = load { { ptr, ptr } }, ptr %0, align 8
  %2 = extractvalue { { ptr, ptr } } %1, 0
  %3 = extractvalue { ptr, ptr } %2, 1
  %4 = extractvalue { ptr, ptr } %2, 0
  call void %4(ptr %3)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.FreeAllocU"(ptr %0)
  ret ptr null
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.FreeAllocU"(ptr)

declare i32 @"github.com/goplus/llgo/runtime/internal/runtime.CreateThread"(ptr, ptr, ptr, ptr)

declare void @runtime.LoadHiddenPointee(ptr, i64, i64)

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.ChanSend"(ptr, ptr, i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr)

declare { i64, i1 } @"github.com/goplus/llgo/runtime/internal/runtime.Select"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/runtime/internal/runtime.strequal")
  %4 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr %1, ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %3)
  ret i1 %4
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr")
  %4 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %1, ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %3)
  ret i1 %4
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.ChanRecv"(ptr, ptr, i64)

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
