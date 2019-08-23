; ModuleID = 'test2.c'
source_filename = "test2.c"
target datalayout = "e-m:o-p:32:32-f64:32:64-f80:128-n8:16:32-S128"
target triple = "i386-apple-macosx10.13.0"

%struct.s1 = type { i64, i32, double, i16, float }

; Function Attrs: noinline nounwind ssp
define i32 @kernel(%struct.s1* %s11) #0 {
entry:
  %s11.addr = alloca %struct.s1*, align 4
  store %struct.s1* %s11, %struct.s1** %s11.addr, align 4
  ret i32 0
}

; Function Attrs: noinline nounwind ssp
define i32 @kernel1([2 x i32]* %a1) #0 {
entry:
  %a1.addr = alloca [2 x i32]*, align 4
  store [2 x i32]* %a1, [2 x i32]** %a1.addr, align 4
  %0 = load [2 x i32]*, [2 x i32]** %a1.addr, align 4
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %0, i32 0
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx, i32 0, i32 0
  %1 = load i32, i32* %arrayidx1, align 4
  %2 = load [2 x i32]*, [2 x i32]** %a1.addr, align 4
  %arrayidx2 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i32 0
  %arrayidx3 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx2, i32 0, i32 1
  %3 = load i32, i32* %arrayidx3, align 4
  %add = add nsw i32 %1, %3
  %4 = load [2 x i32]*, [2 x i32]** %a1.addr, align 4
  %arrayidx4 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i32 1
  %arrayidx5 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx4, i32 0, i32 0
  %5 = load i32, i32* %arrayidx5, align 4
  %add6 = add nsw i32 %add, %5
  %6 = load [2 x i32]*, [2 x i32]** %a1.addr, align 4
  %arrayidx7 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i32 1
  %arrayidx8 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx7, i32 0, i32 1
  %7 = load i32, i32* %arrayidx8, align 4
  %add9 = add nsw i32 %add6, %7
  ret i32 %add9
}

; Function Attrs: noinline nounwind ssp
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a1 = alloca [2 x [2 x i32]], align 4
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
