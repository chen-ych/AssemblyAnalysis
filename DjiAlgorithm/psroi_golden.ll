; ModuleID = 'psroi_golden.c'
source_filename = "psroi_golden.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"failed, %d != %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"passed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bilinear_interpolate(i8* %0, i16 signext %1, i16 signext %2, i16 signext %3, i16 signext %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
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
  store i8* %0, i8** %7, align 8
  store i16 %1, i16* %8, align 2
  store i16 %2, i16* %9, align 2
  store i16 %3, i16* %10, align 2
  store i16 %4, i16* %11, align 2
  store i32 0, i32* %12, align 4
  %29 = load i16, i16* %10, align 2
  %30 = sext i16 %29 to i32
  %31 = ashr i32 %30, 4
  %32 = load i16, i16* %8, align 2
  %33 = sext i16 %32 to i32
  %34 = icmp sge i32 %31, %33
  br i1 %34, label %42, label %35

35:                                               ; preds = %5
  %36 = load i16, i16* %11, align 2
  %37 = sext i16 %36 to i32
  %38 = ashr i32 %37, 4
  %39 = load i16, i16* %9, align 2
  %40 = sext i16 %39 to i32
  %41 = icmp sge i32 %38, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %35, %5
  store i32 0, i32* %6, align 4
  br label %209

43:                                               ; preds = %35
  %44 = load i16, i16* %10, align 2
  %45 = sext i16 %44 to i32
  %46 = icmp sle i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  store i16 0, i16* %10, align 2
  br label %48

48:                                               ; preds = %47, %43
  %49 = load i16, i16* %11, align 2
  %50 = sext i16 %49 to i32
  %51 = icmp sle i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  store i16 0, i16* %11, align 2
  br label %53

53:                                               ; preds = %52, %48
  %54 = load i16, i16* %10, align 2
  %55 = sext i16 %54 to i32
  %56 = ashr i32 %55, 4
  store i32 %56, i32* %13, align 4
  %57 = load i16, i16* %11, align 2
  %58 = sext i16 %57 to i32
  %59 = ashr i32 %58, 4
  store i32 %59, i32* %14, align 4
  %60 = load i32, i32* %13, align 4
  %61 = load i16, i16* %8, align 2
  %62 = sext i16 %61 to i32
  %63 = sub nsw i32 %62, 1
  %64 = icmp sge i32 %60, %63
  br i1 %64, label %65, label %72

65:                                               ; preds = %53
  %66 = load i16, i16* %8, align 2
  %67 = sext i16 %66 to i32
  %68 = sub nsw i32 %67, 1
  store i32 %68, i32* %13, align 4
  store i32 %68, i32* %15, align 4
  %69 = load i32, i32* %13, align 4
  %70 = shl i32 %69, 4
  %71 = trunc i32 %70 to i16
  store i16 %71, i16* %10, align 2
  br label %75

72:                                               ; preds = %53
  %73 = load i32, i32* %13, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %15, align 4
  br label %75

75:                                               ; preds = %72, %65
  %76 = load i32, i32* %14, align 4
  %77 = load i16, i16* %9, align 2
  %78 = sext i16 %77 to i32
  %79 = sub nsw i32 %78, 1
  %80 = icmp sge i32 %76, %79
  br i1 %80, label %81, label %88

81:                                               ; preds = %75
  %82 = load i16, i16* %9, align 2
  %83 = sext i16 %82 to i32
  %84 = sub nsw i32 %83, 1
  store i32 %84, i32* %14, align 4
  store i32 %84, i32* %16, align 4
  %85 = load i32, i32* %14, align 4
  %86 = shl i32 %85, 4
  %87 = trunc i32 %86 to i16
  store i16 %87, i16* %11, align 2
  br label %91

88:                                               ; preds = %75
  %89 = load i32, i32* %14, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %16, align 4
  br label %91

91:                                               ; preds = %88, %81
  %92 = load i16, i16* %10, align 2
  %93 = sext i16 %92 to i32
  %94 = load i32, i32* %13, align 4
  %95 = shl i32 %94, 4
  %96 = sub nsw i32 %93, %95
  %97 = trunc i32 %96 to i16
  store i16 %97, i16* %17, align 2
  %98 = load i16, i16* %11, align 2
  %99 = sext i16 %98 to i32
  %100 = load i32, i32* %14, align 4
  %101 = shl i32 %100, 4
  %102 = sub nsw i32 %99, %101
  %103 = trunc i32 %102 to i16
  store i16 %103, i16* %18, align 2
  %104 = load i16, i16* %17, align 2
  %105 = zext i16 %104 to i32
  %106 = sub nsw i32 16, %105
  %107 = trunc i32 %106 to i16
  store i16 %107, i16* %19, align 2
  %108 = load i16, i16* %18, align 2
  %109 = zext i16 %108 to i32
  %110 = sub nsw i32 16, %109
  %111 = trunc i32 %110 to i16
  store i16 %111, i16* %20, align 2
  %112 = load i8*, i8** %7, align 8
  %113 = load i32, i32* %13, align 4
  %114 = load i16, i16* %9, align 2
  %115 = sext i16 %114 to i32
  %116 = mul nsw i32 %113, %115
  %117 = load i32, i32* %14, align 4
  %118 = add nsw i32 %116, %117
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8, i8* %112, i64 %119
  %121 = load i8, i8* %120, align 1
  %122 = zext i8 %121 to i16
  store i16 %122, i16* %21, align 2
  %123 = load i8*, i8** %7, align 8
  %124 = load i32, i32* %13, align 4
  %125 = load i16, i16* %9, align 2
  %126 = sext i16 %125 to i32
  %127 = mul nsw i32 %124, %126
  %128 = load i32, i32* %16, align 4
  %129 = add nsw i32 %127, %128
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8, i8* %123, i64 %130
  %132 = load i8, i8* %131, align 1
  %133 = zext i8 %132 to i16
  store i16 %133, i16* %22, align 2
  %134 = load i8*, i8** %7, align 8
  %135 = load i32, i32* %15, align 4
  %136 = load i16, i16* %9, align 2
  %137 = sext i16 %136 to i32
  %138 = mul nsw i32 %135, %137
  %139 = load i32, i32* %14, align 4
  %140 = add nsw i32 %138, %139
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i8, i8* %134, i64 %141
  %143 = load i8, i8* %142, align 1
  %144 = zext i8 %143 to i16
  store i16 %144, i16* %23, align 2
  %145 = load i8*, i8** %7, align 8
  %146 = load i32, i32* %15, align 4
  %147 = load i16, i16* %9, align 2
  %148 = sext i16 %147 to i32
  %149 = mul nsw i32 %146, %148
  %150 = load i32, i32* %16, align 4
  %151 = add nsw i32 %149, %150
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i8, i8* %145, i64 %152
  %154 = load i8, i8* %153, align 1
  %155 = zext i8 %154 to i16
  store i16 %155, i16* %24, align 2
  %156 = load i16, i16* %19, align 2
  %157 = zext i16 %156 to i32
  %158 = load i16, i16* %20, align 2
  %159 = zext i16 %158 to i32
  %160 = mul nsw i32 %157, %159
  %161 = ashr i32 %160, 4
  %162 = trunc i32 %161 to i16
  store i16 %162, i16* %25, align 2
  %163 = load i16, i16* %19, align 2
  %164 = zext i16 %163 to i32
  %165 = load i16, i16* %18, align 2
  %166 = zext i16 %165 to i32
  %167 = mul nsw i32 %164, %166
  %168 = ashr i32 %167, 4
  %169 = trunc i32 %168 to i16
  store i16 %169, i16* %26, align 2
  %170 = load i16, i16* %17, align 2
  %171 = zext i16 %170 to i32
  %172 = load i16, i16* %20, align 2
  %173 = zext i16 %172 to i32
  %174 = mul nsw i32 %171, %173
  %175 = ashr i32 %174, 4
  %176 = trunc i32 %175 to i16
  store i16 %176, i16* %27, align 2
  %177 = load i16, i16* %17, align 2
  %178 = zext i16 %177 to i32
  %179 = load i16, i16* %18, align 2
  %180 = zext i16 %179 to i32
  %181 = mul nsw i32 %178, %180
  %182 = ashr i32 %181, 4
  %183 = trunc i32 %182 to i16
  store i16 %183, i16* %28, align 2
  %184 = load i16, i16* %25, align 2
  %185 = zext i16 %184 to i32
  %186 = load i16, i16* %21, align 2
  %187 = zext i16 %186 to i32
  %188 = mul nsw i32 %185, %187
  %189 = load i16, i16* %26, align 2
  %190 = zext i16 %189 to i32
  %191 = load i16, i16* %22, align 2
  %192 = zext i16 %191 to i32
  %193 = mul nsw i32 %190, %192
  %194 = add nsw i32 %188, %193
  %195 = load i16, i16* %27, align 2
  %196 = zext i16 %195 to i32
  %197 = load i16, i16* %23, align 2
  %198 = zext i16 %197 to i32
  %199 = mul nsw i32 %196, %198
  %200 = add nsw i32 %194, %199
  %201 = load i16, i16* %28, align 2
  %202 = zext i16 %201 to i32
  %203 = load i16, i16* %24, align 2
  %204 = zext i16 %203 to i32
  %205 = mul nsw i32 %202, %204
  %206 = add nsw i32 %200, %205
  %207 = lshr i32 %206, 4
  store i32 %207, i32* %12, align 4
  %208 = load i32, i32* %12, align 4
  store i32 %208, i32* %6, align 4
  br label %209

209:                                              ; preds = %91, %42
  %210 = load i32, i32* %6, align 4
  ret i32 %210
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @psroi_align_golden(i8* %0, i16* %1, i16* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, i8 zeroext %12) #0 {
  %14 = alloca i8*, align 8
  %15 = alloca i16*, align 8
  %16 = alloca i16*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i8, align 1
  %27 = alloca i8*, align 8
  %28 = alloca i16, align 2
  %29 = alloca i16, align 2
  %30 = alloca i32, align 4
  %31 = alloca i16, align 2
  %32 = alloca i16, align 2
  %33 = alloca i16, align 2
  %34 = alloca i16, align 2
  %35 = alloca i16, align 2
  %36 = alloca i16, align 2
  %37 = alloca i16, align 2
  %38 = alloca i16, align 2
  %39 = alloca i16, align 2
  %40 = alloca i16, align 2
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i16, align 2
  %44 = alloca i16, align 2
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  %49 = alloca i16, align 2
  %50 = alloca i32, align 4
  %51 = alloca i16, align 2
  store i8* %0, i8** %14, align 8
  store i16* %1, i16** %15, align 8
  store i16* %2, i16** %16, align 8
  store i32 %3, i32* %17, align 4
  store i32 %4, i32* %18, align 4
  store i32 %5, i32* %19, align 4
  store i32 %6, i32* %20, align 4
  store i32 %7, i32* %21, align 4
  store i32 %8, i32* %22, align 4
  store i32 %9, i32* %23, align 4
  store i32 %10, i32* %24, align 4
  store i32 %11, i32* %25, align 4
  store i8 %12, i8* %26, align 1
  %52 = load i8*, i8** %14, align 8
  store i8* %52, i8** %27, align 8
  %53 = load i32, i32* %18, align 4
  %54 = load i32, i32* %20, align 4
  %55 = udiv i32 %53, %54
  %56 = trunc i32 %55 to i16
  store i16 %56, i16* %28, align 2
  %57 = load i32, i32* %18, align 4
  %58 = load i32, i32* %20, align 4
  %59 = urem i32 %57, %58
  %60 = trunc i32 %59 to i16
  store i16 %60, i16* %29, align 2
  store i32 0, i32* %30, align 4
  br label %61

61:                                               ; preds = %265, %13
  %62 = load i32, i32* %30, align 4
  %63 = load i32, i32* %17, align 4
  %64 = icmp ult i32 %62, %63
  br i1 %64, label %65, label %268

65:                                               ; preds = %61
  %66 = load i8*, i8** %14, align 8
  store i8* %66, i8** %27, align 8
  %67 = load i16*, i16** %15, align 8
  %68 = load i32, i32* %30, align 4
  %69 = mul i32 4, %68
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds i16, i16* %67, i64 %70
  %72 = load i16, i16* %71, align 2
  store i16 %72, i16* %31, align 2
  %73 = load i16*, i16** %15, align 8
  %74 = load i32, i32* %30, align 4
  %75 = mul i32 4, %74
  %76 = add i32 %75, 1
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds i16, i16* %73, i64 %77
  %79 = load i16, i16* %78, align 2
  store i16 %79, i16* %32, align 2
  %80 = load i16*, i16** %15, align 8
  %81 = load i32, i32* %30, align 4
  %82 = mul i32 4, %81
  %83 = add i32 %82, 2
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds i16, i16* %80, i64 %84
  %86 = load i16, i16* %85, align 2
  store i16 %86, i16* %33, align 2
  %87 = load i16*, i16** %15, align 8
  %88 = load i32, i32* %30, align 4
  %89 = mul i32 4, %88
  %90 = add i32 %89, 3
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds i16, i16* %87, i64 %91
  %93 = load i16, i16* %92, align 2
  store i16 %93, i16* %34, align 2
  %94 = load i16, i16* %33, align 2
  %95 = zext i16 %94 to i32
  %96 = load i16, i16* %31, align 2
  %97 = zext i16 %96 to i32
  %98 = sub nsw i32 %95, %97
  %99 = icmp sgt i32 %98, 16
  br i1 %99, label %100, label %106

100:                                              ; preds = %65
  %101 = load i16, i16* %33, align 2
  %102 = zext i16 %101 to i32
  %103 = load i16, i16* %31, align 2
  %104 = zext i16 %103 to i32
  %105 = sub nsw i32 %102, %104
  br label %107

106:                                              ; preds = %65
  br label %107

107:                                              ; preds = %106, %100
  %108 = phi i32 [ %105, %100 ], [ 16, %106 ]
  %109 = trunc i32 %108 to i16
  store i16 %109, i16* %35, align 2
  %110 = load i16, i16* %34, align 2
  %111 = zext i16 %110 to i32
  %112 = load i16, i16* %32, align 2
  %113 = zext i16 %112 to i32
  %114 = sub nsw i32 %111, %113
  %115 = icmp sgt i32 %114, 16
  br i1 %115, label %116, label %122

116:                                              ; preds = %107
  %117 = load i16, i16* %34, align 2
  %118 = zext i16 %117 to i32
  %119 = load i16, i16* %32, align 2
  %120 = zext i16 %119 to i32
  %121 = sub nsw i32 %118, %120
  br label %123

122:                                              ; preds = %107
  br label %123

123:                                              ; preds = %122, %116
  %124 = phi i32 [ %121, %116 ], [ 16, %122 ]
  %125 = trunc i32 %124 to i16
  store i16 %125, i16* %36, align 2
  %126 = load i32, i32* %20, align 4
  %127 = uitofp i32 %126 to double
  %128 = fdiv double 1.000000e+00, %127
  %129 = fmul double %128, 2.560000e+02
  %130 = fptoui double %129 to i16
  store i16 %130, i16* %37, align 2
  %131 = load i32, i32* %19, align 4
  %132 = uitofp i32 %131 to double
  %133 = fdiv double 1.000000e+00, %132
  %134 = fmul double %133, 2.560000e+02
  %135 = fptoui double %134 to i16
  store i16 %135, i16* %38, align 2
  %136 = load i16, i16* %35, align 2
  %137 = zext i16 %136 to i32
  %138 = load i16, i16* %37, align 2
  %139 = zext i16 %138 to i32
  %140 = mul nsw i32 %137, %139
  %141 = ashr i32 %140, 8
  %142 = trunc i32 %141 to i16
  store i16 %142, i16* %39, align 2
  %143 = load i16, i16* %36, align 2
  %144 = zext i16 %143 to i32
  %145 = load i16, i16* %38, align 2
  %146 = zext i16 %145 to i32
  %147 = mul nsw i32 %144, %146
  %148 = ashr i32 %147, 8
  %149 = trunc i32 %148 to i16
  store i16 %149, i16* %40, align 2
  %150 = load i8, i8* %26, align 1
  %151 = zext i8 %150 to i32
  store i32 %151, i32* %41, align 4
  %152 = load i8, i8* %26, align 1
  %153 = zext i8 %152 to i32
  store i32 %153, i32* %42, align 4
  %154 = load i16, i16* %39, align 2
  %155 = zext i16 %154 to i32
  %156 = load i8, i8* %26, align 1
  %157 = zext i8 %156 to i32
  %158 = mul nsw i32 %157, 2
  %159 = sdiv i32 %155, %158
  %160 = trunc i32 %159 to i16
  store i16 %160, i16* %43, align 2
  %161 = load i16, i16* %40, align 2
  %162 = zext i16 %161 to i32
  %163 = load i8, i8* %26, align 1
  %164 = zext i8 %163 to i32
  %165 = mul nsw i32 %164, 2
  %166 = sdiv i32 %162, %165
  %167 = trunc i32 %166 to i16
  store i16 %167, i16* %44, align 2
  store i32 0, i32* %45, align 4
  br label %168

168:                                              ; preds = %261, %123
  %169 = load i32, i32* %45, align 4
  %170 = load i32, i32* %21, align 4
  %171 = icmp ult i32 %169, %170
  br i1 %171, label %172, label %264

172:                                              ; preds = %168
  store i32 0, i32* %46, align 4
  %173 = load i32, i32* %30, align 4
  %174 = load i32, i32* %24, align 4
  %175 = mul i32 %173, %174
  %176 = load i32, i32* %45, align 4
  %177 = load i32, i32* %25, align 4
  %178 = mul i32 %176, %177
  %179 = add i32 %175, %178
  %180 = load i16, i16* %28, align 2
  %181 = zext i16 %180 to i32
  %182 = load i32, i32* %20, align 4
  %183 = mul i32 %181, %182
  %184 = add i32 %179, %183
  %185 = load i16, i16* %29, align 2
  %186 = zext i16 %185 to i32
  %187 = add i32 %184, %186
  store i32 %187, i32* %47, align 4
  store i32 0, i32* %48, align 4
  br label %188

188:                                              ; preds = %244, %172
  %189 = load i32, i32* %48, align 4
  %190 = load i32, i32* %42, align 4
  %191 = icmp slt i32 %189, %190
  br i1 %191, label %192, label %247

192:                                              ; preds = %188
  %193 = load i16, i16* %32, align 2
  %194 = zext i16 %193 to i32
  %195 = load i16, i16* %28, align 2
  %196 = zext i16 %195 to i32
  %197 = load i16, i16* %40, align 2
  %198 = zext i16 %197 to i32
  %199 = mul nsw i32 %196, %198
  %200 = add nsw i32 %194, %199
  %201 = load i32, i32* %48, align 4
  %202 = mul nsw i32 2, %201
  %203 = add nsw i32 %202, 1
  %204 = load i16, i16* %44, align 2
  %205 = zext i16 %204 to i32
  %206 = mul nsw i32 %203, %205
  %207 = add nsw i32 %200, %206
  %208 = trunc i32 %207 to i16
  store i16 %208, i16* %49, align 2
  store i32 0, i32* %50, align 4
  br label %209

209:                                              ; preds = %240, %192
  %210 = load i32, i32* %50, align 4
  %211 = load i32, i32* %41, align 4
  %212 = icmp slt i32 %210, %211
  br i1 %212, label %213, label %243

213:                                              ; preds = %209
  %214 = load i16, i16* %31, align 2
  %215 = zext i16 %214 to i32
  %216 = load i16, i16* %29, align 2
  %217 = zext i16 %216 to i32
  %218 = load i16, i16* %39, align 2
  %219 = zext i16 %218 to i32
  %220 = mul nsw i32 %217, %219
  %221 = add nsw i32 %215, %220
  %222 = load i32, i32* %50, align 4
  %223 = mul nsw i32 2, %222
  %224 = add nsw i32 %223, 1
  %225 = load i16, i16* %43, align 2
  %226 = zext i16 %225 to i32
  %227 = mul nsw i32 %224, %226
  %228 = add nsw i32 %221, %227
  %229 = trunc i32 %228 to i16
  store i16 %229, i16* %51, align 2
  %230 = load i8*, i8** %27, align 8
  %231 = load i32, i32* %22, align 4
  %232 = trunc i32 %231 to i16
  %233 = load i32, i32* %23, align 4
  %234 = trunc i32 %233 to i16
  %235 = load i16, i16* %49, align 2
  %236 = load i16, i16* %51, align 2
  %237 = call i32 @bilinear_interpolate(i8* %230, i16 signext %232, i16 signext %234, i16 signext %235, i16 signext %236)
  %238 = load i32, i32* %46, align 4
  %239 = add i32 %238, %237
  store i32 %239, i32* %46, align 4
  br label %240

240:                                              ; preds = %213
  %241 = load i32, i32* %50, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %50, align 4
  br label %209

243:                                              ; preds = %209
  br label %244

244:                                              ; preds = %243
  %245 = load i32, i32* %48, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %48, align 4
  br label %188

247:                                              ; preds = %188
  %248 = load i32, i32* %46, align 4
  %249 = lshr i32 %248, 2
  %250 = trunc i32 %249 to i16
  %251 = load i16*, i16** %16, align 8
  %252 = load i32, i32* %47, align 4
  %253 = zext i32 %252 to i64
  %254 = getelementptr inbounds i16, i16* %251, i64 %253
  store i16 %250, i16* %254, align 2
  %255 = load i32, i32* %22, align 4
  %256 = load i32, i32* %23, align 4
  %257 = mul i32 %255, %256
  %258 = load i8*, i8** %27, align 8
  %259 = zext i32 %257 to i64
  %260 = getelementptr inbounds i8, i8* %258, i64 %259
  store i8* %260, i8** %27, align 8
  br label %261

261:                                              ; preds = %247
  %262 = load i32, i32* %45, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %45, align 4
  br label %168

264:                                              ; preds = %168
  br label %265

265:                                              ; preds = %264
  %266 = load i32, i32* %30, align 4
  %267 = add i32 %266, 1
  store i32 %267, i32* %30, align 4
  br label %61

268:                                              ; preds = %61
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @psroi_pooling_align_golden(i8* %0, i16* %1, i16* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, i8 zeroext %12) #0 {
  %14 = alloca i8*, align 8
  %15 = alloca i16*, align 8
  %16 = alloca i16*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i8, align 1
  %27 = alloca i8*, align 8
  %28 = alloca i32, align 4
  store i8* %0, i8** %14, align 8
  store i16* %1, i16** %15, align 8
  store i16* %2, i16** %16, align 8
  store i32 %3, i32* %17, align 4
  store i32 %4, i32* %18, align 4
  store i32 %5, i32* %19, align 4
  store i32 %6, i32* %20, align 4
  store i32 %7, i32* %21, align 4
  store i32 %8, i32* %22, align 4
  store i32 %9, i32* %23, align 4
  store i32 %10, i32* %24, align 4
  store i32 %11, i32* %25, align 4
  store i8 %12, i8* %26, align 1
  %29 = load i8*, i8** %14, align 8
  store i8* %29, i8** %27, align 8
  store i32 0, i32* %28, align 4
  br label %30

30:                                               ; preds = %56, %13
  %31 = load i32, i32* %28, align 4
  %32 = load i32, i32* %18, align 4
  %33 = icmp ult i32 %31, %32
  br i1 %33, label %34, label %59

34:                                               ; preds = %30
  %35 = load i8*, i8** %27, align 8
  %36 = load i16*, i16** %15, align 8
  %37 = load i16*, i16** %16, align 8
  %38 = load i32, i32* %17, align 4
  %39 = load i32, i32* %28, align 4
  %40 = load i32, i32* %19, align 4
  %41 = load i32, i32* %20, align 4
  %42 = load i32, i32* %21, align 4
  %43 = load i32, i32* %22, align 4
  %44 = load i32, i32* %23, align 4
  %45 = load i32, i32* %24, align 4
  %46 = load i32, i32* %25, align 4
  %47 = load i8, i8* %26, align 1
  call void @psroi_align_golden(i8* %35, i16* %36, i16* %37, i32 %38, i32 %39, i32 %40, i32 %41, i32 %42, i32 %43, i32 %44, i32 %45, i32 %46, i8 zeroext %47)
  %48 = load i32, i32* %22, align 4
  %49 = load i32, i32* %23, align 4
  %50 = mul i32 %48, %49
  %51 = load i32, i32* %21, align 4
  %52 = mul i32 %50, %51
  %53 = load i8*, i8** %27, align 8
  %54 = zext i32 %52 to i64
  %55 = getelementptr inbounds i8, i8* %53, i64 %54
  store i8* %55, i8** %27, align 8
  br label %56

56:                                               ; preds = %34
  %57 = load i32, i32* %28, align 4
  %58 = add i32 %57, 1
  store i32 %58, i32* %28, align 4
  br label %30

59:                                               ; preds = %30
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  %34 = alloca i64, align 8
  %35 = alloca i64, align 8
  %36 = alloca i64, align 8
  %37 = alloca i64, align 8
  %38 = alloca i64, align 8
  %39 = alloca i64, align 8
  %40 = alloca i64, align 8
  %41 = alloca i64, align 8
  %42 = alloca i64, align 8
  %43 = alloca i64, align 8
  %44 = alloca i64, align 8
  %45 = alloca i64, align 8
  %46 = alloca i64, align 8
  %47 = alloca i64, align 8
  %48 = alloca i64, align 8
  %49 = alloca i64, align 8
  %50 = alloca i64, align 8
  %51 = alloca i64, align 8
  %52 = alloca i64, align 8
  %53 = alloca i64, align 8
  %54 = alloca i64, align 8
  %55 = alloca i64, align 8
  %56 = alloca i64, align 8
  %57 = alloca i64, align 8
  %58 = alloca i16, align 2
  %59 = alloca i16, align 2
  %60 = alloca i64, align 8
  %61 = alloca i64, align 8
  %62 = alloca i32, align 4
  %63 = alloca i32, align 4
  %64 = alloca i32, align 4
  %65 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 1, i32* %2, align 4
  store i32 23, i32* %3, align 4
  store i32 40, i32* %4, align 4
  store i32 7, i32* %5, align 4
  store i32 7, i32* %6, align 4
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* %6, align 4
  %68 = mul i32 %66, %67
  store i32 %68, i32* %7, align 4
  store i32 8, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %7, align 4
  %71 = mul i32 %69, %70
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* %6, align 4
  %74 = mul i32 %72, %73
  %75 = load i32, i32* %8, align 4
  %76 = mul i32 %74, %75
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* %6, align 4
  %79 = mul i32 %77, %78
  store i32 %79, i32* %11, align 4
  store i32 2, i32* %12, align 4
  store i32 300, i32* %13, align 4
  store i32 4, i32* %14, align 4
  %80 = load i32, i32* %14, align 4
  %81 = load i32, i32* %13, align 4
  %82 = mul i32 %80, %81
  store i32 %82, i32* %15, align 4
  %83 = load i32, i32* %3, align 4
  %84 = load i32, i32* %4, align 4
  %85 = mul i32 %83, %84
  %86 = load i32, i32* %9, align 4
  %87 = mul i32 %85, %86
  store i32 %87, i32* %16, align 4
  %88 = load i32, i32* %13, align 4
  %89 = load i32, i32* %5, align 4
  %90 = mul i32 %88, %89
  %91 = load i32, i32* %6, align 4
  %92 = mul i32 %90, %91
  %93 = load i32, i32* %8, align 4
  %94 = mul i32 %92, %93
  store i32 %94, i32* %17, align 4
  %95 = load i32, i32* %13, align 4
  %96 = load i32, i32* %7, align 4
  %97 = mul i32 %95, %96
  store i32 %97, i32* %18, align 4
  %98 = load i32, i32* %16, align 4
  %99 = zext i32 %98 to i64
  %100 = call i8* @llvm.stacksave()
  store i8* %100, i8** %19, align 8
  %101 = alloca i8, i64 %99, align 16
  store i64 %99, i64* %20, align 8
  %102 = load i32, i32* %16, align 4
  %103 = zext i32 %102 to i64
  %104 = alloca i8, i64 %103, align 16
  store i64 %103, i64* %21, align 8
  %105 = load i32, i32* %15, align 4
  %106 = zext i32 %105 to i64
  %107 = alloca i16, i64 %106, align 16
  store i64 %106, i64* %22, align 8
  %108 = load i32, i32* %17, align 4
  %109 = zext i32 %108 to i64
  %110 = alloca i16, i64 %109, align 16
  store i64 %109, i64* %23, align 8
  %111 = load i32, i32* %17, align 4
  %112 = zext i32 %111 to i64
  %113 = alloca i16, i64 %112, align 16
  store i64 %112, i64* %24, align 8
  %114 = load i32, i32* %17, align 4
  %115 = zext i32 %114 to i64
  %116 = alloca i16, i64 %115, align 16
  store i64 %115, i64* %25, align 8
  %117 = load i32, i32* %18, align 4
  %118 = zext i32 %117 to i64
  %119 = alloca i32, i64 %118, align 16
  store i64 %118, i64* %26, align 8
  %120 = load i32, i32* %18, align 4
  %121 = zext i32 %120 to i64
  %122 = alloca i32, i64 %121, align 16
  store i64 %121, i64* %27, align 8
  %123 = load i32, i32* %18, align 4
  %124 = zext i32 %123 to i64
  %125 = alloca i32, i64 %124, align 16
  store i64 %124, i64* %28, align 8
  %126 = load i32, i32* %18, align 4
  %127 = zext i32 %126 to i64
  %128 = alloca i32, i64 %127, align 16
  store i64 %127, i64* %29, align 8
  %129 = load i32, i32* %18, align 4
  %130 = zext i32 %129 to i64
  %131 = alloca i32, i64 %130, align 16
  store i64 %130, i64* %30, align 8
  %132 = load i32, i32* %18, align 4
  %133 = zext i32 %132 to i64
  %134 = alloca i32, i64 %133, align 16
  store i64 %133, i64* %31, align 8
  %135 = load i32, i32* %18, align 4
  %136 = zext i32 %135 to i64
  %137 = alloca i32, i64 %136, align 16
  store i64 %136, i64* %32, align 8
  %138 = load i32, i32* %18, align 4
  %139 = zext i32 %138 to i64
  %140 = alloca i32, i64 %139, align 16
  store i64 %139, i64* %33, align 8
  %141 = load i32, i32* %18, align 4
  %142 = zext i32 %141 to i64
  %143 = alloca i32, i64 %142, align 16
  store i64 %142, i64* %34, align 8
  %144 = load i32, i32* %18, align 4
  %145 = zext i32 %144 to i64
  %146 = alloca i32, i64 %145, align 16
  store i64 %145, i64* %35, align 8
  %147 = load i32, i32* %18, align 4
  %148 = zext i32 %147 to i64
  %149 = alloca i32, i64 %148, align 16
  store i64 %148, i64* %36, align 8
  %150 = load i32, i32* %18, align 4
  %151 = zext i32 %150 to i64
  %152 = alloca i32, i64 %151, align 16
  store i64 %151, i64* %37, align 8
  %153 = load i32, i32* %18, align 4
  %154 = zext i32 %153 to i64
  %155 = alloca i32, i64 %154, align 16
  store i64 %154, i64* %38, align 8
  %156 = load i32, i32* %18, align 4
  %157 = zext i32 %156 to i64
  %158 = alloca i32, i64 %157, align 16
  store i64 %157, i64* %39, align 8
  %159 = load i32, i32* %18, align 4
  %160 = zext i32 %159 to i64
  %161 = alloca i32, i64 %160, align 16
  store i64 %160, i64* %40, align 8
  %162 = load i32, i32* %18, align 4
  %163 = zext i32 %162 to i64
  %164 = alloca i32, i64 %163, align 16
  store i64 %163, i64* %41, align 8
  %165 = load i32, i32* %18, align 4
  %166 = zext i32 %165 to i64
  %167 = alloca i8, i64 %166, align 16
  store i64 %166, i64* %42, align 8
  %168 = load i32, i32* %18, align 4
  %169 = zext i32 %168 to i64
  %170 = alloca i8, i64 %169, align 16
  store i64 %169, i64* %43, align 8
  %171 = load i32, i32* %18, align 4
  %172 = zext i32 %171 to i64
  %173 = alloca i8, i64 %172, align 16
  store i64 %172, i64* %44, align 8
  %174 = load i32, i32* %18, align 4
  %175 = zext i32 %174 to i64
  %176 = alloca i8, i64 %175, align 16
  store i64 %175, i64* %45, align 8
  %177 = load i32, i32* %18, align 4
  %178 = zext i32 %177 to i64
  %179 = alloca i8, i64 %178, align 16
  store i64 %178, i64* %46, align 8
  %180 = load i32, i32* %18, align 4
  %181 = zext i32 %180 to i64
  %182 = alloca i8, i64 %181, align 16
  store i64 %181, i64* %47, align 8
  %183 = load i32, i32* %18, align 4
  %184 = zext i32 %183 to i64
  %185 = alloca i8, i64 %184, align 16
  store i64 %184, i64* %48, align 8
  %186 = load i32, i32* %18, align 4
  %187 = zext i32 %186 to i64
  %188 = alloca i8, i64 %187, align 16
  store i64 %187, i64* %49, align 8
  %189 = load i32, i32* %18, align 4
  %190 = zext i32 %189 to i64
  %191 = alloca i8, i64 %190, align 16
  store i64 %190, i64* %50, align 8
  %192 = load i32, i32* %18, align 4
  %193 = zext i32 %192 to i64
  %194 = alloca i8, i64 %193, align 16
  store i64 %193, i64* %51, align 8
  %195 = load i32, i32* %18, align 4
  %196 = zext i32 %195 to i64
  %197 = alloca i8, i64 %196, align 16
  store i64 %196, i64* %52, align 8
  %198 = load i32, i32* %18, align 4
  %199 = zext i32 %198 to i64
  %200 = alloca i8, i64 %199, align 16
  store i64 %199, i64* %53, align 8
  %201 = load i32, i32* %18, align 4
  %202 = zext i32 %201 to i64
  %203 = alloca i8, i64 %202, align 16
  store i64 %202, i64* %54, align 8
  %204 = load i32, i32* %18, align 4
  %205 = zext i32 %204 to i64
  %206 = alloca i8, i64 %205, align 16
  store i64 %205, i64* %55, align 8
  %207 = load i32, i32* %18, align 4
  %208 = zext i32 %207 to i64
  %209 = alloca i8, i64 %208, align 16
  store i64 %208, i64* %56, align 8
  %210 = load i32, i32* %18, align 4
  %211 = zext i32 %210 to i64
  %212 = alloca i8, i64 %211, align 16
  store i64 %211, i64* %57, align 8
  %213 = load i32, i32* %3, align 4
  %214 = sub i32 %213, 1
  %215 = trunc i32 %214 to i16
  store i16 %215, i16* %58, align 2
  %216 = load i32, i32* %4, align 4
  %217 = sub i32 %216, 1
  %218 = trunc i32 %217 to i16
  store i16 %218, i16* %59, align 2
  %219 = load i32, i32* %13, align 4
  %220 = zext i32 %219 to i64
  %221 = alloca i16, i64 %220, align 16
  store i64 %220, i64* %60, align 8
  %222 = load i32, i32* %13, align 4
  %223 = zext i32 %222 to i64
  %224 = alloca i16, i64 %223, align 16
  store i64 %223, i64* %61, align 8
  store i32 0, i32* %62, align 4
  br label %225

225:                                              ; preds = %238, %0
  %226 = load i32, i32* %62, align 4
  %227 = load i32, i32* %13, align 4
  %228 = icmp ult i32 %226, %227
  br i1 %228, label %229, label %241

229:                                              ; preds = %225
  %230 = load i16, i16* %58, align 2
  %231 = load i32, i32* %62, align 4
  %232 = zext i32 %231 to i64
  %233 = getelementptr inbounds i16, i16* %221, i64 %232
  store i16 %230, i16* %233, align 2
  %234 = load i16, i16* %59, align 2
  %235 = load i32, i32* %62, align 4
  %236 = zext i32 %235 to i64
  %237 = getelementptr inbounds i16, i16* %224, i64 %236
  store i16 %234, i16* %237, align 2
  br label %238

238:                                              ; preds = %229
  %239 = load i32, i32* %62, align 4
  %240 = add i32 %239, 1
  store i32 %240, i32* %62, align 4
  br label %225

241:                                              ; preds = %225
  store i32 0, i32* %63, align 4
  br label %242

242:                                              ; preds = %254, %241
  %243 = load i32, i32* %63, align 4
  %244 = load i32, i32* %16, align 4
  %245 = icmp ult i32 %243, %244
  br i1 %245, label %246, label %257

246:                                              ; preds = %242
  %247 = load i32, i32* %63, align 4
  %248 = srem i32 %247, 64
  %249 = shl i32 %248, 2
  %250 = trunc i32 %249 to i8
  %251 = load i32, i32* %63, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i8, i8* %101, i64 %252
  store i8 %250, i8* %253, align 1
  br label %254

254:                                              ; preds = %246
  %255 = load i32, i32* %63, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %63, align 4
  br label %242

257:                                              ; preds = %242
  store i32 0, i32* %64, align 4
  br label %258

258:                                              ; preds = %303, %257
  %259 = load i32, i32* %64, align 4
  %260 = load i32, i32* %13, align 4
  %261 = udiv i32 %260, 2
  %262 = icmp ult i32 %259, %261
  br i1 %262, label %263, label %306

263:                                              ; preds = %258
  %264 = load i32, i32* %64, align 4
  %265 = mul nsw i32 %264, 8
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i16, i16* %107, i64 %266
  store i16 16, i16* %267, align 2
  %268 = load i32, i32* %64, align 4
  %269 = mul nsw i32 %268, 8
  %270 = add nsw i32 %269, 1
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i16, i16* %107, i64 %271
  store i16 16, i16* %272, align 2
  %273 = load i32, i32* %64, align 4
  %274 = mul nsw i32 %273, 8
  %275 = add nsw i32 %274, 2
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i16, i16* %107, i64 %276
  store i16 80, i16* %277, align 2
  %278 = load i32, i32* %64, align 4
  %279 = mul nsw i32 %278, 8
  %280 = add nsw i32 %279, 3
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i16, i16* %107, i64 %281
  store i16 80, i16* %282, align 2
  %283 = load i32, i32* %64, align 4
  %284 = mul nsw i32 %283, 8
  %285 = add nsw i32 %284, 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds i16, i16* %107, i64 %286
  store i16 176, i16* %287, align 2
  %288 = load i32, i32* %64, align 4
  %289 = mul nsw i32 %288, 8
  %290 = add nsw i32 %289, 5
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds i16, i16* %107, i64 %291
  store i16 176, i16* %292, align 2
  %293 = load i32, i32* %64, align 4
  %294 = mul nsw i32 %293, 8
  %295 = add nsw i32 %294, 6
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i16, i16* %107, i64 %296
  store i16 240, i16* %297, align 2
  %298 = load i32, i32* %64, align 4
  %299 = mul nsw i32 %298, 8
  %300 = add nsw i32 %299, 7
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds i16, i16* %107, i64 %301
  store i16 240, i16* %302, align 2
  br label %303

303:                                              ; preds = %263
  %304 = load i32, i32* %64, align 4
  %305 = add nsw i32 %304, 1
  store i32 %305, i32* %64, align 4
  br label %258

306:                                              ; preds = %258
  %307 = load i32, i32* %13, align 4
  %308 = load i32, i32* %7, align 4
  %309 = load i32, i32* %5, align 4
  %310 = load i32, i32* %6, align 4
  %311 = load i32, i32* %8, align 4
  %312 = load i32, i32* %3, align 4
  %313 = load i32, i32* %4, align 4
  %314 = load i32, i32* %10, align 4
  %315 = load i32, i32* %11, align 4
  %316 = load i32, i32* %12, align 4
  %317 = trunc i32 %316 to i8
  call void @psroi_pooling_align_golden(i8* %101, i16* %107, i16* %110, i32 %307, i32 %308, i32 %309, i32 %310, i32 %311, i32 %312, i32 %313, i32 %314, i32 %315, i8 zeroext %317)
  store i32 0, i32* %65, align 4
  br label %318

318:                                              ; preds = %347, %306
  %319 = load i32, i32* %65, align 4
  %320 = load i32, i32* %17, align 4
  %321 = icmp ult i32 %319, %320
  br i1 %321, label %322, label %350

322:                                              ; preds = %318
  %323 = load i32, i32* %65, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds i16, i16* %116, i64 %324
  %326 = load i16, i16* %325, align 2
  %327 = zext i16 %326 to i32
  %328 = load i32, i32* %65, align 4
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds i16, i16* %110, i64 %329
  %331 = load i16, i16* %330, align 2
  %332 = zext i16 %331 to i32
  %333 = icmp eq i32 %327, %332
  br i1 %333, label %346, label %334

334:                                              ; preds = %322
  %335 = load i32, i32* %65, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds i16, i16* %116, i64 %336
  %338 = load i16, i16* %337, align 2
  %339 = zext i16 %338 to i32
  %340 = load i32, i32* %65, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds i16, i16* %110, i64 %341
  %343 = load i16, i16* %342, align 2
  %344 = zext i16 %343 to i32
  %345 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %339, i32 %344)
  store i32 0, i32* %2, align 4
  br label %346

346:                                              ; preds = %334, %322
  br label %347

347:                                              ; preds = %346
  %348 = load i32, i32* %65, align 4
  %349 = add nsw i32 %348, 1
  store i32 %349, i32* %65, align 4
  br label %318

350:                                              ; preds = %318
  %351 = load i32, i32* %2, align 4
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %353, label %355

353:                                              ; preds = %350
  %354 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %355

355:                                              ; preds = %353, %350
  %356 = load i32, i32* %2, align 4
  %357 = icmp eq i32 %356, 0
  %358 = zext i1 %357 to i32
  store i32 %358, i32* %1, align 4
  %359 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %359)
  %360 = load i32, i32* %1, align 4
  ret i32 %360
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (Red Hat 10.0.1-1.module_el8.3.0+467+cb298d5b)"}
