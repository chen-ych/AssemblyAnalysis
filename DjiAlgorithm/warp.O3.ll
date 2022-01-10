; ModuleID = 'warp.c'
source_filename = "warp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@src_arr = common dso_local local_unnamed_addr global [581504 x i8] zeroinitializer, align 16
@offset_arr = common dso_local local_unnamed_addr global [9856 x i16] zeroinitializer, align 16
@golden_arr = common dso_local local_unnamed_addr global [571648 x i8] zeroinitializer, align 16
@l_mask_arr = common dso_local local_unnamed_addr global [9856 x i8] zeroinitializer, align 16
@r_mask_arr = common dso_local local_unnamed_addr global [9856 x i8] zeroinitializer, align 16
@out_arr = common dso_local local_unnamed_addr global [571648 x i8] zeroinitializer, align 16
@right_idx_arr = common dso_local local_unnamed_addr global [9856 x i16] zeroinitializer, align 16
@left_idx_arr = common dso_local local_unnamed_addr global [9856 x i16] zeroinitializer, align 16
@offset_fraction_arr = common dso_local local_unnamed_addr global [9856 x i8] zeroinitializer, align 16

; Function Attrs: nofree norecurse nounwind uwtable
define dso_local void @warp_golden(i8* nocapture readonly %0, i16* nocapture readonly %1, i8* nocapture %2) local_unnamed_addr #0 {
  br label %4

4:                                                ; preds = %13, %3
  %5 = phi i64 [ 0, %3 ], [ %14, %13 ]
  %6 = mul nuw nsw i64 %5, 112
  br label %8

7:                                                ; preds = %13
  ret void

8:                                                ; preds = %16, %4
  %9 = phi i64 [ 0, %4 ], [ %17, %16 ]
  %10 = mul nuw nsw i64 %9, 88
  %11 = add nuw nsw i64 %9, %6
  %12 = mul nuw nsw i64 %11, 88
  br label %19

13:                                               ; preds = %16
  %14 = add nuw nsw i64 %5, 1
  %15 = icmp eq i64 %14, 58
  br i1 %15, label %7, label %4

16:                                               ; preds = %47
  %17 = add nuw nsw i64 %9, 1
  %18 = icmp eq i64 %17, 112
  br i1 %18, label %13, label %8

19:                                               ; preds = %47, %8
  %20 = phi i64 [ 0, %8 ], [ %59, %47 ]
  %21 = add nuw nsw i64 %20, %10
  %22 = getelementptr inbounds i16, i16* %1, i64 %21
  %23 = load i16, i16* %22, align 2, !tbaa !2
  %24 = ashr i16 %23, 8
  %25 = add nuw nsw i64 %20, %12
  %26 = sext i16 %24 to i64
  %27 = sub nsw i64 %20, %26
  %28 = trunc i64 %27 to i32
  %29 = shl i32 %28, 16
  %30 = add i32 %29, -65536
  %31 = icmp sgt i32 %30, -1
  br i1 %31, label %32, label %38

32:                                               ; preds = %19
  %33 = xor i64 %26, -1
  %34 = add i64 %25, %33
  %35 = getelementptr inbounds i8, i8* %0, i64 %34
  %36 = load i8, i8* %35, align 1, !tbaa !6
  %37 = sext i8 %36 to i32
  br label %38

38:                                               ; preds = %19, %32
  %39 = phi i32 [ %37, %32 ], [ 0, %19 ]
  %40 = trunc i64 %27 to i16
  %41 = icmp sgt i16 %40, -1
  br i1 %41, label %42, label %47

42:                                               ; preds = %38
  %43 = sub i64 %25, %26
  %44 = getelementptr inbounds i8, i8* %0, i64 %43
  %45 = load i8, i8* %44, align 1, !tbaa !6
  %46 = sext i8 %45 to i32
  br label %47

47:                                               ; preds = %38, %42
  %48 = phi i32 [ %46, %42 ], [ 0, %38 ]
  %49 = and i16 %23, 255
  %50 = zext i16 %49 to i32
  %51 = sub nuw nsw i16 256, %49
  %52 = mul nsw i32 %39, %50
  %53 = zext i16 %51 to i32
  %54 = mul nsw i32 %48, %53
  %55 = add nsw i32 %54, %52
  %56 = lshr i32 %55, 8
  %57 = trunc i32 %56 to i8
  %58 = getelementptr inbounds i8, i8* %2, i64 %25
  store i8 %57, i8* %58, align 1, !tbaa !6
  %59 = add nuw nsw i64 %20, 1
  %60 = icmp eq i64 %59, 88
  br i1 %60, label %16, label %19
}

; Function Attrs: nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #1 {
  br label %1

1:                                                ; preds = %1, %0
  %2 = phi i64 [ 0, %0 ], [ %7, %1 ]
  %3 = tail call i32 @rand() #3
  %4 = srem i32 %3, 128
  %5 = trunc i32 %4 to i8
  %6 = getelementptr inbounds [581504 x i8], [581504 x i8]* @src_arr, i64 0, i64 %2
  store i8 %5, i8* %6, align 1, !tbaa !6
  %7 = add nuw nsw i64 %2, 1
  %8 = icmp eq i64 %7, 581504
  br i1 %8, label %9, label %1

9:                                                ; preds = %1, %69
  %10 = phi i64 [ %70, %69 ], [ 0, %1 ]
  %11 = mul nuw nsw i64 %10, 88
  br label %72

12:                                               ; preds = %69, %20
  %13 = phi i64 [ %21, %20 ], [ 0, %69 ]
  %14 = mul nuw nsw i64 %13, 112
  br label %15

15:                                               ; preds = %23, %12
  %16 = phi i64 [ 0, %12 ], [ %24, %23 ]
  %17 = mul nuw nsw i64 %16, 88
  %18 = add nuw nsw i64 %16, %14
  %19 = mul nuw nsw i64 %18, 88
  br label %26

20:                                               ; preds = %23
  %21 = add nuw nsw i64 %13, 1
  %22 = icmp eq i64 %21, 58
  br i1 %22, label %68, label %12

23:                                               ; preds = %54
  %24 = add nuw nsw i64 %16, 1
  %25 = icmp eq i64 %24, 112
  br i1 %25, label %20, label %15

26:                                               ; preds = %54, %15
  %27 = phi i64 [ 0, %15 ], [ %66, %54 ]
  %28 = add nuw nsw i64 %27, %17
  %29 = getelementptr inbounds [9856 x i16], [9856 x i16]* @offset_arr, i64 0, i64 %28
  %30 = load i16, i16* %29, align 2, !tbaa !2
  %31 = ashr i16 %30, 8
  %32 = add nuw nsw i64 %27, %19
  %33 = sext i16 %31 to i64
  %34 = sub nsw i64 %27, %33
  %35 = trunc i64 %34 to i32
  %36 = shl i32 %35, 16
  %37 = add i32 %36, -65536
  %38 = icmp sgt i32 %37, -1
  br i1 %38, label %39, label %45

39:                                               ; preds = %26
  %40 = xor i64 %33, -1
  %41 = add i64 %32, %40
  %42 = getelementptr inbounds [581504 x i8], [581504 x i8]* @src_arr, i64 0, i64 %41
  %43 = load i8, i8* %42, align 1, !tbaa !6
  %44 = sext i8 %43 to i32
  br label %45

45:                                               ; preds = %39, %26
  %46 = phi i32 [ %44, %39 ], [ 0, %26 ]
  %47 = trunc i64 %34 to i16
  %48 = icmp sgt i16 %47, -1
  br i1 %48, label %49, label %54

49:                                               ; preds = %45
  %50 = sub i64 %32, %33
  %51 = getelementptr inbounds [581504 x i8], [581504 x i8]* @src_arr, i64 0, i64 %50
  %52 = load i8, i8* %51, align 1, !tbaa !6
  %53 = sext i8 %52 to i32
  br label %54

54:                                               ; preds = %49, %45
  %55 = phi i32 [ %53, %49 ], [ 0, %45 ]
  %56 = and i16 %30, 255
  %57 = zext i16 %56 to i32
  %58 = sub nuw nsw i16 256, %56
  %59 = mul nsw i32 %46, %57
  %60 = zext i16 %58 to i32
  %61 = mul nsw i32 %55, %60
  %62 = add nsw i32 %61, %59
  %63 = lshr i32 %62, 8
  %64 = trunc i32 %63 to i8
  %65 = getelementptr inbounds [571648 x i8], [571648 x i8]* @golden_arr, i64 0, i64 %32
  store i8 %64, i8* %65, align 1, !tbaa !6
  %66 = add nuw nsw i64 %27, 1
  %67 = icmp eq i64 %66, 88
  br i1 %67, label %23, label %26

68:                                               ; preds = %20
  ret i32 0

69:                                               ; preds = %72
  %70 = add nuw nsw i64 %10, 1
  %71 = icmp eq i64 %70, 112
  br i1 %71, label %12, label %9

72:                                               ; preds = %72, %9
  %73 = phi i64 [ 0, %9 ], [ %83, %72 ]
  %74 = add nuw nsw i64 %73, %11
  %75 = tail call i32 @rand() #3
  %76 = srem i32 %75, 128
  %77 = tail call i32 @rand() #3
  %78 = srem i32 %77, 128
  %79 = shl nsw i32 %78, 8
  %80 = add nsw i32 %79, %76
  %81 = trunc i32 %80 to i16
  %82 = getelementptr inbounds [9856 x i16], [9856 x i16]* @offset_arr, i64 0, i64 %74
  store i16 %81, i16* %82, align 2, !tbaa !2
  %83 = add nuw nsw i64 %73, 1
  %84 = icmp eq i64 %83, 88
  br i1 %84, label %69, label %72
}

; Function Attrs: nounwind
declare dso_local i32 @rand() local_unnamed_addr #2

attributes #0 = { nofree norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (Red Hat 10.0.1-1.module_el8.3.0+467+cb298d5b)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"short", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!4, !4, i64 0}
