; ModuleID = 'correlation.c'
source_filename = "correlation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rvv_res = dso_local global [49280 x i8] zeroinitializer, align 16
@__const.main.image_shape = private unnamed_addr constant [3 x i64] [i64 58, i64 112, i64 88], align 16
@image1 = common dso_local global [571648 x i8] zeroinitializer, align 16
@image2 = common dso_local global [571648 x i8] zeroinitializer, align 16
@golden_res = common dso_local global [49280 x i8] zeroinitializer, align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @randTensor(i8* %0, i64* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64* %1, i64** %4, align 8
  store i64 0, i64* %5, align 8
  br label %8

8:                                                ; preds = %43, %2
  %9 = load i64, i64* %5, align 8
  %10 = load i64*, i64** %4, align 8
  %11 = getelementptr inbounds i64, i64* %10, i64 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ult i64 %9, %12
  br i1 %13, label %14, label %46

14:                                               ; preds = %8
  store i64 0, i64* %6, align 8
  br label %15

15:                                               ; preds = %39, %14
  %16 = load i64, i64* %6, align 8
  %17 = load i64*, i64** %4, align 8
  %18 = getelementptr inbounds i64, i64* %17, i64 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ult i64 %16, %19
  br i1 %20, label %21, label %42

21:                                               ; preds = %15
  store i64 0, i64* %7, align 8
  br label %22

22:                                               ; preds = %35, %21
  %23 = load i64, i64* %7, align 8
  %24 = load i64*, i64** %4, align 8
  %25 = getelementptr inbounds i64, i64* %24, i64 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ult i64 %23, %26
  br i1 %27, label %28, label %38

28:                                               ; preds = %22
  %29 = call i32 @rand() #3
  %30 = srem i32 %29, 256
  %31 = trunc i32 %30 to i8
  %32 = load i8*, i8** %3, align 8
  store i8 %31, i8* %32, align 1
  %33 = load i8*, i8** %3, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %3, align 8
  br label %35

35:                                               ; preds = %28
  %36 = load i64, i64* %7, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %7, align 8
  br label %22

38:                                               ; preds = %22
  br label %39

39:                                               ; preds = %38
  %40 = load i64, i64* %6, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %6, align 8
  br label %15

42:                                               ; preds = %15
  br label %43

43:                                               ; preds = %42
  %44 = load i64, i64* %5, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %5, align 8
  br label %8

46:                                               ; preds = %8
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scorrelation_golden(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i16, align 2
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %16 = load i8*, i8** %6, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %16, i8 0, i64 49280, i1 false)
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  br label %17

17:                                               ; preds = %108, %3
  %18 = load i64, i64* %10, align 8
  %19 = icmp ult i64 %18, 5
  br i1 %19, label %20, label %111

20:                                               ; preds = %17
  store i64 0, i64* %11, align 8
  br label %21

21:                                               ; preds = %104, %20
  %22 = load i64, i64* %11, align 8
  %23 = icmp ult i64 %22, 112
  br i1 %23, label %24, label %107

24:                                               ; preds = %21
  store i64 0, i64* %12, align 8
  br label %25

25:                                               ; preds = %100, %24
  %26 = load i64, i64* %12, align 8
  %27 = icmp ult i64 %26, 88
  br i1 %27, label %28, label %103

28:                                               ; preds = %25
  %29 = load i64, i64* %10, align 8
  %30 = mul i64 %29, 88
  %31 = mul i64 %30, 112
  %32 = load i64, i64* %11, align 8
  %33 = mul i64 %32, 88
  %34 = add i64 %31, %33
  %35 = load i64, i64* %12, align 8
  %36 = add i64 %34, %35
  store i64 %36, i64* %9, align 8
  store i32 0, i32* %13, align 4
  store i64 0, i64* %14, align 8
  br label %37

37:                                               ; preds = %90, %28
  %38 = load i64, i64* %14, align 8
  %39 = icmp ult i64 %38, 58
  br i1 %39, label %40, label %93

40:                                               ; preds = %37
  %41 = load i64, i64* %12, align 8
  %42 = load i64, i64* %10, align 8
  %43 = icmp uge i64 %41, %42
  br i1 %43, label %44, label %89

44:                                               ; preds = %40
  %45 = load i64, i64* %14, align 8
  %46 = mul i64 %45, 88
  %47 = mul i64 %46, 112
  %48 = load i64, i64* %11, align 8
  %49 = mul i64 %48, 88
  %50 = add i64 %47, %49
  %51 = load i64, i64* %12, align 8
  %52 = add i64 %50, %51
  store i64 %52, i64* %7, align 8
  %53 = load i64, i64* %14, align 8
  %54 = mul i64 %53, 88
  %55 = mul i64 %54, 112
  %56 = load i64, i64* %11, align 8
  %57 = mul i64 %56, 88
  %58 = add i64 %55, %57
  %59 = load i64, i64* %12, align 8
  %60 = add i64 %58, %59
  %61 = load i64, i64* %10, align 8
  %62 = sub i64 %60, %61
  store i64 %62, i64* %8, align 8
  %63 = load i8*, i8** %4, align 8
  %64 = load i64, i64* %7, align 8
  %65 = getelementptr inbounds i8, i8* %63, i64 %64
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = load i8*, i8** %5, align 8
  %69 = load i64, i64* %8, align 8
  %70 = getelementptr inbounds i8, i8* %68, i64 %69
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = mul nsw i32 %67, %72
  %74 = ashr i32 %73, 6
  %75 = trunc i32 %74 to i16
  store i16 %75, i16* %15, align 2
  %76 = load i16, i16* %15, align 2
  %77 = sext i16 %76 to i32
  %78 = load i32, i32* %13, align 4
  %79 = add nsw i32 %78, %77
  store i32 %79, i32* %13, align 4
  %80 = load i32, i32* %13, align 4
  %81 = icmp sgt i32 %80, 32767
  br i1 %81, label %82, label %83

82:                                               ; preds = %44
  store i32 32767, i32* %13, align 4
  br label %88

83:                                               ; preds = %44
  %84 = load i32, i32* %13, align 4
  %85 = icmp slt i32 %84, -32768
  br i1 %85, label %86, label %87

86:                                               ; preds = %83
  store i32 -32768, i32* %13, align 4
  br label %87

87:                                               ; preds = %86, %83
  br label %88

88:                                               ; preds = %87, %82
  br label %89

89:                                               ; preds = %88, %40
  br label %90

90:                                               ; preds = %89
  %91 = load i64, i64* %14, align 8
  %92 = add i64 %91, 1
  store i64 %92, i64* %14, align 8
  br label %37

93:                                               ; preds = %37
  %94 = load i32, i32* %13, align 4
  %95 = ashr i32 %94, 0
  %96 = trunc i32 %95 to i8
  %97 = load i8*, i8** %6, align 8
  %98 = load i64, i64* %9, align 8
  %99 = getelementptr inbounds i8, i8* %97, i64 %98
  store i8 %96, i8* %99, align 1
  br label %100

100:                                              ; preds = %93
  %101 = load i64, i64* %12, align 8
  %102 = add i64 %101, 1
  store i64 %102, i64* %12, align 8
  br label %25

103:                                              ; preds = %25
  br label %104

104:                                              ; preds = %103
  %105 = load i64, i64* %11, align 8
  %106 = add i64 %105, 1
  store i64 %106, i64* %11, align 8
  br label %21

107:                                              ; preds = %21
  br label %108

108:                                              ; preds = %107
  %109 = load i64, i64* %10, align 8
  %110 = add i64 %109, 1
  store i64 %110, i64* %10, align 8
  br label %17

111:                                              ; preds = %17
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca [3 x i64], align 16
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  call void @srand(i32 2021) #3
  %7 = bitcast [3 x i64]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %7, i8* align 16 bitcast ([3 x i64]* @__const.main.image_shape to i8*), i64 24, i1 false)
  store i8* getelementptr inbounds ([571648 x i8], [571648 x i8]* @image1, i64 0, i64 0), i8** %2, align 8
  store i8* getelementptr inbounds ([571648 x i8], [571648 x i8]* @image2, i64 0, i64 0), i8** %3, align 8
  %8 = getelementptr inbounds [3 x i64], [3 x i64]* %1, i64 0, i64 0
  store i64* %8, i64** %4, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = load i64*, i64** %4, align 8
  call void @randTensor(i8* %9, i64* %10)
  %11 = load i8*, i8** %3, align 8
  %12 = load i64*, i64** %4, align 8
  call void @randTensor(i8* %11, i64* %12)
  store i8* getelementptr inbounds ([49280 x i8], [49280 x i8]* @golden_res, i64 0, i64 0), i8** %5, align 8
  store i8* getelementptr inbounds ([49280 x i8], [49280 x i8]* @rvv_res, i64 0, i64 0), i8** %6, align 8
  %13 = load i8*, i8** %2, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = load i8*, i8** %5, align 8
  call void @scorrelation_golden(i8* %13, i8* %14, i8* %15)
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local void @srand(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (Red Hat 10.0.1-1.module_el8.3.0+467+cb298d5b)"}
