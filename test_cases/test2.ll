; ModuleID = 'test2.c'
source_filename = "test2.c"
target datalayout = "e-m:o-p:32:32-f64:32:64-f80:128-n8:16:32-S128"
target triple = "i386-apple-macosx10.13.0"

%struct.s1 = type { i16, float }

; Function Attrs: noinline nounwind ssp
define i32 @kernel(%struct.s1* %s11) #0 {
entry:
  %s11.addr = alloca %struct.s1*, align 4
  store %struct.s1* %s11, %struct.s1** %s11.addr, align 4
  %0 = load %struct.s1*, %struct.s1** %s11.addr, align 4
  %s1 = getelementptr inbounds %struct.s1, %struct.s1* %0, i32 0, i32 0
  %1 = load i16, i16* %s1, align 4
  %conv = sext i16 %1 to i32
  %2 = load %struct.s1*, %struct.s1** %s11.addr, align 4
  %pf1 = getelementptr inbounds %struct.s1, %struct.s1* %2, i32 0, i32 1
  %3 = load float, float* %pf1, align 4
  %conv1 = fptosi float %3 to i32
  %add = add nsw i32 %conv, %conv1
  ret i32 %add
}

; Function Attrs: noinline nounwind ssp
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %s11 = alloca %struct.s1, align 4
  store i32 0, i32* %retval, align 4
  %call = call i32 @kernel(%struct.s1* %s11)
  ret i32 %call
}

attributes #0 = { noinline nounwind ssp "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
