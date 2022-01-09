; ModuleID = 'heap-1d-ind-o3.c'
source_filename = "heap-1d-ind-o3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #0 {
  %1 = tail call noalias dereferenceable_or_null(2400) i8* @malloc(i64 2400) #2
  %2 = bitcast i8* %1 to i32*
  %3 = tail call noalias dereferenceable_or_null(4) i8* @malloc(i64 4) #2
  %4 = bitcast i8* %3 to i32*
  store i32 1, i32* %2, align 4, !tbaa !2
  %5 = getelementptr inbounds i8, i8* %1, i64 4
  %6 = bitcast i8* %5 to i32*
  store i32 1, i32* %6, align 4, !tbaa !2
  store i32 2, i32* %4, align 4, !tbaa !2
  br label %7

7:                                                ; preds = %7, %0
  %8 = phi i32* [ %4, %0 ], [ %21, %7 ]
  %9 = phi i32 [ 2, %0 ], [ %22, %7 ]
  %10 = add nsw i32 %9, -1
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %2, i64 %11
  %13 = load i32, i32* %12, align 4, !tbaa !2
  %14 = add nsw i32 %9, -2
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %2, i64 %15
  %17 = load i32, i32* %16, align 4, !tbaa !2
  %18 = add nsw i32 %17, %13
  %19 = sext i32 %9 to i64
  %20 = getelementptr inbounds i32, i32* %2, i64 %19
  store i32 %18, i32* %20, align 4, !tbaa !2
  %21 = getelementptr inbounds i32, i32* %8, i64 1
  %22 = load i32, i32* %21, align 4, !tbaa !2
  %23 = icmp slt i32 %22, 600
  br i1 %23, label %7, label %24

24:                                               ; preds = %7
  %25 = getelementptr inbounds i8, i8* %1, i64 20
  %26 = bitcast i8* %25 to i32*
  %27 = load i32, i32* %26, align 4, !tbaa !2
  ret i32 %27
}

; Function Attrs: nofree nounwind
declare dso_local noalias i8* @malloc(i64) local_unnamed_addr #1

attributes #0 = { nofree nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (Red Hat 10.0.1-1.module_el8.3.0+467+cb298d5b)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"int", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
