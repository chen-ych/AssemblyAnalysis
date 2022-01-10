; ModuleID = 'virtual.cpp'
source_filename = "virtual.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%class.Base = type { i32 (...)**, i32, i32 }
%class.Dervive = type { %class.Base }

$_ZN4BaseC2Ev = comdat any

$_ZN7DerviveC2Ev = comdat any

$_ZN4Base1gEi = comdat any

$_ZN7Dervive1gEi = comdat any

$_ZTV4Base = comdat any

$_ZTS4Base = comdat any

$_ZTI4Base = comdat any

$_ZTV7Dervive = comdat any

$_ZTS7Dervive = comdat any

$_ZTI7Dervive = comdat any

@.str = private unnamed_addr constant [7 x i8] c"%d %d\0A\00", align 1
@_ZTV4Base = linkonce_odr dso_local unnamed_addr constant { [3 x i8*] } { [3 x i8*] [i8* null, i8* bitcast ({ i8*, i8* }* @_ZTI4Base to i8*), i8* bitcast (i32 (%class.Base*, i32)* @_ZN4Base1gEi to i8*)] }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external dso_local global i8*
@_ZTS4Base = linkonce_odr dso_local constant [6 x i8] c"4Base\00", comdat, align 1
@_ZTI4Base = linkonce_odr dso_local constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @_ZTS4Base, i32 0, i32 0) }, comdat, align 8
@_ZTV7Dervive = linkonce_odr dso_local unnamed_addr constant { [3 x i8*] } { [3 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTI7Dervive to i8*), i8* bitcast (i32 (%class.Dervive*, i32)* @_ZN7Dervive1gEi to i8*)] }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external dso_local global i8*
@_ZTS7Dervive = linkonce_odr dso_local constant [9 x i8] c"7Dervive\00", comdat, align 1
@_ZTI7Dervive = linkonce_odr dso_local constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_ZTS7Dervive, i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @_ZTI4Base to i8*) }, comdat, align 8

; Function Attrs: noinline norecurse optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca %class.Base*, align 8
  %2 = alloca %class.Base*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = call i8* @_Znwm(i64 16) #5
  %6 = bitcast i8* %5 to %class.Base*
  %7 = bitcast %class.Base* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %7, i8 0, i64 16, i1 false)
  call void @_ZN4BaseC2Ev(%class.Base* %6) #6
  store %class.Base* %6, %class.Base** %1, align 8
  %8 = call i8* @_Znwm(i64 16) #5
  %9 = bitcast i8* %8 to %class.Dervive*
  %10 = bitcast %class.Dervive* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %10, i8 0, i64 16, i1 false)
  call void @_ZN7DerviveC2Ev(%class.Dervive* %9) #6
  %11 = bitcast %class.Dervive* %9 to %class.Base*
  store %class.Base* %11, %class.Base** %2, align 8
  %12 = load %class.Base*, %class.Base** %1, align 8
  %13 = bitcast %class.Base* %12 to i32 (%class.Base*, i32)***
  %14 = load i32 (%class.Base*, i32)**, i32 (%class.Base*, i32)*** %13, align 8
  %15 = getelementptr inbounds i32 (%class.Base*, i32)*, i32 (%class.Base*, i32)** %14, i64 0
  %16 = load i32 (%class.Base*, i32)*, i32 (%class.Base*, i32)** %15, align 8
  %17 = call i32 %16(%class.Base* %12, i32 5)
  store i32 %17, i32* %3, align 4
  %18 = load %class.Base*, %class.Base** %2, align 8
  %19 = bitcast %class.Base* %18 to i32 (%class.Base*, i32)***
  %20 = load i32 (%class.Base*, i32)**, i32 (%class.Base*, i32)*** %19, align 8
  %21 = getelementptr inbounds i32 (%class.Base*, i32)*, i32 (%class.Base*, i32)** %20, i64 0
  %22 = load i32 (%class.Base*, i32)*, i32 (%class.Base*, i32)** %21, align 8
  %23 = call i32 %22(%class.Base* %18, i32 6)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %25)
  ret i32 0
}

; Function Attrs: nobuiltin
declare dso_local noalias i8* @_Znwm(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN4BaseC2Ev(%class.Base* %0) unnamed_addr #3 comdat align 2 {
  %2 = alloca %class.Base*, align 8
  store %class.Base* %0, %class.Base** %2, align 8
  %3 = load %class.Base*, %class.Base** %2, align 8
  %4 = bitcast %class.Base* %3 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [3 x i8*] }, { [3 x i8*] }* @_ZTV4Base, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %4, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7DerviveC2Ev(%class.Dervive* %0) unnamed_addr #3 comdat align 2 {
  %2 = alloca %class.Dervive*, align 8
  store %class.Dervive* %0, %class.Dervive** %2, align 8
  %3 = load %class.Dervive*, %class.Dervive** %2, align 8
  %4 = bitcast %class.Dervive* %3 to %class.Base*
  call void @_ZN4BaseC2Ev(%class.Base* %4) #6
  %5 = bitcast %class.Dervive* %3 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [3 x i8*] }, { [3 x i8*] }* @_ZTV7Dervive, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %5, align 8
  ret void
}

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32 @_ZN4Base1gEi(%class.Base* %0, i32 %1) unnamed_addr #3 comdat align 2 {
  %3 = alloca %class.Base*, align 8
  %4 = alloca i32, align 4
  store %class.Base* %0, %class.Base** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %class.Base*, %class.Base** %3, align 8
  ret i32 2
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32 @_ZN7Dervive1gEi(%class.Dervive* %0, i32 %1) unnamed_addr #3 comdat align 2 {
  %3 = alloca %class.Dervive*, align 8
  %4 = alloca i32, align 4
  store %class.Dervive* %0, %class.Dervive** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %class.Dervive*, %class.Dervive** %3, align 8
  ret i32 3
}

attributes #0 = { noinline norecurse optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nobuiltin "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { builtin }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (Red Hat 10.0.1-1.module_el8.3.0+467+cb298d5b)"}
