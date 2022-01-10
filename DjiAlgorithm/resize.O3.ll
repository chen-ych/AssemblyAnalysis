; ModuleID = 'resize.c'
source_filename = "resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [28 x i8] c"resize process cycles: %lu\0A\00", align 1

; Function Attrs: nofree norecurse nounwind uwtable
define dso_local void @resize_golden(i16* noalias nocapture readonly %0, i16* noalias nocapture %1, i16 zeroext %2, i16 zeroext %3, i16 zeroext %4, i16 zeroext %5, i16 zeroext %6, i16 zeroext %7, i16 zeroext %8) local_unnamed_addr #0 {
  %10 = icmp eq i16 %4, 0
  br i1 %10, label %23, label %11

11:                                               ; preds = %9
  %12 = zext i16 %2 to i32
  %13 = add nsw i32 %12, -1
  %14 = zext i16 %5 to i32
  %15 = icmp eq i16 %5, 0
  %16 = zext i16 %3 to i32
  %17 = add nsw i32 %16, -1
  %18 = icmp eq i16 %6, 0
  %19 = mul nuw i32 %16, %12
  %20 = zext i16 %4 to i64
  %21 = zext i16 %4 to i64
  %22 = zext i16 %6 to i64
  br label %24

23:                                               ; preds = %113, %9
  ret void

24:                                               ; preds = %113, %11
  %25 = phi i32 [ 0, %11 ], [ %114, %113 ]
  %26 = phi i64 [ 0, %11 ], [ %115, %113 ]
  %27 = trunc i32 %25 to i16
  %28 = lshr i16 %27, 1
  %29 = and i16 %28, 511
  %30 = zext i16 %29 to i32
  %31 = add nuw nsw i32 %30, 1
  br i1 %15, label %113, label %32

32:                                               ; preds = %24
  %33 = icmp slt i32 %31, %13
  %34 = select i1 %33, i32 %31, i32 %13
  %35 = shl i16 %27, 6
  %36 = shl i16 %28, 7
  %37 = sub i16 %35, %36
  %38 = zext i16 %37 to i32
  %39 = sub i16 128, %37
  %40 = mul nuw nsw i32 %30, %16
  %41 = and i32 %34, 65535
  %42 = mul nuw nsw i32 %41, %16
  %43 = zext i16 %39 to i32
  br i1 %18, label %113, label %44

44:                                               ; preds = %32, %110
  %45 = phi i32 [ %111, %110 ], [ 0, %32 ]
  %46 = trunc i32 %45 to i16
  %47 = shl i16 %46, 6
  %48 = lshr i16 %46, 1
  %49 = and i16 %48, 511
  %50 = zext i16 %49 to i32
  %51 = add nuw nsw i32 %50, 1
  %52 = icmp slt i32 %51, %17
  %53 = select i1 %52, i32 %51, i32 %17
  %54 = shl i16 %48, 7
  %55 = sub i16 %47, %54
  %56 = zext i16 %55 to i32
  %57 = sub i16 128, %55
  %58 = and i32 %53, 65535
  %59 = zext i16 %57 to i32
  br label %60

60:                                               ; preds = %60, %44
  %61 = phi i64 [ 0, %44 ], [ %108, %60 ]
  %62 = trunc i64 %61 to i32
  %63 = mul i32 %19, %62
  %64 = add nuw nsw i32 %63, %40
  %65 = add nuw nsw i32 %64, %50
  %66 = add nuw nsw i32 %64, %58
  %67 = add nuw nsw i32 %63, %42
  %68 = add nuw nsw i32 %67, %50
  %69 = add nuw nsw i32 %67, %58
  %70 = mul nuw nsw i64 %61, %20
  %71 = add nuw nsw i64 %70, %26
  %72 = trunc i64 %71 to i32
  %73 = mul i32 %72, %14
  %74 = add i32 %73, %45
  %75 = zext i32 %65 to i64
  %76 = getelementptr inbounds i16, i16* %0, i64 %75
  %77 = load i16, i16* %76, align 2, !tbaa !2
  %78 = sext i16 %77 to i32
  %79 = mul nsw i32 %78, %59
  %80 = zext i32 %66 to i64
  %81 = getelementptr inbounds i16, i16* %0, i64 %80
  %82 = load i16, i16* %81, align 2, !tbaa !2
  %83 = sext i16 %82 to i32
  %84 = mul nsw i32 %83, %56
  %85 = add nsw i32 %84, %79
  %86 = zext i32 %68 to i64
  %87 = getelementptr inbounds i16, i16* %0, i64 %86
  %88 = load i16, i16* %87, align 2, !tbaa !2
  %89 = sext i16 %88 to i32
  %90 = mul nsw i32 %89, %59
  %91 = zext i32 %69 to i64
  %92 = getelementptr inbounds i16, i16* %0, i64 %91
  %93 = load i16, i16* %92, align 2, !tbaa !2
  %94 = sext i16 %93 to i32
  %95 = mul nsw i32 %94, %56
  %96 = add nsw i32 %95, %90
  %97 = shl i32 %85, 9
  %98 = ashr i32 %97, 16
  %99 = mul nsw i32 %98, %43
  %100 = shl i32 %96, 9
  %101 = ashr i32 %100, 16
  %102 = mul nsw i32 %101, %38
  %103 = add nsw i32 %102, %99
  %104 = lshr i32 %103, 7
  %105 = trunc i32 %104 to i16
  %106 = zext i32 %74 to i64
  %107 = getelementptr inbounds i16, i16* %1, i64 %106
  store i16 %105, i16* %107, align 2, !tbaa !2
  %108 = add nuw nsw i64 %61, 1
  %109 = icmp eq i64 %108, %22
  br i1 %109, label %110, label %60

110:                                              ; preds = %60
  %111 = add nuw nsw i32 %45, 1
  %112 = icmp eq i32 %111, %14
  br i1 %112, label %113, label %44

113:                                              ; preds = %110, %32, %24
  %114 = add nuw nsw i32 %25, 1
  %115 = add nuw nsw i64 %26, 1
  %116 = icmp eq i64 %115, %21
  br i1 %116, label %23, label %24
}

; Function Attrs: nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #1 {
  %1 = alloca [9856 x i16], align 16
  %2 = alloca [39424 x i16], align 16
  %3 = getelementptr inbounds [39424 x i16], [39424 x i16]* %2, i64 0, i64 0
  br label %12

4:                                                ; preds = %12
  %5 = getelementptr inbounds [9856 x i16], [9856 x i16]* %1, i64 0, i64 0
  %6 = tail call i32 (...) @rdcycle() #5
  %7 = sext i32 %6 to i64
  call void @resize_golden(i16* nonnull %5, i16* nonnull %3, i16 zeroext 112, i16 zeroext 88, i16 zeroext 224, i16 zeroext 176, i16 zeroext 1, i16 zeroext undef, i16 zeroext undef)
  %8 = tail call i32 (...) @rdcycle() #5
  %9 = sext i32 %8 to i64
  %10 = sub nsw i64 %9, %7
  %11 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %10)
  ret i32 0

12:                                               ; preds = %12, %0
  %13 = phi i64 [ 0, %0 ], [ %18, %12 ]
  %14 = tail call i32 @rand() #5
  %15 = srem i32 %14, 64
  %16 = trunc i32 %15 to i16
  %17 = getelementptr inbounds [9856 x i16], [9856 x i16]* %1, i64 0, i64 %13
  store i16 %16, i16* %17, align 2, !tbaa !2
  %18 = add nuw nsw i64 %13, 1
  %19 = icmp eq i64 %18, 9856
  br i1 %19, label %4, label %12
}

; Function Attrs: nounwind
declare dso_local i32 @rand() local_unnamed_addr #2

declare dso_local i32 @rdcycle(...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare dso_local i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #4

attributes #0 = { nofree norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nofree nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (Red Hat 10.0.1-1.module_el8.3.0+467+cb298d5b)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"short", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
