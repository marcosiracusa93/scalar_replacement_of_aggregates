; ModuleID = 'test2.c'
source_filename = "test2.c"
target datalayout = "e-m:o-p:32:32-f64:32:64-f80:128-n8:16:32-S128"
target triple = "i386-apple-macosx10.13.0"

%struct.s1 = type { [2 x i32] }

@main.a1 = private unnamed_addr constant [2 x i32] [i32 0, i32 1], align 4

; Function Attrs: noinline nounwind ssp
define i32 @kernel(%struct.s1* %s11) #0 {
entry:
  %s11.addr = alloca %struct.s1*, align 4
  store %struct.s1* %s11, %struct.s1** %s11.addr, align 4
  %0 = load %struct.s1*, %struct.s1** %s11.addr, align 4
  %ai1 = getelementptr inbounds %struct.s1, %struct.s1* %0, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %ai1, i32 0, i32 0
  %1 = load i32, i32* %arrayidx, align 4
  %2 = load %struct.s1*, %struct.s1** %s11.addr, align 4
  %ai11 = getelementptr inbounds %struct.s1, %struct.s1* %2, i32 0, i32 0
  %arrayidx2 = getelementptr inbounds [2 x i32], [2 x i32]* %ai11, i32 0, i32 1
  %3 = load i32, i32* %arrayidx2, align 4
  %add = add nsw i32 %1, %3
  ret i32 %add
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
  %a1 = alloca [2 x i32], align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast [2 x i32]* %a1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %0, i8* bitcast ([2 x i32]* @main.a1 to i8*), i32 8, i32 4, i1 false)
  %call = call i32 @kernel(%struct.s1* %s11)
  ret i32 %call
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #1

attributes #0 = { noinline nounwind ssp "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
