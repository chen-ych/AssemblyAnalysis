; ModuleID = 'resize.c'
source_filename = "resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [28 x i8] c"resize process cycles: %lu\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @resize_golden(i16* noalias %0, i16* noalias %1, i16 zeroext %2, i16 zeroext %3, i16 zeroext %4, i16 zeroext %5, i16 zeroext %6, i16 zeroext %7, i16 zeroext %8) #0 {
  %10 = alloca i16*, align 8
  %11 = alloca i16*, align 8
  %12 = alloca i16, align 2
  %13 = alloca i16, align 2
  %14 = alloca i16, align 2
  %15 = alloca i16, align 2
  %16 = alloca i16, align 2
  %17 = alloca i16, align 2
  %18 = alloca i16, align 2
  %19 = alloca i16, align 2
  %20 = alloca i16, align 2
  %21 = alloca i16, align 2
  %22 = alloca i16, align 2
  %23 = alloca i16, align 2
  %24 = alloca i16, align 2
  %25 = alloca i16, align 2
  %26 = alloca i16, align 2
  %27 = alloca i16, align 2
  %28 = alloca i16, align 2
  %29 = alloca i16, align 2
  %30 = alloca i16, align 2
  %31 = alloca i16, align 2
  %32 = alloca i16, align 2
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i16, align 2
  %39 = alloca i16, align 2
  store i16* %0, i16** %10, align 8
  store i16* %1, i16** %11, align 8
  store i16 %2, i16* %12, align 2
  store i16 %3, i16* %13, align 2
  store i16 %4, i16* %14, align 2
  store i16 %5, i16* %15, align 2
  store i16 %6, i16* %16, align 2
  store i16 %7, i16* %17, align 2
  store i16 %8, i16* %18, align 2
  store i16 0, i16* %19, align 2
  br label %40

40:                                               ; preds = %293, %9
  %41 = load i16, i16* %19, align 2
  %42 = zext i16 %41 to i32
  %43 = load i16, i16* %14, align 2
  %44 = zext i16 %43 to i32
  %45 = icmp slt i32 %42, %44
  br i1 %45, label %46, label %296

46:                                               ; preds = %40
  %47 = load i16, i16* %19, align 2
  %48 = zext i16 %47 to i32
  %49 = shl i32 %48, 7
  %50 = ashr i32 %49, 1
  %51 = trunc i32 %50 to i16
  store i16 %51, i16* %20, align 2
  %52 = load i16, i16* %20, align 2
  %53 = zext i16 %52 to i32
  %54 = ashr i32 %53, 7
  %55 = trunc i32 %54 to i16
  store i16 %55, i16* %21, align 2
  %56 = load i16, i16* %21, align 2
  %57 = zext i16 %56 to i32
  %58 = add nsw i32 %57, 1
  %59 = load i16, i16* %12, align 2
  %60 = zext i16 %59 to i32
  %61 = sub nsw i32 %60, 1
  %62 = icmp slt i32 %58, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %46
  %64 = load i16, i16* %21, align 2
  %65 = zext i16 %64 to i32
  %66 = add nsw i32 %65, 1
  br label %71

67:                                               ; preds = %46
  %68 = load i16, i16* %12, align 2
  %69 = zext i16 %68 to i32
  %70 = sub nsw i32 %69, 1
  br label %71

71:                                               ; preds = %67, %63
  %72 = phi i32 [ %66, %63 ], [ %70, %67 ]
  %73 = trunc i32 %72 to i16
  store i16 %73, i16* %22, align 2
  store i16 0, i16* %23, align 2
  br label %74

74:                                               ; preds = %289, %71
  %75 = load i16, i16* %23, align 2
  %76 = zext i16 %75 to i32
  %77 = load i16, i16* %15, align 2
  %78 = zext i16 %77 to i32
  %79 = icmp slt i32 %76, %78
  br i1 %79, label %80, label %292

80:                                               ; preds = %74
  %81 = load i16, i16* %23, align 2
  %82 = zext i16 %81 to i32
  %83 = shl i32 %82, 7
  %84 = ashr i32 %83, 1
  %85 = trunc i32 %84 to i16
  store i16 %85, i16* %24, align 2
  %86 = load i16, i16* %24, align 2
  %87 = zext i16 %86 to i32
  %88 = ashr i32 %87, 7
  %89 = trunc i32 %88 to i16
  store i16 %89, i16* %25, align 2
  %90 = load i16, i16* %25, align 2
  %91 = zext i16 %90 to i32
  %92 = add nsw i32 %91, 1
  %93 = load i16, i16* %13, align 2
  %94 = zext i16 %93 to i32
  %95 = sub nsw i32 %94, 1
  %96 = icmp slt i32 %92, %95
  br i1 %96, label %97, label %101

97:                                               ; preds = %80
  %98 = load i16, i16* %25, align 2
  %99 = zext i16 %98 to i32
  %100 = add nsw i32 %99, 1
  br label %105

101:                                              ; preds = %80
  %102 = load i16, i16* %13, align 2
  %103 = zext i16 %102 to i32
  %104 = sub nsw i32 %103, 1
  br label %105

105:                                              ; preds = %101, %97
  %106 = phi i32 [ %100, %97 ], [ %104, %101 ]
  %107 = trunc i32 %106 to i16
  store i16 %107, i16* %26, align 2
  store i16 0, i16* %27, align 2
  br label %108

108:                                              ; preds = %285, %105
  %109 = load i16, i16* %27, align 2
  %110 = zext i16 %109 to i32
  %111 = load i16, i16* %16, align 2
  %112 = zext i16 %111 to i32
  %113 = icmp slt i32 %110, %112
  br i1 %113, label %114, label %288

114:                                              ; preds = %108
  store i16 128, i16* %28, align 2
  %115 = load i16, i16* %20, align 2
  %116 = zext i16 %115 to i32
  %117 = load i16, i16* %21, align 2
  %118 = zext i16 %117 to i32
  %119 = shl i32 %118, 7
  %120 = sub nsw i32 %116, %119
  %121 = trunc i32 %120 to i16
  store i16 %121, i16* %29, align 2
  %122 = load i16, i16* %28, align 2
  %123 = zext i16 %122 to i32
  %124 = load i16, i16* %29, align 2
  %125 = zext i16 %124 to i32
  %126 = sub nsw i32 %123, %125
  %127 = trunc i32 %126 to i16
  store i16 %127, i16* %30, align 2
  %128 = load i16, i16* %24, align 2
  %129 = zext i16 %128 to i32
  %130 = load i16, i16* %25, align 2
  %131 = zext i16 %130 to i32
  %132 = shl i32 %131, 7
  %133 = sub nsw i32 %129, %132
  %134 = trunc i32 %133 to i16
  store i16 %134, i16* %31, align 2
  %135 = load i16, i16* %28, align 2
  %136 = zext i16 %135 to i32
  %137 = load i16, i16* %31, align 2
  %138 = zext i16 %137 to i32
  %139 = sub nsw i32 %136, %138
  %140 = trunc i32 %139 to i16
  store i16 %140, i16* %32, align 2
  %141 = load i16, i16* %27, align 2
  %142 = zext i16 %141 to i32
  %143 = load i16, i16* %13, align 2
  %144 = zext i16 %143 to i32
  %145 = mul nsw i32 %142, %144
  %146 = load i16, i16* %12, align 2
  %147 = zext i16 %146 to i32
  %148 = mul nsw i32 %145, %147
  %149 = load i16, i16* %21, align 2
  %150 = zext i16 %149 to i32
  %151 = load i16, i16* %13, align 2
  %152 = zext i16 %151 to i32
  %153 = mul nsw i32 %150, %152
  %154 = add nsw i32 %148, %153
  %155 = load i16, i16* %25, align 2
  %156 = zext i16 %155 to i32
  %157 = add nsw i32 %154, %156
  store i32 %157, i32* %33, align 4
  %158 = load i16, i16* %27, align 2
  %159 = zext i16 %158 to i32
  %160 = load i16, i16* %13, align 2
  %161 = zext i16 %160 to i32
  %162 = mul nsw i32 %159, %161
  %163 = load i16, i16* %12, align 2
  %164 = zext i16 %163 to i32
  %165 = mul nsw i32 %162, %164
  %166 = load i16, i16* %21, align 2
  %167 = zext i16 %166 to i32
  %168 = load i16, i16* %13, align 2
  %169 = zext i16 %168 to i32
  %170 = mul nsw i32 %167, %169
  %171 = add nsw i32 %165, %170
  %172 = load i16, i16* %26, align 2
  %173 = zext i16 %172 to i32
  %174 = add nsw i32 %171, %173
  store i32 %174, i32* %34, align 4
  %175 = load i16, i16* %27, align 2
  %176 = zext i16 %175 to i32
  %177 = load i16, i16* %13, align 2
  %178 = zext i16 %177 to i32
  %179 = mul nsw i32 %176, %178
  %180 = load i16, i16* %12, align 2
  %181 = zext i16 %180 to i32
  %182 = mul nsw i32 %179, %181
  %183 = load i16, i16* %22, align 2
  %184 = zext i16 %183 to i32
  %185 = load i16, i16* %13, align 2
  %186 = zext i16 %185 to i32
  %187 = mul nsw i32 %184, %186
  %188 = add nsw i32 %182, %187
  %189 = load i16, i16* %25, align 2
  %190 = zext i16 %189 to i32
  %191 = add nsw i32 %188, %190
  store i32 %191, i32* %35, align 4
  %192 = load i16, i16* %27, align 2
  %193 = zext i16 %192 to i32
  %194 = load i16, i16* %13, align 2
  %195 = zext i16 %194 to i32
  %196 = mul nsw i32 %193, %195
  %197 = load i16, i16* %12, align 2
  %198 = zext i16 %197 to i32
  %199 = mul nsw i32 %196, %198
  %200 = load i16, i16* %22, align 2
  %201 = zext i16 %200 to i32
  %202 = load i16, i16* %13, align 2
  %203 = zext i16 %202 to i32
  %204 = mul nsw i32 %201, %203
  %205 = add nsw i32 %199, %204
  %206 = load i16, i16* %26, align 2
  %207 = zext i16 %206 to i32
  %208 = add nsw i32 %205, %207
  store i32 %208, i32* %36, align 4
  %209 = load i16, i16* %27, align 2
  %210 = zext i16 %209 to i32
  %211 = load i16, i16* %15, align 2
  %212 = zext i16 %211 to i32
  %213 = mul nsw i32 %210, %212
  %214 = load i16, i16* %14, align 2
  %215 = zext i16 %214 to i32
  %216 = mul nsw i32 %213, %215
  %217 = load i16, i16* %19, align 2
  %218 = zext i16 %217 to i32
  %219 = load i16, i16* %15, align 2
  %220 = zext i16 %219 to i32
  %221 = mul nsw i32 %218, %220
  %222 = add nsw i32 %216, %221
  %223 = load i16, i16* %23, align 2
  %224 = zext i16 %223 to i32
  %225 = add nsw i32 %222, %224
  store i32 %225, i32* %37, align 4
  %226 = load i16, i16* %32, align 2
  %227 = zext i16 %226 to i32
  %228 = load i16*, i16** %10, align 8
  %229 = load i32, i32* %33, align 4
  %230 = zext i32 %229 to i64
  %231 = getelementptr inbounds i16, i16* %228, i64 %230
  %232 = load i16, i16* %231, align 2
  %233 = sext i16 %232 to i32
  %234 = mul nsw i32 %227, %233
  %235 = load i16, i16* %31, align 2
  %236 = zext i16 %235 to i32
  %237 = load i16*, i16** %10, align 8
  %238 = load i32, i32* %34, align 4
  %239 = zext i32 %238 to i64
  %240 = getelementptr inbounds i16, i16* %237, i64 %239
  %241 = load i16, i16* %240, align 2
  %242 = sext i16 %241 to i32
  %243 = mul nsw i32 %236, %242
  %244 = add nsw i32 %234, %243
  %245 = ashr i32 %244, 7
  %246 = trunc i32 %245 to i16
  store i16 %246, i16* %38, align 2
  %247 = load i16, i16* %32, align 2
  %248 = zext i16 %247 to i32
  %249 = load i16*, i16** %10, align 8
  %250 = load i32, i32* %35, align 4
  %251 = zext i32 %250 to i64
  %252 = getelementptr inbounds i16, i16* %249, i64 %251
  %253 = load i16, i16* %252, align 2
  %254 = sext i16 %253 to i32
  %255 = mul nsw i32 %248, %254
  %256 = load i16, i16* %31, align 2
  %257 = zext i16 %256 to i32
  %258 = load i16*, i16** %10, align 8
  %259 = load i32, i32* %36, align 4
  %260 = zext i32 %259 to i64
  %261 = getelementptr inbounds i16, i16* %258, i64 %260
  %262 = load i16, i16* %261, align 2
  %263 = sext i16 %262 to i32
  %264 = mul nsw i32 %257, %263
  %265 = add nsw i32 %255, %264
  %266 = ashr i32 %265, 7
  %267 = trunc i32 %266 to i16
  store i16 %267, i16* %39, align 2
  %268 = load i16, i16* %30, align 2
  %269 = zext i16 %268 to i32
  %270 = load i16, i16* %38, align 2
  %271 = sext i16 %270 to i32
  %272 = mul nsw i32 %269, %271
  %273 = load i16, i16* %29, align 2
  %274 = zext i16 %273 to i32
  %275 = load i16, i16* %39, align 2
  %276 = sext i16 %275 to i32
  %277 = mul nsw i32 %274, %276
  %278 = add nsw i32 %272, %277
  %279 = ashr i32 %278, 7
  %280 = trunc i32 %279 to i16
  %281 = load i16*, i16** %11, align 8
  %282 = load i32, i32* %37, align 4
  %283 = zext i32 %282 to i64
  %284 = getelementptr inbounds i16, i16* %281, i64 %283
  store i16 %280, i16* %284, align 2
  br label %285

285:                                              ; preds = %114
  %286 = load i16, i16* %27, align 2
  %287 = add i16 %286, 1
  store i16 %287, i16* %27, align 2
  br label %108

288:                                              ; preds = %108
  br label %289

289:                                              ; preds = %288
  %290 = load i16, i16* %23, align 2
  %291 = add i16 %290, 1
  store i16 %291, i16* %23, align 2
  br label %74

292:                                              ; preds = %74
  br label %293

293:                                              ; preds = %292
  %294 = load i16, i16* %19, align 2
  %295 = add i16 %294, 1
  store i16 %295, i16* %19, align 2
  br label %40

296:                                              ; preds = %40
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i16, align 2
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  store i16 112, i16* %2, align 2
  store i16 88, i16* %3, align 2
  store i16 1, i16* %4, align 2
  store i16 2, i16* %5, align 2
  store i16 2, i16* %6, align 2
  %17 = load i16, i16* %2, align 2
  %18 = zext i16 %17 to i32
  %19 = load i16, i16* %3, align 2
  %20 = zext i16 %19 to i32
  %21 = mul nsw i32 %18, %20
  %22 = load i16, i16* %4, align 2
  %23 = zext i16 %22 to i32
  %24 = mul nsw i32 %21, %23
  store i32 %24, i32* %7, align 4
  %25 = load i16, i16* %2, align 2
  %26 = zext i16 %25 to i32
  %27 = load i16, i16* %5, align 2
  %28 = zext i16 %27 to i32
  %29 = mul nsw i32 %26, %28
  %30 = trunc i32 %29 to i16
  store i16 %30, i16* %8, align 2
  %31 = load i16, i16* %3, align 2
  %32 = zext i16 %31 to i32
  %33 = load i16, i16* %6, align 2
  %34 = zext i16 %33 to i32
  %35 = mul nsw i32 %32, %34
  %36 = trunc i32 %35 to i16
  store i16 %36, i16* %9, align 2
  %37 = load i16, i16* %8, align 2
  %38 = zext i16 %37 to i32
  %39 = load i16, i16* %9, align 2
  %40 = zext i16 %39 to i32
  %41 = mul nsw i32 %38, %40
  %42 = load i16, i16* %4, align 2
  %43 = zext i16 %42 to i32
  %44 = mul nsw i32 %41, %43
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %7, align 4
  %46 = zext i32 %45 to i64
  %47 = call i8* @llvm.stacksave()
  store i8* %47, i8** %11, align 8
  %48 = alloca i16, i64 %46, align 16
  store i64 %46, i64* %12, align 8
  %49 = load i32, i32* %10, align 4
  %50 = zext i32 %49 to i64
  %51 = alloca i16, i64 %50, align 16
  store i64 %50, i64* %13, align 8
  store i32 0, i32* %14, align 4
  br label %52

52:                                               ; preds = %63, %0
  %53 = load i32, i32* %14, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp ult i32 %53, %54
  br i1 %55, label %56, label %66

56:                                               ; preds = %52
  %57 = call i32 @rand() #1
  %58 = srem i32 %57, 64
  %59 = trunc i32 %58 to i16
  %60 = load i32, i32* %14, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i16, i16* %48, i64 %61
  store i16 %59, i16* %62, align 2
  br label %63

63:                                               ; preds = %56
  %64 = load i32, i32* %14, align 4
  %65 = add i32 %64, 1
  store i32 %65, i32* %14, align 4
  br label %52

66:                                               ; preds = %52
  %67 = call i32 (...) @rdcycle()
  %68 = sext i32 %67 to i64
  store i64 %68, i64* %15, align 8
  %69 = load i16, i16* %2, align 2
  %70 = load i16, i16* %3, align 2
  %71 = load i16, i16* %8, align 2
  %72 = load i16, i16* %9, align 2
  %73 = load i16, i16* %4, align 2
  %74 = load i16, i16* %5, align 2
  %75 = load i16, i16* %6, align 2
  call void @resize_golden(i16* %48, i16* %51, i16 zeroext %69, i16 zeroext %70, i16 zeroext %71, i16 zeroext %72, i16 zeroext %73, i16 zeroext %74, i16 zeroext %75)
  %76 = call i32 (...) @rdcycle()
  %77 = sext i32 %76 to i64
  store i64 %77, i64* %16, align 8
  %78 = load i64, i64* %16, align 8
  %79 = load i64, i64* %15, align 8
  %80 = sub i64 %78, %79
  %81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %80)
  %82 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %82)
  %83 = load i32, i32* %1, align 4
  ret i32 %83
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: nounwind
declare dso_local i32 @rand() #2

declare dso_local i32 @rdcycle(...) #3

declare dso_local i32 @printf(i8*, ...) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (Red Hat 10.0.1-1.module_el8.3.0+467+cb298d5b)"}
