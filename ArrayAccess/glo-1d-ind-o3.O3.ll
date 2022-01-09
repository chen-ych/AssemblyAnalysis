; ModuleID = 'glo-1d-ind-o3.c'
source_filename = "glo-1d-ind-o3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = common dso_local local_unnamed_addr global [600 x i32] zeroinitializer, align 16
@i = common dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: nofree norecurse nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #0 {
  store i32 1, i32* getelementptr inbounds ([600 x i32], [600 x i32]* @a, i64 0, i64 0), align 16, !tbaa !2
  store i32 1, i32* getelementptr inbounds ([600 x i32], [600 x i32]* @a, i64 0, i64 1), align 4, !tbaa !2
  store i32 2, i32* @i, align 4, !tbaa !2
  store i32 2, i32* getelementptr inbounds ([600 x i32], [600 x i32]* @a, i64 0, i64 2), align 8, !tbaa !2
  br label %1

1:                                                ; preds = %1, %0
  %2 = phi i64 [ 3, %0 ], [ %21, %1 ]
  %3 = phi i32 [ 2, %0 ], [ %19, %1 ]
  %4 = phi i64 [ 2, %0 ], [ %16, %1 ]
  %5 = add nsw i64 %4, -1
  %6 = getelementptr inbounds [600 x i32], [600 x i32]* @a, i64 0, i64 %5
  %7 = load i32, i32* %6, align 4, !tbaa !2
  %8 = add nsw i32 %7, %3
  %9 = getelementptr inbounds [600 x i32], [600 x i32]* @a, i64 0, i64 %2
  store i32 %8, i32* %9, align 4, !tbaa !2
  %10 = add nuw nsw i64 %2, 1
  %11 = add nsw i64 %2, -1
  %12 = getelementptr inbounds [600 x i32], [600 x i32]* @a, i64 0, i64 %11
  %13 = load i32, i32* %12, align 4, !tbaa !2
  %14 = add nsw i32 %13, %8
  %15 = getelementptr inbounds [600 x i32], [600 x i32]* @a, i64 0, i64 %10
  store i32 %14, i32* %15, align 4, !tbaa !2
  %16 = add nuw nsw i64 %2, 2
  %17 = getelementptr inbounds [600 x i32], [600 x i32]* @a, i64 0, i64 %2
  %18 = load i32, i32* %17, align 4, !tbaa !2
  %19 = add nsw i32 %18, %14
  %20 = getelementptr inbounds [600 x i32], [600 x i32]* @a, i64 0, i64 %16
  store i32 %19, i32* %20, align 4, !tbaa !2
  %21 = add nuw nsw i64 %2, 3
  %22 = icmp eq i64 %21, 600
  br i1 %22, label %23, label %1

23:                                               ; preds = %1
  store i32 600, i32* @i, align 4, !tbaa !2
  %24 = load i32, i32* getelementptr inbounds ([600 x i32], [600 x i32]* @a, i64 0, i64 5), align 4, !tbaa !2
  ret i32 %24
}

attributes #0 = { nofree norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (Red Hat 10.0.1-1.module_el8.3.0+467+cb298d5b)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"int", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
