; ModuleID = 'long-parameter-call.c'
source_filename = "long-parameter-call.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: noinline nounwind optnone
define dso_local i32 @f(i32 %a0, i32 %a1, i32 %a2, i32 %a3, i32 %a4, i32 %a5, i32 %a6, i32 %a7, i32 %a8, i32 %a9, i32 %a10) #0 {
entry:
  %a0.addr = alloca i32, align 4
  %a1.addr = alloca i32, align 4
  %a2.addr = alloca i32, align 4
  %a3.addr = alloca i32, align 4
  %a4.addr = alloca i32, align 4
  %a5.addr = alloca i32, align 4
  %a6.addr = alloca i32, align 4
  %a7.addr = alloca i32, align 4
  %a8.addr = alloca i32, align 4
  %a9.addr = alloca i32, align 4
  %a10.addr = alloca i32, align 4
  %d = alloca i32, align 4
  store i32 %a0, i32* %a0.addr, align 4
  store i32 %a1, i32* %a1.addr, align 4
  store i32 %a2, i32* %a2.addr, align 4
  store i32 %a3, i32* %a3.addr, align 4
  store i32 %a4, i32* %a4.addr, align 4
  store i32 %a5, i32* %a5.addr, align 4
  store i32 %a6, i32* %a6.addr, align 4
  store i32 %a7, i32* %a7.addr, align 4
  store i32 %a8, i32* %a8.addr, align 4
  store i32 %a9, i32* %a9.addr, align 4
  store i32 %a10, i32* %a10.addr, align 4
  %call = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %d)
  %0 = load i32, i32* %a10.addr, align 4
  %1 = load i32, i32* %a9.addr, align 4
  %2 = load i32, i32* %a8.addr, align 4
  %3 = load i32, i32* %a7.addr, align 4
  %4 = load i32, i32* %a6.addr, align 4
  %5 = load i32, i32* %a5.addr, align 4
  %6 = load i32, i32* %a4.addr, align 4
  %7 = load i32, i32* %a3.addr, align 4
  %8 = load i32, i32* %a2.addr, align 4
  %9 = load i32, i32* %a1.addr, align 4
  %10 = load i32, i32* %d, align 4
  %call1 = call i32 @f(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10)
  store i32 %call1, i32* %d, align 4
  %11 = load i32, i32* %a10.addr, align 4
  %12 = load i32, i32* %a9.addr, align 4
  %add = add nsw i32 %11, %12
  %13 = load i32, i32* %a8.addr, align 4
  %add2 = add nsw i32 %add, %13
  %14 = load i32, i32* %a7.addr, align 4
  %add3 = add nsw i32 %add2, %14
  %15 = load i32, i32* %d, align 4
  %add4 = add nsw i32 %add3, %15
  ret i32 %add4
}

declare dso_local i32 @scanf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %b = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 15, i32* %b, align 4
  %0 = load i32, i32* %b, align 4
  %call = call i32 @f(i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 %0, i32 7, i32 8, i32 9, i32 10)
  ret i32 %call
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
