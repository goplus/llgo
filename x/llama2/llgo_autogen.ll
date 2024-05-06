; ModuleID = 'llama2/run.c'
source_filename = "llama2/run.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx13.0.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.RunState = type { float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float* }
%struct.Config = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TransformerWeights = type { float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float* }
%struct.Transformer = type { %struct.Config, %struct.TransformerWeights, %struct.RunState, i32, float*, i64 }
%struct.TokenIndex = type { i8*, i32 }
%struct.Tokenizer = type { i8**, float*, %struct.TokenIndex*, i32, i32, [512 x i8] }
%struct.ProbIndex = type { float, i32 }
%struct.Sampler = type { i32, %struct.ProbIndex*, float, float, i64 }
%struct.timespec = type { i64, i64 }

@__stderrp = external global %struct.__sFILE*, align 8
@.str = private unnamed_addr constant [16 x i8] c"malloc failed!\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Couldn't open file %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"open failed!\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"mmap failed!\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"couldn't load %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"failed read\0A\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"<0x%02hhX>\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"cannot encode NULL text\0A\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.12 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.13 = private unnamed_addr constant [54 x i8] c"something is wrong, expected at least 1 prompt token\0A\00", align 1
@__stdoutp = external global %struct.__sFILE*, align 8
@.str.14 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"achieved tok/s: %f\0A\00", align 1
@__stdinp = external global %struct.__sFILE*, align 8
@.str.16 = private unnamed_addr constant [33 x i8] c"Enter system prompt (optional): \00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"User: \00", align 1
@__const.chat.system_template = private unnamed_addr constant [39 x i8] c"[INST] <<SYS>>\0A%s\0A<</SYS>>\0A\0A%s [/INST]\00", align 1
@__const.chat.user_template = private unnamed_addr constant [18 x i8] c"[INST] %s [/INST]\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"Assistant: \00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @malloc_run_state(%struct.RunState* noundef %0, %struct.Config* noundef %1) #0 {
  %3 = alloca %struct.RunState*, align 8
  %4 = alloca %struct.Config*, align 8
  %5 = alloca i32, align 4
  store %struct.RunState* %0, %struct.RunState** %3, align 8
  store %struct.Config* %1, %struct.Config** %4, align 8
  %6 = load %struct.Config*, %struct.Config** %4, align 8
  %7 = getelementptr inbounds %struct.Config, %struct.Config* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.Config*, %struct.Config** %4, align 8
  %10 = getelementptr inbounds %struct.Config, %struct.Config* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 4
  %12 = mul nsw i32 %8, %11
  %13 = load %struct.Config*, %struct.Config** %4, align 8
  %14 = getelementptr inbounds %struct.Config, %struct.Config* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = sdiv i32 %12, %15
  store i32 %16, i32* %5, align 4
  %17 = load %struct.Config*, %struct.Config** %4, align 8
  %18 = getelementptr inbounds %struct.Config, %struct.Config* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %19 to i64
  %21 = call i8* @calloc(i64 noundef %20, i64 noundef 4) #10
  %22 = bitcast i8* %21 to float*
  %23 = load %struct.RunState*, %struct.RunState** %3, align 8
  %24 = getelementptr inbounds %struct.RunState, %struct.RunState* %23, i32 0, i32 0
  store float* %22, float** %24, align 8
  %25 = load %struct.Config*, %struct.Config** %4, align 8
  %26 = getelementptr inbounds %struct.Config, %struct.Config* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = sext i32 %27 to i64
  %29 = call i8* @calloc(i64 noundef %28, i64 noundef 4) #10
  %30 = bitcast i8* %29 to float*
  %31 = load %struct.RunState*, %struct.RunState** %3, align 8
  %32 = getelementptr inbounds %struct.RunState, %struct.RunState* %31, i32 0, i32 1
  store float* %30, float** %32, align 8
  %33 = load %struct.Config*, %struct.Config** %4, align 8
  %34 = getelementptr inbounds %struct.Config, %struct.Config* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = sext i32 %35 to i64
  %37 = call i8* @calloc(i64 noundef %36, i64 noundef 4) #10
  %38 = bitcast i8* %37 to float*
  %39 = load %struct.RunState*, %struct.RunState** %3, align 8
  %40 = getelementptr inbounds %struct.RunState, %struct.RunState* %39, i32 0, i32 2
  store float* %38, float** %40, align 8
  %41 = load %struct.Config*, %struct.Config** %4, align 8
  %42 = getelementptr inbounds %struct.Config, %struct.Config* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = call i8* @calloc(i64 noundef %44, i64 noundef 4) #10
  %46 = bitcast i8* %45 to float*
  %47 = load %struct.RunState*, %struct.RunState** %3, align 8
  %48 = getelementptr inbounds %struct.RunState, %struct.RunState* %47, i32 0, i32 3
  store float* %46, float** %48, align 8
  %49 = load %struct.Config*, %struct.Config** %4, align 8
  %50 = getelementptr inbounds %struct.Config, %struct.Config* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = call i8* @calloc(i64 noundef %52, i64 noundef 4) #10
  %54 = bitcast i8* %53 to float*
  %55 = load %struct.RunState*, %struct.RunState** %3, align 8
  %56 = getelementptr inbounds %struct.RunState, %struct.RunState* %55, i32 0, i32 4
  store float* %54, float** %56, align 8
  %57 = load %struct.Config*, %struct.Config** %4, align 8
  %58 = getelementptr inbounds %struct.Config, %struct.Config* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = call i8* @calloc(i64 noundef %60, i64 noundef 4) #10
  %62 = bitcast i8* %61 to float*
  %63 = load %struct.RunState*, %struct.RunState** %3, align 8
  %64 = getelementptr inbounds %struct.RunState, %struct.RunState* %63, i32 0, i32 5
  store float* %62, float** %64, align 8
  %65 = load %struct.Config*, %struct.Config** %4, align 8
  %66 = getelementptr inbounds %struct.Config, %struct.Config* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.Config*, %struct.Config** %4, align 8
  %69 = getelementptr inbounds %struct.Config, %struct.Config* %68, i32 0, i32 6
  %70 = load i32, i32* %69, align 4
  %71 = mul nsw i32 %67, %70
  %72 = load i32, i32* %5, align 4
  %73 = mul nsw i32 %71, %72
  %74 = sext i32 %73 to i64
  %75 = call i8* @calloc(i64 noundef %74, i64 noundef 4) #10
  %76 = bitcast i8* %75 to float*
  %77 = load %struct.RunState*, %struct.RunState** %3, align 8
  %78 = getelementptr inbounds %struct.RunState, %struct.RunState* %77, i32 0, i32 10
  store float* %76, float** %78, align 8
  %79 = load %struct.Config*, %struct.Config** %4, align 8
  %80 = getelementptr inbounds %struct.Config, %struct.Config* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.Config*, %struct.Config** %4, align 8
  %83 = getelementptr inbounds %struct.Config, %struct.Config* %82, i32 0, i32 6
  %84 = load i32, i32* %83, align 4
  %85 = mul nsw i32 %81, %84
  %86 = load i32, i32* %5, align 4
  %87 = mul nsw i32 %85, %86
  %88 = sext i32 %87 to i64
  %89 = call i8* @calloc(i64 noundef %88, i64 noundef 4) #10
  %90 = bitcast i8* %89 to float*
  %91 = load %struct.RunState*, %struct.RunState** %3, align 8
  %92 = getelementptr inbounds %struct.RunState, %struct.RunState* %91, i32 0, i32 11
  store float* %90, float** %92, align 8
  %93 = load %struct.Config*, %struct.Config** %4, align 8
  %94 = getelementptr inbounds %struct.Config, %struct.Config* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.Config*, %struct.Config** %4, align 8
  %97 = getelementptr inbounds %struct.Config, %struct.Config* %96, i32 0, i32 6
  %98 = load i32, i32* %97, align 4
  %99 = mul nsw i32 %95, %98
  %100 = sext i32 %99 to i64
  %101 = call i8* @calloc(i64 noundef %100, i64 noundef 4) #10
  %102 = bitcast i8* %101 to float*
  %103 = load %struct.RunState*, %struct.RunState** %3, align 8
  %104 = getelementptr inbounds %struct.RunState, %struct.RunState* %103, i32 0, i32 8
  store float* %102, float** %104, align 8
  %105 = load %struct.Config*, %struct.Config** %4, align 8
  %106 = getelementptr inbounds %struct.Config, %struct.Config* %105, i32 0, i32 5
  %107 = load i32, i32* %106, align 4
  %108 = sext i32 %107 to i64
  %109 = call i8* @calloc(i64 noundef %108, i64 noundef 4) #10
  %110 = bitcast i8* %109 to float*
  %111 = load %struct.RunState*, %struct.RunState** %3, align 8
  %112 = getelementptr inbounds %struct.RunState, %struct.RunState* %111, i32 0, i32 9
  store float* %110, float** %112, align 8
  %113 = load %struct.RunState*, %struct.RunState** %3, align 8
  %114 = getelementptr inbounds %struct.RunState, %struct.RunState* %113, i32 0, i32 0
  %115 = load float*, float** %114, align 8
  %116 = icmp ne float* %115, null
  br i1 %116, label %117, label %162

117:                                              ; preds = %2
  %118 = load %struct.RunState*, %struct.RunState** %3, align 8
  %119 = getelementptr inbounds %struct.RunState, %struct.RunState* %118, i32 0, i32 1
  %120 = load float*, float** %119, align 8
  %121 = icmp ne float* %120, null
  br i1 %121, label %122, label %162

122:                                              ; preds = %117
  %123 = load %struct.RunState*, %struct.RunState** %3, align 8
  %124 = getelementptr inbounds %struct.RunState, %struct.RunState* %123, i32 0, i32 2
  %125 = load float*, float** %124, align 8
  %126 = icmp ne float* %125, null
  br i1 %126, label %127, label %162

127:                                              ; preds = %122
  %128 = load %struct.RunState*, %struct.RunState** %3, align 8
  %129 = getelementptr inbounds %struct.RunState, %struct.RunState* %128, i32 0, i32 3
  %130 = load float*, float** %129, align 8
  %131 = icmp ne float* %130, null
  br i1 %131, label %132, label %162

132:                                              ; preds = %127
  %133 = load %struct.RunState*, %struct.RunState** %3, align 8
  %134 = getelementptr inbounds %struct.RunState, %struct.RunState* %133, i32 0, i32 4
  %135 = load float*, float** %134, align 8
  %136 = icmp ne float* %135, null
  br i1 %136, label %137, label %162

137:                                              ; preds = %132
  %138 = load %struct.RunState*, %struct.RunState** %3, align 8
  %139 = getelementptr inbounds %struct.RunState, %struct.RunState* %138, i32 0, i32 5
  %140 = load float*, float** %139, align 8
  %141 = icmp ne float* %140, null
  br i1 %141, label %142, label %162

142:                                              ; preds = %137
  %143 = load %struct.RunState*, %struct.RunState** %3, align 8
  %144 = getelementptr inbounds %struct.RunState, %struct.RunState* %143, i32 0, i32 10
  %145 = load float*, float** %144, align 8
  %146 = icmp ne float* %145, null
  br i1 %146, label %147, label %162

147:                                              ; preds = %142
  %148 = load %struct.RunState*, %struct.RunState** %3, align 8
  %149 = getelementptr inbounds %struct.RunState, %struct.RunState* %148, i32 0, i32 11
  %150 = load float*, float** %149, align 8
  %151 = icmp ne float* %150, null
  br i1 %151, label %152, label %162

152:                                              ; preds = %147
  %153 = load %struct.RunState*, %struct.RunState** %3, align 8
  %154 = getelementptr inbounds %struct.RunState, %struct.RunState* %153, i32 0, i32 8
  %155 = load float*, float** %154, align 8
  %156 = icmp ne float* %155, null
  br i1 %156, label %157, label %162

157:                                              ; preds = %152
  %158 = load %struct.RunState*, %struct.RunState** %3, align 8
  %159 = getelementptr inbounds %struct.RunState, %struct.RunState* %158, i32 0, i32 9
  %160 = load float*, float** %159, align 8
  %161 = icmp ne float* %160, null
  br i1 %161, label %165, label %162

162:                                              ; preds = %157, %152, %147, %142, %137, %132, %127, %122, %117, %2
  %163 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %164 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %163, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  call void @exit(i32 noundef 1) #11
  unreachable

165:                                              ; preds = %157
  ret void
}

; Function Attrs: allocsize(0,1)
declare i8* @calloc(i64 noundef, i64 noundef) #1

declare i32 @fprintf(%struct.__sFILE* noundef, i8* noundef, ...) #2

; Function Attrs: noreturn
declare void @exit(i32 noundef) #3

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @free_run_state(%struct.RunState* noundef %0) #0 {
  %2 = alloca %struct.RunState*, align 8
  store %struct.RunState* %0, %struct.RunState** %2, align 8
  %3 = load %struct.RunState*, %struct.RunState** %2, align 8
  %4 = getelementptr inbounds %struct.RunState, %struct.RunState* %3, i32 0, i32 0
  %5 = load float*, float** %4, align 8
  %6 = bitcast float* %5 to i8*
  call void @free(i8* noundef %6)
  %7 = load %struct.RunState*, %struct.RunState** %2, align 8
  %8 = getelementptr inbounds %struct.RunState, %struct.RunState* %7, i32 0, i32 1
  %9 = load float*, float** %8, align 8
  %10 = bitcast float* %9 to i8*
  call void @free(i8* noundef %10)
  %11 = load %struct.RunState*, %struct.RunState** %2, align 8
  %12 = getelementptr inbounds %struct.RunState, %struct.RunState* %11, i32 0, i32 2
  %13 = load float*, float** %12, align 8
  %14 = bitcast float* %13 to i8*
  call void @free(i8* noundef %14)
  %15 = load %struct.RunState*, %struct.RunState** %2, align 8
  %16 = getelementptr inbounds %struct.RunState, %struct.RunState* %15, i32 0, i32 3
  %17 = load float*, float** %16, align 8
  %18 = bitcast float* %17 to i8*
  call void @free(i8* noundef %18)
  %19 = load %struct.RunState*, %struct.RunState** %2, align 8
  %20 = getelementptr inbounds %struct.RunState, %struct.RunState* %19, i32 0, i32 4
  %21 = load float*, float** %20, align 8
  %22 = bitcast float* %21 to i8*
  call void @free(i8* noundef %22)
  %23 = load %struct.RunState*, %struct.RunState** %2, align 8
  %24 = getelementptr inbounds %struct.RunState, %struct.RunState* %23, i32 0, i32 5
  %25 = load float*, float** %24, align 8
  %26 = bitcast float* %25 to i8*
  call void @free(i8* noundef %26)
  %27 = load %struct.RunState*, %struct.RunState** %2, align 8
  %28 = getelementptr inbounds %struct.RunState, %struct.RunState* %27, i32 0, i32 8
  %29 = load float*, float** %28, align 8
  %30 = bitcast float* %29 to i8*
  call void @free(i8* noundef %30)
  %31 = load %struct.RunState*, %struct.RunState** %2, align 8
  %32 = getelementptr inbounds %struct.RunState, %struct.RunState* %31, i32 0, i32 9
  %33 = load float*, float** %32, align 8
  %34 = bitcast float* %33 to i8*
  call void @free(i8* noundef %34)
  %35 = load %struct.RunState*, %struct.RunState** %2, align 8
  %36 = getelementptr inbounds %struct.RunState, %struct.RunState* %35, i32 0, i32 10
  %37 = load float*, float** %36, align 8
  %38 = bitcast float* %37 to i8*
  call void @free(i8* noundef %38)
  %39 = load %struct.RunState*, %struct.RunState** %2, align 8
  %40 = getelementptr inbounds %struct.RunState, %struct.RunState* %39, i32 0, i32 11
  %41 = load float*, float** %40, align 8
  %42 = bitcast float* %41 to i8*
  call void @free(i8* noundef %42)
  ret void
}

declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @memory_map_weights(%struct.TransformerWeights* noundef %0, %struct.Config* noundef %1, float* noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.TransformerWeights*, align 8
  %6 = alloca %struct.Config*, align 8
  %7 = alloca float*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.TransformerWeights* %0, %struct.TransformerWeights** %5, align 8
  store %struct.Config* %1, %struct.Config** %6, align 8
  store float* %2, float** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.Config*, %struct.Config** %6, align 8
  %12 = getelementptr inbounds %struct.Config, %struct.Config* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.Config*, %struct.Config** %6, align 8
  %15 = getelementptr inbounds %struct.Config, %struct.Config* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = sdiv i32 %13, %16
  store i32 %17, i32* %9, align 4
  %18 = load %struct.Config*, %struct.Config** %6, align 8
  %19 = getelementptr inbounds %struct.Config, %struct.Config* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %10, align 8
  %22 = load float*, float** %7, align 8
  %23 = load %struct.TransformerWeights*, %struct.TransformerWeights** %5, align 8
  %24 = getelementptr inbounds %struct.TransformerWeights, %struct.TransformerWeights* %23, i32 0, i32 0
  store float* %22, float** %24, align 8
  %25 = load %struct.Config*, %struct.Config** %6, align 8
  %26 = getelementptr inbounds %struct.Config, %struct.Config* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.Config*, %struct.Config** %6, align 8
  %29 = getelementptr inbounds %struct.Config, %struct.Config* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = mul nsw i32 %27, %30
  %32 = load float*, float** %7, align 8
  %33 = sext i32 %31 to i64
  %34 = getelementptr inbounds float, float* %32, i64 %33
  store float* %34, float** %7, align 8
  %35 = load float*, float** %7, align 8
  %36 = load %struct.TransformerWeights*, %struct.TransformerWeights** %5, align 8
  %37 = getelementptr inbounds %struct.TransformerWeights, %struct.TransformerWeights* %36, i32 0, i32 1
  store float* %35, float** %37, align 8
  %38 = load i64, i64* %10, align 8
  %39 = load %struct.Config*, %struct.Config** %6, align 8
  %40 = getelementptr inbounds %struct.Config, %struct.Config* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = mul i64 %38, %42
  %44 = load float*, float** %7, align 8
  %45 = getelementptr inbounds float, float* %44, i64 %43
  store float* %45, float** %7, align 8
  %46 = load float*, float** %7, align 8
  %47 = load %struct.TransformerWeights*, %struct.TransformerWeights** %5, align 8
  %48 = getelementptr inbounds %struct.TransformerWeights, %struct.TransformerWeights* %47, i32 0, i32 3
  store float* %46, float** %48, align 8
  %49 = load i64, i64* %10, align 8
  %50 = load %struct.Config*, %struct.Config** %6, align 8
  %51 = getelementptr inbounds %struct.Config, %struct.Config* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = sext i32 %52 to i64
  %54 = mul i64 %49, %53
  %55 = load %struct.Config*, %struct.Config** %6, align 8
  %56 = getelementptr inbounds %struct.Config, %struct.Config* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %9, align 4
  %59 = mul nsw i32 %57, %58
  %60 = sext i32 %59 to i64
  %61 = mul i64 %54, %60
  %62 = load float*, float** %7, align 8
  %63 = getelementptr inbounds float, float* %62, i64 %61
  store float* %63, float** %7, align 8
  %64 = load float*, float** %7, align 8
  %65 = load %struct.TransformerWeights*, %struct.TransformerWeights** %5, align 8
  %66 = getelementptr inbounds %struct.TransformerWeights, %struct.TransformerWeights* %65, i32 0, i32 4
  store float* %64, float** %66, align 8
  %67 = load i64, i64* %10, align 8
  %68 = load %struct.Config*, %struct.Config** %6, align 8
  %69 = getelementptr inbounds %struct.Config, %struct.Config* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = sext i32 %70 to i64
  %72 = mul i64 %67, %71
  %73 = load %struct.Config*, %struct.Config** %6, align 8
  %74 = getelementptr inbounds %struct.Config, %struct.Config* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %9, align 4
  %77 = mul nsw i32 %75, %76
  %78 = sext i32 %77 to i64
  %79 = mul i64 %72, %78
  %80 = load float*, float** %7, align 8
  %81 = getelementptr inbounds float, float* %80, i64 %79
  store float* %81, float** %7, align 8
  %82 = load float*, float** %7, align 8
  %83 = load %struct.TransformerWeights*, %struct.TransformerWeights** %5, align 8
  %84 = getelementptr inbounds %struct.TransformerWeights, %struct.TransformerWeights* %83, i32 0, i32 5
  store float* %82, float** %84, align 8
  %85 = load i64, i64* %10, align 8
  %86 = load %struct.Config*, %struct.Config** %6, align 8
  %87 = getelementptr inbounds %struct.Config, %struct.Config* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = sext i32 %88 to i64
  %90 = mul i64 %85, %89
  %91 = load %struct.Config*, %struct.Config** %6, align 8
  %92 = getelementptr inbounds %struct.Config, %struct.Config* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %9, align 4
  %95 = mul nsw i32 %93, %94
  %96 = sext i32 %95 to i64
  %97 = mul i64 %90, %96
  %98 = load float*, float** %7, align 8
  %99 = getelementptr inbounds float, float* %98, i64 %97
  store float* %99, float** %7, align 8
  %100 = load float*, float** %7, align 8
  %101 = load %struct.TransformerWeights*, %struct.TransformerWeights** %5, align 8
  %102 = getelementptr inbounds %struct.TransformerWeights, %struct.TransformerWeights* %101, i32 0, i32 6
  store float* %100, float** %102, align 8
  %103 = load i64, i64* %10, align 8
  %104 = load %struct.Config*, %struct.Config** %6, align 8
  %105 = getelementptr inbounds %struct.Config, %struct.Config* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %9, align 4
  %108 = mul nsw i32 %106, %107
  %109 = sext i32 %108 to i64
  %110 = mul i64 %103, %109
  %111 = load %struct.Config*, %struct.Config** %6, align 8
  %112 = getelementptr inbounds %struct.Config, %struct.Config* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = sext i32 %113 to i64
  %115 = mul i64 %110, %114
  %116 = load float*, float** %7, align 8
  %117 = getelementptr inbounds float, float* %116, i64 %115
  store float* %117, float** %7, align 8
  %118 = load float*, float** %7, align 8
  %119 = load %struct.TransformerWeights*, %struct.TransformerWeights** %5, align 8
  %120 = getelementptr inbounds %struct.TransformerWeights, %struct.TransformerWeights* %119, i32 0, i32 2
  store float* %118, float** %120, align 8
  %121 = load i64, i64* %10, align 8
  %122 = load %struct.Config*, %struct.Config** %6, align 8
  %123 = getelementptr inbounds %struct.Config, %struct.Config* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = sext i32 %124 to i64
  %126 = mul i64 %121, %125
  %127 = load float*, float** %7, align 8
  %128 = getelementptr inbounds float, float* %127, i64 %126
  store float* %128, float** %7, align 8
  %129 = load float*, float** %7, align 8
  %130 = load %struct.TransformerWeights*, %struct.TransformerWeights** %5, align 8
  %131 = getelementptr inbounds %struct.TransformerWeights, %struct.TransformerWeights* %130, i32 0, i32 7
  store float* %129, float** %131, align 8
  %132 = load i64, i64* %10, align 8
  %133 = load %struct.Config*, %struct.Config** %6, align 8
  %134 = getelementptr inbounds %struct.Config, %struct.Config* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = sext i32 %135 to i64
  %137 = mul i64 %132, %136
  %138 = load %struct.Config*, %struct.Config** %6, align 8
  %139 = getelementptr inbounds %struct.Config, %struct.Config* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = sext i32 %140 to i64
  %142 = mul i64 %137, %141
  %143 = load float*, float** %7, align 8
  %144 = getelementptr inbounds float, float* %143, i64 %142
  store float* %144, float** %7, align 8
  %145 = load float*, float** %7, align 8
  %146 = load %struct.TransformerWeights*, %struct.TransformerWeights** %5, align 8
  %147 = getelementptr inbounds %struct.TransformerWeights, %struct.TransformerWeights* %146, i32 0, i32 8
  store float* %145, float** %147, align 8
  %148 = load i64, i64* %10, align 8
  %149 = load %struct.Config*, %struct.Config** %6, align 8
  %150 = getelementptr inbounds %struct.Config, %struct.Config* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = sext i32 %151 to i64
  %153 = mul i64 %148, %152
  %154 = load %struct.Config*, %struct.Config** %6, align 8
  %155 = getelementptr inbounds %struct.Config, %struct.Config* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = sext i32 %156 to i64
  %158 = mul i64 %153, %157
  %159 = load float*, float** %7, align 8
  %160 = getelementptr inbounds float, float* %159, i64 %158
  store float* %160, float** %7, align 8
  %161 = load float*, float** %7, align 8
  %162 = load %struct.TransformerWeights*, %struct.TransformerWeights** %5, align 8
  %163 = getelementptr inbounds %struct.TransformerWeights, %struct.TransformerWeights* %162, i32 0, i32 9
  store float* %161, float** %163, align 8
  %164 = load i64, i64* %10, align 8
  %165 = load %struct.Config*, %struct.Config** %6, align 8
  %166 = getelementptr inbounds %struct.Config, %struct.Config* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = sext i32 %167 to i64
  %169 = mul i64 %164, %168
  %170 = load %struct.Config*, %struct.Config** %6, align 8
  %171 = getelementptr inbounds %struct.Config, %struct.Config* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = sext i32 %172 to i64
  %174 = mul i64 %169, %173
  %175 = load float*, float** %7, align 8
  %176 = getelementptr inbounds float, float* %175, i64 %174
  store float* %176, float** %7, align 8
  %177 = load float*, float** %7, align 8
  %178 = load %struct.TransformerWeights*, %struct.TransformerWeights** %5, align 8
  %179 = getelementptr inbounds %struct.TransformerWeights, %struct.TransformerWeights* %178, i32 0, i32 10
  store float* %177, float** %179, align 8
  %180 = load %struct.Config*, %struct.Config** %6, align 8
  %181 = getelementptr inbounds %struct.Config, %struct.Config* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = load float*, float** %7, align 8
  %184 = sext i32 %182 to i64
  %185 = getelementptr inbounds float, float* %183, i64 %184
  store float* %185, float** %7, align 8
  %186 = load %struct.Config*, %struct.Config** %6, align 8
  %187 = getelementptr inbounds %struct.Config, %struct.Config* %186, i32 0, i32 6
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* %9, align 4
  %190 = mul nsw i32 %188, %189
  %191 = sdiv i32 %190, 2
  %192 = load float*, float** %7, align 8
  %193 = sext i32 %191 to i64
  %194 = getelementptr inbounds float, float* %192, i64 %193
  store float* %194, float** %7, align 8
  %195 = load %struct.Config*, %struct.Config** %6, align 8
  %196 = getelementptr inbounds %struct.Config, %struct.Config* %195, i32 0, i32 6
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* %9, align 4
  %199 = mul nsw i32 %197, %198
  %200 = sdiv i32 %199, 2
  %201 = load float*, float** %7, align 8
  %202 = sext i32 %200 to i64
  %203 = getelementptr inbounds float, float* %201, i64 %202
  store float* %203, float** %7, align 8
  %204 = load i32, i32* %8, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %210

206:                                              ; preds = %4
  %207 = load %struct.TransformerWeights*, %struct.TransformerWeights** %5, align 8
  %208 = getelementptr inbounds %struct.TransformerWeights, %struct.TransformerWeights* %207, i32 0, i32 0
  %209 = load float*, float** %208, align 8
  br label %212

210:                                              ; preds = %4
  %211 = load float*, float** %7, align 8
  br label %212

212:                                              ; preds = %210, %206
  %213 = phi float* [ %209, %206 ], [ %211, %210 ]
  %214 = load %struct.TransformerWeights*, %struct.TransformerWeights** %5, align 8
  %215 = getelementptr inbounds %struct.TransformerWeights, %struct.TransformerWeights* %214, i32 0, i32 11
  store float* %213, float** %215, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @read_checkpoint(i8* noundef %0, %struct.Config* noundef %1, %struct.TransformerWeights* noundef %2, i32* noundef %3, float** noundef %4, i64* noundef %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca %struct.Config*, align 8
  %9 = alloca %struct.TransformerWeights*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca float**, align 8
  %12 = alloca i64*, align 8
  %13 = alloca %struct.__sFILE*, align 8
  %14 = alloca i32, align 4
  %15 = alloca float*, align 8
  store i8* %0, i8** %7, align 8
  store %struct.Config* %1, %struct.Config** %8, align 8
  store %struct.TransformerWeights* %2, %struct.TransformerWeights** %9, align 8
  store i32* %3, i32** %10, align 8
  store float** %4, float*** %11, align 8
  store i64* %5, i64** %12, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = call %struct.__sFILE* @"\01_fopen"(i8* noundef %16, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store %struct.__sFILE* %17, %struct.__sFILE** %13, align 8
  %18 = load %struct.__sFILE*, %struct.__sFILE** %13, align 8
  %19 = icmp ne %struct.__sFILE* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %6
  %21 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %21, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* noundef %22)
  call void @exit(i32 noundef 1) #11
  unreachable

24:                                               ; preds = %6
  %25 = load %struct.Config*, %struct.Config** %8, align 8
  %26 = bitcast %struct.Config* %25 to i8*
  %27 = load %struct.__sFILE*, %struct.__sFILE** %13, align 8
  %28 = call i64 @fread(i8* noundef %26, i64 noundef 28, i64 noundef 1, %struct.__sFILE* noundef %27)
  %29 = icmp ne i64 %28, 1
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  call void @exit(i32 noundef 1) #11
  unreachable

31:                                               ; preds = %24
  %32 = load %struct.Config*, %struct.Config** %8, align 8
  %33 = getelementptr inbounds %struct.Config, %struct.Config* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 4
  %35 = icmp sgt i32 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 1, i32 0
  store i32 %37, i32* %14, align 4
  %38 = load %struct.Config*, %struct.Config** %8, align 8
  %39 = getelementptr inbounds %struct.Config, %struct.Config* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @abs(i32 noundef %40) #12
  %42 = load %struct.Config*, %struct.Config** %8, align 8
  %43 = getelementptr inbounds %struct.Config, %struct.Config* %42, i32 0, i32 5
  store i32 %41, i32* %43, align 4
  %44 = load %struct.__sFILE*, %struct.__sFILE** %13, align 8
  %45 = call i32 @fseek(%struct.__sFILE* noundef %44, i64 noundef 0, i32 noundef 2)
  %46 = load %struct.__sFILE*, %struct.__sFILE** %13, align 8
  %47 = call i64 @ftell(%struct.__sFILE* noundef %46)
  %48 = load i64*, i64** %12, align 8
  store i64 %47, i64* %48, align 8
  %49 = load %struct.__sFILE*, %struct.__sFILE** %13, align 8
  %50 = call i32 @fclose(%struct.__sFILE* noundef %49)
  %51 = load i8*, i8** %7, align 8
  %52 = call i32 (i8*, i32, ...) @"\01_open"(i8* noundef %51, i32 noundef 0)
  %53 = load i32*, i32** %10, align 8
  store i32 %52, i32* %53, align 4
  %54 = load i32*, i32** %10, align 8
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %55, -1
  br i1 %56, label %57, label %60

57:                                               ; preds = %31
  %58 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %59 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %58, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  call void @exit(i32 noundef 1) #11
  unreachable

60:                                               ; preds = %31
  %61 = load i64*, i64** %12, align 8
  %62 = load i64, i64* %61, align 8
  %63 = load i32*, i32** %10, align 8
  %64 = load i32, i32* %63, align 4
  %65 = call i8* @"\01_mmap"(i8* noundef null, i64 noundef %62, i32 noundef 1, i32 noundef 2, i32 noundef %64, i64 noundef 0)
  %66 = bitcast i8* %65 to float*
  %67 = load float**, float*** %11, align 8
  store float* %66, float** %67, align 8
  %68 = load float**, float*** %11, align 8
  %69 = load float*, float** %68, align 8
  %70 = icmp eq float* %69, inttoptr (i64 -1 to float*)
  br i1 %70, label %71, label %74

71:                                               ; preds = %60
  %72 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %73 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %72, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  call void @exit(i32 noundef 1) #11
  unreachable

74:                                               ; preds = %60
  %75 = load float**, float*** %11, align 8
  %76 = load float*, float** %75, align 8
  %77 = getelementptr inbounds float, float* %76, i64 7
  store float* %77, float** %15, align 8
  %78 = load %struct.TransformerWeights*, %struct.TransformerWeights** %9, align 8
  %79 = load %struct.Config*, %struct.Config** %8, align 8
  %80 = load float*, float** %15, align 8
  %81 = load i32, i32* %14, align 4
  call void @memory_map_weights(%struct.TransformerWeights* noundef %78, %struct.Config* noundef %79, float* noundef %80, i32 noundef %81)
  ret void
}

declare %struct.__sFILE* @"\01_fopen"(i8* noundef, i8* noundef) #2

declare i64 @fread(i8* noundef, i64 noundef, i64 noundef, %struct.__sFILE* noundef) #2

; Function Attrs: nounwind readnone willreturn
declare i32 @abs(i32 noundef) #4

declare i32 @fseek(%struct.__sFILE* noundef, i64 noundef, i32 noundef) #2

declare i64 @ftell(%struct.__sFILE* noundef) #2

declare i32 @fclose(%struct.__sFILE* noundef) #2

declare i32 @"\01_open"(i8* noundef, i32 noundef, ...) #2

declare i8* @"\01_mmap"(i8* noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @build_transformer(%struct.Transformer* noundef %0, i8* noundef %1) #0 {
  %3 = alloca %struct.Transformer*, align 8
  %4 = alloca i8*, align 8
  store %struct.Transformer* %0, %struct.Transformer** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = load %struct.Transformer*, %struct.Transformer** %3, align 8
  %7 = getelementptr inbounds %struct.Transformer, %struct.Transformer* %6, i32 0, i32 0
  %8 = load %struct.Transformer*, %struct.Transformer** %3, align 8
  %9 = getelementptr inbounds %struct.Transformer, %struct.Transformer* %8, i32 0, i32 1
  %10 = load %struct.Transformer*, %struct.Transformer** %3, align 8
  %11 = getelementptr inbounds %struct.Transformer, %struct.Transformer* %10, i32 0, i32 3
  %12 = load %struct.Transformer*, %struct.Transformer** %3, align 8
  %13 = getelementptr inbounds %struct.Transformer, %struct.Transformer* %12, i32 0, i32 4
  %14 = load %struct.Transformer*, %struct.Transformer** %3, align 8
  %15 = getelementptr inbounds %struct.Transformer, %struct.Transformer* %14, i32 0, i32 5
  call void @read_checkpoint(i8* noundef %5, %struct.Config* noundef %7, %struct.TransformerWeights* noundef %9, i32* noundef %11, float** noundef %13, i64* noundef %15)
  %16 = load %struct.Transformer*, %struct.Transformer** %3, align 8
  %17 = getelementptr inbounds %struct.Transformer, %struct.Transformer* %16, i32 0, i32 2
  %18 = load %struct.Transformer*, %struct.Transformer** %3, align 8
  %19 = getelementptr inbounds %struct.Transformer, %struct.Transformer* %18, i32 0, i32 0
  call void @malloc_run_state(%struct.RunState* noundef %17, %struct.Config* noundef %19)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @free_transformer(%struct.Transformer* noundef %0) #0 {
  %2 = alloca %struct.Transformer*, align 8
  store %struct.Transformer* %0, %struct.Transformer** %2, align 8
  %3 = load %struct.Transformer*, %struct.Transformer** %2, align 8
  %4 = getelementptr inbounds %struct.Transformer, %struct.Transformer* %3, i32 0, i32 4
  %5 = load float*, float** %4, align 8
  %6 = icmp ne float* %5, inttoptr (i64 -1 to float*)
  br i1 %6, label %7, label %16

7:                                                ; preds = %1
  %8 = load %struct.Transformer*, %struct.Transformer** %2, align 8
  %9 = getelementptr inbounds %struct.Transformer, %struct.Transformer* %8, i32 0, i32 4
  %10 = load float*, float** %9, align 8
  %11 = bitcast float* %10 to i8*
  %12 = load %struct.Transformer*, %struct.Transformer** %2, align 8
  %13 = getelementptr inbounds %struct.Transformer, %struct.Transformer* %12, i32 0, i32 5
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @"\01_munmap"(i8* noundef %11, i64 noundef %14)
  br label %16

16:                                               ; preds = %7, %1
  %17 = load %struct.Transformer*, %struct.Transformer** %2, align 8
  %18 = getelementptr inbounds %struct.Transformer, %struct.Transformer* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, -1
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load %struct.Transformer*, %struct.Transformer** %2, align 8
  %23 = getelementptr inbounds %struct.Transformer, %struct.Transformer* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @"\01_close"(i32 noundef %24)
  br label %26

26:                                               ; preds = %21, %16
  %27 = load %struct.Transformer*, %struct.Transformer** %2, align 8
  %28 = getelementptr inbounds %struct.Transformer, %struct.Transformer* %27, i32 0, i32 2
  call void @free_run_state(%struct.RunState* noundef %28)
  ret void
}

declare i32 @"\01_munmap"(i8* noundef, i64 noundef) #2

declare i32 @"\01_close"(i32 noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @rmsnorm(float* noundef %0, float* noundef %1, float* noundef %2, i32 noundef %3) #0 {
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store float* %0, float** %5, align 8
  store float* %1, float** %6, align 8
  store float* %2, float** %7, align 8
  store i32 %3, i32* %8, align 4
  store float 0.000000e+00, float* %9, align 4
  store i32 0, i32* %10, align 4
  br label %12

12:                                               ; preds = %29, %4
  %13 = load i32, i32* %10, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %32

16:                                               ; preds = %12
  %17 = load float*, float** %6, align 8
  %18 = load i32, i32* %10, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds float, float* %17, i64 %19
  %21 = load float, float* %20, align 4
  %22 = load float*, float** %6, align 8
  %23 = load i32, i32* %10, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds float, float* %22, i64 %24
  %26 = load float, float* %25, align 4
  %27 = load float, float* %9, align 4
  %28 = call float @llvm.fmuladd.f32(float %21, float %26, float %27)
  store float %28, float* %9, align 4
  br label %29

29:                                               ; preds = %16
  %30 = load i32, i32* %10, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %10, align 4
  br label %12, !llvm.loop !10

32:                                               ; preds = %12
  %33 = load i32, i32* %8, align 4
  %34 = sitofp i32 %33 to float
  %35 = load float, float* %9, align 4
  %36 = fdiv float %35, %34
  store float %36, float* %9, align 4
  %37 = load float, float* %9, align 4
  %38 = fadd float %37, 0x3EE4F8B580000000
  store float %38, float* %9, align 4
  %39 = load float, float* %9, align 4
  %40 = call float @llvm.sqrt.f32(float %39)
  %41 = fdiv float 1.000000e+00, %40
  store float %41, float* %9, align 4
  store i32 0, i32* %11, align 4
  br label %42

42:                                               ; preds = %64, %32
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %67

46:                                               ; preds = %42
  %47 = load float*, float** %7, align 8
  %48 = load i32, i32* %11, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds float, float* %47, i64 %49
  %51 = load float, float* %50, align 4
  %52 = load float, float* %9, align 4
  %53 = load float*, float** %6, align 8
  %54 = load i32, i32* %11, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds float, float* %53, i64 %55
  %57 = load float, float* %56, align 4
  %58 = fmul float %52, %57
  %59 = fmul float %51, %58
  %60 = load float*, float** %5, align 8
  %61 = load i32, i32* %11, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds float, float* %60, i64 %62
  store float %59, float* %63, align 4
  br label %64

64:                                               ; preds = %46
  %65 = load i32, i32* %11, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %11, align 4
  br label %42, !llvm.loop !12

67:                                               ; preds = %42
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.sqrt.f32(float) #5

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @softmax(float* noundef %0, i32 noundef %1) #0 {
  %3 = alloca float*, align 8
  %4 = alloca i32, align 4
  %5 = alloca float, align 4
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store float* %0, float** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load float*, float** %3, align 8
  %11 = getelementptr inbounds float, float* %10, i64 0
  %12 = load float, float* %11, align 4
  store float %12, float* %5, align 4
  store i32 1, i32* %6, align 4
  br label %13

13:                                               ; preds = %32, %2
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %35

17:                                               ; preds = %13
  %18 = load float*, float** %3, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds float, float* %18, i64 %20
  %22 = load float, float* %21, align 4
  %23 = load float, float* %5, align 4
  %24 = fcmp ogt float %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %17
  %26 = load float*, float** %3, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds float, float* %26, i64 %28
  %30 = load float, float* %29, align 4
  store float %30, float* %5, align 4
  br label %31

31:                                               ; preds = %25, %17
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %6, align 4
  br label %13, !llvm.loop !13

35:                                               ; preds = %13
  store float 0.000000e+00, float* %7, align 4
  store i32 0, i32* %8, align 4
  br label %36

36:                                               ; preds = %60, %35
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %63

40:                                               ; preds = %36
  %41 = load float*, float** %3, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds float, float* %41, i64 %43
  %45 = load float, float* %44, align 4
  %46 = load float, float* %5, align 4
  %47 = fsub float %45, %46
  %48 = call float @llvm.exp.f32(float %47)
  %49 = load float*, float** %3, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds float, float* %49, i64 %51
  store float %48, float* %52, align 4
  %53 = load float*, float** %3, align 8
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds float, float* %53, i64 %55
  %57 = load float, float* %56, align 4
  %58 = load float, float* %7, align 4
  %59 = fadd float %58, %57
  store float %59, float* %7, align 4
  br label %60

60:                                               ; preds = %40
  %61 = load i32, i32* %8, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %8, align 4
  br label %36, !llvm.loop !14

63:                                               ; preds = %36
  store i32 0, i32* %9, align 4
  br label %64

64:                                               ; preds = %76, %63
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %4, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %79

68:                                               ; preds = %64
  %69 = load float, float* %7, align 4
  %70 = load float*, float** %3, align 8
  %71 = load i32, i32* %9, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds float, float* %70, i64 %72
  %74 = load float, float* %73, align 4
  %75 = fdiv float %74, %69
  store float %75, float* %73, align 4
  br label %76

76:                                               ; preds = %68
  %77 = load i32, i32* %9, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %9, align 4
  br label %64, !llvm.loop !15

79:                                               ; preds = %64
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.exp.f32(float) #5

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @matmul(float* noundef %0, float* noundef %1, float* noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca float, align 4
  %13 = alloca i32, align 4
  store float* %0, float** %6, align 8
  store float* %1, float** %7, align 8
  store float* %2, float** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %14

14:                                               ; preds = %49, %5
  %15 = load i32, i32* %11, align 4
  %16 = load i32, i32* %10, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %52

18:                                               ; preds = %14
  store float 0.000000e+00, float* %12, align 4
  store i32 0, i32* %13, align 4
  br label %19

19:                                               ; preds = %40, %18
  %20 = load i32, i32* %13, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %43

23:                                               ; preds = %19
  %24 = load float*, float** %8, align 8
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* %9, align 4
  %27 = mul nsw i32 %25, %26
  %28 = load i32, i32* %13, align 4
  %29 = add nsw i32 %27, %28
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds float, float* %24, i64 %30
  %32 = load float, float* %31, align 4
  %33 = load float*, float** %7, align 8
  %34 = load i32, i32* %13, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds float, float* %33, i64 %35
  %37 = load float, float* %36, align 4
  %38 = load float, float* %12, align 4
  %39 = call float @llvm.fmuladd.f32(float %32, float %37, float %38)
  store float %39, float* %12, align 4
  br label %40

40:                                               ; preds = %23
  %41 = load i32, i32* %13, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %13, align 4
  br label %19, !llvm.loop !16

43:                                               ; preds = %19
  %44 = load float, float* %12, align 4
  %45 = load float*, float** %6, align 8
  %46 = load i32, i32* %11, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds float, float* %45, i64 %47
  store float %44, float* %48, align 4
  br label %49

49:                                               ; preds = %43
  %50 = load i32, i32* %11, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %11, align 4
  br label %14, !llvm.loop !17

52:                                               ; preds = %14
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define float* @forward(%struct.Transformer* noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.Transformer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.Config*, align 8
  %8 = alloca %struct.TransformerWeights*, align 8
  %9 = alloca %struct.RunState*, align 8
  %10 = alloca float*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca float*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  %24 = alloca float, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca float*, align 8
  %28 = alloca float, align 4
  %29 = alloca float, align 4
  %30 = alloca i32, align 4
  %31 = alloca float*, align 8
  %32 = alloca float*, align 8
  %33 = alloca i32, align 4
  %34 = alloca float*, align 8
  %35 = alloca float, align 4
  %36 = alloca i32, align 4
  %37 = alloca float*, align 8
  %38 = alloca i32, align 4
  %39 = alloca float*, align 8
  %40 = alloca float, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca float, align 4
  %45 = alloca i32, align 4
  store %struct.Transformer* %0, %struct.Transformer** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %46 = load %struct.Transformer*, %struct.Transformer** %4, align 8
  %47 = getelementptr inbounds %struct.Transformer, %struct.Transformer* %46, i32 0, i32 0
  store %struct.Config* %47, %struct.Config** %7, align 8
  %48 = load %struct.Transformer*, %struct.Transformer** %4, align 8
  %49 = getelementptr inbounds %struct.Transformer, %struct.Transformer* %48, i32 0, i32 1
  store %struct.TransformerWeights* %49, %struct.TransformerWeights** %8, align 8
  %50 = load %struct.Transformer*, %struct.Transformer** %4, align 8
  %51 = getelementptr inbounds %struct.Transformer, %struct.Transformer* %50, i32 0, i32 2
  store %struct.RunState* %51, %struct.RunState** %9, align 8
  %52 = load %struct.RunState*, %struct.RunState** %9, align 8
  %53 = getelementptr inbounds %struct.RunState, %struct.RunState* %52, i32 0, i32 0
  %54 = load float*, float** %53, align 8
  store float* %54, float** %10, align 8
  %55 = load %struct.Config*, %struct.Config** %7, align 8
  %56 = getelementptr inbounds %struct.Config, %struct.Config* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %11, align 4
  %58 = load %struct.Config*, %struct.Config** %7, align 8
  %59 = getelementptr inbounds %struct.Config, %struct.Config* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.Config*, %struct.Config** %7, align 8
  %62 = getelementptr inbounds %struct.Config, %struct.Config* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = mul nsw i32 %60, %63
  %65 = load %struct.Config*, %struct.Config** %7, align 8
  %66 = getelementptr inbounds %struct.Config, %struct.Config* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = sdiv i32 %64, %67
  store i32 %68, i32* %12, align 4
  %69 = load %struct.Config*, %struct.Config** %7, align 8
  %70 = getelementptr inbounds %struct.Config, %struct.Config* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.Config*, %struct.Config** %7, align 8
  %73 = getelementptr inbounds %struct.Config, %struct.Config* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 4
  %75 = sdiv i32 %71, %74
  store i32 %75, i32* %13, align 4
  %76 = load %struct.Config*, %struct.Config** %7, align 8
  %77 = getelementptr inbounds %struct.Config, %struct.Config* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %14, align 4
  %79 = load i32, i32* %11, align 4
  %80 = load %struct.Config*, %struct.Config** %7, align 8
  %81 = getelementptr inbounds %struct.Config, %struct.Config* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = sdiv i32 %79, %82
  store i32 %83, i32* %15, align 4
  %84 = load %struct.TransformerWeights*, %struct.TransformerWeights** %8, align 8
  %85 = getelementptr inbounds %struct.TransformerWeights, %struct.TransformerWeights* %84, i32 0, i32 0
  %86 = load float*, float** %85, align 8
  %87 = load i32, i32* %5, align 4
  %88 = load i32, i32* %11, align 4
  %89 = mul nsw i32 %87, %88
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds float, float* %86, i64 %90
  store float* %91, float** %16, align 8
  %92 = load float*, float** %10, align 8
  %93 = bitcast float* %92 to i8*
  %94 = load float*, float** %16, align 8
  %95 = bitcast float* %94 to i8*
  %96 = load i32, i32* %11, align 4
  %97 = sext i32 %96 to i64
  %98 = mul i64 %97, 4
  %99 = load float*, float** %10, align 8
  %100 = bitcast float* %99 to i8*
  %101 = call i64 @llvm.objectsize.i64.p0i8(i8* %100, i1 false, i1 true, i1 false)
  %102 = call i8* @__memcpy_chk(i8* noundef %93, i8* noundef %95, i64 noundef %98, i64 noundef %101) #13
  store i64 0, i64* %17, align 8
  br label %103

103:                                              ; preds = %635, %3
  %104 = load i64, i64* %17, align 8
  %105 = load %struct.Config*, %struct.Config** %7, align 8
  %106 = getelementptr inbounds %struct.Config, %struct.Config* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = sext i32 %107 to i64
  %109 = icmp ult i64 %104, %108
  br i1 %109, label %110, label %638

110:                                              ; preds = %103
  %111 = load %struct.RunState*, %struct.RunState** %9, align 8
  %112 = getelementptr inbounds %struct.RunState, %struct.RunState* %111, i32 0, i32 1
  %113 = load float*, float** %112, align 8
  %114 = load float*, float** %10, align 8
  %115 = load %struct.TransformerWeights*, %struct.TransformerWeights** %8, align 8
  %116 = getelementptr inbounds %struct.TransformerWeights, %struct.TransformerWeights* %115, i32 0, i32 1
  %117 = load float*, float** %116, align 8
  %118 = load i64, i64* %17, align 8
  %119 = load i32, i32* %11, align 4
  %120 = sext i32 %119 to i64
  %121 = mul i64 %118, %120
  %122 = getelementptr inbounds float, float* %117, i64 %121
  %123 = load i32, i32* %11, align 4
  call void @rmsnorm(float* noundef %113, float* noundef %114, float* noundef %122, i32 noundef %123)
  %124 = load i64, i64* %17, align 8
  %125 = load %struct.Config*, %struct.Config** %7, align 8
  %126 = getelementptr inbounds %struct.Config, %struct.Config* %125, i32 0, i32 6
  %127 = load i32, i32* %126, align 4
  %128 = sext i32 %127 to i64
  %129 = mul i64 %124, %128
  %130 = load i32, i32* %12, align 4
  %131 = sext i32 %130 to i64
  %132 = mul i64 %129, %131
  %133 = trunc i64 %132 to i32
  store i32 %133, i32* %18, align 4
  %134 = load %struct.RunState*, %struct.RunState** %9, align 8
  %135 = getelementptr inbounds %struct.RunState, %struct.RunState* %134, i32 0, i32 10
  %136 = load float*, float** %135, align 8
  %137 = load i32, i32* %18, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds float, float* %136, i64 %138
  %140 = load i32, i32* %6, align 4
  %141 = load i32, i32* %12, align 4
  %142 = mul nsw i32 %140, %141
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds float, float* %139, i64 %143
  %145 = load %struct.RunState*, %struct.RunState** %9, align 8
  %146 = getelementptr inbounds %struct.RunState, %struct.RunState* %145, i32 0, i32 6
  store float* %144, float** %146, align 8
  %147 = load %struct.RunState*, %struct.RunState** %9, align 8
  %148 = getelementptr inbounds %struct.RunState, %struct.RunState* %147, i32 0, i32 11
  %149 = load float*, float** %148, align 8
  %150 = load i32, i32* %18, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds float, float* %149, i64 %151
  %153 = load i32, i32* %6, align 4
  %154 = load i32, i32* %12, align 4
  %155 = mul nsw i32 %153, %154
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds float, float* %152, i64 %156
  %158 = load %struct.RunState*, %struct.RunState** %9, align 8
  %159 = getelementptr inbounds %struct.RunState, %struct.RunState* %158, i32 0, i32 7
  store float* %157, float** %159, align 8
  %160 = load %struct.RunState*, %struct.RunState** %9, align 8
  %161 = getelementptr inbounds %struct.RunState, %struct.RunState* %160, i32 0, i32 5
  %162 = load float*, float** %161, align 8
  %163 = load %struct.RunState*, %struct.RunState** %9, align 8
  %164 = getelementptr inbounds %struct.RunState, %struct.RunState* %163, i32 0, i32 1
  %165 = load float*, float** %164, align 8
  %166 = load %struct.TransformerWeights*, %struct.TransformerWeights** %8, align 8
  %167 = getelementptr inbounds %struct.TransformerWeights, %struct.TransformerWeights* %166, i32 0, i32 3
  %168 = load float*, float** %167, align 8
  %169 = load i64, i64* %17, align 8
  %170 = load i32, i32* %11, align 4
  %171 = sext i32 %170 to i64
  %172 = mul i64 %169, %171
  %173 = load i32, i32* %11, align 4
  %174 = sext i32 %173 to i64
  %175 = mul i64 %172, %174
  %176 = getelementptr inbounds float, float* %168, i64 %175
  %177 = load i32, i32* %11, align 4
  %178 = load i32, i32* %11, align 4
  call void @matmul(float* noundef %162, float* noundef %165, float* noundef %176, i32 noundef %177, i32 noundef %178)
  %179 = load %struct.RunState*, %struct.RunState** %9, align 8
  %180 = getelementptr inbounds %struct.RunState, %struct.RunState* %179, i32 0, i32 6
  %181 = load float*, float** %180, align 8
  %182 = load %struct.RunState*, %struct.RunState** %9, align 8
  %183 = getelementptr inbounds %struct.RunState, %struct.RunState* %182, i32 0, i32 1
  %184 = load float*, float** %183, align 8
  %185 = load %struct.TransformerWeights*, %struct.TransformerWeights** %8, align 8
  %186 = getelementptr inbounds %struct.TransformerWeights, %struct.TransformerWeights* %185, i32 0, i32 4
  %187 = load float*, float** %186, align 8
  %188 = load i64, i64* %17, align 8
  %189 = load i32, i32* %11, align 4
  %190 = sext i32 %189 to i64
  %191 = mul i64 %188, %190
  %192 = load i32, i32* %12, align 4
  %193 = sext i32 %192 to i64
  %194 = mul i64 %191, %193
  %195 = getelementptr inbounds float, float* %187, i64 %194
  %196 = load i32, i32* %11, align 4
  %197 = load i32, i32* %12, align 4
  call void @matmul(float* noundef %181, float* noundef %184, float* noundef %195, i32 noundef %196, i32 noundef %197)
  %198 = load %struct.RunState*, %struct.RunState** %9, align 8
  %199 = getelementptr inbounds %struct.RunState, %struct.RunState* %198, i32 0, i32 7
  %200 = load float*, float** %199, align 8
  %201 = load %struct.RunState*, %struct.RunState** %9, align 8
  %202 = getelementptr inbounds %struct.RunState, %struct.RunState* %201, i32 0, i32 1
  %203 = load float*, float** %202, align 8
  %204 = load %struct.TransformerWeights*, %struct.TransformerWeights** %8, align 8
  %205 = getelementptr inbounds %struct.TransformerWeights, %struct.TransformerWeights* %204, i32 0, i32 5
  %206 = load float*, float** %205, align 8
  %207 = load i64, i64* %17, align 8
  %208 = load i32, i32* %11, align 4
  %209 = sext i32 %208 to i64
  %210 = mul i64 %207, %209
  %211 = load i32, i32* %12, align 4
  %212 = sext i32 %211 to i64
  %213 = mul i64 %210, %212
  %214 = getelementptr inbounds float, float* %206, i64 %213
  %215 = load i32, i32* %11, align 4
  %216 = load i32, i32* %12, align 4
  call void @matmul(float* noundef %200, float* noundef %203, float* noundef %214, i32 noundef %215, i32 noundef %216)
  store i32 0, i32* %19, align 4
  br label %217

217:                                              ; preds = %299, %110
  %218 = load i32, i32* %19, align 4
  %219 = load i32, i32* %11, align 4
  %220 = icmp slt i32 %218, %219
  br i1 %220, label %221, label %302

221:                                              ; preds = %217
  %222 = load i32, i32* %19, align 4
  %223 = load i32, i32* %15, align 4
  %224 = srem i32 %222, %223
  store i32 %224, i32* %20, align 4
  %225 = load i32, i32* %20, align 4
  %226 = sitofp i32 %225 to float
  %227 = load i32, i32* %15, align 4
  %228 = sitofp i32 %227 to float
  %229 = fdiv float %226, %228
  %230 = call float @llvm.pow.f32(float 1.000000e+04, float %229)
  %231 = fdiv float 1.000000e+00, %230
  store float %231, float* %21, align 4
  %232 = load i32, i32* %6, align 4
  %233 = sitofp i32 %232 to float
  %234 = load float, float* %21, align 4
  %235 = fmul float %233, %234
  store float %235, float* %22, align 4
  %236 = load float, float* %22, align 4
  %237 = call float @llvm.cos.f32(float %236)
  store float %237, float* %23, align 4
  %238 = load float, float* %22, align 4
  %239 = call float @llvm.sin.f32(float %238)
  store float %239, float* %24, align 4
  %240 = load i32, i32* %19, align 4
  %241 = load i32, i32* %12, align 4
  %242 = icmp slt i32 %240, %241
  %243 = zext i1 %242 to i64
  %244 = select i1 %242, i32 2, i32 1
  store i32 %244, i32* %25, align 4
  store i32 0, i32* %26, align 4
  br label %245

245:                                              ; preds = %295, %221
  %246 = load i32, i32* %26, align 4
  %247 = load i32, i32* %25, align 4
  %248 = icmp slt i32 %246, %247
  br i1 %248, label %249, label %298

249:                                              ; preds = %245
  %250 = load i32, i32* %26, align 4
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %252, label %256

252:                                              ; preds = %249
  %253 = load %struct.RunState*, %struct.RunState** %9, align 8
  %254 = getelementptr inbounds %struct.RunState, %struct.RunState* %253, i32 0, i32 5
  %255 = load float*, float** %254, align 8
  br label %260

256:                                              ; preds = %249
  %257 = load %struct.RunState*, %struct.RunState** %9, align 8
  %258 = getelementptr inbounds %struct.RunState, %struct.RunState* %257, i32 0, i32 6
  %259 = load float*, float** %258, align 8
  br label %260

260:                                              ; preds = %256, %252
  %261 = phi float* [ %255, %252 ], [ %259, %256 ]
  store float* %261, float** %27, align 8
  %262 = load float*, float** %27, align 8
  %263 = load i32, i32* %19, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds float, float* %262, i64 %264
  %266 = load float, float* %265, align 4
  store float %266, float* %28, align 4
  %267 = load float*, float** %27, align 8
  %268 = load i32, i32* %19, align 4
  %269 = add nsw i32 %268, 1
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds float, float* %267, i64 %270
  %272 = load float, float* %271, align 4
  store float %272, float* %29, align 4
  %273 = load float, float* %28, align 4
  %274 = load float, float* %23, align 4
  %275 = load float, float* %29, align 4
  %276 = load float, float* %24, align 4
  %277 = fmul float %275, %276
  %278 = fneg float %277
  %279 = call float @llvm.fmuladd.f32(float %273, float %274, float %278)
  %280 = load float*, float** %27, align 8
  %281 = load i32, i32* %19, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds float, float* %280, i64 %282
  store float %279, float* %283, align 4
  %284 = load float, float* %28, align 4
  %285 = load float, float* %24, align 4
  %286 = load float, float* %29, align 4
  %287 = load float, float* %23, align 4
  %288 = fmul float %286, %287
  %289 = call float @llvm.fmuladd.f32(float %284, float %285, float %288)
  %290 = load float*, float** %27, align 8
  %291 = load i32, i32* %19, align 4
  %292 = add nsw i32 %291, 1
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds float, float* %290, i64 %293
  store float %289, float* %294, align 4
  br label %295

295:                                              ; preds = %260
  %296 = load i32, i32* %26, align 4
  %297 = add nsw i32 %296, 1
  store i32 %297, i32* %26, align 4
  br label %245, !llvm.loop !18

298:                                              ; preds = %245
  br label %299

299:                                              ; preds = %298
  %300 = load i32, i32* %19, align 4
  %301 = add nsw i32 %300, 2
  store i32 %301, i32* %19, align 4
  br label %217, !llvm.loop !19

302:                                              ; preds = %217
  store i32 0, i32* %30, align 4
  br label %303

303:                                              ; preds = %459, %302
  %304 = load i32, i32* %30, align 4
  %305 = load %struct.Config*, %struct.Config** %7, align 8
  %306 = getelementptr inbounds %struct.Config, %struct.Config* %305, i32 0, i32 3
  %307 = load i32, i32* %306, align 4
  %308 = icmp slt i32 %304, %307
  br i1 %308, label %309, label %462

309:                                              ; preds = %303
  %310 = load %struct.RunState*, %struct.RunState** %9, align 8
  %311 = getelementptr inbounds %struct.RunState, %struct.RunState* %310, i32 0, i32 5
  %312 = load float*, float** %311, align 8
  %313 = load i32, i32* %30, align 4
  %314 = load i32, i32* %15, align 4
  %315 = mul nsw i32 %313, %314
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds float, float* %312, i64 %316
  store float* %317, float** %31, align 8
  %318 = load %struct.RunState*, %struct.RunState** %9, align 8
  %319 = getelementptr inbounds %struct.RunState, %struct.RunState* %318, i32 0, i32 8
  %320 = load float*, float** %319, align 8
  %321 = load i32, i32* %30, align 4
  %322 = load %struct.Config*, %struct.Config** %7, align 8
  %323 = getelementptr inbounds %struct.Config, %struct.Config* %322, i32 0, i32 6
  %324 = load i32, i32* %323, align 4
  %325 = mul nsw i32 %321, %324
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds float, float* %320, i64 %326
  store float* %327, float** %32, align 8
  store i32 0, i32* %33, align 4
  br label %328

328:                                              ; preds = %382, %309
  %329 = load i32, i32* %33, align 4
  %330 = load i32, i32* %6, align 4
  %331 = icmp sle i32 %329, %330
  br i1 %331, label %332, label %385

332:                                              ; preds = %328
  %333 = load %struct.RunState*, %struct.RunState** %9, align 8
  %334 = getelementptr inbounds %struct.RunState, %struct.RunState* %333, i32 0, i32 10
  %335 = load float*, float** %334, align 8
  %336 = load i32, i32* %18, align 4
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds float, float* %335, i64 %337
  %339 = load i32, i32* %33, align 4
  %340 = load i32, i32* %12, align 4
  %341 = mul nsw i32 %339, %340
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds float, float* %338, i64 %342
  %344 = load i32, i32* %30, align 4
  %345 = load i32, i32* %13, align 4
  %346 = sdiv i32 %344, %345
  %347 = load i32, i32* %15, align 4
  %348 = mul nsw i32 %346, %347
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds float, float* %343, i64 %349
  store float* %350, float** %34, align 8
  store float 0.000000e+00, float* %35, align 4
  store i32 0, i32* %36, align 4
  br label %351

351:                                              ; preds = %368, %332
  %352 = load i32, i32* %36, align 4
  %353 = load i32, i32* %15, align 4
  %354 = icmp slt i32 %352, %353
  br i1 %354, label %355, label %371

355:                                              ; preds = %351
  %356 = load float*, float** %31, align 8
  %357 = load i32, i32* %36, align 4
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds float, float* %356, i64 %358
  %360 = load float, float* %359, align 4
  %361 = load float*, float** %34, align 8
  %362 = load i32, i32* %36, align 4
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds float, float* %361, i64 %363
  %365 = load float, float* %364, align 4
  %366 = load float, float* %35, align 4
  %367 = call float @llvm.fmuladd.f32(float %360, float %365, float %366)
  store float %367, float* %35, align 4
  br label %368

368:                                              ; preds = %355
  %369 = load i32, i32* %36, align 4
  %370 = add nsw i32 %369, 1
  store i32 %370, i32* %36, align 4
  br label %351, !llvm.loop !20

371:                                              ; preds = %351
  %372 = load i32, i32* %15, align 4
  %373 = sitofp i32 %372 to float
  %374 = call float @llvm.sqrt.f32(float %373)
  %375 = load float, float* %35, align 4
  %376 = fdiv float %375, %374
  store float %376, float* %35, align 4
  %377 = load float, float* %35, align 4
  %378 = load float*, float** %32, align 8
  %379 = load i32, i32* %33, align 4
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds float, float* %378, i64 %380
  store float %377, float* %381, align 4
  br label %382

382:                                              ; preds = %371
  %383 = load i32, i32* %33, align 4
  %384 = add nsw i32 %383, 1
  store i32 %384, i32* %33, align 4
  br label %328, !llvm.loop !21

385:                                              ; preds = %328
  %386 = load float*, float** %32, align 8
  %387 = load i32, i32* %6, align 4
  %388 = add nsw i32 %387, 1
  call void @softmax(float* noundef %386, i32 noundef %388)
  %389 = load %struct.RunState*, %struct.RunState** %9, align 8
  %390 = getelementptr inbounds %struct.RunState, %struct.RunState* %389, i32 0, i32 1
  %391 = load float*, float** %390, align 8
  %392 = load i32, i32* %30, align 4
  %393 = load i32, i32* %15, align 4
  %394 = mul nsw i32 %392, %393
  %395 = sext i32 %394 to i64
  %396 = getelementptr inbounds float, float* %391, i64 %395
  store float* %396, float** %37, align 8
  %397 = load float*, float** %37, align 8
  %398 = bitcast float* %397 to i8*
  %399 = load i32, i32* %15, align 4
  %400 = sext i32 %399 to i64
  %401 = mul i64 %400, 4
  %402 = load float*, float** %37, align 8
  %403 = bitcast float* %402 to i8*
  %404 = call i64 @llvm.objectsize.i64.p0i8(i8* %403, i1 false, i1 true, i1 false)
  %405 = call i8* @__memset_chk(i8* noundef %398, i32 noundef 0, i64 noundef %401, i64 noundef %404) #13
  store i32 0, i32* %38, align 4
  br label %406

406:                                              ; preds = %455, %385
  %407 = load i32, i32* %38, align 4
  %408 = load i32, i32* %6, align 4
  %409 = icmp sle i32 %407, %408
  br i1 %409, label %410, label %458

410:                                              ; preds = %406
  %411 = load %struct.RunState*, %struct.RunState** %9, align 8
  %412 = getelementptr inbounds %struct.RunState, %struct.RunState* %411, i32 0, i32 11
  %413 = load float*, float** %412, align 8
  %414 = load i32, i32* %18, align 4
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds float, float* %413, i64 %415
  %417 = load i32, i32* %38, align 4
  %418 = load i32, i32* %12, align 4
  %419 = mul nsw i32 %417, %418
  %420 = sext i32 %419 to i64
  %421 = getelementptr inbounds float, float* %416, i64 %420
  %422 = load i32, i32* %30, align 4
  %423 = load i32, i32* %13, align 4
  %424 = sdiv i32 %422, %423
  %425 = load i32, i32* %15, align 4
  %426 = mul nsw i32 %424, %425
  %427 = sext i32 %426 to i64
  %428 = getelementptr inbounds float, float* %421, i64 %427
  store float* %428, float** %39, align 8
  %429 = load float*, float** %32, align 8
  %430 = load i32, i32* %38, align 4
  %431 = sext i32 %430 to i64
  %432 = getelementptr inbounds float, float* %429, i64 %431
  %433 = load float, float* %432, align 4
  store float %433, float* %40, align 4
  store i32 0, i32* %41, align 4
  br label %434

434:                                              ; preds = %451, %410
  %435 = load i32, i32* %41, align 4
  %436 = load i32, i32* %15, align 4
  %437 = icmp slt i32 %435, %436
  br i1 %437, label %438, label %454

438:                                              ; preds = %434
  %439 = load float, float* %40, align 4
  %440 = load float*, float** %39, align 8
  %441 = load i32, i32* %41, align 4
  %442 = sext i32 %441 to i64
  %443 = getelementptr inbounds float, float* %440, i64 %442
  %444 = load float, float* %443, align 4
  %445 = load float*, float** %37, align 8
  %446 = load i32, i32* %41, align 4
  %447 = sext i32 %446 to i64
  %448 = getelementptr inbounds float, float* %445, i64 %447
  %449 = load float, float* %448, align 4
  %450 = call float @llvm.fmuladd.f32(float %439, float %444, float %449)
  store float %450, float* %448, align 4
  br label %451

451:                                              ; preds = %438
  %452 = load i32, i32* %41, align 4
  %453 = add nsw i32 %452, 1
  store i32 %453, i32* %41, align 4
  br label %434, !llvm.loop !22

454:                                              ; preds = %434
  br label %455

455:                                              ; preds = %454
  %456 = load i32, i32* %38, align 4
  %457 = add nsw i32 %456, 1
  store i32 %457, i32* %38, align 4
  br label %406, !llvm.loop !23

458:                                              ; preds = %406
  br label %459

459:                                              ; preds = %458
  %460 = load i32, i32* %30, align 4
  %461 = add nsw i32 %460, 1
  store i32 %461, i32* %30, align 4
  br label %303, !llvm.loop !24

462:                                              ; preds = %303
  %463 = load %struct.RunState*, %struct.RunState** %9, align 8
  %464 = getelementptr inbounds %struct.RunState, %struct.RunState* %463, i32 0, i32 2
  %465 = load float*, float** %464, align 8
  %466 = load %struct.RunState*, %struct.RunState** %9, align 8
  %467 = getelementptr inbounds %struct.RunState, %struct.RunState* %466, i32 0, i32 1
  %468 = load float*, float** %467, align 8
  %469 = load %struct.TransformerWeights*, %struct.TransformerWeights** %8, align 8
  %470 = getelementptr inbounds %struct.TransformerWeights, %struct.TransformerWeights* %469, i32 0, i32 6
  %471 = load float*, float** %470, align 8
  %472 = load i64, i64* %17, align 8
  %473 = load i32, i32* %11, align 4
  %474 = sext i32 %473 to i64
  %475 = mul i64 %472, %474
  %476 = load i32, i32* %11, align 4
  %477 = sext i32 %476 to i64
  %478 = mul i64 %475, %477
  %479 = getelementptr inbounds float, float* %471, i64 %478
  %480 = load i32, i32* %11, align 4
  %481 = load i32, i32* %11, align 4
  call void @matmul(float* noundef %465, float* noundef %468, float* noundef %479, i32 noundef %480, i32 noundef %481)
  store i32 0, i32* %42, align 4
  br label %482

482:                                              ; preds = %500, %462
  %483 = load i32, i32* %42, align 4
  %484 = load i32, i32* %11, align 4
  %485 = icmp slt i32 %483, %484
  br i1 %485, label %486, label %503

486:                                              ; preds = %482
  %487 = load %struct.RunState*, %struct.RunState** %9, align 8
  %488 = getelementptr inbounds %struct.RunState, %struct.RunState* %487, i32 0, i32 2
  %489 = load float*, float** %488, align 8
  %490 = load i32, i32* %42, align 4
  %491 = sext i32 %490 to i64
  %492 = getelementptr inbounds float, float* %489, i64 %491
  %493 = load float, float* %492, align 4
  %494 = load float*, float** %10, align 8
  %495 = load i32, i32* %42, align 4
  %496 = sext i32 %495 to i64
  %497 = getelementptr inbounds float, float* %494, i64 %496
  %498 = load float, float* %497, align 4
  %499 = fadd float %498, %493
  store float %499, float* %497, align 4
  br label %500

500:                                              ; preds = %486
  %501 = load i32, i32* %42, align 4
  %502 = add nsw i32 %501, 1
  store i32 %502, i32* %42, align 4
  br label %482, !llvm.loop !25

503:                                              ; preds = %482
  %504 = load %struct.RunState*, %struct.RunState** %9, align 8
  %505 = getelementptr inbounds %struct.RunState, %struct.RunState* %504, i32 0, i32 1
  %506 = load float*, float** %505, align 8
  %507 = load float*, float** %10, align 8
  %508 = load %struct.TransformerWeights*, %struct.TransformerWeights** %8, align 8
  %509 = getelementptr inbounds %struct.TransformerWeights, %struct.TransformerWeights* %508, i32 0, i32 2
  %510 = load float*, float** %509, align 8
  %511 = load i64, i64* %17, align 8
  %512 = load i32, i32* %11, align 4
  %513 = sext i32 %512 to i64
  %514 = mul i64 %511, %513
  %515 = getelementptr inbounds float, float* %510, i64 %514
  %516 = load i32, i32* %11, align 4
  call void @rmsnorm(float* noundef %506, float* noundef %507, float* noundef %515, i32 noundef %516)
  %517 = load %struct.RunState*, %struct.RunState** %9, align 8
  %518 = getelementptr inbounds %struct.RunState, %struct.RunState* %517, i32 0, i32 3
  %519 = load float*, float** %518, align 8
  %520 = load %struct.RunState*, %struct.RunState** %9, align 8
  %521 = getelementptr inbounds %struct.RunState, %struct.RunState* %520, i32 0, i32 1
  %522 = load float*, float** %521, align 8
  %523 = load %struct.TransformerWeights*, %struct.TransformerWeights** %8, align 8
  %524 = getelementptr inbounds %struct.TransformerWeights, %struct.TransformerWeights* %523, i32 0, i32 7
  %525 = load float*, float** %524, align 8
  %526 = load i64, i64* %17, align 8
  %527 = load i32, i32* %11, align 4
  %528 = sext i32 %527 to i64
  %529 = mul i64 %526, %528
  %530 = load i32, i32* %14, align 4
  %531 = sext i32 %530 to i64
  %532 = mul i64 %529, %531
  %533 = getelementptr inbounds float, float* %525, i64 %532
  %534 = load i32, i32* %11, align 4
  %535 = load i32, i32* %14, align 4
  call void @matmul(float* noundef %519, float* noundef %522, float* noundef %533, i32 noundef %534, i32 noundef %535)
  %536 = load %struct.RunState*, %struct.RunState** %9, align 8
  %537 = getelementptr inbounds %struct.RunState, %struct.RunState* %536, i32 0, i32 4
  %538 = load float*, float** %537, align 8
  %539 = load %struct.RunState*, %struct.RunState** %9, align 8
  %540 = getelementptr inbounds %struct.RunState, %struct.RunState* %539, i32 0, i32 1
  %541 = load float*, float** %540, align 8
  %542 = load %struct.TransformerWeights*, %struct.TransformerWeights** %8, align 8
  %543 = getelementptr inbounds %struct.TransformerWeights, %struct.TransformerWeights* %542, i32 0, i32 9
  %544 = load float*, float** %543, align 8
  %545 = load i64, i64* %17, align 8
  %546 = load i32, i32* %11, align 4
  %547 = sext i32 %546 to i64
  %548 = mul i64 %545, %547
  %549 = load i32, i32* %14, align 4
  %550 = sext i32 %549 to i64
  %551 = mul i64 %548, %550
  %552 = getelementptr inbounds float, float* %544, i64 %551
  %553 = load i32, i32* %11, align 4
  %554 = load i32, i32* %14, align 4
  call void @matmul(float* noundef %538, float* noundef %541, float* noundef %552, i32 noundef %553, i32 noundef %554)
  store i32 0, i32* %43, align 4
  br label %555

555:                                              ; preds = %590, %503
  %556 = load i32, i32* %43, align 4
  %557 = load i32, i32* %14, align 4
  %558 = icmp slt i32 %556, %557
  br i1 %558, label %559, label %593

559:                                              ; preds = %555
  %560 = load %struct.RunState*, %struct.RunState** %9, align 8
  %561 = getelementptr inbounds %struct.RunState, %struct.RunState* %560, i32 0, i32 3
  %562 = load float*, float** %561, align 8
  %563 = load i32, i32* %43, align 4
  %564 = sext i32 %563 to i64
  %565 = getelementptr inbounds float, float* %562, i64 %564
  %566 = load float, float* %565, align 4
  store float %566, float* %44, align 4
  %567 = load float, float* %44, align 4
  %568 = fneg float %567
  %569 = call float @llvm.exp.f32(float %568)
  %570 = fadd float 1.000000e+00, %569
  %571 = fdiv float 1.000000e+00, %570
  %572 = load float, float* %44, align 4
  %573 = fmul float %572, %571
  store float %573, float* %44, align 4
  %574 = load %struct.RunState*, %struct.RunState** %9, align 8
  %575 = getelementptr inbounds %struct.RunState, %struct.RunState* %574, i32 0, i32 4
  %576 = load float*, float** %575, align 8
  %577 = load i32, i32* %43, align 4
  %578 = sext i32 %577 to i64
  %579 = getelementptr inbounds float, float* %576, i64 %578
  %580 = load float, float* %579, align 4
  %581 = load float, float* %44, align 4
  %582 = fmul float %581, %580
  store float %582, float* %44, align 4
  %583 = load float, float* %44, align 4
  %584 = load %struct.RunState*, %struct.RunState** %9, align 8
  %585 = getelementptr inbounds %struct.RunState, %struct.RunState* %584, i32 0, i32 3
  %586 = load float*, float** %585, align 8
  %587 = load i32, i32* %43, align 4
  %588 = sext i32 %587 to i64
  %589 = getelementptr inbounds float, float* %586, i64 %588
  store float %583, float* %589, align 4
  br label %590

590:                                              ; preds = %559
  %591 = load i32, i32* %43, align 4
  %592 = add nsw i32 %591, 1
  store i32 %592, i32* %43, align 4
  br label %555, !llvm.loop !26

593:                                              ; preds = %555
  %594 = load %struct.RunState*, %struct.RunState** %9, align 8
  %595 = getelementptr inbounds %struct.RunState, %struct.RunState* %594, i32 0, i32 1
  %596 = load float*, float** %595, align 8
  %597 = load %struct.RunState*, %struct.RunState** %9, align 8
  %598 = getelementptr inbounds %struct.RunState, %struct.RunState* %597, i32 0, i32 3
  %599 = load float*, float** %598, align 8
  %600 = load %struct.TransformerWeights*, %struct.TransformerWeights** %8, align 8
  %601 = getelementptr inbounds %struct.TransformerWeights, %struct.TransformerWeights* %600, i32 0, i32 8
  %602 = load float*, float** %601, align 8
  %603 = load i64, i64* %17, align 8
  %604 = load i32, i32* %11, align 4
  %605 = sext i32 %604 to i64
  %606 = mul i64 %603, %605
  %607 = load i32, i32* %14, align 4
  %608 = sext i32 %607 to i64
  %609 = mul i64 %606, %608
  %610 = getelementptr inbounds float, float* %602, i64 %609
  %611 = load i32, i32* %14, align 4
  %612 = load i32, i32* %11, align 4
  call void @matmul(float* noundef %596, float* noundef %599, float* noundef %610, i32 noundef %611, i32 noundef %612)
  store i32 0, i32* %45, align 4
  br label %613

613:                                              ; preds = %631, %593
  %614 = load i32, i32* %45, align 4
  %615 = load i32, i32* %11, align 4
  %616 = icmp slt i32 %614, %615
  br i1 %616, label %617, label %634

617:                                              ; preds = %613
  %618 = load %struct.RunState*, %struct.RunState** %9, align 8
  %619 = getelementptr inbounds %struct.RunState, %struct.RunState* %618, i32 0, i32 1
  %620 = load float*, float** %619, align 8
  %621 = load i32, i32* %45, align 4
  %622 = sext i32 %621 to i64
  %623 = getelementptr inbounds float, float* %620, i64 %622
  %624 = load float, float* %623, align 4
  %625 = load float*, float** %10, align 8
  %626 = load i32, i32* %45, align 4
  %627 = sext i32 %626 to i64
  %628 = getelementptr inbounds float, float* %625, i64 %627
  %629 = load float, float* %628, align 4
  %630 = fadd float %629, %624
  store float %630, float* %628, align 4
  br label %631

631:                                              ; preds = %617
  %632 = load i32, i32* %45, align 4
  %633 = add nsw i32 %632, 1
  store i32 %633, i32* %45, align 4
  br label %613, !llvm.loop !27

634:                                              ; preds = %613
  br label %635

635:                                              ; preds = %634
  %636 = load i64, i64* %17, align 8
  %637 = add i64 %636, 1
  store i64 %637, i64* %17, align 8
  br label %103, !llvm.loop !28

638:                                              ; preds = %103
  %639 = load float*, float** %10, align 8
  %640 = load float*, float** %10, align 8
  %641 = load %struct.TransformerWeights*, %struct.TransformerWeights** %8, align 8
  %642 = getelementptr inbounds %struct.TransformerWeights, %struct.TransformerWeights* %641, i32 0, i32 10
  %643 = load float*, float** %642, align 8
  %644 = load i32, i32* %11, align 4
  call void @rmsnorm(float* noundef %639, float* noundef %640, float* noundef %643, i32 noundef %644)
  %645 = load %struct.RunState*, %struct.RunState** %9, align 8
  %646 = getelementptr inbounds %struct.RunState, %struct.RunState* %645, i32 0, i32 9
  %647 = load float*, float** %646, align 8
  %648 = load float*, float** %10, align 8
  %649 = load %struct.TransformerWeights*, %struct.TransformerWeights** %8, align 8
  %650 = getelementptr inbounds %struct.TransformerWeights, %struct.TransformerWeights* %649, i32 0, i32 11
  %651 = load float*, float** %650, align 8
  %652 = load %struct.Config*, %struct.Config** %7, align 8
  %653 = getelementptr inbounds %struct.Config, %struct.Config* %652, i32 0, i32 0
  %654 = load i32, i32* %653, align 4
  %655 = load %struct.Config*, %struct.Config** %7, align 8
  %656 = getelementptr inbounds %struct.Config, %struct.Config* %655, i32 0, i32 5
  %657 = load i32, i32* %656, align 4
  call void @matmul(float* noundef %647, float* noundef %648, float* noundef %651, i32 noundef %654, i32 noundef %657)
  %658 = load %struct.RunState*, %struct.RunState** %9, align 8
  %659 = getelementptr inbounds %struct.RunState, %struct.RunState* %658, i32 0, i32 9
  %660 = load float*, float** %659, align 8
  ret float* %660
}

; Function Attrs: nounwind
declare i8* @__memcpy_chk(i8* noundef, i8* noundef, i64 noundef, i64 noundef) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1 immarg, i1 immarg, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.pow.f32(float, float) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.cos.f32(float) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.sin.f32(float) #5

; Function Attrs: nounwind
declare i8* @__memset_chk(i8* noundef, i32 noundef, i64 noundef, i64 noundef) #6

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @compare_tokens(i8* noundef %0, i8* noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = bitcast i8* %5 to %struct.TokenIndex*
  %7 = getelementptr inbounds %struct.TokenIndex, %struct.TokenIndex* %6, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.TokenIndex*
  %11 = getelementptr inbounds %struct.TokenIndex, %struct.TokenIndex* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = call i32 @strcmp(i8* noundef %8, i8* noundef %12)
  ret i32 %13
}

declare i32 @strcmp(i8* noundef, i8* noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @build_tokenizer(%struct.Tokenizer* noundef %0, i8* noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.Tokenizer*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.__sFILE*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.Tokenizer* %0, %struct.Tokenizer** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.Tokenizer*, %struct.Tokenizer** %4, align 8
  %13 = getelementptr inbounds %struct.Tokenizer, %struct.Tokenizer* %12, i32 0, i32 3
  store i32 %11, i32* %13, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = mul i64 %15, 8
  %17 = call i8* @malloc(i64 noundef %16) #14
  %18 = bitcast i8* %17 to i8**
  %19 = load %struct.Tokenizer*, %struct.Tokenizer** %4, align 8
  %20 = getelementptr inbounds %struct.Tokenizer, %struct.Tokenizer* %19, i32 0, i32 0
  store i8** %18, i8*** %20, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = mul i64 %22, 4
  %24 = call i8* @malloc(i64 noundef %23) #14
  %25 = bitcast i8* %24 to float*
  %26 = load %struct.Tokenizer*, %struct.Tokenizer** %4, align 8
  %27 = getelementptr inbounds %struct.Tokenizer, %struct.Tokenizer* %26, i32 0, i32 1
  store float* %25, float** %27, align 8
  %28 = load %struct.Tokenizer*, %struct.Tokenizer** %4, align 8
  %29 = getelementptr inbounds %struct.Tokenizer, %struct.Tokenizer* %28, i32 0, i32 2
  store %struct.TokenIndex* null, %struct.TokenIndex** %29, align 8
  store i32 0, i32* %7, align 4
  br label %30

30:                                               ; preds = %49, %3
  %31 = load i32, i32* %7, align 4
  %32 = icmp slt i32 %31, 256
  br i1 %32, label %33, label %52

33:                                               ; preds = %30
  %34 = load i32, i32* %7, align 4
  %35 = trunc i32 %34 to i8
  %36 = load %struct.Tokenizer*, %struct.Tokenizer** %4, align 8
  %37 = getelementptr inbounds %struct.Tokenizer, %struct.Tokenizer* %36, i32 0, i32 5
  %38 = load i32, i32* %7, align 4
  %39 = mul nsw i32 %38, 2
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [512 x i8], [512 x i8]* %37, i64 0, i64 %40
  store i8 %35, i8* %41, align 1
  %42 = load %struct.Tokenizer*, %struct.Tokenizer** %4, align 8
  %43 = getelementptr inbounds %struct.Tokenizer, %struct.Tokenizer* %42, i32 0, i32 5
  %44 = load i32, i32* %7, align 4
  %45 = mul nsw i32 %44, 2
  %46 = add nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [512 x i8], [512 x i8]* %43, i64 0, i64 %47
  store i8 0, i8* %48, align 1
  br label %49

49:                                               ; preds = %33
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %7, align 4
  br label %30, !llvm.loop !29

52:                                               ; preds = %30
  %53 = load i8*, i8** %5, align 8
  %54 = call %struct.__sFILE* @"\01_fopen"(i8* noundef %53, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store %struct.__sFILE* %54, %struct.__sFILE** %8, align 8
  %55 = load %struct.__sFILE*, %struct.__sFILE** %8, align 8
  %56 = icmp ne %struct.__sFILE* %55, null
  br i1 %56, label %61, label %57

57:                                               ; preds = %52
  %58 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %59 = load i8*, i8** %5, align 8
  %60 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %58, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i8* noundef %59)
  call void @exit(i32 noundef 1) #11
  unreachable

61:                                               ; preds = %52
  %62 = load %struct.Tokenizer*, %struct.Tokenizer** %4, align 8
  %63 = getelementptr inbounds %struct.Tokenizer, %struct.Tokenizer* %62, i32 0, i32 4
  %64 = bitcast i32* %63 to i8*
  %65 = load %struct.__sFILE*, %struct.__sFILE** %8, align 8
  %66 = call i64 @fread(i8* noundef %64, i64 noundef 4, i64 noundef 1, %struct.__sFILE* noundef %65)
  %67 = icmp ne i64 %66, 1
  br i1 %67, label %68, label %71

68:                                               ; preds = %61
  %69 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %70 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %69, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  call void @exit(i32 noundef 1) #11
  unreachable

71:                                               ; preds = %61
  store i32 0, i32* %10, align 4
  br label %72

72:                                               ; preds = %135, %71
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* %6, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %138

76:                                               ; preds = %72
  %77 = load %struct.Tokenizer*, %struct.Tokenizer** %4, align 8
  %78 = getelementptr inbounds %struct.Tokenizer, %struct.Tokenizer* %77, i32 0, i32 1
  %79 = load float*, float** %78, align 8
  %80 = load i32, i32* %10, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds float, float* %79, i64 %81
  %83 = bitcast float* %82 to i8*
  %84 = load %struct.__sFILE*, %struct.__sFILE** %8, align 8
  %85 = call i64 @fread(i8* noundef %83, i64 noundef 4, i64 noundef 1, %struct.__sFILE* noundef %84)
  %86 = icmp ne i64 %85, 1
  br i1 %86, label %87, label %90

87:                                               ; preds = %76
  %88 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %89 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %88, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  call void @exit(i32 noundef 1) #11
  unreachable

90:                                               ; preds = %76
  %91 = bitcast i32* %9 to i8*
  %92 = load %struct.__sFILE*, %struct.__sFILE** %8, align 8
  %93 = call i64 @fread(i8* noundef %91, i64 noundef 4, i64 noundef 1, %struct.__sFILE* noundef %92)
  %94 = icmp ne i64 %93, 1
  br i1 %94, label %95, label %98

95:                                               ; preds = %90
  %96 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %97 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %96, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  call void @exit(i32 noundef 1) #11
  unreachable

98:                                               ; preds = %90
  %99 = load i32, i32* %9, align 4
  %100 = add nsw i32 %99, 1
  %101 = sext i32 %100 to i64
  %102 = call i8* @malloc(i64 noundef %101) #14
  %103 = load %struct.Tokenizer*, %struct.Tokenizer** %4, align 8
  %104 = getelementptr inbounds %struct.Tokenizer, %struct.Tokenizer* %103, i32 0, i32 0
  %105 = load i8**, i8*** %104, align 8
  %106 = load i32, i32* %10, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8*, i8** %105, i64 %107
  store i8* %102, i8** %108, align 8
  %109 = load %struct.Tokenizer*, %struct.Tokenizer** %4, align 8
  %110 = getelementptr inbounds %struct.Tokenizer, %struct.Tokenizer* %109, i32 0, i32 0
  %111 = load i8**, i8*** %110, align 8
  %112 = load i32, i32* %10, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8*, i8** %111, i64 %113
  %115 = load i8*, i8** %114, align 8
  %116 = load i32, i32* %9, align 4
  %117 = sext i32 %116 to i64
  %118 = load %struct.__sFILE*, %struct.__sFILE** %8, align 8
  %119 = call i64 @fread(i8* noundef %115, i64 noundef %117, i64 noundef 1, %struct.__sFILE* noundef %118)
  %120 = icmp ne i64 %119, 1
  br i1 %120, label %121, label %124

121:                                              ; preds = %98
  %122 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %123 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %122, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  call void @exit(i32 noundef 1) #11
  unreachable

124:                                              ; preds = %98
  %125 = load %struct.Tokenizer*, %struct.Tokenizer** %4, align 8
  %126 = getelementptr inbounds %struct.Tokenizer, %struct.Tokenizer* %125, i32 0, i32 0
  %127 = load i8**, i8*** %126, align 8
  %128 = load i32, i32* %10, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8*, i8** %127, i64 %129
  %131 = load i8*, i8** %130, align 8
  %132 = load i32, i32* %9, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8, i8* %131, i64 %133
  store i8 0, i8* %134, align 1
  br label %135

135:                                              ; preds = %124
  %136 = load i32, i32* %10, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %10, align 4
  br label %72, !llvm.loop !30

138:                                              ; preds = %72
  %139 = load %struct.__sFILE*, %struct.__sFILE** %8, align 8
  %140 = call i32 @fclose(%struct.__sFILE* noundef %139)
  ret void
}

; Function Attrs: allocsize(0)
declare i8* @malloc(i64 noundef) #7

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @free_tokenizer(%struct.Tokenizer* noundef %0) #0 {
  %2 = alloca %struct.Tokenizer*, align 8
  %3 = alloca i32, align 4
  store %struct.Tokenizer* %0, %struct.Tokenizer** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %18, %1
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.Tokenizer*, %struct.Tokenizer** %2, align 8
  %7 = getelementptr inbounds %struct.Tokenizer, %struct.Tokenizer* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 8
  %9 = icmp slt i32 %5, %8
  br i1 %9, label %10, label %21

10:                                               ; preds = %4
  %11 = load %struct.Tokenizer*, %struct.Tokenizer** %2, align 8
  %12 = getelementptr inbounds %struct.Tokenizer, %struct.Tokenizer* %11, i32 0, i32 0
  %13 = load i8**, i8*** %12, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8*, i8** %13, i64 %15
  %17 = load i8*, i8** %16, align 8
  call void @free(i8* noundef %17)
  br label %18

18:                                               ; preds = %10
  %19 = load i32, i32* %3, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %3, align 4
  br label %4, !llvm.loop !31

21:                                               ; preds = %4
  %22 = load %struct.Tokenizer*, %struct.Tokenizer** %2, align 8
  %23 = getelementptr inbounds %struct.Tokenizer, %struct.Tokenizer* %22, i32 0, i32 0
  %24 = load i8**, i8*** %23, align 8
  %25 = bitcast i8** %24 to i8*
  call void @free(i8* noundef %25)
  %26 = load %struct.Tokenizer*, %struct.Tokenizer** %2, align 8
  %27 = getelementptr inbounds %struct.Tokenizer, %struct.Tokenizer* %26, i32 0, i32 1
  %28 = load float*, float** %27, align 8
  %29 = bitcast float* %28 to i8*
  call void @free(i8* noundef %29)
  %30 = load %struct.Tokenizer*, %struct.Tokenizer** %2, align 8
  %31 = getelementptr inbounds %struct.Tokenizer, %struct.Tokenizer* %30, i32 0, i32 2
  %32 = load %struct.TokenIndex*, %struct.TokenIndex** %31, align 8
  %33 = bitcast %struct.TokenIndex* %32 to i8*
  call void @free(i8* noundef %33)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i8* @decode(%struct.Tokenizer* noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.Tokenizer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  store %struct.Tokenizer* %0, %struct.Tokenizer** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.Tokenizer*, %struct.Tokenizer** %4, align 8
  %10 = getelementptr inbounds %struct.Tokenizer, %struct.Tokenizer* %9, i32 0, i32 0
  %11 = load i8**, i8*** %10, align 8
  %12 = load i32, i32* %6, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8*, i8** %11, i64 %13
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %7, align 8
  %16 = load i32, i32* %5, align 4
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %27

18:                                               ; preds = %3
  %19 = load i8*, i8** %7, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 0
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 32
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load i8*, i8** %7, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %7, align 8
  br label %27

27:                                               ; preds = %24, %18, %3
  %28 = load i8*, i8** %7, align 8
  %29 = call i32 (i8*, i8*, ...) @sscanf(i8* noundef %28, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i8* noundef %8)
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %40

31:                                               ; preds = %27
  %32 = load %struct.Tokenizer*, %struct.Tokenizer** %4, align 8
  %33 = getelementptr inbounds %struct.Tokenizer, %struct.Tokenizer* %32, i32 0, i32 5
  %34 = getelementptr inbounds [512 x i8], [512 x i8]* %33, i64 0, i64 0
  %35 = load i8, i8* %8, align 1
  %36 = zext i8 %35 to i32
  %37 = mul nsw i32 %36, 2
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %34, i64 %38
  store i8* %39, i8** %7, align 8
  br label %40

40:                                               ; preds = %31, %27
  %41 = load i8*, i8** %7, align 8
  ret i8* %41
}

declare i32 @sscanf(i8* noundef, i8* noundef, ...) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @safe_printf(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8, align 1
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = icmp eq i8* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %38

7:                                                ; preds = %1
  %8 = load i8*, i8** %2, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 0
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %7
  br label %38

14:                                               ; preds = %7
  %15 = load i8*, i8** %2, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 1
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %35

20:                                               ; preds = %14
  %21 = load i8*, i8** %2, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  %23 = load i8, i8* %22, align 1
  store i8 %23, i8* %3, align 1
  %24 = load i8, i8* %3, align 1
  %25 = zext i8 %24 to i32
  %26 = call i32 @isprint(i32 noundef %25) #15
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %20
  %29 = load i8, i8* %3, align 1
  %30 = zext i8 %29 to i32
  %31 = call i32 @isspace(i32 noundef %30) #15
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %28
  br label %38

34:                                               ; preds = %28, %20
  br label %35

35:                                               ; preds = %34, %14
  %36 = load i8*, i8** %2, align 8
  %37 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* noundef %36)
  br label %38

38:                                               ; preds = %35, %33, %13, %6
  ret void
}

; Function Attrs: nounwind readonly willreturn
declare i32 @isprint(i32 noundef) #8

; Function Attrs: nounwind readonly willreturn
declare i32 @isspace(i32 noundef) #8

declare i32 @printf(i8* noundef, ...) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @str_lookup(i8* noundef %0, %struct.TokenIndex* noundef %1, i32 noundef %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TokenIndex*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TokenIndex, align 8
  %8 = alloca %struct.TokenIndex*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TokenIndex* %1, %struct.TokenIndex** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = getelementptr inbounds %struct.TokenIndex, %struct.TokenIndex* %7, i32 0, i32 0
  %10 = load i8*, i8** %4, align 8
  store i8* %10, i8** %9, align 8
  %11 = getelementptr inbounds %struct.TokenIndex, %struct.TokenIndex* %7, i32 0, i32 1
  store i32 0, i32* %11, align 8
  %12 = bitcast %struct.TokenIndex* %7 to i8*
  %13 = load %struct.TokenIndex*, %struct.TokenIndex** %5, align 8
  %14 = bitcast %struct.TokenIndex* %13 to i8*
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = call i8* @bsearch(i8* noundef %12, i8* noundef %14, i64 noundef %16, i64 noundef 16, i32 (i8*, i8*)* noundef @compare_tokens)
  %18 = bitcast i8* %17 to %struct.TokenIndex*
  store %struct.TokenIndex* %18, %struct.TokenIndex** %8, align 8
  %19 = load %struct.TokenIndex*, %struct.TokenIndex** %8, align 8
  %20 = icmp ne %struct.TokenIndex* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = load %struct.TokenIndex*, %struct.TokenIndex** %8, align 8
  %23 = getelementptr inbounds %struct.TokenIndex, %struct.TokenIndex* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  br label %26

25:                                               ; preds = %3
  br label %26

26:                                               ; preds = %25, %21
  %27 = phi i32 [ %24, %21 ], [ -1, %25 ]
  ret i32 %27
}

declare i8* @bsearch(i8* noundef, i8* noundef, i64 noundef, i64 noundef, i32 (i8*, i8*)* noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @encode(%struct.Tokenizer* noundef %0, i8* noundef %1, i8 noundef signext %2, i8 noundef signext %3, i32* noundef %4, i32* noundef %5) #0 {
  %7 = alloca %struct.Tokenizer*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca float, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.Tokenizer* %0, %struct.Tokenizer** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8 %2, i8* %9, align 1
  store i8 %3, i8* %10, align 1
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %6
  %29 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %30 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %29, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0))
  call void @exit(i32 noundef 1) #11
  unreachable

31:                                               ; preds = %6
  %32 = load %struct.Tokenizer*, %struct.Tokenizer** %7, align 8
  %33 = getelementptr inbounds %struct.Tokenizer, %struct.Tokenizer* %32, i32 0, i32 2
  %34 = load %struct.TokenIndex*, %struct.TokenIndex** %33, align 8
  %35 = icmp eq %struct.TokenIndex* %34, null
  br i1 %35, label %36, label %87

36:                                               ; preds = %31
  %37 = load %struct.Tokenizer*, %struct.Tokenizer** %7, align 8
  %38 = getelementptr inbounds %struct.Tokenizer, %struct.Tokenizer* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = mul i64 %40, 16
  %42 = call i8* @malloc(i64 noundef %41) #14
  %43 = bitcast i8* %42 to %struct.TokenIndex*
  %44 = load %struct.Tokenizer*, %struct.Tokenizer** %7, align 8
  %45 = getelementptr inbounds %struct.Tokenizer, %struct.Tokenizer* %44, i32 0, i32 2
  store %struct.TokenIndex* %43, %struct.TokenIndex** %45, align 8
  store i32 0, i32* %13, align 4
  br label %46

46:                                               ; preds = %75, %36
  %47 = load i32, i32* %13, align 4
  %48 = load %struct.Tokenizer*, %struct.Tokenizer** %7, align 8
  %49 = getelementptr inbounds %struct.Tokenizer, %struct.Tokenizer* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = icmp slt i32 %47, %50
  br i1 %51, label %52, label %78

52:                                               ; preds = %46
  %53 = load %struct.Tokenizer*, %struct.Tokenizer** %7, align 8
  %54 = getelementptr inbounds %struct.Tokenizer, %struct.Tokenizer* %53, i32 0, i32 0
  %55 = load i8**, i8*** %54, align 8
  %56 = load i32, i32* %13, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8*, i8** %55, i64 %57
  %59 = load i8*, i8** %58, align 8
  %60 = load %struct.Tokenizer*, %struct.Tokenizer** %7, align 8
  %61 = getelementptr inbounds %struct.Tokenizer, %struct.Tokenizer* %60, i32 0, i32 2
  %62 = load %struct.TokenIndex*, %struct.TokenIndex** %61, align 8
  %63 = load i32, i32* %13, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TokenIndex, %struct.TokenIndex* %62, i64 %64
  %66 = getelementptr inbounds %struct.TokenIndex, %struct.TokenIndex* %65, i32 0, i32 0
  store i8* %59, i8** %66, align 8
  %67 = load i32, i32* %13, align 4
  %68 = load %struct.Tokenizer*, %struct.Tokenizer** %7, align 8
  %69 = getelementptr inbounds %struct.Tokenizer, %struct.Tokenizer* %68, i32 0, i32 2
  %70 = load %struct.TokenIndex*, %struct.TokenIndex** %69, align 8
  %71 = load i32, i32* %13, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TokenIndex, %struct.TokenIndex* %70, i64 %72
  %74 = getelementptr inbounds %struct.TokenIndex, %struct.TokenIndex* %73, i32 0, i32 1
  store i32 %67, i32* %74, align 8
  br label %75

75:                                               ; preds = %52
  %76 = load i32, i32* %13, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %13, align 4
  br label %46, !llvm.loop !32

78:                                               ; preds = %46
  %79 = load %struct.Tokenizer*, %struct.Tokenizer** %7, align 8
  %80 = getelementptr inbounds %struct.Tokenizer, %struct.Tokenizer* %79, i32 0, i32 2
  %81 = load %struct.TokenIndex*, %struct.TokenIndex** %80, align 8
  %82 = bitcast %struct.TokenIndex* %81 to i8*
  %83 = load %struct.Tokenizer*, %struct.Tokenizer** %7, align 8
  %84 = getelementptr inbounds %struct.Tokenizer, %struct.Tokenizer* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = sext i32 %85 to i64
  call void @qsort(i8* noundef %82, i64 noundef %86, i64 noundef 16, i32 (i8*, i8*)* noundef @compare_tokens)
  br label %87

87:                                               ; preds = %78, %31
  %88 = load %struct.Tokenizer*, %struct.Tokenizer** %7, align 8
  %89 = getelementptr inbounds %struct.Tokenizer, %struct.Tokenizer* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 4
  %91 = mul i32 %90, 2
  %92 = add i32 %91, 1
  %93 = add i32 %92, 2
  %94 = zext i32 %93 to i64
  %95 = mul i64 %94, 1
  %96 = call i8* @malloc(i64 noundef %95) #14
  store i8* %96, i8** %14, align 8
  store i64 0, i64* %15, align 8
  %97 = load i32*, i32** %12, align 8
  store i32 0, i32* %97, align 4
  %98 = load i8, i8* %9, align 1
  %99 = icmp ne i8 %98, 0
  br i1 %99, label %100, label %107

100:                                              ; preds = %87
  %101 = load i32*, i32** %11, align 8
  %102 = load i32*, i32** %12, align 8
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %102, align 4
  %105 = sext i32 %103 to i64
  %106 = getelementptr inbounds i32, i32* %101, i64 %105
  store i32 1, i32* %106, align 4
  br label %107

107:                                              ; preds = %100, %87
  %108 = load i8*, i8** %8, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 0
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %128

113:                                              ; preds = %107
  %114 = load %struct.Tokenizer*, %struct.Tokenizer** %7, align 8
  %115 = getelementptr inbounds %struct.Tokenizer, %struct.Tokenizer* %114, i32 0, i32 2
  %116 = load %struct.TokenIndex*, %struct.TokenIndex** %115, align 8
  %117 = load %struct.Tokenizer*, %struct.Tokenizer** %7, align 8
  %118 = getelementptr inbounds %struct.Tokenizer, %struct.Tokenizer* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @str_lookup(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), %struct.TokenIndex* noundef %116, i32 noundef %119)
  store i32 %120, i32* %16, align 4
  %121 = load i32, i32* %16, align 4
  %122 = load i32*, i32** %11, align 8
  %123 = load i32*, i32** %12, align 8
  %124 = load i32, i32* %123, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %123, align 4
  %126 = sext i32 %124 to i64
  %127 = getelementptr inbounds i32, i32* %122, i64 %126
  store i32 %121, i32* %127, align 4
  br label %128

128:                                              ; preds = %113, %107
  %129 = load i8*, i8** %8, align 8
  store i8* %129, i8** %17, align 8
  br label %130

130:                                              ; preds = %206, %128
  %131 = load i8*, i8** %17, align 8
  %132 = load i8, i8* %131, align 1
  %133 = sext i8 %132 to i32
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %209

135:                                              ; preds = %130
  %136 = load i8*, i8** %17, align 8
  %137 = load i8, i8* %136, align 1
  %138 = sext i8 %137 to i32
  %139 = and i32 %138, 192
  %140 = icmp ne i32 %139, 128
  br i1 %140, label %141, label %142

141:                                              ; preds = %135
  store i64 0, i64* %15, align 8
  br label %142

142:                                              ; preds = %141, %135
  %143 = load i8*, i8** %17, align 8
  %144 = load i8, i8* %143, align 1
  %145 = load i8*, i8** %14, align 8
  %146 = load i64, i64* %15, align 8
  %147 = add i64 %146, 1
  store i64 %147, i64* %15, align 8
  %148 = getelementptr inbounds i8, i8* %145, i64 %146
  store i8 %144, i8* %148, align 1
  %149 = load i8*, i8** %14, align 8
  %150 = load i64, i64* %15, align 8
  %151 = getelementptr inbounds i8, i8* %149, i64 %150
  store i8 0, i8* %151, align 1
  %152 = load i8*, i8** %17, align 8
  %153 = getelementptr inbounds i8, i8* %152, i64 1
  %154 = load i8, i8* %153, align 1
  %155 = sext i8 %154 to i32
  %156 = and i32 %155, 192
  %157 = icmp eq i32 %156, 128
  br i1 %157, label %158, label %162

158:                                              ; preds = %142
  %159 = load i64, i64* %15, align 8
  %160 = icmp ult i64 %159, 4
  br i1 %160, label %161, label %162

161:                                              ; preds = %158
  br label %206

162:                                              ; preds = %158, %142
  %163 = load i8*, i8** %14, align 8
  %164 = load %struct.Tokenizer*, %struct.Tokenizer** %7, align 8
  %165 = getelementptr inbounds %struct.Tokenizer, %struct.Tokenizer* %164, i32 0, i32 2
  %166 = load %struct.TokenIndex*, %struct.TokenIndex** %165, align 8
  %167 = load %struct.Tokenizer*, %struct.Tokenizer** %7, align 8
  %168 = getelementptr inbounds %struct.Tokenizer, %struct.Tokenizer* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @str_lookup(i8* noundef %163, %struct.TokenIndex* noundef %166, i32 noundef %169)
  store i32 %170, i32* %18, align 4
  %171 = load i32, i32* %18, align 4
  %172 = icmp ne i32 %171, -1
  br i1 %172, label %173, label %181

173:                                              ; preds = %162
  %174 = load i32, i32* %18, align 4
  %175 = load i32*, i32** %11, align 8
  %176 = load i32*, i32** %12, align 8
  %177 = load i32, i32* %176, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %176, align 4
  %179 = sext i32 %177 to i64
  %180 = getelementptr inbounds i32, i32* %175, i64 %179
  store i32 %174, i32* %180, align 4
  br label %205

181:                                              ; preds = %162
  store i32 0, i32* %19, align 4
  br label %182

182:                                              ; preds = %201, %181
  %183 = load i32, i32* %19, align 4
  %184 = sext i32 %183 to i64
  %185 = load i64, i64* %15, align 8
  %186 = icmp ult i64 %184, %185
  br i1 %186, label %187, label %204

187:                                              ; preds = %182
  %188 = load i8*, i8** %14, align 8
  %189 = load i32, i32* %19, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i8, i8* %188, i64 %190
  %192 = load i8, i8* %191, align 1
  %193 = zext i8 %192 to i32
  %194 = add nsw i32 %193, 3
  %195 = load i32*, i32** %11, align 8
  %196 = load i32*, i32** %12, align 8
  %197 = load i32, i32* %196, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %196, align 4
  %199 = sext i32 %197 to i64
  %200 = getelementptr inbounds i32, i32* %195, i64 %199
  store i32 %194, i32* %200, align 4
  br label %201

201:                                              ; preds = %187
  %202 = load i32, i32* %19, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %19, align 4
  br label %182, !llvm.loop !33

204:                                              ; preds = %182
  br label %205

205:                                              ; preds = %204, %173
  store i64 0, i64* %15, align 8
  br label %206

206:                                              ; preds = %205, %161
  %207 = load i8*, i8** %17, align 8
  %208 = getelementptr inbounds i8, i8* %207, i32 1
  store i8* %208, i8** %17, align 8
  br label %130, !llvm.loop !34

209:                                              ; preds = %130
  br label %210

210:                                              ; preds = %209, %311
  store float -1.000000e+10, float* %20, align 4
  store i32 -1, i32* %21, align 4
  store i32 -1, i32* %22, align 4
  store i32 0, i32* %23, align 4
  br label %211

211:                                              ; preds = %276, %210
  %212 = load i32, i32* %23, align 4
  %213 = load i32*, i32** %12, align 8
  %214 = load i32, i32* %213, align 4
  %215 = sub nsw i32 %214, 1
  %216 = icmp slt i32 %212, %215
  br i1 %216, label %217, label %279

217:                                              ; preds = %211
  %218 = load i8*, i8** %14, align 8
  %219 = load i8*, i8** %14, align 8
  %220 = call i64 @llvm.objectsize.i64.p0i8(i8* %219, i1 false, i1 true, i1 false)
  %221 = load %struct.Tokenizer*, %struct.Tokenizer** %7, align 8
  %222 = getelementptr inbounds %struct.Tokenizer, %struct.Tokenizer* %221, i32 0, i32 0
  %223 = load i8**, i8*** %222, align 8
  %224 = load i32*, i32** %11, align 8
  %225 = load i32, i32* %23, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i32, i32* %224, i64 %226
  %228 = load i32, i32* %227, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i8*, i8** %223, i64 %229
  %231 = load i8*, i8** %230, align 8
  %232 = load %struct.Tokenizer*, %struct.Tokenizer** %7, align 8
  %233 = getelementptr inbounds %struct.Tokenizer, %struct.Tokenizer* %232, i32 0, i32 0
  %234 = load i8**, i8*** %233, align 8
  %235 = load i32*, i32** %11, align 8
  %236 = load i32, i32* %23, align 4
  %237 = add nsw i32 %236, 1
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i32, i32* %235, i64 %238
  %240 = load i32, i32* %239, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i8*, i8** %234, i64 %241
  %243 = load i8*, i8** %242, align 8
  %244 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* noundef %218, i32 noundef 0, i64 noundef %220, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8* noundef %231, i8* noundef %243)
  %245 = load i8*, i8** %14, align 8
  %246 = load %struct.Tokenizer*, %struct.Tokenizer** %7, align 8
  %247 = getelementptr inbounds %struct.Tokenizer, %struct.Tokenizer* %246, i32 0, i32 2
  %248 = load %struct.TokenIndex*, %struct.TokenIndex** %247, align 8
  %249 = load %struct.Tokenizer*, %struct.Tokenizer** %7, align 8
  %250 = getelementptr inbounds %struct.Tokenizer, %struct.Tokenizer* %249, i32 0, i32 3
  %251 = load i32, i32* %250, align 8
  %252 = call i32 @str_lookup(i8* noundef %245, %struct.TokenIndex* noundef %248, i32 noundef %251)
  store i32 %252, i32* %24, align 4
  %253 = load i32, i32* %24, align 4
  %254 = icmp ne i32 %253, -1
  br i1 %254, label %255, label %275

255:                                              ; preds = %217
  %256 = load %struct.Tokenizer*, %struct.Tokenizer** %7, align 8
  %257 = getelementptr inbounds %struct.Tokenizer, %struct.Tokenizer* %256, i32 0, i32 1
  %258 = load float*, float** %257, align 8
  %259 = load i32, i32* %24, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds float, float* %258, i64 %260
  %262 = load float, float* %261, align 4
  %263 = load float, float* %20, align 4
  %264 = fcmp ogt float %262, %263
  br i1 %264, label %265, label %275

265:                                              ; preds = %255
  %266 = load %struct.Tokenizer*, %struct.Tokenizer** %7, align 8
  %267 = getelementptr inbounds %struct.Tokenizer, %struct.Tokenizer* %266, i32 0, i32 1
  %268 = load float*, float** %267, align 8
  %269 = load i32, i32* %24, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds float, float* %268, i64 %270
  %272 = load float, float* %271, align 4
  store float %272, float* %20, align 4
  %273 = load i32, i32* %24, align 4
  store i32 %273, i32* %21, align 4
  %274 = load i32, i32* %23, align 4
  store i32 %274, i32* %22, align 4
  br label %275

275:                                              ; preds = %265, %255, %217
  br label %276

276:                                              ; preds = %275
  %277 = load i32, i32* %23, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %23, align 4
  br label %211, !llvm.loop !35

279:                                              ; preds = %211
  %280 = load i32, i32* %22, align 4
  %281 = icmp eq i32 %280, -1
  br i1 %281, label %282, label %283

282:                                              ; preds = %279
  br label %315

283:                                              ; preds = %279
  %284 = load i32, i32* %21, align 4
  %285 = load i32*, i32** %11, align 8
  %286 = load i32, i32* %22, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i32, i32* %285, i64 %287
  store i32 %284, i32* %288, align 4
  %289 = load i32, i32* %22, align 4
  %290 = add nsw i32 %289, 1
  store i32 %290, i32* %25, align 4
  br label %291

291:                                              ; preds = %308, %283
  %292 = load i32, i32* %25, align 4
  %293 = load i32*, i32** %12, align 8
  %294 = load i32, i32* %293, align 4
  %295 = sub nsw i32 %294, 1
  %296 = icmp slt i32 %292, %295
  br i1 %296, label %297, label %311

297:                                              ; preds = %291
  %298 = load i32*, i32** %11, align 8
  %299 = load i32, i32* %25, align 4
  %300 = add nsw i32 %299, 1
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds i32, i32* %298, i64 %301
  %303 = load i32, i32* %302, align 4
  %304 = load i32*, i32** %11, align 8
  %305 = load i32, i32* %25, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds i32, i32* %304, i64 %306
  store i32 %303, i32* %307, align 4
  br label %308

308:                                              ; preds = %297
  %309 = load i32, i32* %25, align 4
  %310 = add nsw i32 %309, 1
  store i32 %310, i32* %25, align 4
  br label %291, !llvm.loop !36

311:                                              ; preds = %291
  %312 = load i32*, i32** %12, align 8
  %313 = load i32, i32* %312, align 4
  %314 = add nsw i32 %313, -1
  store i32 %314, i32* %312, align 4
  br label %210

315:                                              ; preds = %282
  %316 = load i8, i8* %10, align 1
  %317 = icmp ne i8 %316, 0
  br i1 %317, label %318, label %325

318:                                              ; preds = %315
  %319 = load i32*, i32** %11, align 8
  %320 = load i32*, i32** %12, align 8
  %321 = load i32, i32* %320, align 4
  %322 = add nsw i32 %321, 1
  store i32 %322, i32* %320, align 4
  %323 = sext i32 %321 to i64
  %324 = getelementptr inbounds i32, i32* %319, i64 %323
  store i32 2, i32* %324, align 4
  br label %325

325:                                              ; preds = %318, %315
  %326 = load i8*, i8** %14, align 8
  call void @free(i8* noundef %326)
  ret void
}

declare void @qsort(i8* noundef, i64 noundef, i64 noundef, i32 (i8*, i8*)* noundef) #2

declare i32 @__sprintf_chk(i8* noundef, i32 noundef, i64 noundef, i8* noundef, ...) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @sample_argmax(float* noundef %0, i32 noundef %1) #0 {
  %3 = alloca float*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca float, align 4
  %7 = alloca i32, align 4
  store float* %0, float** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %8 = load float*, float** %3, align 8
  %9 = getelementptr inbounds float, float* %8, i64 0
  %10 = load float, float* %9, align 4
  store float %10, float* %6, align 4
  store i32 1, i32* %7, align 4
  br label %11

11:                                               ; preds = %31, %2
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %34

15:                                               ; preds = %11
  %16 = load float*, float** %3, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds float, float* %16, i64 %18
  %20 = load float, float* %19, align 4
  %21 = load float, float* %6, align 4
  %22 = fcmp ogt float %20, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %15
  %24 = load i32, i32* %7, align 4
  store i32 %24, i32* %5, align 4
  %25 = load float*, float** %3, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds float, float* %25, i64 %27
  %29 = load float, float* %28, align 4
  store float %29, float* %6, align 4
  br label %30

30:                                               ; preds = %23, %15
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %7, align 4
  br label %11, !llvm.loop !37

34:                                               ; preds = %11
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @sample_mult(float* noundef %0, i32 noundef %1, float noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca float*, align 8
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca i32, align 4
  store float* %0, float** %5, align 8
  store i32 %1, i32* %6, align 4
  store float %2, float* %7, align 4
  store float 0.000000e+00, float* %8, align 4
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %28, %3
  %11 = load i32, i32* %9, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %31

14:                                               ; preds = %10
  %15 = load float*, float** %5, align 8
  %16 = load i32, i32* %9, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds float, float* %15, i64 %17
  %19 = load float, float* %18, align 4
  %20 = load float, float* %8, align 4
  %21 = fadd float %20, %19
  store float %21, float* %8, align 4
  %22 = load float, float* %7, align 4
  %23 = load float, float* %8, align 4
  %24 = fcmp olt float %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %14
  %26 = load i32, i32* %9, align 4
  store i32 %26, i32* %4, align 4
  br label %34

27:                                               ; preds = %14
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %9, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %9, align 4
  br label %10, !llvm.loop !38

31:                                               ; preds = %10
  %32 = load i32, i32* %6, align 4
  %33 = sub nsw i32 %32, 1
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %31, %25
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @compare(i8* noundef %0, i8* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ProbIndex*, align 8
  %7 = alloca %struct.ProbIndex*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.ProbIndex*
  store %struct.ProbIndex* %9, %struct.ProbIndex** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.ProbIndex*
  store %struct.ProbIndex* %11, %struct.ProbIndex** %7, align 8
  %12 = load %struct.ProbIndex*, %struct.ProbIndex** %6, align 8
  %13 = getelementptr inbounds %struct.ProbIndex, %struct.ProbIndex* %12, i32 0, i32 0
  %14 = load float, float* %13, align 4
  %15 = load %struct.ProbIndex*, %struct.ProbIndex** %7, align 8
  %16 = getelementptr inbounds %struct.ProbIndex, %struct.ProbIndex* %15, i32 0, i32 0
  %17 = load float, float* %16, align 4
  %18 = fcmp ogt float %14, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %30

20:                                               ; preds = %2
  %21 = load %struct.ProbIndex*, %struct.ProbIndex** %6, align 8
  %22 = getelementptr inbounds %struct.ProbIndex, %struct.ProbIndex* %21, i32 0, i32 0
  %23 = load float, float* %22, align 4
  %24 = load %struct.ProbIndex*, %struct.ProbIndex** %7, align 8
  %25 = getelementptr inbounds %struct.ProbIndex, %struct.ProbIndex* %24, i32 0, i32 0
  %26 = load float, float* %25, align 4
  %27 = fcmp olt float %23, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  store i32 1, i32* %3, align 4
  br label %30

29:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %29, %28, %19
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @sample_topp(float* noundef %0, i32 noundef %1, float noundef %2, %struct.ProbIndex* noundef %3, float noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca float*, align 8
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  %10 = alloca %struct.ProbIndex*, align 8
  %11 = alloca float, align 4
  %12 = alloca i32, align 4
  %13 = alloca float, align 4
  %14 = alloca i32, align 4
  %15 = alloca float, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca i32, align 4
  store float* %0, float** %7, align 8
  store i32 %1, i32* %8, align 4
  store float %2, float* %9, align 4
  store %struct.ProbIndex* %3, %struct.ProbIndex** %10, align 8
  store float %4, float* %11, align 4
  store i32 0, i32* %12, align 4
  %21 = load float, float* %9, align 4
  %22 = fsub float 1.000000e+00, %21
  %23 = load i32, i32* %8, align 4
  %24 = sub nsw i32 %23, 1
  %25 = sitofp i32 %24 to float
  %26 = fdiv float %22, %25
  store float %26, float* %13, align 4
  store i32 0, i32* %14, align 4
  br label %27

27:                                               ; preds = %59, %5
  %28 = load i32, i32* %14, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %62

31:                                               ; preds = %27
  %32 = load float*, float** %7, align 8
  %33 = load i32, i32* %14, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds float, float* %32, i64 %34
  %36 = load float, float* %35, align 4
  %37 = load float, float* %13, align 4
  %38 = fcmp oge float %36, %37
  br i1 %38, label %39, label %58

39:                                               ; preds = %31
  %40 = load i32, i32* %14, align 4
  %41 = load %struct.ProbIndex*, %struct.ProbIndex** %10, align 8
  %42 = load i32, i32* %12, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.ProbIndex, %struct.ProbIndex* %41, i64 %43
  %45 = getelementptr inbounds %struct.ProbIndex, %struct.ProbIndex* %44, i32 0, i32 1
  store i32 %40, i32* %45, align 4
  %46 = load float*, float** %7, align 8
  %47 = load i32, i32* %14, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds float, float* %46, i64 %48
  %50 = load float, float* %49, align 4
  %51 = load %struct.ProbIndex*, %struct.ProbIndex** %10, align 8
  %52 = load i32, i32* %12, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.ProbIndex, %struct.ProbIndex* %51, i64 %53
  %55 = getelementptr inbounds %struct.ProbIndex, %struct.ProbIndex* %54, i32 0, i32 0
  store float %50, float* %55, align 4
  %56 = load i32, i32* %12, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %12, align 4
  br label %58

58:                                               ; preds = %39, %31
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %14, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %14, align 4
  br label %27, !llvm.loop !39

62:                                               ; preds = %27
  %63 = load %struct.ProbIndex*, %struct.ProbIndex** %10, align 8
  %64 = bitcast %struct.ProbIndex* %63 to i8*
  %65 = load i32, i32* %12, align 4
  %66 = sext i32 %65 to i64
  call void @qsort(i8* noundef %64, i64 noundef %66, i64 noundef 8, i32 (i8*, i8*)* noundef @compare)
  store float 0.000000e+00, float* %15, align 4
  %67 = load i32, i32* %12, align 4
  %68 = sub nsw i32 %67, 1
  store i32 %68, i32* %16, align 4
  store i32 0, i32* %17, align 4
  br label %69

69:                                               ; preds = %88, %62
  %70 = load i32, i32* %17, align 4
  %71 = load i32, i32* %12, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %91

73:                                               ; preds = %69
  %74 = load %struct.ProbIndex*, %struct.ProbIndex** %10, align 8
  %75 = load i32, i32* %17, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.ProbIndex, %struct.ProbIndex* %74, i64 %76
  %78 = getelementptr inbounds %struct.ProbIndex, %struct.ProbIndex* %77, i32 0, i32 0
  %79 = load float, float* %78, align 4
  %80 = load float, float* %15, align 4
  %81 = fadd float %80, %79
  store float %81, float* %15, align 4
  %82 = load float, float* %15, align 4
  %83 = load float, float* %9, align 4
  %84 = fcmp ogt float %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %73
  %86 = load i32, i32* %17, align 4
  store i32 %86, i32* %16, align 4
  br label %91

87:                                               ; preds = %73
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %17, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %17, align 4
  br label %69, !llvm.loop !40

91:                                               ; preds = %85, %69
  %92 = load float, float* %11, align 4
  %93 = load float, float* %15, align 4
  %94 = fmul float %92, %93
  store float %94, float* %18, align 4
  store float 0.000000e+00, float* %19, align 4
  store i32 0, i32* %20, align 4
  br label %95

95:                                               ; preds = %119, %91
  %96 = load i32, i32* %20, align 4
  %97 = load i32, i32* %16, align 4
  %98 = icmp sle i32 %96, %97
  br i1 %98, label %99, label %122

99:                                               ; preds = %95
  %100 = load %struct.ProbIndex*, %struct.ProbIndex** %10, align 8
  %101 = load i32, i32* %20, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.ProbIndex, %struct.ProbIndex* %100, i64 %102
  %104 = getelementptr inbounds %struct.ProbIndex, %struct.ProbIndex* %103, i32 0, i32 0
  %105 = load float, float* %104, align 4
  %106 = load float, float* %19, align 4
  %107 = fadd float %106, %105
  store float %107, float* %19, align 4
  %108 = load float, float* %18, align 4
  %109 = load float, float* %19, align 4
  %110 = fcmp olt float %108, %109
  br i1 %110, label %111, label %118

111:                                              ; preds = %99
  %112 = load %struct.ProbIndex*, %struct.ProbIndex** %10, align 8
  %113 = load i32, i32* %20, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.ProbIndex, %struct.ProbIndex* %112, i64 %114
  %116 = getelementptr inbounds %struct.ProbIndex, %struct.ProbIndex* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  store i32 %117, i32* %6, align 4
  br label %129

118:                                              ; preds = %99
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %20, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %20, align 4
  br label %95, !llvm.loop !41

122:                                              ; preds = %95
  %123 = load %struct.ProbIndex*, %struct.ProbIndex** %10, align 8
  %124 = load i32, i32* %16, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.ProbIndex, %struct.ProbIndex* %123, i64 %125
  %127 = getelementptr inbounds %struct.ProbIndex, %struct.ProbIndex* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  store i32 %128, i32* %6, align 4
  br label %129

129:                                              ; preds = %122, %111
  %130 = load i32, i32* %6, align 4
  ret i32 %130
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @build_sampler(%struct.Sampler* noundef %0, i32 noundef %1, float noundef %2, float noundef %3, i64 noundef %4) #0 {
  %6 = alloca %struct.Sampler*, align 8
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca i64, align 8
  store %struct.Sampler* %0, %struct.Sampler** %6, align 8
  store i32 %1, i32* %7, align 4
  store float %2, float* %8, align 4
  store float %3, float* %9, align 4
  store i64 %4, i64* %10, align 8
  %11 = load i32, i32* %7, align 4
  %12 = load %struct.Sampler*, %struct.Sampler** %6, align 8
  %13 = getelementptr inbounds %struct.Sampler, %struct.Sampler* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load float, float* %8, align 4
  %15 = load %struct.Sampler*, %struct.Sampler** %6, align 8
  %16 = getelementptr inbounds %struct.Sampler, %struct.Sampler* %15, i32 0, i32 2
  store float %14, float* %16, align 8
  %17 = load float, float* %9, align 4
  %18 = load %struct.Sampler*, %struct.Sampler** %6, align 8
  %19 = getelementptr inbounds %struct.Sampler, %struct.Sampler* %18, i32 0, i32 3
  store float %17, float* %19, align 4
  %20 = load i64, i64* %10, align 8
  %21 = load %struct.Sampler*, %struct.Sampler** %6, align 8
  %22 = getelementptr inbounds %struct.Sampler, %struct.Sampler* %21, i32 0, i32 4
  store i64 %20, i64* %22, align 8
  %23 = load %struct.Sampler*, %struct.Sampler** %6, align 8
  %24 = getelementptr inbounds %struct.Sampler, %struct.Sampler* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = mul i64 %26, 8
  %28 = call i8* @malloc(i64 noundef %27) #14
  %29 = bitcast i8* %28 to %struct.ProbIndex*
  %30 = load %struct.Sampler*, %struct.Sampler** %6, align 8
  %31 = getelementptr inbounds %struct.Sampler, %struct.Sampler* %30, i32 0, i32 1
  store %struct.ProbIndex* %29, %struct.ProbIndex** %31, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @free_sampler(%struct.Sampler* noundef %0) #0 {
  %2 = alloca %struct.Sampler*, align 8
  store %struct.Sampler* %0, %struct.Sampler** %2, align 8
  %3 = load %struct.Sampler*, %struct.Sampler** %2, align 8
  %4 = getelementptr inbounds %struct.Sampler, %struct.Sampler* %3, i32 0, i32 1
  %5 = load %struct.ProbIndex*, %struct.ProbIndex** %4, align 8
  %6 = bitcast %struct.ProbIndex* %5 to i8*
  call void @free(i8* noundef %6)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @random_u32(i64* noundef %0) #0 {
  %2 = alloca i64*, align 8
  store i64* %0, i64** %2, align 8
  %3 = load i64*, i64** %2, align 8
  %4 = load i64, i64* %3, align 8
  %5 = lshr i64 %4, 12
  %6 = load i64*, i64** %2, align 8
  %7 = load i64, i64* %6, align 8
  %8 = xor i64 %7, %5
  store i64 %8, i64* %6, align 8
  %9 = load i64*, i64** %2, align 8
  %10 = load i64, i64* %9, align 8
  %11 = shl i64 %10, 25
  %12 = load i64*, i64** %2, align 8
  %13 = load i64, i64* %12, align 8
  %14 = xor i64 %13, %11
  store i64 %14, i64* %12, align 8
  %15 = load i64*, i64** %2, align 8
  %16 = load i64, i64* %15, align 8
  %17 = lshr i64 %16, 27
  %18 = load i64*, i64** %2, align 8
  %19 = load i64, i64* %18, align 8
  %20 = xor i64 %19, %17
  store i64 %20, i64* %18, align 8
  %21 = load i64*, i64** %2, align 8
  %22 = load i64, i64* %21, align 8
  %23 = mul i64 %22, 2685821657736338717
  %24 = lshr i64 %23, 32
  %25 = trunc i64 %24 to i32
  ret i32 %25
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define float @random_f32(i64* noundef %0) #0 {
  %2 = alloca i64*, align 8
  store i64* %0, i64** %2, align 8
  %3 = load i64*, i64** %2, align 8
  %4 = call i32 @random_u32(i64* noundef %3)
  %5 = lshr i32 %4, 8
  %6 = uitofp i32 %5 to float
  %7 = fdiv float %6, 0x4170000000000000
  ret float %7
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @sample(%struct.Sampler* noundef %0, float* noundef %1) #0 {
  %3 = alloca %struct.Sampler*, align 8
  %4 = alloca float*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  store %struct.Sampler* %0, %struct.Sampler** %3, align 8
  store float* %1, float** %4, align 8
  %8 = load %struct.Sampler*, %struct.Sampler** %3, align 8
  %9 = getelementptr inbounds %struct.Sampler, %struct.Sampler* %8, i32 0, i32 2
  %10 = load float, float* %9, align 8
  %11 = fcmp oeq float %10, 0.000000e+00
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load float*, float** %4, align 8
  %14 = load %struct.Sampler*, %struct.Sampler** %3, align 8
  %15 = getelementptr inbounds %struct.Sampler, %struct.Sampler* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @sample_argmax(float* noundef %13, i32 noundef %16)
  store i32 %17, i32* %5, align 4
  br label %76

18:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %19

19:                                               ; preds = %35, %18
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.Sampler*, %struct.Sampler** %3, align 8
  %22 = getelementptr inbounds %struct.Sampler, %struct.Sampler* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %38

25:                                               ; preds = %19
  %26 = load %struct.Sampler*, %struct.Sampler** %3, align 8
  %27 = getelementptr inbounds %struct.Sampler, %struct.Sampler* %26, i32 0, i32 2
  %28 = load float, float* %27, align 8
  %29 = load float*, float** %4, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds float, float* %29, i64 %31
  %33 = load float, float* %32, align 4
  %34 = fdiv float %33, %28
  store float %34, float* %32, align 4
  br label %35

35:                                               ; preds = %25
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %6, align 4
  br label %19, !llvm.loop !42

38:                                               ; preds = %19
  %39 = load float*, float** %4, align 8
  %40 = load %struct.Sampler*, %struct.Sampler** %3, align 8
  %41 = getelementptr inbounds %struct.Sampler, %struct.Sampler* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  call void @softmax(float* noundef %39, i32 noundef %42)
  %43 = load %struct.Sampler*, %struct.Sampler** %3, align 8
  %44 = getelementptr inbounds %struct.Sampler, %struct.Sampler* %43, i32 0, i32 4
  %45 = call float @random_f32(i64* noundef %44)
  store float %45, float* %7, align 4
  %46 = load %struct.Sampler*, %struct.Sampler** %3, align 8
  %47 = getelementptr inbounds %struct.Sampler, %struct.Sampler* %46, i32 0, i32 3
  %48 = load float, float* %47, align 4
  %49 = fcmp ole float %48, 0.000000e+00
  br i1 %49, label %55, label %50

50:                                               ; preds = %38
  %51 = load %struct.Sampler*, %struct.Sampler** %3, align 8
  %52 = getelementptr inbounds %struct.Sampler, %struct.Sampler* %51, i32 0, i32 3
  %53 = load float, float* %52, align 4
  %54 = fcmp oge float %53, 1.000000e+00
  br i1 %54, label %55, label %62

55:                                               ; preds = %50, %38
  %56 = load float*, float** %4, align 8
  %57 = load %struct.Sampler*, %struct.Sampler** %3, align 8
  %58 = getelementptr inbounds %struct.Sampler, %struct.Sampler* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load float, float* %7, align 4
  %61 = call i32 @sample_mult(float* noundef %56, i32 noundef %59, float noundef %60)
  store i32 %61, i32* %5, align 4
  br label %75

62:                                               ; preds = %50
  %63 = load float*, float** %4, align 8
  %64 = load %struct.Sampler*, %struct.Sampler** %3, align 8
  %65 = getelementptr inbounds %struct.Sampler, %struct.Sampler* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.Sampler*, %struct.Sampler** %3, align 8
  %68 = getelementptr inbounds %struct.Sampler, %struct.Sampler* %67, i32 0, i32 3
  %69 = load float, float* %68, align 4
  %70 = load %struct.Sampler*, %struct.Sampler** %3, align 8
  %71 = getelementptr inbounds %struct.Sampler, %struct.Sampler* %70, i32 0, i32 1
  %72 = load %struct.ProbIndex*, %struct.ProbIndex** %71, align 8
  %73 = load float, float* %7, align 4
  %74 = call i32 @sample_topp(float* noundef %63, i32 noundef %66, float noundef %69, %struct.ProbIndex* noundef %72, float noundef %73)
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %62, %55
  br label %76

76:                                               ; preds = %75, %12
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i64 @time_in_ms() #0 {
  %1 = alloca %struct.timespec, align 8
  %2 = call i32 @clock_gettime(i32 noundef 0, %struct.timespec* noundef %1)
  %3 = getelementptr inbounds %struct.timespec, %struct.timespec* %1, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = mul nsw i64 %4, 1000
  %6 = getelementptr inbounds %struct.timespec, %struct.timespec* %1, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = sdiv i64 %7, 1000000
  %9 = add nsw i64 %5, %8
  ret i64 %9
}

declare i32 @clock_gettime(i32 noundef, %struct.timespec* noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @generate(%struct.Transformer* noundef %0, %struct.Tokenizer* noundef %1, %struct.Sampler* noundef %2, i8* noundef %3, i32 noundef %4) #0 {
  %6 = alloca %struct.Transformer*, align 8
  %7 = alloca %struct.Tokenizer*, align 8
  %8 = alloca %struct.Sampler*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca float*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  store %struct.Transformer* %0, %struct.Transformer** %6, align 8
  store %struct.Tokenizer* %1, %struct.Tokenizer** %7, align 8
  store %struct.Sampler* %2, %struct.Sampler** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0), i8** %11, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %5
  %24 = load i8*, i8** %11, align 8
  store i8* %24, i8** %9, align 8
  br label %25

25:                                               ; preds = %23, %5
  store i32 0, i32* %12, align 4
  %26 = load i8*, i8** %9, align 8
  %27 = call i64 @strlen(i8* noundef %26)
  %28 = add i64 %27, 3
  %29 = mul i64 %28, 4
  %30 = call i8* @malloc(i64 noundef %29) #14
  %31 = bitcast i8* %30 to i32*
  store i32* %31, i32** %13, align 8
  %32 = load %struct.Tokenizer*, %struct.Tokenizer** %7, align 8
  %33 = load i8*, i8** %9, align 8
  %34 = load i32*, i32** %13, align 8
  call void @encode(%struct.Tokenizer* noundef %32, i8* noundef %33, i8 noundef signext 1, i8 noundef signext 0, i32* noundef %34, i32* noundef %12)
  %35 = load i32, i32* %12, align 4
  %36 = icmp slt i32 %35, 1
  br i1 %36, label %37, label %40

37:                                               ; preds = %25
  %38 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %39 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %38, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.13, i64 0, i64 0))
  call void @exit(i32 noundef 1) #11
  unreachable

40:                                               ; preds = %25
  store i64 0, i64* %14, align 8
  %41 = load i32*, i32** %13, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %16, align 4
  store i32 0, i32* %17, align 4
  br label %44

44:                                               ; preds = %87, %40
  %45 = load i32, i32* %17, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %88

48:                                               ; preds = %44
  %49 = load %struct.Transformer*, %struct.Transformer** %6, align 8
  %50 = load i32, i32* %16, align 4
  %51 = load i32, i32* %17, align 4
  %52 = call float* @forward(%struct.Transformer* noundef %49, i32 noundef %50, i32 noundef %51)
  store float* %52, float** %18, align 8
  %53 = load i32, i32* %17, align 4
  %54 = load i32, i32* %12, align 4
  %55 = sub nsw i32 %54, 1
  %56 = icmp slt i32 %53, %55
  br i1 %56, label %57, label %64

57:                                               ; preds = %48
  %58 = load i32*, i32** %13, align 8
  %59 = load i32, i32* %17, align 4
  %60 = add nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %58, i64 %61
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %15, align 4
  br label %68

64:                                               ; preds = %48
  %65 = load %struct.Sampler*, %struct.Sampler** %8, align 8
  %66 = load float*, float** %18, align 8
  %67 = call i32 @sample(%struct.Sampler* noundef %65, float* noundef %66)
  store i32 %67, i32* %15, align 4
  br label %68

68:                                               ; preds = %64, %57
  %69 = load i32, i32* %17, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %17, align 4
  %71 = load i32, i32* %15, align 4
  %72 = icmp eq i32 %71, 1
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  br label %88

74:                                               ; preds = %68
  %75 = load %struct.Tokenizer*, %struct.Tokenizer** %7, align 8
  %76 = load i32, i32* %16, align 4
  %77 = load i32, i32* %15, align 4
  %78 = call i8* @decode(%struct.Tokenizer* noundef %75, i32 noundef %76, i32 noundef %77)
  store i8* %78, i8** %19, align 8
  %79 = load i8*, i8** %19, align 8
  call void @safe_printf(i8* noundef %79)
  %80 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8
  %81 = call i32 @fflush(%struct.__sFILE* noundef %80)
  %82 = load i32, i32* %15, align 4
  store i32 %82, i32* %16, align 4
  %83 = load i64, i64* %14, align 8
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %74
  %86 = call i64 @time_in_ms()
  store i64 %86, i64* %14, align 8
  br label %87

87:                                               ; preds = %85, %74
  br label %44, !llvm.loop !43

88:                                               ; preds = %73, %44
  %89 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  %90 = load i32, i32* %17, align 4
  %91 = icmp sgt i32 %90, 1
  br i1 %91, label %92, label %105

92:                                               ; preds = %88
  %93 = call i64 @time_in_ms()
  store i64 %93, i64* %20, align 8
  %94 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %95 = load i32, i32* %17, align 4
  %96 = sub nsw i32 %95, 1
  %97 = sitofp i32 %96 to double
  %98 = load i64, i64* %20, align 8
  %99 = load i64, i64* %14, align 8
  %100 = sub nsw i64 %98, %99
  %101 = sitofp i64 %100 to double
  %102 = fdiv double %97, %101
  %103 = fmul double %102, 1.000000e+03
  %104 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %94, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0), double noundef %103)
  br label %105

105:                                              ; preds = %92, %88
  %106 = load i32*, i32** %13, align 8
  %107 = bitcast i32* %106 to i8*
  call void @free(i8* noundef %107)
  ret void
}

declare i64 @strlen(i8* noundef) #2

declare i32 @fflush(%struct.__sFILE* noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @read_stdin(i8* noundef %0, i8* noundef %1, i64 noundef %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* noundef %8)
  %10 = load i8*, i8** %5, align 8
  %11 = load i64, i64* %6, align 8
  %12 = trunc i64 %11 to i32
  %13 = load %struct.__sFILE*, %struct.__sFILE** @__stdinp, align 8
  %14 = call i8* @fgets(i8* noundef %10, i32 noundef %12, %struct.__sFILE* noundef %13)
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %35

16:                                               ; preds = %3
  %17 = load i8*, i8** %5, align 8
  %18 = call i64 @strlen(i8* noundef %17)
  store i64 %18, i64* %7, align 8
  %19 = load i64, i64* %7, align 8
  %20 = icmp ugt i64 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %16
  %22 = load i8*, i8** %5, align 8
  %23 = load i64, i64* %7, align 8
  %24 = sub i64 %23, 1
  %25 = getelementptr inbounds i8, i8* %22, i64 %24
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 10
  br i1 %28, label %29, label %34

29:                                               ; preds = %21
  %30 = load i8*, i8** %5, align 8
  %31 = load i64, i64* %7, align 8
  %32 = sub i64 %31, 1
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  store i8 0, i8* %33, align 1
  br label %34

34:                                               ; preds = %29, %21, %16
  br label %35

35:                                               ; preds = %34, %3
  ret void
}

declare i8* @fgets(i8* noundef, i32 noundef, %struct.__sFILE* noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @chat(%struct.Transformer* noundef %0, %struct.Tokenizer* noundef %1, %struct.Sampler* noundef %2, i8* noundef %3, i8* noundef %4, i32 noundef %5) #0 {
  %7 = alloca %struct.Transformer*, align 8
  %8 = alloca %struct.Tokenizer*, align 8
  %9 = alloca %struct.Sampler*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca [512 x i8], align 1
  %14 = alloca [512 x i8], align 1
  %15 = alloca [1152 x i8], align 1
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8, align 1
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca [39 x i8], align 1
  %25 = alloca [18 x i8], align 1
  %26 = alloca float*, align 8
  %27 = alloca i8*, align 8
  store %struct.Transformer* %0, %struct.Transformer** %7, align 8
  store %struct.Tokenizer* %1, %struct.Tokenizer** %8, align 8
  store %struct.Sampler* %2, %struct.Sampler** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %16, align 4
  %28 = call i8* @malloc(i64 noundef 4608) #14
  %29 = bitcast i8* %28 to i32*
  store i32* %29, i32** %17, align 8
  store i8 1, i8* %19, align 1
  store i32 0, i32* %23, align 4
  br label %30

30:                                               ; preds = %134, %6
  %31 = load i32, i32* %23, align 4
  %32 = load i32, i32* %12, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %135

34:                                               ; preds = %30
  %35 = load i8, i8* %19, align 1
  %36 = icmp ne i8 %35, 0
  br i1 %36, label %37, label %88

37:                                               ; preds = %34
  %38 = load i32, i32* %23, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %37
  %41 = load i8*, i8** %11, align 8
  %42 = icmp eq i8* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = getelementptr inbounds [512 x i8], [512 x i8]* %13, i64 0, i64 0
  call void @read_stdin(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.16, i64 0, i64 0), i8* noundef %44, i64 noundef 512)
  br label %49

45:                                               ; preds = %40
  %46 = getelementptr inbounds [512 x i8], [512 x i8]* %13, i64 0, i64 0
  %47 = load i8*, i8** %11, align 8
  %48 = call i8* @__strcpy_chk(i8* noundef %46, i8* noundef %47, i64 noundef 512) #13
  br label %49

49:                                               ; preds = %45, %43
  br label %50

50:                                               ; preds = %49, %37
  %51 = load i32, i32* %23, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %50
  %54 = load i8*, i8** %10, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = getelementptr inbounds [512 x i8], [512 x i8]* %14, i64 0, i64 0
  %58 = load i8*, i8** %10, align 8
  %59 = call i8* @__strcpy_chk(i8* noundef %57, i8* noundef %58, i64 noundef 512) #13
  br label %62

60:                                               ; preds = %53, %50
  %61 = getelementptr inbounds [512 x i8], [512 x i8]* %14, i64 0, i64 0
  call void @read_stdin(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0), i8* noundef %61, i64 noundef 512)
  br label %62

62:                                               ; preds = %60, %56
  %63 = load i32, i32* %23, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %77

65:                                               ; preds = %62
  %66 = getelementptr inbounds [512 x i8], [512 x i8]* %13, i64 0, i64 0
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %65
  %71 = bitcast [39 x i8]* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %71, i8* align 1 getelementptr inbounds ([39 x i8], [39 x i8]* @__const.chat.system_template, i32 0, i32 0), i64 39, i1 false)
  %72 = getelementptr inbounds [1152 x i8], [1152 x i8]* %15, i64 0, i64 0
  %73 = getelementptr inbounds [39 x i8], [39 x i8]* %24, i64 0, i64 0
  %74 = getelementptr inbounds [512 x i8], [512 x i8]* %13, i64 0, i64 0
  %75 = getelementptr inbounds [512 x i8], [512 x i8]* %14, i64 0, i64 0
  %76 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* noundef %72, i32 noundef 0, i64 noundef 1152, i8* noundef %73, i8* noundef %74, i8* noundef %75)
  br label %83

77:                                               ; preds = %65, %62
  %78 = bitcast [18 x i8]* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %78, i8* align 1 getelementptr inbounds ([18 x i8], [18 x i8]* @__const.chat.user_template, i32 0, i32 0), i64 18, i1 false)
  %79 = getelementptr inbounds [1152 x i8], [1152 x i8]* %15, i64 0, i64 0
  %80 = getelementptr inbounds [18 x i8], [18 x i8]* %25, i64 0, i64 0
  %81 = getelementptr inbounds [512 x i8], [512 x i8]* %14, i64 0, i64 0
  %82 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* noundef %79, i32 noundef 0, i64 noundef 1152, i8* noundef %80, i8* noundef %81)
  br label %83

83:                                               ; preds = %77, %70
  %84 = load %struct.Tokenizer*, %struct.Tokenizer** %8, align 8
  %85 = getelementptr inbounds [1152 x i8], [1152 x i8]* %15, i64 0, i64 0
  %86 = load i32*, i32** %17, align 8
  call void @encode(%struct.Tokenizer* noundef %84, i8* noundef %85, i8 noundef signext 1, i8 noundef signext 0, i32* noundef %86, i32* noundef %16)
  store i32 0, i32* %18, align 4
  store i8 0, i8* %19, align 1
  %87 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0))
  br label %88

88:                                               ; preds = %83, %34
  %89 = load i32, i32* %18, align 4
  %90 = load i32, i32* %16, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %99

92:                                               ; preds = %88
  %93 = load i32*, i32** %17, align 8
  %94 = load i32, i32* %18, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %18, align 4
  %96 = sext i32 %94 to i64
  %97 = getelementptr inbounds i32, i32* %93, i64 %96
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %21, align 4
  br label %101

99:                                               ; preds = %88
  %100 = load i32, i32* %20, align 4
  store i32 %100, i32* %21, align 4
  br label %101

101:                                              ; preds = %99, %92
  %102 = load i32, i32* %21, align 4
  %103 = icmp eq i32 %102, 2
  br i1 %103, label %104, label %105

104:                                              ; preds = %101
  store i8 1, i8* %19, align 1
  br label %105

105:                                              ; preds = %104, %101
  %106 = load %struct.Transformer*, %struct.Transformer** %7, align 8
  %107 = load i32, i32* %21, align 4
  %108 = load i32, i32* %23, align 4
  %109 = call float* @forward(%struct.Transformer* noundef %106, i32 noundef %107, i32 noundef %108)
  store float* %109, float** %26, align 8
  %110 = load %struct.Sampler*, %struct.Sampler** %9, align 8
  %111 = load float*, float** %26, align 8
  %112 = call i32 @sample(%struct.Sampler* noundef %110, float* noundef %111)
  store i32 %112, i32* %20, align 4
  %113 = load i32, i32* %23, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %23, align 4
  %115 = load i32, i32* %18, align 4
  %116 = load i32, i32* %16, align 4
  %117 = icmp sge i32 %115, %116
  br i1 %117, label %118, label %129

118:                                              ; preds = %105
  %119 = load i32, i32* %20, align 4
  %120 = icmp ne i32 %119, 2
  br i1 %120, label %121, label %129

121:                                              ; preds = %118
  %122 = load %struct.Tokenizer*, %struct.Tokenizer** %8, align 8
  %123 = load i32, i32* %21, align 4
  %124 = load i32, i32* %20, align 4
  %125 = call i8* @decode(%struct.Tokenizer* noundef %122, i32 noundef %123, i32 noundef %124)
  store i8* %125, i8** %27, align 8
  %126 = load i8*, i8** %27, align 8
  call void @safe_printf(i8* noundef %126)
  %127 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8
  %128 = call i32 @fflush(%struct.__sFILE* noundef %127)
  br label %129

129:                                              ; preds = %121, %118, %105
  %130 = load i32, i32* %20, align 4
  %131 = icmp eq i32 %130, 2
  br i1 %131, label %132, label %134

132:                                              ; preds = %129
  %133 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  br label %134

134:                                              ; preds = %132, %129
  br label %30, !llvm.loop !44

135:                                              ; preds = %30
  %136 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  %137 = load i32*, i32** %17, align 8
  %138 = bitcast i32* %137 to i8*
  call void @free(i8* noundef %138)
  ret void
}

; Function Attrs: nounwind
declare i8* @__strcpy_chk(i8* noundef, i8* noundef, i64 noundef) #6

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #9

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { allocsize(0,1) "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { nounwind readnone willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #7 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #8 = { nounwind readonly willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #9 = { argmemonly nofree nounwind willreturn }
attributes #10 = { allocsize(0,1) }
attributes #11 = { noreturn }
attributes #12 = { nounwind readnone willreturn }
attributes #13 = { nounwind }
attributes #14 = { allocsize(0) }
attributes #15 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 13, i32 3]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{i32 7, !"frame-pointer", i32 1}
!9 = !{!"Apple clang version 14.0.3 (clang-1403.0.22.14.1)"}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}
!13 = distinct !{!13, !11}
!14 = distinct !{!14, !11}
!15 = distinct !{!15, !11}
!16 = distinct !{!16, !11}
!17 = distinct !{!17, !11}
!18 = distinct !{!18, !11}
!19 = distinct !{!19, !11}
!20 = distinct !{!20, !11}
!21 = distinct !{!21, !11}
!22 = distinct !{!22, !11}
!23 = distinct !{!23, !11}
!24 = distinct !{!24, !11}
!25 = distinct !{!25, !11}
!26 = distinct !{!26, !11}
!27 = distinct !{!27, !11}
!28 = distinct !{!28, !11}
!29 = distinct !{!29, !11}
!30 = distinct !{!30, !11}
!31 = distinct !{!31, !11}
!32 = distinct !{!32, !11}
!33 = distinct !{!33, !11}
!34 = distinct !{!34, !11}
!35 = distinct !{!35, !11}
!36 = distinct !{!36, !11}
!37 = distinct !{!37, !11}
!38 = distinct !{!38, !11}
!39 = distinct !{!39, !11}
!40 = distinct !{!40, !11}
!41 = distinct !{!41, !11}
!42 = distinct !{!42, !11}
!43 = distinct !{!43, !11}
!44 = distinct !{!44, !11}
