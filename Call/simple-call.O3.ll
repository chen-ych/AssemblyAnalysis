; ModuleID = 'simple-call.c'
source_filename = "simple-call.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: nofree nounwind
define dso_local i32 @f(i32 %x) local_unnamed_addr #0 {
entry:
  %d = alloca i32, align 4
  %0 = bitcast i32* %d to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #3
  %call = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32* nonnull %d)
  %1 = load i32, i32* %d, align 4, !tbaa !4
  %add = add nsw i32 %1, %x
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #3
  ret i32 %add
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @scanf(i8* nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nofree nounwind
define dso_local i32 @g(i32 %x, i32 %y, i32 %z) local_unnamed_addr #0 {
entry:
  %d = alloca i32, align 4
  %0 = bitcast i32* %d to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #3
  %call = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32* nonnull %d)
  %add = add nsw i32 %y, %x
  %1 = load i32, i32* %d, align 4, !tbaa !4
  %mul = mul nsw i32 %1, %z
  %sub = sub i32 %add, %mul
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #3
  ret i32 %sub
}

; Function Attrs: nofree nounwind
define dso_local i32 @main() local_unnamed_addr #0 {
entry:
  %d.i7 = alloca i32, align 4
  %d.i = alloca i32, align 4
  %0 = bitcast i32* %d.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #3
  %call.i = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32* nonnull %d.i) #3
  %1 = load i32, i32* %d.i, align 4, !tbaa !4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #3
  %.neg = mul i32 %1, -3
  %mul.neg = add i32 %.neg, -21
  %2 = bitcast i32* %d.i7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #3
  %call.i8 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32* nonnull %d.i7) #3
  %add = shl i32 %1, 1
  %add.i9 = add i32 %add, 13
  %3 = load i32, i32* %d.i7, align 4, !tbaa !4
  %mul.i.neg = mul i32 %3, %mul.neg
  %sub.i = add i32 %add.i9, %mul.i.neg
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #3
  ret i32 %sub.i
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
