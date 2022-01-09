; ModuleID = 'glo-1d-ind.c'
source_filename = "glo-1d-ind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@i = dso_local local_unnamed_addr global i32 4, align 4
@j = dso_local local_unnamed_addr global i32 5, align 4
@a = common dso_local local_unnamed_addr global [6 x i32] zeroinitializer, align 16

; Function Attrs: nofree norecurse nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #0 {
  store i32 5, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @a, i64 0, i64 1), align 4, !tbaa !2
  %1 = load i32, i32* @i, align 4, !tbaa !2
  %2 = sext i32 %1 to i64
  %3 = getelementptr inbounds [6 x i32], [6 x i32]* @a, i64 0, i64 %2
  store i32 2, i32* %3, align 4, !tbaa !2
  %4 = add nsw i32 %1, -3
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds [6 x i32], [6 x i32]* @a, i64 0, i64 %5
  store i32 8, i32* %6, align 4, !tbaa !2
  %7 = load i32, i32* @j, align 4, !tbaa !2
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [6 x i32], [6 x i32]* @a, i64 0, i64 %8
  store i32 3, i32* %9, align 4, !tbaa !2
  %10 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @a, i64 0, i64 1), align 4, !tbaa !2
  %11 = load i32, i32* %3, align 4, !tbaa !2
  %12 = add nsw i32 %11, %10
  ret i32 %12
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
