; ModuleID = 'warp.c'
source_filename = "warp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@src_arr = common dso_local global [581504 x i8] zeroinitializer, align 16
@offset_arr = common dso_local global [9856 x i16] zeroinitializer, align 16
@golden_arr = common dso_local global [571648 x i8] zeroinitializer, align 16
@l_mask_arr = common dso_local global [9856 x i8] zeroinitializer, align 16
@r_mask_arr = common dso_local global [9856 x i8] zeroinitializer, align 16
@out_arr = common dso_local global [571648 x i8] zeroinitializer, align 16
@right_idx_arr = common dso_local global [9856 x i16] zeroinitializer, align 16
@left_idx_arr = common dso_local global [9856 x i16] zeroinitializer, align 16
@offset_fraction_arr = common dso_local global [9856 x i8] zeroinitializer, align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @warp_golden(i8* %0, i16* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i16*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  %12 = alloca i16, align 2
  %13 = alloca i16, align 2
  %14 = alloca i16, align 2
  %15 = alloca i16, align 2
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i16* %1, i16** %5, align 8
  store i8* %2, i8** %6, align 8
  store i64 0, i64* %16, align 8
  br label %19

19:                                               ; preds = %129, %3
  %20 = load i64, i64* %16, align 8
  %21 = icmp ult i64 %20, 58
  br i1 %21, label %22, label %132

22:                                               ; preds = %19
  store i64 0, i64* %17, align 8
  br label %23

23:                                               ; preds = %125, %22
  %24 = load i64, i64* %17, align 8
  %25 = icmp ult i64 %24, 112
  br i1 %25, label %26, label %128

26:                                               ; preds = %23
  store i64 0, i64* %18, align 8
  br label %27

27:                                               ; preds = %121, %26
  %28 = load i64, i64* %18, align 8
  %29 = icmp ult i64 %28, 88
  br i1 %29, label %30, label %124

30:                                               ; preds = %27
  %31 = load i64, i64* %17, align 8
  %32 = mul i64 %31, 88
  %33 = load i64, i64* %18, align 8
  %34 = add i64 %32, %33
  store i64 %34, i64* %7, align 8
  %35 = load i16*, i16** %5, align 8
  %36 = load i64, i64* %7, align 8
  %37 = getelementptr inbounds i16, i16* %35, i64 %36
  %38 = load i16, i16* %37, align 2
  store i16 %38, i16* %10, align 2
  %39 = load i16, i16* %10, align 2
  %40 = sext i16 %39 to i32
  %41 = ashr i32 %40, 8
  %42 = trunc i32 %41 to i16
  store i16 %42, i16* %11, align 2
  %43 = load i64, i64* %16, align 8
  %44 = mul i64 %43, 112
  %45 = load i64, i64* %17, align 8
  %46 = add i64 %44, %45
  %47 = mul i64 %46, 88
  %48 = load i64, i64* %18, align 8
  %49 = add i64 %47, %48
  store i64 %49, i64* %8, align 8
  %50 = load i64, i64* %18, align 8
  %51 = load i16, i16* %11, align 2
  %52 = sext i16 %51 to i64
  %53 = sub i64 %50, %52
  %54 = sub i64 %53, 1
  %55 = trunc i64 %54 to i16
  %56 = sext i16 %55 to i32
  %57 = icmp sge i32 %56, 0
  br i1 %57, label %58, label %69

58:                                               ; preds = %30
  %59 = load i8*, i8** %4, align 8
  %60 = load i64, i64* %8, align 8
  %61 = load i16, i16* %11, align 2
  %62 = sext i16 %61 to i64
  %63 = sub i64 %60, %62
  %64 = sub i64 %63, 1
  %65 = getelementptr inbounds i8, i8* %59, i64 %64
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i16
  %68 = sext i16 %67 to i32
  br label %70

69:                                               ; preds = %30
  br label %70

70:                                               ; preds = %69, %58
  %71 = phi i32 [ %68, %58 ], [ 0, %69 ]
  %72 = trunc i32 %71 to i16
  store i16 %72, i16* %14, align 2
  %73 = load i64, i64* %18, align 8
  %74 = load i16, i16* %11, align 2
  %75 = sext i16 %74 to i64
  %76 = sub i64 %73, %75
  %77 = trunc i64 %76 to i16
  %78 = sext i16 %77 to i32
  %79 = icmp sge i32 %78, 0
  br i1 %79, label %80, label %90

80:                                               ; preds = %70
  %81 = load i8*, i8** %4, align 8
  %82 = load i64, i64* %8, align 8
  %83 = load i16, i16* %11, align 2
  %84 = sext i16 %83 to i64
  %85 = sub i64 %82, %84
  %86 = getelementptr inbounds i8, i8* %81, i64 %85
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i16
  %89 = sext i16 %88 to i32
  br label %91

90:                                               ; preds = %70
  br label %91

91:                                               ; preds = %90, %80
  %92 = phi i32 [ %89, %80 ], [ 0, %90 ]
  %93 = trunc i32 %92 to i16
  store i16 %93, i16* %15, align 2
  %94 = load i16, i16* %10, align 2
  %95 = sext i16 %94 to i32
  %96 = load i16, i16* %11, align 2
  %97 = sext i16 %96 to i32
  %98 = shl i32 %97, 8
  %99 = sub nsw i32 %95, %98
  %100 = trunc i32 %99 to i16
  store i16 %100, i16* %12, align 2
  %101 = load i16, i16* %12, align 2
  %102 = sext i16 %101 to i32
  %103 = sub nsw i32 256, %102
  %104 = trunc i32 %103 to i16
  store i16 %104, i16* %13, align 2
  %105 = load i16, i16* %14, align 2
  %106 = sext i16 %105 to i32
  %107 = load i16, i16* %12, align 2
  %108 = sext i16 %107 to i32
  %109 = mul nsw i32 %106, %108
  %110 = load i16, i16* %15, align 2
  %111 = sext i16 %110 to i32
  %112 = load i16, i16* %13, align 2
  %113 = sext i16 %112 to i32
  %114 = mul nsw i32 %111, %113
  %115 = add nsw i32 %109, %114
  %116 = ashr i32 %115, 8
  %117 = trunc i32 %116 to i8
  %118 = load i8*, i8** %6, align 8
  %119 = load i64, i64* %8, align 8
  %120 = getelementptr inbounds i8, i8* %118, i64 %119
  store i8 %117, i8* %120, align 1
  br label %121

121:                                              ; preds = %91
  %122 = load i64, i64* %18, align 8
  %123 = add i64 %122, 1
  store i64 %123, i64* %18, align 8
  br label %27

124:                                              ; preds = %27
  br label %125

125:                                              ; preds = %124
  %126 = load i64, i64* %17, align 8
  %127 = add i64 %126, 1
  store i64 %127, i64* %17, align 8
  br label %23

128:                                              ; preds = %23
  br label %129

129:                                              ; preds = %128
  %130 = load i64, i64* %16, align 8
  %131 = add i64 %130, 1
  store i64 %131, i64* %16, align 8
  br label %19

132:                                              ; preds = %19
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
  store i32 0, i32* %1, align 4
  store i32 1, i32* %2, align 4
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %17, %0
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 581504
  br i1 %9, label %10, label %20

10:                                               ; preds = %7
  %11 = call i32 @rand() #2
  %12 = srem i32 %11, 128
  %13 = trunc i32 %12 to i8
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [581504 x i8], [581504 x i8]* @src_arr, i64 0, i64 %15
  store i8 %13, i8* %16, align 1
  br label %17

17:                                               ; preds = %10
  %18 = load i32, i32* %4, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %4, align 4
  br label %7

20:                                               ; preds = %7
  store i32 0, i32* %5, align 4
  br label %21

21:                                               ; preds = %47, %20
  %22 = load i32, i32* %5, align 4
  %23 = icmp slt i32 %22, 112
  br i1 %23, label %24, label %50

24:                                               ; preds = %21
  store i32 0, i32* %6, align 4
  br label %25

25:                                               ; preds = %43, %24
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %26, 88
  br i1 %27, label %28, label %46

28:                                               ; preds = %25
  %29 = load i32, i32* %5, align 4
  %30 = mul nsw i32 %29, 88
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %30, %31
  store i32 %32, i32* %3, align 4
  %33 = call i32 @rand() #2
  %34 = srem i32 %33, 128
  %35 = call i32 @rand() #2
  %36 = srem i32 %35, 128
  %37 = mul nsw i32 %36, 256
  %38 = add nsw i32 %34, %37
  %39 = trunc i32 %38 to i16
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [9856 x i16], [9856 x i16]* @offset_arr, i64 0, i64 %41
  store i16 %39, i16* %42, align 2
  br label %43

43:                                               ; preds = %28
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %6, align 4
  br label %25

46:                                               ; preds = %25
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %5, align 4
  br label %21

50:                                               ; preds = %21
  call void @warp_golden(i8* getelementptr inbounds ([581504 x i8], [581504 x i8]* @src_arr, i64 0, i64 0), i16* getelementptr inbounds ([9856 x i16], [9856 x i16]* @offset_arr, i64 0, i64 0), i8* getelementptr inbounds ([571648 x i8], [571648 x i8]* @golden_arr, i64 0, i64 0))
  %51 = load i32, i32* %1, align 4
  ret i32 %51
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (Red Hat 10.0.1-1.module_el8.3.0+467+cb298d5b)"}
