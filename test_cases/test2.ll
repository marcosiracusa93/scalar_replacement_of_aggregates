; ModuleID = 'test2.c'
source_filename = "test2.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

%struct.s1 = type { double, i32, [3 x i16], float* }

; Function Attrs: noinline nounwind ssp uwtable
define i32 @kernel(%struct.s1* %s11) #0 {
entry:
  %s11.addr = alloca %struct.s1*, align 8
  store %struct.s1* %s11, %struct.s1** %s11.addr, align 8
  %0 = load %struct.s1*, %struct.s1** %s11.addr, align 8
  %i1 = getelementptr inbounds %struct.s1, %struct.s1* %0, i32 0, i32 1
  %1 = load i32, i32* %i1, align 8
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* %i1, align 8
  %2 = load %struct.s1*, %struct.s1** %s11.addr, align 8
  %call = call i32 @f1(%struct.s1* %2)
  %3 = load %struct.s1*, %struct.s1** %s11.addr, align 8
  %i11 = getelementptr inbounds %struct.s1, %struct.s1* %3, i32 0, i32 1
  %4 = load i32, i32* %i11, align 8
  ret i32 %4
}

declare i32 @f1(%struct.s1*) #1

; Function Attrs: noinline nounwind ssp uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %s11 = alloca %struct.s1, align 8
  %bf1 = alloca float, align 4
  store i32 0, i32* %retval, align 4
  %d1 = getelementptr inbounds %struct.s1, %struct.s1* %s11, i32 0, i32 0
  store double 1.230000e+22, double* %d1, align 8
  %i1 = getelementptr inbounds %struct.s1, %struct.s1* %s11, i32 0, i32 1
  store i32 11, i32* %i1, align 8
  %as1 = getelementptr inbounds %struct.s1, %struct.s1* %s11, i32 0, i32 2
  %arrayidx = getelementptr inbounds [3 x i16], [3 x i16]* %as1, i64 0, i64 0
  store i16 0, i16* %arrayidx, align 4
  %as11 = getelementptr inbounds %struct.s1, %struct.s1* %s11, i32 0, i32 2
  %arrayidx2 = getelementptr inbounds [3 x i16], [3 x i16]* %as11, i64 0, i64 1
  store i16 1, i16* %arrayidx2, align 2
  %as13 = getelementptr inbounds %struct.s1, %struct.s1* %s11, i32 0, i32 2
  %arrayidx4 = getelementptr inbounds [3 x i16], [3 x i16]* %as13, i64 0, i64 2
  store i16 2, i16* %arrayidx4, align 4
  store float 0x3FF19999A0000000, float* %bf1, align 4
  %pf1 = getelementptr inbounds %struct.s1, %struct.s1* %s11, i32 0, i32 3
  store float* %bf1, float** %pf1, align 8
  %call = call i32 @kernel(%struct.s1* %s11)
  ret i32 %call
}

attributes #0 = { noinline nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
