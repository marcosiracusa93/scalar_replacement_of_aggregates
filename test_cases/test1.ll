; ModuleID = 'test1.cpp'
source_filename = "test1.cpp"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

%struct.s1 = type { double, i32, [3 x i16], float* }

; Function Attrs: noinline nounwind ssp uwtable
define i32 @_Z6kernel2s1(%struct.s1* byval align 8 %s11) #0 {
entry:
  %i1 = getelementptr inbounds %struct.s1, %struct.s1* %s11, i32 0, i32 1
  %0 = load i32, i32* %i1, align 8
  ret i32 %0
}

; Function Attrs: noinline norecurse nounwind ssp uwtable
define i32 @main() #1 {
entry:
  %retval = alloca i32, align 4
  %s11 = alloca %struct.s1, align 8
  %bf1 = alloca float, align 4
  %agg.tmp = alloca %struct.s1, align 8
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
  %0 = bitcast %struct.s1* %agg.tmp to i8*
  %1 = bitcast %struct.s1* %s11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 32, i32 8, i1 false)
  %call = call i32 @_Z6kernel2s1(%struct.s1* byval align 8 %agg.tmp)
  ret i32 %call
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #2

attributes #0 = { noinline nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline norecurse nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
