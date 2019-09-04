; ModuleID = 'test2.c'
source_filename = "test2.c"
target datalayout = "e-m:o-p:32:32-f64:32:64-f80:128-n8:16:32-S128"
target triple = "i386-apple-macosx10.13.0"

%struct.s1 = type { i64, i32, double, i16, [2 x [2 x i32]], float }

; Function Attrs: noinline nounwind ssp
define i32 @kernel3(i32* %i1, i32 %idx) #0 {
entry:
  %i1.addr = alloca i32*, align 4
  %idx.addr = alloca i32, align 4
  store i32* %i1, i32** %i1.addr, align 4
  store i32 %idx, i32* %idx.addr, align 4
  %0 = load i32*, i32** %i1.addr, align 4
  %1 = load i32, i32* %idx.addr, align 4
  %arrayidx = getelementptr inbounds i32, i32* %0, i32 %1
  %2 = load i32, i32* %arrayidx, align 4
  ret i32 %2
}

; Function Attrs: noinline nounwind ssp
define i32 @kernel2(i32* %i1) #0 {
entry:
  %i1.addr = alloca i32*, align 4
  store i32* %i1, i32** %i1.addr, align 4
  %0 = load i32*, i32** %i1.addr, align 4
  %1 = load i32, i32* %0, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind ssp
define i32 @kernel(%struct.s1* %s11, i32 %i) #0 {
entry:
  %s11.addr = alloca %struct.s1*, align 4
  %i.addr = alloca i32, align 4
  store %struct.s1* %s11, %struct.s1** %s11.addr, align 4
  store i32 %i, i32* %i.addr, align 4
  %0 = load %struct.s1*, %struct.s1** %s11.addr, align 4
  %i1 = getelementptr inbounds %struct.s1, %struct.s1* %0, i32 0, i32 1
  %call = call i32 @kernel2(i32* %i1)
  %1 = load %struct.s1*, %struct.s1** %s11.addr, align 4
  %i11 = getelementptr inbounds %struct.s1, %struct.s1* %1, i32 0, i32 1
  %call2 = call i32 @kernel2(i32* %i11)
  %add = add nsw i32 %call, %call2
  %2 = load i32, i32* %i.addr, align 4
  %add3 = add nsw i32 %add, %2
  ret i32 %add3
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
define i32 @f1(i32* %v, i32 %i1) #0 {
entry:
  %v.addr = alloca i32*, align 4
  %i1.addr = alloca i32, align 4
  store i32* %v, i32** %v.addr, align 4
  store i32 %i1, i32* %i1.addr, align 4
  %0 = load i32*, i32** %v.addr, align 4
  %arrayidx = getelementptr inbounds i32, i32* %0, i32 0
  %1 = load i32, i32* %arrayidx, align 4
  %2 = load i32, i32* %i1.addr, align 4
  %add = add nsw i32 %1, %2
  ret i32 %add
}

; Function Attrs: noinline nounwind ssp
define i32 @f2(i32* %v, i32 %i1, i32 %i2) #0 {
entry:
  %v.addr = alloca i32*, align 4
  %i1.addr = alloca i32, align 4
  %i2.addr = alloca i32, align 4
  store i32* %v, i32** %v.addr, align 4
  store i32 %i1, i32* %i1.addr, align 4
  store i32 %i2, i32* %i2.addr, align 4
  %0 = load i32*, i32** %v.addr, align 4
  %1 = load i32, i32* %i1.addr, align 4
  %call = call i32 @f1(i32* %0, i32 %1)
  %2 = load i32, i32* %i1.addr, align 4
  %add = add nsw i32 %call, %2
  %3 = load i32, i32* %i2.addr, align 4
  %add1 = add nsw i32 %add, %3
  ret i32 %add1
}

; Function Attrs: noinline nounwind ssp
define i32 @f3(i32* %v, i32 %i1, i32 %i2, i32 %i3) #0 {
entry:
  %v.addr = alloca i32*, align 4
  %i1.addr = alloca i32, align 4
  %i2.addr = alloca i32, align 4
  %i3.addr = alloca i32, align 4
  store i32* %v, i32** %v.addr, align 4
  store i32 %i1, i32* %i1.addr, align 4
  store i32 %i2, i32* %i2.addr, align 4
  store i32 %i3, i32* %i3.addr, align 4
  %0 = load i32*, i32** %v.addr, align 4
  %1 = load i32, i32* %i1.addr, align 4
  %2 = load i32, i32* %i2.addr, align 4
  %call = call i32 @f2(i32* %0, i32 %1, i32 %2)
  %3 = load i32*, i32** %v.addr, align 4
  %4 = load i32, i32* %i1.addr, align 4
  %call1 = call i32 @f1(i32* %3, i32 %4)
  %add = add nsw i32 %call, %call1
  %5 = load i32, i32* %i1.addr, align 4
  %add2 = add nsw i32 %add, %5
  %6 = load i32, i32* %i2.addr, align 4
  %add3 = add nsw i32 %add2, %6
  %7 = load i32, i32* %i3.addr, align 4
  %add4 = add nsw i32 %add3, %7
  ret i32 %add4
}

; Function Attrs: noinline nounwind ssp
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a1 = alloca [2 x [2 x i32]], align 4
  %s11 = alloca %struct.s1, align 4
  %k = alloca i32, align 4
  %a2 = alloca [2 x i32], align 4
  %a3 = alloca [3 x i32], align 4
  %a4 = alloca [100 x i32], align 4
  store i32 0, i32* %retval, align 4
  %arrayidx = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %a1, i32 0, i32 0
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx, i32 0, i32 0
  store i32 0, i32* %arrayidx1, align 4
  %arrayidx2 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %a1, i32 0, i32 0
  %arrayidx3 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx2, i32 0, i32 1
  store i32 1, i32* %arrayidx3, align 4
  %arrayidx4 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %a1, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx4, i32 0, i32 0
  store i32 2, i32* %arrayidx5, align 4
  %arrayidx6 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %a1, i32 0, i32 1
  %arrayidx7 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx6, i32 0, i32 1
  store i32 3, i32* %arrayidx7, align 4
  %d1 = getelementptr inbounds %struct.s1, %struct.s1* %s11, i32 0, i32 0
  store i64 123, i64* %d1, align 4
  %i1 = getelementptr inbounds %struct.s1, %struct.s1* %s11, i32 0, i32 1
  store i32 11, i32* %i1, align 4
  %d2 = getelementptr inbounds %struct.s1, %struct.s1* %s11, i32 0, i32 2
  store double 3.210000e-18, double* %d2, align 4
  %s1 = getelementptr inbounds %struct.s1, %struct.s1* %s11, i32 0, i32 3
  store i16 2, i16* %s1, align 4
  %ai1 = getelementptr inbounds %struct.s1, %struct.s1* %s11, i32 0, i32 4
  %arrayidx8 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %ai1, i32 0, i32 0
  %arrayidx9 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx8, i32 0, i32 0
  store i32 0, i32* %arrayidx9, align 4
  %ai110 = getelementptr inbounds %struct.s1, %struct.s1* %s11, i32 0, i32 4
  %arrayidx11 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %ai110, i32 0, i32 0
  %arrayidx12 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx11, i32 0, i32 1
  store i32 1, i32* %arrayidx12, align 4
  %ai113 = getelementptr inbounds %struct.s1, %struct.s1* %s11, i32 0, i32 4
  %arrayidx14 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %ai113, i32 0, i32 1
  %arrayidx15 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx14, i32 0, i32 0
  store i32 2, i32* %arrayidx15, align 4
  %ai116 = getelementptr inbounds %struct.s1, %struct.s1* %s11, i32 0, i32 4
  %arrayidx17 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %ai116, i32 0, i32 1
  %arrayidx18 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx17, i32 0, i32 1
  store i32 3, i32* %arrayidx18, align 4
  %pf1 = getelementptr inbounds %struct.s1, %struct.s1* %s11, i32 0, i32 5
  store float 0x3FF19999A0000000, float* %pf1, align 4
  %call = call i32 @kernel(%struct.s1* %s11, i32 1)
  %call19 = call i32 @kernel(%struct.s1* %s11, i32 2)
  %add = add nsw i32 %call, %call19
  ret i32 %add
}

attributes #0 = { noinline nounwind ssp "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
