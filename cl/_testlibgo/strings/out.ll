; ModuleID = 'github.com/goplus/llgo/cl/_testlibgo/strings'
source_filename = "github.com/goplus/llgo/cl/_testlibgo/strings"

%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }

@"github.com/goplus/llgo/cl/_testlibgo/strings.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [6 x i8] c"Hello ", align 1
@1 = private unnamed_addr constant [5 x i8] c"World", align 1
@2 = private unnamed_addr constant [4 x i8] c"len:", align 1
@3 = private unnamed_addr constant [4 x i8] c"cap:", align 1
@4 = private unnamed_addr constant [7 x i8] c"string:", align 1
@5 = private unnamed_addr constant [13 x i8] c"Hello, \E4\B8\96\E7\95\8C", align 1
@6 = private unnamed_addr constant [12 x i8] c"Hello, world", align 1
@unicode.Han = external global ptr, align 8

define void @"github.com/goplus/llgo/cl/_testlibgo/strings.init"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testlibgo/strings.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testlibgo/strings.init$guard", align 1
  call void @strings.init()
  call void @unicode.init()
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testlibgo/strings.main"() {
_llgo_0:
  %0 = alloca i64, align 8
  %1 = alloca ptr, align 8
  store ptr null, ptr %1, align 8
  %2 = alloca { i64, i64, i64 }, align 8
  %3 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %3, align 8
  %4 = alloca { i64, i64 }, align 8
  %5 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %5, align 8
  %6 = call i64 @runtime.AllocZHidden(i64 32)
  store i64 %6, ptr %0, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %1, i64 %6)
  %7 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.StringToBytes"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 6 })
  %8 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, ptr %8, align 8
  %9 = icmp eq ptr %8, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %9)
  %10 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %8, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %10, ptr %3, align 8
  %11 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %10, 0
  %12 = ptrtoint ptr %11 to i64
  %13 = and i64 %12, 72057594037927935
  %14 = xor i64 %13, 25399393228665167
  %15 = shl i64 %14, 17
  %16 = select i1 false, i64 0, i64 %15
  %17 = lshr i64 %14, 39
  %18 = select i1 false, i64 0, i64 %17
  %19 = or i64 %16, %18
  %20 = and i64 %19, 72057594037927935
  %21 = or i64 %20, -6557241057451442176
  %22 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %10, 1
  %23 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %10, 2
  %24 = insertvalue { i64, i64, i64 } undef, i64 %21, 0
  %25 = insertvalue { i64, i64, i64 } %24, i64 %22, 1
  %26 = insertvalue { i64, i64, i64 } %25, i64 %23, 2
  store { i64, i64, i64 } %26, ptr %2, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %8, align 8
  call void @runtime.TouchConservativeSlot(ptr %8, i64 24)
  call void @runtime.ClobberPointerRegs()
  %27 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %28 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %28)
  %29 = load i64, ptr %0, align 4
  %30 = and i64 %29, 72057594037927935
  %31 = lshr i64 %30, 17
  %32 = select i1 false, i64 0, i64 %31
  %33 = shl i64 %30, 39
  %34 = select i1 false, i64 0, i64 %33
  %35 = or i64 %32, %34
  %36 = and i64 %35, 72057594037927935
  %37 = xor i64 %36, 25399393228665167
  %38 = inttoptr i64 %37 to ptr
  %39 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %39)
  %40 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %3, align 8
  store { i64, i64, i64 } zeroinitializer, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 24)
  call void @runtime.ClobberPointerRegs()
  %41 = call { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"strings.(*Builder).Write"(ptr %38, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %40)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %27)
  %42 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %43 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %43)
  %44 = load i64, ptr %0, align 4
  %45 = and i64 %44, 72057594037927935
  %46 = lshr i64 %45, 17
  %47 = select i1 false, i64 0, i64 %46
  %48 = shl i64 %45, 39
  %49 = select i1 false, i64 0, i64 %48
  %50 = or i64 %47, %49
  %51 = and i64 %50, 72057594037927935
  %52 = xor i64 %51, 25399393228665167
  %53 = inttoptr i64 %52 to ptr
  %54 = call { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"strings.(*Builder).WriteString"(ptr %53, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 5 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %42)
  %55 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %56 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %56)
  %57 = load i64, ptr %0, align 4
  %58 = and i64 %57, 72057594037927935
  %59 = lshr i64 %58, 17
  %60 = select i1 false, i64 0, i64 %59
  %61 = shl i64 %58, 39
  %62 = select i1 false, i64 0, i64 %61
  %63 = or i64 %60, %62
  %64 = and i64 %63, 72057594037927935
  %65 = xor i64 %64, 25399393228665167
  %66 = inttoptr i64 %65 to ptr
  %67 = call i64 @"strings.(*Builder).Len"(ptr %66)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %55)
  %68 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %69 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %69)
  %70 = load i64, ptr %0, align 4
  %71 = and i64 %70, 72057594037927935
  %72 = lshr i64 %71, 17
  %73 = select i1 false, i64 0, i64 %72
  %74 = shl i64 %71, 39
  %75 = select i1 false, i64 0, i64 %74
  %76 = or i64 %73, %75
  %77 = and i64 %76, 72057594037927935
  %78 = xor i64 %77, 25399393228665167
  %79 = inttoptr i64 %78 to ptr
  %80 = call i64 @"strings.(*Builder).Cap"(ptr %79)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %68)
  %81 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %82 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %82)
  %83 = load i64, ptr %0, align 4
  %84 = and i64 %83, 72057594037927935
  %85 = lshr i64 %84, 17
  %86 = select i1 false, i64 0, i64 %85
  %87 = shl i64 %84, 39
  %88 = select i1 false, i64 0, i64 %87
  %89 = or i64 %86, %88
  %90 = and i64 %89, 72057594037927935
  %91 = xor i64 %90, 25399393228665167
  %92 = inttoptr i64 %91 to ptr
  store i64 0, ptr %0, align 4
  call void @runtime.TouchConservativeSlot(ptr %0, i64 8)
  store ptr null, ptr %1, align 8
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  call void @runtime.ClobberPointerRegs()
  %93 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"strings.(*Builder).String"(ptr %92)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %81)
  %94 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %93, ptr %94, align 8
  %95 = icmp eq ptr %94, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %95)
  %96 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %94, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %96, ptr %5, align 8
  %97 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %96, 0
  %98 = ptrtoint ptr %97 to i64
  %99 = and i64 %98, 72057594037927935
  %100 = xor i64 %99, 25399393228665167
  %101 = shl i64 %100, 17
  %102 = select i1 false, i64 0, i64 %101
  %103 = lshr i64 %100, 39
  %104 = select i1 false, i64 0, i64 %103
  %105 = or i64 %102, %104
  %106 = and i64 %105, 72057594037927935
  %107 = or i64 %106, -6557241057451442176
  %108 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %96, 1
  %109 = insertvalue { i64, i64 } undef, i64 %107, 0
  %110 = insertvalue { i64, i64 } %109, i64 %108, 1
  store { i64, i64 } %110, ptr %4, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %94, align 8
  call void @runtime.TouchConservativeSlot(ptr %94, i64 16)
  call void @runtime.ClobberPointerRegs()
  %111 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %112 = icmp eq ptr %5, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %112)
  %113 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %5, align 8
  store { i64, i64 } zeroinitializer, ptr %4, align 4
  call void @runtime.TouchConservativeSlot(ptr %4, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 16)
  call void @runtime.ClobberPointerRegs()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 4 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %67)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %80)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 7 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %113)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %111)
  %114 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %115 = call i64 @strings.IndexFunc(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 13 }, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testlibgo/strings.main$1", ptr null })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %114)
  %116 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %115)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %116)
  %117 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %118 = call i64 @strings.IndexFunc(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 12 }, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testlibgo/strings.main$1", ptr null })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %117)
  %119 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %118)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %119)
  ret void
}

define i1 @"github.com/goplus/llgo/cl/_testlibgo/strings.main$1"(i32 %0) {
_llgo_0:
  %1 = alloca i64, align 8
  %2 = alloca ptr, align 8
  store ptr null, ptr %2, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  %3 = load ptr, ptr @unicode.Han, align 8
  %4 = ptrtoint ptr %3 to i64
  %5 = and i64 %4, 72057594037927935
  %6 = xor i64 %5, 25399393228665167
  %7 = shl i64 %6, 17
  %8 = select i1 false, i64 0, i64 %7
  %9 = lshr i64 %6, 39
  %10 = select i1 false, i64 0, i64 %9
  %11 = or i64 %8, %10
  %12 = and i64 %11, 72057594037927935
  %13 = or i64 %12, -6557241057451442176
  store i64 %13, ptr %1, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %2, i64 %13)
  call void @runtime.ClobberPointerRegs()
  %14 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %15 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %15)
  %16 = load i64, ptr %1, align 4
  %17 = and i64 %16, 72057594037927935
  %18 = lshr i64 %17, 17
  %19 = select i1 false, i64 0, i64 %18
  %20 = shl i64 %17, 39
  %21 = select i1 false, i64 0, i64 %20
  %22 = or i64 %19, %21
  %23 = and i64 %22, 72057594037927935
  %24 = xor i64 %23, 25399393228665167
  %25 = inttoptr i64 %24 to ptr
  store i64 0, ptr %1, align 4
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  store ptr null, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  call void @runtime.ClobberPointerRegs()
  %26 = call i1 @unicode.Is(ptr %25, i32 %0)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %14)
  ret i1 %26
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1)

declare void @strings.init()

declare void @unicode.init()

declare i64 @runtime.AllocZHidden(i64)

declare void @runtime.StoreHiddenPointerRoot(ptr, i64)

declare %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.StringToBytes"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @runtime.TouchConservativeSlot(ptr, i64)

declare void @runtime.ClobberPointerRegs()

declare { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"strings.(*Builder).Write"(ptr, %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr)

declare { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"strings.(*Builder).WriteString"(ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String")

declare i64 @"strings.(*Builder).Len"(ptr)

declare i64 @"strings.(*Builder).Cap"(ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"strings.(*Builder).String"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64)

declare i64 @strings.IndexFunc(%"github.com/goplus/llgo/runtime/internal/runtime.String", { ptr, ptr })

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/cl/_testlibgo/strings.main$1"(ptr %0, i32 %1) {
_llgo_0:
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/cl/_testlibgo/strings.main$1")
  %3 = tail call i1 @"github.com/goplus/llgo/cl/_testlibgo/strings.main$1"(i32 %1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %2)
  ret i1 %3
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr)

declare i1 @unicode.Is(ptr, i32)
