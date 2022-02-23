; ModuleID = 'double-call.c'
source_filename = "double-call.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32"

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn
define dso_local i32 @f(double %a) local_unnamed_addr #0 {
entry:
  %conv = fptosi double %a to i32
  %conv1 = sitofp i32 %conv to double
  %add = fadd double %conv1, 2.000000e-01
  %conv2 = fptosi double %add to i32
  ret i32 %conv2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn
define dso_local i32 @main() local_unnamed_addr #0 {
entry:
  ret i32 3
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind readnone willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-features"="+a,+c,+m,+relax,-save-restore" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"target-abi", !"ilp32"}
!2 = !{i32 1, !"SmallDataLimit", i32 8}
!3 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git c0e3bb4d4ba3064c42fb8e1ee9f001235d9af04c)"}
