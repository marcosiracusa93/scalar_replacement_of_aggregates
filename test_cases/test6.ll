; ModuleID = 'test6.c'
source_filename = "test6.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.s3 = type { i32, %struct.s1 }
%struct.s1 = type { double, i32, i32, i32 }

; Function Attrs: noinline nounwind uwtable
define i32 @kernel1(%struct.s3*) #0 {
  %2 = alloca %struct.s3*, align 8
  store %struct.s3* %0, %struct.s3** %2, align 8
  %3 = load %struct.s3*, %struct.s3** %2, align 8
  %4 = getelementptr inbounds %struct.s3, %struct.s3* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = load %struct.s3*, %struct.s3** %2, align 8
  %7 = getelementptr inbounds %struct.s3, %struct.s3* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.s1, %struct.s1* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = add nsw i32 %5, %9
  %11 = load %struct.s3*, %struct.s3** %2, align 8
  %12 = getelementptr inbounds %struct.s3, %struct.s3* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  %13 = load %struct.s3*, %struct.s3** %2, align 8
  %14 = getelementptr inbounds %struct.s3, %struct.s3* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  ret i32 %15
}

; Function Attrs: noinline nounwind uwtable
define i32 @kernel2(%struct.s1*) #0 {
  %2 = alloca %struct.s1*, align 8
  store %struct.s1* %0, %struct.s1** %2, align 8
  %3 = load %struct.s1*, %struct.s1** %2, align 8
  %4 = getelementptr inbounds %struct.s1, %struct.s1* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 8
  %6 = load %struct.s1*, %struct.s1** %2, align 8
  %7 = getelementptr inbounds %struct.s1, %struct.s1* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = add nsw i32 %5, %8
  %10 = load %struct.s1*, %struct.s1** %2, align 8
  %11 = getelementptr inbounds %struct.s1, %struct.s1* %10, i32 0, i32 3
  store i32 %9, i32* %11, align 8
  %12 = load %struct.s1*, %struct.s1** %2, align 8
  %13 = getelementptr inbounds %struct.s1, %struct.s1* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  ret i32 %14
}

; Function Attrs: noinline nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.s3, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.s1, align 8
  %6 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %7 = getelementptr inbounds %struct.s3, %struct.s3* %2, i32 0, i32 0
  store i32 1, i32* %7, align 8
  %8 = getelementptr inbounds %struct.s3, %struct.s3* %2, i32 0, i32 1
  %9 = getelementptr inbounds %struct.s1, %struct.s1* %8, i32 0, i32 1
  store i32 11, i32* %9, align 8
  %10 = getelementptr inbounds %struct.s3, %struct.s3* %2, i32 0, i32 1
  %11 = getelementptr inbounds %struct.s1, %struct.s1* %10, i32 0, i32 2
  store i32 12, i32* %11, align 4
  %12 = getelementptr inbounds %struct.s3, %struct.s3* %2, i32 0, i32 1
  %13 = getelementptr inbounds %struct.s1, %struct.s1* %12, i32 0, i32 0
  store double 1.230000e+12, double* %13, align 8
  %14 = call i32 @kernel1(%struct.s3* %2)
  store i32 %14, i32* %3, align 4
  %15 = getelementptr inbounds %struct.s3, %struct.s3* %2, i32 0, i32 1
  %16 = call i32 @kernel2(%struct.s1* %15)
  store i32 %16, i32* %4, align 4
  %17 = getelementptr inbounds %struct.s1, %struct.s1* %5, i32 0, i32 0
  store double 3.000000e+00, double* %17, align 8
  %18 = getelementptr inbounds %struct.s1, %struct.s1* %5, i32 0, i32 1
  store i32 1, i32* %18, align 8
  %19 = getelementptr inbounds %struct.s1, %struct.s1* %5, i32 0, i32 2
  store i32 2, i32* %19, align 4
  %20 = call i32 @kernel2(%struct.s1* %5)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %3, align 4
  %23 = add nsw i32 %21, %22
  %24 = load i32, i32* %4, align 4
  %25 = add nsw i32 %23, %24
  %26 = getelementptr inbounds %struct.s3, %struct.s3* %2, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = add nsw i32 %25, %27
  %29 = getelementptr inbounds %struct.s1, %struct.s1* %5, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = add nsw i32 %28, %30
  ret i32 %31
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.1-10 (tags/RELEASE_401/final)"}
