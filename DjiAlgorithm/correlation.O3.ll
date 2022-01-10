; ModuleID = 'correlation.c'
source_filename = "correlation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rvv_res = dso_local local_unnamed_addr global [49280 x i8] zeroinitializer, align 16
@image1 = common dso_local global [571648 x i8] zeroinitializer, align 16
@image2 = common dso_local global [571648 x i8] zeroinitializer, align 16
@golden_res = common dso_local global [49280 x i8] zeroinitializer, align 16

; Function Attrs: nounwind uwtable
define dso_local void @randTensor(i8* nocapture %0, i64* nocapture readonly %1) local_unnamed_addr #0 {
  %3 = load i64, i64* %1, align 8, !tbaa !2
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %18, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds i64, i64* %1, i64 1
  %7 = getelementptr inbounds i64, i64* %1, i64 2
  %8 = load i64, i64* %6, align 8, !tbaa !2
  br label %9

9:                                                ; preds = %5, %27
  %10 = phi i64 [ %3, %5 ], [ %28, %27 ]
  %11 = phi i64 [ %8, %5 ], [ %29, %27 ]
  %12 = phi i64 [ %8, %5 ], [ %30, %27 ]
  %13 = phi i64 [ 0, %5 ], [ %32, %27 ]
  %14 = phi i8* [ %0, %5 ], [ %31, %27 ]
  %15 = icmp eq i64 %12, 0
  br i1 %15, label %27, label %16

16:                                               ; preds = %9
  %17 = load i64, i64* %7, align 8, !tbaa !2
  br label %19

18:                                               ; preds = %27, %2
  ret void

19:                                               ; preds = %16, %36
  %20 = phi i64 [ %37, %36 ], [ %11, %16 ]
  %21 = phi i64 [ %38, %36 ], [ %17, %16 ]
  %22 = phi i64 [ %40, %36 ], [ 0, %16 ]
  %23 = phi i8* [ %39, %36 ], [ %14, %16 ]
  %24 = icmp eq i64 %21, 0
  br i1 %24, label %36, label %42

25:                                               ; preds = %36
  %26 = load i64, i64* %1, align 8, !tbaa !2
  br label %27

27:                                               ; preds = %25, %9
  %28 = phi i64 [ %10, %9 ], [ %26, %25 ]
  %29 = phi i64 [ %11, %9 ], [ %37, %25 ]
  %30 = phi i64 [ 0, %9 ], [ %37, %25 ]
  %31 = phi i8* [ %14, %9 ], [ %39, %25 ]
  %32 = add nuw i64 %13, 1
  %33 = icmp ult i64 %32, %28
  br i1 %33, label %9, label %18

34:                                               ; preds = %42
  %35 = load i64, i64* %6, align 8, !tbaa !2
  br label %36

36:                                               ; preds = %34, %19
  %37 = phi i64 [ %20, %19 ], [ %35, %34 ]
  %38 = phi i64 [ 0, %19 ], [ %49, %34 ]
  %39 = phi i8* [ %23, %19 ], [ %47, %34 ]
  %40 = add nuw i64 %22, 1
  %41 = icmp ult i64 %40, %37
  br i1 %41, label %19, label %25

42:                                               ; preds = %19, %42
  %43 = phi i64 [ %48, %42 ], [ 0, %19 ]
  %44 = phi i8* [ %47, %42 ], [ %23, %19 ]
  %45 = tail call i32 @rand() #3
  %46 = trunc i32 %45 to i8
  store i8 %46, i8* %44, align 1, !tbaa !6
  %47 = getelementptr inbounds i8, i8* %44, i64 1
  %48 = add nuw i64 %43, 1
  %49 = load i64, i64* %7, align 8, !tbaa !2
  %50 = icmp ult i64 %48, %49
  br i1 %50, label %42, label %34
}

; Function Attrs: nounwind
declare dso_local i32 @rand() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @scorrelation_golden(i8* nocapture readonly %0, i8* nocapture readonly %1, i8* nocapture %2) local_unnamed_addr #0 {
  tail call void @llvm.memset.p0i8.i64(i8* nonnull align 1 dereferenceable(49280) %2, i8 0, i64 49280, i1 false)
  br label %4

4:                                                ; preds = %7, %3
  %5 = phi i64 [ 0, %3 ], [ %8, %7 ]
  %6 = mul nuw nsw i64 %5, 88
  br label %10

7:                                                ; preds = %13
  %8 = add nuw nsw i64 %5, 1
  %9 = icmp eq i64 %8, 112
  br i1 %9, label %56, label %4

10:                                               ; preds = %4, %13
  %11 = phi i64 [ 0, %4 ], [ %16, %13 ]
  %12 = add nuw nsw i64 %11, %6
  br label %18

13:                                               ; preds = %18
  %14 = trunc i32 %53 to i8
  %15 = getelementptr inbounds i8, i8* %2, i64 %12
  store i8 %14, i8* %15, align 1, !tbaa !6
  %16 = add nuw nsw i64 %11, 1
  %17 = icmp eq i64 %16, 88
  br i1 %17, label %7, label %10

18:                                               ; preds = %18, %10
  %19 = phi i64 [ 0, %10 ], [ %54, %18 ]
  %20 = phi i32 [ 0, %10 ], [ %53, %18 ]
  %21 = mul nuw nsw i64 %19, 9856
  %22 = add nuw nsw i64 %12, %21
  %23 = getelementptr inbounds i8, i8* %0, i64 %22
  %24 = load i8, i8* %23, align 1, !tbaa !6
  %25 = sext i8 %24 to i16
  %26 = getelementptr inbounds i8, i8* %1, i64 %22
  %27 = load i8, i8* %26, align 1, !tbaa !6
  %28 = sext i8 %27 to i16
  %29 = mul nsw i16 %28, %25
  %30 = ashr i16 %29, 6
  %31 = sext i16 %30 to i32
  %32 = add nsw i32 %20, %31
  %33 = icmp sgt i32 %32, -32768
  %34 = select i1 %33, i32 %32, i32 -32768
  %35 = icmp slt i32 %34, 32767
  %36 = select i1 %35, i32 %34, i32 32767
  %37 = or i64 %19, 1
  %38 = mul nuw nsw i64 %37, 9856
  %39 = add nuw nsw i64 %12, %38
  %40 = getelementptr inbounds i8, i8* %0, i64 %39
  %41 = load i8, i8* %40, align 1, !tbaa !6
  %42 = sext i8 %41 to i16
  %43 = getelementptr inbounds i8, i8* %1, i64 %39
  %44 = load i8, i8* %43, align 1, !tbaa !6
  %45 = sext i8 %44 to i16
  %46 = mul nsw i16 %45, %42
  %47 = ashr i16 %46, 6
  %48 = sext i16 %47 to i32
  %49 = add nsw i32 %36, %48
  %50 = icmp sgt i32 %49, -32768
  %51 = select i1 %50, i32 %49, i32 -32768
  %52 = icmp slt i32 %51, 32767
  %53 = select i1 %52, i32 %51, i32 32767
  %54 = add nuw nsw i64 %19, 2
  %55 = icmp eq i64 %54, 58
  br i1 %55, label %13, label %18

56:                                               ; preds = %7, %92
  %57 = phi i64 [ %93, %92 ], [ 0, %7 ]
  %58 = mul nuw nsw i64 %57, 88
  br label %59

59:                                               ; preds = %86, %56
  %60 = phi i64 [ 0, %56 ], [ %90, %86 ]
  %61 = add nuw nsw i64 %60, %58
  %62 = add nuw nsw i64 %61, 9856
  %63 = icmp eq i64 %60, 0
  br i1 %63, label %86, label %64

64:                                               ; preds = %59, %64
  %65 = phi i64 [ %84, %64 ], [ 0, %59 ]
  %66 = phi i32 [ %83, %64 ], [ 0, %59 ]
  %67 = mul nuw nsw i64 %65, 9856
  %68 = add nuw nsw i64 %61, %67
  %69 = add nsw i64 %68, -1
  %70 = getelementptr inbounds i8, i8* %0, i64 %68
  %71 = load i8, i8* %70, align 1, !tbaa !6
  %72 = sext i8 %71 to i16
  %73 = getelementptr inbounds i8, i8* %1, i64 %69
  %74 = load i8, i8* %73, align 1, !tbaa !6
  %75 = sext i8 %74 to i16
  %76 = mul nsw i16 %75, %72
  %77 = ashr i16 %76, 6
  %78 = sext i16 %77 to i32
  %79 = add nsw i32 %66, %78
  %80 = icmp sgt i32 %79, -32768
  %81 = select i1 %80, i32 %79, i32 -32768
  %82 = icmp slt i32 %81, 32767
  %83 = select i1 %82, i32 %81, i32 32767
  %84 = add nuw nsw i64 %65, 1
  %85 = icmp eq i64 %84, 58
  br i1 %85, label %86, label %64

86:                                               ; preds = %64, %59
  %87 = phi i32 [ 0, %59 ], [ %83, %64 ]
  %88 = trunc i32 %87 to i8
  %89 = getelementptr inbounds i8, i8* %2, i64 %62
  store i8 %88, i8* %89, align 1, !tbaa !6
  %90 = add nuw nsw i64 %60, 1
  %91 = icmp eq i64 %90, 88
  br i1 %91, label %92, label %59

92:                                               ; preds = %86
  %93 = add nuw nsw i64 %57, 1
  %94 = icmp eq i64 %93, 112
  br i1 %94, label %95, label %56

95:                                               ; preds = %92, %131
  %96 = phi i64 [ %132, %131 ], [ 0, %92 ]
  %97 = mul nuw nsw i64 %96, 88
  br label %98

98:                                               ; preds = %125, %95
  %99 = phi i64 [ 0, %95 ], [ %129, %125 ]
  %100 = add nuw nsw i64 %99, %97
  %101 = add nuw nsw i64 %100, 19712
  %102 = icmp ult i64 %99, 2
  br i1 %102, label %125, label %103

103:                                              ; preds = %98, %103
  %104 = phi i64 [ %123, %103 ], [ 0, %98 ]
  %105 = phi i32 [ %122, %103 ], [ 0, %98 ]
  %106 = mul nuw nsw i64 %104, 9856
  %107 = add nuw nsw i64 %100, %106
  %108 = add nsw i64 %107, -2
  %109 = getelementptr inbounds i8, i8* %0, i64 %107
  %110 = load i8, i8* %109, align 1, !tbaa !6
  %111 = sext i8 %110 to i16
  %112 = getelementptr inbounds i8, i8* %1, i64 %108
  %113 = load i8, i8* %112, align 1, !tbaa !6
  %114 = sext i8 %113 to i16
  %115 = mul nsw i16 %114, %111
  %116 = ashr i16 %115, 6
  %117 = sext i16 %116 to i32
  %118 = add nsw i32 %105, %117
  %119 = icmp sgt i32 %118, -32768
  %120 = select i1 %119, i32 %118, i32 -32768
  %121 = icmp slt i32 %120, 32767
  %122 = select i1 %121, i32 %120, i32 32767
  %123 = add nuw nsw i64 %104, 1
  %124 = icmp eq i64 %123, 58
  br i1 %124, label %125, label %103

125:                                              ; preds = %103, %98
  %126 = phi i32 [ 0, %98 ], [ %122, %103 ]
  %127 = trunc i32 %126 to i8
  %128 = getelementptr inbounds i8, i8* %2, i64 %101
  store i8 %127, i8* %128, align 1, !tbaa !6
  %129 = add nuw nsw i64 %99, 1
  %130 = icmp eq i64 %129, 88
  br i1 %130, label %131, label %98

131:                                              ; preds = %125
  %132 = add nuw nsw i64 %96, 1
  %133 = icmp eq i64 %132, 112
  br i1 %133, label %134, label %95

134:                                              ; preds = %131, %170
  %135 = phi i64 [ %171, %170 ], [ 0, %131 ]
  %136 = mul nuw nsw i64 %135, 88
  br label %137

137:                                              ; preds = %164, %134
  %138 = phi i64 [ 0, %134 ], [ %168, %164 ]
  %139 = add nuw nsw i64 %138, %136
  %140 = add nuw nsw i64 %139, 29568
  %141 = icmp ult i64 %138, 3
  br i1 %141, label %164, label %142

142:                                              ; preds = %137, %142
  %143 = phi i64 [ %162, %142 ], [ 0, %137 ]
  %144 = phi i32 [ %161, %142 ], [ 0, %137 ]
  %145 = mul nuw nsw i64 %143, 9856
  %146 = add nuw nsw i64 %139, %145
  %147 = add nsw i64 %146, -3
  %148 = getelementptr inbounds i8, i8* %0, i64 %146
  %149 = load i8, i8* %148, align 1, !tbaa !6
  %150 = sext i8 %149 to i16
  %151 = getelementptr inbounds i8, i8* %1, i64 %147
  %152 = load i8, i8* %151, align 1, !tbaa !6
  %153 = sext i8 %152 to i16
  %154 = mul nsw i16 %153, %150
  %155 = ashr i16 %154, 6
  %156 = sext i16 %155 to i32
  %157 = add nsw i32 %144, %156
  %158 = icmp sgt i32 %157, -32768
  %159 = select i1 %158, i32 %157, i32 -32768
  %160 = icmp slt i32 %159, 32767
  %161 = select i1 %160, i32 %159, i32 32767
  %162 = add nuw nsw i64 %143, 1
  %163 = icmp eq i64 %162, 58
  br i1 %163, label %164, label %142

164:                                              ; preds = %142, %137
  %165 = phi i32 [ 0, %137 ], [ %161, %142 ]
  %166 = trunc i32 %165 to i8
  %167 = getelementptr inbounds i8, i8* %2, i64 %140
  store i8 %166, i8* %167, align 1, !tbaa !6
  %168 = add nuw nsw i64 %138, 1
  %169 = icmp eq i64 %168, 88
  br i1 %169, label %170, label %137

170:                                              ; preds = %164
  %171 = add nuw nsw i64 %135, 1
  %172 = icmp eq i64 %171, 112
  br i1 %172, label %173, label %134

173:                                              ; preds = %170, %209
  %174 = phi i64 [ %210, %209 ], [ 0, %170 ]
  %175 = mul nuw nsw i64 %174, 88
  br label %176

176:                                              ; preds = %203, %173
  %177 = phi i64 [ 0, %173 ], [ %207, %203 ]
  %178 = add nuw nsw i64 %177, %175
  %179 = add nuw nsw i64 %178, 39424
  %180 = icmp ult i64 %177, 4
  br i1 %180, label %203, label %181

181:                                              ; preds = %176, %181
  %182 = phi i64 [ %201, %181 ], [ 0, %176 ]
  %183 = phi i32 [ %200, %181 ], [ 0, %176 ]
  %184 = mul nuw nsw i64 %182, 9856
  %185 = add nuw nsw i64 %178, %184
  %186 = add nsw i64 %185, -4
  %187 = getelementptr inbounds i8, i8* %0, i64 %185
  %188 = load i8, i8* %187, align 1, !tbaa !6
  %189 = sext i8 %188 to i16
  %190 = getelementptr inbounds i8, i8* %1, i64 %186
  %191 = load i8, i8* %190, align 1, !tbaa !6
  %192 = sext i8 %191 to i16
  %193 = mul nsw i16 %192, %189
  %194 = ashr i16 %193, 6
  %195 = sext i16 %194 to i32
  %196 = add nsw i32 %183, %195
  %197 = icmp sgt i32 %196, -32768
  %198 = select i1 %197, i32 %196, i32 -32768
  %199 = icmp slt i32 %198, 32767
  %200 = select i1 %199, i32 %198, i32 32767
  %201 = add nuw nsw i64 %182, 1
  %202 = icmp eq i64 %201, 58
  br i1 %202, label %203, label %181

203:                                              ; preds = %181, %176
  %204 = phi i32 [ 0, %176 ], [ %200, %181 ]
  %205 = trunc i32 %204 to i8
  %206 = getelementptr inbounds i8, i8* %2, i64 %179
  store i8 %205, i8* %206, align 1, !tbaa !6
  %207 = add nuw nsw i64 %177, 1
  %208 = icmp eq i64 %207, 88
  br i1 %208, label %209, label %176

209:                                              ; preds = %203
  %210 = add nuw nsw i64 %174, 1
  %211 = icmp eq i64 %210, 112
  br i1 %211, label %212, label %173

212:                                              ; preds = %209
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #0 {
  tail call void @srand(i32 2021) #3
  br label %1

1:                                                ; preds = %0, %4
  %2 = phi i64 [ 0, %0 ], [ %5, %4 ]
  %3 = phi i8* [ getelementptr inbounds ([571648 x i8], [571648 x i8]* @image1, i64 0, i64 0), %0 ], [ %273, %4 ]
  br label %7

4:                                                ; preds = %7
  %5 = add nuw nsw i64 %2, 1
  %6 = icmp eq i64 %5, 58
  br i1 %6, label %276, label %1

7:                                                ; preds = %7, %1
  %8 = phi i64 [ %274, %7 ], [ 0, %1 ]
  %9 = phi i8* [ %273, %7 ], [ %3, %1 ]
  %10 = tail call i32 @rand() #3
  %11 = trunc i32 %10 to i8
  store i8 %11, i8* %9, align 1, !tbaa !6
  %12 = getelementptr inbounds i8, i8* %9, i64 1
  %13 = tail call i32 @rand() #3
  %14 = trunc i32 %13 to i8
  store i8 %14, i8* %12, align 1, !tbaa !6
  %15 = getelementptr inbounds i8, i8* %9, i64 2
  %16 = tail call i32 @rand() #3
  %17 = trunc i32 %16 to i8
  store i8 %17, i8* %15, align 1, !tbaa !6
  %18 = getelementptr inbounds i8, i8* %9, i64 3
  %19 = tail call i32 @rand() #3
  %20 = trunc i32 %19 to i8
  store i8 %20, i8* %18, align 1, !tbaa !6
  %21 = getelementptr inbounds i8, i8* %9, i64 4
  %22 = tail call i32 @rand() #3
  %23 = trunc i32 %22 to i8
  store i8 %23, i8* %21, align 1, !tbaa !6
  %24 = getelementptr inbounds i8, i8* %9, i64 5
  %25 = tail call i32 @rand() #3
  %26 = trunc i32 %25 to i8
  store i8 %26, i8* %24, align 1, !tbaa !6
  %27 = getelementptr inbounds i8, i8* %9, i64 6
  %28 = tail call i32 @rand() #3
  %29 = trunc i32 %28 to i8
  store i8 %29, i8* %27, align 1, !tbaa !6
  %30 = getelementptr inbounds i8, i8* %9, i64 7
  %31 = tail call i32 @rand() #3
  %32 = trunc i32 %31 to i8
  store i8 %32, i8* %30, align 1, !tbaa !6
  %33 = getelementptr inbounds i8, i8* %9, i64 8
  %34 = tail call i32 @rand() #3
  %35 = trunc i32 %34 to i8
  store i8 %35, i8* %33, align 1, !tbaa !6
  %36 = getelementptr inbounds i8, i8* %9, i64 9
  %37 = tail call i32 @rand() #3
  %38 = trunc i32 %37 to i8
  store i8 %38, i8* %36, align 1, !tbaa !6
  %39 = getelementptr inbounds i8, i8* %9, i64 10
  %40 = tail call i32 @rand() #3
  %41 = trunc i32 %40 to i8
  store i8 %41, i8* %39, align 1, !tbaa !6
  %42 = getelementptr inbounds i8, i8* %9, i64 11
  %43 = tail call i32 @rand() #3
  %44 = trunc i32 %43 to i8
  store i8 %44, i8* %42, align 1, !tbaa !6
  %45 = getelementptr inbounds i8, i8* %9, i64 12
  %46 = tail call i32 @rand() #3
  %47 = trunc i32 %46 to i8
  store i8 %47, i8* %45, align 1, !tbaa !6
  %48 = getelementptr inbounds i8, i8* %9, i64 13
  %49 = tail call i32 @rand() #3
  %50 = trunc i32 %49 to i8
  store i8 %50, i8* %48, align 1, !tbaa !6
  %51 = getelementptr inbounds i8, i8* %9, i64 14
  %52 = tail call i32 @rand() #3
  %53 = trunc i32 %52 to i8
  store i8 %53, i8* %51, align 1, !tbaa !6
  %54 = getelementptr inbounds i8, i8* %9, i64 15
  %55 = tail call i32 @rand() #3
  %56 = trunc i32 %55 to i8
  store i8 %56, i8* %54, align 1, !tbaa !6
  %57 = getelementptr inbounds i8, i8* %9, i64 16
  %58 = tail call i32 @rand() #3
  %59 = trunc i32 %58 to i8
  store i8 %59, i8* %57, align 1, !tbaa !6
  %60 = getelementptr inbounds i8, i8* %9, i64 17
  %61 = tail call i32 @rand() #3
  %62 = trunc i32 %61 to i8
  store i8 %62, i8* %60, align 1, !tbaa !6
  %63 = getelementptr inbounds i8, i8* %9, i64 18
  %64 = tail call i32 @rand() #3
  %65 = trunc i32 %64 to i8
  store i8 %65, i8* %63, align 1, !tbaa !6
  %66 = getelementptr inbounds i8, i8* %9, i64 19
  %67 = tail call i32 @rand() #3
  %68 = trunc i32 %67 to i8
  store i8 %68, i8* %66, align 1, !tbaa !6
  %69 = getelementptr inbounds i8, i8* %9, i64 20
  %70 = tail call i32 @rand() #3
  %71 = trunc i32 %70 to i8
  store i8 %71, i8* %69, align 1, !tbaa !6
  %72 = getelementptr inbounds i8, i8* %9, i64 21
  %73 = tail call i32 @rand() #3
  %74 = trunc i32 %73 to i8
  store i8 %74, i8* %72, align 1, !tbaa !6
  %75 = getelementptr inbounds i8, i8* %9, i64 22
  %76 = tail call i32 @rand() #3
  %77 = trunc i32 %76 to i8
  store i8 %77, i8* %75, align 1, !tbaa !6
  %78 = getelementptr inbounds i8, i8* %9, i64 23
  %79 = tail call i32 @rand() #3
  %80 = trunc i32 %79 to i8
  store i8 %80, i8* %78, align 1, !tbaa !6
  %81 = getelementptr inbounds i8, i8* %9, i64 24
  %82 = tail call i32 @rand() #3
  %83 = trunc i32 %82 to i8
  store i8 %83, i8* %81, align 1, !tbaa !6
  %84 = getelementptr inbounds i8, i8* %9, i64 25
  %85 = tail call i32 @rand() #3
  %86 = trunc i32 %85 to i8
  store i8 %86, i8* %84, align 1, !tbaa !6
  %87 = getelementptr inbounds i8, i8* %9, i64 26
  %88 = tail call i32 @rand() #3
  %89 = trunc i32 %88 to i8
  store i8 %89, i8* %87, align 1, !tbaa !6
  %90 = getelementptr inbounds i8, i8* %9, i64 27
  %91 = tail call i32 @rand() #3
  %92 = trunc i32 %91 to i8
  store i8 %92, i8* %90, align 1, !tbaa !6
  %93 = getelementptr inbounds i8, i8* %9, i64 28
  %94 = tail call i32 @rand() #3
  %95 = trunc i32 %94 to i8
  store i8 %95, i8* %93, align 1, !tbaa !6
  %96 = getelementptr inbounds i8, i8* %9, i64 29
  %97 = tail call i32 @rand() #3
  %98 = trunc i32 %97 to i8
  store i8 %98, i8* %96, align 1, !tbaa !6
  %99 = getelementptr inbounds i8, i8* %9, i64 30
  %100 = tail call i32 @rand() #3
  %101 = trunc i32 %100 to i8
  store i8 %101, i8* %99, align 1, !tbaa !6
  %102 = getelementptr inbounds i8, i8* %9, i64 31
  %103 = tail call i32 @rand() #3
  %104 = trunc i32 %103 to i8
  store i8 %104, i8* %102, align 1, !tbaa !6
  %105 = getelementptr inbounds i8, i8* %9, i64 32
  %106 = tail call i32 @rand() #3
  %107 = trunc i32 %106 to i8
  store i8 %107, i8* %105, align 1, !tbaa !6
  %108 = getelementptr inbounds i8, i8* %9, i64 33
  %109 = tail call i32 @rand() #3
  %110 = trunc i32 %109 to i8
  store i8 %110, i8* %108, align 1, !tbaa !6
  %111 = getelementptr inbounds i8, i8* %9, i64 34
  %112 = tail call i32 @rand() #3
  %113 = trunc i32 %112 to i8
  store i8 %113, i8* %111, align 1, !tbaa !6
  %114 = getelementptr inbounds i8, i8* %9, i64 35
  %115 = tail call i32 @rand() #3
  %116 = trunc i32 %115 to i8
  store i8 %116, i8* %114, align 1, !tbaa !6
  %117 = getelementptr inbounds i8, i8* %9, i64 36
  %118 = tail call i32 @rand() #3
  %119 = trunc i32 %118 to i8
  store i8 %119, i8* %117, align 1, !tbaa !6
  %120 = getelementptr inbounds i8, i8* %9, i64 37
  %121 = tail call i32 @rand() #3
  %122 = trunc i32 %121 to i8
  store i8 %122, i8* %120, align 1, !tbaa !6
  %123 = getelementptr inbounds i8, i8* %9, i64 38
  %124 = tail call i32 @rand() #3
  %125 = trunc i32 %124 to i8
  store i8 %125, i8* %123, align 1, !tbaa !6
  %126 = getelementptr inbounds i8, i8* %9, i64 39
  %127 = tail call i32 @rand() #3
  %128 = trunc i32 %127 to i8
  store i8 %128, i8* %126, align 1, !tbaa !6
  %129 = getelementptr inbounds i8, i8* %9, i64 40
  %130 = tail call i32 @rand() #3
  %131 = trunc i32 %130 to i8
  store i8 %131, i8* %129, align 1, !tbaa !6
  %132 = getelementptr inbounds i8, i8* %9, i64 41
  %133 = tail call i32 @rand() #3
  %134 = trunc i32 %133 to i8
  store i8 %134, i8* %132, align 1, !tbaa !6
  %135 = getelementptr inbounds i8, i8* %9, i64 42
  %136 = tail call i32 @rand() #3
  %137 = trunc i32 %136 to i8
  store i8 %137, i8* %135, align 1, !tbaa !6
  %138 = getelementptr inbounds i8, i8* %9, i64 43
  %139 = tail call i32 @rand() #3
  %140 = trunc i32 %139 to i8
  store i8 %140, i8* %138, align 1, !tbaa !6
  %141 = getelementptr inbounds i8, i8* %9, i64 44
  %142 = tail call i32 @rand() #3
  %143 = trunc i32 %142 to i8
  store i8 %143, i8* %141, align 1, !tbaa !6
  %144 = getelementptr inbounds i8, i8* %9, i64 45
  %145 = tail call i32 @rand() #3
  %146 = trunc i32 %145 to i8
  store i8 %146, i8* %144, align 1, !tbaa !6
  %147 = getelementptr inbounds i8, i8* %9, i64 46
  %148 = tail call i32 @rand() #3
  %149 = trunc i32 %148 to i8
  store i8 %149, i8* %147, align 1, !tbaa !6
  %150 = getelementptr inbounds i8, i8* %9, i64 47
  %151 = tail call i32 @rand() #3
  %152 = trunc i32 %151 to i8
  store i8 %152, i8* %150, align 1, !tbaa !6
  %153 = getelementptr inbounds i8, i8* %9, i64 48
  %154 = tail call i32 @rand() #3
  %155 = trunc i32 %154 to i8
  store i8 %155, i8* %153, align 1, !tbaa !6
  %156 = getelementptr inbounds i8, i8* %9, i64 49
  %157 = tail call i32 @rand() #3
  %158 = trunc i32 %157 to i8
  store i8 %158, i8* %156, align 1, !tbaa !6
  %159 = getelementptr inbounds i8, i8* %9, i64 50
  %160 = tail call i32 @rand() #3
  %161 = trunc i32 %160 to i8
  store i8 %161, i8* %159, align 1, !tbaa !6
  %162 = getelementptr inbounds i8, i8* %9, i64 51
  %163 = tail call i32 @rand() #3
  %164 = trunc i32 %163 to i8
  store i8 %164, i8* %162, align 1, !tbaa !6
  %165 = getelementptr inbounds i8, i8* %9, i64 52
  %166 = tail call i32 @rand() #3
  %167 = trunc i32 %166 to i8
  store i8 %167, i8* %165, align 1, !tbaa !6
  %168 = getelementptr inbounds i8, i8* %9, i64 53
  %169 = tail call i32 @rand() #3
  %170 = trunc i32 %169 to i8
  store i8 %170, i8* %168, align 1, !tbaa !6
  %171 = getelementptr inbounds i8, i8* %9, i64 54
  %172 = tail call i32 @rand() #3
  %173 = trunc i32 %172 to i8
  store i8 %173, i8* %171, align 1, !tbaa !6
  %174 = getelementptr inbounds i8, i8* %9, i64 55
  %175 = tail call i32 @rand() #3
  %176 = trunc i32 %175 to i8
  store i8 %176, i8* %174, align 1, !tbaa !6
  %177 = getelementptr inbounds i8, i8* %9, i64 56
  %178 = tail call i32 @rand() #3
  %179 = trunc i32 %178 to i8
  store i8 %179, i8* %177, align 1, !tbaa !6
  %180 = getelementptr inbounds i8, i8* %9, i64 57
  %181 = tail call i32 @rand() #3
  %182 = trunc i32 %181 to i8
  store i8 %182, i8* %180, align 1, !tbaa !6
  %183 = getelementptr inbounds i8, i8* %9, i64 58
  %184 = tail call i32 @rand() #3
  %185 = trunc i32 %184 to i8
  store i8 %185, i8* %183, align 1, !tbaa !6
  %186 = getelementptr inbounds i8, i8* %9, i64 59
  %187 = tail call i32 @rand() #3
  %188 = trunc i32 %187 to i8
  store i8 %188, i8* %186, align 1, !tbaa !6
  %189 = getelementptr inbounds i8, i8* %9, i64 60
  %190 = tail call i32 @rand() #3
  %191 = trunc i32 %190 to i8
  store i8 %191, i8* %189, align 1, !tbaa !6
  %192 = getelementptr inbounds i8, i8* %9, i64 61
  %193 = tail call i32 @rand() #3
  %194 = trunc i32 %193 to i8
  store i8 %194, i8* %192, align 1, !tbaa !6
  %195 = getelementptr inbounds i8, i8* %9, i64 62
  %196 = tail call i32 @rand() #3
  %197 = trunc i32 %196 to i8
  store i8 %197, i8* %195, align 1, !tbaa !6
  %198 = getelementptr inbounds i8, i8* %9, i64 63
  %199 = tail call i32 @rand() #3
  %200 = trunc i32 %199 to i8
  store i8 %200, i8* %198, align 1, !tbaa !6
  %201 = getelementptr inbounds i8, i8* %9, i64 64
  %202 = tail call i32 @rand() #3
  %203 = trunc i32 %202 to i8
  store i8 %203, i8* %201, align 1, !tbaa !6
  %204 = getelementptr inbounds i8, i8* %9, i64 65
  %205 = tail call i32 @rand() #3
  %206 = trunc i32 %205 to i8
  store i8 %206, i8* %204, align 1, !tbaa !6
  %207 = getelementptr inbounds i8, i8* %9, i64 66
  %208 = tail call i32 @rand() #3
  %209 = trunc i32 %208 to i8
  store i8 %209, i8* %207, align 1, !tbaa !6
  %210 = getelementptr inbounds i8, i8* %9, i64 67
  %211 = tail call i32 @rand() #3
  %212 = trunc i32 %211 to i8
  store i8 %212, i8* %210, align 1, !tbaa !6
  %213 = getelementptr inbounds i8, i8* %9, i64 68
  %214 = tail call i32 @rand() #3
  %215 = trunc i32 %214 to i8
  store i8 %215, i8* %213, align 1, !tbaa !6
  %216 = getelementptr inbounds i8, i8* %9, i64 69
  %217 = tail call i32 @rand() #3
  %218 = trunc i32 %217 to i8
  store i8 %218, i8* %216, align 1, !tbaa !6
  %219 = getelementptr inbounds i8, i8* %9, i64 70
  %220 = tail call i32 @rand() #3
  %221 = trunc i32 %220 to i8
  store i8 %221, i8* %219, align 1, !tbaa !6
  %222 = getelementptr inbounds i8, i8* %9, i64 71
  %223 = tail call i32 @rand() #3
  %224 = trunc i32 %223 to i8
  store i8 %224, i8* %222, align 1, !tbaa !6
  %225 = getelementptr inbounds i8, i8* %9, i64 72
  %226 = tail call i32 @rand() #3
  %227 = trunc i32 %226 to i8
  store i8 %227, i8* %225, align 1, !tbaa !6
  %228 = getelementptr inbounds i8, i8* %9, i64 73
  %229 = tail call i32 @rand() #3
  %230 = trunc i32 %229 to i8
  store i8 %230, i8* %228, align 1, !tbaa !6
  %231 = getelementptr inbounds i8, i8* %9, i64 74
  %232 = tail call i32 @rand() #3
  %233 = trunc i32 %232 to i8
  store i8 %233, i8* %231, align 1, !tbaa !6
  %234 = getelementptr inbounds i8, i8* %9, i64 75
  %235 = tail call i32 @rand() #3
  %236 = trunc i32 %235 to i8
  store i8 %236, i8* %234, align 1, !tbaa !6
  %237 = getelementptr inbounds i8, i8* %9, i64 76
  %238 = tail call i32 @rand() #3
  %239 = trunc i32 %238 to i8
  store i8 %239, i8* %237, align 1, !tbaa !6
  %240 = getelementptr inbounds i8, i8* %9, i64 77
  %241 = tail call i32 @rand() #3
  %242 = trunc i32 %241 to i8
  store i8 %242, i8* %240, align 1, !tbaa !6
  %243 = getelementptr inbounds i8, i8* %9, i64 78
  %244 = tail call i32 @rand() #3
  %245 = trunc i32 %244 to i8
  store i8 %245, i8* %243, align 1, !tbaa !6
  %246 = getelementptr inbounds i8, i8* %9, i64 79
  %247 = tail call i32 @rand() #3
  %248 = trunc i32 %247 to i8
  store i8 %248, i8* %246, align 1, !tbaa !6
  %249 = getelementptr inbounds i8, i8* %9, i64 80
  %250 = tail call i32 @rand() #3
  %251 = trunc i32 %250 to i8
  store i8 %251, i8* %249, align 1, !tbaa !6
  %252 = getelementptr inbounds i8, i8* %9, i64 81
  %253 = tail call i32 @rand() #3
  %254 = trunc i32 %253 to i8
  store i8 %254, i8* %252, align 1, !tbaa !6
  %255 = getelementptr inbounds i8, i8* %9, i64 82
  %256 = tail call i32 @rand() #3
  %257 = trunc i32 %256 to i8
  store i8 %257, i8* %255, align 1, !tbaa !6
  %258 = getelementptr inbounds i8, i8* %9, i64 83
  %259 = tail call i32 @rand() #3
  %260 = trunc i32 %259 to i8
  store i8 %260, i8* %258, align 1, !tbaa !6
  %261 = getelementptr inbounds i8, i8* %9, i64 84
  %262 = tail call i32 @rand() #3
  %263 = trunc i32 %262 to i8
  store i8 %263, i8* %261, align 1, !tbaa !6
  %264 = getelementptr inbounds i8, i8* %9, i64 85
  %265 = tail call i32 @rand() #3
  %266 = trunc i32 %265 to i8
  store i8 %266, i8* %264, align 1, !tbaa !6
  %267 = getelementptr inbounds i8, i8* %9, i64 86
  %268 = tail call i32 @rand() #3
  %269 = trunc i32 %268 to i8
  store i8 %269, i8* %267, align 1, !tbaa !6
  %270 = getelementptr inbounds i8, i8* %9, i64 87
  %271 = tail call i32 @rand() #3
  %272 = trunc i32 %271 to i8
  store i8 %272, i8* %270, align 1, !tbaa !6
  %273 = getelementptr inbounds i8, i8* %9, i64 88
  %274 = add nuw nsw i64 %8, 1
  %275 = icmp eq i64 %274, 112
  br i1 %275, label %4, label %7

276:                                              ; preds = %4, %279
  %277 = phi i64 [ %280, %279 ], [ 0, %4 ]
  %278 = phi i8* [ %548, %279 ], [ getelementptr inbounds ([571648 x i8], [571648 x i8]* @image2, i64 0, i64 0), %4 ]
  br label %282

279:                                              ; preds = %282
  %280 = add nuw nsw i64 %277, 1
  %281 = icmp eq i64 %280, 58
  br i1 %281, label %551, label %276

282:                                              ; preds = %282, %276
  %283 = phi i64 [ %549, %282 ], [ 0, %276 ]
  %284 = phi i8* [ %548, %282 ], [ %278, %276 ]
  %285 = tail call i32 @rand() #3
  %286 = trunc i32 %285 to i8
  store i8 %286, i8* %284, align 1, !tbaa !6
  %287 = getelementptr inbounds i8, i8* %284, i64 1
  %288 = tail call i32 @rand() #3
  %289 = trunc i32 %288 to i8
  store i8 %289, i8* %287, align 1, !tbaa !6
  %290 = getelementptr inbounds i8, i8* %284, i64 2
  %291 = tail call i32 @rand() #3
  %292 = trunc i32 %291 to i8
  store i8 %292, i8* %290, align 1, !tbaa !6
  %293 = getelementptr inbounds i8, i8* %284, i64 3
  %294 = tail call i32 @rand() #3
  %295 = trunc i32 %294 to i8
  store i8 %295, i8* %293, align 1, !tbaa !6
  %296 = getelementptr inbounds i8, i8* %284, i64 4
  %297 = tail call i32 @rand() #3
  %298 = trunc i32 %297 to i8
  store i8 %298, i8* %296, align 1, !tbaa !6
  %299 = getelementptr inbounds i8, i8* %284, i64 5
  %300 = tail call i32 @rand() #3
  %301 = trunc i32 %300 to i8
  store i8 %301, i8* %299, align 1, !tbaa !6
  %302 = getelementptr inbounds i8, i8* %284, i64 6
  %303 = tail call i32 @rand() #3
  %304 = trunc i32 %303 to i8
  store i8 %304, i8* %302, align 1, !tbaa !6
  %305 = getelementptr inbounds i8, i8* %284, i64 7
  %306 = tail call i32 @rand() #3
  %307 = trunc i32 %306 to i8
  store i8 %307, i8* %305, align 1, !tbaa !6
  %308 = getelementptr inbounds i8, i8* %284, i64 8
  %309 = tail call i32 @rand() #3
  %310 = trunc i32 %309 to i8
  store i8 %310, i8* %308, align 1, !tbaa !6
  %311 = getelementptr inbounds i8, i8* %284, i64 9
  %312 = tail call i32 @rand() #3
  %313 = trunc i32 %312 to i8
  store i8 %313, i8* %311, align 1, !tbaa !6
  %314 = getelementptr inbounds i8, i8* %284, i64 10
  %315 = tail call i32 @rand() #3
  %316 = trunc i32 %315 to i8
  store i8 %316, i8* %314, align 1, !tbaa !6
  %317 = getelementptr inbounds i8, i8* %284, i64 11
  %318 = tail call i32 @rand() #3
  %319 = trunc i32 %318 to i8
  store i8 %319, i8* %317, align 1, !tbaa !6
  %320 = getelementptr inbounds i8, i8* %284, i64 12
  %321 = tail call i32 @rand() #3
  %322 = trunc i32 %321 to i8
  store i8 %322, i8* %320, align 1, !tbaa !6
  %323 = getelementptr inbounds i8, i8* %284, i64 13
  %324 = tail call i32 @rand() #3
  %325 = trunc i32 %324 to i8
  store i8 %325, i8* %323, align 1, !tbaa !6
  %326 = getelementptr inbounds i8, i8* %284, i64 14
  %327 = tail call i32 @rand() #3
  %328 = trunc i32 %327 to i8
  store i8 %328, i8* %326, align 1, !tbaa !6
  %329 = getelementptr inbounds i8, i8* %284, i64 15
  %330 = tail call i32 @rand() #3
  %331 = trunc i32 %330 to i8
  store i8 %331, i8* %329, align 1, !tbaa !6
  %332 = getelementptr inbounds i8, i8* %284, i64 16
  %333 = tail call i32 @rand() #3
  %334 = trunc i32 %333 to i8
  store i8 %334, i8* %332, align 1, !tbaa !6
  %335 = getelementptr inbounds i8, i8* %284, i64 17
  %336 = tail call i32 @rand() #3
  %337 = trunc i32 %336 to i8
  store i8 %337, i8* %335, align 1, !tbaa !6
  %338 = getelementptr inbounds i8, i8* %284, i64 18
  %339 = tail call i32 @rand() #3
  %340 = trunc i32 %339 to i8
  store i8 %340, i8* %338, align 1, !tbaa !6
  %341 = getelementptr inbounds i8, i8* %284, i64 19
  %342 = tail call i32 @rand() #3
  %343 = trunc i32 %342 to i8
  store i8 %343, i8* %341, align 1, !tbaa !6
  %344 = getelementptr inbounds i8, i8* %284, i64 20
  %345 = tail call i32 @rand() #3
  %346 = trunc i32 %345 to i8
  store i8 %346, i8* %344, align 1, !tbaa !6
  %347 = getelementptr inbounds i8, i8* %284, i64 21
  %348 = tail call i32 @rand() #3
  %349 = trunc i32 %348 to i8
  store i8 %349, i8* %347, align 1, !tbaa !6
  %350 = getelementptr inbounds i8, i8* %284, i64 22
  %351 = tail call i32 @rand() #3
  %352 = trunc i32 %351 to i8
  store i8 %352, i8* %350, align 1, !tbaa !6
  %353 = getelementptr inbounds i8, i8* %284, i64 23
  %354 = tail call i32 @rand() #3
  %355 = trunc i32 %354 to i8
  store i8 %355, i8* %353, align 1, !tbaa !6
  %356 = getelementptr inbounds i8, i8* %284, i64 24
  %357 = tail call i32 @rand() #3
  %358 = trunc i32 %357 to i8
  store i8 %358, i8* %356, align 1, !tbaa !6
  %359 = getelementptr inbounds i8, i8* %284, i64 25
  %360 = tail call i32 @rand() #3
  %361 = trunc i32 %360 to i8
  store i8 %361, i8* %359, align 1, !tbaa !6
  %362 = getelementptr inbounds i8, i8* %284, i64 26
  %363 = tail call i32 @rand() #3
  %364 = trunc i32 %363 to i8
  store i8 %364, i8* %362, align 1, !tbaa !6
  %365 = getelementptr inbounds i8, i8* %284, i64 27
  %366 = tail call i32 @rand() #3
  %367 = trunc i32 %366 to i8
  store i8 %367, i8* %365, align 1, !tbaa !6
  %368 = getelementptr inbounds i8, i8* %284, i64 28
  %369 = tail call i32 @rand() #3
  %370 = trunc i32 %369 to i8
  store i8 %370, i8* %368, align 1, !tbaa !6
  %371 = getelementptr inbounds i8, i8* %284, i64 29
  %372 = tail call i32 @rand() #3
  %373 = trunc i32 %372 to i8
  store i8 %373, i8* %371, align 1, !tbaa !6
  %374 = getelementptr inbounds i8, i8* %284, i64 30
  %375 = tail call i32 @rand() #3
  %376 = trunc i32 %375 to i8
  store i8 %376, i8* %374, align 1, !tbaa !6
  %377 = getelementptr inbounds i8, i8* %284, i64 31
  %378 = tail call i32 @rand() #3
  %379 = trunc i32 %378 to i8
  store i8 %379, i8* %377, align 1, !tbaa !6
  %380 = getelementptr inbounds i8, i8* %284, i64 32
  %381 = tail call i32 @rand() #3
  %382 = trunc i32 %381 to i8
  store i8 %382, i8* %380, align 1, !tbaa !6
  %383 = getelementptr inbounds i8, i8* %284, i64 33
  %384 = tail call i32 @rand() #3
  %385 = trunc i32 %384 to i8
  store i8 %385, i8* %383, align 1, !tbaa !6
  %386 = getelementptr inbounds i8, i8* %284, i64 34
  %387 = tail call i32 @rand() #3
  %388 = trunc i32 %387 to i8
  store i8 %388, i8* %386, align 1, !tbaa !6
  %389 = getelementptr inbounds i8, i8* %284, i64 35
  %390 = tail call i32 @rand() #3
  %391 = trunc i32 %390 to i8
  store i8 %391, i8* %389, align 1, !tbaa !6
  %392 = getelementptr inbounds i8, i8* %284, i64 36
  %393 = tail call i32 @rand() #3
  %394 = trunc i32 %393 to i8
  store i8 %394, i8* %392, align 1, !tbaa !6
  %395 = getelementptr inbounds i8, i8* %284, i64 37
  %396 = tail call i32 @rand() #3
  %397 = trunc i32 %396 to i8
  store i8 %397, i8* %395, align 1, !tbaa !6
  %398 = getelementptr inbounds i8, i8* %284, i64 38
  %399 = tail call i32 @rand() #3
  %400 = trunc i32 %399 to i8
  store i8 %400, i8* %398, align 1, !tbaa !6
  %401 = getelementptr inbounds i8, i8* %284, i64 39
  %402 = tail call i32 @rand() #3
  %403 = trunc i32 %402 to i8
  store i8 %403, i8* %401, align 1, !tbaa !6
  %404 = getelementptr inbounds i8, i8* %284, i64 40
  %405 = tail call i32 @rand() #3
  %406 = trunc i32 %405 to i8
  store i8 %406, i8* %404, align 1, !tbaa !6
  %407 = getelementptr inbounds i8, i8* %284, i64 41
  %408 = tail call i32 @rand() #3
  %409 = trunc i32 %408 to i8
  store i8 %409, i8* %407, align 1, !tbaa !6
  %410 = getelementptr inbounds i8, i8* %284, i64 42
  %411 = tail call i32 @rand() #3
  %412 = trunc i32 %411 to i8
  store i8 %412, i8* %410, align 1, !tbaa !6
  %413 = getelementptr inbounds i8, i8* %284, i64 43
  %414 = tail call i32 @rand() #3
  %415 = trunc i32 %414 to i8
  store i8 %415, i8* %413, align 1, !tbaa !6
  %416 = getelementptr inbounds i8, i8* %284, i64 44
  %417 = tail call i32 @rand() #3
  %418 = trunc i32 %417 to i8
  store i8 %418, i8* %416, align 1, !tbaa !6
  %419 = getelementptr inbounds i8, i8* %284, i64 45
  %420 = tail call i32 @rand() #3
  %421 = trunc i32 %420 to i8
  store i8 %421, i8* %419, align 1, !tbaa !6
  %422 = getelementptr inbounds i8, i8* %284, i64 46
  %423 = tail call i32 @rand() #3
  %424 = trunc i32 %423 to i8
  store i8 %424, i8* %422, align 1, !tbaa !6
  %425 = getelementptr inbounds i8, i8* %284, i64 47
  %426 = tail call i32 @rand() #3
  %427 = trunc i32 %426 to i8
  store i8 %427, i8* %425, align 1, !tbaa !6
  %428 = getelementptr inbounds i8, i8* %284, i64 48
  %429 = tail call i32 @rand() #3
  %430 = trunc i32 %429 to i8
  store i8 %430, i8* %428, align 1, !tbaa !6
  %431 = getelementptr inbounds i8, i8* %284, i64 49
  %432 = tail call i32 @rand() #3
  %433 = trunc i32 %432 to i8
  store i8 %433, i8* %431, align 1, !tbaa !6
  %434 = getelementptr inbounds i8, i8* %284, i64 50
  %435 = tail call i32 @rand() #3
  %436 = trunc i32 %435 to i8
  store i8 %436, i8* %434, align 1, !tbaa !6
  %437 = getelementptr inbounds i8, i8* %284, i64 51
  %438 = tail call i32 @rand() #3
  %439 = trunc i32 %438 to i8
  store i8 %439, i8* %437, align 1, !tbaa !6
  %440 = getelementptr inbounds i8, i8* %284, i64 52
  %441 = tail call i32 @rand() #3
  %442 = trunc i32 %441 to i8
  store i8 %442, i8* %440, align 1, !tbaa !6
  %443 = getelementptr inbounds i8, i8* %284, i64 53
  %444 = tail call i32 @rand() #3
  %445 = trunc i32 %444 to i8
  store i8 %445, i8* %443, align 1, !tbaa !6
  %446 = getelementptr inbounds i8, i8* %284, i64 54
  %447 = tail call i32 @rand() #3
  %448 = trunc i32 %447 to i8
  store i8 %448, i8* %446, align 1, !tbaa !6
  %449 = getelementptr inbounds i8, i8* %284, i64 55
  %450 = tail call i32 @rand() #3
  %451 = trunc i32 %450 to i8
  store i8 %451, i8* %449, align 1, !tbaa !6
  %452 = getelementptr inbounds i8, i8* %284, i64 56
  %453 = tail call i32 @rand() #3
  %454 = trunc i32 %453 to i8
  store i8 %454, i8* %452, align 1, !tbaa !6
  %455 = getelementptr inbounds i8, i8* %284, i64 57
  %456 = tail call i32 @rand() #3
  %457 = trunc i32 %456 to i8
  store i8 %457, i8* %455, align 1, !tbaa !6
  %458 = getelementptr inbounds i8, i8* %284, i64 58
  %459 = tail call i32 @rand() #3
  %460 = trunc i32 %459 to i8
  store i8 %460, i8* %458, align 1, !tbaa !6
  %461 = getelementptr inbounds i8, i8* %284, i64 59
  %462 = tail call i32 @rand() #3
  %463 = trunc i32 %462 to i8
  store i8 %463, i8* %461, align 1, !tbaa !6
  %464 = getelementptr inbounds i8, i8* %284, i64 60
  %465 = tail call i32 @rand() #3
  %466 = trunc i32 %465 to i8
  store i8 %466, i8* %464, align 1, !tbaa !6
  %467 = getelementptr inbounds i8, i8* %284, i64 61
  %468 = tail call i32 @rand() #3
  %469 = trunc i32 %468 to i8
  store i8 %469, i8* %467, align 1, !tbaa !6
  %470 = getelementptr inbounds i8, i8* %284, i64 62
  %471 = tail call i32 @rand() #3
  %472 = trunc i32 %471 to i8
  store i8 %472, i8* %470, align 1, !tbaa !6
  %473 = getelementptr inbounds i8, i8* %284, i64 63
  %474 = tail call i32 @rand() #3
  %475 = trunc i32 %474 to i8
  store i8 %475, i8* %473, align 1, !tbaa !6
  %476 = getelementptr inbounds i8, i8* %284, i64 64
  %477 = tail call i32 @rand() #3
  %478 = trunc i32 %477 to i8
  store i8 %478, i8* %476, align 1, !tbaa !6
  %479 = getelementptr inbounds i8, i8* %284, i64 65
  %480 = tail call i32 @rand() #3
  %481 = trunc i32 %480 to i8
  store i8 %481, i8* %479, align 1, !tbaa !6
  %482 = getelementptr inbounds i8, i8* %284, i64 66
  %483 = tail call i32 @rand() #3
  %484 = trunc i32 %483 to i8
  store i8 %484, i8* %482, align 1, !tbaa !6
  %485 = getelementptr inbounds i8, i8* %284, i64 67
  %486 = tail call i32 @rand() #3
  %487 = trunc i32 %486 to i8
  store i8 %487, i8* %485, align 1, !tbaa !6
  %488 = getelementptr inbounds i8, i8* %284, i64 68
  %489 = tail call i32 @rand() #3
  %490 = trunc i32 %489 to i8
  store i8 %490, i8* %488, align 1, !tbaa !6
  %491 = getelementptr inbounds i8, i8* %284, i64 69
  %492 = tail call i32 @rand() #3
  %493 = trunc i32 %492 to i8
  store i8 %493, i8* %491, align 1, !tbaa !6
  %494 = getelementptr inbounds i8, i8* %284, i64 70
  %495 = tail call i32 @rand() #3
  %496 = trunc i32 %495 to i8
  store i8 %496, i8* %494, align 1, !tbaa !6
  %497 = getelementptr inbounds i8, i8* %284, i64 71
  %498 = tail call i32 @rand() #3
  %499 = trunc i32 %498 to i8
  store i8 %499, i8* %497, align 1, !tbaa !6
  %500 = getelementptr inbounds i8, i8* %284, i64 72
  %501 = tail call i32 @rand() #3
  %502 = trunc i32 %501 to i8
  store i8 %502, i8* %500, align 1, !tbaa !6
  %503 = getelementptr inbounds i8, i8* %284, i64 73
  %504 = tail call i32 @rand() #3
  %505 = trunc i32 %504 to i8
  store i8 %505, i8* %503, align 1, !tbaa !6
  %506 = getelementptr inbounds i8, i8* %284, i64 74
  %507 = tail call i32 @rand() #3
  %508 = trunc i32 %507 to i8
  store i8 %508, i8* %506, align 1, !tbaa !6
  %509 = getelementptr inbounds i8, i8* %284, i64 75
  %510 = tail call i32 @rand() #3
  %511 = trunc i32 %510 to i8
  store i8 %511, i8* %509, align 1, !tbaa !6
  %512 = getelementptr inbounds i8, i8* %284, i64 76
  %513 = tail call i32 @rand() #3
  %514 = trunc i32 %513 to i8
  store i8 %514, i8* %512, align 1, !tbaa !6
  %515 = getelementptr inbounds i8, i8* %284, i64 77
  %516 = tail call i32 @rand() #3
  %517 = trunc i32 %516 to i8
  store i8 %517, i8* %515, align 1, !tbaa !6
  %518 = getelementptr inbounds i8, i8* %284, i64 78
  %519 = tail call i32 @rand() #3
  %520 = trunc i32 %519 to i8
  store i8 %520, i8* %518, align 1, !tbaa !6
  %521 = getelementptr inbounds i8, i8* %284, i64 79
  %522 = tail call i32 @rand() #3
  %523 = trunc i32 %522 to i8
  store i8 %523, i8* %521, align 1, !tbaa !6
  %524 = getelementptr inbounds i8, i8* %284, i64 80
  %525 = tail call i32 @rand() #3
  %526 = trunc i32 %525 to i8
  store i8 %526, i8* %524, align 1, !tbaa !6
  %527 = getelementptr inbounds i8, i8* %284, i64 81
  %528 = tail call i32 @rand() #3
  %529 = trunc i32 %528 to i8
  store i8 %529, i8* %527, align 1, !tbaa !6
  %530 = getelementptr inbounds i8, i8* %284, i64 82
  %531 = tail call i32 @rand() #3
  %532 = trunc i32 %531 to i8
  store i8 %532, i8* %530, align 1, !tbaa !6
  %533 = getelementptr inbounds i8, i8* %284, i64 83
  %534 = tail call i32 @rand() #3
  %535 = trunc i32 %534 to i8
  store i8 %535, i8* %533, align 1, !tbaa !6
  %536 = getelementptr inbounds i8, i8* %284, i64 84
  %537 = tail call i32 @rand() #3
  %538 = trunc i32 %537 to i8
  store i8 %538, i8* %536, align 1, !tbaa !6
  %539 = getelementptr inbounds i8, i8* %284, i64 85
  %540 = tail call i32 @rand() #3
  %541 = trunc i32 %540 to i8
  store i8 %541, i8* %539, align 1, !tbaa !6
  %542 = getelementptr inbounds i8, i8* %284, i64 86
  %543 = tail call i32 @rand() #3
  %544 = trunc i32 %543 to i8
  store i8 %544, i8* %542, align 1, !tbaa !6
  %545 = getelementptr inbounds i8, i8* %284, i64 87
  %546 = tail call i32 @rand() #3
  %547 = trunc i32 %546 to i8
  store i8 %547, i8* %545, align 1, !tbaa !6
  %548 = getelementptr inbounds i8, i8* %284, i64 88
  %549 = add nuw nsw i64 %283, 1
  %550 = icmp eq i64 %549, 112
  br i1 %550, label %279, label %282

551:                                              ; preds = %279
  tail call void @scorrelation_golden(i8* getelementptr inbounds ([571648 x i8], [571648 x i8]* @image1, i64 0, i64 0), i8* getelementptr inbounds ([571648 x i8], [571648 x i8]* @image2, i64 0, i64 0), i8* getelementptr inbounds ([49280 x i8], [49280 x i8]* @golden_res, i64 0, i64 0))
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local void @srand(i32) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (Red Hat 10.0.1-1.module_el8.3.0+467+cb298d5b)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"long", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!4, !4, i64 0}
