; ModuleID = 'main'
source_filename = "main"

%"github.com/goplus/llgo/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/internal/runtime.iface" = type { ptr, ptr }

@"main.init$guard" = global i1 false, align 1
@_cgo_fc2717469476_Cfunc_cos = external global i8, align 1
@_cgo_fc2717469476_Cfunc_free = external global i8, align 1
@_cgo_fc2717469476_Cfunc_log = external global i8, align 1
@_cgo_fc2717469476_Cfunc_puts = external global i8, align 1
@_cgo_fc2717469476_Cfunc_sin = external global i8, align 1
@_cgo_fc2717469476_Cfunc_sqrt = external global i8, align 1
@_cgo_fc2717469476_Cfunc__Cmalloc = external global i8, align 1
@__llgo_argc = global i32 0, align 4
@__llgo_argv = global ptr null, align 8
@0 = private unnamed_addr constant [13 x i8] c"Hello, World!", align 1
@1 = private unnamed_addr constant [29 x i8] c"Converted back to Go string: ", align 1
@2 = private unnamed_addr constant [23 x i8] c"Length-limited string: ", align 1
@3 = private unnamed_addr constant [33 x i8] c"Converted back to Go byte slice: ", align 1
@_llgo_float64 = linkonce global ptr null, align 8
@4 = private unnamed_addr constant [14 x i8] c"sqrt(%v) = %v\0A", align 1
@5 = private unnamed_addr constant [13 x i8] c"sin(%v) = %v\0A", align 1
@6 = private unnamed_addr constant [13 x i8] c"cos(%v) = %v\0A", align 1
@7 = private unnamed_addr constant [13 x i8] c"log(%v) = %v\0A", align 1
@_llgo_byte = linkonce global ptr null, align 8
@"[]_llgo_byte" = linkonce global ptr null, align 8
@_llgo_Pointer = linkonce global ptr null, align 8

define void @main.init() {
_llgo_0:
  %0 = load i1, ptr @"main.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"main.init$guard", align 1
  call void @syscall.init()
  call void @fmt.init()
  call void @"main.init$after"()
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define i32 @main(i32 %0, ptr %1) {
_llgo_0:
  store i32 %0, ptr @__llgo_argc, align 4
  store ptr %1, ptr @__llgo_argv, align 8
  call void @"github.com/goplus/llgo/internal/runtime.init"()
  call void @main.init()
  %2 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 8)
  %3 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %4 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3, i32 0, i32 0
  store ptr @0, ptr %4, align 8
  %5 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3, i32 0, i32 1
  store i64 13, ptr %5, align 4
  %6 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3, align 8
  %7 = call ptr @"github.com/goplus/llgo/internal/runtime.CString"(%"github.com/goplus/llgo/internal/runtime.String" %6)
  store ptr %7, ptr %2, align 8
  %8 = load ptr, ptr %2, align 8
  %9 = call i32 @puts(ptr %8)
  %10 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 24)
  %11 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 4)
  %12 = getelementptr inbounds i8, ptr %11, i64 0
  store i8 65, ptr %12, align 1
  %13 = getelementptr inbounds i8, ptr %11, i64 1
  store i8 66, ptr %13, align 1
  %14 = getelementptr inbounds i8, ptr %11, i64 2
  store i8 67, ptr %14, align 1
  %15 = getelementptr inbounds i8, ptr %11, i64 3
  store i8 68, ptr %15, align 1
  %16 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %17 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %16, i32 0, i32 0
  store ptr %11, ptr %17, align 8
  %18 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %16, i32 0, i32 1
  store i64 4, ptr %18, align 4
  %19 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %16, i32 0, i32 2
  store i64 4, ptr %19, align 4
  %20 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %16, align 8
  store %"github.com/goplus/llgo/internal/runtime.Slice" %20, ptr %10, align 8
  %21 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 8)
  %22 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %23 = getelementptr inbounds { ptr }, ptr %22, i32 0, i32 0
  store ptr %10, ptr %23, align 8
  %24 = alloca { ptr, ptr }, align 8
  %25 = getelementptr inbounds { ptr, ptr }, ptr %24, i32 0, i32 0
  store ptr @"main.main$1", ptr %25, align 8
  %26 = getelementptr inbounds { ptr, ptr }, ptr %24, i32 0, i32 1
  store ptr %22, ptr %26, align 8
  %27 = load { ptr, ptr }, ptr %24, align 8
  %28 = extractvalue { ptr, ptr } %27, 1
  %29 = extractvalue { ptr, ptr } %27, 0
  %30 = call ptr %29(ptr %28)
  store ptr %30, ptr %21, align 8
  %31 = load ptr, ptr %2, align 8
  %32 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.GoString"(ptr %31)
  %33 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %34 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %33, i32 0, i32 0
  store ptr @1, ptr %34, align 8
  %35 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %33, i32 0, i32 1
  store i64 29, ptr %35, align 4
  %36 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %33, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %36)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %37 = load ptr, ptr %2, align 8
  %38 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.GoStringN"(ptr %37, i32 5)
  %39 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %40 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %39, i32 0, i32 0
  store ptr @2, ptr %40, align 8
  %41 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %39, i32 0, i32 1
  store i64 23, ptr %41, align 4
  %42 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %39, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %42)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %38)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %43 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %44 = getelementptr inbounds { ptr }, ptr %43, i32 0, i32 0
  store ptr %21, ptr %44, align 8
  %45 = alloca { ptr, ptr }, align 8
  %46 = getelementptr inbounds { ptr, ptr }, ptr %45, i32 0, i32 0
  store ptr @"main.main$2", ptr %46, align 8
  %47 = getelementptr inbounds { ptr, ptr }, ptr %45, i32 0, i32 1
  store ptr %43, ptr %47, align 8
  %48 = load { ptr, ptr }, ptr %45, align 8
  %49 = extractvalue { ptr, ptr } %48, 1
  %50 = extractvalue { ptr, ptr } %48, 0
  %51 = call %"github.com/goplus/llgo/internal/runtime.Slice" %50(ptr %49)
  %52 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %53 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %52, i32 0, i32 0
  store ptr @3, ptr %53, align 8
  %54 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %52, i32 0, i32 1
  store i64 33, ptr %54, align 4
  %55 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %52, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %55)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintSlice"(%"github.com/goplus/llgo/internal/runtime.Slice" %51)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %56 = call double @sqrt(double 2.000000e+00)
  %57 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 32)
  %58 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %57, i64 0
  %59 = load ptr, ptr @_llgo_float64, align 8
  %60 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %61 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %60, i32 0, i32 0
  store ptr %59, ptr %61, align 8
  %62 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %60, i32 0, i32 1
  store ptr inttoptr (i64 4611686018427387904 to ptr), ptr %62, align 8
  %63 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %60, align 8
  store %"github.com/goplus/llgo/internal/runtime.eface" %63, ptr %58, align 8
  %64 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %57, i64 1
  %65 = load ptr, ptr @_llgo_float64, align 8
  %66 = bitcast double %56 to i64
  %67 = inttoptr i64 %66 to ptr
  %68 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %69 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %68, i32 0, i32 0
  store ptr %65, ptr %69, align 8
  %70 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %68, i32 0, i32 1
  store ptr %67, ptr %70, align 8
  %71 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %68, align 8
  store %"github.com/goplus/llgo/internal/runtime.eface" %71, ptr %64, align 8
  %72 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %73 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %72, i32 0, i32 0
  store ptr %57, ptr %73, align 8
  %74 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %72, i32 0, i32 1
  store i64 2, ptr %74, align 4
  %75 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %72, i32 0, i32 2
  store i64 2, ptr %75, align 4
  %76 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %72, align 8
  %77 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %78 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %77, i32 0, i32 0
  store ptr @4, ptr %78, align 8
  %79 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %77, i32 0, i32 1
  store i64 14, ptr %79, align 4
  %80 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %77, align 8
  %81 = call { i64, %"github.com/goplus/llgo/internal/runtime.iface" } @fmt.Printf(%"github.com/goplus/llgo/internal/runtime.String" %80, %"github.com/goplus/llgo/internal/runtime.Slice" %76)
  %82 = call double @sin(double 2.000000e+00)
  %83 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 32)
  %84 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %83, i64 0
  %85 = load ptr, ptr @_llgo_float64, align 8
  %86 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %87 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %86, i32 0, i32 0
  store ptr %85, ptr %87, align 8
  %88 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %86, i32 0, i32 1
  store ptr inttoptr (i64 4611686018427387904 to ptr), ptr %88, align 8
  %89 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %86, align 8
  store %"github.com/goplus/llgo/internal/runtime.eface" %89, ptr %84, align 8
  %90 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %83, i64 1
  %91 = load ptr, ptr @_llgo_float64, align 8
  %92 = bitcast double %82 to i64
  %93 = inttoptr i64 %92 to ptr
  %94 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %95 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %94, i32 0, i32 0
  store ptr %91, ptr %95, align 8
  %96 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %94, i32 0, i32 1
  store ptr %93, ptr %96, align 8
  %97 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %94, align 8
  store %"github.com/goplus/llgo/internal/runtime.eface" %97, ptr %90, align 8
  %98 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %99 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %98, i32 0, i32 0
  store ptr %83, ptr %99, align 8
  %100 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %98, i32 0, i32 1
  store i64 2, ptr %100, align 4
  %101 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %98, i32 0, i32 2
  store i64 2, ptr %101, align 4
  %102 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %98, align 8
  %103 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %104 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %103, i32 0, i32 0
  store ptr @5, ptr %104, align 8
  %105 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %103, i32 0, i32 1
  store i64 13, ptr %105, align 4
  %106 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %103, align 8
  %107 = call { i64, %"github.com/goplus/llgo/internal/runtime.iface" } @fmt.Printf(%"github.com/goplus/llgo/internal/runtime.String" %106, %"github.com/goplus/llgo/internal/runtime.Slice" %102)
  %108 = call double @cos(double 2.000000e+00)
  %109 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 32)
  %110 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %109, i64 0
  %111 = load ptr, ptr @_llgo_float64, align 8
  %112 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %113 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %112, i32 0, i32 0
  store ptr %111, ptr %113, align 8
  %114 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %112, i32 0, i32 1
  store ptr inttoptr (i64 4611686018427387904 to ptr), ptr %114, align 8
  %115 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %112, align 8
  store %"github.com/goplus/llgo/internal/runtime.eface" %115, ptr %110, align 8
  %116 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %109, i64 1
  %117 = load ptr, ptr @_llgo_float64, align 8
  %118 = bitcast double %108 to i64
  %119 = inttoptr i64 %118 to ptr
  %120 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %121 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %120, i32 0, i32 0
  store ptr %117, ptr %121, align 8
  %122 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %120, i32 0, i32 1
  store ptr %119, ptr %122, align 8
  %123 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %120, align 8
  store %"github.com/goplus/llgo/internal/runtime.eface" %123, ptr %116, align 8
  %124 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %125 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %124, i32 0, i32 0
  store ptr %109, ptr %125, align 8
  %126 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %124, i32 0, i32 1
  store i64 2, ptr %126, align 4
  %127 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %124, i32 0, i32 2
  store i64 2, ptr %127, align 4
  %128 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %124, align 8
  %129 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %130 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %129, i32 0, i32 0
  store ptr @6, ptr %130, align 8
  %131 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %129, i32 0, i32 1
  store i64 13, ptr %131, align 4
  %132 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %129, align 8
  %133 = call { i64, %"github.com/goplus/llgo/internal/runtime.iface" } @fmt.Printf(%"github.com/goplus/llgo/internal/runtime.String" %132, %"github.com/goplus/llgo/internal/runtime.Slice" %128)
  %134 = call double @log(double 2.000000e+00)
  %135 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 32)
  %136 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %135, i64 0
  %137 = load ptr, ptr @_llgo_float64, align 8
  %138 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %139 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %138, i32 0, i32 0
  store ptr %137, ptr %139, align 8
  %140 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %138, i32 0, i32 1
  store ptr inttoptr (i64 4611686018427387904 to ptr), ptr %140, align 8
  %141 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %138, align 8
  store %"github.com/goplus/llgo/internal/runtime.eface" %141, ptr %136, align 8
  %142 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %135, i64 1
  %143 = load ptr, ptr @_llgo_float64, align 8
  %144 = bitcast double %134 to i64
  %145 = inttoptr i64 %144 to ptr
  %146 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %147 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %146, i32 0, i32 0
  store ptr %143, ptr %147, align 8
  %148 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %146, i32 0, i32 1
  store ptr %145, ptr %148, align 8
  %149 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %146, align 8
  store %"github.com/goplus/llgo/internal/runtime.eface" %149, ptr %142, align 8
  %150 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %151 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %150, i32 0, i32 0
  store ptr %135, ptr %151, align 8
  %152 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %150, i32 0, i32 1
  store i64 2, ptr %152, align 4
  %153 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %150, i32 0, i32 2
  store i64 2, ptr %153, align 4
  %154 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %150, align 8
  %155 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %156 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %155, i32 0, i32 0
  store ptr @7, ptr %156, align 8
  %157 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %155, i32 0, i32 1
  store i64 13, ptr %157, align 4
  %158 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %155, align 8
  %159 = call { i64, %"github.com/goplus/llgo/internal/runtime.iface" } @fmt.Printf(%"github.com/goplus/llgo/internal/runtime.String" %158, %"github.com/goplus/llgo/internal/runtime.Slice" %154)
  %160 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %161 = getelementptr inbounds { ptr }, ptr %160, i32 0, i32 0
  store ptr %2, ptr %161, align 8
  %162 = alloca { ptr, ptr }, align 8
  %163 = getelementptr inbounds { ptr, ptr }, ptr %162, i32 0, i32 0
  store ptr @"main.main$3", ptr %163, align 8
  %164 = getelementptr inbounds { ptr, ptr }, ptr %162, i32 0, i32 1
  store ptr %160, ptr %164, align 8
  %165 = load { ptr, ptr }, ptr %162, align 8
  %166 = extractvalue { ptr, ptr } %165, 1
  %167 = extractvalue { ptr, ptr } %165, 0
  call void %167(ptr %166)
  %168 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %169 = getelementptr inbounds { ptr }, ptr %168, i32 0, i32 0
  store ptr %21, ptr %169, align 8
  %170 = alloca { ptr, ptr }, align 8
  %171 = getelementptr inbounds { ptr, ptr }, ptr %170, i32 0, i32 0
  store ptr @"main.main$4", ptr %171, align 8
  %172 = getelementptr inbounds { ptr, ptr }, ptr %170, i32 0, i32 1
  store ptr %168, ptr %172, align 8
  %173 = load { ptr, ptr }, ptr %170, align 8
  %174 = extractvalue { ptr, ptr } %173, 1
  %175 = extractvalue { ptr, ptr } %173, 0
  call void %175(ptr %174)
  ret i32 0
}

define ptr @"main.main$1"(ptr %0) {
_llgo_0:
  %1 = load { ptr }, ptr %0, align 8
  %2 = extractvalue { ptr } %1, 0
  %3 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2, align 8
  %4 = load ptr, ptr @_llgo_byte, align 8
  %5 = load ptr, ptr @"[]_llgo_byte", align 8
  %6 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  store %"github.com/goplus/llgo/internal/runtime.Slice" %3, ptr %6, align 8
  %7 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %8 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %7, i32 0, i32 0
  store ptr %5, ptr %8, align 8
  %9 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %7, i32 0, i32 1
  store ptr %6, ptr %9, align 8
  %10 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %7, align 8
  %11 = call ptr @"github.com/goplus/llgo/internal/runtime.CBytes"(%"github.com/goplus/llgo/internal/runtime.Slice" %3)
  ret ptr %11
}

define %"github.com/goplus/llgo/internal/runtime.Slice" @"main.main$2"(ptr %0) {
_llgo_0:
  %1 = load { ptr }, ptr %0, align 8
  %2 = extractvalue { ptr } %1, 0
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr @_llgo_Pointer, align 8
  %5 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %6 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %5, i32 0, i32 0
  store ptr %4, ptr %6, align 8
  %7 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %5, i32 0, i32 1
  store ptr %3, ptr %7, align 8
  %8 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %5, align 8
  %9 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.GoBytes"(ptr %3, i32 4)
  ret %"github.com/goplus/llgo/internal/runtime.Slice" %9
}

define void @"main.main$3"(ptr %0) {
_llgo_0:
  %1 = load { ptr }, ptr %0, align 8
  %2 = extractvalue { ptr } %1, 0
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr @_llgo_Pointer, align 8
  %5 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %6 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %5, i32 0, i32 0
  store ptr %4, ptr %6, align 8
  %7 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %5, i32 0, i32 1
  store ptr %3, ptr %7, align 8
  %8 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %5, align 8
  %9 = call [0 x i8] @free(ptr %3)
  ret void
}

define void @"main.main$4"(ptr %0) {
_llgo_0:
  %1 = load { ptr }, ptr %0, align 8
  %2 = extractvalue { ptr } %1, 0
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr @_llgo_Pointer, align 8
  %5 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %6 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %5, i32 0, i32 0
  store ptr %4, ptr %6, align 8
  %7 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %5, i32 0, i32 1
  store ptr %3, ptr %7, align 8
  %8 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %5, align 8
  %9 = call [0 x i8] @free(ptr %3)
  ret void
}

declare void @runtime.throw(%"github.com/goplus/llgo/internal/runtime.String")

declare void @syscall.init()

declare void @fmt.init()

declare void @"github.com/goplus/llgo/internal/runtime.init"()

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.CString"(%"github.com/goplus/llgo/internal/runtime.String")

declare i32 @puts(ptr)

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64)

declare %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.GoString"(ptr)

declare void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String")

declare void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8)

declare %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.GoStringN"(ptr, i64)

declare void @"github.com/goplus/llgo/internal/runtime.PrintSlice"(%"github.com/goplus/llgo/internal/runtime.Slice")

declare double @sqrt(double)

define void @"main.init$after"() {
_llgo_0:
  %0 = load ptr, ptr @_llgo_float64, align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 46)
  store ptr %2, ptr @_llgo_float64, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %3 = load ptr, ptr @_llgo_byte, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %5 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 40)
  store ptr %5, ptr @_llgo_byte, align 8
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_2
  %6 = load ptr, ptr @"[]_llgo_byte", align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %8 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 40)
  %9 = call ptr @"github.com/goplus/llgo/internal/runtime.SliceOf"(ptr %8)
  store ptr %9, ptr @"[]_llgo_byte", align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %10 = load ptr, ptr @_llgo_Pointer, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %_llgo_7, label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_6
  %12 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 58)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %12)
  store ptr %12, ptr @_llgo_Pointer, align 8
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_6
  ret void
}

declare ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64)

declare { i64, %"github.com/goplus/llgo/internal/runtime.iface" } @fmt.Printf(%"github.com/goplus/llgo/internal/runtime.String", %"github.com/goplus/llgo/internal/runtime.Slice")

declare double @sin(double)

declare double @cos(double)

declare double @log(double)

declare ptr @"github.com/goplus/llgo/internal/runtime.SliceOf"(ptr)

declare ptr @"github.com/goplus/llgo/internal/runtime.CBytes"(%"github.com/goplus/llgo/internal/runtime.Slice")

declare void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr)

declare %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.GoBytes"(ptr, i64)

declare [0 x i8] @free(ptr)
