; ModuleID = 'psroi_golden.c'
source_filename = "psroi_golden.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"failed, %d != %d\0A\00", align 1
@str = private unnamed_addr constant [7 x i8] c"passed\00", align 1

; Function Attrs: norecurse nounwind readonly uwtable
define dso_local i32 @bilinear_interpolate(i8* nocapture readonly %0, i16 signext %1, i16 signext %2, i16 signext %3, i16 signext %4) local_unnamed_addr #0 {
  %6 = ashr i16 %3, 4
  %7 = sext i16 %1 to i32
  %8 = icmp slt i16 %6, %1
  br i1 %8, label %9, label %92

9:                                                ; preds = %5
  %10 = ashr i16 %4, 4
  %11 = sext i16 %2 to i32
  %12 = icmp slt i16 %10, %2
  br i1 %12, label %13, label %92

13:                                               ; preds = %9
  %14 = icmp sgt i16 %3, 0
  %15 = select i1 %14, i16 %3, i16 0
  %16 = icmp sgt i16 %4, 0
  %17 = select i1 %16, i16 %4, i16 0
  %18 = lshr i16 %15, 4
  %19 = zext i16 %18 to i32
  %20 = lshr i16 %17, 4
  %21 = zext i16 %20 to i32
  %22 = add nsw i32 %7, -1
  %23 = icmp sgt i32 %22, %19
  %24 = trunc i32 %22 to i16
  %25 = shl i16 %24, 4
  %26 = add nuw nsw i32 %19, 1
  %27 = select i1 %23, i32 %26, i32 %22
  %28 = select i1 %23, i32 %19, i32 %22
  %29 = select i1 %23, i16 %15, i16 %25
  %30 = add nsw i32 %11, -1
  %31 = icmp sgt i32 %30, %21
  %32 = trunc i32 %30 to i16
  %33 = shl i16 %32, 4
  %34 = add nuw nsw i32 %21, 1
  %35 = select i1 %31, i32 %34, i32 %30
  %36 = select i1 %31, i32 %21, i32 %30
  %37 = select i1 %31, i16 %17, i16 %33
  %38 = trunc i32 %28 to i16
  %39 = shl i16 %38, 4
  %40 = sub i16 %29, %39
  %41 = trunc i32 %36 to i16
  %42 = shl i16 %41, 4
  %43 = sub i16 %37, %42
  %44 = zext i16 %40 to i32
  %45 = sub i16 16, %40
  %46 = zext i16 %43 to i32
  %47 = sub i16 16, %43
  %48 = mul nsw i32 %28, %11
  %49 = add nsw i32 %48, %36
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %0, i64 %50
  %52 = load i8, i8* %51, align 1, !tbaa !2
  %53 = add nsw i32 %48, %35
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %0, i64 %54
  %56 = load i8, i8* %55, align 1, !tbaa !2
  %57 = mul nsw i32 %27, %11
  %58 = add nsw i32 %57, %36
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %0, i64 %59
  %61 = load i8, i8* %60, align 1, !tbaa !2
  %62 = add nsw i32 %57, %35
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %0, i64 %63
  %65 = load i8, i8* %64, align 1, !tbaa !2
  %66 = zext i16 %45 to i32
  %67 = zext i16 %47 to i32
  %68 = mul nuw nsw i32 %67, %66
  %69 = lshr i32 %68, 4
  %70 = mul nuw nsw i32 %66, %46
  %71 = lshr i32 %70, 4
  %72 = mul nuw nsw i32 %67, %44
  %73 = lshr i32 %72, 4
  %74 = mul nuw nsw i32 %46, %44
  %75 = lshr i32 %74, 4
  %76 = and i32 %69, 65535
  %77 = zext i8 %52 to i32
  %78 = mul nuw nsw i32 %76, %77
  %79 = and i32 %71, 65535
  %80 = zext i8 %56 to i32
  %81 = mul nuw nsw i32 %79, %80
  %82 = add nuw nsw i32 %81, %78
  %83 = and i32 %73, 65535
  %84 = zext i8 %61 to i32
  %85 = mul nuw nsw i32 %83, %84
  %86 = add nuw nsw i32 %82, %85
  %87 = and i32 %75, 65535
  %88 = zext i8 %65 to i32
  %89 = mul nuw nsw i32 %87, %88
  %90 = add nuw nsw i32 %86, %89
  %91 = lshr i32 %90, 4
  br label %92

92:                                               ; preds = %5, %9, %13
  %93 = phi i32 [ %91, %13 ], [ 0, %9 ], [ 0, %5 ]
  ret i32 %93
}

; Function Attrs: nofree norecurse nounwind uwtable
define dso_local void @psroi_align_golden(i8* nocapture readonly %0, i16* nocapture readonly %1, i16* nocapture %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, i8 zeroext %12) local_unnamed_addr #1 {
  %14 = icmp eq i32 %3, 0
  br i1 %14, label %62, label %15

15:                                               ; preds = %13
  %16 = urem i32 %4, %6
  %17 = udiv i32 %4, %6
  %18 = uitofp i32 %6 to double
  %19 = fdiv double 1.000000e+00, %18
  %20 = fmul double %19, 2.560000e+02
  %21 = fptoui double %20 to i16
  %22 = uitofp i32 %5 to double
  %23 = fdiv double 1.000000e+00, %22
  %24 = fmul double %23, 2.560000e+02
  %25 = fptoui double %24 to i16
  %26 = zext i16 %21 to i32
  %27 = zext i16 %25 to i32
  %28 = zext i8 %12 to i32
  %29 = zext i8 %12 to i16
  %30 = shl nuw nsw i16 %29, 1
  %31 = icmp eq i32 %7, 0
  %32 = and i32 %17, 65535
  %33 = mul i32 %32, %6
  %34 = and i32 %16, 65535
  %35 = add i32 %34, %33
  %36 = icmp eq i8 %12, 0
  %37 = trunc i32 %8 to i16
  %38 = trunc i32 %9 to i16
  %39 = mul i32 %9, %8
  %40 = zext i32 %39 to i64
  %41 = zext i32 %3 to i64
  %42 = zext i32 %7 to i64
  %43 = zext i32 %7 to i64
  %44 = add nsw i64 %43, -1
  %45 = add i32 %33, %34
  %46 = and i64 %42, 4294967280
  %47 = add nsw i64 %46, -16
  %48 = lshr exact i64 %47, 4
  %49 = add nuw nsw i64 %48, 1
  %50 = icmp ult i32 %7, 16
  %51 = icmp ne i32 %11, 1
  %52 = trunc i64 %44 to i32
  %53 = icmp ugt i64 %44, 4294967295
  %54 = and i64 %43, 4294967280
  %55 = and i64 %49, 3
  %56 = icmp ult i64 %47, 48
  %57 = sub nsw i64 %49, %55
  %58 = icmp eq i64 %55, 0
  %59 = icmp eq i64 %54, %43
  %60 = and i64 %42, 3
  %61 = icmp eq i64 %60, 0
  br label %63

62:                                               ; preds = %234, %13
  ret void

63:                                               ; preds = %234, %15
  %64 = phi i64 [ 0, %15 ], [ %235, %234 ]
  %65 = trunc i64 %64 to i32
  %66 = shl i32 %65, 2
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i16, i16* %1, i64 %67
  %69 = load i16, i16* %68, align 2, !tbaa !5
  %70 = or i32 %66, 1
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds i16, i16* %1, i64 %71
  %73 = load i16, i16* %72, align 2, !tbaa !5
  %74 = or i32 %66, 2
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds i16, i16* %1, i64 %75
  %77 = load i16, i16* %76, align 2, !tbaa !5
  %78 = or i32 %66, 3
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds i16, i16* %1, i64 %79
  %81 = load i16, i16* %80, align 2, !tbaa !5
  %82 = zext i16 %77 to i32
  %83 = zext i16 %69 to i32
  %84 = sub nsw i32 %82, %83
  %85 = icmp sgt i32 %84, 16
  %86 = select i1 %85, i32 %84, i32 16
  %87 = zext i16 %81 to i32
  %88 = zext i16 %73 to i32
  %89 = sub nsw i32 %87, %88
  %90 = icmp sgt i32 %89, 16
  %91 = select i1 %90, i32 %89, i32 16
  %92 = mul nuw nsw i32 %86, %26
  %93 = lshr i32 %92, 8
  %94 = mul nuw nsw i32 %91, %27
  %95 = lshr i32 %94, 8
  %96 = trunc i32 %93 to i16
  %97 = udiv i16 %96, %30
  %98 = zext i16 %97 to i32
  %99 = trunc i32 %95 to i16
  %100 = udiv i16 %99, %30
  %101 = zext i16 %100 to i32
  br i1 %31, label %234, label %102

102:                                              ; preds = %63
  %103 = and i32 %95, 65535
  %104 = and i32 %93, 65535
  %105 = mul i32 %65, %10
  %106 = add i32 %35, %105
  %107 = mul nuw nsw i32 %103, %32
  %108 = add nuw nsw i32 %107, %88
  %109 = mul nuw nsw i32 %104, %34
  %110 = add nuw nsw i32 %109, %83
  br i1 %36, label %111, label %197

111:                                              ; preds = %102
  br i1 %50, label %112, label %130

112:                                              ; preds = %196, %130, %111
  %113 = phi i64 [ 0, %130 ], [ 0, %111 ], [ %54, %196 ]
  %114 = xor i64 %113, -1
  %115 = add nsw i64 %114, %42
  br i1 %61, label %127, label %116

116:                                              ; preds = %112, %116
  %117 = phi i64 [ %124, %116 ], [ %113, %112 ]
  %118 = phi i64 [ %125, %116 ], [ %60, %112 ]
  %119 = trunc i64 %117 to i32
  %120 = mul i32 %119, %11
  %121 = add i32 %106, %120
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds i16, i16* %2, i64 %122
  store i16 0, i16* %123, align 2, !tbaa !5
  %124 = add nuw nsw i64 %117, 1
  %125 = add i64 %118, -1
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %127, label %116, !llvm.loop !7

127:                                              ; preds = %116, %112
  %128 = phi i64 [ %113, %112 ], [ %124, %116 ]
  %129 = icmp ult i64 %115, 3
  br i1 %129, label %234, label %237

130:                                              ; preds = %111
  %131 = trunc i64 %64 to i32
  %132 = mul i32 %131, %10
  %133 = add i32 %45, %132
  %134 = xor i32 %133, -1
  %135 = icmp ult i32 %134, %52
  %136 = or i1 %135, %53
  %137 = or i1 %51, %136
  br i1 %137, label %112, label %138

138:                                              ; preds = %130
  br i1 %56, label %180, label %139

139:                                              ; preds = %138, %139
  %140 = phi i64 [ %177, %139 ], [ 0, %138 ]
  %141 = phi i64 [ %178, %139 ], [ %57, %138 ]
  %142 = trunc i64 %140 to i32
  %143 = mul i32 %142, %11
  %144 = add i32 %106, %143
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds i16, i16* %2, i64 %145
  %147 = bitcast i16* %146 to <8 x i16>*
  store <8 x i16> zeroinitializer, <8 x i16>* %147, align 2, !tbaa !5
  %148 = getelementptr inbounds i16, i16* %146, i64 8
  %149 = bitcast i16* %148 to <8 x i16>*
  store <8 x i16> zeroinitializer, <8 x i16>* %149, align 2, !tbaa !5
  %150 = trunc i64 %140 to i32
  %151 = or i32 %150, 16
  %152 = mul i32 %151, %11
  %153 = add i32 %106, %152
  %154 = zext i32 %153 to i64
  %155 = getelementptr inbounds i16, i16* %2, i64 %154
  %156 = bitcast i16* %155 to <8 x i16>*
  store <8 x i16> zeroinitializer, <8 x i16>* %156, align 2, !tbaa !5
  %157 = getelementptr inbounds i16, i16* %155, i64 8
  %158 = bitcast i16* %157 to <8 x i16>*
  store <8 x i16> zeroinitializer, <8 x i16>* %158, align 2, !tbaa !5
  %159 = trunc i64 %140 to i32
  %160 = or i32 %159, 32
  %161 = mul i32 %160, %11
  %162 = add i32 %106, %161
  %163 = zext i32 %162 to i64
  %164 = getelementptr inbounds i16, i16* %2, i64 %163
  %165 = bitcast i16* %164 to <8 x i16>*
  store <8 x i16> zeroinitializer, <8 x i16>* %165, align 2, !tbaa !5
  %166 = getelementptr inbounds i16, i16* %164, i64 8
  %167 = bitcast i16* %166 to <8 x i16>*
  store <8 x i16> zeroinitializer, <8 x i16>* %167, align 2, !tbaa !5
  %168 = trunc i64 %140 to i32
  %169 = or i32 %168, 48
  %170 = mul i32 %169, %11
  %171 = add i32 %106, %170
  %172 = zext i32 %171 to i64
  %173 = getelementptr inbounds i16, i16* %2, i64 %172
  %174 = bitcast i16* %173 to <8 x i16>*
  store <8 x i16> zeroinitializer, <8 x i16>* %174, align 2, !tbaa !5
  %175 = getelementptr inbounds i16, i16* %173, i64 8
  %176 = bitcast i16* %175 to <8 x i16>*
  store <8 x i16> zeroinitializer, <8 x i16>* %176, align 2, !tbaa !5
  %177 = add i64 %140, 64
  %178 = add i64 %141, -4
  %179 = icmp eq i64 %178, 0
  br i1 %179, label %180, label %139, !llvm.loop !9

180:                                              ; preds = %139, %138
  %181 = phi i64 [ 0, %138 ], [ %177, %139 ]
  br i1 %58, label %196, label %182

182:                                              ; preds = %180, %182
  %183 = phi i64 [ %193, %182 ], [ %181, %180 ]
  %184 = phi i64 [ %194, %182 ], [ %55, %180 ]
  %185 = trunc i64 %183 to i32
  %186 = mul i32 %185, %11
  %187 = add i32 %106, %186
  %188 = zext i32 %187 to i64
  %189 = getelementptr inbounds i16, i16* %2, i64 %188
  %190 = bitcast i16* %189 to <8 x i16>*
  store <8 x i16> zeroinitializer, <8 x i16>* %190, align 2, !tbaa !5
  %191 = getelementptr inbounds i16, i16* %189, i64 8
  %192 = bitcast i16* %191 to <8 x i16>*
  store <8 x i16> zeroinitializer, <8 x i16>* %192, align 2, !tbaa !5
  %193 = add i64 %183, 16
  %194 = add i64 %184, -1
  %195 = icmp eq i64 %194, 0
  br i1 %195, label %196, label %182, !llvm.loop !11

196:                                              ; preds = %182, %180
  br i1 %59, label %234, label %112

197:                                              ; preds = %102, %203
  %198 = phi i64 [ %209, %203 ], [ 0, %102 ]
  %199 = phi i8* [ %208, %203 ], [ %0, %102 ]
  %200 = trunc i64 %198 to i32
  %201 = mul i32 %200, %11
  %202 = add i32 %106, %201
  br label %211

203:                                              ; preds = %219
  %204 = lshr i32 %231, 2
  %205 = trunc i32 %204 to i16
  %206 = zext i32 %202 to i64
  %207 = getelementptr inbounds i16, i16* %2, i64 %206
  store i16 %205, i16* %207, align 2, !tbaa !5
  %208 = getelementptr inbounds i8, i8* %199, i64 %40
  %209 = add nuw nsw i64 %198, 1
  %210 = icmp eq i64 %209, %42
  br i1 %210, label %234, label %197

211:                                              ; preds = %219, %197
  %212 = phi i32 [ %220, %219 ], [ 0, %197 ]
  %213 = phi i32 [ %231, %219 ], [ 0, %197 ]
  %214 = shl nuw nsw i32 %212, 1
  %215 = or i32 %214, 1
  %216 = mul nuw nsw i32 %215, %101
  %217 = add nuw nsw i32 %108, %216
  %218 = trunc i32 %217 to i16
  br label %222

219:                                              ; preds = %222
  %220 = add nuw nsw i32 %212, 1
  %221 = icmp eq i32 %220, %28
  br i1 %221, label %203, label %211

222:                                              ; preds = %222, %211
  %223 = phi i32 [ 0, %211 ], [ %232, %222 ]
  %224 = phi i32 [ %213, %211 ], [ %231, %222 ]
  %225 = shl nuw nsw i32 %223, 1
  %226 = or i32 %225, 1
  %227 = mul nuw nsw i32 %226, %98
  %228 = add nuw nsw i32 %110, %227
  %229 = trunc i32 %228 to i16
  %230 = tail call i32 @bilinear_interpolate(i8* %199, i16 signext %37, i16 signext %38, i16 signext %218, i16 signext %229)
  %231 = add i32 %230, %224
  %232 = add nuw nsw i32 %223, 1
  %233 = icmp eq i32 %232, %28
  br i1 %233, label %219, label %222

234:                                              ; preds = %203, %127, %237, %196, %63
  %235 = add nuw nsw i64 %64, 1
  %236 = icmp eq i64 %235, %41
  br i1 %236, label %62, label %63

237:                                              ; preds = %127, %237
  %238 = phi i64 [ %262, %237 ], [ %128, %127 ]
  %239 = trunc i64 %238 to i32
  %240 = mul i32 %239, %11
  %241 = add i32 %106, %240
  %242 = zext i32 %241 to i64
  %243 = getelementptr inbounds i16, i16* %2, i64 %242
  store i16 0, i16* %243, align 2, !tbaa !5
  %244 = trunc i64 %238 to i32
  %245 = add i32 %244, 1
  %246 = mul i32 %245, %11
  %247 = add i32 %106, %246
  %248 = zext i32 %247 to i64
  %249 = getelementptr inbounds i16, i16* %2, i64 %248
  store i16 0, i16* %249, align 2, !tbaa !5
  %250 = trunc i64 %238 to i32
  %251 = add i32 %250, 2
  %252 = mul i32 %251, %11
  %253 = add i32 %106, %252
  %254 = zext i32 %253 to i64
  %255 = getelementptr inbounds i16, i16* %2, i64 %254
  store i16 0, i16* %255, align 2, !tbaa !5
  %256 = trunc i64 %238 to i32
  %257 = add i32 %256, 3
  %258 = mul i32 %257, %11
  %259 = add i32 %106, %258
  %260 = zext i32 %259 to i64
  %261 = getelementptr inbounds i16, i16* %2, i64 %260
  store i16 0, i16* %261, align 2, !tbaa !5
  %262 = add nuw nsw i64 %238, 4
  %263 = icmp eq i64 %262, %43
  br i1 %263, label %234, label %237, !llvm.loop !12
}

; Function Attrs: nofree norecurse nounwind uwtable
define dso_local void @psroi_pooling_align_golden(i8* nocapture readonly %0, i16* nocapture readonly %1, i16* nocapture %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, i8 zeroext %12) local_unnamed_addr #1 {
  %14 = icmp eq i32 %4, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %13
  %16 = mul i32 %8, %7
  %17 = mul i32 %16, %9
  %18 = zext i32 %17 to i64
  br label %20

19:                                               ; preds = %20, %13
  ret void

20:                                               ; preds = %20, %15
  %21 = phi i32 [ 0, %15 ], [ %24, %20 ]
  %22 = phi i8* [ %0, %15 ], [ %23, %20 ]
  tail call void @psroi_align_golden(i8* %22, i16* %1, i16* %2, i32 %3, i32 %21, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, i8 zeroext %12)
  %23 = getelementptr inbounds i8, i8* %22, i64 %18
  %24 = add nuw i32 %21, 1
  %25 = icmp eq i32 %24, %4
  br i1 %25, label %19, label %20
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #2 {
  %1 = alloca [360640 x i8], align 16
  %2 = alloca [1200 x i16], align 16
  %3 = alloca [117600 x i16], align 16
  %4 = alloca [117600 x i16], align 16
  %5 = getelementptr inbounds [1200 x i16], [1200 x i16]* %2, i64 0, i64 0
  %6 = getelementptr inbounds [117600 x i16], [117600 x i16]* %3, i64 0, i64 0
  %7 = getelementptr inbounds [360640 x i8], [360640 x i8]* %1, i64 0, i64 0
  br label %8

8:                                                ; preds = %8, %0
  %9 = phi i64 [ 0, %0 ], [ %33, %8 ]
  %10 = phi <16 x i8> [ <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, %0 ], [ %34, %8 ]
  %11 = shl <16 x i8> %10, <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2>
  %12 = getelementptr inbounds [360640 x i8], [360640 x i8]* %1, i64 0, i64 %9
  %13 = bitcast i8* %12 to <16 x i8>*
  store <16 x i8> %11, <16 x i8>* %13, align 16, !tbaa !2
  %14 = add nuw nsw i64 %9, 16
  %15 = shl <16 x i8> %10, <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2>
  %16 = add <16 x i8> %15, <i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64>
  %17 = getelementptr inbounds [360640 x i8], [360640 x i8]* %1, i64 0, i64 %14
  %18 = bitcast i8* %17 to <16 x i8>*
  store <16 x i8> %16, <16 x i8>* %18, align 16, !tbaa !2
  %19 = add nuw nsw i64 %9, 32
  %20 = shl <16 x i8> %10, <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2>
  %21 = xor <16 x i8> %20, <i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128>
  %22 = getelementptr inbounds [360640 x i8], [360640 x i8]* %1, i64 0, i64 %19
  %23 = bitcast i8* %22 to <16 x i8>*
  store <16 x i8> %21, <16 x i8>* %23, align 16, !tbaa !2
  %24 = add nuw nsw i64 %9, 48
  %25 = shl <16 x i8> %10, <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2>
  %26 = add <16 x i8> %25, <i8 -64, i8 -64, i8 -64, i8 -64, i8 -64, i8 -64, i8 -64, i8 -64, i8 -64, i8 -64, i8 -64, i8 -64, i8 -64, i8 -64, i8 -64, i8 -64>
  %27 = getelementptr inbounds [360640 x i8], [360640 x i8]* %1, i64 0, i64 %24
  %28 = bitcast i8* %27 to <16 x i8>*
  store <16 x i8> %26, <16 x i8>* %28, align 16, !tbaa !2
  %29 = add nuw nsw i64 %9, 64
  %30 = shl <16 x i8> %10, <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2>
  %31 = getelementptr inbounds [360640 x i8], [360640 x i8]* %1, i64 0, i64 %29
  %32 = bitcast i8* %31 to <16 x i8>*
  store <16 x i8> %30, <16 x i8>* %32, align 16, !tbaa !2
  %33 = add nuw nsw i64 %9, 80
  %34 = add <16 x i8> %10, <i8 80, i8 80, i8 80, i8 80, i8 80, i8 80, i8 80, i8 80, i8 80, i8 80, i8 80, i8 80, i8 80, i8 80, i8 80, i8 80>
  %35 = icmp eq i64 %33, 360640
  br i1 %35, label %42, label %8, !llvm.loop !13

36:                                               ; preds = %42, %36
  %37 = phi i32 [ %40, %36 ], [ 0, %42 ]
  %38 = phi i8* [ %39, %36 ], [ %7, %42 ]
  call void @psroi_align_golden(i8* %38, i16* nonnull %5, i16* nonnull %6, i32 300, i32 %37, i32 7, i32 7, i32 8, i32 23, i32 40, i32 392, i32 49, i8 zeroext 2) #5
  %39 = getelementptr inbounds i8, i8* %38, i64 7360
  %40 = add nuw nsw i32 %37, 1
  %41 = icmp eq i32 %40, 49
  br i1 %41, label %71, label %36

42:                                               ; preds = %8, %42
  %43 = phi i64 [ %67, %42 ], [ 0, %8 ]
  %44 = shl nuw nsw i64 %43, 3
  %45 = getelementptr inbounds [1200 x i16], [1200 x i16]* %2, i64 0, i64 %44
  %46 = bitcast i16* %45 to <8 x i16>*
  store <8 x i16> <i16 16, i16 16, i16 80, i16 80, i16 176, i16 176, i16 240, i16 240>, <8 x i16>* %46, align 16, !tbaa !5
  %47 = shl i64 %43, 3
  %48 = or i64 %47, 8
  %49 = getelementptr inbounds [1200 x i16], [1200 x i16]* %2, i64 0, i64 %48
  %50 = bitcast i16* %49 to <8 x i16>*
  store <8 x i16> <i16 16, i16 16, i16 80, i16 80, i16 176, i16 176, i16 240, i16 240>, <8 x i16>* %50, align 16, !tbaa !5
  %51 = shl i64 %43, 3
  %52 = add i64 %51, 16
  %53 = getelementptr inbounds [1200 x i16], [1200 x i16]* %2, i64 0, i64 %52
  %54 = bitcast i16* %53 to <8 x i16>*
  store <8 x i16> <i16 16, i16 16, i16 80, i16 80, i16 176, i16 176, i16 240, i16 240>, <8 x i16>* %54, align 16, !tbaa !5
  %55 = shl i64 %43, 3
  %56 = add i64 %55, 24
  %57 = getelementptr inbounds [1200 x i16], [1200 x i16]* %2, i64 0, i64 %56
  %58 = bitcast i16* %57 to <8 x i16>*
  store <8 x i16> <i16 16, i16 16, i16 80, i16 80, i16 176, i16 176, i16 240, i16 240>, <8 x i16>* %58, align 16, !tbaa !5
  %59 = shl i64 %43, 3
  %60 = add i64 %59, 32
  %61 = getelementptr inbounds [1200 x i16], [1200 x i16]* %2, i64 0, i64 %60
  %62 = bitcast i16* %61 to <8 x i16>*
  store <8 x i16> <i16 16, i16 16, i16 80, i16 80, i16 176, i16 176, i16 240, i16 240>, <8 x i16>* %62, align 16, !tbaa !5
  %63 = shl i64 %43, 3
  %64 = add i64 %63, 40
  %65 = getelementptr inbounds [1200 x i16], [1200 x i16]* %2, i64 0, i64 %64
  %66 = bitcast i16* %65 to <8 x i16>*
  store <8 x i16> <i16 16, i16 16, i16 80, i16 80, i16 176, i16 176, i16 240, i16 240>, <8 x i16>* %66, align 16, !tbaa !5
  %67 = add nuw nsw i64 %43, 6
  %68 = icmp eq i64 %67, 150
  br i1 %68, label %36, label %42

69:                                               ; preds = %83
  %70 = icmp eq i32 %84, 0
  br i1 %70, label %89, label %87

71:                                               ; preds = %36, %83
  %72 = phi i64 [ %85, %83 ], [ 0, %36 ]
  %73 = phi i32 [ %84, %83 ], [ 1, %36 ]
  %74 = getelementptr inbounds [117600 x i16], [117600 x i16]* %4, i64 0, i64 %72
  %75 = load i16, i16* %74, align 2, !tbaa !5
  %76 = getelementptr inbounds [117600 x i16], [117600 x i16]* %3, i64 0, i64 %72
  %77 = load i16, i16* %76, align 2, !tbaa !5
  %78 = icmp eq i16 %75, %77
  br i1 %78, label %83, label %79

79:                                               ; preds = %71
  %80 = zext i16 %75 to i32
  %81 = zext i16 %77 to i32
  %82 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %80, i32 %81)
  br label %83

83:                                               ; preds = %71, %79
  %84 = phi i32 [ %73, %71 ], [ 0, %79 ]
  %85 = add nuw nsw i64 %72, 1
  %86 = icmp eq i64 %85, 117600
  br i1 %86, label %69, label %71

87:                                               ; preds = %69
  %88 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @str, i64 0, i64 0))
  br label %89

89:                                               ; preds = %69, %87
  %90 = zext i1 %70 to i32
  ret i32 %90
}

; Function Attrs: nofree nounwind
declare dso_local i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare i32 @puts(i8* nocapture readonly) local_unnamed_addr #4

attributes #0 = { norecurse nounwind readonly uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nofree nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nofree nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nofree nounwind }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (Red Hat 10.0.1-1.module_el8.3.0+467+cb298d5b)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"short", !3, i64 0}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.unroll.disable"}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.isvectorized", i32 1}
!11 = distinct !{!11, !8}
!12 = distinct !{!12, !10}
!13 = distinct !{!13, !10}
