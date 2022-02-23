; ModuleID = 'long-parameter-call.c'
source_filename = "long-parameter-call.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: nofree nounwind
define dso_local i32 @f(i32 %a0, i32 %a1, i32 %a2, i32 %a3, i32 %a4, i32 %a5, i32 %a6, i32 %a7, i32 %a8, i32 %a9, i32 %a10) local_unnamed_addr #0 {
entry:
  %d = alloca i32, align 4
  %0 = bitcast i32* %d to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #3
  %call = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* nonnull %d)
  %1 = load i32, i32* %d, align 4, !tbaa !4
  %call1 = call i32 @f(i32 undef, i32 %a9, i32 %a8, i32 %a7, i32 %a6, i32 %a5, i32 %a4, i32 %a3, i32 %a2, i32 %a1, i32 %1)
  %add = add i32 %a8, %a7
  %add2 = add i32 %add, %a9
  %add3 = add i32 %add2, %a10
  %add4 = add i32 %add3, %call1
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #3
  ret i32 %add4
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @scanf(i8* nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nofree nounwind
define dso_local i32 @main() local_unnamed_addr #0 {
entry:
  %call = tail call i32 @f(i32 undef, i32 1, i32 2, i32 3, i32 4, i32 5, i32 15, i32 7, i32 8, i32 9, i32 10)
  ret i32 %call
}

attributes #0 = { nofree nounwind "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-features"="+a,+c,+m,+relax,-save-restore" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-features"="+a,+c,+m,+relax,-save-restore" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"target-abi", !"ilp32"}
!2 = !{i32 1, !"SmallDataLimit", i32 8}
!3 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git c0e3bb4d4ba3064c42fb8e1ee9f001235d9af04c)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
