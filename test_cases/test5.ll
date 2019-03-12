; ModuleID = 'test5.c'
source_filename = "test5.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.s3 = type { i32, %struct.s1 }
%struct.s1 = type { double, i32, i32, i32 }

; Function Attrs: noinline nounwind uwtable
define i32 @kernel(%struct.s3*) #0 {
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
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.s3, align 8
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %4 = getelementptr inbounds %struct.s3, %struct.s3* %2, i32 0, i32 0
  store i32 1, i32* %4, align 8
  %5 = getelementptr inbounds %struct.s3, %struct.s3* %2, i32 0, i32 1
  %6 = getelementptr inbounds %struct.s1, %struct.s1* %5, i32 0, i32 1
  store i32 11, i32* %6, align 8
  %7 = getelementptr inbounds %struct.s3, %struct.s3* %2, i32 0, i32 1
  %8 = getelementptr inbounds %struct.s1, %struct.s1* %7, i32 0, i32 0
  store double 1.230000e+12, double* %8, align 8
  %9 = call i32 @kernel(%struct.s3* %2)
  store i32 %9, i32* %3, align 4
  %10 = getelementptr inbounds %struct.s3, %struct.s3* %2, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  ret i32 %11
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.1-10 (tags/RELEASE_401/final)"}
