; ModuleID = 'stat-1d-ind-o3.c'
source_filename = "stat-1d-ind-o3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@main.a = internal global [600 x i32] zeroinitializer, align 16
@main.i = internal global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 1, i32* getelementptr inbounds ([600 x i32], [600 x i32]* @main.a, i64 0, i64 0), align 16
  store i32 1, i32* getelementptr inbounds ([600 x i32], [600 x i32]* @main.a, i64 0, i64 1), align 4
  store i32 2, i32* @main.i, align 4
  br label %2

2:                                                ; preds = %20, %0
  %3 = load i32, i32* @main.i, align 4
  %4 = icmp slt i32 %3, 600
  br i1 %4, label %5, label %23

5:                                                ; preds = %2
  %6 = load i32, i32* @main.i, align 4
  %7 = sub nsw i32 %6, 1
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [600 x i32], [600 x i32]* @main.a, i64 0, i64 %8
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @main.i, align 4
  %12 = sub nsw i32 %11, 2
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [600 x i32], [600 x i32]* @main.a, i64 0, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %10, %15
  %17 = load i32, i32* @main.i, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [600 x i32], [600 x i32]* @main.a, i64 0, i64 %18
  store i32 %16, i32* %19, align 4
  br label %20

20:                                               ; preds = %5
  %21 = load i32, i32* @main.i, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* @main.i, align 4
  br label %2

23:                                               ; preds = %2
  %24 = load i32, i32* getelementptr inbounds ([600 x i32], [600 x i32]* @main.a, i64 0, i64 5), align 4
  ret i32 %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (Red Hat 10.0.1-1.module_el8.3.0+467+cb298d5b)"}
