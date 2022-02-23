; ModuleID = 'randomfunc.c'
source_filename = "randomfunc.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32"

@f = dso_local local_unnamed_addr global [3 x i32 (i32, i32)*] zeroinitializer, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn
define dso_local i32 @f1(i32 %x, i32 %y) #0 {
entry:
  %add = add i32 %x, 1
  %add1 = add i32 %add, %y
  ret i32 %add1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn
define dso_local i32 @f2(i32 %x, i32 %y) #0 {
entry:
  %add = add i32 %x, 2
  %add1 = add i32 %add, %y
  ret i32 %add1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn
define dso_local i32 @f3(i32 %x, i32 %y) #0 {
entry:
  %add = add i32 %x, 3
  %add1 = add i32 %add, %y
  ret i32 %add1
}

; Function Attrs: nounwind
define dso_local i32 @main() local_unnamed_addr #1 {
entry:
  %i = alloca i32, align 4
  store i32 (i32, i32)* @f1, i32 (i32, i32)** getelementptr inbounds ([3 x i32 (i32, i32)*], [3 x i32 (i32, i32)*]* @f, i32 0, i32 0), align 4, !tbaa !4
  store i32 (i32, i32)* @f2, i32 (i32, i32)** getelementptr inbounds ([3 x i32 (i32, i32)*], [3 x i32 (i32, i32)*]* @f, i32 0, i32 1), align 4, !tbaa !4
  store i32 (i32, i32)* @f3, i32 (i32, i32)** getelementptr inbounds ([3 x i32 (i32, i32)*], [3 x i32 (i32, i32)*]* @f, i32 0, i32 2), align 4, !tbaa !4
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #4
  %call = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* nonnull %i)
  %1 = load i32, i32* %i, align 4, !tbaa !8
  %arrayidx = getelementptr inbounds [3 x i32 (i32, i32)*], [3 x i32 (i32, i32)*]* @f, i32 0, i32 %1
  %2 = load i32 (i32, i32)*, i32 (i32, i32)** %arrayidx, align 4, !tbaa !4
  %call1 = call i32 %2(i32 1, i32 2) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #4
  ret i32 %call1
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @scanf(i8* nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind readnone willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-features"="+a,+c,+m,+relax,-save-restore" }
attributes #1 = { nounwind "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-features"="+a,+c,+m,+relax,-save-restore" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-features"="+a,+c,+m,+relax,-save-restore" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"target-abi", !"ilp32"}
!2 = !{i32 1, !"SmallDataLimit", i32 8}
!3 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git c0e3bb4d4ba3064c42fb8e1ee9f001235d9af04c)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !6, i64 0}
