; ModuleID = './../tests/test_cases/mips.ll'
source_filename = "mips.c"
target datalayout = "e-m:o-p:32:32-f64:32:64-f80:128-n8:16:32-S128"
target triple = "i386-apple-macosx10.13.0"

@main_result = common local_unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind ssp
define i32 @main() local_unnamed_addr #0 {
entry:
  %reg = alloca [32 x i32], align 4
  %reg37 = bitcast [32 x i32]* %reg to i8*
  %dmem = alloca [64 x i32], align 4
  store i32 0, i32* @main_result, align 4
  call void @llvm.memset.p0i8.i32(i8* nonnull %reg37, i8 0, i32 128, i32 4, i1 false)
  %arrayidx1 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i32 0, i32 29
  store i32 2147479548, i32* %arrayidx1, align 4
  br label %for.body4

for.body4:                                        ; preds = %for.body4.backedge, %entry
  %i.130 = phi i32 [ 0, %entry ], [ %i.130.be, %for.body4.backedge ]
  switch i32 %i.130, label %__non_const_wrapper__.exit [
    i32 0, label %__non_const_wrapper__.exit.thread
    i32 1, label %__non_const_wrapper__.exit.thread121
    i32 2, label %__non_const_wrapper__.exit.thread125
    i32 3, label %__non_const_wrapper__.exit.thread129
    i32 4, label %__non_const_wrapper__.exit.thread133
    i32 5, label %for.body4.backedge.sink.split
    i32 6, label %__non_const_wrapper__.exit.thread141
  ]

__non_const_wrapper__.exit.thread141:             ; preds = %for.body4
  br label %for.body4.backedge.sink.split

__non_const_wrapper__.exit.thread133:             ; preds = %for.body4
  br label %for.body4.backedge.sink.split

__non_const_wrapper__.exit.thread129:             ; preds = %for.body4
  br label %for.body4.backedge.sink.split

__non_const_wrapper__.exit.thread125:             ; preds = %for.body4
  br label %for.body4.backedge.sink.split

__non_const_wrapper__.exit.thread121:             ; preds = %for.body4
  br label %for.body4.backedge.sink.split

__non_const_wrapper__.exit.thread:                ; preds = %for.body4
  br label %for.body4.backedge.sink.split

__non_const_wrapper__.exit:                       ; preds = %for.body4
  %arrayidx6 = getelementptr inbounds [64 x i32], [64 x i32]* %dmem, i32 0, i32 %i.130
  store i32 11, i32* %arrayidx6, align 4
  %inc8 = add nuw nsw i32 %i.130, 1
  %exitcond35 = icmp eq i32 %inc8, 8
  br i1 %exitcond35, label %for.body12.preheader, label %for.body4.backedge

for.body4.backedge.sink.split:                    ; preds = %for.body4, %__non_const_wrapper__.exit.thread141, %__non_const_wrapper__.exit.thread133, %__non_const_wrapper__.exit.thread129, %__non_const_wrapper__.exit.thread125, %__non_const_wrapper__.exit.thread121, %__non_const_wrapper__.exit.thread
  %.sink = phi i32 [ 22, %__non_const_wrapper__.exit.thread ], [ 5, %__non_const_wrapper__.exit.thread121 ], [ -9, %__non_const_wrapper__.exit.thread125 ], [ 3, %__non_const_wrapper__.exit.thread129 ], [ -17, %__non_const_wrapper__.exit.thread133 ], [ 0, %__non_const_wrapper__.exit.thread141 ], [ 38, %for.body4 ]
  %i.130.be.ph = phi i32 [ 1, %__non_const_wrapper__.exit.thread ], [ 2, %__non_const_wrapper__.exit.thread121 ], [ 3, %__non_const_wrapper__.exit.thread125 ], [ 4, %__non_const_wrapper__.exit.thread129 ], [ 5, %__non_const_wrapper__.exit.thread133 ], [ 7, %__non_const_wrapper__.exit.thread141 ], [ 6, %for.body4 ]
  %arrayidx6118 = getelementptr inbounds [64 x i32], [64 x i32]* %dmem, i32 0, i32 %i.130
  store i32 %.sink, i32* %arrayidx6118, align 4
  br label %for.body4.backedge

for.body4.backedge:                               ; preds = %for.body4.backedge.sink.split, %__non_const_wrapper__.exit
  %i.130.be = phi i32 [ %inc8, %__non_const_wrapper__.exit ], [ %i.130.be.ph, %for.body4.backedge.sink.split ]
  br label %for.body4

for.body12.preheader:                             ; preds = %__non_const_wrapper__.exit
  %scevgep = getelementptr inbounds [64 x i32], [64 x i32]* %dmem, i32 0, i32 8
  %scevgep34 = bitcast i32* %scevgep to i8*
  call void @llvm.memset.p0i8.i32(i8* %scevgep34, i8 0, i32 224, i32 4, i1 false)
  %arrayidx202 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i32 0, i32 0
  %arrayidx108 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i32 0, i32 31
  br label %do.body

do.body:                                          ; preds = %for.body12.preheader, %sw.epilog201
  %pc.0 = phi i32 [ %pc.6, %sw.epilog201 ], [ 4194304, %for.body12.preheader ]
  %Lo.0 = phi i32 [ %Lo.2, %sw.epilog201 ], [ 0, %for.body12.preheader ]
  %Hi.0 = phi i32 [ %Hi.2, %sw.epilog201 ], [ 0, %for.body12.preheader ]
  %n_inst.0 = phi i32 [ %add203, %sw.epilog201 ], [ 0, %for.body12.preheader ]
  %and = lshr i32 %pc.0, 2
  %trunc117 = trunc i32 %and to i6
  switch i6 %trunc117, label %csroa.if.end214.i [
    i6 0, label %__non_const_wrapper__.1.exit
    i6 1, label %csroa.if.end4.i77
    i6 2, label %csroa.if.end9.i75
    i6 3, label %csroa.if.end14.i73
    i6 4, label %csroa.if.end19.i71
    i6 5, label %csroa.if.end24.i69
    i6 6, label %csroa.if.end29.i67
    i6 7, label %csroa.if.end34.i65
    i6 8, label %csroa.if.end39.i
    i6 9, label %csroa.if.end44.i
    i6 10, label %csroa.if.end49.i
    i6 11, label %csroa.if.end54.i
    i6 12, label %csroa.if.end59.i
    i6 13, label %csroa.if.end64.i
    i6 14, label %csroa.if.end69.i
    i6 15, label %csroa.if.end74.i
    i6 16, label %csroa.if.end79.i
    i6 17, label %csroa.if.end84.i
    i6 18, label %csroa.if.end89.i
    i6 19, label %csroa.if.end94.i
    i6 20, label %csroa.if.end99.i
    i6 21, label %csroa.if.end104.i
    i6 22, label %csroa.if.end109.i
    i6 23, label %csroa.if.end114.i
    i6 24, label %csroa.if.end119.i
    i6 25, label %csroa.if.end124.i
    i6 26, label %csroa.if.end129.i
    i6 27, label %csroa.if.end134.i
    i6 28, label %csroa.if.end139.i
    i6 29, label %csroa.if.end144.i
    i6 30, label %csroa.if.end149.i
    i6 31, label %csroa.if.end154.i
    i6 -32, label %csroa.if.end159.i
    i6 -31, label %csroa.if.end164.i
    i6 -30, label %csroa.if.end169.i
    i6 -29, label %csroa.if.end174.i
    i6 -28, label %csroa.if.end179.i
    i6 -27, label %csroa.if.end184.i
    i6 -26, label %csroa.if.end189.i
    i6 -25, label %csroa.if.end194.i
    i6 -24, label %csroa.if.end199.i
    i6 -23, label %csroa.if.end204.i
    i6 -22, label %csroa.if.end209.i
  ]

csroa.if.end214.i:                                ; preds = %do.body
  br label %csroa.if.end209.i

csroa.if.end209.i:                                ; preds = %do.body, %csroa.if.end214.i
  %.phi210.i = phi i32 [ 65011720, %csroa.if.end214.i ], [ 666697740, %do.body ]
  br label %csroa.if.end204.i

csroa.if.end204.i:                                ; preds = %do.body, %csroa.if.end209.i
  %.phi205.i = phi i32 [ %.phi210.i, %csroa.if.end209.i ], [ -1884291072, %do.body ]
  br label %csroa.if.end199.i

csroa.if.end199.i:                                ; preds = %do.body, %csroa.if.end204.i
  %.phi200.i = phi i32 [ %.phi205.i, %csroa.if.end204.i ], [ -1884225532, %do.body ]
  br label %csroa.if.end194.i

csroa.if.end194.i:                                ; preds = %do.body, %csroa.if.end199.i
  %.phi195.i = phi i32 [ %.phi200.i, %csroa.if.end199.i ], [ -1883308024, %do.body ]
  br label %csroa.if.end189.i

csroa.if.end189.i:                                ; preds = %do.body, %csroa.if.end194.i
  %.phi190.i = phi i32 [ %.phi195.i, %csroa.if.end194.i ], [ 135266331, %do.body ]
  br label %csroa.if.end184.i

csroa.if.end184.i:                                ; preds = %do.body, %csroa.if.end189.i
  %.phi185.i = phi i32 [ %.phi190.i, %csroa.if.end189.i ], [ 638582785, %do.body ]
  br label %csroa.if.end179.i

csroa.if.end179.i:                                ; preds = %do.body, %csroa.if.end184.i
  %.phi180.i = phi i32 [ %.phi185.i, %csroa.if.end184.i ], [ 135266334, %do.body ]
  br label %csroa.if.end174.i

csroa.if.end174.i:                                ; preds = %do.body, %csroa.if.end179.i
  %.phi175.i = phi i32 [ %.phi180.i, %csroa.if.end179.i ], [ 640745473, %do.body ]
  br label %csroa.if.end169.i

csroa.if.end169.i:                                ; preds = %do.body, %csroa.if.end174.i
  %.phi170.i = phi i32 [ %.phi175.i, %csroa.if.end174.i ], [ 202375177, %do.body ]
  br label %csroa.if.end164.i

csroa.if.end164.i:                                ; preds = %do.body, %csroa.if.end169.i
  %.phi165.i = phi i32 [ %.phi170.i, %csroa.if.end169.i ], [ 639959040, %do.body ]
  br label %csroa.if.end159.i

csroa.if.end159.i:                                ; preds = %do.body, %csroa.if.end164.i
  %.phi160.i = phi i32 [ %.phi165.i, %csroa.if.end164.i ], [ 637796352, %do.body ]
  br label %csroa.if.end154.i

csroa.if.end154.i:                                ; preds = %do.body, %csroa.if.end159.i
  %.phi155.i = phi i32 [ %.phi160.i, %csroa.if.end159.i ], [ 285212678, %do.body ]
  br label %csroa.if.end149.i

csroa.if.end149.i:                                ; preds = %do.body, %csroa.if.end154.i
  %.phi150.i = phi i32 [ %.phi155.i, %csroa.if.end154.i ], [ 707264520, %do.body ]
  br label %csroa.if.end144.i

csroa.if.end144.i:                                ; preds = %do.body, %csroa.if.end149.i
  %.phi145.i = phi i32 [ %.phi150.i, %csroa.if.end149.i ], [ 638648321, %do.body ]
  br label %csroa.if.end139.i

csroa.if.end139.i:                                ; preds = %do.body, %csroa.if.end144.i
  %.phi140.i = phi i32 [ %.phi145.i, %csroa.if.end144.i ], [ 285212683, %do.body ]
  br label %csroa.if.end134.i

csroa.if.end134.i:                                ; preds = %do.body, %csroa.if.end139.i
  %.phi135.i = phi i32 [ %.phi140.i, %csroa.if.end139.i ], [ 705167368, %do.body ]
  br label %csroa.if.end129.i

csroa.if.end129.i:                                ; preds = %do.body, %csroa.if.end134.i
  %.phi130.i = phi i32 [ %.phi135.i, %csroa.if.end134.i ], [ 605028352, %do.body ]
  br label %csroa.if.end124.i

csroa.if.end124.i:                                ; preds = %do.body, %csroa.if.end129.i
  %.phi125.i = phi i32 [ %.phi130.i, %csroa.if.end129.i ], [ -1347420160, %do.body ]
  br label %csroa.if.end119.i

csroa.if.end119.i:                                ; preds = %do.body, %csroa.if.end124.i
  %.phi120.i = phi i32 [ %.phi125.i, %csroa.if.end124.i ], [ -1347354620, %do.body ]
  br label %csroa.if.end114.i

csroa.if.end114.i:                                ; preds = %do.body, %csroa.if.end119.i
  %.phi115.i = phi i32 [ %.phi120.i, %csroa.if.end119.i ], [ -1346437112, %do.body ]
  br label %csroa.if.end109.i

csroa.if.end109.i:                                ; preds = %do.body, %csroa.if.end114.i
  %.phi110.i = phi i32 [ %.phi115.i, %csroa.if.end114.i ], [ 666763252, %do.body ]
  br label %csroa.if.end104.i

csroa.if.end104.i:                                ; preds = %do.body, %csroa.if.end109.i
  %.phi105.i = phi i32 [ %.phi110.i, %csroa.if.end109.i ], [ 65011720, %do.body ]
  br label %csroa.if.end99.i

csroa.if.end99.i:                                 ; preds = %do.body, %csroa.if.end104.i
  %.phi100.i = phi i32 [ %.phi105.i, %csroa.if.end104.i ], [ -1385562112, %do.body ]
  br label %csroa.if.end94.i

csroa.if.end94.i:                                 ; preds = %do.body, %csroa.if.end99.i
  %.phi95.i = phi i32 [ %.phi100.i, %csroa.if.end99.i ], [ -1389625344, %do.body ]
  br label %csroa.if.end89.i

csroa.if.end89.i:                                 ; preds = %do.body, %csroa.if.end94.i
  %.phi90.i = phi i32 [ %.phi95.i, %csroa.if.end94.i ], [ 295698435, %do.body ]
  br label %csroa.if.end84.i

csroa.if.end84.i:                                 ; preds = %do.body, %csroa.if.end89.i
  %.phi85.i = phi i32 [ %.phi90.i, %csroa.if.end89.i ], [ 25847850, %do.body ]
  br label %csroa.if.end79.i

csroa.if.end79.i:                                 ; preds = %do.body, %csroa.if.end84.i
  %.phi80.i = phi i32 [ %.phi85.i, %csroa.if.end84.i ], [ -1922301952, %do.body ]
  br label %csroa.if.end74.i

csroa.if.end74.i:                                 ; preds = %do.body, %csroa.if.end79.i
  %.phi75.i = phi i32 [ %.phi80.i, %csroa.if.end79.i ], [ 17520673, %do.body ]
  br label %csroa.if.end69.i

csroa.if.end69.i:                                 ; preds = %do.body, %csroa.if.end74.i
  %.phi70.i = phi i32 [ %.phi75.i, %csroa.if.end74.i ], [ 350336, %do.body ]
  br label %csroa.if.end64.i

csroa.if.end64.i:                                 ; preds = %do.body, %csroa.if.end69.i
  %.phi65.i = phi i32 [ %.phi70.i, %csroa.if.end69.i ], [ -1926627328, %do.body ]
  br label %csroa.if.end59.i

csroa.if.end59.i:                                 ; preds = %do.body, %csroa.if.end64.i
  %.phi60.i = phi i32 [ %.phi65.i, %csroa.if.end64.i ], [ 17385505, %do.body ]
  br label %csroa.if.end54.i

csroa.if.end54.i:                                 ; preds = %do.body, %csroa.if.end59.i
  %.phi55.i = phi i32 [ %.phi60.i, %csroa.if.end59.i ], [ 280704, %do.body ]
  br label %csroa.if.end49.i

csroa.if.end49.i:                                 ; preds = %do.body, %csroa.if.end54.i
  %.phi50.i = phi i32 [ %.phi55.i, %csroa.if.end54.i ], [ 875036672, %do.body ]
  br label %csroa.if.end44.i

csroa.if.end44.i:                                 ; preds = %do.body, %csroa.if.end49.i
  %.phi45.i = phi i32 [ %.phi50.i, %csroa.if.end49.i ], [ 1006702593, %do.body ]
  br label %csroa.if.end39.i

csroa.if.end39.i:                                 ; preds = %do.body, %csroa.if.end44.i
  %.phi40.i = phi i32 [ %.phi45.i, %csroa.if.end44.i ], [ 12, %do.body ]
  br label %csroa.if.end34.i65

csroa.if.end34.i65:                               ; preds = %do.body, %csroa.if.end39.i
  %.phi35.i = phi i32 [ %.phi40.i, %csroa.if.end39.i ], [ 872546314, %do.body ]
  br label %csroa.if.end29.i67

csroa.if.end29.i67:                               ; preds = %do.body, %csroa.if.end34.i65
  %.phi30.i66 = phi i32 [ %.phi35.i, %csroa.if.end34.i65 ], [ 0, %do.body ]
  br label %csroa.if.end24.i69

csroa.if.end24.i69:                               ; preds = %do.body, %csroa.if.end29.i67
  %.phi25.i68 = phi i32 [ %.phi30.i66, %csroa.if.end29.i67 ], [ 202375190, %do.body ]
  br label %csroa.if.end19.i71

csroa.if.end19.i71:                               ; preds = %do.body, %csroa.if.end24.i69
  %.phi20.i70 = phi i32 [ %.phi25.i68, %csroa.if.end24.i69 ], [ 12726305, %do.body ]
  br label %csroa.if.end14.i73

csroa.if.end14.i73:                               ; preds = %do.body, %csroa.if.end19.i71
  %.phi15.i72 = phi i32 [ %.phi20.i70, %csroa.if.end19.i71 ], [ 266368, %do.body ]
  br label %csroa.if.end9.i75

csroa.if.end9.i75:                                ; preds = %do.body, %csroa.if.end14.i73
  %.phi10.i74 = phi i32 [ %.phi15.i72, %csroa.if.end14.i73 ], [ 614858756, %do.body ]
  br label %csroa.if.end4.i77

csroa.if.end4.i77:                                ; preds = %do.body, %csroa.if.end9.i75
  %.phi5.i76 = phi i32 [ %.phi10.i74, %csroa.if.end9.i75 ], [ 665124868, %do.body ]
  br label %__non_const_wrapper__.1.exit

__non_const_wrapper__.1.exit:                     ; preds = %do.body, %csroa.if.end4.i77
  %.phi.i78 = phi i32 [ %.phi5.i76, %csroa.if.end4.i77 ], [ -1885077504, %do.body ]
  %add = add nsw i32 %pc.0, 4
  %shr18 = lshr i32 %.phi.i78, 26
  %trunc = trunc i32 %shr18 to i6
  switch i6 %trunc, label %sw.default110 [
    i6 0, label %sw.bb
    i6 2, label %sw.bb103
    i6 3, label %sw.bb106
  ]

sw.bb:                                            ; preds = %__non_const_wrapper__.1.exit
  %shr20 = lshr i32 %.phi.i78, 6
  %and21 = and i32 %shr20, 31
  %shr22 = lshr i32 %.phi.i78, 11
  %and23 = and i32 %shr22, 31
  %shr24 = lshr i32 %.phi.i78, 16
  %and25 = and i32 %shr24, 31
  %shr26 = lshr i32 %.phi.i78, 21
  %and27 = and i32 %shr26, 31
  %trunc8 = trunc i32 %.phi.i78 to i6
  switch i6 %trunc8, label %sw.epilog201.thread [
    i6 -31, label %sw.bb28
    i6 -29, label %sw.bb33
    i6 24, label %sw.bb37
    i6 25, label %sw.bb45
    i6 16, label %sw.bb55
    i6 18, label %sw.bb57
    i6 -28, label %sw.bb59
    i6 -27, label %sw.bb64
    i6 -26, label %sw.bb68
    i6 0, label %sw.bb72
    i6 2, label %sw.bb75
    i6 4, label %sw.bb79
    i6 6, label %sw.bb84
    i6 -22, label %sw.bb89
    i6 -21, label %sw.bb95
    i6 8, label %sw.bb101
  ]

sw.bb28:                                          ; preds = %sw.bb
  %arrayidx29 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i32 0, i32 %and27
  %0 = load i32, i32* %arrayidx29, align 4
  %arrayidx30 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i32 0, i32 %and25
  %1 = load i32, i32* %arrayidx30, align 4
  %add31 = add nsw i32 %1, %0
  %arrayidx32 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i32 0, i32 %and23
  store i32 %add31, i32* %arrayidx32, align 4
  br label %sw.epilog201

sw.bb33:                                          ; preds = %sw.bb
  %arrayidx34 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i32 0, i32 %and27
  %2 = load i32, i32* %arrayidx34, align 4
  %arrayidx35 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i32 0, i32 %and25
  %3 = load i32, i32* %arrayidx35, align 4
  %sub = sub nsw i32 %2, %3
  %arrayidx36 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i32 0, i32 %and23
  store i32 %sub, i32* %arrayidx36, align 4
  br label %sw.epilog201

sw.bb37:                                          ; preds = %sw.bb
  %arrayidx38 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i32 0, i32 %and27
  %4 = load i32, i32* %arrayidx38, align 4
  %conv = sext i32 %4 to i64
  %arrayidx39 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i32 0, i32 %and25
  %5 = load i32, i32* %arrayidx39, align 4
  %conv40 = sext i32 %5 to i64
  %mul = mul nsw i64 %conv40, %conv
  %conv42 = trunc i64 %mul to i32
  %shr4310 = lshr i64 %mul, 32
  %conv44 = trunc i64 %shr4310 to i32
  br label %sw.epilog201

sw.bb45:                                          ; preds = %sw.bb
  %arrayidx46 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i32 0, i32 %and27
  %6 = load i32, i32* %arrayidx46, align 4
  %conv47 = zext i32 %6 to i64
  %arrayidx48 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i32 0, i32 %and25
  %7 = load i32, i32* %arrayidx48, align 4
  %conv49 = zext i32 %7 to i64
  %mul50 = mul nuw i64 %conv49, %conv47
  %conv52 = trunc i64 %mul50 to i32
  %shr539 = lshr i64 %mul50, 32
  %conv54 = trunc i64 %shr539 to i32
  br label %sw.epilog201

sw.bb55:                                          ; preds = %sw.bb
  %arrayidx56 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i32 0, i32 %and23
  store i32 %Hi.0, i32* %arrayidx56, align 4
  br label %sw.epilog201

sw.bb57:                                          ; preds = %sw.bb
  %arrayidx58 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i32 0, i32 %and23
  store i32 %Lo.0, i32* %arrayidx58, align 4
  br label %sw.epilog201

sw.bb59:                                          ; preds = %sw.bb
  %arrayidx60 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i32 0, i32 %and27
  %8 = load i32, i32* %arrayidx60, align 4
  %arrayidx61 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i32 0, i32 %and25
  %9 = load i32, i32* %arrayidx61, align 4
  %and62 = and i32 %9, %8
  %arrayidx63 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i32 0, i32 %and23
  store i32 %and62, i32* %arrayidx63, align 4
  br label %sw.epilog201

sw.bb64:                                          ; preds = %sw.bb
  %arrayidx65 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i32 0, i32 %and27
  %10 = load i32, i32* %arrayidx65, align 4
  %arrayidx66 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i32 0, i32 %and25
  %11 = load i32, i32* %arrayidx66, align 4
  %or = or i32 %11, %10
  %arrayidx67 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i32 0, i32 %and23
  store i32 %or, i32* %arrayidx67, align 4
  br label %sw.epilog201

sw.bb68:                                          ; preds = %sw.bb
  %arrayidx69 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i32 0, i32 %and27
  %12 = load i32, i32* %arrayidx69, align 4
  %arrayidx70 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i32 0, i32 %and25
  %13 = load i32, i32* %arrayidx70, align 4
  %xor = xor i32 %13, %12
  %arrayidx71 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i32 0, i32 %and23
  store i32 %xor, i32* %arrayidx71, align 4
  br label %sw.epilog201

sw.bb72:                                          ; preds = %sw.bb
  %arrayidx73 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i32 0, i32 %and25
  %14 = load i32, i32* %arrayidx73, align 4
  %shl = shl i32 %14, %and21
  %arrayidx74 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i32 0, i32 %and23
  store i32 %shl, i32* %arrayidx74, align 4
  br label %sw.epilog201

sw.bb75:                                          ; preds = %sw.bb
  %arrayidx76 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i32 0, i32 %and25
  %15 = load i32, i32* %arrayidx76, align 4
  %shr77 = ashr i32 %15, %and21
  %arrayidx78 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i32 0, i32 %and23
  store i32 %shr77, i32* %arrayidx78, align 4
  br label %sw.epilog201

sw.bb79:                                          ; preds = %sw.bb
  %arrayidx80 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i32 0, i32 %and25
  %16 = load i32, i32* %arrayidx80, align 4
  %arrayidx81 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i32 0, i32 %and27
  %17 = load i32, i32* %arrayidx81, align 4
  %shl82 = shl i32 %16, %17
  %arrayidx83 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i32 0, i32 %and23
  store i32 %shl82, i32* %arrayidx83, align 4
  br label %sw.epilog201

sw.bb84:                                          ; preds = %sw.bb
  %arrayidx85 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i32 0, i32 %and25
  %18 = load i32, i32* %arrayidx85, align 4
  %arrayidx86 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i32 0, i32 %and27
  %19 = load i32, i32* %arrayidx86, align 4
  %shr87 = ashr i32 %18, %19
  %arrayidx88 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i32 0, i32 %and23
  store i32 %shr87, i32* %arrayidx88, align 4
  br label %sw.epilog201

sw.bb89:                                          ; preds = %sw.bb
  %arrayidx90 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i32 0, i32 %and27
  %20 = load i32, i32* %arrayidx90, align 4
  %arrayidx91 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i32 0, i32 %and25
  %21 = load i32, i32* %arrayidx91, align 4
  %cmp92 = icmp slt i32 %20, %21
  %conv93 = zext i1 %cmp92 to i32
  %arrayidx94 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i32 0, i32 %and23
  store i32 %conv93, i32* %arrayidx94, align 4
  br label %sw.epilog201

sw.bb95:                                          ; preds = %sw.bb
  %arrayidx96 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i32 0, i32 %and27
  %22 = load i32, i32* %arrayidx96, align 4
  %arrayidx97 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i32 0, i32 %and25
  %23 = load i32, i32* %arrayidx97, align 4
  %cmp98 = icmp ult i32 %22, %23
  %conv99 = zext i1 %cmp98 to i32
  %arrayidx100 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i32 0, i32 %and23
  store i32 %conv99, i32* %arrayidx100, align 4
  br label %sw.epilog201

sw.bb101:                                         ; preds = %sw.bb
  %arrayidx102 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i32 0, i32 %and27
  %24 = load i32, i32* %arrayidx102, align 4
  br label %sw.epilog201

sw.bb103:                                         ; preds = %__non_const_wrapper__.1.exit
  %and104 = shl i32 %.phi.i78, 2
  %shl105 = and i32 %and104, 268435452
  br label %sw.epilog201

sw.bb106:                                         ; preds = %__non_const_wrapper__.1.exit
  store i32 %add, i32* %arrayidx108, align 4
  %and107 = shl i32 %.phi.i78, 2
  %shl109 = and i32 %and107, 268435452
  br label %sw.epilog201

sw.default110:                                    ; preds = %__non_const_wrapper__.1.exit
  %shr113 = lshr i32 %.phi.i78, 16
  %and114 = and i32 %shr113, 31
  %shr115 = lshr i32 %.phi.i78, 21
  %and116 = and i32 %shr115, 31
  switch i6 %trunc, label %sw.epilog201.thread [
    i6 9, label %sw.bb117
    i6 12, label %sw.bb122
    i6 13, label %sw.bb127
    i6 14, label %sw.bb132
    i6 -29, label %sw.bb137
    i6 -21, label %sw.bb145
    i6 15, label %sw.bb153
    i6 4, label %sw.bb157
    i6 5, label %sw.bb166
    i6 1, label %sw.bb177
    i6 10, label %sw.bb187
    i6 11, label %sw.bb193
  ]

sw.bb117:                                         ; preds = %sw.default110
  %arrayidx118 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i32 0, i32 %and116
  %25 = load i32, i32* %arrayidx118, align 4
  %sext22 = shl i32 %.phi.i78, 16
  %conv119 = ashr exact i32 %sext22, 16
  %add120 = add nsw i32 %25, %conv119
  %arrayidx121 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i32 0, i32 %and114
  store i32 %add120, i32* %arrayidx121, align 4
  br label %sw.epilog201

sw.bb122:                                         ; preds = %sw.default110
  %arrayidx123 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i32 0, i32 %and116
  %26 = load i32, i32* %arrayidx123, align 4
  %conv124 = and i32 %.phi.i78, 65535
  %and125 = and i32 %conv124, %26
  %arrayidx126 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i32 0, i32 %and114
  store i32 %and125, i32* %arrayidx126, align 4
  br label %sw.epilog201

sw.bb127:                                         ; preds = %sw.default110
  %arrayidx128 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i32 0, i32 %and116
  %27 = load i32, i32* %arrayidx128, align 4
  %conv129 = and i32 %.phi.i78, 65535
  %or130 = or i32 %27, %conv129
  %arrayidx131 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i32 0, i32 %and114
  store i32 %or130, i32* %arrayidx131, align 4
  br label %sw.epilog201

sw.bb132:                                         ; preds = %sw.default110
  %arrayidx133 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i32 0, i32 %and116
  %28 = load i32, i32* %arrayidx133, align 4
  %conv134 = and i32 %.phi.i78, 65535
  %xor135 = xor i32 %28, %conv134
  %arrayidx136 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i32 0, i32 %and114
  store i32 %xor135, i32* %arrayidx136, align 4
  br label %sw.epilog201

sw.bb137:                                         ; preds = %sw.default110
  %arrayidx138 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i32 0, i32 %and116
  %29 = load i32, i32* %arrayidx138, align 4
  %add140 = add i32 %29, %.phi.i78
  %and141 = lshr i32 %add140, 2
  %shr14221 = and i32 %and141, 63
  %arrayidx143 = getelementptr inbounds [64 x i32], [64 x i32]* %dmem, i32 0, i32 %shr14221
  %30 = load i32, i32* %arrayidx143, align 4
  %arrayidx144 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i32 0, i32 %and114
  store i32 %30, i32* %arrayidx144, align 4
  br label %sw.epilog201

sw.bb145:                                         ; preds = %sw.default110
  %arrayidx146 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i32 0, i32 %and114
  %31 = load i32, i32* %arrayidx146, align 4
  %arrayidx147 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i32 0, i32 %and116
  %32 = load i32, i32* %arrayidx147, align 4
  %add149 = add i32 %32, %.phi.i78
  %and150 = lshr i32 %add149, 2
  %shr15118 = and i32 %and150, 63
  %arrayidx152 = getelementptr inbounds [64 x i32], [64 x i32]* %dmem, i32 0, i32 %shr15118
  store i32 %31, i32* %arrayidx152, align 4
  br label %sw.epilog201

sw.bb153:                                         ; preds = %sw.default110
  %sext15 = shl i32 %.phi.i78, 16
  %arrayidx156 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i32 0, i32 %and114
  store i32 %sext15, i32* %arrayidx156, align 4
  br label %sw.epilog201

sw.bb157:                                         ; preds = %sw.default110
  %arrayidx158 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i32 0, i32 %and116
  %33 = load i32, i32* %arrayidx158, align 4
  %arrayidx159 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i32 0, i32 %and114
  %34 = load i32, i32* %arrayidx159, align 4
  %cmp160 = icmp eq i32 %33, %34
  br i1 %cmp160, label %if.then, label %sw.epilog201

if.then:                                          ; preds = %sw.bb157
  %sext14 = shl i32 %.phi.i78, 16
  %shl164 = ashr exact i32 %sext14, 14
  %add165 = add nsw i32 %shl164, %pc.0
  br label %sw.epilog201

sw.bb166:                                         ; preds = %sw.default110
  %arrayidx167 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i32 0, i32 %and116
  %35 = load i32, i32* %arrayidx167, align 4
  %arrayidx168 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i32 0, i32 %and114
  %36 = load i32, i32* %arrayidx168, align 4
  %cmp169 = icmp eq i32 %35, %36
  br i1 %cmp169, label %sw.epilog201, label %if.then171

if.then171:                                       ; preds = %sw.bb166
  %sext13 = shl i32 %.phi.i78, 16
  %shl174 = ashr exact i32 %sext13, 14
  %add175 = add nsw i32 %shl174, %pc.0
  br label %sw.epilog201

sw.bb177:                                         ; preds = %sw.default110
  %arrayidx178 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i32 0, i32 %and116
  %37 = load i32, i32* %arrayidx178, align 4
  %cmp179 = icmp sgt i32 %37, -1
  br i1 %cmp179, label %if.then181, label %sw.epilog201

if.then181:                                       ; preds = %sw.bb177
  %sext12 = shl i32 %.phi.i78, 16
  %shl184 = ashr exact i32 %sext12, 14
  %add185 = add nsw i32 %shl184, %pc.0
  br label %sw.epilog201

sw.bb187:                                         ; preds = %sw.default110
  %arrayidx188 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i32 0, i32 %and116
  %38 = load i32, i32* %arrayidx188, align 4
  %sext = shl i32 %.phi.i78, 16
  %conv189 = ashr exact i32 %sext, 16
  %cmp190 = icmp slt i32 %38, %conv189
  %conv191 = zext i1 %cmp190 to i32
  %arrayidx192 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i32 0, i32 %and114
  store i32 %conv191, i32* %arrayidx192, align 4
  br label %sw.epilog201

sw.bb193:                                         ; preds = %sw.default110
  %arrayidx194 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i32 0, i32 %and116
  %39 = load i32, i32* %arrayidx194, align 4
  %conv195 = and i32 %.phi.i78, 65535
  %cmp196 = icmp ult i32 %39, %conv195
  %conv197 = zext i1 %cmp196 to i32
  %arrayidx198 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i32 0, i32 %and114
  store i32 %conv197, i32* %arrayidx198, align 4
  br label %sw.epilog201

sw.epilog201.thread:                              ; preds = %sw.bb, %sw.default110
  store i32 0, i32* %arrayidx202, align 4
  %add20324 = add nsw i32 %n_inst.0, 1
  br label %do.end

sw.epilog201:                                     ; preds = %sw.bb117, %sw.bb122, %sw.bb127, %sw.bb132, %sw.bb137, %sw.bb145, %sw.bb153, %sw.bb187, %sw.bb193, %if.then, %sw.bb157, %sw.bb166, %if.then171, %if.then181, %sw.bb177, %sw.bb28, %sw.bb33, %sw.bb37, %sw.bb45, %sw.bb55, %sw.bb57, %sw.bb59, %sw.bb64, %sw.bb68, %sw.bb72, %sw.bb75, %sw.bb79, %sw.bb84, %sw.bb89, %sw.bb95, %sw.bb101, %sw.bb106, %sw.bb103
  %pc.6 = phi i32 [ %shl109, %sw.bb106 ], [ %shl105, %sw.bb103 ], [ %24, %sw.bb101 ], [ %add, %sw.bb95 ], [ %add, %sw.bb89 ], [ %add, %sw.bb84 ], [ %add, %sw.bb79 ], [ %add, %sw.bb75 ], [ %add, %sw.bb72 ], [ %add, %sw.bb68 ], [ %add, %sw.bb64 ], [ %add, %sw.bb59 ], [ %add, %sw.bb57 ], [ %add, %sw.bb55 ], [ %add, %sw.bb45 ], [ %add, %sw.bb37 ], [ %add, %sw.bb33 ], [ %add, %sw.bb28 ], [ %add, %sw.bb193 ], [ %add, %sw.bb187 ], [ %add, %sw.bb153 ], [ %add, %sw.bb145 ], [ %add, %sw.bb137 ], [ %add, %sw.bb132 ], [ %add, %sw.bb127 ], [ %add, %sw.bb122 ], [ %add, %sw.bb117 ], [ %add165, %if.then ], [ %add, %sw.bb157 ], [ %add175, %if.then171 ], [ %add, %sw.bb166 ], [ %add185, %if.then181 ], [ %add, %sw.bb177 ]
  %Lo.2 = phi i32 [ %Lo.0, %sw.bb106 ], [ %Lo.0, %sw.bb103 ], [ %Lo.0, %sw.bb101 ], [ %Lo.0, %sw.bb95 ], [ %Lo.0, %sw.bb89 ], [ %Lo.0, %sw.bb84 ], [ %Lo.0, %sw.bb79 ], [ %Lo.0, %sw.bb75 ], [ %Lo.0, %sw.bb72 ], [ %Lo.0, %sw.bb68 ], [ %Lo.0, %sw.bb64 ], [ %Lo.0, %sw.bb59 ], [ %Lo.0, %sw.bb57 ], [ %Lo.0, %sw.bb55 ], [ %conv52, %sw.bb45 ], [ %conv42, %sw.bb37 ], [ %Lo.0, %sw.bb33 ], [ %Lo.0, %sw.bb28 ], [ %Lo.0, %sw.bb193 ], [ %Lo.0, %sw.bb187 ], [ %Lo.0, %sw.bb153 ], [ %Lo.0, %sw.bb145 ], [ %Lo.0, %sw.bb137 ], [ %Lo.0, %sw.bb132 ], [ %Lo.0, %sw.bb127 ], [ %Lo.0, %sw.bb122 ], [ %Lo.0, %sw.bb117 ], [ %Lo.0, %if.then ], [ %Lo.0, %sw.bb157 ], [ %Lo.0, %if.then171 ], [ %Lo.0, %sw.bb166 ], [ %Lo.0, %if.then181 ], [ %Lo.0, %sw.bb177 ]
  %Hi.2 = phi i32 [ %Hi.0, %sw.bb106 ], [ %Hi.0, %sw.bb103 ], [ %Hi.0, %sw.bb101 ], [ %Hi.0, %sw.bb95 ], [ %Hi.0, %sw.bb89 ], [ %Hi.0, %sw.bb84 ], [ %Hi.0, %sw.bb79 ], [ %Hi.0, %sw.bb75 ], [ %Hi.0, %sw.bb72 ], [ %Hi.0, %sw.bb68 ], [ %Hi.0, %sw.bb64 ], [ %Hi.0, %sw.bb59 ], [ %Hi.0, %sw.bb57 ], [ %Hi.0, %sw.bb55 ], [ %conv54, %sw.bb45 ], [ %conv44, %sw.bb37 ], [ %Hi.0, %sw.bb33 ], [ %Hi.0, %sw.bb28 ], [ %Hi.0, %sw.bb193 ], [ %Hi.0, %sw.bb187 ], [ %Hi.0, %sw.bb153 ], [ %Hi.0, %sw.bb145 ], [ %Hi.0, %sw.bb137 ], [ %Hi.0, %sw.bb132 ], [ %Hi.0, %sw.bb127 ], [ %Hi.0, %sw.bb122 ], [ %Hi.0, %sw.bb117 ], [ %Hi.0, %if.then ], [ %Hi.0, %sw.bb157 ], [ %Hi.0, %if.then171 ], [ %Hi.0, %sw.bb166 ], [ %Hi.0, %if.then181 ], [ %Hi.0, %sw.bb177 ]
  store i32 0, i32* %arrayidx202, align 4
  %add203 = add nuw nsw i32 %n_inst.0, 1
  %cmp204 = icmp eq i32 %pc.6, 0
  br i1 %cmp204, label %do.end.loopexit, label %do.body

do.end.loopexit:                                  ; preds = %sw.epilog201
  br label %do.end

do.end:                                           ; preds = %do.end.loopexit, %sw.epilog201.thread
  %add20326 = phi i32 [ %add20324, %sw.epilog201.thread ], [ %add203, %do.end.loopexit ]
  %cmp206 = icmp ne i32 %add20326, 611
  %conv207 = zext i1 %cmp206 to i32
  br label %for.body212.sink.split

for.body212.sink.split:                           ; preds = %for.body212.sink.split.backedge, %do.end
  %add217183.sink = phi i32 [ %conv207, %do.end ], [ %add217183, %for.body212.sink.split.backedge ]
  %j.028.ph = phi i32 [ 0, %do.end ], [ %j.028.ph.be, %for.body212.sink.split.backedge ]
  br label %for.body212

for.body212:                                      ; preds = %for.body212.sink.split, %__non_const_wrapper__.2.exit
  %40 = phi i32 [ %add217, %__non_const_wrapper__.2.exit ], [ %add217183.sink, %for.body212.sink.split ]
  %j.028 = phi i32 [ %inc219, %__non_const_wrapper__.2.exit ], [ %j.028.ph, %for.body212.sink.split ]
  %arrayidx213 = getelementptr inbounds [64 x i32], [64 x i32]* %dmem, i32 0, i32 %j.028
  %41 = load i32, i32* %arrayidx213, align 4
  switch i32 %j.028, label %__non_const_wrapper__.2.exit [
    i32 0, label %__non_const_wrapper__.2.exit.thread
    i32 1, label %__non_const_wrapper__.2.exit.thread150
    i32 2, label %__non_const_wrapper__.2.exit.thread156
    i32 3, label %__non_const_wrapper__.2.exit.thread162
    i32 4, label %__non_const_wrapper__.2.exit.thread168
    i32 5, label %for.body212.sink.split.backedge.loopexit
    i32 6, label %__non_const_wrapper__.2.exit.thread180
  ]

__non_const_wrapper__.2.exit.thread180:           ; preds = %for.body212
  br label %for.body212.sink.split.backedge

for.body212.sink.split.backedge.loopexit:         ; preds = %for.body212
  br label %for.body212.sink.split.backedge

for.body212.sink.split.backedge:                  ; preds = %for.body212.sink.split.backedge.loopexit, %__non_const_wrapper__.2.exit.thread180, %__non_const_wrapper__.2.exit.thread168, %__non_const_wrapper__.2.exit.thread162, %__non_const_wrapper__.2.exit.thread156, %__non_const_wrapper__.2.exit.thread150, %__non_const_wrapper__.2.exit.thread
  %.sink251 = phi i32 [ 22, %__non_const_wrapper__.2.exit.thread180 ], [ 5, %__non_const_wrapper__.2.exit.thread168 ], [ 3, %__non_const_wrapper__.2.exit.thread162 ], [ 0, %__non_const_wrapper__.2.exit.thread156 ], [ -9, %__non_const_wrapper__.2.exit.thread150 ], [ -17, %__non_const_wrapper__.2.exit.thread ], [ 11, %for.body212.sink.split.backedge.loopexit ]
  %j.028.ph.be = phi i32 [ 7, %__non_const_wrapper__.2.exit.thread180 ], [ 5, %__non_const_wrapper__.2.exit.thread168 ], [ 4, %__non_const_wrapper__.2.exit.thread162 ], [ 3, %__non_const_wrapper__.2.exit.thread156 ], [ 2, %__non_const_wrapper__.2.exit.thread150 ], [ 1, %__non_const_wrapper__.2.exit.thread ], [ 6, %for.body212.sink.split.backedge.loopexit ]
  %cmp215181 = icmp ne i32 %41, %.sink251
  %conv216182 = zext i1 %cmp215181 to i32
  %add217183 = add nsw i32 %conv216182, %40
  br label %for.body212.sink.split

__non_const_wrapper__.2.exit.thread168:           ; preds = %for.body212
  br label %for.body212.sink.split.backedge

__non_const_wrapper__.2.exit.thread162:           ; preds = %for.body212
  br label %for.body212.sink.split.backedge

__non_const_wrapper__.2.exit.thread156:           ; preds = %for.body212
  br label %for.body212.sink.split.backedge

__non_const_wrapper__.2.exit.thread150:           ; preds = %for.body212
  br label %for.body212.sink.split.backedge

__non_const_wrapper__.2.exit.thread:              ; preds = %for.body212
  br label %for.body212.sink.split.backedge

__non_const_wrapper__.2.exit:                     ; preds = %for.body212
  %cmp215 = icmp ne i32 %41, 38
  %conv216 = zext i1 %cmp215 to i32
  %add217 = add nsw i32 %conv216, %40
  %inc219 = add nuw nsw i32 %j.028, 1
  %exitcond = icmp eq i32 %inc219, 8
  br i1 %exitcond, label %for.end220, label %for.body212

for.end220:                                       ; preds = %__non_const_wrapper__.2.exit
  store i32 %add217, i32* @main_result, align 4
  %call = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 %add217)
  %42 = load i32, i32* @main_result, align 4
  ret i32 %42
}

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i32, i1) #2

attributes #0 = { noinline nounwind ssp "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
