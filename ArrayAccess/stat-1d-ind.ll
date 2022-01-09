; ModuleID = 'stat-1d-ind.c'
source_filename = "stat-1d-ind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@main.a = internal global [6 x i32] zeroinitializer, align 16
@main.i = internal global i32 4, align 4
@main.j = internal global i32 5, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 5, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @main.a, i64 0, i64 1), align 4
  %2 = load i32, i32* @main.i, align 4
  %3 = sext i32 %2 to i64
  %4 = getelementptr inbounds [6 x i32], [6 x i32]* @main.a, i64 0, i64 %3
  store i32 2, i32* %4, align 4
  %5 = load i32, i32* @main.i, align 4
  %6 = sub nsw i32 %5, 3
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [6 x i32], [6 x i32]* @main.a, i64 0, i64 %7
  store i32 8, i32* %8, align 4
  %9 = load i32, i32* @main.j, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [6 x i32], [6 x i32]* @main.a, i64 0, i64 %10
  store i32 3, i32* %11, align 4
  %12 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @main.a, i64 0, i64 1), align 4
  %13 = load i32, i32* @main.i, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [6 x i32], [6 x i32]* @main.a, i64 0, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %12, %16
  ret i32 %17
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (Red Hat 10.0.1-1.module_el8.3.0+467+cb298d5b)"}
