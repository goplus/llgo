; ModuleID = 'github.com/goplus/llgo/cl/_testgo/interface'
source_filename = "github.com/goplus/llgo/cl/_testgo/interface"

%"github.com/goplus/llgo/cl/_testdata/foo.Game" = type {}
%"github.com/goplus/llgo/runtime/abi.PtrType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr }
%"github.com/goplus/llgo/runtime/abi.Type" = type { i64, i64, i32, i8, i8, i8, i8, { ptr, ptr }, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/abi.UncommonType" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", i16, i16, i32 }
%"github.com/goplus/llgo/runtime/abi.Method" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, ptr, ptr }
%"github.com/goplus/llgo/runtime/abi.StructType" = type { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/abi.FuncType" = type { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"github.com/goplus/llgo/runtime/abi.StructField" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 }
%"github.com/goplus/llgo/cl/_testgo/interface.Game2" = type {}
%"github.com/goplus/llgo/runtime/abi.InterfaceType" = type { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"github.com/goplus/llgo/runtime/abi.Imethod" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
%"github.com/goplus/llgo/cl/_testgo/interface.Game1" = type { ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }

@"github.com/goplus/llgo/cl/_testgo/interface.init$guard" = global i1 false, align 1
@"__llgo.moduleZeroSizedAlloc$3f8a2b30c61b8a66" = private unnamed_addr global %"github.com/goplus/llgo/cl/_testdata/foo.Game" zeroinitializer
@"*_llgo_github.com/goplus/llgo/cl/_testgo/interface.Game1" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 577263123, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 10 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/interface.Game1" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 43 }, i16 2, i16 1, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 4 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", ptr @"github.com/goplus/llgo/cl/_testgo/interface.(*Game1).Load", ptr @"github.com/goplus/llgo/cl/_testgo/interface.(*Game1).Load" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 48 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", ptr @"github.com/goplus/llgo/cl/_testgo/interface.(*Game1).initGame", ptr @"github.com/goplus/llgo/cl/_testgo/interface.(*Game1).initGame" }] }, align 8
@0 = private unnamed_addr constant [10 x i8] c"main.Game1", align 1
@"_llgo_github.com/goplus/llgo/cl/_testgo/interface.Game1" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1109946175, i8 13, i8 8, i8 8, i8 57, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/interface.Game1" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 10 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/interface.Game1" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_struct$4-TjwxozfgwR2wiuWBRPbxjG2hQENVAzi2bsR9iH62Q$fields", i64 1, i64 1 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 43 }, i16 2, i16 1, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 4 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", ptr @"github.com/goplus/llgo/cl/_testgo/interface.(*Game1).Load", ptr @"github.com/goplus/llgo/cl/_testgo/interface.Game1.Load" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 48 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", ptr @"github.com/goplus/llgo/cl/_testgo/interface.(*Game1).initGame", ptr @"github.com/goplus/llgo/cl/_testgo/interface.Game1.initGame" }] }, align 8
@1 = private unnamed_addr constant [4 x i8] c"Game", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testdata/foo.Game" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -2093172240, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 8 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testdata/foo.Game" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 39 }, i16 2, i16 1, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 4 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", ptr @"github.com/goplus/llgo/cl/_testdata/foo.(*Game).Load", ptr @"github.com/goplus/llgo/cl/_testdata/foo.(*Game).Load" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 48 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", ptr @"github.com/goplus/llgo/cl/_testdata/foo.(*Game).initGame", ptr @"github.com/goplus/llgo/cl/_testdata/foo.(*Game).initGame" }] }, align 8
@2 = private unnamed_addr constant [8 x i8] c"foo.Game", align 1
@"_llgo_github.com/goplus/llgo/cl/_testdata/foo.Game" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 0, i64 0, i32 -1409246249, i8 13, i8 1, i8 1, i8 25, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal0", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 8 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testdata/foo.Game" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 39 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@3 = private unnamed_addr constant [39 x i8] c"github.com/goplus/llgo/cl/_testdata/foo", align 1
@4 = private unnamed_addr constant [4 x i8] c"Load", align 1
@"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1790696805, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 6 }, ptr @"*_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@5 = private unnamed_addr constant [6 x i8] c"func()", align 1
@"*_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -130179135, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 6 }, ptr null }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" }, align 8
@6 = private unnamed_addr constant [8 x i8] c"initGame", align 1
@7 = private unnamed_addr constant [48 x i8] c"github.com/goplus/llgo/cl/_testdata/foo.initGame", align 1
@"_llgo_struct$4-TjwxozfgwR2wiuWBRPbxjG2hQENVAzi2bsR9iH62Q$fields" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testdata/foo.Game", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 true }], align 8
@8 = private unnamed_addr constant [43 x i8] c"github.com/goplus/llgo/cl/_testgo/interface", align 1
@"__llgo.moduleZeroSizedAlloc$7f47daf0279219a8" = private unnamed_addr global %"github.com/goplus/llgo/cl/_testgo/interface.Game2" zeroinitializer
@"*_llgo_github.com/goplus/llgo/cl/_testgo/interface.Game2" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1593287114, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 10 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/interface.Game2" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 43 }, i16 1, i16 0, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 52 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", ptr @"github.com/goplus/llgo/cl/_testgo/interface.(*Game2).initGame", ptr @"github.com/goplus/llgo/cl/_testgo/interface.(*Game2).initGame" }] }, align 8
@9 = private unnamed_addr constant [10 x i8] c"main.Game2", align 1
@"_llgo_github.com/goplus/llgo/cl/_testgo/interface.Game2" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 0, i64 0, i32 985796467, i8 13, i8 1, i8 1, i8 25, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal0", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 10 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/interface.Game2" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 43 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@10 = private unnamed_addr constant [52 x i8] c"github.com/goplus/llgo/cl/_testgo/interface.initGame", align 1
@"_llgo_github.com/goplus/llgo/cl/_testdata/foo.Gamer" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -1880937576, i8 4, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 9 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testdata/foo.Gamer" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testdata/foo.iface$sO8a1LvuUsjXwiwaC6sR9-L4DiYgiOnZi7iosyShJXg$imethods", i64 2, i64 2 } }, align 8
@11 = private unnamed_addr constant [9 x i8] c"foo.Gamer", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testdata/foo.Gamer" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1067522944, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 9 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testdata/foo.Gamer" }, align 8
@"github.com/goplus/llgo/cl/_testdata/foo.iface$sO8a1LvuUsjXwiwaC6sR9-L4DiYgiOnZi7iosyShJXg$imethods" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 4 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" }, %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 48 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" }], align 8
@"github.com/goplus/llgo/cl/_testdata/foo.iface$sO8a1LvuUsjXwiwaC6sR9-L4DiYgiOnZi7iosyShJXg" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 1707087822, i8 0, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 36 }, ptr @"*github.com/goplus/llgo/cl/_testdata/foo.iface$sO8a1LvuUsjXwiwaC6sR9-L4DiYgiOnZi7iosyShJXg" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testdata/foo.iface$sO8a1LvuUsjXwiwaC6sR9-L4DiYgiOnZi7iosyShJXg$imethods", i64 2, i64 2 } }, align 8
@12 = private unnamed_addr constant [36 x i8] c"interface { Load(); foo.initGame() }", align 1
@"*github.com/goplus/llgo/cl/_testdata/foo.iface$sO8a1LvuUsjXwiwaC6sR9-L4DiYgiOnZi7iosyShJXg" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -535098092, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 36 }, ptr null }, ptr @"github.com/goplus/llgo/cl/_testdata/foo.iface$sO8a1LvuUsjXwiwaC6sR9-L4DiYgiOnZi7iosyShJXg" }, align 8
@13 = private unnamed_addr constant [2 x i8] c"OK", align 1
@14 = private unnamed_addr constant [4 x i8] c"FAIL", align 1
@llvm.compiler.used = appending global [5 x ptr] [ptr @"github.com/goplus/llgo/cl/_testgo/interface.Game1.Load", ptr @"github.com/goplus/llgo/cl/_testgo/interface.Game1.initGame", ptr @"github.com/goplus/llgo/cl/_testgo/interface.(*Game1).Load", ptr @"github.com/goplus/llgo/cl/_testgo/interface.(*Game1).initGame", ptr @"github.com/goplus/llgo/cl/_testgo/interface.(*Game2).initGame"], section "llvm.metadata"

define void @"github.com/goplus/llgo/cl/_testgo/interface.Game1.Load"(%"github.com/goplus/llgo/cl/_testgo/interface.Game1" %0) {
_llgo_0:
  %1 = alloca %"github.com/goplus/llgo/cl/_testgo/interface.Game1", align 8
  call void @llvm.memset(ptr %1, i8 0, i64 8, i1 false)
  store %"github.com/goplus/llgo/cl/_testgo/interface.Game1" %0, ptr %1, align 8
  %2 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %2)
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/interface.Game1", ptr %1, i32 0, i32 0
  %4 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %4)
  %5 = load ptr, ptr %3, align 8
  call void @"github.com/goplus/llgo/cl/_testdata/foo.(*Game).Load"(ptr %5)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/interface.Game1.initGame"(%"github.com/goplus/llgo/cl/_testgo/interface.Game1" %0) {
_llgo_0:
  %1 = alloca %"github.com/goplus/llgo/cl/_testgo/interface.Game1", align 8
  call void @llvm.memset(ptr %1, i8 0, i64 8, i1 false)
  store %"github.com/goplus/llgo/cl/_testgo/interface.Game1" %0, ptr %1, align 8
  %2 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %2)
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/interface.Game1", ptr %1, i32 0, i32 0
  %4 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %4)
  %5 = load ptr, ptr %3, align 8
  call void @"github.com/goplus/llgo/cl/_testdata/foo.(*Game).initGame"(ptr %5)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/interface.(*Game1).Load"(ptr %0) {
_llgo_0:
  %1 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1)
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/interface.Game1", ptr %0, i32 0, i32 0
  %3 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %3)
  %4 = load ptr, ptr %2, align 8
  call void @"github.com/goplus/llgo/cl/_testdata/foo.(*Game).Load"(ptr %4)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/interface.(*Game1).initGame"(ptr %0) {
_llgo_0:
  %1 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1)
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/interface.Game1", ptr %0, i32 0, i32 0
  %3 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %3)
  %4 = load ptr, ptr %2, align 8
  call void @"github.com/goplus/llgo/cl/_testdata/foo.(*Game).initGame"(ptr %4)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/interface.(*Game2).initGame"(ptr %0) {
_llgo_0:
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/interface.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testgo/interface.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testgo/interface.init$guard", align 1
  call void @"github.com/goplus/llgo/cl/_testdata/foo.init"()
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/interface.main"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %1 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1)
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/interface.Game1", ptr %0, i32 0, i32 0
  store ptr @"__llgo.moduleZeroSizedAlloc$3f8a2b30c61b8a66", ptr %2, align 8
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/interface.Game1", ptr undef }, ptr %0, 1
  %4 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %3, 0
  %5 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.Implements"(ptr @"_llgo_github.com/goplus/llgo/cl/_testdata/foo.Gamer", ptr %4)
  br i1 %5, label %_llgo_3, label %_llgo_4

_llgo_1:                                          ; preds = %_llgo_5
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %22)
  %7 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %22, 0
  %8 = getelementptr ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  %10 = insertvalue { ptr, ptr } undef, ptr %9, 0
  %11 = insertvalue { ptr, ptr } %10, ptr %6, 1
  %12 = extractvalue { ptr, ptr } %11, 1
  %13 = extractvalue { ptr, ptr } %11, 0
  call void %13(ptr %12)
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_5
  %14 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.Implements"(ptr @"_llgo_github.com/goplus/llgo/cl/_testdata/foo.Gamer", ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/interface.Game2")
  br i1 %14, label %_llgo_6, label %_llgo_7

_llgo_3:                                          ; preds = %_llgo_0
  %15 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %3, 1
  %16 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"github.com/goplus/llgo/cl/_testdata/foo.iface$sO8a1LvuUsjXwiwaC6sR9-L4DiYgiOnZi7iosyShJXg", ptr %4)
  %17 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %16, 0
  %18 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %17, ptr %15, 1
  %19 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } undef, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %18, 0
  %20 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %19, i1 true, 1
  br label %_llgo_5

_llgo_4:                                          ; preds = %_llgo_0
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_3
  %21 = phi { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } [ %20, %_llgo_3 ], [ zeroinitializer, %_llgo_4 ]
  %22 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %21, 0
  %23 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %21, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 2 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintIface"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %22)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %23)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br i1 %23, label %_llgo_1, label %_llgo_2

_llgo_6:                                          ; preds = %_llgo_2
  %24 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"github.com/goplus/llgo/cl/_testdata/foo.iface$sO8a1LvuUsjXwiwaC6sR9-L4DiYgiOnZi7iosyShJXg", ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/interface.Game2")
  %25 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %24, 0
  %26 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %25, ptr @"__llgo.moduleZeroSizedAlloc$7f47daf0279219a8", 1
  %27 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } undef, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %26, 0
  %28 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %27, i1 true, 1
  br label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_2
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_6
  %29 = phi { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } [ %28, %_llgo_6 ], [ zeroinitializer, %_llgo_7 ]
  %30 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %29, 0
  %31 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %29, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 4 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintIface"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %30)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %31)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1)

declare void @"github.com/goplus/llgo/cl/_testdata/foo.(*Game).Load"(ptr)

declare void @"github.com/goplus/llgo/cl/_testdata/foo.(*Game).initGame"(ptr)

declare void @"github.com/goplus/llgo/cl/_testdata/foo.init"()

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %1, ptr %2)
  ret i1 %3
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.structequal"(ptr, ptr, ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal0"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal0"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal0"(ptr %1, ptr %2)
  ret i1 %3
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.interequal"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.interequal"(ptr %1, ptr %2)
  ret i1 %3
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.Implements"(ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintIface"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
