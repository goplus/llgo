; ModuleID = 'github.com/goplus/llgo/internal/abi'
source_filename = "github.com/goplus/llgo/internal/abi"

%"github.com/goplus/llgo/internal/abi.ArrayType" = type { %"github.com/goplus/llgo/internal/abi.Type", ptr, ptr, i64 }
%"github.com/goplus/llgo/internal/abi.Type" = type { i64, i64, i32, i8, i8, i8, i8, ptr, ptr, i32, i32 }
%"github.com/goplus/llgo/internal/abi.ChanType" = type { %"github.com/goplus/llgo/internal/abi.Type", ptr, i64 }
%"github.com/goplus/llgo/internal/abi.FuncType" = type { %"github.com/goplus/llgo/internal/abi.Type", i16, i16 }
%"github.com/goplus/llgo/internal/abi.InterfaceType" = type { %"github.com/goplus/llgo/internal/abi.Type", %"github.com/goplus/llgo/internal/abi.Name", %"github.com/goplus/llgo/internal/runtime.Slice" }
%"github.com/goplus/llgo/internal/abi.Name" = type { ptr }
%"github.com/goplus/llgo/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/internal/abi.MapType" = type { %"github.com/goplus/llgo/internal/abi.Type", ptr, ptr, ptr, ptr, i8, i8, i16, i32 }
%"github.com/goplus/llgo/internal/abi.PtrType" = type { %"github.com/goplus/llgo/internal/abi.Type", ptr }
%"github.com/goplus/llgo/internal/abi.SliceType" = type { %"github.com/goplus/llgo/internal/abi.Type", ptr }
%"github.com/goplus/llgo/internal/abi.StructType" = type { %"github.com/goplus/llgo/internal/abi.Type", %"github.com/goplus/llgo/internal/abi.Name", %"github.com/goplus/llgo/internal/runtime.Slice" }

@"github.com/goplus/llgo/internal/abi.init$guard" = global ptr null

define ptr @"(*github.com/goplus/llgo/internal/abi.ArrayType).ArrayType"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.ArrayType", ptr %0, i32 0, i32 0
  %2 = call ptr @"(*github.com/goplus/llgo/internal/abi.Type).ArrayType"(ptr %1)
  ret ptr %2
}

define ptr @"(*github.com/goplus/llgo/internal/abi.ArrayType).Common"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.ArrayType", ptr %0, i32 0, i32 0
  %2 = call ptr @"(*github.com/goplus/llgo/internal/abi.Type).Common"(ptr %1)
  ret ptr %2
}

define ptr @"(*github.com/goplus/llgo/internal/abi.ArrayType).FuncType"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.ArrayType", ptr %0, i32 0, i32 0
  %2 = call ptr @"(*github.com/goplus/llgo/internal/abi.Type).FuncType"(ptr %1)
  ret ptr %2
}

define ptr @"(*github.com/goplus/llgo/internal/abi.ArrayType).InterfaceType"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.ArrayType", ptr %0, i32 0, i32 0
  %2 = call ptr @"(*github.com/goplus/llgo/internal/abi.Type).InterfaceType"(ptr %1)
  ret ptr %2
}

define i64 @"(*github.com/goplus/llgo/internal/abi.ArrayType).Kind"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.ArrayType", ptr %0, i32 0, i32 0
  %2 = call i64 @"(*github.com/goplus/llgo/internal/abi.Type).Kind"(ptr %1)
  ret i64 %2
}

define ptr @"(*github.com/goplus/llgo/internal/abi.ArrayType).MapType"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.ArrayType", ptr %0, i32 0, i32 0
  %2 = call ptr @"(*github.com/goplus/llgo/internal/abi.Type).MapType"(ptr %1)
  ret ptr %2
}

define ptr @"(*github.com/goplus/llgo/internal/abi.ArrayType).StructType"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.ArrayType", ptr %0, i32 0, i32 0
  %2 = call ptr @"(*github.com/goplus/llgo/internal/abi.Type).StructType"(ptr %1)
  ret ptr %2
}

define ptr @"(*github.com/goplus/llgo/internal/abi.ChanType).ArrayType"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.ChanType", ptr %0, i32 0, i32 0
  %2 = call ptr @"(*github.com/goplus/llgo/internal/abi.Type).ArrayType"(ptr %1)
  ret ptr %2
}

define ptr @"(*github.com/goplus/llgo/internal/abi.ChanType).Common"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.ChanType", ptr %0, i32 0, i32 0
  %2 = call ptr @"(*github.com/goplus/llgo/internal/abi.Type).Common"(ptr %1)
  ret ptr %2
}

define ptr @"(*github.com/goplus/llgo/internal/abi.ChanType).FuncType"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.ChanType", ptr %0, i32 0, i32 0
  %2 = call ptr @"(*github.com/goplus/llgo/internal/abi.Type).FuncType"(ptr %1)
  ret ptr %2
}

define ptr @"(*github.com/goplus/llgo/internal/abi.ChanType).InterfaceType"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.ChanType", ptr %0, i32 0, i32 0
  %2 = call ptr @"(*github.com/goplus/llgo/internal/abi.Type).InterfaceType"(ptr %1)
  ret ptr %2
}

define i64 @"(*github.com/goplus/llgo/internal/abi.ChanType).Kind"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.ChanType", ptr %0, i32 0, i32 0
  %2 = call i64 @"(*github.com/goplus/llgo/internal/abi.Type).Kind"(ptr %1)
  ret i64 %2
}

define i64 @"(*github.com/goplus/llgo/internal/abi.ChanType).Len"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.ChanType", ptr %0, i32 0, i32 0
  %2 = call i64 @"(*github.com/goplus/llgo/internal/abi.Type).Len"(ptr %1)
  ret i64 %2
}

define ptr @"(*github.com/goplus/llgo/internal/abi.ChanType).MapType"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.ChanType", ptr %0, i32 0, i32 0
  %2 = call ptr @"(*github.com/goplus/llgo/internal/abi.Type).MapType"(ptr %1)
  ret ptr %2
}

define ptr @"(*github.com/goplus/llgo/internal/abi.ChanType).StructType"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.ChanType", ptr %0, i32 0, i32 0
  %2 = call ptr @"(*github.com/goplus/llgo/internal/abi.Type).StructType"(ptr %1)
  ret ptr %2
}

define ptr @"(*github.com/goplus/llgo/internal/abi.FuncType).ArrayType"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.FuncType", ptr %0, i32 0, i32 0
  %2 = call ptr @"(*github.com/goplus/llgo/internal/abi.Type).ArrayType"(ptr %1)
  ret ptr %2
}

define ptr @"(*github.com/goplus/llgo/internal/abi.FuncType).Common"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.FuncType", ptr %0, i32 0, i32 0
  %2 = call ptr @"(*github.com/goplus/llgo/internal/abi.Type).Common"(ptr %1)
  ret ptr %2
}

define ptr @"(*github.com/goplus/llgo/internal/abi.FuncType).Elem"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.FuncType", ptr %0, i32 0, i32 0
  %2 = call ptr @"(*github.com/goplus/llgo/internal/abi.Type).Elem"(ptr %1)
  ret ptr %2
}

define ptr @"(*github.com/goplus/llgo/internal/abi.FuncType).FuncType"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.FuncType", ptr %0, i32 0, i32 0
  %2 = call ptr @"(*github.com/goplus/llgo/internal/abi.Type).FuncType"(ptr %1)
  ret ptr %2
}

define ptr @"(*github.com/goplus/llgo/internal/abi.FuncType).InterfaceType"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.FuncType", ptr %0, i32 0, i32 0
  %2 = call ptr @"(*github.com/goplus/llgo/internal/abi.Type).InterfaceType"(ptr %1)
  ret ptr %2
}

define i64 @"(*github.com/goplus/llgo/internal/abi.FuncType).Kind"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.FuncType", ptr %0, i32 0, i32 0
  %2 = call i64 @"(*github.com/goplus/llgo/internal/abi.Type).Kind"(ptr %1)
  ret i64 %2
}

define i64 @"(*github.com/goplus/llgo/internal/abi.FuncType).Len"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.FuncType", ptr %0, i32 0, i32 0
  %2 = call i64 @"(*github.com/goplus/llgo/internal/abi.Type).Len"(ptr %1)
  ret i64 %2
}

define ptr @"(*github.com/goplus/llgo/internal/abi.FuncType).MapType"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.FuncType", ptr %0, i32 0, i32 0
  %2 = call ptr @"(*github.com/goplus/llgo/internal/abi.Type).MapType"(ptr %1)
  ret ptr %2
}

define ptr @"(*github.com/goplus/llgo/internal/abi.FuncType).StructType"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.FuncType", ptr %0, i32 0, i32 0
  %2 = call ptr @"(*github.com/goplus/llgo/internal/abi.Type).StructType"(ptr %1)
  ret ptr %2
}

define ptr @"(*github.com/goplus/llgo/internal/abi.InterfaceType).ArrayType"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.InterfaceType", ptr %0, i32 0, i32 0
  %2 = call ptr @"(*github.com/goplus/llgo/internal/abi.Type).ArrayType"(ptr %1)
  ret ptr %2
}

define ptr @"(*github.com/goplus/llgo/internal/abi.InterfaceType).Common"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.InterfaceType", ptr %0, i32 0, i32 0
  %2 = call ptr @"(*github.com/goplus/llgo/internal/abi.Type).Common"(ptr %1)
  ret ptr %2
}

define ptr @"(*github.com/goplus/llgo/internal/abi.InterfaceType).Elem"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.InterfaceType", ptr %0, i32 0, i32 0
  %2 = call ptr @"(*github.com/goplus/llgo/internal/abi.Type).Elem"(ptr %1)
  ret ptr %2
}

define ptr @"(*github.com/goplus/llgo/internal/abi.InterfaceType).FuncType"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.InterfaceType", ptr %0, i32 0, i32 0
  %2 = call ptr @"(*github.com/goplus/llgo/internal/abi.Type).FuncType"(ptr %1)
  ret ptr %2
}

define ptr @"(*github.com/goplus/llgo/internal/abi.InterfaceType).InterfaceType"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.InterfaceType", ptr %0, i32 0, i32 0
  %2 = call ptr @"(*github.com/goplus/llgo/internal/abi.Type).InterfaceType"(ptr %1)
  ret ptr %2
}

define i64 @"(*github.com/goplus/llgo/internal/abi.InterfaceType).Kind"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.InterfaceType", ptr %0, i32 0, i32 0
  %2 = call i64 @"(*github.com/goplus/llgo/internal/abi.Type).Kind"(ptr %1)
  ret i64 %2
}

define i64 @"(*github.com/goplus/llgo/internal/abi.InterfaceType).Len"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.InterfaceType", ptr %0, i32 0, i32 0
  %2 = call i64 @"(*github.com/goplus/llgo/internal/abi.Type).Len"(ptr %1)
  ret i64 %2
}

define ptr @"(*github.com/goplus/llgo/internal/abi.InterfaceType).MapType"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.InterfaceType", ptr %0, i32 0, i32 0
  %2 = call ptr @"(*github.com/goplus/llgo/internal/abi.Type).MapType"(ptr %1)
  ret ptr %2
}

define ptr @"(*github.com/goplus/llgo/internal/abi.InterfaceType).StructType"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.InterfaceType", ptr %0, i32 0, i32 0
  %2 = call ptr @"(*github.com/goplus/llgo/internal/abi.Type).StructType"(ptr %1)
  ret ptr %2
}

define ptr @"(*github.com/goplus/llgo/internal/abi.MapType).ArrayType"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.MapType", ptr %0, i32 0, i32 0
  %2 = call ptr @"(*github.com/goplus/llgo/internal/abi.Type).ArrayType"(ptr %1)
  ret ptr %2
}

define ptr @"(*github.com/goplus/llgo/internal/abi.MapType).Common"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.MapType", ptr %0, i32 0, i32 0
  %2 = call ptr @"(*github.com/goplus/llgo/internal/abi.Type).Common"(ptr %1)
  ret ptr %2
}

define ptr @"(*github.com/goplus/llgo/internal/abi.MapType).FuncType"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.MapType", ptr %0, i32 0, i32 0
  %2 = call ptr @"(*github.com/goplus/llgo/internal/abi.Type).FuncType"(ptr %1)
  ret ptr %2
}

define ptr @"(*github.com/goplus/llgo/internal/abi.MapType).InterfaceType"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.MapType", ptr %0, i32 0, i32 0
  %2 = call ptr @"(*github.com/goplus/llgo/internal/abi.Type).InterfaceType"(ptr %1)
  ret ptr %2
}

define i64 @"(*github.com/goplus/llgo/internal/abi.MapType).Kind"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.MapType", ptr %0, i32 0, i32 0
  %2 = call i64 @"(*github.com/goplus/llgo/internal/abi.Type).Kind"(ptr %1)
  ret i64 %2
}

define i64 @"(*github.com/goplus/llgo/internal/abi.MapType).Len"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.MapType", ptr %0, i32 0, i32 0
  %2 = call i64 @"(*github.com/goplus/llgo/internal/abi.Type).Len"(ptr %1)
  ret i64 %2
}

define ptr @"(*github.com/goplus/llgo/internal/abi.MapType).MapType"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.MapType", ptr %0, i32 0, i32 0
  %2 = call ptr @"(*github.com/goplus/llgo/internal/abi.Type).MapType"(ptr %1)
  ret ptr %2
}

define ptr @"(*github.com/goplus/llgo/internal/abi.MapType).StructType"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.MapType", ptr %0, i32 0, i32 0
  %2 = call ptr @"(*github.com/goplus/llgo/internal/abi.Type).StructType"(ptr %1)
  ret ptr %2
}

define ptr @"(*github.com/goplus/llgo/internal/abi.PtrType).ArrayType"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.PtrType", ptr %0, i32 0, i32 0
  %2 = call ptr @"(*github.com/goplus/llgo/internal/abi.Type).ArrayType"(ptr %1)
  ret ptr %2
}

define ptr @"(*github.com/goplus/llgo/internal/abi.PtrType).Common"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.PtrType", ptr %0, i32 0, i32 0
  %2 = call ptr @"(*github.com/goplus/llgo/internal/abi.Type).Common"(ptr %1)
  ret ptr %2
}

define ptr @"(*github.com/goplus/llgo/internal/abi.PtrType).FuncType"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.PtrType", ptr %0, i32 0, i32 0
  %2 = call ptr @"(*github.com/goplus/llgo/internal/abi.Type).FuncType"(ptr %1)
  ret ptr %2
}

define ptr @"(*github.com/goplus/llgo/internal/abi.PtrType).InterfaceType"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.PtrType", ptr %0, i32 0, i32 0
  %2 = call ptr @"(*github.com/goplus/llgo/internal/abi.Type).InterfaceType"(ptr %1)
  ret ptr %2
}

define i64 @"(*github.com/goplus/llgo/internal/abi.PtrType).Kind"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.PtrType", ptr %0, i32 0, i32 0
  %2 = call i64 @"(*github.com/goplus/llgo/internal/abi.Type).Kind"(ptr %1)
  ret i64 %2
}

define i64 @"(*github.com/goplus/llgo/internal/abi.PtrType).Len"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.PtrType", ptr %0, i32 0, i32 0
  %2 = call i64 @"(*github.com/goplus/llgo/internal/abi.Type).Len"(ptr %1)
  ret i64 %2
}

define ptr @"(*github.com/goplus/llgo/internal/abi.PtrType).MapType"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.PtrType", ptr %0, i32 0, i32 0
  %2 = call ptr @"(*github.com/goplus/llgo/internal/abi.Type).MapType"(ptr %1)
  ret ptr %2
}

define ptr @"(*github.com/goplus/llgo/internal/abi.PtrType).StructType"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.PtrType", ptr %0, i32 0, i32 0
  %2 = call ptr @"(*github.com/goplus/llgo/internal/abi.Type).StructType"(ptr %1)
  ret ptr %2
}

define ptr @"(*github.com/goplus/llgo/internal/abi.SliceType).ArrayType"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.SliceType", ptr %0, i32 0, i32 0
  %2 = call ptr @"(*github.com/goplus/llgo/internal/abi.Type).ArrayType"(ptr %1)
  ret ptr %2
}

define ptr @"(*github.com/goplus/llgo/internal/abi.SliceType).Common"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.SliceType", ptr %0, i32 0, i32 0
  %2 = call ptr @"(*github.com/goplus/llgo/internal/abi.Type).Common"(ptr %1)
  ret ptr %2
}

define ptr @"(*github.com/goplus/llgo/internal/abi.SliceType).FuncType"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.SliceType", ptr %0, i32 0, i32 0
  %2 = call ptr @"(*github.com/goplus/llgo/internal/abi.Type).FuncType"(ptr %1)
  ret ptr %2
}

define ptr @"(*github.com/goplus/llgo/internal/abi.SliceType).InterfaceType"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.SliceType", ptr %0, i32 0, i32 0
  %2 = call ptr @"(*github.com/goplus/llgo/internal/abi.Type).InterfaceType"(ptr %1)
  ret ptr %2
}

define i64 @"(*github.com/goplus/llgo/internal/abi.SliceType).Kind"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.SliceType", ptr %0, i32 0, i32 0
  %2 = call i64 @"(*github.com/goplus/llgo/internal/abi.Type).Kind"(ptr %1)
  ret i64 %2
}

define i64 @"(*github.com/goplus/llgo/internal/abi.SliceType).Len"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.SliceType", ptr %0, i32 0, i32 0
  %2 = call i64 @"(*github.com/goplus/llgo/internal/abi.Type).Len"(ptr %1)
  ret i64 %2
}

define ptr @"(*github.com/goplus/llgo/internal/abi.SliceType).MapType"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.SliceType", ptr %0, i32 0, i32 0
  %2 = call ptr @"(*github.com/goplus/llgo/internal/abi.Type).MapType"(ptr %1)
  ret ptr %2
}

define ptr @"(*github.com/goplus/llgo/internal/abi.SliceType).StructType"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.SliceType", ptr %0, i32 0, i32 0
  %2 = call ptr @"(*github.com/goplus/llgo/internal/abi.Type).StructType"(ptr %1)
  ret ptr %2
}

define ptr @"(*github.com/goplus/llgo/internal/abi.StructType).ArrayType"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.StructType", ptr %0, i32 0, i32 0
  %2 = call ptr @"(*github.com/goplus/llgo/internal/abi.Type).ArrayType"(ptr %1)
  ret ptr %2
}

define ptr @"(*github.com/goplus/llgo/internal/abi.StructType).Common"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.StructType", ptr %0, i32 0, i32 0
  %2 = call ptr @"(*github.com/goplus/llgo/internal/abi.Type).Common"(ptr %1)
  ret ptr %2
}

define ptr @"(*github.com/goplus/llgo/internal/abi.StructType).Elem"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.StructType", ptr %0, i32 0, i32 0
  %2 = call ptr @"(*github.com/goplus/llgo/internal/abi.Type).Elem"(ptr %1)
  ret ptr %2
}

define ptr @"(*github.com/goplus/llgo/internal/abi.StructType).FuncType"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.StructType", ptr %0, i32 0, i32 0
  %2 = call ptr @"(*github.com/goplus/llgo/internal/abi.Type).FuncType"(ptr %1)
  ret ptr %2
}

define ptr @"(*github.com/goplus/llgo/internal/abi.StructType).InterfaceType"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.StructType", ptr %0, i32 0, i32 0
  %2 = call ptr @"(*github.com/goplus/llgo/internal/abi.Type).InterfaceType"(ptr %1)
  ret ptr %2
}

define i64 @"(*github.com/goplus/llgo/internal/abi.StructType).Kind"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.StructType", ptr %0, i32 0, i32 0
  %2 = call i64 @"(*github.com/goplus/llgo/internal/abi.Type).Kind"(ptr %1)
  ret i64 %2
}

define i64 @"(*github.com/goplus/llgo/internal/abi.StructType).Len"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.StructType", ptr %0, i32 0, i32 0
  %2 = call i64 @"(*github.com/goplus/llgo/internal/abi.Type).Len"(ptr %1)
  ret i64 %2
}

define ptr @"(*github.com/goplus/llgo/internal/abi.StructType).MapType"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.StructType", ptr %0, i32 0, i32 0
  %2 = call ptr @"(*github.com/goplus/llgo/internal/abi.Type).MapType"(ptr %1)
  ret ptr %2
}

define ptr @"(*github.com/goplus/llgo/internal/abi.StructType).StructType"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.StructType", ptr %0, i32 0, i32 0
  %2 = call ptr @"(*github.com/goplus/llgo/internal/abi.Type).StructType"(ptr %1)
  ret ptr %2
}

define ptr @"(*github.com/goplus/llgo/internal/abi.Type).ArrayType"(ptr %0) {
_llgo_0:
  %1 = call i64 @"(*github.com/goplus/llgo/internal/abi.Type).Kind"(ptr %0)
  %2 = icmp ne i64 %1, 17
  br i1 %2, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  ret ptr null

_llgo_2:                                          ; preds = %_llgo_0
  ret ptr %0
}

define ptr @"(*github.com/goplus/llgo/internal/abi.Type).Common"(ptr %0) {
_llgo_0:
  ret ptr %0
}

define ptr @"(*github.com/goplus/llgo/internal/abi.Type).Elem"(ptr %0) {
_llgo_0:
  %1 = call i64 @"(*github.com/goplus/llgo/internal/abi.Type).Kind"(ptr %0)
  %2 = icmp eq i64 %1, 17
  br i1 %2, label %_llgo_1, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_0
  %3 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.ArrayType", ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  ret ptr %4

_llgo_2:                                          ; preds = %_llgo_3
  %5 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.ChanType", ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8
  ret ptr %6

_llgo_3:                                          ; preds = %_llgo_0
  %7 = icmp eq i64 %1, 18
  br i1 %7, label %_llgo_2, label %_llgo_5

_llgo_4:                                          ; preds = %_llgo_5
  %8 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.MapType", ptr %0, i32 0, i32 2
  %9 = load ptr, ptr %8, align 8
  ret ptr %9

_llgo_5:                                          ; preds = %_llgo_3
  %10 = icmp eq i64 %1, 21
  br i1 %10, label %_llgo_4, label %_llgo_7

_llgo_6:                                          ; preds = %_llgo_7
  %11 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.PtrType", ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8
  ret ptr %12

_llgo_7:                                          ; preds = %_llgo_5
  %13 = icmp eq i64 %1, 22
  br i1 %13, label %_llgo_6, label %_llgo_9

_llgo_8:                                          ; preds = %_llgo_9
  %14 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.SliceType", ptr %0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 8
  ret ptr %15

_llgo_9:                                          ; preds = %_llgo_7
  %16 = icmp eq i64 %1, 23
  br i1 %16, label %_llgo_8, label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9
  ret ptr null
}

define ptr @"(*github.com/goplus/llgo/internal/abi.Type).FuncType"(ptr %0) {
_llgo_0:
  %1 = call i64 @"(*github.com/goplus/llgo/internal/abi.Type).Kind"(ptr %0)
  %2 = icmp ne i64 %1, 19
  br i1 %2, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  ret ptr null

_llgo_2:                                          ; preds = %_llgo_0
  ret ptr %0
}

define ptr @"(*github.com/goplus/llgo/internal/abi.Type).InterfaceType"(ptr %0) {
_llgo_0:
  %1 = call i64 @"(*github.com/goplus/llgo/internal/abi.Type).Kind"(ptr %0)
  %2 = icmp ne i64 %1, 20
  br i1 %2, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  ret ptr null

_llgo_2:                                          ; preds = %_llgo_0
  ret ptr %0
}

define i64 @"(*github.com/goplus/llgo/internal/abi.Type).Kind"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %0, i32 0, i32 6
  %2 = load i8, ptr %1, align 1
  %3 = and i8 %2, 31
  %4 = sext i8 %3 to i64
  ret i64 %4
}

define i64 @"(*github.com/goplus/llgo/internal/abi.Type).Len"(ptr %0) {
_llgo_0:
  %1 = call i64 @"(*github.com/goplus/llgo/internal/abi.Type).Kind"(ptr %0)
  %2 = icmp eq i64 %1, 17
  br i1 %2, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %3 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.ArrayType", ptr %0, i32 0, i32 3
  %4 = load i64, ptr %3, align 4
  ret i64 %4

_llgo_2:                                          ; preds = %_llgo_0
  ret i64 0
}

define ptr @"(*github.com/goplus/llgo/internal/abi.Type).MapType"(ptr %0) {
_llgo_0:
  %1 = call i64 @"(*github.com/goplus/llgo/internal/abi.Type).Kind"(ptr %0)
  %2 = icmp ne i64 %1, 21
  br i1 %2, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  ret ptr null

_llgo_2:                                          ; preds = %_llgo_0
  ret ptr %0
}

define ptr @"(*github.com/goplus/llgo/internal/abi.Type).StructType"(ptr %0) {
_llgo_0:
  %1 = call i64 @"(*github.com/goplus/llgo/internal/abi.Type).Kind"(ptr %0)
  %2 = icmp ne i64 %1, 25
  br i1 %2, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  ret ptr null

_llgo_2:                                          ; preds = %_llgo_0
  ret ptr %0
}

define void @"github.com/goplus/llgo/internal/abi.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/internal/abi.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/internal/abi.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}
