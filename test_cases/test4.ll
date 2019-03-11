; ModuleID = 'test4.c'
source_filename = "test4.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

%struct.s3 = type { i32, %struct.s1 }
%struct.s1 = type { double, i32 }

; Function Attrs: noinline nounwind ssp uwtable
define i32 @kernel(%struct.s3* %s31) #0 {
entry:
  %s31.addr = alloca %struct.s3*, align 8
  store %struct.s3* %s31, %struct.s3** %s31.addr, align 8
  %0 = load %struct.s3*, %struct.s3** %s31.addr, align 8
  %i1 = getelementptr inbounds %struct.s3, %struct.s3* %0, i32 0, i32 0
  %1 = load i32, i32* %i1, align 8
  %2 = load %struct.s3*, %struct.s3** %s31.addr, align 8
  %s11 = getelementptr inbounds %struct.s3, %struct.s3* %2, i32 0, i32 1
  %i11 = getelementptr inbounds %struct.s1, %struct.s1* %s11, i32 0, i32 1
  %3 = load i32, i32* %i11, align 8
  %add = add nsw i32 %1, %3
  %4 = load %struct.s3*, %struct.s3** %s31.addr, align 8
  %i12 = getelementptr inbounds %struct.s3, %struct.s3* %4, i32 0, i32 0
  store i32 %add, i32* %i12, align 8
  %5 = load %struct.s3*, %struct.s3** %s31.addr, align 8
  %i13 = getelementptr inbounds %struct.s3, %struct.s3* %5, i32 0, i32 0
  %6 = load i32, i32* %i13, align 8
  ret i32 %6
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %s31 = alloca %struct.s3, align 8
  store i32 0, i32* %retval, align 4
  %i1 = getelementptr inbounds %struct.s3, %struct.s3* %s31, i32 0, i32 0
  store i32 1, i32* %i1, align 8
  %s11 = getelementptr inbounds %struct.s3, %struct.s3* %s31, i32 0, i32 1
  %i11 = getelementptr inbounds %struct.s1, %struct.s1* %s11, i32 0, i32 1
  store i32 11, i32* %i11, align 8
  %s112 = getelementptr inbounds %struct.s3, %struct.s3* %s31, i32 0, i32 1
  %d1 = getelementptr inbounds %struct.s1, %struct.s1* %s112, i32 0, i32 0
  store double 1.230000e+12, double* %d1, align 8
  %call = call i32 @kernel(%struct.s3* %s31)
  ret i32 %call
}

attributes #0 = { noinline nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
