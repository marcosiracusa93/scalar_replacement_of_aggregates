; ModuleID = '../test_cases/test_predicate.ll'
source_filename = "test_predicate.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: noinline norecurse nounwind readnone ssp uwtable
define i32 @main() local_unnamed_addr #0 {
entry:
  br label %for.body.i1

for.body.i1:                                      ; preds = %entry, %for.body.i1
  %a.9.0 = phi i32 [ %add.i.a.9.0, %for.body.i1 ], [ 9, %entry ]
  %i.01.i = phi i32 [ %inc.i5, %for.body.i1 ], [ 0, %entry ]
  %cond = icmp eq i32 %i.01.i, 9
  %add.i.a.9.0 = select i1 %cond, i32 45, i32 %a.9.0
  %inc.i5 = add nuw nsw i32 %i.01.i, 1
  %exitcond.i6 = icmp eq i32 %inc.i5, 10
  br i1 %exitcond.i6, label %store_test.v0.C.c.exit, label %for.body.i1

store_test.v0.C.c.exit:                           ; preds = %for.body.i1
  ret i32 %add.i.a.9.0
}

attributes #0 = { noinline norecurse nounwind readnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
