; ModuleID = 'test3.c'
source_filename = "test3.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

%struct.s1 = type { double, i32 }
%struct.s2 = type { i32, double }

; Function Attrs: noinline nounwind ssp uwtable
define i32 @f1(%struct.s1* %s11) #0 {
entry:
  %s11.addr = alloca %struct.s1*, align 8
  %s12 = alloca %struct.s1, align 8
  store %struct.s1* %s11, %struct.s1** %s11.addr, align 8
  %0 = load %struct.s1*, %struct.s1** %s11.addr, align 8
  %i1 = getelementptr inbounds %struct.s1, %struct.s1* %0, i32 0, i32 1
  %1 = load i32, i32* %i1, align 8
  %i11 = getelementptr inbounds %struct.s1, %struct.s1* %s12, i32 0, i32 1
  store i32 %1, i32* %i11, align 8
  %2 = load %struct.s1*, %struct.s1** %s11.addr, align 8
  %d1 = getelementptr inbounds %struct.s1, %struct.s1* %2, i32 0, i32 0
  %3 = load double, double* %d1, align 8
  %d12 = getelementptr inbounds %struct.s1, %struct.s1* %s12, i32 0, i32 0
  store double %3, double* %d12, align 8
  %i13 = getelementptr inbounds %struct.s1, %struct.s1* %s12, i32 0, i32 1
  %4 = load i32, i32* %i13, align 8
  ret i32 %4
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @kernel(%struct.s1* %s11, %struct.s2* %s21, i32* %s11i1, %struct.s1* %s12, %struct.s1* %s13) #0 {
entry:
  %s11.addr = alloca %struct.s1*, align 8
  %s21.addr = alloca %struct.s2*, align 8
  %s11i1.addr = alloca i32*, align 8
  %s12.addr = alloca %struct.s1*, align 8
  %s13.addr = alloca %struct.s1*, align 8
  store %struct.s1* %s11, %struct.s1** %s11.addr, align 8
  store %struct.s2* %s21, %struct.s2** %s21.addr, align 8
  store i32* %s11i1, i32** %s11i1.addr, align 8
  store %struct.s1* %s12, %struct.s1** %s12.addr, align 8
  store %struct.s1* %s13, %struct.s1** %s13.addr, align 8
  %0 = load %struct.s1*, %struct.s1** %s12.addr, align 8
  %i1 = getelementptr inbounds %struct.s1, %struct.s1* %0, i32 0, i32 1
  %1 = load i32, i32* %i1, align 8
  %2 = load %struct.s1*, %struct.s1** %s13.addr, align 8
  %i11 = getelementptr inbounds %struct.s1, %struct.s1* %2, i32 0, i32 1
  %3 = load i32, i32* %i11, align 8
  %add = add nsw i32 %1, %3
  %4 = load i32*, i32** %s11i1.addr, align 8
  %5 = load i32, i32* %4, align 4
  %add2 = add nsw i32 %add, %5
  %6 = load %struct.s1*, %struct.s1** %s11.addr, align 8
  %i13 = getelementptr inbounds %struct.s1, %struct.s1* %6, i32 0, i32 1
  store i32 %add2, i32* %i13, align 8
  %7 = load %struct.s1*, %struct.s1** %s11.addr, align 8
  %call = call i32 @f1(%struct.s1* %7)
  %8 = load %struct.s1*, %struct.s1** %s12.addr, align 8
  %call4 = call i32 @f1(%struct.s1* %8)
  %9 = load %struct.s1*, %struct.s1** %s11.addr, align 8
  %i15 = getelementptr inbounds %struct.s1, %struct.s1* %9, i32 0, i32 1
  %10 = load i32, i32* %i15, align 8
  ret i32 %10
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %s11 = alloca %struct.s1, align 8
  %s12 = alloca %struct.s1, align 8
  %s21 = alloca %struct.s2, align 8
  store i32 0, i32* %retval, align 4
  %d1 = getelementptr inbounds %struct.s1, %struct.s1* %s11, i32 0, i32 0
  store double 1.230000e+22, double* %d1, align 8
  %i1 = getelementptr inbounds %struct.s1, %struct.s1* %s11, i32 0, i32 1
  store i32 11, i32* %i1, align 8
  %d11 = getelementptr inbounds %struct.s2, %struct.s2* %s21, i32 0, i32 1
  store double 1.230000e+22, double* %d11, align 8
  %i12 = getelementptr inbounds %struct.s2, %struct.s2* %s21, i32 0, i32 0
  store i32 11, i32* %i12, align 8
  %0 = bitcast %struct.s1* %s12 to i8*
  %1 = bitcast %struct.s1* %s11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 16, i32 8, i1 false)
  %i13 = getelementptr inbounds %struct.s1, %struct.s1* %s11, i32 0, i32 1
  %call = call i32 @kernel(%struct.s1* %s11, %struct.s2* %s21, i32* %i13, %struct.s1* %s12, %struct.s1* %s11)
  ret i32 %call
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #1

attributes #0 = { noinline nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
