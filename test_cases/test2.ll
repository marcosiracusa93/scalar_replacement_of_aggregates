; ModuleID = 'test2.c'
source_filename = "test2.c"
target datalayout = "e-m:o-p:32:32-f64:32:64-f80:128-n8:16:32-S128"
target triple = "i386-apple-macosx10.13.0"

%struct.s1 = type { [2 x [2 x i32]] }

; Function Attrs: noinline nounwind ssp
define i32 @kernel(%struct.s1* %s11) #0 {
entry:
  %s11.addr = alloca %struct.s1*, align 4
  store %struct.s1* %s11, %struct.s1** %s11.addr, align 4
  %0 = load %struct.s1*, %struct.s1** %s11.addr, align 4
  %ai1 = getelementptr inbounds %struct.s1, %struct.s1* %0, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %ai1, i32 0, i32 0
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx, i32 0, i32 0
  %1 = load i32, i32* %arrayidx1, align 4
  %2 = load %struct.s1*, %struct.s1** %s11.addr, align 4
  %ai12 = getelementptr inbounds %struct.s1, %struct.s1* %2, i32 0, i32 0
  %arrayidx3 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %ai12, i32 0, i32 0
  %arrayidx4 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx3, i32 0, i32 1
  %3 = load i32, i32* %arrayidx4, align 4
  %add = add nsw i32 %1, %3
  %4 = load %struct.s1*, %struct.s1** %s11.addr, align 4
  %ai15 = getelementptr inbounds %struct.s1, %struct.s1* %4, i32 0, i32 0
  %arrayidx6 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %ai15, i32 0, i32 1
  %arrayidx7 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx6, i32 0, i32 0
  %5 = load i32, i32* %arrayidx7, align 4
  %add8 = add nsw i32 %add, %5
  %6 = load %struct.s1*, %struct.s1** %s11.addr, align 4
  %ai19 = getelementptr inbounds %struct.s1, %struct.s1* %6, i32 0, i32 0
  %arrayidx10 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %ai19, i32 0, i32 1
  %arrayidx11 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx10, i32 0, i32 1
  %7 = load i32, i32* %arrayidx11, align 4
  %add12 = add nsw i32 %add8, %7
  ret i32 %add12
}

; Function Attrs: noinline nounwind ssp
define i32 @kernel1(i32* %a1) #0 {
entry:
  %a1.addr = alloca i32*, align 4
  store i32* %a1, i32** %a1.addr, align 4
  %0 = load i32*, i32** %a1.addr, align 4
  %arrayidx = getelementptr inbounds i32, i32* %0, i32 0
  %1 = load i32, i32* %arrayidx, align 4
  %2 = load i32*, i32** %a1.addr, align 4
  %arrayidx1 = getelementptr inbounds i32, i32* %2, i32 1
  %3 = load i32, i32* %arrayidx1, align 4
  %add = add nsw i32 %1, %3
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
