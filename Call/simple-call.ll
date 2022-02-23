; ModuleID = 'simple-call.c'
source_filename = "simple-call.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone
define dso_local i32 @f(i32 %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  %d = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  %call = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32* %d)
  %0 = load i32, i32* %x.addr, align 4
  %1 = load i32, i32* %d, align 4
  %add = add nsw i32 %0, %1
  ret i32 %add
}

declare dso_local i32 @scanf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone
define dso_local i32 @g(i32 %x, i32 %y, i32 %z) #0 {
entry:
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %z.addr = alloca i32, align 4
  %d = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %z, i32* %z.addr, align 4
  %call = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32* %d)
  %0 = load i32, i32* %x.addr, align 4
  %1 = load i32, i32* %y.addr, align 4
  %add = add nsw i32 %0, %1
  %2 = load i32, i32* %z.addr, align 4
  %3 = load i32, i32* %d, align 4
  %mul = mul nsw i32 %2, %3
  %sub = sub nsw i32 %add, %mul
  ret i32 %sub
}

; Function Attrs: noinline nounwind optnone
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %b = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 7, i32* %b, align 4
  %0 = load i32, i32* %b, align 4
  %call = call i32 @f(i32 %0)
  store i32 %call, i32* %b, align 4
  %1 = load i32, i32* %b, align 4
  %add = add nsw i32 %1, 1
  %2 = load i32, i32* %b, align 4
  %sub = sub nsw i32 %2, 2
  %3 = load i32, i32* %b, align 4
  %mul = mul nsw i32 %3, 3
  %call1 = call i32 @g(i32 %add, i32 %sub, i32 %mul)
  store i32 %call1, i32* %b, align 4
  %4 = load i32, i32* %b, align 4
  ret i32 %4
}

attributes #0 = { noinline nounwind optnone "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-features"="+a,+c,+m,+relax,-save-restore" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-features"="+a,+c,+m,+relax,-save-restore" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"target-abi", !"ilp32"}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{i32 1, !"SmallDataLimit", i32 8}
!4 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git c0e3bb4d4ba3064c42fb8e1ee9f001235d9af04c)"}
