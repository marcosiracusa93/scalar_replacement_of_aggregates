; ModuleID = 'test2.c'
source_filename = "test2.c"
target datalayout = "e-m:o-p:32:32-f64:32:64-f80:128-n8:16:32-S128"
target triple = "i386-apple-macosx10.13.0"

%struct.s1 = type { double, i32, double, [3 x i32], float }

; Function Attrs: norecurse nounwind readonly ssp
define i32 @f1(%struct.s1* nocapture readonly %s11) local_unnamed_addr #0 {
entry:
  %i1 = getelementptr inbounds %struct.s1, %struct.s1* %s11, i32 0, i32 1
  %0 = load i32, i32* %i1, align 4, !tbaa !2
  ret i32 %0
}

; Function Attrs: norecurse nounwind readonly ssp
define i32 @kernel(%struct.s1* nocapture readonly %s11, i32* nocapture readnone %s11i1) local_unnamed_addr #0 {
entry:
  %d1 = getelementptr inbounds %struct.s1, %struct.s1* %s11, i32 0, i32 0
  %0 = load double, double* %d1, align 4, !tbaa !9
  %conv = fptosi double %0 to i32
  %i1 = getelementptr inbounds %struct.s1, %struct.s1* %s11, i32 0, i32 1
  %1 = load i32, i32* %i1, align 4, !tbaa !2
  %add = add nsw i32 %conv, %1
  %arrayidx = getelementptr inbounds %struct.s1, %struct.s1* %s11, i32 0, i32 3, i32 0
  %2 = load i32, i32* %arrayidx, align 4, !tbaa !10
  %add1 = add nsw i32 %add, %2
  %arrayidx3 = getelementptr inbounds %struct.s1, %struct.s1* %s11, i32 0, i32 3, i32 1
  %3 = load i32, i32* %arrayidx3, align 4, !tbaa !10
  %add4 = add nsw i32 %add1, %3
  %arrayidx6 = getelementptr inbounds %struct.s1, %struct.s1* %s11, i32 0, i32 3, i32 2
  %4 = load i32, i32* %arrayidx6, align 4, !tbaa !10
  %add7 = add nsw i32 %add4, %4
  %d2 = getelementptr inbounds %struct.s1, %struct.s1* %s11, i32 0, i32 2
  %5 = load double, double* %d2, align 4, !tbaa !11
  %conv8 = fptosi double %5 to i32
  %add9 = add nsw i32 %add7, %conv8
  %pf1 = getelementptr inbounds %struct.s1, %struct.s1* %s11, i32 0, i32 4
  %6 = load float, float* %pf1, align 4, !tbaa !12
  %conv10 = fptosi float %6 to i32
  %add11 = add nsw i32 %add9, %conv10
  ret i32 %add11
}

; Function Attrs: nounwind readonly ssp
define i32 @main() local_unnamed_addr #1 {
entry:
  %s11 = alloca %struct.s1, align 8
  %0 = bitcast %struct.s1* %s11 to i8*
  call void @llvm.lifetime.start(i64 36, i8* nonnull %0) #3
  %d1 = getelementptr inbounds %struct.s1, %struct.s1* %s11, i32 0, i32 0
  store double 1.230000e+22, double* %d1, align 8, !tbaa !9
  %i1 = getelementptr inbounds %struct.s1, %struct.s1* %s11, i32 0, i32 1
  store i32 11, i32* %i1, align 8, !tbaa !2
  %arrayidx = getelementptr inbounds %struct.s1, %struct.s1* %s11, i32 0, i32 3, i32 0
  store i32 0, i32* %arrayidx, align 4, !tbaa !10
  %arrayidx2 = getelementptr inbounds %struct.s1, %struct.s1* %s11, i32 0, i32 3, i32 1
  store i32 1, i32* %arrayidx2, align 4, !tbaa !10
  %arrayidx4 = getelementptr inbounds %struct.s1, %struct.s1* %s11, i32 0, i32 3, i32 2
  store i32 2, i32* %arrayidx4, align 4, !tbaa !10
  %d2 = getelementptr inbounds %struct.s1, %struct.s1* %s11, i32 0, i32 2
  store double 3.210000e-18, double* %d2, align 4, !tbaa !11
  %pf1 = getelementptr inbounds %struct.s1, %struct.s1* %s11, i32 0, i32 4
  store float 0x3FF19999A0000000, float* %pf1, align 8, !tbaa !12
  %call = call i32 @kernel(%struct.s1* nonnull %s11, i32* undef)
  call void @llvm.lifetime.end(i64 36, i8* nonnull %0) #3
  ret i32 %call
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

attributes #0 = { norecurse nounwind readonly ssp "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly ssp "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
!2 = !{!3, !7, i64 8}
!3 = !{!"s1", !4, i64 0, !7, i64 8, !4, i64 12, !5, i64 20, !8, i64 32}
!4 = !{!"double", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"int", !5, i64 0}
!8 = !{!"float", !5, i64 0}
!9 = !{!3, !4, i64 0}
!10 = !{!7, !7, i64 0}
!11 = !{!3, !4, i64 12}
!12 = !{!3, !8, i64 32}
