; ModuleID = 'github.com/goplus/llgo/cl/_testrt/uniquehandle'
source_filename = "github.com/goplus/llgo/cl/_testrt/uniquehandle"

%"github.com/goplus/llgo/runtime/abi.PtrType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr }
%"github.com/goplus/llgo/runtime/abi.Type" = type { i64, i64, i32, i8, i8, i8, i8, { ptr, ptr }, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/abi.UncommonType" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", i16, i16, i32 }
%"github.com/goplus/llgo/runtime/abi.Method" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, ptr, ptr }
%"github.com/goplus/llgo/runtime/abi.StructType" = type { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/abi.FuncType" = type { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"github.com/goplus/llgo/runtime/abi.StructField" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 }
%"github.com/goplus/llgo/runtime/abi.MapType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr, ptr, ptr, { ptr, ptr }, i8, i8, i16, i32 }
%"github.com/goplus/llgo/runtime/abi.ArrayType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr, ptr, i64 }
%"github.com/goplus/llgo/runtime/abi.SliceType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr }
%sync.Mutex = type { %sync.noCopy, %"internal/sync.Mutex" }
%sync.noCopy = type {}
%"internal/sync.Mutex" = type { i32, i32 }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }
%"unique.Handle[string]" = type { ptr }
%"weak.Pointer[string]" = type { [0 x ptr], ptr }
%"unique.uniqueMap[string]" = type { %sync.Mutex, ptr, %unique.cloneSeq }
%unique.cloneSeq = type { %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"unique.uniqueEntry[string]" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", %"weak.Pointer[string]" }
%"github.com/goplus/llgo/runtime/internal/runtime.SigjmpBuf" = type { [196 x i8] }
%"github.com/goplus/llgo/runtime/internal/runtime.Defer" = type { ptr, i64, ptr, ptr, ptr, ptr, ptr }

@"github.com/goplus/llgo/cl/_testrt/uniquehandle.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [1 x i8] c"x", align 1
@1 = private unnamed_addr constant [1 x i8] c"y", align 1
@unique.zero = external global i64, align 8
@"*_llgo_unique.uniqueMap[string]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [4 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 210253711, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 24 }, ptr null }, ptr @"_llgo_unique.uniqueMap[string]" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 6 }, i16 4, i16 4, i32 24 }, [4 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @53, i64 3 }, ptr @"_llgo_func$qkLWPYYNkDoYagoW6eWRihNlCxQ3xM9Dxq61a6eIJtk", ptr @"unique.(*uniqueMap[string]).All", ptr @"unique.(*uniqueMap[string]).All" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @59, i64 16 }, ptr @"_llgo_func$6LenGC7OUI-xRWHwPNGDxkINBRzbF-e9n0HVmCxxf_Q", ptr @"unique.(*uniqueMap[string]).CompareAndDelete", ptr @"unique.(*uniqueMap[string]).CompareAndDelete" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @60, i64 4 }, ptr @"_llgo_func$Afgjhy3D02dKZFR6qlG_l8YMW0tD7lO8omNNXe7v8to", ptr @"unique.(*uniqueMap[string]).Load", ptr @"unique.(*uniqueMap[string]).Load" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @62, i64 11 }, ptr @"_llgo_func$-7IA_xax6ZuqFifGCrJSVtKqSZXkomcaKuDyx604NDs", ptr @"unique.(*uniqueMap[string]).LoadOrStore", ptr @"unique.(*uniqueMap[string]).LoadOrStore" }] }, align 8
@2 = private unnamed_addr constant [24 x i8] c"unique.uniqueMap[string]", align 1
@"_llgo_unique.uniqueMap[string]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 40, i64 24, i32 -897671323, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 24 }, ptr @"*_llgo_unique.uniqueMap[string]" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 6 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testrt/uniquehandle.struct$owgq5nIvuGO05tK_EUIzxfBNsdRISjh1sZ8bcSbwuVA$fields", i64 3, i64 3 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 6 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@3 = private unnamed_addr constant [6 x i8] c"unique", align 1
@4 = private unnamed_addr constant [2 x i8] c"mu", align 1
@_llgo_sync.Mutex = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 1154083549, i8 5, i8 4, i8 4, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @_llgo_sync.Mutex }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 10 }, ptr @"*_llgo_sync.Mutex" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 4 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testrt/uniquehandle.struct$mMirkhDA2tZTAr7Buz0VDIaPMQZi5FDr6y8mJ-nU3jk$fields", i64 2, i64 2 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 4 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@5 = private unnamed_addr constant [10 x i8] c"sync.Mutex", align 1
@"*_llgo_sync.Mutex" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [3 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1085267253, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 10 }, ptr null }, ptr @_llgo_sync.Mutex }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 4 }, i16 3, i16 3, i32 24 }, [3 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 4 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", ptr @"sync.(*Mutex).Lock", ptr @"sync.(*Mutex).Lock" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 7 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"sync.(*Mutex).TryLock", ptr @"sync.(*Mutex).TryLock" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 6 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", ptr @"sync.(*Mutex).Unlock", ptr @"sync.(*Mutex).Unlock" }] }, align 8
@6 = private unnamed_addr constant [4 x i8] c"sync", align 1
@7 = private unnamed_addr constant [4 x i8] c"Lock", align 1
@"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1790696805, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 6 }, ptr @"*_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@8 = private unnamed_addr constant [6 x i8] c"func()", align 1
@"*_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -130179135, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 6 }, ptr null }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" }, align 8
@9 = private unnamed_addr constant [7 x i8] c"TryLock", align 1
@"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -541022001, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 11 }, ptr @"*_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk$out", i64 1, i64 1 } }, align 8
@10 = private unnamed_addr constant [11 x i8] c"func() bool", align 1
@"*_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -367308996, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 11 }, ptr null }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk" }, align 8
@_llgo_bool = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 1, i64 0, i32 554183389, i8 12, i8 1, i8 1, i8 1, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal8", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 4 }, ptr @"*_llgo_bool" }, align 8
@11 = private unnamed_addr constant [4 x i8] c"bool", align 1
@"*_llgo_bool" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1896950390, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 4 }, ptr null }, ptr @_llgo_bool }, align 8
@"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk$out" = weak_odr constant [1 x ptr] [ptr @_llgo_bool], align 8
@12 = private unnamed_addr constant [6 x i8] c"Unlock", align 1
@13 = private unnamed_addr constant [1 x i8] c"_", align 1
@_llgo_sync.noCopy = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 0, i64 0, i32 -1631085449, i8 13, i8 1, i8 1, i8 25, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal0", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 11 }, ptr @"*_llgo_sync.noCopy" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 4 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@14 = private unnamed_addr constant [11 x i8] c"sync.noCopy", align 1
@"*_llgo_sync.noCopy" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -792839833, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 11 }, ptr null }, ptr @_llgo_sync.noCopy }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 4 }, i16 2, i16 2, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 4 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", ptr @"sync.(*noCopy).Lock", ptr @"sync.(*noCopy).Lock" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 6 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", ptr @"sync.(*noCopy).Unlock", ptr @"sync.(*noCopy).Unlock" }] }, align 8
@"_llgo_internal/sync.Mutex" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 1543362139, i8 13, i8 4, i8 4, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_internal/sync.Mutex" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 10 }, ptr @"*_llgo_internal/sync.Mutex" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 13 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testrt/uniquehandle.struct$H3Y7Z0zp3N96yDJ3lKhIVrkcAw4BqadpAmBaplYDiRM$fields", i64 2, i64 2 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 13 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@"*_llgo_internal/sync.Mutex" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [5 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -411349785, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 10 }, ptr null }, ptr @"_llgo_internal/sync.Mutex" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 13 }, i16 5, i16 3, i32 24 }, [5 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 4 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", ptr @"internal/sync.(*Mutex).Lock", ptr @"internal/sync.(*Mutex).Lock" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 7 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"internal/sync.(*Mutex).TryLock", ptr @"internal/sync.(*Mutex).TryLock" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 6 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", ptr @"internal/sync.(*Mutex).Unlock", ptr @"internal/sync.(*Mutex).Unlock" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 22 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", ptr @"internal/sync.(*Mutex).lockSlow", ptr @"internal/sync.(*Mutex).lockSlow" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 24 }, ptr @"_llgo_func$b5e0cp3lSgwnuondt1fyk1_o6_XCIF_DhXrG4goHTF8", ptr @"internal/sync.(*Mutex).unlockSlow", ptr @"internal/sync.(*Mutex).unlockSlow" }] }, align 8
@15 = private unnamed_addr constant [13 x i8] c"internal/sync", align 1
@16 = private unnamed_addr constant [8 x i8] c"lockSlow", align 1
@17 = private unnamed_addr constant [22 x i8] c"internal/sync.lockSlow", align 1
@18 = private unnamed_addr constant [10 x i8] c"unlockSlow", align 1
@19 = private unnamed_addr constant [24 x i8] c"internal/sync.unlockSlow", align 1
@"_llgo_func$b5e0cp3lSgwnuondt1fyk1_o6_XCIF_DhXrG4goHTF8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1137279145, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 11 }, ptr @"*_llgo_func$b5e0cp3lSgwnuondt1fyk1_o6_XCIF_DhXrG4goHTF8" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$b5e0cp3lSgwnuondt1fyk1_o6_XCIF_DhXrG4goHTF8$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@20 = private unnamed_addr constant [11 x i8] c"func(int32)", align 1
@"*_llgo_func$b5e0cp3lSgwnuondt1fyk1_o6_XCIF_DhXrG4goHTF8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1046035006, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 11 }, ptr null }, ptr @"_llgo_func$b5e0cp3lSgwnuondt1fyk1_o6_XCIF_DhXrG4goHTF8" }, align 8
@_llgo_int32 = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 4, i64 0, i32 1448558410, i8 12, i8 4, i8 4, i8 5, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal32", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 5 }, ptr @"*_llgo_int32" }, align 8
@21 = private unnamed_addr constant [5 x i8] c"int32", align 1
@"*_llgo_int32" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -38689692, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 5 }, ptr null }, ptr @_llgo_int32 }, align 8
@"_llgo_func$b5e0cp3lSgwnuondt1fyk1_o6_XCIF_DhXrG4goHTF8$in" = weak_odr constant [1 x ptr] [ptr @_llgo_int32], align 8
@22 = private unnamed_addr constant [5 x i8] c"state", align 1
@23 = private unnamed_addr constant [4 x i8] c"sema", align 1
@_llgo_uint32 = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 4, i64 0, i32 -625909322, i8 12, i8 4, i8 4, i8 10, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal32", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 6 }, ptr @"*_llgo_uint32" }, align 8
@24 = private unnamed_addr constant [6 x i8] c"uint32", align 1
@"*_llgo_uint32" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1605480511, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 6 }, ptr null }, ptr @_llgo_uint32 }, align 8
@"github.com/goplus/llgo/cl/_testrt/uniquehandle.struct$H3Y7Z0zp3N96yDJ3lKhIVrkcAw4BqadpAmBaplYDiRM$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 5 }, ptr @_llgo_int32, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 4 }, ptr @_llgo_uint32, i64 4, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"github.com/goplus/llgo/cl/_testrt/uniquehandle.struct$mMirkhDA2tZTAr7Buz0VDIaPMQZi5FDr6y8mJ-nU3jk$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 1 }, ptr @_llgo_sync.noCopy, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 2 }, ptr @"_llgo_internal/sync.Mutex", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@25 = private unnamed_addr constant [1 x i8] c"m", align 1
@"map[_llgo_string]_llgo_weak.Pointer[string]" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.MapType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 999128339, i8 0, i8 8, i8 8, i8 53, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 31 }, ptr @"*map[_llgo_string]_llgo_weak.Pointer[string]" }, ptr @_llgo_string, ptr @"_llgo_weak.Pointer[string]", ptr @"github.com/goplus/llgo/cl/_testrt/uniquehandle.struct$kniannT6CxVaVbi3EM_aij48NCOXO9P9J-GELj3MUjs", { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.typehash", ptr @_llgo_string }, i8 16, i8 8, i16 208, i32 12 }, align 8
@26 = private unnamed_addr constant [31 x i8] c"map[string]weak.Pointer[string]", align 1
@"*map[_llgo_string]_llgo_weak.Pointer[string]" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -954789020, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 31 }, ptr null }, ptr @"map[_llgo_string]_llgo_weak.Pointer[string]" }, align 8
@_llgo_string = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 8, i32 1749264893, i8 4, i8 8, i8 8, i8 24, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 6 }, ptr @"*_llgo_string" }, align 8
@27 = private unnamed_addr constant [6 x i8] c"string", align 1
@"*_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1323879264, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 6 }, ptr null }, ptr @_llgo_string }, align 8
@"_llgo_weak.Pointer[string]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1383728355, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_weak.Pointer[string]" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 20 }, ptr @"*_llgo_weak.Pointer[string]" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @29, i64 4 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testrt/uniquehandle.struct$24FFmfX4IC-59rH9Ke0uNaH4wtIN01eXcXczZAYImQg$fields", i64 2, i64 2 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @29, i64 4 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 5 }, ptr @"_llgo_func$LoitlzOWz_MQ8Is4GRSU-_VdBN5akAPJTVkPqNtCSc8", ptr @"weak.(*Pointer[string]).Value", ptr @"weak.Pointer[string].Value" }] }, align 8
@28 = private unnamed_addr constant [20 x i8] c"weak.Pointer[string]", align 1
@"*_llgo_weak.Pointer[string]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -669876964, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 20 }, ptr null }, ptr @"_llgo_weak.Pointer[string]" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @29, i64 4 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 5 }, ptr @"_llgo_func$LoitlzOWz_MQ8Is4GRSU-_VdBN5akAPJTVkPqNtCSc8", ptr @"weak.(*Pointer[string]).Value", ptr @"weak.(*Pointer[string]).Value" }] }, align 8
@29 = private unnamed_addr constant [4 x i8] c"weak", align 1
@30 = private unnamed_addr constant [5 x i8] c"Value", align 1
@"_llgo_func$LoitlzOWz_MQ8Is4GRSU-_VdBN5akAPJTVkPqNtCSc8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 2072288395, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 14 }, ptr @"*_llgo_func$LoitlzOWz_MQ8Is4GRSU-_VdBN5akAPJTVkPqNtCSc8" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$LoitlzOWz_MQ8Is4GRSU-_VdBN5akAPJTVkPqNtCSc8$out", i64 1, i64 1 } }, align 8
@31 = private unnamed_addr constant [14 x i8] c"func() *string", align 1
@"*_llgo_func$LoitlzOWz_MQ8Is4GRSU-_VdBN5akAPJTVkPqNtCSc8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 746346238, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 14 }, ptr null }, ptr @"_llgo_func$LoitlzOWz_MQ8Is4GRSU-_VdBN5akAPJTVkPqNtCSc8" }, align 8
@"_llgo_func$LoitlzOWz_MQ8Is4GRSU-_VdBN5akAPJTVkPqNtCSc8$out" = weak_odr constant [1 x ptr] [ptr @"*_llgo_string"], align 8
@"[0]*_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.ArrayType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 0, i64 0, i32 1183431228, i8 8, i8 8, i8 8, i8 17, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.arrayequal", ptr @"[0]*_llgo_string" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 10 }, ptr @"*[0]*_llgo_string" }, ptr @"*_llgo_string", ptr @"[]*_llgo_string", i64 0 }, align 8
@32 = private unnamed_addr constant [10 x i8] c"[0]*string", align 1
@"*[0]*_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1989438572, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 10 }, ptr null }, ptr @"[0]*_llgo_string" }, align 8
@"[]*_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.SliceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 8, i32 1773653849, i8 0, i8 8, i8 8, i8 23, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 9 }, ptr @"*[]*_llgo_string" }, ptr @"*_llgo_string" }, align 8
@33 = private unnamed_addr constant [9 x i8] c"[]*string", align 1
@"*[]*_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1665473200, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 9 }, ptr null }, ptr @"[]*_llgo_string" }, align 8
@34 = private unnamed_addr constant [1 x i8] c"u", align 1
@_llgo_Pointer = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 507576105, i8 12, i8 8, i8 8, i8 58, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @35, i64 14 }, ptr @"*_llgo_Pointer" }, align 8
@35 = private unnamed_addr constant [14 x i8] c"unsafe.Pointer", align 1
@"*_llgo_Pointer" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1134390089, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @35, i64 14 }, ptr null }, ptr @_llgo_Pointer }, align 8
@"github.com/goplus/llgo/cl/_testrt/uniquehandle.struct$24FFmfX4IC-59rH9Ke0uNaH4wtIN01eXcXczZAYImQg$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 1 }, ptr @"[0]*_llgo_string", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @34, i64 1 }, ptr @_llgo_Pointer, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"github.com/goplus/llgo/cl/_testrt/uniquehandle.struct$kniannT6CxVaVbi3EM_aij48NCOXO9P9J-GELj3MUjs" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 208, i64 208, i32 -1093315611, i8 0, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"github.com/goplus/llgo/cl/_testrt/uniquehandle.struct$kniannT6CxVaVbi3EM_aij48NCOXO9P9J-GELj3MUjs" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 99 }, ptr @"*github.com/goplus/llgo/cl/_testrt/uniquehandle.struct$kniannT6CxVaVbi3EM_aij48NCOXO9P9J-GELj3MUjs" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testrt/uniquehandle.struct$kniannT6CxVaVbi3EM_aij48NCOXO9P9J-GELj3MUjs$fields", i64 4, i64 4 } }, align 8
@36 = private unnamed_addr constant [99 x i8] c"struct { topbits [8]uint8; keys [8]string; elems [8]weak.Pointer[string]; overflow unsafe.Pointer }", align 1
@"*github.com/goplus/llgo/cl/_testrt/uniquehandle.struct$kniannT6CxVaVbi3EM_aij48NCOXO9P9J-GELj3MUjs" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -161109563, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 99 }, ptr null }, ptr @"github.com/goplus/llgo/cl/_testrt/uniquehandle.struct$kniannT6CxVaVbi3EM_aij48NCOXO9P9J-GELj3MUjs" }, align 8
@37 = private unnamed_addr constant [7 x i8] c"topbits", align 1
@"[8]_llgo_uint8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.ArrayType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 307038632, i8 8, i8 1, i8 1, i8 17, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.arrayequal", ptr @"[8]_llgo_uint8" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 8 }, ptr @"*[8]_llgo_uint8" }, ptr @_llgo_uint8, ptr @"[]_llgo_uint8", i64 8 }, align 8
@38 = private unnamed_addr constant [8 x i8] c"[8]uint8", align 1
@"*[8]_llgo_uint8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -566230779, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 8 }, ptr null }, ptr @"[8]_llgo_uint8" }, align 8
@_llgo_uint8 = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 1, i64 0, i32 269156761, i8 12, i8 1, i8 1, i8 8, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal8", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @39, i64 5 }, ptr @"*_llgo_uint8" }, align 8
@39 = private unnamed_addr constant [5 x i8] c"uint8", align 1
@"*_llgo_uint8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1277858201, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @39, i64 5 }, ptr null }, ptr @_llgo_uint8 }, align 8
@"[]_llgo_uint8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.SliceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 8, i32 370346748, i8 0, i8 8, i8 8, i8 23, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @40, i64 7 }, ptr @"*[]_llgo_uint8" }, ptr @_llgo_uint8 }, align 8
@40 = private unnamed_addr constant [7 x i8] c"[]uint8", align 1
@"*[]_llgo_uint8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -2143776929, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @40, i64 7 }, ptr null }, ptr @"[]_llgo_uint8" }, align 8
@41 = private unnamed_addr constant [4 x i8] c"keys", align 1
@"[8]_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.ArrayType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 128, i64 120, i32 460245566, i8 0, i8 8, i8 8, i8 17, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.arrayequal", ptr @"[8]_llgo_string" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @42, i64 9 }, ptr @"*[8]_llgo_string" }, ptr @_llgo_string, ptr @"[]_llgo_string", i64 8 }, align 8
@42 = private unnamed_addr constant [9 x i8] c"[8]string", align 1
@"*[8]_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 368026044, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @42, i64 9 }, ptr null }, ptr @"[8]_llgo_string" }, align 8
@"[]_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.SliceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 8, i32 608974920, i8 0, i8 8, i8 8, i8 23, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @43, i64 8 }, ptr @"*[]_llgo_string" }, ptr @_llgo_string }, align 8
@43 = private unnamed_addr constant [8 x i8] c"[]string", align 1
@"*[]_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -157880218, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @43, i64 8 }, ptr null }, ptr @"[]_llgo_string" }, align 8
@44 = private unnamed_addr constant [5 x i8] c"elems", align 1
@"[8]_llgo_weak.Pointer[string]" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.ArrayType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 64, i64 64, i32 -2055313905, i8 0, i8 8, i8 8, i8 17, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.arrayequal", ptr @"[8]_llgo_weak.Pointer[string]" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @45, i64 23 }, ptr @"*[8]_llgo_weak.Pointer[string]" }, ptr @"_llgo_weak.Pointer[string]", ptr @"[]_llgo_weak.Pointer[string]", i64 8 }, align 8
@45 = private unnamed_addr constant [23 x i8] c"[8]weak.Pointer[string]", align 1
@"*[8]_llgo_weak.Pointer[string]" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1694369354, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @45, i64 23 }, ptr null }, ptr @"[8]_llgo_weak.Pointer[string]" }, align 8
@"[]_llgo_weak.Pointer[string]" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.SliceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 8, i32 -348560692, i8 0, i8 8, i8 8, i8 23, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 22 }, ptr @"*[]_llgo_weak.Pointer[string]" }, ptr @"_llgo_weak.Pointer[string]" }, align 8
@46 = private unnamed_addr constant [22 x i8] c"[]weak.Pointer[string]", align 1
@"*[]_llgo_weak.Pointer[string]" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1962605446, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 22 }, ptr null }, ptr @"[]_llgo_weak.Pointer[string]" }, align 8
@47 = private unnamed_addr constant [8 x i8] c"overflow", align 1
@"github.com/goplus/llgo/cl/_testrt/uniquehandle.struct$kniannT6CxVaVbi3EM_aij48NCOXO9P9J-GELj3MUjs$fields" = weak_odr constant [4 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @37, i64 7 }, ptr @"[8]_llgo_uint8", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @41, i64 4 }, ptr @"[8]_llgo_string", i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @44, i64 5 }, ptr @"[8]_llgo_weak.Pointer[string]", i64 136, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @47, i64 8 }, ptr @_llgo_Pointer, i64 200, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@48 = private unnamed_addr constant [8 x i8] c"cloneSeq", align 1
@_llgo_unique.cloneSeq = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 8, i32 782204066, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @49, i64 15 }, ptr @"*_llgo_unique.cloneSeq" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 6 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testrt/uniquehandle.struct$I19gx60SGq8xXWfAxKKW_655BerOt6g1EU56LcTBJRs$fields", i64 1, i64 1 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 6 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@49 = private unnamed_addr constant [15 x i8] c"unique.cloneSeq", align 1
@"*_llgo_unique.cloneSeq" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -540408549, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @49, i64 15 }, ptr null }, ptr @_llgo_unique.cloneSeq }, align 8
@50 = private unnamed_addr constant [13 x i8] c"stringOffsets", align 1
@"[]_llgo_uintptr" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.SliceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 8, i32 976682886, i8 0, i8 8, i8 8, i8 23, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @51, i64 9 }, ptr @"*[]_llgo_uintptr" }, ptr @_llgo_uintptr }, align 8
@51 = private unnamed_addr constant [9 x i8] c"[]uintptr", align 1
@"*[]_llgo_uintptr" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -503729978, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @51, i64 9 }, ptr null }, ptr @"[]_llgo_uintptr" }, align 8
@_llgo_uintptr = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 1268343028, i8 12, i8 8, i8 8, i8 12, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @52, i64 7 }, ptr @"*_llgo_uintptr" }, align 8
@52 = private unnamed_addr constant [7 x i8] c"uintptr", align 1
@"*_llgo_uintptr" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1684891952, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @52, i64 7 }, ptr null }, ptr @_llgo_uintptr }, align 8
@"github.com/goplus/llgo/cl/_testrt/uniquehandle.struct$I19gx60SGq8xXWfAxKKW_655BerOt6g1EU56LcTBJRs$fields" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @50, i64 13 }, ptr @"[]_llgo_uintptr", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"github.com/goplus/llgo/cl/_testrt/uniquehandle.struct$owgq5nIvuGO05tK_EUIzxfBNsdRISjh1sZ8bcSbwuVA$fields" = weak_odr constant [3 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 2 }, ptr @_llgo_sync.Mutex, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 1 }, ptr @"map[_llgo_string]_llgo_weak.Pointer[string]", i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @48, i64 8 }, ptr @_llgo_unique.cloneSeq, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 true }], align 8
@53 = private unnamed_addr constant [3 x i8] c"All", align 1
@"_llgo_func$qkLWPYYNkDoYagoW6eWRihNlCxQ3xM9Dxq61a6eIJtk" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 2035652705, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @54, i64 52 }, ptr @"*_llgo_func$qkLWPYYNkDoYagoW6eWRihNlCxQ3xM9Dxq61a6eIJtk" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$qkLWPYYNkDoYagoW6eWRihNlCxQ3xM9Dxq61a6eIJtk$out", i64 1, i64 1 } }, align 8
@54 = private unnamed_addr constant [52 x i8] c"func() func(func(string, weak.Pointer[string]) bool)", align 1
@"*_llgo_func$qkLWPYYNkDoYagoW6eWRihNlCxQ3xM9Dxq61a6eIJtk" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1249148475, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @54, i64 52 }, ptr null }, ptr @"_llgo_func$qkLWPYYNkDoYagoW6eWRihNlCxQ3xM9Dxq61a6eIJtk" }, align 8
@"_llgo_closure$270QCfkJnsmGKl_n6VTqwJs7--LatKqbBBBjR7GndIk" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -1502261526, i8 32, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @55, i64 45 }, ptr @"*_llgo_closure$270QCfkJnsmGKl_n6VTqwJs7--LatKqbBBBjR7GndIk" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_closure$270QCfkJnsmGKl_n6VTqwJs7--LatKqbBBBjR7GndIk$fields", i64 2, i64 2 } }, align 8
@55 = private unnamed_addr constant [45 x i8] c"func(func(string, weak.Pointer[string]) bool)", align 1
@"*_llgo_closure$270QCfkJnsmGKl_n6VTqwJs7--LatKqbBBBjR7GndIk" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1137580803, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @55, i64 45 }, ptr null }, ptr @"_llgo_closure$270QCfkJnsmGKl_n6VTqwJs7--LatKqbBBBjR7GndIk" }, align 8
@56 = private unnamed_addr constant [2 x i8] c"$f", align 1
@"_llgo_func$RPZ6H4RX6Ur4nmM2IY7Z1IKDt_560mQ-RscvnctU7a8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1593349089, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @55, i64 45 }, ptr @"*_llgo_func$RPZ6H4RX6Ur4nmM2IY7Z1IKDt_560mQ-RscvnctU7a8" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$RPZ6H4RX6Ur4nmM2IY7Z1IKDt_560mQ-RscvnctU7a8$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@"*_llgo_func$RPZ6H4RX6Ur4nmM2IY7Z1IKDt_560mQ-RscvnctU7a8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -2144825446, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @55, i64 45 }, ptr null }, ptr @"_llgo_func$RPZ6H4RX6Ur4nmM2IY7Z1IKDt_560mQ-RscvnctU7a8" }, align 8
@"_llgo_closure$XQ3a-Th7bgrRUjMHx_T4GeTrHPCvVx2x2UIinDRdPpA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 1804220825, i8 32, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @57, i64 39 }, ptr @"*_llgo_closure$XQ3a-Th7bgrRUjMHx_T4GeTrHPCvVx2x2UIinDRdPpA" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_closure$XQ3a-Th7bgrRUjMHx_T4GeTrHPCvVx2x2UIinDRdPpA$fields", i64 2, i64 2 } }, align 8
@57 = private unnamed_addr constant [39 x i8] c"func(string, weak.Pointer[string]) bool", align 1
@"*_llgo_closure$XQ3a-Th7bgrRUjMHx_T4GeTrHPCvVx2x2UIinDRdPpA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1337851091, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @57, i64 39 }, ptr null }, ptr @"_llgo_closure$XQ3a-Th7bgrRUjMHx_T4GeTrHPCvVx2x2UIinDRdPpA" }, align 8
@"_llgo_func$6LenGC7OUI-xRWHwPNGDxkINBRzbF-e9n0HVmCxxf_Q" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -52928222, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @57, i64 39 }, ptr @"*_llgo_func$6LenGC7OUI-xRWHwPNGDxkINBRzbF-e9n0HVmCxxf_Q" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$6LenGC7OUI-xRWHwPNGDxkINBRzbF-e9n0HVmCxxf_Q$in", i64 2, i64 2 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$6LenGC7OUI-xRWHwPNGDxkINBRzbF-e9n0HVmCxxf_Q$out", i64 1, i64 1 } }, align 8
@"*_llgo_func$6LenGC7OUI-xRWHwPNGDxkINBRzbF-e9n0HVmCxxf_Q" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1794224237, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @57, i64 39 }, ptr null }, ptr @"_llgo_func$6LenGC7OUI-xRWHwPNGDxkINBRzbF-e9n0HVmCxxf_Q" }, align 8
@"_llgo_func$6LenGC7OUI-xRWHwPNGDxkINBRzbF-e9n0HVmCxxf_Q$in" = weak_odr constant [2 x ptr] [ptr @_llgo_string, ptr @"_llgo_weak.Pointer[string]"], align 8
@"_llgo_func$6LenGC7OUI-xRWHwPNGDxkINBRzbF-e9n0HVmCxxf_Q$out" = weak_odr constant [1 x ptr] [ptr @_llgo_bool], align 8
@58 = private unnamed_addr constant [5 x i8] c"$data", align 1
@"_llgo_closure$XQ3a-Th7bgrRUjMHx_T4GeTrHPCvVx2x2UIinDRdPpA$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @56, i64 2 }, ptr @"_llgo_func$6LenGC7OUI-xRWHwPNGDxkINBRzbF-e9n0HVmCxxf_Q", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @58, i64 5 }, ptr @_llgo_Pointer, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_func$RPZ6H4RX6Ur4nmM2IY7Z1IKDt_560mQ-RscvnctU7a8$in" = weak_odr constant [1 x ptr] [ptr @"_llgo_closure$XQ3a-Th7bgrRUjMHx_T4GeTrHPCvVx2x2UIinDRdPpA"], align 8
@"_llgo_closure$270QCfkJnsmGKl_n6VTqwJs7--LatKqbBBBjR7GndIk$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @56, i64 2 }, ptr @"_llgo_func$RPZ6H4RX6Ur4nmM2IY7Z1IKDt_560mQ-RscvnctU7a8", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @58, i64 5 }, ptr @_llgo_Pointer, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_func$qkLWPYYNkDoYagoW6eWRihNlCxQ3xM9Dxq61a6eIJtk$out" = weak_odr constant [1 x ptr] [ptr @"_llgo_closure$270QCfkJnsmGKl_n6VTqwJs7--LatKqbBBBjR7GndIk"], align 8
@59 = private unnamed_addr constant [16 x i8] c"CompareAndDelete", align 1
@60 = private unnamed_addr constant [4 x i8] c"Load", align 1
@"_llgo_func$Afgjhy3D02dKZFR6qlG_l8YMW0tD7lO8omNNXe7v8to" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1580686226, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @61, i64 41 }, ptr @"*_llgo_func$Afgjhy3D02dKZFR6qlG_l8YMW0tD7lO8omNNXe7v8to" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$Afgjhy3D02dKZFR6qlG_l8YMW0tD7lO8omNNXe7v8to$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$Afgjhy3D02dKZFR6qlG_l8YMW0tD7lO8omNNXe7v8to$out", i64 2, i64 2 } }, align 8
@61 = private unnamed_addr constant [41 x i8] c"func(string) (weak.Pointer[string], bool)", align 1
@"*_llgo_func$Afgjhy3D02dKZFR6qlG_l8YMW0tD7lO8omNNXe7v8to" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1109322279, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @61, i64 41 }, ptr null }, ptr @"_llgo_func$Afgjhy3D02dKZFR6qlG_l8YMW0tD7lO8omNNXe7v8to" }, align 8
@"_llgo_func$Afgjhy3D02dKZFR6qlG_l8YMW0tD7lO8omNNXe7v8to$in" = weak_odr constant [1 x ptr] [ptr @_llgo_string], align 8
@"_llgo_func$Afgjhy3D02dKZFR6qlG_l8YMW0tD7lO8omNNXe7v8to$out" = weak_odr constant [2 x ptr] [ptr @"_llgo_weak.Pointer[string]", ptr @_llgo_bool], align 8
@62 = private unnamed_addr constant [11 x i8] c"LoadOrStore", align 1
@"_llgo_func$-7IA_xax6ZuqFifGCrJSVtKqSZXkomcaKuDyx604NDs" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -705308863, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @63, i64 63 }, ptr @"*_llgo_func$-7IA_xax6ZuqFifGCrJSVtKqSZXkomcaKuDyx604NDs" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$-7IA_xax6ZuqFifGCrJSVtKqSZXkomcaKuDyx604NDs$in", i64 2, i64 2 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$-7IA_xax6ZuqFifGCrJSVtKqSZXkomcaKuDyx604NDs$out", i64 2, i64 2 } }, align 8
@63 = private unnamed_addr constant [63 x i8] c"func(string, weak.Pointer[string]) (weak.Pointer[string], bool)", align 1
@"*_llgo_func$-7IA_xax6ZuqFifGCrJSVtKqSZXkomcaKuDyx604NDs" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -372914946, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @63, i64 63 }, ptr null }, ptr @"_llgo_func$-7IA_xax6ZuqFifGCrJSVtKqSZXkomcaKuDyx604NDs" }, align 8
@"_llgo_func$-7IA_xax6ZuqFifGCrJSVtKqSZXkomcaKuDyx604NDs$in" = weak_odr constant [2 x ptr] [ptr @_llgo_string, ptr @"_llgo_weak.Pointer[string]"], align 8
@"_llgo_func$-7IA_xax6ZuqFifGCrJSVtKqSZXkomcaKuDyx604NDs$out" = weak_odr constant [2 x ptr] [ptr @"_llgo_weak.Pointer[string]", ptr @_llgo_bool], align 8
@64 = private unnamed_addr constant [3 x i8] c"any", align 1
@65 = private unnamed_addr constant [25 x i8] c"*unique.uniqueMap[string]", align 1
@unique.cleanupFuncsMu = external global %sync.Mutex, align 4
@unique.cleanupFuncs = external global %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
@"internal/abi.alwaysFalse" = external global i1, align 1
@"internal/abi.escapeSink" = external global %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8

define void @"github.com/goplus/llgo/cl/_testrt/uniquehandle.init"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/uniquehandle.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/uniquehandle.init$guard", align 1
  call void @unique.init()
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/uniquehandle.main"() {
_llgo_0:
  %0 = alloca { i64, i64 }, align 8
  %1 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %1, align 8
  %2 = call %"unique.Handle[string]" @"unique.Make[string]"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 1 })
  %3 = call %"unique.Handle[string]" @"unique.Make[string]"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 1 })
  %4 = call %"unique.Handle[string]" @"unique.Make[string]"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 1 })
  %5 = extractvalue %"unique.Handle[string]" %2, 0
  %6 = extractvalue %"unique.Handle[string]" %3, 0
  %7 = icmp eq ptr %5, %6
  %8 = and i1 true, %7
  %9 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %9)
  %10 = extractvalue %"unique.Handle[string]" %2, 0
  %11 = extractvalue %"unique.Handle[string]" %4, 0
  %12 = icmp eq ptr %10, %11
  %13 = and i1 true, %12
  %14 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %13)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %14)
  %15 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"unique.Handle[string].Value"(%"unique.Handle[string]" %2)
  %16 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %15, ptr %16, align 8
  %17 = icmp eq ptr %16, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %17)
  %18 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %16, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %18, ptr %1, align 8
  %19 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %18, 0
  %20 = ptrtoint ptr %19 to i64
  %21 = and i64 %20, 72057594037927935
  %22 = xor i64 %21, 25399393228665167
  %23 = shl i64 %22, 17
  %24 = select i1 false, i64 0, i64 %23
  %25 = lshr i64 %22, 39
  %26 = select i1 false, i64 0, i64 %25
  %27 = or i64 %24, %26
  %28 = and i64 %27, 72057594037927935
  %29 = or i64 %28, -6557241057451442176
  %30 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %18, 1
  %31 = insertvalue { i64, i64 } undef, i64 %29, 0
  %32 = insertvalue { i64, i64 } %31, i64 %30, 1
  store { i64, i64 } %32, ptr %0, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %16, align 8
  call void @runtime.TouchConservativeSlot(ptr %16, i64 16)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %33 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %34 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %34)
  %35 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %1, align 8
  store { i64, i64 } zeroinitializer, ptr %0, align 4
  call void @runtime.TouchConservativeSlot(ptr %0, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %1, align 8
  call void @runtime.TouchConservativeSlot(ptr %1, i64 16)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %35)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %33)
  ret void
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1)

declare void @unique.init()

define linkonce %"unique.Handle[string]" @"unique.Make[string]"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %0) {
_llgo_0:
  %1 = alloca i64, align 8
  %2 = alloca ptr, align 8
  store ptr null, ptr %2, align 8
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  store ptr null, ptr %4, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  store ptr null, ptr %6, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = alloca ptr, align 8
  store ptr null, ptr %9, align 8
  %10 = alloca { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 }, align 8
  %11 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  %12 = alloca i64, align 8
  %13 = alloca ptr, align 8
  store ptr null, ptr %13, align 8
  %14 = alloca { i64, i64 }, align 8
  %15 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %15, align 8
  %16 = alloca { i64, i64 }, align 8
  %17 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %17, align 8
  %18 = alloca i64, align 8
  %19 = alloca ptr, align 8
  store ptr null, ptr %19, align 8
  %20 = alloca i64, align 8
  %21 = alloca ptr, align 8
  store ptr null, ptr %21, align 8
  %22 = alloca i64, align 8
  %23 = alloca ptr, align 8
  store ptr null, ptr %23, align 8
  %24 = alloca { i64, i64 }, align 8
  %25 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %25, align 8
  %26 = call i64 @runtime.AllocZHidden(i64 16)
  store i64 %26, ptr %1, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %2, i64 %26)
  %27 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %27)
  %28 = load i64, ptr %1, align 4
  %29 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %0, ptr %29, align 8
  call void @runtime.StoreHiddenPointee(i64 %28, ptr %29, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %29, align 8
  call void @runtime.TouchConservativeSlot(ptr %29, i64 16)
  %30 = call ptr @"github.com/goplus/llgo/runtime/abi.TypeFor[string]"()
  %31 = ptrtoint ptr %30 to i64
  %32 = and i64 %31, 72057594037927935
  %33 = xor i64 %32, 25399393228665167
  %34 = shl i64 %33, 17
  %35 = select i1 false, i64 0, i64 %34
  %36 = lshr i64 %33, 39
  %37 = select i1 false, i64 0, i64 %36
  %38 = or i64 %35, %37
  %39 = and i64 %38, 72057594037927935
  %40 = or i64 %39, -6557241057451442176
  store i64 %40, ptr %3, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %4, i64 %40)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %41 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %41)
  %42 = load i64, ptr %3, align 4
  %43 = and i64 %42, 72057594037927935
  %44 = lshr i64 %43, 17
  %45 = select i1 false, i64 0, i64 %44
  %46 = shl i64 %43, 39
  %47 = select i1 false, i64 0, i64 %46
  %48 = or i64 %45, %47
  %49 = and i64 %48, 72057594037927935
  %50 = xor i64 %49, 25399393228665167
  %51 = inttoptr i64 %50 to ptr
  %52 = call i64 @"github.com/goplus/llgo/runtime/abi.(*Type).Size"(ptr %51)
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %54 = alloca %"unique.Handle[string]", align 8
  call void @llvm.memset(ptr %54, i8 0, i64 8, i1 false)
  %55 = icmp eq ptr %54, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %55)
  %56 = getelementptr inbounds %"unique.Handle[string]", ptr %54, i32 0, i32 0
  %57 = ptrtoint ptr %56 to i64
  %58 = and i64 %57, 72057594037927935
  %59 = xor i64 %58, 25399393228665167
  %60 = shl i64 %59, 17
  %61 = select i1 false, i64 0, i64 %60
  %62 = lshr i64 %59, 39
  %63 = select i1 false, i64 0, i64 %62
  %64 = or i64 %61, %63
  %65 = and i64 %64, 72057594037927935
  %66 = or i64 %65, -6557241057451442176
  store i64 %66, ptr %5, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %6, i64 %66)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  store ptr @unique.zero, ptr %7, align 8
  %67 = icmp eq ptr %7, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %67)
  %68 = load ptr, ptr %7, align 8
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
  store i64 %78, ptr %8, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %9, i64 %78)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %79 = icmp eq ptr %5, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %79)
  %80 = load i64, ptr %5, align 4
  %81 = icmp eq ptr %8, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %81)
  %82 = load i64, ptr %8, align 4
  %83 = and i64 %82, 72057594037927935
  %84 = lshr i64 %83, 17
  %85 = select i1 false, i64 0, i64 %84
  %86 = shl i64 %83, 39
  %87 = select i1 false, i64 0, i64 %86
  %88 = or i64 %85, %87
  %89 = and i64 %88, 72057594037927935
  %90 = xor i64 %89, 25399393228665167
  %91 = inttoptr i64 %90 to ptr
  %92 = alloca ptr, align 8
  store ptr %91, ptr %92, align 8
  call void @runtime.StoreHiddenPointee(i64 %80, ptr %92, i64 8)
  store ptr null, ptr %92, align 8
  call void @runtime.TouchConservativeSlot(ptr %92, i64 8)
  store i64 0, ptr %5, align 4
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  store ptr null, ptr %6, align 8
  call void @runtime.TouchConservativeSlot(ptr %6, i64 8)
  store ptr null, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 8)
  store i64 0, ptr %8, align 4
  call void @runtime.TouchConservativeSlot(ptr %8, i64 8)
  store ptr null, ptr %9, align 8
  call void @runtime.TouchConservativeSlot(ptr %9, i64 8)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %93 = icmp eq ptr %54, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %93)
  %94 = load %"unique.Handle[string]", ptr %54, align 8
  store %"unique.Handle[string]" zeroinitializer, ptr %54, align 8
  call void @runtime.TouchConservativeSlot(ptr %54, i64 8)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  store %"unique.Handle[string]" zeroinitializer, ptr %54, align 8
  call void @runtime.TouchConservativeSlot(ptr %54, i64 8)
  ret %"unique.Handle[string]" %94

_llgo_2:                                          ; preds = %_llgo_0
  %95 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %95)
  %96 = load i64, ptr %3, align 4
  %97 = and i64 %96, 72057594037927935
  %98 = lshr i64 %97, 17
  %99 = select i1 false, i64 0, i64 %98
  %100 = shl i64 %97, 39
  %101 = select i1 false, i64 0, i64 %100
  %102 = or i64 %99, %101
  %103 = and i64 %102, 72057594037927935
  %104 = xor i64 %103, 25399393228665167
  %105 = inttoptr i64 %104 to ptr
  %106 = call { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 } @unique.loadUniqueMap(ptr %105)
  store { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 } %106, ptr %10, align 8
  %107 = icmp eq ptr %10, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %107)
  %108 = load { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 }, ptr %10, align 8
  %109 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 } %108, 1
  %110 = icmp eq ptr %10, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %110)
  %111 = load { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 }, ptr %10, align 8
  %112 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 } %111, 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %112, ptr %11, align 8
  %113 = icmp eq ptr %11, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %113)
  %114 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %11, align 8
  br i1 %109, label %_llgo_4, label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2
  call void @unique.ensureSetupMake()
  %115 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %115)
  %116 = load i64, ptr %3, align 4
  %117 = and i64 %116, 72057594037927935
  %118 = lshr i64 %117, 17
  %119 = select i1 false, i64 0, i64 %118
  %120 = shl i64 %117, 39
  %121 = select i1 false, i64 0, i64 %120
  %122 = or i64 %119, %121
  %123 = and i64 %122, 72057594037927935
  %124 = xor i64 %123, 25399393228665167
  %125 = inttoptr i64 %124 to ptr
  store i64 0, ptr %3, align 4
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  store ptr null, ptr %4, align 8
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %126 = call ptr @"unique.addUniqueMap[string]"(ptr %125)
  %127 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"*_llgo_unique.uniqueMap[string]", ptr undef }, ptr %126, 1
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_2
  %128 = phi %"github.com/goplus/llgo/runtime/internal/runtime.eface" [ %114, %_llgo_2 ], [ %127, %_llgo_3 ]
  %129 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %130 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %128, 0
  %131 = icmp eq ptr %130, @"*_llgo_unique.uniqueMap[string]"
  br i1 %131, label %_llgo_10, label %_llgo_11

_llgo_5:                                          ; preds = %_llgo_9, %_llgo_10
  %132 = icmp eq ptr %129, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %132)
  %133 = load ptr, ptr %129, align 8
  %134 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %134)
  %135 = load i64, ptr %1, align 4
  %136 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  call void @runtime.LoadHiddenPointee(ptr %136, i64 %135, i64 16)
  %137 = icmp eq ptr %136, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %137)
  %138 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %136, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %136, align 8
  %139 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %138, ptr %139, align 8
  %140 = icmp eq ptr %139, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %140)
  %141 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %139, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %141, ptr %15, align 8
  %142 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %141, 0
  %143 = ptrtoint ptr %142 to i64
  %144 = and i64 %143, 72057594037927935
  %145 = xor i64 %144, 25399393228665167
  %146 = shl i64 %145, 17
  %147 = select i1 false, i64 0, i64 %146
  %148 = lshr i64 %145, 39
  %149 = select i1 false, i64 0, i64 %148
  %150 = or i64 %147, %149
  %151 = and i64 %150, 72057594037927935
  %152 = or i64 %151, -6557241057451442176
  %153 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %141, 1
  %154 = insertvalue { i64, i64 } undef, i64 %152, 0
  %155 = insertvalue { i64, i64 } %154, i64 %153, 1
  store { i64, i64 } %155, ptr %14, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %139, align 8
  call void @runtime.TouchConservativeSlot(ptr %139, i64 16)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %156 = icmp eq ptr %15, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %156)
  %157 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %15, align 8
  store { i64, i64 } zeroinitializer, ptr %14, align 4
  call void @runtime.TouchConservativeSlot(ptr %14, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %15, align 8
  call void @runtime.TouchConservativeSlot(ptr %15, i64 16)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %158 = call { %"weak.Pointer[string]", i1 } @"unique.(*uniqueMap[string]).Load"(ptr %133, %"github.com/goplus/llgo/runtime/internal/runtime.String" %157)
  %159 = extractvalue { %"weak.Pointer[string]", i1 } %158, 1
  %160 = extractvalue { %"weak.Pointer[string]", i1 } %158, 0
  br i1 %159, label %_llgo_7, label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5
  %161 = extractvalue { ptr, ptr } %314, 1
  %162 = extractvalue { ptr, ptr } %314, 0
  %163 = call { %"github.com/goplus/llgo/runtime/internal/runtime.String", %"weak.Pointer[string]" } %162(ptr %161)
  %164 = icmp eq ptr %129, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %164)
  %165 = load ptr, ptr %129, align 8
  %166 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.String", %"weak.Pointer[string]" } %163, 0
  %167 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %166, ptr %167, align 8
  %168 = icmp eq ptr %167, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %168)
  %169 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %167, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %169, ptr %17, align 8
  %170 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %169, 0
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
  %181 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %169, 1
  %182 = insertvalue { i64, i64 } undef, i64 %180, 0
  %183 = insertvalue { i64, i64 } %182, i64 %181, 1
  store { i64, i64 } %183, ptr %16, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %167, align 8
  call void @runtime.TouchConservativeSlot(ptr %167, i64 16)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %184 = icmp eq ptr %17, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %184)
  %185 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %17, align 8
  %186 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.String", %"weak.Pointer[string]" } %163, 1
  store { i64, i64 } zeroinitializer, ptr %16, align 4
  call void @runtime.TouchConservativeSlot(ptr %16, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %17, align 8
  call void @runtime.TouchConservativeSlot(ptr %17, i64 16)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %187 = call { %"weak.Pointer[string]", i1 } @"unique.(*uniqueMap[string]).LoadOrStore"(ptr %165, %"github.com/goplus/llgo/runtime/internal/runtime.String" %185, %"weak.Pointer[string]" %186)
  %188 = extractvalue { %"weak.Pointer[string]", i1 } %187, 1
  %189 = extractvalue { %"weak.Pointer[string]", i1 } %187, 0
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  br label %_llgo_7

_llgo_7:                                          ; preds = %_llgo_6, %_llgo_5
  %190 = phi %"weak.Pointer[string]" [ %160, %_llgo_5 ], [ %189, %_llgo_6 ]
  %191 = call ptr @"weak.Pointer[string].Value"(%"weak.Pointer[string]" %190)
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
  store i64 %201, ptr %18, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %19, i64 %201)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %202 = icmp eq ptr %18, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %202)
  %203 = load i64, ptr %18, align 4
  %204 = and i64 %203, 72057594037927935
  %205 = lshr i64 %204, 17
  %206 = select i1 false, i64 0, i64 %205
  %207 = shl i64 %204, 39
  %208 = select i1 false, i64 0, i64 %207
  %209 = or i64 %206, %208
  %210 = and i64 %209, 72057594037927935
  %211 = xor i64 %210, 25399393228665167
  %212 = inttoptr i64 %211 to ptr
  %213 = icmp ne ptr %212, null
  br i1 %213, label %_llgo_8, label %_llgo_9

_llgo_8:                                          ; preds = %_llgo_7
  %214 = icmp eq ptr %12, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %214)
  %215 = load i64, ptr %12, align 4
  %216 = call i64 @runtime.LoadHiddenPointerKey(i64 %215)
  store i64 %216, ptr %20, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %21, i64 %216)
  %217 = icmp eq ptr %20, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %217)
  %218 = load i64, ptr %20, align 4
  %219 = and i64 %218, 72057594037927935
  %220 = lshr i64 %219, 17
  %221 = select i1 false, i64 0, i64 %220
  %222 = shl i64 %219, 39
  %223 = select i1 false, i64 0, i64 %222
  %224 = or i64 %221, %223
  %225 = and i64 %224, 72057594037927935
  %226 = xor i64 %225, 25399393228665167
  %227 = inttoptr i64 %226 to ptr
  store i64 0, ptr %20, align 4
  call void @runtime.TouchConservativeSlot(ptr %20, i64 8)
  store ptr null, ptr %21, align 8
  call void @runtime.TouchConservativeSlot(ptr %21, i64 8)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  call void @runtime.KeepAlivePointer(ptr %227)
  %228 = alloca %"unique.Handle[string]", align 8
  call void @llvm.memset(ptr %228, i8 0, i64 8, i1 false)
  %229 = icmp eq ptr %228, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %229)
  %230 = getelementptr inbounds %"unique.Handle[string]", ptr %228, i32 0, i32 0
  %231 = ptrtoint ptr %230 to i64
  %232 = and i64 %231, 72057594037927935
  %233 = xor i64 %232, 25399393228665167
  %234 = shl i64 %233, 17
  %235 = select i1 false, i64 0, i64 %234
  %236 = lshr i64 %233, 39
  %237 = select i1 false, i64 0, i64 %236
  %238 = or i64 %235, %237
  %239 = and i64 %238, 72057594037927935
  %240 = or i64 %239, -6557241057451442176
  store i64 %240, ptr %22, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %23, i64 %240)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %241 = icmp eq ptr %22, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %241)
  %242 = load i64, ptr %22, align 4
  %243 = icmp eq ptr %18, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %243)
  %244 = load i64, ptr %18, align 4
  %245 = and i64 %244, 72057594037927935
  %246 = lshr i64 %245, 17
  %247 = select i1 false, i64 0, i64 %246
  %248 = shl i64 %245, 39
  %249 = select i1 false, i64 0, i64 %248
  %250 = or i64 %247, %249
  %251 = and i64 %250, 72057594037927935
  %252 = xor i64 %251, 25399393228665167
  %253 = inttoptr i64 %252 to ptr
  %254 = alloca ptr, align 8
  store ptr %253, ptr %254, align 8
  call void @runtime.StoreHiddenPointee(i64 %242, ptr %254, i64 8)
  store ptr null, ptr %254, align 8
  call void @runtime.TouchConservativeSlot(ptr %254, i64 8)
  store i64 0, ptr %18, align 4
  call void @runtime.TouchConservativeSlot(ptr %18, i64 8)
  store ptr null, ptr %19, align 8
  call void @runtime.TouchConservativeSlot(ptr %19, i64 8)
  store i64 0, ptr %22, align 4
  call void @runtime.TouchConservativeSlot(ptr %22, i64 8)
  store ptr null, ptr %23, align 8
  call void @runtime.TouchConservativeSlot(ptr %23, i64 8)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %255 = icmp eq ptr %228, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %255)
  %256 = load %"unique.Handle[string]", ptr %228, align 8
  store %"unique.Handle[string]" zeroinitializer, ptr %228, align 8
  call void @runtime.TouchConservativeSlot(ptr %228, i64 8)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  store %"unique.Handle[string]" zeroinitializer, ptr %228, align 8
  call void @runtime.TouchConservativeSlot(ptr %228, i64 8)
  ret %"unique.Handle[string]" %256

_llgo_9:                                          ; preds = %_llgo_7
  %257 = icmp eq ptr %129, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %257)
  %258 = load ptr, ptr %129, align 8
  %259 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %259)
  %260 = load i64, ptr %1, align 4
  %261 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  call void @runtime.LoadHiddenPointee(ptr %261, i64 %260, i64 16)
  %262 = icmp eq ptr %261, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %262)
  %263 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %261, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %261, align 8
  %264 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %263, ptr %264, align 8
  %265 = icmp eq ptr %264, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %265)
  %266 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %264, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %266, ptr %25, align 8
  %267 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %266, 0
  %268 = ptrtoint ptr %267 to i64
  %269 = and i64 %268, 72057594037927935
  %270 = xor i64 %269, 25399393228665167
  %271 = shl i64 %270, 17
  %272 = select i1 false, i64 0, i64 %271
  %273 = lshr i64 %270, 39
  %274 = select i1 false, i64 0, i64 %273
  %275 = or i64 %272, %274
  %276 = and i64 %275, 72057594037927935
  %277 = or i64 %276, -6557241057451442176
  %278 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %266, 1
  %279 = insertvalue { i64, i64 } undef, i64 %277, 0
  %280 = insertvalue { i64, i64 } %279, i64 %278, 1
  store { i64, i64 } %280, ptr %24, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %264, align 8
  call void @runtime.TouchConservativeSlot(ptr %264, i64 16)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %281 = icmp eq ptr %25, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %281)
  %282 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %25, align 8
  store { i64, i64 } zeroinitializer, ptr %24, align 4
  call void @runtime.TouchConservativeSlot(ptr %24, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %25, align 8
  call void @runtime.TouchConservativeSlot(ptr %25, i64 16)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %283 = call i1 @"unique.(*uniqueMap[string]).CompareAndDelete"(ptr %258, %"github.com/goplus/llgo/runtime/internal/runtime.String" %282, %"weak.Pointer[string]" %190)
  br label %_llgo_5

_llgo_10:                                         ; preds = %_llgo_4
  %284 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %128, 1
  store ptr %284, ptr %129, align 8
  store { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 } zeroinitializer, ptr %10, align 8
  call void @runtime.TouchConservativeSlot(ptr %10, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, ptr %11, align 8
  call void @runtime.TouchConservativeSlot(ptr %11, i64 16)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %285 = call i64 @runtime.AllocZHidden(i64 8)
  store i64 %285, ptr %12, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %13, i64 %285)
  %286 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %287 = icmp eq ptr %12, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %287)
  %288 = load i64, ptr %12, align 4
  %289 = and i64 %288, 72057594037927935
  %290 = lshr i64 %289, 17
  %291 = select i1 false, i64 0, i64 %290
  %292 = shl i64 %289, 39
  %293 = select i1 false, i64 0, i64 %292
  %294 = or i64 %291, %293
  %295 = and i64 %294, 72057594037927935
  %296 = xor i64 %295, 25399393228665167
  %297 = inttoptr i64 %296 to ptr
  %298 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %298)
  %299 = load i64, ptr %1, align 4
  %300 = and i64 %299, 72057594037927935
  %301 = lshr i64 %300, 17
  %302 = select i1 false, i64 0, i64 %301
  %303 = shl i64 %300, 39
  %304 = select i1 false, i64 0, i64 %303
  %305 = or i64 %302, %304
  %306 = and i64 %305, 72057594037927935
  %307 = xor i64 %306, 25399393228665167
  %308 = inttoptr i64 %307 to ptr
  %309 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 32)
  %310 = getelementptr inbounds { ptr, ptr, ptr, ptr }, ptr %309, i32 0, i32 0
  store ptr %297, ptr %310, align 8
  %311 = getelementptr inbounds { ptr, ptr, ptr, ptr }, ptr %309, i32 0, i32 1
  store ptr %308, ptr %311, align 8
  %312 = getelementptr inbounds { ptr, ptr, ptr, ptr }, ptr %309, i32 0, i32 2
  store ptr %129, ptr %312, align 8
  %313 = getelementptr inbounds { ptr, ptr, ptr, ptr }, ptr %309, i32 0, i32 3
  store ptr %286, ptr %313, align 8
  %314 = insertvalue { ptr, ptr } { ptr @"unique.Make$1[string]", ptr undef }, ptr %309, 1
  br label %_llgo_5

_llgo_11:                                         ; preds = %_llgo_4
  %315 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.MakeTypeAssertionError"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @64, i64 3 }, ptr %130, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @65, i64 25 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %315)
  unreachable

_llgo_12:                                         ; No predecessors!
  unreachable
}

define linkonce { %"github.com/goplus/llgo/runtime/internal/runtime.String", %"weak.Pointer[string]" } @"unique.Make$1[string]"(ptr %0) {
_llgo_0:
  %1 = alloca i64, align 8
  %2 = alloca ptr, align 8
  store ptr null, ptr %2, align 8
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  store ptr null, ptr %4, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  store ptr null, ptr %6, align 8
  %7 = alloca { i64, i64 }, align 8
  %8 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %8, align 8
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
  %17 = alloca { i64, i64 }, align 8
  %18 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %18, align 8
  %19 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %19)
  %20 = load { ptr, ptr, ptr, ptr }, ptr %0, align 8
  %21 = extractvalue { ptr, ptr, ptr, ptr } %20, 0
  %22 = icmp eq ptr %21, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %22)
  %23 = load ptr, ptr %21, align 8
  %24 = ptrtoint ptr %23 to i64
  %25 = and i64 %24, 72057594037927935
  %26 = xor i64 %25, 25399393228665167
  %27 = shl i64 %26, 17
  %28 = select i1 false, i64 0, i64 %27
  %29 = lshr i64 %26, 39
  %30 = select i1 false, i64 0, i64 %29
  %31 = or i64 %28, %30
  %32 = and i64 %31, 72057594037927935
  %33 = or i64 %32, -6557241057451442176
  store i64 %33, ptr %1, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %2, i64 %33)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %34 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %34)
  %35 = load i64, ptr %1, align 4
  %36 = and i64 %35, 72057594037927935
  %37 = lshr i64 %36, 17
  %38 = select i1 false, i64 0, i64 %37
  %39 = shl i64 %36, 39
  %40 = select i1 false, i64 0, i64 %39
  %41 = or i64 %38, %40
  %42 = and i64 %41, 72057594037927935
  %43 = xor i64 %42, 25399393228665167
  %44 = inttoptr i64 %43 to ptr
  %45 = icmp eq ptr %44, null
  store i64 0, ptr %1, align 4
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  store ptr null, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  br i1 %45, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %46 = call i64 @runtime.AllocZHidden(i64 16)
  store i64 %46, ptr %3, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %4, i64 %46)
  %47 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %47)
  %48 = load i64, ptr %3, align 4
  %49 = extractvalue { ptr, ptr, ptr, ptr } %20, 0
  call void @runtime.StoreHiddenPointerRoot(ptr %49, i64 %48)
  store i64 0, ptr %3, align 4
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  store ptr null, ptr %4, align 8
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %50 = extractvalue { ptr, ptr, ptr, ptr } %20, 0
  %51 = icmp eq ptr %50, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %51)
  %52 = load ptr, ptr %50, align 8
  %53 = ptrtoint ptr %52 to i64
  %54 = and i64 %53, 72057594037927935
  %55 = xor i64 %54, 25399393228665167
  %56 = shl i64 %55, 17
  %57 = select i1 false, i64 0, i64 %56
  %58 = lshr i64 %55, 39
  %59 = select i1 false, i64 0, i64 %58
  %60 = or i64 %57, %59
  %61 = and i64 %60, 72057594037927935
  %62 = or i64 %61, -6557241057451442176
  store i64 %62, ptr %5, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %6, i64 %62)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %63 = extractvalue { ptr, ptr, ptr, ptr } %20, 1
  %64 = icmp eq ptr %63, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %64)
  %65 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %63, align 8
  %66 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %65, ptr %66, align 8
  %67 = icmp eq ptr %66, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %67)
  %68 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %66, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %68, ptr %8, align 8
  %69 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %68, 0
  %70 = ptrtoint ptr %69 to i64
  %71 = and i64 %70, 72057594037927935
  %72 = xor i64 %71, 25399393228665167
  %73 = shl i64 %72, 17
  %74 = select i1 false, i64 0, i64 %73
  %75 = lshr i64 %72, 39
  %76 = select i1 false, i64 0, i64 %75
  %77 = or i64 %74, %76
  %78 = and i64 %77, 72057594037927935
  %79 = or i64 %78, -6557241057451442176
  %80 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %68, 1
  %81 = insertvalue { i64, i64 } undef, i64 %79, 0
  %82 = insertvalue { i64, i64 } %81, i64 %80, 1
  store { i64, i64 } %82, ptr %7, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %66, align 8
  call void @runtime.TouchConservativeSlot(ptr %66, i64 16)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %83 = extractvalue { ptr, ptr, ptr, ptr } %20, 2
  %84 = icmp eq ptr %83, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %84)
  %85 = load ptr, ptr %83, align 8
  %86 = icmp eq ptr %85, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %86)
  %87 = getelementptr inbounds %"unique.uniqueMap[string]", ptr %85, i32 0, i32 2
  %88 = ptrtoint ptr %87 to i64
  %89 = and i64 %88, 72057594037927935
  %90 = xor i64 %89, 25399393228665167
  %91 = shl i64 %90, 17
  %92 = select i1 false, i64 0, i64 %91
  %93 = lshr i64 %90, 39
  %94 = select i1 false, i64 0, i64 %93
  %95 = or i64 %92, %94
  %96 = and i64 %95, 72057594037927935
  %97 = or i64 %96, -6557241057451442176
  store i64 %97, ptr %9, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %10, i64 %97)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %98 = icmp eq ptr %8, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %98)
  %99 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %8, align 8
  %100 = icmp eq ptr %9, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %100)
  %101 = load i64, ptr %9, align 4
  %102 = and i64 %101, 72057594037927935
  %103 = lshr i64 %102, 17
  %104 = select i1 false, i64 0, i64 %103
  %105 = shl i64 %102, 39
  %106 = select i1 false, i64 0, i64 %105
  %107 = or i64 %104, %106
  %108 = and i64 %107, 72057594037927935
  %109 = xor i64 %108, 25399393228665167
  %110 = inttoptr i64 %109 to ptr
  store { i64, i64 } zeroinitializer, ptr %7, align 4
  call void @runtime.TouchConservativeSlot(ptr %7, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %8, align 8
  call void @runtime.TouchConservativeSlot(ptr %8, i64 16)
  store i64 0, ptr %9, align 4
  call void @runtime.TouchConservativeSlot(ptr %9, i64 8)
  store ptr null, ptr %10, align 8
  call void @runtime.TouchConservativeSlot(ptr %10, i64 8)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %111 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"unique.clone[string]"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %99, ptr %110)
  %112 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %111, ptr %112, align 8
  %113 = icmp eq ptr %112, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %113)
  %114 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %112, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %114, ptr %12, align 8
  %115 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %114, 0
  %116 = ptrtoint ptr %115 to i64
  %117 = and i64 %116, 72057594037927935
  %118 = xor i64 %117, 25399393228665167
  %119 = shl i64 %118, 17
  %120 = select i1 false, i64 0, i64 %119
  %121 = lshr i64 %118, 39
  %122 = select i1 false, i64 0, i64 %121
  %123 = or i64 %120, %122
  %124 = and i64 %123, 72057594037927935
  %125 = or i64 %124, -6557241057451442176
  %126 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %114, 1
  %127 = insertvalue { i64, i64 } undef, i64 %125, 0
  %128 = insertvalue { i64, i64 } %127, i64 %126, 1
  store { i64, i64 } %128, ptr %11, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %112, align 8
  call void @runtime.TouchConservativeSlot(ptr %112, i64 16)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %129 = icmp eq ptr %5, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %129)
  %130 = load i64, ptr %5, align 4
  %131 = icmp eq ptr %12, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %131)
  %132 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %12, align 8
  %133 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %132, ptr %133, align 8
  call void @runtime.StoreHiddenPointee(i64 %130, ptr %133, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %133, align 8
  call void @runtime.TouchConservativeSlot(ptr %133, i64 16)
  store i64 0, ptr %5, align 4
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  store ptr null, ptr %6, align 8
  call void @runtime.TouchConservativeSlot(ptr %6, i64 8)
  store { i64, i64 } zeroinitializer, ptr %11, align 4
  call void @runtime.TouchConservativeSlot(ptr %11, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %12, align 8
  call void @runtime.TouchConservativeSlot(ptr %12, i64 16)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %134 = extractvalue { ptr, ptr, ptr, ptr } %20, 0
  %135 = icmp eq ptr %134, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %135)
  %136 = load ptr, ptr %134, align 8
  %137 = ptrtoint ptr %136 to i64
  %138 = and i64 %137, 72057594037927935
  %139 = xor i64 %138, 25399393228665167
  %140 = shl i64 %139, 17
  %141 = select i1 false, i64 0, i64 %140
  %142 = lshr i64 %139, 39
  %143 = select i1 false, i64 0, i64 %142
  %144 = or i64 %141, %143
  %145 = and i64 %144, 72057594037927935
  %146 = or i64 %145, -6557241057451442176
  store i64 %146, ptr %13, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %14, i64 %146)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %147 = icmp eq ptr %13, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %147)
  %148 = load i64, ptr %13, align 4
  %149 = and i64 %148, 72057594037927935
  %150 = lshr i64 %149, 17
  %151 = select i1 false, i64 0, i64 %150
  %152 = shl i64 %149, 39
  %153 = select i1 false, i64 0, i64 %152
  %154 = or i64 %151, %153
  %155 = and i64 %154, 72057594037927935
  %156 = xor i64 %155, 25399393228665167
  %157 = inttoptr i64 %156 to ptr
  store i64 0, ptr %13, align 4
  call void @runtime.TouchConservativeSlot(ptr %13, i64 8)
  store ptr null, ptr %14, align 8
  call void @runtime.TouchConservativeSlot(ptr %14, i64 8)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %158 = call %"weak.Pointer[string]" @"weak.Make[string]"(ptr %157)
  %159 = extractvalue { ptr, ptr, ptr, ptr } %20, 3
  store %"weak.Pointer[string]" %158, ptr %159, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %160 = extractvalue { ptr, ptr, ptr, ptr } %20, 0
  %161 = icmp eq ptr %160, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %161)
  %162 = load ptr, ptr %160, align 8
  %163 = ptrtoint ptr %162 to i64
  %164 = and i64 %163, 72057594037927935
  %165 = xor i64 %164, 25399393228665167
  %166 = shl i64 %165, 17
  %167 = select i1 false, i64 0, i64 %166
  %168 = lshr i64 %165, 39
  %169 = select i1 false, i64 0, i64 %168
  %170 = or i64 %167, %169
  %171 = and i64 %170, 72057594037927935
  %172 = or i64 %171, -6557241057451442176
  store i64 %172, ptr %15, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %16, i64 %172)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %173 = icmp eq ptr %15, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %173)
  %174 = load i64, ptr %15, align 4
  %175 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  call void @runtime.LoadHiddenPointee(ptr %175, i64 %174, i64 16)
  %176 = icmp eq ptr %175, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %176)
  %177 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %175, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %175, align 8
  %178 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %177, ptr %178, align 8
  %179 = icmp eq ptr %178, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %179)
  %180 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %178, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %180, ptr %18, align 8
  %181 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %180, 0
  %182 = ptrtoint ptr %181 to i64
  %183 = and i64 %182, 72057594037927935
  %184 = xor i64 %183, 25399393228665167
  %185 = shl i64 %184, 17
  %186 = select i1 false, i64 0, i64 %185
  %187 = lshr i64 %184, 39
  %188 = select i1 false, i64 0, i64 %187
  %189 = or i64 %186, %188
  %190 = and i64 %189, 72057594037927935
  %191 = or i64 %190, -6557241057451442176
  %192 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %180, 1
  %193 = insertvalue { i64, i64 } undef, i64 %191, 0
  %194 = insertvalue { i64, i64 } %193, i64 %192, 1
  store { i64, i64 } %194, ptr %17, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %178, align 8
  call void @runtime.TouchConservativeSlot(ptr %178, i64 16)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  store i64 0, ptr %15, align 4
  call void @runtime.TouchConservativeSlot(ptr %15, i64 8)
  store ptr null, ptr %16, align 8
  call void @runtime.TouchConservativeSlot(ptr %16, i64 8)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %195 = extractvalue { ptr, ptr, ptr, ptr } %20, 3
  %196 = icmp eq ptr %195, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %196)
  %197 = load %"weak.Pointer[string]", ptr %195, align 8
  %198 = icmp eq ptr %18, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %198)
  %199 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %18, align 8
  store { i64, i64 } zeroinitializer, ptr %17, align 4
  call void @runtime.TouchConservativeSlot(ptr %17, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %18, align 8
  call void @runtime.TouchConservativeSlot(ptr %18, i64 16)
  store { i64, i64 } zeroinitializer, ptr %17, align 4
  call void @runtime.TouchConservativeSlot(ptr %17, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %18, align 8
  call void @runtime.TouchConservativeSlot(ptr %18, i64 16)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %200 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.String", %"weak.Pointer[string]" } undef, %"github.com/goplus/llgo/runtime/internal/runtime.String" %199, 0
  %201 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.String", %"weak.Pointer[string]" } %200, %"weak.Pointer[string]" %197, 1
  ret { %"github.com/goplus/llgo/runtime/internal/runtime.String", %"weak.Pointer[string]" } %201
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr)

define linkonce %"github.com/goplus/llgo/runtime/internal/runtime.String" @"unique.Handle[string].Value"(%"unique.Handle[string]" %0) {
_llgo_0:
  %1 = alloca i64, align 8
  %2 = alloca ptr, align 8
  store ptr null, ptr %2, align 8
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  store ptr null, ptr %4, align 8
  %5 = alloca { i64, i64 }, align 8
  %6 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %6, align 8
  %7 = alloca %"unique.Handle[string]", align 8
  call void @llvm.memset(ptr %7, i8 0, i64 8, i1 false)
  store %"unique.Handle[string]" %0, ptr %7, align 8
  call void @runtime.ClobberPointerRegs()
  %8 = icmp eq ptr %7, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %8)
  %9 = getelementptr inbounds %"unique.Handle[string]", ptr %7, i32 0, i32 0
  %10 = ptrtoint ptr %9 to i64
  %11 = and i64 %10, 72057594037927935
  %12 = xor i64 %11, 25399393228665167
  %13 = shl i64 %12, 17
  %14 = select i1 false, i64 0, i64 %13
  %15 = lshr i64 %12, 39
  %16 = select i1 false, i64 0, i64 %15
  %17 = or i64 %14, %16
  %18 = and i64 %17, 72057594037927935
  %19 = or i64 %18, -6557241057451442176
  store i64 %19, ptr %1, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %2, i64 %19)
  call void @runtime.ClobberPointerRegs()
  %20 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %20)
  %21 = load i64, ptr %1, align 4
  %22 = call i64 @runtime.LoadHiddenPointerKey(i64 %21)
  store i64 %22, ptr %3, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %4, i64 %22)
  store %"unique.Handle[string]" zeroinitializer, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 8)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %1, align 4
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  store ptr null, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  call void @runtime.ClobberPointerRegs()
  %23 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %23)
  %24 = load i64, ptr %3, align 4
  %25 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  call void @runtime.LoadHiddenPointee(ptr %25, i64 %24, i64 16)
  %26 = icmp eq ptr %25, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %26)
  %27 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %25, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %25, align 8
  %28 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %27, ptr %28, align 8
  %29 = icmp eq ptr %28, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %29)
  %30 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %28, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %30, ptr %6, align 8
  %31 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %30, 0
  %32 = ptrtoint ptr %31 to i64
  %33 = and i64 %32, 72057594037927935
  %34 = xor i64 %33, 25399393228665167
  %35 = shl i64 %34, 17
  %36 = select i1 false, i64 0, i64 %35
  %37 = lshr i64 %34, 39
  %38 = select i1 false, i64 0, i64 %37
  %39 = or i64 %36, %38
  %40 = and i64 %39, 72057594037927935
  %41 = or i64 %40, -6557241057451442176
  %42 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %30, 1
  %43 = insertvalue { i64, i64 } undef, i64 %41, 0
  %44 = insertvalue { i64, i64 } %43, i64 %42, 1
  store { i64, i64 } %44, ptr %5, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %28, align 8
  call void @runtime.TouchConservativeSlot(ptr %28, i64 16)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %3, align 4
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  store ptr null, ptr %4, align 8
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  call void @runtime.ClobberPointerRegs()
  %45 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %45)
  %46 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %6, align 8
  store { i64, i64 } zeroinitializer, ptr %5, align 4
  call void @runtime.TouchConservativeSlot(ptr %5, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %6, align 8
  call void @runtime.TouchConservativeSlot(ptr %6, i64 16)
  store { i64, i64 } zeroinitializer, ptr %5, align 4
  call void @runtime.TouchConservativeSlot(ptr %5, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %6, align 8
  call void @runtime.TouchConservativeSlot(ptr %6, i64 16)
  call void @runtime.ClobberPointerRegs()
  ret %"github.com/goplus/llgo/runtime/internal/runtime.String" %46
}

declare void @runtime.TouchConservativeSlot(ptr, i64)

declare void @runtime.ClobberPointerRegs()

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare i64 @runtime.AllocZHidden(i64)

declare void @runtime.StoreHiddenPointerRoot(ptr, i64)

declare void @runtime.StoreHiddenPointee(i64, ptr, i64)

define linkonce ptr @"github.com/goplus/llgo/runtime/abi.TypeFor[string]"() {
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
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %6, align 8
  %7 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %6, 1
  %8 = call ptr @"github.com/goplus/llgo/runtime/abi.TypeOf"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %7)
  %9 = ptrtoint ptr %8 to i64
  %10 = and i64 %9, 72057594037927935
  %11 = xor i64 %10, 25399393228665167
  %12 = shl i64 %11, 17
  %13 = select i1 false, i64 0, i64 %12
  %14 = lshr i64 %11, 39
  %15 = select i1 false, i64 0, i64 %14
  %16 = or i64 %13, %15
  %17 = and i64 %16, 72057594037927935
  %18 = or i64 %17, -6557241057451442176
  store i64 %18, ptr %0, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %1, i64 %18)
  call void @runtime.ClobberPointerRegs()
  %19 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %19)
  %20 = load i64, ptr %0, align 4
  %21 = and i64 %20, 72057594037927935
  %22 = lshr i64 %21, 17
  %23 = select i1 false, i64 0, i64 %22
  %24 = shl i64 %21, 39
  %25 = select i1 false, i64 0, i64 %24
  %26 = or i64 %23, %25
  %27 = and i64 %26, 72057594037927935
  %28 = xor i64 %27, 25399393228665167
  %29 = inttoptr i64 %28 to ptr
  %30 = icmp ne ptr %29, null
  br i1 %30, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %31 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %31)
  %32 = load i64, ptr %0, align 4
  %33 = and i64 %32, 72057594037927935
  %34 = lshr i64 %33, 17
  %35 = select i1 false, i64 0, i64 %34
  %36 = shl i64 %33, 39
  %37 = select i1 false, i64 0, i64 %36
  %38 = or i64 %35, %37
  %39 = and i64 %38, 72057594037927935
  %40 = xor i64 %39, 25399393228665167
  %41 = inttoptr i64 %40 to ptr
  store i64 0, ptr %0, align 4
  call void @runtime.TouchConservativeSlot(ptr %0, i64 8)
  store ptr null, ptr %1, align 8
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  store i64 0, ptr %0, align 4
  call void @runtime.TouchConservativeSlot(ptr %0, i64 8)
  store ptr null, ptr %1, align 8
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  call void @runtime.ClobberPointerRegs()
  ret ptr %41

_llgo_2:                                          ; preds = %_llgo_0
  %42 = call ptr @"github.com/goplus/llgo/runtime/abi.TypeOf"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"*_llgo_string", ptr null })
  %43 = ptrtoint ptr %42 to i64
  %44 = and i64 %43, 72057594037927935
  %45 = xor i64 %44, 25399393228665167
  %46 = shl i64 %45, 17
  %47 = select i1 false, i64 0, i64 %46
  %48 = lshr i64 %45, 39
  %49 = select i1 false, i64 0, i64 %48
  %50 = or i64 %47, %49
  %51 = and i64 %50, 72057594037927935
  %52 = or i64 %51, -6557241057451442176
  store i64 %52, ptr %2, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %3, i64 %52)
  call void @runtime.ClobberPointerRegs()
  %53 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %53)
  %54 = load i64, ptr %2, align 4
  %55 = and i64 %54, 72057594037927935
  %56 = lshr i64 %55, 17
  %57 = select i1 false, i64 0, i64 %56
  %58 = shl i64 %55, 39
  %59 = select i1 false, i64 0, i64 %58
  %60 = or i64 %57, %59
  %61 = and i64 %60, 72057594037927935
  %62 = xor i64 %61, 25399393228665167
  %63 = inttoptr i64 %62 to ptr
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  call void @runtime.ClobberPointerRegs()
  %64 = call ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Elem"(ptr %63)
  %65 = ptrtoint ptr %64 to i64
  %66 = and i64 %65, 72057594037927935
  %67 = xor i64 %66, 25399393228665167
  %68 = shl i64 %67, 17
  %69 = select i1 false, i64 0, i64 %68
  %70 = lshr i64 %67, 39
  %71 = select i1 false, i64 0, i64 %70
  %72 = or i64 %69, %71
  %73 = and i64 %72, 72057594037927935
  %74 = or i64 %73, -6557241057451442176
  store i64 %74, ptr %4, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %5, i64 %74)
  call void @runtime.ClobberPointerRegs()
  %75 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %75)
  %76 = load i64, ptr %4, align 4
  %77 = and i64 %76, 72057594037927935
  %78 = lshr i64 %77, 17
  %79 = select i1 false, i64 0, i64 %78
  %80 = shl i64 %77, 39
  %81 = select i1 false, i64 0, i64 %80
  %82 = or i64 %79, %81
  %83 = and i64 %82, 72057594037927935
  %84 = xor i64 %83, 25399393228665167
  %85 = inttoptr i64 %84 to ptr
  store i64 0, ptr %4, align 4
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  store ptr null, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  store i64 0, ptr %4, align 4
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  store ptr null, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  call void @runtime.ClobberPointerRegs()
  ret ptr %85
}

declare i64 @"github.com/goplus/llgo/runtime/abi.(*Type).Size"(ptr)

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

declare { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 } @unique.loadUniqueMap(ptr)

declare void @unique.ensureSetupMake()

define linkonce ptr @"unique.addUniqueMap[string]"(ptr %0) {
_llgo_0:
  %1 = alloca i64, align 8
  %2 = alloca ptr, align 8
  store ptr null, ptr %2, align 8
  %3 = alloca %unique.cloneSeq, align 8
  %4 = alloca { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 }, align 8
  %5 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  %6 = alloca { i64, i64, i64 }, align 8
  %7 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %7, align 8
  %8 = alloca { ptr, ptr }, align 8
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 8
  store ptr null, ptr %10, align 8
  %11 = alloca i64, align 8
  %12 = alloca ptr, align 8
  store ptr null, ptr %12, align 8
  %13 = alloca { i64, i64, i64 }, align 8
  %14 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %14, align 8
  %15 = alloca { i64, i64, i64 }, align 8
  %16 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %16, align 8
  %17 = alloca ptr, align 8
  store ptr %0, ptr %17, align 8
  call void @runtime.ClobberPointerRegs()
  %18 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %19 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 40)
  %20 = icmp eq ptr %19, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %20)
  %21 = getelementptr inbounds %"unique.uniqueMap[string]", ptr %19, i32 0, i32 1
  %22 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MakeMap"(ptr @"map[_llgo_string]_llgo_weak.Pointer[string]", i64 0)
  %23 = icmp eq ptr %19, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %23)
  %24 = getelementptr inbounds %"unique.uniqueMap[string]", ptr %19, i32 0, i32 2
  %25 = ptrtoint ptr %24 to i64
  %26 = and i64 %25, 72057594037927935
  %27 = xor i64 %26, 25399393228665167
  %28 = shl i64 %27, 17
  %29 = select i1 false, i64 0, i64 %28
  %30 = lshr i64 %27, 39
  %31 = select i1 false, i64 0, i64 %30
  %32 = or i64 %29, %31
  %33 = and i64 %32, 72057594037927935
  %34 = or i64 %33, -6557241057451442176
  store i64 %34, ptr %1, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %2, i64 %34)
  call void @runtime.ClobberPointerRegs()
  %35 = icmp eq ptr %17, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %35)
  %36 = load ptr, ptr %17, align 8
  %37 = call %unique.cloneSeq @unique.makeCloneSeq(ptr %36)
  store %unique.cloneSeq %37, ptr %3, align 8
  store ptr %22, ptr %21, align 8
  %38 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %38)
  %39 = load i64, ptr %1, align 4
  %40 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %40)
  %41 = load %unique.cloneSeq, ptr %3, align 8
  %42 = alloca %unique.cloneSeq, align 8
  store %unique.cloneSeq %41, ptr %42, align 8
  call void @runtime.StoreHiddenPointee(i64 %39, ptr %42, i64 24)
  store %unique.cloneSeq zeroinitializer, ptr %42, align 8
  call void @runtime.TouchConservativeSlot(ptr %42, i64 24)
  store i64 0, ptr %1, align 4
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  store ptr null, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store %unique.cloneSeq zeroinitializer, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 24)
  call void @runtime.ClobberPointerRegs()
  store ptr %19, ptr %18, align 8
  %43 = icmp eq ptr %18, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %43)
  %44 = load ptr, ptr %18, align 8
  %45 = icmp eq ptr %18, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %45)
  %46 = icmp eq ptr %18, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %46)
  %47 = load ptr, ptr %18, align 8
  %48 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"*_llgo_unique.uniqueMap[string]", ptr undef }, ptr %47, 1
  %49 = icmp eq ptr %17, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %49)
  %50 = load ptr, ptr %17, align 8
  %51 = call { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 } @unique.loadOrStoreUniqueMap(ptr %50, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %48)
  store { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 } %51, ptr %4, align 8
  store ptr null, ptr %17, align 8
  call void @runtime.TouchConservativeSlot(ptr %17, i64 8)
  call void @runtime.ClobberPointerRegs()
  %52 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %52)
  %53 = load { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 }, ptr %4, align 8
  %54 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 } %53, 1
  br i1 %54, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  call void @"sync.(*Mutex).Lock"(ptr @unique.cleanupFuncsMu)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  %55 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr @unique.cleanupFuncs, align 8
  %56 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %55, ptr %56, align 8
  %57 = icmp eq ptr %56, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %57)
  %58 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %56, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %58, ptr %7, align 8
  %59 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %58, 0
  %60 = ptrtoint ptr %59 to i64
  %61 = and i64 %60, 72057594037927935
  %62 = xor i64 %61, 25399393228665167
  %63 = shl i64 %62, 17
  %64 = select i1 false, i64 0, i64 %63
  %65 = lshr i64 %62, 39
  %66 = select i1 false, i64 0, i64 %65
  %67 = or i64 %64, %66
  %68 = and i64 %67, 72057594037927935
  %69 = or i64 %68, -6557241057451442176
  %70 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %58, 1
  %71 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %58, 2
  %72 = insertvalue { i64, i64, i64 } undef, i64 %69, 0
  %73 = insertvalue { i64, i64, i64 } %72, i64 %70, 1
  %74 = insertvalue { i64, i64, i64 } %73, i64 %71, 2
  store { i64, i64, i64 } %74, ptr %6, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %56, align 8
  call void @runtime.TouchConservativeSlot(ptr %56, i64 24)
  call void @runtime.ClobberPointerRegs()
  %75 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %76 = getelementptr inbounds { ptr }, ptr %75, i32 0, i32 0
  store ptr %18, ptr %76, align 8
  %77 = insertvalue { ptr, ptr } { ptr @"unique.addUniqueMap$1[string]", ptr undef }, ptr %75, 1
  store { ptr, ptr } %77, ptr %8, align 8
  %78 = call i64 @runtime.AllocZHidden(i64 16)
  store i64 %78, ptr %9, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %10, i64 %78)
  %79 = icmp eq ptr %9, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %79)
  %80 = load i64, ptr %9, align 4
  %81 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 0, i64 1)
  %82 = mul i64 %81, 16
  %83 = call i64 @runtime.AdvanceHiddenPointer(i64 %80, i64 %82)
  store i64 %83, ptr %11, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %12, i64 %83)
  %84 = icmp eq ptr %11, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %84)
  %85 = load i64, ptr %11, align 4
  %86 = icmp eq ptr %8, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %86)
  %87 = load { ptr, ptr }, ptr %8, align 8
  %88 = alloca { ptr, ptr }, align 8
  store { ptr, ptr } %87, ptr %88, align 8
  call void @runtime.StoreHiddenPointee(i64 %85, ptr %88, i64 16)
  store { ptr, ptr } zeroinitializer, ptr %88, align 8
  call void @runtime.TouchConservativeSlot(ptr %88, i64 16)
  store { ptr, ptr } zeroinitializer, ptr %8, align 8
  call void @runtime.TouchConservativeSlot(ptr %8, i64 16)
  store i64 0, ptr %11, align 4
  call void @runtime.TouchConservativeSlot(ptr %11, i64 8)
  store ptr null, ptr %12, align 8
  call void @runtime.TouchConservativeSlot(ptr %12, i64 8)
  call void @runtime.ClobberPointerRegs()
  %89 = icmp eq ptr %9, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %89)
  %90 = load i64, ptr %9, align 4
  %91 = and i64 %90, 72057594037927935
  %92 = lshr i64 %91, 17
  %93 = select i1 false, i64 0, i64 %92
  %94 = shl i64 %91, 39
  %95 = select i1 false, i64 0, i64 %94
  %96 = or i64 %93, %95
  %97 = and i64 %96, 72057594037927935
  %98 = xor i64 %97, 25399393228665167
  %99 = inttoptr i64 %98 to ptr
  %100 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %99, 0
  %101 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %100, i64 1, 1
  %102 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %101, i64 1, 2
  %103 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %102, ptr %103, align 8
  %104 = icmp eq ptr %103, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %104)
  %105 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %103, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %105, ptr %14, align 8
  %106 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %105, 0
  %107 = ptrtoint ptr %106 to i64
  %108 = and i64 %107, 72057594037927935
  %109 = xor i64 %108, 25399393228665167
  %110 = shl i64 %109, 17
  %111 = select i1 false, i64 0, i64 %110
  %112 = lshr i64 %109, 39
  %113 = select i1 false, i64 0, i64 %112
  %114 = or i64 %111, %113
  %115 = and i64 %114, 72057594037927935
  %116 = or i64 %115, -6557241057451442176
  %117 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %105, 1
  %118 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %105, 2
  %119 = insertvalue { i64, i64, i64 } undef, i64 %116, 0
  %120 = insertvalue { i64, i64, i64 } %119, i64 %117, 1
  %121 = insertvalue { i64, i64, i64 } %120, i64 %118, 2
  store { i64, i64, i64 } %121, ptr %13, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %103, align 8
  call void @runtime.TouchConservativeSlot(ptr %103, i64 24)
  call void @runtime.ClobberPointerRegs()
  %122 = icmp eq ptr %7, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %122)
  %123 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %7, align 8
  %124 = icmp eq ptr %14, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %124)
  %125 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %14, align 8
  store { i64, i64, i64 } zeroinitializer, ptr %6, align 4
  call void @runtime.TouchConservativeSlot(ptr %6, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 24)
  store i64 0, ptr %9, align 4
  call void @runtime.TouchConservativeSlot(ptr %9, i64 8)
  store ptr null, ptr %10, align 8
  call void @runtime.TouchConservativeSlot(ptr %10, i64 8)
  store { i64, i64, i64 } zeroinitializer, ptr %13, align 4
  call void @runtime.TouchConservativeSlot(ptr %13, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %14, align 8
  call void @runtime.TouchConservativeSlot(ptr %14, i64 24)
  call void @runtime.ClobberPointerRegs()
  %126 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %125, 0
  %127 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %125, 1
  %128 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.SliceAppend"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %123, ptr %126, i64 %127, i64 16)
  %129 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %128, ptr %129, align 8
  %130 = icmp eq ptr %129, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %130)
  %131 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %129, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %131, ptr %16, align 8
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
  store { i64, i64, i64 } %147, ptr %15, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %129, align 8
  call void @runtime.TouchConservativeSlot(ptr %129, i64 24)
  call void @runtime.ClobberPointerRegs()
  %148 = icmp eq ptr %16, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %148)
  %149 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %16, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %149, ptr @unique.cleanupFuncs, align 8
  store { i64, i64, i64 } zeroinitializer, ptr %15, align 4
  call void @runtime.TouchConservativeSlot(ptr %15, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %16, align 8
  call void @runtime.TouchConservativeSlot(ptr %16, i64 24)
  call void @runtime.ClobberPointerRegs()
  call void @"sync.(*Mutex).Unlock"(ptr @unique.cleanupFuncsMu)
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %150 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %150)
  %151 = load { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 }, ptr %4, align 8
  %152 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 } %151, 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %152, ptr %5, align 8
  %153 = icmp eq ptr %5, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %153)
  %154 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %5, align 8
  %155 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %154, 0
  %156 = icmp eq ptr %155, @"*_llgo_unique.uniqueMap[string]"
  br i1 %156, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %157 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %154, 1
  store { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 } zeroinitializer, ptr %4, align 8
  call void @runtime.TouchConservativeSlot(ptr %4, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 16)
  call void @runtime.ClobberPointerRegs()
  ret ptr %157

_llgo_4:                                          ; preds = %_llgo_2
  %158 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.MakeTypeAssertionError"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @64, i64 3 }, ptr %155, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @65, i64 25 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %158)
  unreachable

_llgo_5:                                          ; No predecessors!
  unreachable
}

define linkonce void @"unique.addUniqueMap$1[string]"(ptr %0) {
_llgo_0:
  %1 = alloca { ptr, ptr }, align 8
  %2 = alloca { ptr, ptr }, align 8
  %3 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %3)
  %4 = load { ptr }, ptr %0, align 8
  %5 = extractvalue { ptr } %4, 0
  %6 = icmp eq ptr %5, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %6)
  %7 = load ptr, ptr %5, align 8
  %8 = call { ptr, ptr } @"unique.(*uniqueMap[string]).All"(ptr %7)
  store { ptr, ptr } %8, ptr %1, align 8
  %9 = extractvalue { ptr } %4, 0
  %10 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %11 = getelementptr inbounds { ptr }, ptr %10, i32 0, i32 0
  store ptr %9, ptr %11, align 8
  %12 = insertvalue { ptr, ptr } { ptr @"unique.addUniqueMap$1$1[string]", ptr undef }, ptr %10, 1
  store { ptr, ptr } %12, ptr %2, align 8
  %13 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %13)
  %14 = load { ptr, ptr }, ptr %1, align 8
  %15 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %16 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %16)
  %17 = load { ptr, ptr }, ptr %2, align 8
  store { ptr, ptr } zeroinitializer, ptr %1, align 8
  call void @runtime.TouchConservativeSlot(ptr %1, i64 16)
  store { ptr, ptr } zeroinitializer, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 16)
  call void @runtime.ClobberPointerRegs()
  %18 = extractvalue { ptr, ptr } %14, 1
  %19 = extractvalue { ptr, ptr } %14, 0
  call void %19(ptr %18, { ptr, ptr } %17)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %15)
  ret void
}

define linkonce i1 @"unique.addUniqueMap$1$1[string]"(ptr %0, %"github.com/goplus/llgo/runtime/internal/runtime.String" %1, %"weak.Pointer[string]" %2) {
_llgo_0:
  %3 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %3)
  %4 = load { ptr }, ptr %0, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  store ptr null, ptr %6, align 8
  %7 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %1, ptr %7, align 8
  call void @runtime.ClobberPointerRegs()
  %8 = call ptr @"weak.Pointer[string].Value"(%"weak.Pointer[string]" %2)
  %9 = ptrtoint ptr %8 to i64
  %10 = and i64 %9, 72057594037927935
  %11 = xor i64 %10, 25399393228665167
  %12 = shl i64 %11, 17
  %13 = select i1 false, i64 0, i64 %12
  %14 = lshr i64 %11, 39
  %15 = select i1 false, i64 0, i64 %14
  %16 = or i64 %13, %15
  %17 = and i64 %16, 72057594037927935
  %18 = or i64 %17, -6557241057451442176
  store i64 %18, ptr %5, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %6, i64 %18)
  call void @runtime.ClobberPointerRegs()
  %19 = icmp eq ptr %5, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %19)
  %20 = load i64, ptr %5, align 4
  %21 = and i64 %20, 72057594037927935
  %22 = lshr i64 %21, 17
  %23 = select i1 false, i64 0, i64 %22
  %24 = shl i64 %21, 39
  %25 = select i1 false, i64 0, i64 %24
  %26 = or i64 %23, %25
  %27 = and i64 %26, 72057594037927935
  %28 = xor i64 %27, 25399393228665167
  %29 = inttoptr i64 %28 to ptr
  %30 = icmp eq ptr %29, null
  store i64 0, ptr %5, align 4
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  store ptr null, ptr %6, align 8
  call void @runtime.TouchConservativeSlot(ptr %6, i64 8)
  call void @runtime.ClobberPointerRegs()
  br i1 %30, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %31 = extractvalue { ptr } %4, 0
  %32 = icmp eq ptr %31, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %32)
  %33 = load ptr, ptr %31, align 8
  %34 = icmp eq ptr %7, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %34)
  %35 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %7, align 8
  %36 = call i1 @"unique.(*uniqueMap[string]).CompareAndDelete"(ptr %33, %"github.com/goplus/llgo/runtime/internal/runtime.String" %35, %"weak.Pointer[string]" %2)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 16)
  call void @runtime.ClobberPointerRegs()
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret i1 true
}

define linkonce { ptr, ptr } @"unique.(*uniqueMap[string]).All"(ptr %0) {
_llgo_0:
  %1 = alloca { ptr, ptr }, align 8
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  store ptr %0, ptr %2, align 8
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %4 = getelementptr inbounds { ptr }, ptr %3, i32 0, i32 0
  store ptr %2, ptr %4, align 8
  %5 = insertvalue { ptr, ptr } { ptr @"unique.(*uniqueMap[string]).All$1[string]", ptr undef }, ptr %3, 1
  store { ptr, ptr } %5, ptr %1, align 8
  %6 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %6)
  %7 = load { ptr, ptr }, ptr %1, align 8
  store { ptr, ptr } zeroinitializer, ptr %1, align 8
  call void @runtime.TouchConservativeSlot(ptr %1, i64 16)
  store { ptr, ptr } zeroinitializer, ptr %1, align 8
  call void @runtime.TouchConservativeSlot(ptr %1, i64 16)
  call void @runtime.ClobberPointerRegs()
  ret { ptr, ptr } %7
}

define linkonce void @"unique.(*uniqueMap[string]).All$1[string]"(ptr %0, { ptr, ptr } %1) {
_llgo_0:
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  store ptr null, ptr %3, align 8
  %4 = alloca { i64, i64 }, align 8
  %5 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %5, align 8
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  store ptr null, ptr %7, align 8
  %8 = alloca i64, align 8
  %9 = alloca ptr, align 8
  store ptr null, ptr %9, align 8
  %10 = alloca i64, align 8
  %11 = alloca ptr, align 8
  store ptr null, ptr %11, align 8
  %12 = alloca { i64, i64 }, align 8
  %13 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %13, align 8
  %14 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %14)
  %15 = load { ptr }, ptr %0, align 8
  %16 = extractvalue { ptr } %15, 0
  %17 = icmp eq ptr %16, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %17)
  %18 = load ptr, ptr %16, align 8
  %19 = icmp eq ptr %18, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %19)
  %20 = getelementptr inbounds %"unique.uniqueMap[string]", ptr %18, i32 0, i32 0
  %21 = ptrtoint ptr %20 to i64
  %22 = and i64 %21, 72057594037927935
  %23 = xor i64 %22, 25399393228665167
  %24 = shl i64 %23, 17
  %25 = select i1 false, i64 0, i64 %24
  %26 = lshr i64 %23, 39
  %27 = select i1 false, i64 0, i64 %26
  %28 = or i64 %25, %27
  %29 = and i64 %28, 72057594037927935
  %30 = or i64 %29, -6557241057451442176
  store i64 %30, ptr %2, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %3, i64 %30)
  call void @runtime.ClobberPointerRegs()
  %31 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %32 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %32)
  %33 = load i64, ptr %2, align 4
  %34 = and i64 %33, 72057594037927935
  %35 = lshr i64 %34, 17
  %36 = select i1 false, i64 0, i64 %35
  %37 = shl i64 %34, 39
  %38 = select i1 false, i64 0, i64 %37
  %39 = or i64 %36, %38
  %40 = and i64 %39, 72057594037927935
  %41 = xor i64 %40, 25399393228665167
  %42 = inttoptr i64 %41 to ptr
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  call void @runtime.ClobberPointerRegs()
  call void @"sync.(*Mutex).Lock"(ptr %42)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %31)
  %43 = extractvalue { ptr } %15, 0
  %44 = icmp eq ptr %43, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %44)
  %45 = load ptr, ptr %43, align 8
  %46 = icmp eq ptr %45, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %46)
  %47 = getelementptr inbounds %"unique.uniqueMap[string]", ptr %45, i32 0, i32 1
  %48 = icmp eq ptr %47, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %48)
  %49 = load ptr, ptr %47, align 8
  %50 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %51 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.MapLen"(ptr %49)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %50)
  %52 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.MakeSlice"(i64 0, i64 %51, i64 24)
  %53 = extractvalue { ptr } %15, 0
  %54 = icmp eq ptr %53, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %54)
  %55 = load ptr, ptr %53, align 8
  %56 = icmp eq ptr %55, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %56)
  %57 = getelementptr inbounds %"unique.uniqueMap[string]", ptr %55, i32 0, i32 1
  %58 = icmp eq ptr %57, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %58)
  %59 = load ptr, ptr %57, align 8
  %60 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewRangeMapIter"(ptr @"map[_llgo_string]_llgo_weak.Pointer[string]", ptr %59)
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_2, %_llgo_0
  %61 = phi %"github.com/goplus/llgo/runtime/internal/runtime.Slice" [ %52, %_llgo_0 ], [ %115, %_llgo_2 ]
  %62 = call { i1, ptr, ptr } @"github.com/goplus/llgo/runtime/internal/runtime.RangeMapIterNext"(ptr %60)
  %63 = extractvalue { i1, ptr, ptr } %62, 0
  br i1 %63, label %_llgo_8, label %_llgo_9

_llgo_2:                                          ; preds = %_llgo_10
  %64 = alloca %"unique.uniqueEntry[string]", align 8
  call void @llvm.memset(ptr %64, i8 0, i64 24, i1 false)
  %65 = icmp eq ptr %64, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %65)
  %66 = getelementptr inbounds %"unique.uniqueEntry[string]", ptr %64, i32 0, i32 0
  %67 = ptrtoint ptr %66 to i64
  %68 = and i64 %67, 72057594037927935
  %69 = xor i64 %68, 25399393228665167
  %70 = shl i64 %69, 17
  %71 = select i1 false, i64 0, i64 %70
  %72 = lshr i64 %69, 39
  %73 = select i1 false, i64 0, i64 %72
  %74 = or i64 %71, %73
  %75 = and i64 %74, 72057594037927935
  %76 = or i64 %75, -6557241057451442176
  store i64 %76, ptr %6, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %7, i64 %76)
  call void @runtime.ClobberPointerRegs()
  %77 = icmp eq ptr %64, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %77)
  %78 = getelementptr inbounds %"unique.uniqueEntry[string]", ptr %64, i32 0, i32 1
  %79 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %79)
  %80 = load i64, ptr %6, align 4
  %81 = extractvalue { i1, %"github.com/goplus/llgo/runtime/internal/runtime.String", %"weak.Pointer[string]" } %209, 1
  %82 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %81, ptr %82, align 8
  %83 = icmp eq ptr %82, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %83)
  %84 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %82, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %84, ptr %5, align 8
  %85 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %84, 0
  %86 = ptrtoint ptr %85 to i64
  %87 = and i64 %86, 72057594037927935
  %88 = xor i64 %87, 25399393228665167
  %89 = shl i64 %88, 17
  %90 = select i1 false, i64 0, i64 %89
  %91 = lshr i64 %88, 39
  %92 = select i1 false, i64 0, i64 %91
  %93 = or i64 %90, %92
  %94 = and i64 %93, 72057594037927935
  %95 = or i64 %94, -6557241057451442176
  %96 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %84, 1
  %97 = insertvalue { i64, i64 } undef, i64 %95, 0
  %98 = insertvalue { i64, i64 } %97, i64 %96, 1
  store { i64, i64 } %98, ptr %4, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %82, align 8
  call void @runtime.TouchConservativeSlot(ptr %82, i64 16)
  call void @runtime.ClobberPointerRegs()
  %99 = icmp eq ptr %5, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %99)
  %100 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %5, align 8
  %101 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %100, ptr %101, align 8
  call void @runtime.StoreHiddenPointee(i64 %80, ptr %101, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %101, align 8
  call void @runtime.TouchConservativeSlot(ptr %101, i64 16)
  store { i64, i64 } zeroinitializer, ptr %4, align 4
  call void @runtime.TouchConservativeSlot(ptr %4, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 16)
  store i64 0, ptr %6, align 4
  call void @runtime.TouchConservativeSlot(ptr %6, i64 8)
  store ptr null, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 8)
  call void @runtime.ClobberPointerRegs()
  %102 = extractvalue { i1, %"github.com/goplus/llgo/runtime/internal/runtime.String", %"weak.Pointer[string]" } %209, 2
  store %"weak.Pointer[string]" %102, ptr %78, align 8
  %103 = icmp eq ptr %64, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %103)
  %104 = load %"unique.uniqueEntry[string]", ptr %64, align 8
  store %"unique.uniqueEntry[string]" zeroinitializer, ptr %64, align 8
  call void @runtime.TouchConservativeSlot(ptr %64, i64 24)
  call void @runtime.ClobberPointerRegs()
  %105 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 24)
  %106 = icmp eq ptr %105, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %106)
  %107 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 0, i64 1)
  %108 = getelementptr inbounds %"unique.uniqueEntry[string]", ptr %105, i64 %107
  store %"unique.uniqueEntry[string]" %104, ptr %108, align 8
  %109 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %105, 0
  %110 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %109, i64 1, 1
  %111 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %110, i64 1, 2
  %112 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %113 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %111, 0
  %114 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %111, 1
  %115 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.SliceAppend"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %61, ptr %113, i64 %114, i64 24)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %112)
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_10
  %116 = extractvalue { ptr } %15, 0
  %117 = icmp eq ptr %116, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %117)
  %118 = load ptr, ptr %116, align 8
  %119 = icmp eq ptr %118, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %119)
  %120 = getelementptr inbounds %"unique.uniqueMap[string]", ptr %118, i32 0, i32 0
  %121 = ptrtoint ptr %120 to i64
  %122 = and i64 %121, 72057594037927935
  %123 = xor i64 %122, 25399393228665167
  %124 = shl i64 %123, 17
  %125 = select i1 false, i64 0, i64 %124
  %126 = lshr i64 %123, 39
  %127 = select i1 false, i64 0, i64 %126
  %128 = or i64 %125, %127
  %129 = and i64 %128, 72057594037927935
  %130 = or i64 %129, -6557241057451442176
  store i64 %130, ptr %8, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %9, i64 %130)
  call void @runtime.ClobberPointerRegs()
  %131 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %132 = icmp eq ptr %8, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %132)
  %133 = load i64, ptr %8, align 4
  %134 = and i64 %133, 72057594037927935
  %135 = lshr i64 %134, 17
  %136 = select i1 false, i64 0, i64 %135
  %137 = shl i64 %134, 39
  %138 = select i1 false, i64 0, i64 %137
  %139 = or i64 %136, %138
  %140 = and i64 %139, 72057594037927935
  %141 = xor i64 %140, 25399393228665167
  %142 = inttoptr i64 %141 to ptr
  store i64 0, ptr %8, align 4
  call void @runtime.TouchConservativeSlot(ptr %8, i64 8)
  store ptr null, ptr %9, align 8
  call void @runtime.TouchConservativeSlot(ptr %9, i64 8)
  call void @runtime.ClobberPointerRegs()
  call void @"sync.(*Mutex).Unlock"(ptr %142)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %131)
  %143 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %144 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %61, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %143)
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_5, %_llgo_3
  %145 = phi i64 [ -1, %_llgo_3 ], [ %146, %_llgo_5 ]
  %146 = add i64 %145, 1
  %147 = icmp slt i64 %146, %144
  br i1 %147, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %148 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %61, 0
  %149 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %61, 1
  %150 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 %146, i64 %149)
  %151 = getelementptr inbounds %"unique.uniqueEntry[string]", ptr %148, i64 %150
  %152 = icmp eq ptr %151, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %152)
  %153 = load %"unique.uniqueEntry[string]", ptr %151, align 8
  %154 = alloca %"unique.uniqueEntry[string]", align 8
  call void @llvm.memset(ptr %154, i8 0, i64 24, i1 false)
  store %"unique.uniqueEntry[string]" %153, ptr %154, align 8
  %155 = icmp eq ptr %154, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %155)
  %156 = getelementptr inbounds %"unique.uniqueEntry[string]", ptr %154, i32 0, i32 0
  %157 = ptrtoint ptr %156 to i64
  %158 = and i64 %157, 72057594037927935
  %159 = xor i64 %158, 25399393228665167
  %160 = shl i64 %159, 17
  %161 = select i1 false, i64 0, i64 %160
  %162 = lshr i64 %159, 39
  %163 = select i1 false, i64 0, i64 %162
  %164 = or i64 %161, %163
  %165 = and i64 %164, 72057594037927935
  %166 = or i64 %165, -6557241057451442176
  store i64 %166, ptr %10, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %11, i64 %166)
  call void @runtime.ClobberPointerRegs()
  %167 = icmp eq ptr %10, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %167)
  %168 = load i64, ptr %10, align 4
  %169 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  call void @runtime.LoadHiddenPointee(ptr %169, i64 %168, i64 16)
  %170 = icmp eq ptr %169, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %170)
  %171 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %169, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %169, align 8
  %172 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %171, ptr %172, align 8
  %173 = icmp eq ptr %172, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %173)
  %174 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %172, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %174, ptr %13, align 8
  %175 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %174, 0
  %176 = ptrtoint ptr %175 to i64
  %177 = and i64 %176, 72057594037927935
  %178 = xor i64 %177, 25399393228665167
  %179 = shl i64 %178, 17
  %180 = select i1 false, i64 0, i64 %179
  %181 = lshr i64 %178, 39
  %182 = select i1 false, i64 0, i64 %181
  %183 = or i64 %180, %182
  %184 = and i64 %183, 72057594037927935
  %185 = or i64 %184, -6557241057451442176
  %186 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %174, 1
  %187 = insertvalue { i64, i64 } undef, i64 %185, 0
  %188 = insertvalue { i64, i64 } %187, i64 %186, 1
  store { i64, i64 } %188, ptr %12, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %172, align 8
  call void @runtime.TouchConservativeSlot(ptr %172, i64 16)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %10, align 4
  call void @runtime.TouchConservativeSlot(ptr %10, i64 8)
  store ptr null, ptr %11, align 8
  call void @runtime.TouchConservativeSlot(ptr %11, i64 8)
  call void @runtime.ClobberPointerRegs()
  %189 = icmp eq ptr %154, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %189)
  %190 = getelementptr inbounds %"unique.uniqueEntry[string]", ptr %154, i32 0, i32 1
  %191 = icmp eq ptr %190, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %191)
  %192 = load %"weak.Pointer[string]", ptr %190, align 8
  store %"unique.uniqueEntry[string]" zeroinitializer, ptr %154, align 8
  call void @runtime.TouchConservativeSlot(ptr %154, i64 24)
  call void @runtime.ClobberPointerRegs()
  %193 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %194 = icmp eq ptr %13, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %194)
  %195 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %13, align 8
  store { i64, i64 } zeroinitializer, ptr %12, align 4
  call void @runtime.TouchConservativeSlot(ptr %12, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %13, align 8
  call void @runtime.TouchConservativeSlot(ptr %13, i64 16)
  call void @runtime.ClobberPointerRegs()
  %196 = extractvalue { ptr, ptr } %1, 1
  %197 = extractvalue { ptr, ptr } %1, 0
  %198 = call i1 %197(ptr %196, %"github.com/goplus/llgo/runtime/internal/runtime.String" %195, %"weak.Pointer[string]" %192)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %193)
  br i1 %198, label %_llgo_4, label %_llgo_7

_llgo_6:                                          ; preds = %_llgo_4
  ret void

_llgo_7:                                          ; preds = %_llgo_5
  store %"unique.uniqueEntry[string]" zeroinitializer, ptr %154, align 8
  call void @runtime.TouchConservativeSlot(ptr %154, i64 24)
  call void @runtime.ClobberPointerRegs()
  ret void

_llgo_8:                                          ; preds = %_llgo_1
  %199 = extractvalue { i1, ptr, ptr } %62, 1
  %200 = extractvalue { i1, ptr, ptr } %62, 2
  %201 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %199, align 8
  %202 = load %"weak.Pointer[string]", ptr %200, align 8
  %203 = extractvalue %"weak.Pointer[string]" %202, 0
  %204 = insertvalue %"weak.Pointer[string]" undef, [0 x ptr] %203, 0
  %205 = extractvalue %"weak.Pointer[string]" %202, 1
  %206 = insertvalue %"weak.Pointer[string]" %204, ptr %205, 1
  %207 = insertvalue { i1, %"github.com/goplus/llgo/runtime/internal/runtime.String", %"weak.Pointer[string]" } { i1 true, %"github.com/goplus/llgo/runtime/internal/runtime.String" undef, %"weak.Pointer[string]" undef }, %"github.com/goplus/llgo/runtime/internal/runtime.String" %201, 1
  %208 = insertvalue { i1, %"github.com/goplus/llgo/runtime/internal/runtime.String", %"weak.Pointer[string]" } %207, %"weak.Pointer[string]" %206, 2
  br label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_1
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_8
  %209 = phi { i1, %"github.com/goplus/llgo/runtime/internal/runtime.String", %"weak.Pointer[string]" } [ %208, %_llgo_8 ], [ zeroinitializer, %_llgo_9 ]
  %210 = extractvalue { i1, %"github.com/goplus/llgo/runtime/internal/runtime.String", %"weak.Pointer[string]" } %209, 0
  br i1 %210, label %_llgo_2, label %_llgo_3
}

define linkonce i1 @"unique.(*uniqueMap[string]).CompareAndDelete"(ptr %0, %"github.com/goplus/llgo/runtime/internal/runtime.String" %1, %"weak.Pointer[string]" %2) {
_llgo_0:
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  store ptr null, ptr %4, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  store ptr null, ptr %6, align 8
  %7 = alloca i1, align 1
  call void @llvm.memset(ptr %7, i8 0, i64 1, i1 false)
  %8 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %8)
  %9 = getelementptr inbounds %"unique.uniqueMap[string]", ptr %0, i32 0, i32 0
  %10 = ptrtoint ptr %9 to i64
  %11 = and i64 %10, 72057594037927935
  %12 = xor i64 %11, 25399393228665167
  %13 = shl i64 %12, 17
  %14 = select i1 false, i64 0, i64 %13
  %15 = lshr i64 %12, 39
  %16 = select i1 false, i64 0, i64 %15
  %17 = or i64 %14, %16
  %18 = and i64 %17, 72057594037927935
  %19 = or i64 %18, -6557241057451442176
  store i64 %19, ptr %3, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %4, i64 %19)
  call void @runtime.ClobberPointerRegs()
  %20 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %20)
  %21 = load i64, ptr %3, align 4
  %22 = and i64 %21, 72057594037927935
  %23 = lshr i64 %22, 17
  %24 = select i1 false, i64 0, i64 %23
  %25 = shl i64 %22, 39
  %26 = select i1 false, i64 0, i64 %25
  %27 = or i64 %24, %26
  %28 = and i64 %27, 72057594037927935
  %29 = xor i64 %28, 25399393228665167
  %30 = inttoptr i64 %29 to ptr
  store i64 0, ptr %3, align 4
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  store ptr null, ptr %4, align 8
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  call void @runtime.ClobberPointerRegs()
  call void @"sync.(*Mutex).Lock"(ptr %30)
  %31 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %31)
  %32 = getelementptr inbounds %"unique.uniqueMap[string]", ptr %0, i32 0, i32 0
  %33 = ptrtoint ptr %32 to i64
  %34 = and i64 %33, 72057594037927935
  %35 = xor i64 %34, 25399393228665167
  %36 = shl i64 %35, 17
  %37 = select i1 false, i64 0, i64 %36
  %38 = lshr i64 %35, 39
  %39 = select i1 false, i64 0, i64 %38
  %40 = or i64 %37, %39
  %41 = and i64 %40, 72057594037927935
  %42 = or i64 %41, -6557241057451442176
  store i64 %42, ptr %5, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %6, i64 %42)
  call void @runtime.ClobberPointerRegs()
  %43 = icmp eq ptr %5, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %43)
  %44 = load i64, ptr %5, align 4
  %45 = and i64 %44, 72057594037927935
  %46 = lshr i64 %45, 17
  %47 = select i1 false, i64 0, i64 %46
  %48 = shl i64 %45, 39
  %49 = select i1 false, i64 0, i64 %48
  %50 = or i64 %47, %49
  %51 = and i64 %50, 72057594037927935
  %52 = xor i64 %51, 25399393228665167
  %53 = inttoptr i64 %52 to ptr
  store i64 0, ptr %5, align 4
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  store ptr null, ptr %6, align 8
  call void @runtime.TouchConservativeSlot(ptr %6, i64 8)
  call void @runtime.ClobberPointerRegs()
  %54 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.GetThreadDefer"()
  %55 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.SigjmpBuf", align 8
  %56 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 56)
  %57 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %56, i32 0, i32 0
  store ptr %55, ptr %57, align 8
  %58 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %56, i32 0, i32 1
  store i64 0, ptr %58, align 4
  %59 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %56, i32 0, i32 2
  store ptr %54, ptr %59, align 8
  %60 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %56, i32 0, i32 3
  store i64 0, ptr %60, align 4
  %61 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %56, i32 0, i32 4
  store ptr blockaddress(@"unique.(*uniqueMap[string]).CompareAndDelete", %_llgo_5), ptr %61, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetThreadDefer"(ptr %56)
  %62 = icmp eq ptr %56, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %62)
  %63 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %56, i32 0, i32 1
  %64 = icmp eq ptr %56, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %64)
  %65 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %56, i32 0, i32 4
  %66 = icmp eq ptr %56, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %66)
  %67 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %56, i32 0, i32 5
  %68 = icmp eq ptr %56, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %68)
  %69 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %56, i32 0, i32 6
  store ptr null, ptr %69, align 8
  %70 = call i32 @sigsetjmp(ptr %55, i32 0)
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %_llgo_7, label %_llgo_8

_llgo_1:                                          ; preds = %_llgo_6
  %72 = icmp eq ptr %7, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %72)
  %73 = load i1, ptr %7, align 1
  store i1 false, ptr %7, align 1
  call void @runtime.ClobberPointerRegs()
  store i1 false, ptr %7, align 1
  ret i1 %73

_llgo_2:                                          ; preds = %_llgo_4, %_llgo_10
  store i1 false, ptr %7, align 1
  store ptr blockaddress(@"unique.(*uniqueMap[string]).CompareAndDelete", %_llgo_11), ptr %67, align 8
  br label %_llgo_5

_llgo_3:                                          ; preds = %_llgo_4
  %74 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %74)
  %75 = getelementptr inbounds %"unique.uniqueMap[string]", ptr %0, i32 0, i32 1
  %76 = icmp eq ptr %75, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %76)
  %77 = load ptr, ptr %75, align 8
  %78 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %1, ptr %78, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.MapDelete"(ptr @"map[_llgo_string]_llgo_weak.Pointer[string]", ptr %77, ptr %78)
  call void @llvm.memset(ptr %78, i8 0, i64 16, i1 false)
  call void @runtime.TouchConservativeSlot(ptr %78, i64 16)
  store i1 true, ptr %7, align 1
  store ptr blockaddress(@"unique.(*uniqueMap[string]).CompareAndDelete", %_llgo_12), ptr %67, align 8
  br label %_llgo_5

_llgo_4:                                          ; preds = %_llgo_10
  %79 = extractvalue { %"weak.Pointer[string]", i1 } %112, 0
  %80 = extractvalue %"weak.Pointer[string]" %79, 1
  %81 = extractvalue %"weak.Pointer[string]" %2, 1
  %82 = icmp eq ptr %80, %81
  %83 = and i1 true, %82
  %84 = xor i1 %83, true
  br i1 %84, label %_llgo_2, label %_llgo_3

_llgo_5:                                          ; preds = %_llgo_8, %_llgo_3, %_llgo_2
  store ptr blockaddress(@"unique.(*uniqueMap[string]).CompareAndDelete", %_llgo_6), ptr %65, align 8
  %85 = icmp eq ptr %63, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %85)
  %86 = load i64, ptr %63, align 4
  %87 = icmp eq ptr %69, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %87)
  %88 = load ptr, ptr %69, align 8
  %89 = icmp ne ptr %88, null
  br i1 %89, label %_llgo_13, label %_llgo_14

_llgo_6:                                          ; preds = %_llgo_8, %_llgo_14
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Rethrow"(ptr %56)
  br label %_llgo_1

_llgo_7:                                          ; preds = %_llgo_0
  %90 = icmp eq ptr %69, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %90)
  %91 = load ptr, ptr %69, align 8
  %92 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %93 = getelementptr inbounds { ptr, i64, ptr }, ptr %92, i32 0, i32 0
  store ptr %91, ptr %93, align 8
  %94 = getelementptr inbounds { ptr, i64, ptr }, ptr %92, i32 0, i32 1
  store i64 0, ptr %94, align 4
  %95 = getelementptr inbounds { ptr, i64, ptr }, ptr %92, i32 0, i32 2
  store ptr %53, ptr %95, align 8
  store ptr %92, ptr %69, align 8
  call void @runtime.ClobberPointerRegs()
  %96 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %96)
  %97 = getelementptr inbounds %"unique.uniqueMap[string]", ptr %0, i32 0, i32 1
  %98 = icmp eq ptr %97, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %98)
  %99 = load ptr, ptr %97, align 8
  %100 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %1, ptr %100, align 8
  %101 = call { ptr, i1 } @"github.com/goplus/llgo/runtime/internal/runtime.MapAccess2"(ptr @"map[_llgo_string]_llgo_weak.Pointer[string]", ptr %99, ptr %100)
  %102 = extractvalue { ptr, i1 } %101, 1
  call void @llvm.memset(ptr %100, i8 0, i64 16, i1 false)
  call void @runtime.TouchConservativeSlot(ptr %100, i64 16)
  %103 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store %"weak.Pointer[string]" zeroinitializer, ptr %103, align 8
  br i1 %102, label %_llgo_9, label %_llgo_10

_llgo_8:                                          ; preds = %_llgo_0
  store ptr blockaddress(@"unique.(*uniqueMap[string]).CompareAndDelete", %_llgo_6), ptr %67, align 8
  %104 = icmp eq ptr %65, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %104)
  %105 = load ptr, ptr %65, align 8
  indirectbr ptr %105, [label %_llgo_6, label %_llgo_5]

_llgo_9:                                          ; preds = %_llgo_7
  %106 = extractvalue { ptr, i1 } %101, 0
  %107 = icmp eq ptr %106, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %107)
  %108 = load %"weak.Pointer[string]", ptr %106, align 8
  store %"weak.Pointer[string]" %108, ptr %103, align 8
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_7
  %109 = icmp eq ptr %103, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %109)
  %110 = load %"weak.Pointer[string]", ptr %103, align 8
  %111 = insertvalue { %"weak.Pointer[string]", i1 } undef, %"weak.Pointer[string]" %110, 0
  %112 = insertvalue { %"weak.Pointer[string]", i1 } %111, i1 %102, 1
  %113 = extractvalue { %"weak.Pointer[string]", i1 } %112, 1
  br i1 %113, label %_llgo_4, label %_llgo_2

_llgo_11:                                         ; preds = %_llgo_14
  %114 = icmp eq ptr %7, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %114)
  %115 = load i1, ptr %7, align 1
  store i1 false, ptr %7, align 1
  ret i1 %115

_llgo_12:                                         ; preds = %_llgo_14
  %116 = icmp eq ptr %7, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %116)
  %117 = load i1, ptr %7, align 1
  store i1 false, ptr %7, align 1
  ret i1 %117

_llgo_13:                                         ; preds = %_llgo_5
  %118 = icmp eq ptr %69, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %118)
  %119 = load ptr, ptr %69, align 8
  %120 = icmp eq ptr %119, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %120)
  %121 = load { ptr, i64, ptr }, ptr %119, align 8
  %122 = extractvalue { ptr, i64, ptr } %121, 0
  store ptr %122, ptr %69, align 8
  %123 = extractvalue { ptr, i64, ptr } %121, 2
  %124 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr @"sync.(*Mutex).Unlock")
  call void @"sync.(*Mutex).Unlock"(ptr %123)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %124)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.FreeDeferNode"(ptr %119)
  br label %_llgo_14

_llgo_14:                                         ; preds = %_llgo_13, %_llgo_5
  %125 = icmp eq ptr %56, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %125)
  %126 = load %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %56, align 8
  %127 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Defer" %126, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetThreadDefer"(ptr %127)
  %128 = icmp eq ptr %67, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %128)
  %129 = load ptr, ptr %67, align 8
  indirectbr ptr %129, [label %_llgo_6, label %_llgo_11, label %_llgo_12]
}

define linkonce { %"weak.Pointer[string]", i1 } @"unique.(*uniqueMap[string]).Load"(ptr %0, %"github.com/goplus/llgo/runtime/internal/runtime.String" %1) {
_llgo_0:
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  store ptr null, ptr %3, align 8
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  store ptr null, ptr %5, align 8
  %6 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %6)
  %7 = getelementptr inbounds %"unique.uniqueMap[string]", ptr %0, i32 0, i32 0
  %8 = ptrtoint ptr %7 to i64
  %9 = and i64 %8, 72057594037927935
  %10 = xor i64 %9, 25399393228665167
  %11 = shl i64 %10, 17
  %12 = select i1 false, i64 0, i64 %11
  %13 = lshr i64 %10, 39
  %14 = select i1 false, i64 0, i64 %13
  %15 = or i64 %12, %14
  %16 = and i64 %15, 72057594037927935
  %17 = or i64 %16, -6557241057451442176
  store i64 %17, ptr %2, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %3, i64 %17)
  call void @runtime.ClobberPointerRegs()
  %18 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %18)
  %19 = load i64, ptr %2, align 4
  %20 = and i64 %19, 72057594037927935
  %21 = lshr i64 %20, 17
  %22 = select i1 false, i64 0, i64 %21
  %23 = shl i64 %20, 39
  %24 = select i1 false, i64 0, i64 %23
  %25 = or i64 %22, %24
  %26 = and i64 %25, 72057594037927935
  %27 = xor i64 %26, 25399393228665167
  %28 = inttoptr i64 %27 to ptr
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  call void @runtime.ClobberPointerRegs()
  call void @"sync.(*Mutex).Lock"(ptr %28)
  %29 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %29)
  %30 = getelementptr inbounds %"unique.uniqueMap[string]", ptr %0, i32 0, i32 1
  %31 = icmp eq ptr %30, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %31)
  %32 = load ptr, ptr %30, align 8
  %33 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %1, ptr %33, align 8
  %34 = call { ptr, i1 } @"github.com/goplus/llgo/runtime/internal/runtime.MapAccess2"(ptr @"map[_llgo_string]_llgo_weak.Pointer[string]", ptr %32, ptr %33)
  %35 = extractvalue { ptr, i1 } %34, 1
  call void @llvm.memset(ptr %33, i8 0, i64 16, i1 false)
  call void @runtime.TouchConservativeSlot(ptr %33, i64 16)
  %36 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store %"weak.Pointer[string]" zeroinitializer, ptr %36, align 8
  br i1 %35, label %_llgo_3, label %_llgo_4

_llgo_1:                                          ; preds = %_llgo_4
  ret { %"weak.Pointer[string]", i1 } zeroinitializer

_llgo_2:                                          ; preds = %_llgo_4
  %37 = extractvalue { %"weak.Pointer[string]", i1 } %46, 0
  %38 = insertvalue { %"weak.Pointer[string]", i1 } undef, %"weak.Pointer[string]" %37, 0
  %39 = insertvalue { %"weak.Pointer[string]", i1 } %38, i1 true, 1
  ret { %"weak.Pointer[string]", i1 } %39

_llgo_3:                                          ; preds = %_llgo_0
  %40 = extractvalue { ptr, i1 } %34, 0
  %41 = icmp eq ptr %40, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %41)
  %42 = load %"weak.Pointer[string]", ptr %40, align 8
  store %"weak.Pointer[string]" %42, ptr %36, align 8
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_0
  %43 = icmp eq ptr %36, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %43)
  %44 = load %"weak.Pointer[string]", ptr %36, align 8
  %45 = insertvalue { %"weak.Pointer[string]", i1 } undef, %"weak.Pointer[string]" %44, 0
  %46 = insertvalue { %"weak.Pointer[string]", i1 } %45, i1 %35, 1
  %47 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %47)
  %48 = getelementptr inbounds %"unique.uniqueMap[string]", ptr %0, i32 0, i32 0
  %49 = ptrtoint ptr %48 to i64
  %50 = and i64 %49, 72057594037927935
  %51 = xor i64 %50, 25399393228665167
  %52 = shl i64 %51, 17
  %53 = select i1 false, i64 0, i64 %52
  %54 = lshr i64 %51, 39
  %55 = select i1 false, i64 0, i64 %54
  %56 = or i64 %53, %55
  %57 = and i64 %56, 72057594037927935
  %58 = or i64 %57, -6557241057451442176
  store i64 %58, ptr %4, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %5, i64 %58)
  call void @runtime.ClobberPointerRegs()
  %59 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %59)
  %60 = load i64, ptr %4, align 4
  %61 = and i64 %60, 72057594037927935
  %62 = lshr i64 %61, 17
  %63 = select i1 false, i64 0, i64 %62
  %64 = shl i64 %61, 39
  %65 = select i1 false, i64 0, i64 %64
  %66 = or i64 %63, %65
  %67 = and i64 %66, 72057594037927935
  %68 = xor i64 %67, 25399393228665167
  %69 = inttoptr i64 %68 to ptr
  store i64 0, ptr %4, align 4
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  store ptr null, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  call void @runtime.ClobberPointerRegs()
  call void @"sync.(*Mutex).Unlock"(ptr %69)
  %70 = extractvalue { %"weak.Pointer[string]", i1 } %46, 1
  br i1 %70, label %_llgo_2, label %_llgo_1
}

define linkonce { %"weak.Pointer[string]", i1 } @"unique.(*uniqueMap[string]).LoadOrStore"(ptr %0, %"github.com/goplus/llgo/runtime/internal/runtime.String" %1, %"weak.Pointer[string]" %2) {
_llgo_0:
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  store ptr null, ptr %4, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  store ptr null, ptr %6, align 8
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  store ptr null, ptr %8, align 8
  %9 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %9)
  %10 = getelementptr inbounds %"unique.uniqueMap[string]", ptr %0, i32 0, i32 0
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
  store i64 %20, ptr %3, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %4, i64 %20)
  call void @runtime.ClobberPointerRegs()
  %21 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %21)
  %22 = load i64, ptr %3, align 4
  %23 = and i64 %22, 72057594037927935
  %24 = lshr i64 %23, 17
  %25 = select i1 false, i64 0, i64 %24
  %26 = shl i64 %23, 39
  %27 = select i1 false, i64 0, i64 %26
  %28 = or i64 %25, %27
  %29 = and i64 %28, 72057594037927935
  %30 = xor i64 %29, 25399393228665167
  %31 = inttoptr i64 %30 to ptr
  store i64 0, ptr %3, align 4
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  store ptr null, ptr %4, align 8
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  call void @runtime.ClobberPointerRegs()
  call void @"sync.(*Mutex).Lock"(ptr %31)
  %32 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %32)
  %33 = getelementptr inbounds %"unique.uniqueMap[string]", ptr %0, i32 0, i32 1
  %34 = icmp eq ptr %33, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %34)
  %35 = load ptr, ptr %33, align 8
  %36 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %1, ptr %36, align 8
  %37 = call { ptr, i1 } @"github.com/goplus/llgo/runtime/internal/runtime.MapAccess2"(ptr @"map[_llgo_string]_llgo_weak.Pointer[string]", ptr %35, ptr %36)
  %38 = extractvalue { ptr, i1 } %37, 1
  call void @llvm.memset(ptr %36, i8 0, i64 16, i1 false)
  call void @runtime.TouchConservativeSlot(ptr %36, i64 16)
  %39 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store %"weak.Pointer[string]" zeroinitializer, ptr %39, align 8
  br i1 %38, label %_llgo_3, label %_llgo_4

_llgo_1:                                          ; preds = %_llgo_4
  %40 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %40)
  %41 = getelementptr inbounds %"unique.uniqueMap[string]", ptr %0, i32 0, i32 0
  %42 = ptrtoint ptr %41 to i64
  %43 = and i64 %42, 72057594037927935
  %44 = xor i64 %43, 25399393228665167
  %45 = shl i64 %44, 17
  %46 = select i1 false, i64 0, i64 %45
  %47 = lshr i64 %44, 39
  %48 = select i1 false, i64 0, i64 %47
  %49 = or i64 %46, %48
  %50 = and i64 %49, 72057594037927935
  %51 = or i64 %50, -6557241057451442176
  store i64 %51, ptr %5, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %6, i64 %51)
  call void @runtime.ClobberPointerRegs()
  %52 = icmp eq ptr %5, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %52)
  %53 = load i64, ptr %5, align 4
  %54 = and i64 %53, 72057594037927935
  %55 = lshr i64 %54, 17
  %56 = select i1 false, i64 0, i64 %55
  %57 = shl i64 %54, 39
  %58 = select i1 false, i64 0, i64 %57
  %59 = or i64 %56, %58
  %60 = and i64 %59, 72057594037927935
  %61 = xor i64 %60, 25399393228665167
  %62 = inttoptr i64 %61 to ptr
  store i64 0, ptr %5, align 4
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  store ptr null, ptr %6, align 8
  call void @runtime.TouchConservativeSlot(ptr %6, i64 8)
  call void @runtime.ClobberPointerRegs()
  call void @"sync.(*Mutex).Unlock"(ptr %62)
  %63 = extractvalue { %"weak.Pointer[string]", i1 } %103, 0
  %64 = insertvalue { %"weak.Pointer[string]", i1 } undef, %"weak.Pointer[string]" %63, 0
  %65 = insertvalue { %"weak.Pointer[string]", i1 } %64, i1 true, 1
  ret { %"weak.Pointer[string]", i1 } %65

_llgo_2:                                          ; preds = %_llgo_4
  %66 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %66)
  %67 = getelementptr inbounds %"unique.uniqueMap[string]", ptr %0, i32 0, i32 1
  %68 = icmp eq ptr %67, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %68)
  %69 = load ptr, ptr %67, align 8
  %70 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %1, ptr %70, align 8
  %71 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr @"map[_llgo_string]_llgo_weak.Pointer[string]", ptr %69, ptr %70)
  store %"weak.Pointer[string]" %2, ptr %71, align 8
  call void @llvm.memset(ptr %70, i8 0, i64 16, i1 false)
  call void @runtime.TouchConservativeSlot(ptr %70, i64 16)
  %72 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %72)
  %73 = getelementptr inbounds %"unique.uniqueMap[string]", ptr %0, i32 0, i32 0
  %74 = ptrtoint ptr %73 to i64
  %75 = and i64 %74, 72057594037927935
  %76 = xor i64 %75, 25399393228665167
  %77 = shl i64 %76, 17
  %78 = select i1 false, i64 0, i64 %77
  %79 = lshr i64 %76, 39
  %80 = select i1 false, i64 0, i64 %79
  %81 = or i64 %78, %80
  %82 = and i64 %81, 72057594037927935
  %83 = or i64 %82, -6557241057451442176
  store i64 %83, ptr %7, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %8, i64 %83)
  call void @runtime.ClobberPointerRegs()
  %84 = icmp eq ptr %7, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %84)
  %85 = load i64, ptr %7, align 4
  %86 = and i64 %85, 72057594037927935
  %87 = lshr i64 %86, 17
  %88 = select i1 false, i64 0, i64 %87
  %89 = shl i64 %86, 39
  %90 = select i1 false, i64 0, i64 %89
  %91 = or i64 %88, %90
  %92 = and i64 %91, 72057594037927935
  %93 = xor i64 %92, 25399393228665167
  %94 = inttoptr i64 %93 to ptr
  store i64 0, ptr %7, align 4
  call void @runtime.TouchConservativeSlot(ptr %7, i64 8)
  store ptr null, ptr %8, align 8
  call void @runtime.TouchConservativeSlot(ptr %8, i64 8)
  call void @runtime.ClobberPointerRegs()
  call void @"sync.(*Mutex).Unlock"(ptr %94)
  %95 = insertvalue { %"weak.Pointer[string]", i1 } undef, %"weak.Pointer[string]" %2, 0
  %96 = insertvalue { %"weak.Pointer[string]", i1 } %95, i1 false, 1
  ret { %"weak.Pointer[string]", i1 } %96

_llgo_3:                                          ; preds = %_llgo_0
  %97 = extractvalue { ptr, i1 } %37, 0
  %98 = icmp eq ptr %97, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %98)
  %99 = load %"weak.Pointer[string]", ptr %97, align 8
  store %"weak.Pointer[string]" %99, ptr %39, align 8
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_0
  %100 = icmp eq ptr %39, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %100)
  %101 = load %"weak.Pointer[string]", ptr %39, align 8
  %102 = insertvalue { %"weak.Pointer[string]", i1 } undef, %"weak.Pointer[string]" %101, 0
  %103 = insertvalue { %"weak.Pointer[string]", i1 } %102, i1 %38, 1
  %104 = extractvalue { %"weak.Pointer[string]", i1 } %103, 1
  br i1 %104, label %_llgo_1, label %_llgo_2
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr")
  %4 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %1, ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %3)
  ret i1 %4
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.structequal"(ptr, ptr, ptr)

declare void @"sync.(*Mutex).Lock"(ptr)

declare i1 @"sync.(*Mutex).TryLock"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal8"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal8"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequal8")
  %4 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal8"(ptr %1, ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %3)
  ret i1 %4
}

declare void @"sync.(*Mutex).Unlock"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal0"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal0"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequal0")
  %4 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal0"(ptr %1, ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %3)
  ret i1 %4
}

declare void @"sync.(*noCopy).Lock"(ptr)

declare void @"sync.(*noCopy).Unlock"(ptr)

declare void @"internal/sync.(*Mutex).Lock"(ptr)

declare i1 @"internal/sync.(*Mutex).TryLock"(ptr)

declare void @"internal/sync.(*Mutex).Unlock"(ptr)

declare void @"internal/sync.(*Mutex).lockSlow"(ptr)

declare void @"internal/sync.(*Mutex).unlockSlow"(ptr, i32)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal32"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal32"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequal32")
  %4 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal32"(ptr %1, ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %3)
  ret i1 %4
}

declare i64 @"github.com/goplus/llgo/runtime/internal/runtime.typehash"(ptr, ptr, i64)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/runtime/internal/runtime.strequal")
  %4 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr %1, ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %3)
  ret i1 %4
}

define linkonce ptr @"weak.Pointer[string].Value"(%"weak.Pointer[string]" %0) {
_llgo_0:
  %1 = alloca i64, align 8
  %2 = alloca ptr, align 8
  store ptr null, ptr %2, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  store ptr null, ptr %5, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = alloca ptr, align 8
  store ptr null, ptr %9, align 8
  %10 = alloca %"weak.Pointer[string]", align 8
  call void @llvm.memset(ptr %10, i8 0, i64 8, i1 false)
  store %"weak.Pointer[string]" %0, ptr %10, align 8
  call void @runtime.ClobberPointerRegs()
  %11 = icmp eq ptr %10, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %11)
  %12 = getelementptr inbounds %"weak.Pointer[string]", ptr %10, i32 0, i32 1
  %13 = ptrtoint ptr %12 to i64
  %14 = and i64 %13, 72057594037927935
  %15 = xor i64 %14, 25399393228665167
  %16 = shl i64 %15, 17
  %17 = select i1 false, i64 0, i64 %16
  %18 = lshr i64 %15, 39
  %19 = select i1 false, i64 0, i64 %18
  %20 = or i64 %17, %19
  %21 = and i64 %20, 72057594037927935
  %22 = or i64 %21, -6557241057451442176
  store i64 %22, ptr %1, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %2, i64 %22)
  call void @runtime.ClobberPointerRegs()
  %23 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %23)
  %24 = load i64, ptr %1, align 4
  %25 = alloca ptr, align 8
  call void @runtime.LoadHiddenPointee(ptr %25, i64 %24, i64 8)
  %26 = icmp eq ptr %25, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %26)
  %27 = load ptr, ptr %25, align 8
  store ptr null, ptr %25, align 8
  store ptr %27, ptr %3, align 8
  store i64 0, ptr %1, align 4
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  store ptr null, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  call void @runtime.ClobberPointerRegs()
  %28 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %28)
  %29 = load ptr, ptr %3, align 8
  %30 = icmp eq ptr %29, null
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  call void @runtime.ClobberPointerRegs()
  br i1 %30, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  store %"weak.Pointer[string]" zeroinitializer, ptr %10, align 8
  call void @runtime.TouchConservativeSlot(ptr %10, i64 8)
  call void @runtime.ClobberPointerRegs()
  ret ptr null

_llgo_2:                                          ; preds = %_llgo_0
  %31 = icmp eq ptr %10, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %31)
  %32 = getelementptr inbounds %"weak.Pointer[string]", ptr %10, i32 0, i32 1
  %33 = ptrtoint ptr %32 to i64
  %34 = and i64 %33, 72057594037927935
  %35 = xor i64 %34, 25399393228665167
  %36 = shl i64 %35, 17
  %37 = select i1 false, i64 0, i64 %36
  %38 = lshr i64 %35, 39
  %39 = select i1 false, i64 0, i64 %38
  %40 = or i64 %37, %39
  %41 = and i64 %40, 72057594037927935
  %42 = or i64 %41, -6557241057451442176
  store i64 %42, ptr %4, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %5, i64 %42)
  call void @runtime.ClobberPointerRegs()
  %43 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %43)
  %44 = load i64, ptr %4, align 4
  %45 = alloca ptr, align 8
  call void @runtime.LoadHiddenPointee(ptr %45, i64 %44, i64 8)
  %46 = icmp eq ptr %45, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %46)
  %47 = load ptr, ptr %45, align 8
  store ptr null, ptr %45, align 8
  store ptr %47, ptr %6, align 8
  store %"weak.Pointer[string]" zeroinitializer, ptr %10, align 8
  call void @runtime.TouchConservativeSlot(ptr %10, i64 8)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %4, align 4
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  store ptr null, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  call void @runtime.ClobberPointerRegs()
  %48 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %48)
  %49 = load ptr, ptr %6, align 8
  store ptr null, ptr %6, align 8
  call void @runtime.TouchConservativeSlot(ptr %6, i64 8)
  call void @runtime.ClobberPointerRegs()
  %50 = call ptr @weak.runtime_makeStrongFromWeak(ptr %49)
  store ptr %50, ptr %7, align 8
  %51 = icmp eq ptr %7, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %51)
  %52 = load ptr, ptr %7, align 8
  %53 = ptrtoint ptr %52 to i64
  %54 = and i64 %53, 72057594037927935
  %55 = xor i64 %54, 25399393228665167
  %56 = shl i64 %55, 17
  %57 = select i1 false, i64 0, i64 %56
  %58 = lshr i64 %55, 39
  %59 = select i1 false, i64 0, i64 %58
  %60 = or i64 %57, %59
  %61 = and i64 %60, 72057594037927935
  %62 = or i64 %61, -6557241057451442176
  store i64 %62, ptr %8, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %9, i64 %62)
  call void @runtime.ClobberPointerRegs()
  %63 = icmp eq ptr %8, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %63)
  %64 = load i64, ptr %8, align 4
  %65 = and i64 %64, 72057594037927935
  %66 = lshr i64 %65, 17
  %67 = select i1 false, i64 0, i64 %66
  %68 = shl i64 %65, 39
  %69 = select i1 false, i64 0, i64 %68
  %70 = or i64 %67, %69
  %71 = and i64 %70, 72057594037927935
  %72 = xor i64 %71, 25399393228665167
  %73 = inttoptr i64 %72 to ptr
  store i64 0, ptr %8, align 4
  call void @runtime.TouchConservativeSlot(ptr %8, i64 8)
  store ptr null, ptr %9, align 8
  call void @runtime.TouchConservativeSlot(ptr %9, i64 8)
  store ptr null, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 8)
  store i64 0, ptr %8, align 4
  call void @runtime.TouchConservativeSlot(ptr %8, i64 8)
  store ptr null, ptr %9, align 8
  call void @runtime.TouchConservativeSlot(ptr %9, i64 8)
  call void @runtime.ClobberPointerRegs()
  ret ptr %73
}

define linkonce ptr @"weak.(*Pointer[string]).Value"(ptr %0) {
_llgo_0:
  %1 = alloca i64, align 8
  %2 = alloca ptr, align 8
  store ptr null, ptr %2, align 8
  %3 = icmp eq ptr %0, null
  br i1 %3, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %4 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.MakePanicWrapError"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 20 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 5 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %4)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  %5 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %5)
  %6 = load %"weak.Pointer[string]", ptr %0, align 8
  %7 = call ptr @"weak.Pointer[string].Value"(%"weak.Pointer[string]" %6)
  %8 = ptrtoint ptr %7 to i64
  %9 = and i64 %8, 72057594037927935
  %10 = xor i64 %9, 25399393228665167
  %11 = shl i64 %10, 17
  %12 = select i1 false, i64 0, i64 %11
  %13 = lshr i64 %10, 39
  %14 = select i1 false, i64 0, i64 %13
  %15 = or i64 %12, %14
  %16 = and i64 %15, 72057594037927935
  %17 = or i64 %16, -6557241057451442176
  store i64 %17, ptr %1, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %2, i64 %17)
  call void @runtime.ClobberPointerRegs()
  %18 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %18)
  %19 = load i64, ptr %1, align 4
  %20 = and i64 %19, 72057594037927935
  %21 = lshr i64 %20, 17
  %22 = select i1 false, i64 0, i64 %21
  %23 = shl i64 %20, 39
  %24 = select i1 false, i64 0, i64 %23
  %25 = or i64 %22, %24
  %26 = and i64 %25, 72057594037927935
  %27 = xor i64 %26, 25399393228665167
  %28 = inttoptr i64 %27 to ptr
  store i64 0, ptr %1, align 4
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  store ptr null, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store i64 0, ptr %1, align 4
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  store ptr null, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  call void @runtime.ClobberPointerRegs()
  ret ptr %28

_llgo_3:                                          ; No predecessors!
  unreachable
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.arrayequal"(ptr, ptr, ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal64"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequal64")
  %4 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal64"(ptr %1, ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %3)
  ret i1 %4
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.MakeTypeAssertionError"(%"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare void @runtime.LoadHiddenPointee(ptr, i64, i64)

declare i64 @runtime.LoadHiddenPointerKey(i64)

declare void @runtime.KeepAlive(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

declare void @runtime.KeepAlivePointer(ptr)

define linkonce %"github.com/goplus/llgo/runtime/internal/runtime.String" @"unique.clone[string]"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %0, ptr %1) {
_llgo_0:
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  store ptr null, ptr %3, align 8
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  store ptr null, ptr %5, align 8
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  store ptr null, ptr %7, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i64, align 8
  %11 = alloca ptr, align 8
  store ptr null, ptr %11, align 8
  %12 = alloca { i64, i64 }, align 8
  %13 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %13, align 8
  %14 = alloca { i64, i64 }, align 8
  %15 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %15, align 8
  %16 = alloca { i64, i64 }, align 8
  %17 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %17, align 8
  %18 = alloca ptr, align 8
  store ptr %1, ptr %18, align 8
  call void @runtime.ClobberPointerRegs()
  %19 = call i64 @runtime.AllocZHidden(i64 16)
  store i64 %19, ptr %2, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %3, i64 %19)
  %20 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %20)
  %21 = load i64, ptr %2, align 4
  %22 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %0, ptr %22, align 8
  call void @runtime.StoreHiddenPointee(i64 %21, ptr %22, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %22, align 8
  call void @runtime.TouchConservativeSlot(ptr %22, i64 16)
  %23 = icmp eq ptr %18, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %23)
  %24 = load ptr, ptr %18, align 8
  %25 = icmp eq ptr %24, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %25)
  %26 = getelementptr inbounds %unique.cloneSeq, ptr %24, i32 0, i32 0
  %27 = ptrtoint ptr %26 to i64
  %28 = and i64 %27, 72057594037927935
  %29 = xor i64 %28, 25399393228665167
  %30 = shl i64 %29, 17
  %31 = select i1 false, i64 0, i64 %30
  %32 = lshr i64 %29, 39
  %33 = select i1 false, i64 0, i64 %32
  %34 = or i64 %31, %33
  %35 = and i64 %34, 72057594037927935
  %36 = or i64 %35, -6557241057451442176
  store i64 %36, ptr %4, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %5, i64 %36)
  call void @runtime.ClobberPointerRegs()
  %37 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %37)
  %38 = load i64, ptr %4, align 4
  %39 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  call void @runtime.LoadHiddenPointee(ptr %39, i64 %38, i64 24)
  %40 = icmp eq ptr %39, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %40)
  %41 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %39, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %39, align 8
  store ptr null, ptr %18, align 8
  call void @runtime.TouchConservativeSlot(ptr %18, i64 8)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %4, align 4
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  store ptr null, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  call void @runtime.ClobberPointerRegs()
  %42 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %41, 1
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_2, %_llgo_0
  %43 = phi i64 [ -1, %_llgo_0 ], [ %44, %_llgo_2 ]
  %44 = add i64 %43, 1
  %45 = icmp slt i64 %44, %42
  br i1 %45, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  %46 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %41, 0
  %47 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %41, 1
  %48 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 %44, i64 %47)
  %49 = getelementptr inbounds i64, ptr %46, i64 %48
  %50 = ptrtoint ptr %49 to i64
  %51 = and i64 %50, 72057594037927935
  %52 = xor i64 %51, 25399393228665167
  %53 = shl i64 %52, 17
  %54 = select i1 false, i64 0, i64 %53
  %55 = lshr i64 %52, 39
  %56 = select i1 false, i64 0, i64 %55
  %57 = or i64 %54, %56
  %58 = and i64 %57, 72057594037927935
  %59 = or i64 %58, -6557241057451442176
  store i64 %59, ptr %6, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %7, i64 %59)
  call void @runtime.ClobberPointerRegs()
  %60 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %60)
  %61 = load i64, ptr %6, align 4
  %62 = alloca i64, align 8
  call void @runtime.LoadHiddenPointee(ptr %62, i64 %61, i64 8)
  %63 = icmp eq ptr %62, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %63)
  %64 = load i64, ptr %62, align 4
  store i64 0, ptr %62, align 4
  store i64 0, ptr %6, align 4
  call void @runtime.TouchConservativeSlot(ptr %6, i64 8)
  store ptr null, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 8)
  call void @runtime.ClobberPointerRegs()
  %65 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %65)
  %66 = load i64, ptr %2, align 4
  %67 = and i64 %66, 72057594037927935
  %68 = lshr i64 %67, 17
  %69 = select i1 false, i64 0, i64 %68
  %70 = shl i64 %67, 39
  %71 = select i1 false, i64 0, i64 %70
  %72 = or i64 %69, %71
  %73 = and i64 %72, 72057594037927935
  %74 = xor i64 %73, 25399393228665167
  %75 = inttoptr i64 %74 to ptr
  store ptr %75, ptr %8, align 8
  %76 = icmp eq ptr %8, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %76)
  %77 = load ptr, ptr %8, align 8
  %78 = ptrtoint ptr %77 to i64
  %79 = add i64 %78, %64
  store ptr null, ptr %8, align 8
  call void @runtime.TouchConservativeSlot(ptr %8, i64 8)
  call void @runtime.ClobberPointerRegs()
  %80 = inttoptr i64 %79 to ptr
  store ptr %80, ptr %9, align 8
  %81 = icmp eq ptr %9, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %81)
  %82 = load ptr, ptr %9, align 8
  %83 = ptrtoint ptr %82 to i64
  %84 = and i64 %83, 72057594037927935
  %85 = xor i64 %84, 25399393228665167
  %86 = shl i64 %85, 17
  %87 = select i1 false, i64 0, i64 %86
  %88 = lshr i64 %85, 39
  %89 = select i1 false, i64 0, i64 %88
  %90 = or i64 %87, %89
  %91 = and i64 %90, 72057594037927935
  %92 = or i64 %91, -6557241057451442176
  store i64 %92, ptr %10, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %11, i64 %92)
  call void @runtime.ClobberPointerRegs()
  %93 = icmp eq ptr %10, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %93)
  %94 = load i64, ptr %10, align 4
  %95 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  call void @runtime.LoadHiddenPointee(ptr %95, i64 %94, i64 16)
  %96 = icmp eq ptr %95, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %96)
  %97 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %95, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %95, align 8
  %98 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %97, ptr %98, align 8
  %99 = icmp eq ptr %98, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %99)
  %100 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %98, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %100, ptr %13, align 8
  %101 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %100, 0
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
  %112 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %100, 1
  %113 = insertvalue { i64, i64 } undef, i64 %111, 0
  %114 = insertvalue { i64, i64 } %113, i64 %112, 1
  store { i64, i64 } %114, ptr %12, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %98, align 8
  call void @runtime.TouchConservativeSlot(ptr %98, i64 16)
  call void @runtime.ClobberPointerRegs()
  %115 = icmp eq ptr %13, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %115)
  %116 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %13, align 8
  store { i64, i64 } zeroinitializer, ptr %12, align 4
  call void @runtime.TouchConservativeSlot(ptr %12, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %13, align 8
  call void @runtime.TouchConservativeSlot(ptr %13, i64 16)
  call void @runtime.ClobberPointerRegs()
  %117 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @unique.stringClone(%"github.com/goplus/llgo/runtime/internal/runtime.String" %116)
  %118 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %117, ptr %118, align 8
  %119 = icmp eq ptr %118, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %119)
  %120 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %118, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %120, ptr %15, align 8
  %121 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %120, 0
  %122 = ptrtoint ptr %121 to i64
  %123 = and i64 %122, 72057594037927935
  %124 = xor i64 %123, 25399393228665167
  %125 = shl i64 %124, 17
  %126 = select i1 false, i64 0, i64 %125
  %127 = lshr i64 %124, 39
  %128 = select i1 false, i64 0, i64 %127
  %129 = or i64 %126, %128
  %130 = and i64 %129, 72057594037927935
  %131 = or i64 %130, -6557241057451442176
  %132 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %120, 1
  %133 = insertvalue { i64, i64 } undef, i64 %131, 0
  %134 = insertvalue { i64, i64 } %133, i64 %132, 1
  store { i64, i64 } %134, ptr %14, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %118, align 8
  call void @runtime.TouchConservativeSlot(ptr %118, i64 16)
  call void @runtime.ClobberPointerRegs()
  %135 = icmp eq ptr %10, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %135)
  %136 = load i64, ptr %10, align 4
  %137 = icmp eq ptr %15, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %137)
  %138 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %15, align 8
  %139 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %138, ptr %139, align 8
  call void @runtime.StoreHiddenPointee(i64 %136, ptr %139, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %139, align 8
  call void @runtime.TouchConservativeSlot(ptr %139, i64 16)
  store ptr null, ptr %9, align 8
  call void @runtime.TouchConservativeSlot(ptr %9, i64 8)
  store i64 0, ptr %10, align 4
  call void @runtime.TouchConservativeSlot(ptr %10, i64 8)
  store ptr null, ptr %11, align 8
  call void @runtime.TouchConservativeSlot(ptr %11, i64 8)
  store { i64, i64 } zeroinitializer, ptr %14, align 4
  call void @runtime.TouchConservativeSlot(ptr %14, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %15, align 8
  call void @runtime.TouchConservativeSlot(ptr %15, i64 16)
  call void @runtime.ClobberPointerRegs()
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_1
  %140 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %140)
  %141 = load i64, ptr %2, align 4
  %142 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  call void @runtime.LoadHiddenPointee(ptr %142, i64 %141, i64 16)
  %143 = icmp eq ptr %142, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %143)
  %144 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %142, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %142, align 8
  %145 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %144, ptr %145, align 8
  %146 = icmp eq ptr %145, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %146)
  %147 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %145, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %147, ptr %17, align 8
  %148 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %147, 0
  %149 = ptrtoint ptr %148 to i64
  %150 = and i64 %149, 72057594037927935
  %151 = xor i64 %150, 25399393228665167
  %152 = shl i64 %151, 17
  %153 = select i1 false, i64 0, i64 %152
  %154 = lshr i64 %151, 39
  %155 = select i1 false, i64 0, i64 %154
  %156 = or i64 %153, %155
  %157 = and i64 %156, 72057594037927935
  %158 = or i64 %157, -6557241057451442176
  %159 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %147, 1
  %160 = insertvalue { i64, i64 } undef, i64 %158, 0
  %161 = insertvalue { i64, i64 } %160, i64 %159, 1
  store { i64, i64 } %161, ptr %16, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %145, align 8
  call void @runtime.TouchConservativeSlot(ptr %145, i64 16)
  call void @runtime.ClobberPointerRegs()
  %162 = icmp eq ptr %17, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %162)
  %163 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %17, align 8
  %164 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %164)
  %165 = load i64, ptr %2, align 4
  %166 = and i64 %165, 72057594037927935
  %167 = lshr i64 %166, 17
  %168 = select i1 false, i64 0, i64 %167
  %169 = shl i64 %166, 39
  %170 = select i1 false, i64 0, i64 %169
  %171 = or i64 %168, %170
  %172 = and i64 %171, 72057594037927935
  %173 = xor i64 %172, 25399393228665167
  %174 = inttoptr i64 %173 to ptr
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %174, align 8
  call void @runtime.TouchConservativeSlot(ptr %174, i64 16)
  store { i64, i64 } zeroinitializer, ptr %16, align 4
  call void @runtime.TouchConservativeSlot(ptr %16, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %17, align 8
  call void @runtime.TouchConservativeSlot(ptr %17, i64 16)
  call void @runtime.ClobberPointerRegs()
  ret %"github.com/goplus/llgo/runtime/internal/runtime.String" %163
}

define linkonce %"weak.Pointer[string]" @"weak.Make[string]"(ptr %0) {
_llgo_0:
  %1 = alloca ptr, align 8
  %2 = alloca ptr, align 8
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  store ptr null, ptr %4, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %6 = icmp eq ptr %5, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %6)
  %7 = load ptr, ptr %5, align 8
  %8 = call ptr @"internal/abi.Escape[*string]"(ptr %7)
  store ptr null, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %9 = icmp ne ptr %8, null
  br i1 %9, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  store ptr %8, ptr %1, align 8
  %10 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %10)
  %11 = load ptr, ptr %1, align 8
  store ptr null, ptr %1, align 8
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %12 = call ptr @weak.runtime_registerWeakPointer(ptr %11)
  store ptr %12, ptr %2, align 8
  %13 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %13)
  %14 = load ptr, ptr %2, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %15 = phi ptr [ null, %_llgo_0 ], [ %14, %_llgo_1 ]
  call void @runtime.KeepAlivePointer(ptr %8)
  %16 = alloca %"weak.Pointer[string]", align 8
  call void @llvm.memset(ptr %16, i8 0, i64 8, i1 false)
  %17 = icmp eq ptr %16, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %17)
  %18 = getelementptr inbounds %"weak.Pointer[string]", ptr %16, i32 0, i32 1
  %19 = ptrtoint ptr %18 to i64
  %20 = and i64 %19, 72057594037927935
  %21 = xor i64 %20, 25399393228665167
  %22 = shl i64 %21, 17
  %23 = select i1 false, i64 0, i64 %22
  %24 = lshr i64 %21, 39
  %25 = select i1 false, i64 0, i64 %24
  %26 = or i64 %23, %25
  %27 = and i64 %26, 72057594037927935
  %28 = or i64 %27, -6557241057451442176
  store i64 %28, ptr %3, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %4, i64 %28)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %29 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %29)
  %30 = load i64, ptr %3, align 4
  %31 = alloca ptr, align 8
  store ptr %15, ptr %31, align 8
  call void @runtime.StoreHiddenPointee(i64 %30, ptr %31, i64 8)
  store ptr null, ptr %31, align 8
  call void @runtime.TouchConservativeSlot(ptr %31, i64 8)
  store ptr null, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store i64 0, ptr %3, align 4
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  store ptr null, ptr %4, align 8
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %32 = icmp eq ptr %16, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %32)
  %33 = load %"weak.Pointer[string]", ptr %16, align 8
  store %"weak.Pointer[string]" zeroinitializer, ptr %16, align 8
  call void @runtime.TouchConservativeSlot(ptr %16, i64 8)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  store %"weak.Pointer[string]" zeroinitializer, ptr %16, align 8
  call void @runtime.TouchConservativeSlot(ptr %16, i64 8)
  ret %"weak.Pointer[string]" %33
}

declare ptr @"github.com/goplus/llgo/runtime/abi.TypeOf"(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

declare ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Elem"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.MakeMap"(ptr, i64)

declare %unique.cloneSeq @unique.makeCloneSeq(ptr)

declare { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 } @unique.loadOrStoreUniqueMap(ptr, %"github.com/goplus/llgo/runtime/internal/runtime.eface")

declare i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64, i64)

declare i64 @runtime.AdvanceHiddenPointer(i64, i64)

declare %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.SliceAppend"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr, i64, i64)

declare i64 @"github.com/goplus/llgo/runtime/internal/runtime.MapLen"(ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.MakeSlice"(i64, i64, i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewRangeMapIter"(ptr, ptr)

declare { i1, ptr, ptr } @"github.com/goplus/llgo/runtime/internal/runtime.RangeMapIterNext"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.GetThreadDefer"()

declare void @"github.com/goplus/llgo/runtime/internal/runtime.SetThreadDefer"(ptr)

; Function Attrs: returns_twice
declare i32 @sigsetjmp(ptr, i32) #1

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Rethrow"(ptr)

declare { ptr, i1 } @"github.com/goplus/llgo/runtime/internal/runtime.MapAccess2"(ptr, ptr, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.MapDelete"(ptr, ptr, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.FreeDeferNode"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr, ptr, ptr)

declare ptr @weak.runtime_makeStrongFromWeak(ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.MakePanicWrapError"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.String")

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @unique.stringClone(%"github.com/goplus/llgo/runtime/internal/runtime.String")

define linkonce ptr @"internal/abi.Escape[*string]"(ptr %0) {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  %1 = load i1, ptr @"internal/abi.alwaysFalse", align 1
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"*_llgo_string", ptr undef }, ptr %0, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %2, ptr @"internal/abi.escapeSink", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret ptr %0
}

declare ptr @weak.runtime_registerWeakPointer(ptr)

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #1 = { returns_twice }
