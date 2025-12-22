; ModuleID = 'github.com/goplus/llgo/cl/_testgo/interface'
source_filename = "github.com/goplus/llgo/cl/_testgo/interface"

%"github.com/goplus/llgo/runtime/abi.PtrType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr }
%"github.com/goplus/llgo/runtime/abi.Type" = type { i64, i64, i32, i8, i8, i8, i8, { ptr, ptr }, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/abi.UncommonType" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", i16, i16, i32 }
%"github.com/goplus/llgo/runtime/abi.Method" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, ptr, ptr }
%"github.com/goplus/llgo/runtime/abi.StructType" = type { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/abi.FuncType" = type { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"github.com/goplus/llgo/runtime/abi.StructField" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 }
%"github.com/goplus/llgo/runtime/abi.InterfaceType" = type { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"github.com/goplus/llgo/runtime/abi.Imethod" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
%"github.com/goplus/llgo/cl/_testgo/interface.Game1" = type { ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }

@"github.com/goplus/llgo/cl/_testgo/interface.init$guard" = global i1 false, align 1
<<<<<<< HEAD
<<<<<<< HEAD
@"*_llgo_github.com/goplus/llgo/cl/_testgo/interface.Game1" = weak_odr global { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 27836203, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 49 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/interface.Game1" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 43 }, i16 2, i16 1, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 4 }, ptr @"_llgo_closure$b7Su1hWaFih-M0M9hMk6nO_RD1K_GQu5WjIXQp6Q2e8", ptr @"github.com/goplus/llgo/cl/_testgo/interface.(*Game1).Load", ptr @"github.com/goplus/llgo/cl/_testgo/interface.(*Game1).Load" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 48 }, ptr @"_llgo_closure$b7Su1hWaFih-M0M9hMk6nO_RD1K_GQu5WjIXQp6Q2e8", ptr null, ptr null }] }, align 8
@0 = private unnamed_addr constant [49 x i8] c"github.com/goplus/llgo/cl/_testgo/interface.Game1", align 1
@"_llgo_github.com/goplus/llgo/cl/_testgo/interface.Game1" = weak_odr global { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 13913568, i8 13, i8 8, i8 8, i8 57, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/interface.Game1" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 49 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/interface.Game1" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/interface.Game1$fields", i64 1, i64 1 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 43 }, i16 2, i16 1, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 4 }, ptr @"_llgo_closure$b7Su1hWaFih-M0M9hMk6nO_RD1K_GQu5WjIXQp6Q2e8", ptr @"github.com/goplus/llgo/cl/_testgo/interface.(*Game1).Load", ptr @"github.com/goplus/llgo/cl/_testgo/interface.Game1.Load" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 48 }, ptr @"_llgo_closure$b7Su1hWaFih-M0M9hMk6nO_RD1K_GQu5WjIXQp6Q2e8", ptr null, ptr null }] }, align 8
@1 = private unnamed_addr constant [43 x i8] c"github.com/goplus/llgo/cl/_testgo/interface", align 1
@2 = private unnamed_addr constant [4 x i8] c"Game", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testdata/foo.Game" = weak_odr global { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 27831083, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 44 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testdata/foo.Game" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 39 }, i16 2, i16 1, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 4 }, ptr @"_llgo_closure$b7Su1hWaFih-M0M9hMk6nO_RD1K_GQu5WjIXQp6Q2e8", ptr @"github.com/goplus/llgo/cl/_testdata/foo.(*Game).Load", ptr @"github.com/goplus/llgo/cl/_testdata/foo.(*Game).Load" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 48 }, ptr @"_llgo_closure$b7Su1hWaFih-M0M9hMk6nO_RD1K_GQu5WjIXQp6Q2e8", ptr @"github.com/goplus/llgo/cl/_testdata/foo.(*Game).initGame", ptr @"github.com/goplus/llgo/cl/_testdata/foo.(*Game).initGame" }] }, align 8
@3 = private unnamed_addr constant [44 x i8] c"github.com/goplus/llgo/cl/_testdata/foo.Game", align 1
@"_llgo_github.com/goplus/llgo/cl/_testdata/foo.Game" = weak_odr global { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 0, i64 0, i32 13911008, i8 13, i8 0, i8 0, i8 25, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal0", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 44 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testdata/foo.Game" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 39 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
=======
@"*_llgo_github.com/goplus/llgo/cl/_testgo/interface.Game1" = weak_odr global { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 577263123, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 49 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/interface.Game1" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 43 }, i16 2, i16 1, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 4 }, ptr @"_llgo_closure$b7Su1hWaFih-M0M9hMk6nO_RD1K_GQu5WjIXQp6Q2e8", ptr @"github.com/goplus/llgo/cl/_testgo/interface.(*Game1).Load", ptr @"github.com/goplus/llgo/cl/_testgo/interface.(*Game1).Load" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 48 }, ptr @"_llgo_closure$b7Su1hWaFih-M0M9hMk6nO_RD1K_GQu5WjIXQp6Q2e8", ptr null, ptr null }] }, align 8
=======
@"*_llgo_github.com/goplus/llgo/cl/_testgo/interface.Game1" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 577263123, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 49 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/interface.Game1" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 43 }, i16 2, i16 1, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 4 }, ptr @"_llgo_closure$b7Su1hWaFih-M0M9hMk6nO_RD1K_GQu5WjIXQp6Q2e8", ptr @"github.com/goplus/llgo/cl/_testgo/interface.(*Game1).Load", ptr @"github.com/goplus/llgo/cl/_testgo/interface.(*Game1).Load" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 48 }, ptr @"_llgo_closure$b7Su1hWaFih-M0M9hMk6nO_RD1K_GQu5WjIXQp6Q2e8", ptr null, ptr null }] }, align 8
>>>>>>> fbfc8142 (ssa: abiType global set constant)
@0 = private unnamed_addr constant [49 x i8] c"github.com/goplus/llgo/cl/_testgo/interface.Game1", align 1
@"_llgo_github.com/goplus/llgo/cl/_testgo/interface.Game1" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1109946175, i8 13, i8 8, i8 8, i8 57, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/interface.Game1" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 49 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/interface.Game1" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_struct$4-TjwxozfgwR2wiuWBRPbxjG2hQENVAzi2bsR9iH62Q$fields", i64 1, i64 1 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 43 }, i16 2, i16 1, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 4 }, ptr @"_llgo_closure$b7Su1hWaFih-M0M9hMk6nO_RD1K_GQu5WjIXQp6Q2e8", ptr @"github.com/goplus/llgo/cl/_testgo/interface.(*Game1).Load", ptr @"github.com/goplus/llgo/cl/_testgo/interface.Game1.Load" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 48 }, ptr @"_llgo_closure$b7Su1hWaFih-M0M9hMk6nO_RD1K_GQu5WjIXQp6Q2e8", ptr null, ptr null }] }, align 8
@1 = private unnamed_addr constant [43 x i8] c"github.com/goplus/llgo/cl/_testgo/interface", align 1
@2 = private unnamed_addr constant [4 x i8] c"Game", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testdata/foo.Game" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -2093172240, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 44 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testdata/foo.Game" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 39 }, i16 2, i16 1, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 4 }, ptr @"_llgo_closure$b7Su1hWaFih-M0M9hMk6nO_RD1K_GQu5WjIXQp6Q2e8", ptr @"github.com/goplus/llgo/cl/_testdata/foo.(*Game).Load", ptr @"github.com/goplus/llgo/cl/_testdata/foo.(*Game).Load" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 48 }, ptr @"_llgo_closure$b7Su1hWaFih-M0M9hMk6nO_RD1K_GQu5WjIXQp6Q2e8", ptr @"github.com/goplus/llgo/cl/_testdata/foo.(*Game).initGame", ptr @"github.com/goplus/llgo/cl/_testdata/foo.(*Game).initGame" }] }, align 8
@3 = private unnamed_addr constant [44 x i8] c"github.com/goplus/llgo/cl/_testdata/foo.Game", align 1
<<<<<<< HEAD
@"_llgo_github.com/goplus/llgo/cl/_testdata/foo.Game" = weak_odr global { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 0, i64 0, i32 -1409246249, i8 13, i8 0, i8 0, i8 25, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal0", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 44 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testdata/foo.Game" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 39 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
>>>>>>> 713f84c8 (ssa: abi hash use sha256.sum by name)
=======
@"_llgo_github.com/goplus/llgo/cl/_testdata/foo.Game" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 0, i64 0, i32 -1409246249, i8 13, i8 0, i8 0, i8 25, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal0", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 44 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testdata/foo.Game" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 39 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
>>>>>>> fbfc8142 (ssa: abiType global set constant)
@4 = private unnamed_addr constant [39 x i8] c"github.com/goplus/llgo/cl/_testdata/foo", align 1
@5 = private unnamed_addr constant [4 x i8] c"Load", align 1
@"_llgo_closure$b7Su1hWaFih-M0M9hMk6nO_RD1K_GQu5WjIXQp6Q2e8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -1187156019, i8 32, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 42 }, ptr @"*_llgo_closure$b7Su1hWaFih-M0M9hMk6nO_RD1K_GQu5WjIXQp6Q2e8" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_closure$b7Su1hWaFih-M0M9hMk6nO_RD1K_GQu5WjIXQp6Q2e8$fields", i64 2, i64 2 } }, align 8
@6 = private unnamed_addr constant [42 x i8] c"struct { $f func(); $data unsafe.Pointer }", align 1
@"*_llgo_closure$b7Su1hWaFih-M0M9hMk6nO_RD1K_GQu5WjIXQp6Q2e8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -30397043, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 42 }, ptr null }, ptr @"_llgo_closure$b7Su1hWaFih-M0M9hMk6nO_RD1K_GQu5WjIXQp6Q2e8" }, align 8
@7 = private unnamed_addr constant [2 x i8] c"$f", align 1
<<<<<<< HEAD
<<<<<<< HEAD
@"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" = weak_odr global %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 82187, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 6 }, ptr @"*_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac$in", i64 0, i64 0 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac$out", i64 0, i64 0 } }, align 8
@8 = private unnamed_addr constant [6 x i8] c"func()", align 1
@"*_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" = weak_odr global %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 173441, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 6 }, ptr null }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" }, align 8
@"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac$in" = weak_odr global [0 x ptr] zeroinitializer, align 8
@"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac$out" = weak_odr global [0 x ptr] zeroinitializer, align 8
=======
@"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" = weak_odr global %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1790696805, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 6 }, ptr @"*_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@8 = private unnamed_addr constant [6 x i8] c"func()", align 1
@"*_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" = weak_odr global %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -130179135, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 6 }, ptr null }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" }, align 8
>>>>>>> 713f84c8 (ssa: abi hash use sha256.sum by name)
=======
@"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1790696805, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 6 }, ptr @"*_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@8 = private unnamed_addr constant [6 x i8] c"func()", align 1
@"*_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -130179135, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 6 }, ptr null }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" }, align 8
>>>>>>> fbfc8142 (ssa: abiType global set constant)
@9 = private unnamed_addr constant [5 x i8] c"$data", align 1
@_llgo_Pointer = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 507576105, i8 8, i8 8, i8 8, i8 58, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 14 }, ptr @"*_llgo_Pointer" }, align 8
@10 = private unnamed_addr constant [14 x i8] c"unsafe.Pointer", align 1
@"*_llgo_Pointer" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1134390089, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 14 }, ptr null }, ptr @_llgo_Pointer }, align 8
@"_llgo_closure$b7Su1hWaFih-M0M9hMk6nO_RD1K_GQu5WjIXQp6Q2e8$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 2 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 5 }, ptr @_llgo_Pointer, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@11 = private unnamed_addr constant [8 x i8] c"initGame", align 1
@12 = private unnamed_addr constant [48 x i8] c"github.com/goplus/llgo/cl/_testdata/foo.initGame", align 1
<<<<<<< HEAD
<<<<<<< HEAD
@"_llgo_github.com/goplus/llgo/cl/_testgo/interface.Game1$fields" = weak_odr global [1 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testdata/foo.Game", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 true }], align 8
@"*_llgo_github.com/goplus/llgo/cl/_testgo/interface.Game2" = weak_odr global { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 27835755, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 49 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/interface.Game2" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 43 }, i16 1, i16 0, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 52 }, ptr @"_llgo_closure$b7Su1hWaFih-M0M9hMk6nO_RD1K_GQu5WjIXQp6Q2e8", ptr @"github.com/goplus/llgo/cl/_testgo/interface.(*Game2).initGame", ptr @"github.com/goplus/llgo/cl/_testgo/interface.(*Game2).initGame" }] }, align 8
@13 = private unnamed_addr constant [49 x i8] c"github.com/goplus/llgo/cl/_testgo/interface.Game2", align 1
@"_llgo_github.com/goplus/llgo/cl/_testgo/interface.Game2" = weak_odr global { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 0, i64 0, i32 13913344, i8 13, i8 0, i8 0, i8 25, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal0", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 49 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/interface.Game2" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 43 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@14 = private unnamed_addr constant [52 x i8] c"github.com/goplus/llgo/cl/_testgo/interface.initGame", align 1
@"_llgo_github.com/goplus/llgo/cl/_testdata/foo.Gamer" = weak_odr global %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 13910544, i8 4, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 45 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testdata/foo.Gamer" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testgo/interface.iface$sO8a1LvuUsjXwiwaC6sR9-L4DiYgiOnZi7iosyShJXg$imethods", i64 2, i64 2 } }, align 8
@15 = private unnamed_addr constant [45 x i8] c"github.com/goplus/llgo/cl/_testdata/foo.Gamer", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testdata/foo.Gamer" = weak_odr global %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 27830155, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 45 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testdata/foo.Gamer" }, align 8
=======
@"_llgo_struct$4-TjwxozfgwR2wiuWBRPbxjG2hQENVAzi2bsR9iH62Q$fields" = weak_odr global [1 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testdata/foo.Game", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 true }], align 8
@"*_llgo_github.com/goplus/llgo/cl/_testgo/interface.Game2" = weak_odr global { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1593287114, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 49 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/interface.Game2" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 43 }, i16 1, i16 0, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 52 }, ptr @"_llgo_closure$b7Su1hWaFih-M0M9hMk6nO_RD1K_GQu5WjIXQp6Q2e8", ptr @"github.com/goplus/llgo/cl/_testgo/interface.(*Game2).initGame", ptr @"github.com/goplus/llgo/cl/_testgo/interface.(*Game2).initGame" }] }, align 8
=======
@"_llgo_struct$4-TjwxozfgwR2wiuWBRPbxjG2hQENVAzi2bsR9iH62Q$fields" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testdata/foo.Game", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 true }], align 8
@"*_llgo_github.com/goplus/llgo/cl/_testgo/interface.Game2" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1593287114, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 49 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/interface.Game2" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 43 }, i16 1, i16 0, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 52 }, ptr @"_llgo_closure$b7Su1hWaFih-M0M9hMk6nO_RD1K_GQu5WjIXQp6Q2e8", ptr @"github.com/goplus/llgo/cl/_testgo/interface.(*Game2).initGame", ptr @"github.com/goplus/llgo/cl/_testgo/interface.(*Game2).initGame" }] }, align 8
>>>>>>> fbfc8142 (ssa: abiType global set constant)
@13 = private unnamed_addr constant [49 x i8] c"github.com/goplus/llgo/cl/_testgo/interface.Game2", align 1
@"_llgo_github.com/goplus/llgo/cl/_testgo/interface.Game2" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 0, i64 0, i32 985796467, i8 13, i8 0, i8 0, i8 25, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal0", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 49 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/interface.Game2" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 43 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@14 = private unnamed_addr constant [52 x i8] c"github.com/goplus/llgo/cl/_testgo/interface.initGame", align 1
@"_llgo_github.com/goplus/llgo/cl/_testdata/foo.Gamer" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -1880937576, i8 4, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 45 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testdata/foo.Gamer" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testgo/interface.iface$sO8a1LvuUsjXwiwaC6sR9-L4DiYgiOnZi7iosyShJXg$imethods", i64 2, i64 2 } }, align 8
@15 = private unnamed_addr constant [45 x i8] c"github.com/goplus/llgo/cl/_testdata/foo.Gamer", align 1
<<<<<<< HEAD
@"*_llgo_github.com/goplus/llgo/cl/_testdata/foo.Gamer" = weak_odr global %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1067522944, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 45 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testdata/foo.Gamer" }, align 8
>>>>>>> 713f84c8 (ssa: abi hash use sha256.sum by name)
@"github.com/goplus/llgo/cl/_testgo/interface.iface$sO8a1LvuUsjXwiwaC6sR9-L4DiYgiOnZi7iosyShJXg$imethods" = weak_odr global [2 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 4 }, ptr @"_llgo_closure$b7Su1hWaFih-M0M9hMk6nO_RD1K_GQu5WjIXQp6Q2e8" }, %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 48 }, ptr @"_llgo_closure$b7Su1hWaFih-M0M9hMk6nO_RD1K_GQu5WjIXQp6Q2e8" }], align 8
@"github.com/goplus/llgo/cl/_testgo/interface.iface$sO8a1LvuUsjXwiwaC6sR9-L4DiYgiOnZi7iosyShJXg" = weak_odr global %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 1069143831, i8 0, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 32 }, ptr @"*github.com/goplus/llgo/cl/_testgo/interface.iface$sO8a1LvuUsjXwiwaC6sR9-L4DiYgiOnZi7iosyShJXg" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testgo/interface.iface$sO8a1LvuUsjXwiwaC6sR9-L4DiYgiOnZi7iosyShJXg$imethods", i64 2, i64 2 } }, align 8
=======
@"*_llgo_github.com/goplus/llgo/cl/_testdata/foo.Gamer" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1067522944, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 45 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testdata/foo.Gamer" }, align 8
@"github.com/goplus/llgo/cl/_testgo/interface.iface$sO8a1LvuUsjXwiwaC6sR9-L4DiYgiOnZi7iosyShJXg$imethods" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 4 }, ptr @"_llgo_closure$b7Su1hWaFih-M0M9hMk6nO_RD1K_GQu5WjIXQp6Q2e8" }, %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 48 }, ptr @"_llgo_closure$b7Su1hWaFih-M0M9hMk6nO_RD1K_GQu5WjIXQp6Q2e8" }], align 8
@"github.com/goplus/llgo/cl/_testgo/interface.iface$sO8a1LvuUsjXwiwaC6sR9-L4DiYgiOnZi7iosyShJXg" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 1069143831, i8 0, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 32 }, ptr @"*github.com/goplus/llgo/cl/_testgo/interface.iface$sO8a1LvuUsjXwiwaC6sR9-L4DiYgiOnZi7iosyShJXg" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testgo/interface.iface$sO8a1LvuUsjXwiwaC6sR9-L4DiYgiOnZi7iosyShJXg$imethods", i64 2, i64 2 } }, align 8
>>>>>>> fbfc8142 (ssa: abiType global set constant)
@16 = private unnamed_addr constant [32 x i8] c"interface { Load(); initGame() }", align 1
@"*github.com/goplus/llgo/cl/_testgo/interface.iface$sO8a1LvuUsjXwiwaC6sR9-L4DiYgiOnZi7iosyShJXg" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 972957335, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 32 }, ptr null }, ptr @"github.com/goplus/llgo/cl/_testgo/interface.iface$sO8a1LvuUsjXwiwaC6sR9-L4DiYgiOnZi7iosyShJXg" }, align 8
@17 = private unnamed_addr constant [2 x i8] c"OK", align 1
@18 = private unnamed_addr constant [4 x i8] c"FAIL", align 1

define void @"github.com/goplus/llgo/cl/_testgo/interface.Game1.Load"(%"github.com/goplus/llgo/cl/_testgo/interface.Game1" %0) {
_llgo_0:
  %1 = alloca %"github.com/goplus/llgo/cl/_testgo/interface.Game1", align 8
  call void @llvm.memset(ptr %1, i8 0, i64 8, i1 false)
  store %"github.com/goplus/llgo/cl/_testgo/interface.Game1" %0, ptr %1, align 8
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/interface.Game1", ptr %1, i32 0, i32 0
  %3 = load ptr, ptr %2, align 8
  call void @"github.com/goplus/llgo/cl/_testdata/foo.(*Game).Load"(ptr %3)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/interface.Game1.initGame"(%"github.com/goplus/llgo/cl/_testgo/interface.Game1" %0) {
_llgo_0:
  %1 = alloca %"github.com/goplus/llgo/cl/_testgo/interface.Game1", align 8
  call void @llvm.memset(ptr %1, i8 0, i64 8, i1 false)
  store %"github.com/goplus/llgo/cl/_testgo/interface.Game1" %0, ptr %1, align 8
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/interface.Game1", ptr %1, i32 0, i32 0
  %3 = load ptr, ptr %2, align 8
  call void @"github.com/goplus/llgo/cl/_testdata/foo.(*Game).initGame"(ptr %3)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/interface.(*Game1).Load"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/interface.Game1", ptr %0, i32 0, i32 0
  %2 = load ptr, ptr %1, align 8
  call void @"github.com/goplus/llgo/cl/_testdata/foo.(*Game).Load"(ptr %2)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/interface.(*Game1).initGame"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/interface.Game1", ptr %0, i32 0, i32 0
  %2 = load ptr, ptr %1, align 8
  call void @"github.com/goplus/llgo/cl/_testdata/foo.(*Game).initGame"(ptr %2)
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
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/interface.Game1", ptr %0, i32 0, i32 0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 0)
  store ptr %2, ptr %1, align 8
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/interface.Game1", ptr undef }, ptr %0, 1
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 0)
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/interface.Game2", ptr undef }, ptr %4, 1
  %6 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %3, 0
  %7 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.Implements"(ptr @"_llgo_github.com/goplus/llgo/cl/_testdata/foo.Gamer", ptr %6)
  br i1 %7, label %_llgo_3, label %_llgo_4

_llgo_1:                                          ; preds = %_llgo_5
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %25)
  %9 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %25, 0
  %10 = getelementptr ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  %12 = insertvalue { ptr, ptr } undef, ptr %11, 0
  %13 = insertvalue { ptr, ptr } %12, ptr %8, 1
  %14 = extractvalue { ptr, ptr } %13, 1
  %15 = extractvalue { ptr, ptr } %13, 0
  call void %15(ptr %14)
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_5
  %16 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %5, 0
  %17 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.Implements"(ptr @"_llgo_github.com/goplus/llgo/cl/_testdata/foo.Gamer", ptr %16)
  br i1 %17, label %_llgo_6, label %_llgo_7

_llgo_3:                                          ; preds = %_llgo_0
  %18 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %3, 1
  %19 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"github.com/goplus/llgo/cl/_testgo/interface.iface$sO8a1LvuUsjXwiwaC6sR9-L4DiYgiOnZi7iosyShJXg", ptr %6)
  %20 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %19, 0
  %21 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %20, ptr %18, 1
  %22 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } undef, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %21, 0
  %23 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %22, i1 true, 1
  br label %_llgo_5

_llgo_4:                                          ; preds = %_llgo_0
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_3
  %24 = phi { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } [ %23, %_llgo_3 ], [ zeroinitializer, %_llgo_4 ]
  %25 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %24, 0
  %26 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %24, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 2 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintIface"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %25)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %26)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br i1 %26, label %_llgo_1, label %_llgo_2

_llgo_6:                                          ; preds = %_llgo_2
  %27 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %5, 1
  %28 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"github.com/goplus/llgo/cl/_testgo/interface.iface$sO8a1LvuUsjXwiwaC6sR9-L4DiYgiOnZi7iosyShJXg", ptr %16)
  %29 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %28, 0
  %30 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %29, ptr %27, 1
  %31 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } undef, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %30, 0
  %32 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %31, i1 true, 1
  br label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_2
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_6
  %33 = phi { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } [ %32, %_llgo_6 ], [ zeroinitializer, %_llgo_7 ]
  %34 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %33, 0
  %35 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %33, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 4 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintIface"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %34)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %35)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

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
