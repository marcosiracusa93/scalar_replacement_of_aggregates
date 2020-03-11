; ModuleID = './../tests/test_cases/dfsin.ll'
source_filename = "dfsin.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

@float_exception_flags = local_unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"input=%016llx expected=%016llx output=%016llx (%lf)\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@countLeadingZeros32.countLeadingZerosHigh = internal unnamed_addr constant [256 x i32] [i32 8, i32 7, i32 6, i32 6, i32 5, i32 5, i32 5, i32 5, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16

; Function Attrs: noinline norecurse nounwind ssp uwtable
define void @shift64ExtraRightJamming(i64 %a0, i64 %a1, i32 %count, i64* nocapture %z0Ptr, i64* nocapture %z1Ptr) local_unnamed_addr #0 {
entry:
  %sub = sub nsw i32 0, %count
  %and = and i32 %sub, 63
  %cmp = icmp eq i32 %count, 0
  br i1 %cmp, label %if.end20, label %if.else

if.else:                                          ; preds = %entry
  %cmp1 = icmp slt i32 %count, 64
  br i1 %cmp1, label %if.then2, label %if.else6

if.then2:                                         ; preds = %if.else
  %sh_prom = zext i32 %and to i64
  %shl = shl i64 %a0, %sh_prom
  %cmp3 = icmp ne i64 %a1, 0
  %conv4 = zext i1 %cmp3 to i64
  %or = or i64 %shl, %conv4
  %sh_prom5 = zext i32 %count to i64
  %shr = lshr i64 %a0, %sh_prom5
  br label %if.end20

if.else6:                                         ; preds = %if.else
  %cmp7 = icmp eq i32 %count, 64
  %cmp10 = icmp ne i64 %a1, 0
  %conv12 = zext i1 %cmp10 to i64
  %or13 = or i64 %conv12, %a0
  %or15 = or i64 %a1, %a0
  %cmp16 = icmp ne i64 %or15, 0
  %conv18 = zext i1 %cmp16 to i64
  %z1.0 = select i1 %cmp7, i64 %or13, i64 %conv18
  br label %if.end20

if.end20:                                         ; preds = %if.then2, %if.else6, %entry
  %z0.1 = phi i64 [ %a0, %entry ], [ %shr, %if.then2 ], [ 0, %if.else6 ]
  %z1.2 = phi i64 [ %a1, %entry ], [ %or, %if.then2 ], [ %z1.0, %if.else6 ]
  store i64 %z1.2, i64* %z1Ptr, align 8
  store i64 %z0.1, i64* %z0Ptr, align 8
  ret void
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @main() local_unnamed_addr #1 {
entry:
  br label %for.body

for.body:                                         ; preds = %__non_const_wrapper__.33.exit, %entry
  %i.0884 = phi i32 [ 0, %entry ], [ %inc, %__non_const_wrapper__.33.exit ]
  %main_result.0883 = phi i32 [ 0, %entry ], [ %add576, %__non_const_wrapper__.33.exit ]
  switch i32 %i.0884, label %csroa.if.end174.i [
    i32 0, label %__non_const_wrapper__.exit
    i32 1, label %csroa.if.end4.i
    i32 2, label %csroa.if.end9.i
    i32 3, label %csroa.if.end14.i
    i32 4, label %csroa.if.end19.i
    i32 5, label %csroa.if.end24.i
    i32 6, label %csroa.if.end29.i
    i32 7, label %csroa.if.end34.i
    i32 8, label %csroa.if.end39.i
    i32 9, label %csroa.if.end44.i
    i32 10, label %csroa.if.end49.i
    i32 11, label %csroa.if.end54.i
    i32 12, label %csroa.if.end59.i
    i32 13, label %csroa.if.end64.i
    i32 14, label %csroa.if.end69.i
    i32 15, label %csroa.if.end74.i
    i32 16, label %csroa.if.end79.i
    i32 17, label %csroa.if.end84.i
    i32 18, label %csroa.if.end89.i
    i32 19, label %csroa.if.end94.i
    i32 20, label %csroa.if.end99.i
    i32 21, label %csroa.if.end104.i
    i32 22, label %csroa.if.end109.i
    i32 23, label %csroa.if.end114.i
    i32 24, label %csroa.if.end119.i
    i32 25, label %csroa.if.end124.i
    i32 26, label %csroa.if.end129.i
    i32 27, label %csroa.if.end134.i
    i32 28, label %csroa.if.end139.i
    i32 29, label %csroa.if.end144.i
    i32 30, label %csroa.if.end149.i
    i32 31, label %csroa.if.end154.i
    i32 32, label %csroa.if.end159.i
    i32 33, label %csroa.if.end164.i
    i32 34, label %csroa.if.end169.i
  ]

csroa.if.end174.i:                                ; preds = %for.body
  br label %csroa.if.end169.i

csroa.if.end169.i:                                ; preds = %for.body, %csroa.if.end174.i
  %.phi170.i = phi i64 [ 4618563748144321995, %csroa.if.end174.i ], [ 4618367241580981021, %for.body ]
  br label %csroa.if.end164.i

csroa.if.end164.i:                                ; preds = %for.body, %csroa.if.end169.i
  %.phi165.i = phi i64 [ %.phi170.i, %csroa.if.end169.i ], [ 4618170735017640047, %for.body ]
  br label %csroa.if.end159.i

csroa.if.end159.i:                                ; preds = %for.body, %csroa.if.end164.i
  %.phi160.i = phi i64 [ %.phi165.i, %csroa.if.end164.i ], [ 4617974228454299073, %for.body ]
  br label %csroa.if.end154.i

csroa.if.end154.i:                                ; preds = %for.body, %csroa.if.end159.i
  %.phi155.i = phi i64 [ %.phi160.i, %csroa.if.end159.i ], [ 4617777721890958099, %for.body ]
  br label %csroa.if.end149.i

csroa.if.end149.i:                                ; preds = %for.body, %csroa.if.end154.i
  %.phi150.i = phi i64 [ %.phi155.i, %csroa.if.end154.i ], [ 4617581215327617125, %for.body ]
  br label %csroa.if.end144.i

csroa.if.end144.i:                                ; preds = %for.body, %csroa.if.end149.i
  %.phi145.i = phi i64 [ %.phi150.i, %csroa.if.end149.i ], [ 4617384708764276151, %for.body ]
  br label %csroa.if.end139.i

csroa.if.end139.i:                                ; preds = %for.body, %csroa.if.end144.i
  %.phi140.i = phi i64 [ %.phi145.i, %csroa.if.end144.i ], [ 4617188202200935177, %for.body ]
  br label %csroa.if.end134.i

csroa.if.end134.i:                                ; preds = %for.body, %csroa.if.end139.i
  %.phi135.i = phi i64 [ %.phi140.i, %csroa.if.end139.i ], [ 4616991695637594203, %for.body ]
  br label %csroa.if.end129.i

csroa.if.end129.i:                                ; preds = %for.body, %csroa.if.end134.i
  %.phi130.i = phi i64 [ %.phi135.i, %csroa.if.end134.i ], [ 4616795189074253229, %for.body ]
  br label %csroa.if.end124.i

csroa.if.end124.i:                                ; preds = %for.body, %csroa.if.end129.i
  %.phi125.i = phi i64 [ %.phi130.i, %csroa.if.end129.i ], [ 4616598682510912255, %for.body ]
  br label %csroa.if.end119.i

csroa.if.end119.i:                                ; preds = %for.body, %csroa.if.end124.i
  %.phi120.i = phi i64 [ %.phi125.i, %csroa.if.end124.i ], [ 4616402175947571281, %for.body ]
  br label %csroa.if.end114.i

csroa.if.end114.i:                                ; preds = %for.body, %csroa.if.end119.i
  %.phi115.i = phi i64 [ %.phi120.i, %csroa.if.end119.i ], [ 4616205669384230307, %for.body ]
  br label %csroa.if.end109.i

csroa.if.end109.i:                                ; preds = %for.body, %csroa.if.end114.i
  %.phi110.i = phi i64 [ %.phi115.i, %csroa.if.end114.i ], [ 4615828707587020265, %for.body ]
  br label %csroa.if.end104.i

csroa.if.end104.i:                                ; preds = %for.body, %csroa.if.end109.i
  %.phi105.i = phi i64 [ %.phi110.i, %csroa.if.end109.i ], [ 4615435694460338317, %for.body ]
  br label %csroa.if.end99.i

csroa.if.end99.i:                                 ; preds = %for.body, %csroa.if.end104.i
  %.phi100.i = phi i64 [ %.phi105.i, %csroa.if.end104.i ], [ 4615042681333656369, %for.body ]
  br label %csroa.if.end94.i

csroa.if.end94.i:                                 ; preds = %for.body, %csroa.if.end99.i
  %.phi95.i = phi i64 [ %.phi100.i, %csroa.if.end99.i ], [ 4614649668206974421, %for.body ]
  br label %csroa.if.end89.i

csroa.if.end89.i:                                 ; preds = %for.body, %csroa.if.end94.i
  %.phi90.i = phi i64 [ %.phi95.i, %csroa.if.end94.i ], [ 4614256655080292473, %for.body ]
  br label %csroa.if.end84.i

csroa.if.end84.i:                                 ; preds = %for.body, %csroa.if.end89.i
  %.phi85.i = phi i64 [ %.phi90.i, %csroa.if.end89.i ], [ 4613863641953610525, %for.body ]
  br label %csroa.if.end79.i

csroa.if.end79.i:                                 ; preds = %for.body, %csroa.if.end84.i
  %.phi80.i = phi i64 [ %.phi85.i, %csroa.if.end84.i ], [ 4613470628826928577, %for.body ]
  br label %csroa.if.end74.i

csroa.if.end74.i:                                 ; preds = %for.body, %csroa.if.end79.i
  %.phi75.i = phi i64 [ %.phi80.i, %csroa.if.end79.i ], [ 4613077615700246629, %for.body ]
  br label %csroa.if.end69.i

csroa.if.end69.i:                                 ; preds = %for.body, %csroa.if.end74.i
  %.phi70.i = phi i64 [ %.phi75.i, %csroa.if.end74.i ], [ 4612684602573564681, %for.body ]
  br label %csroa.if.end64.i

csroa.if.end64.i:                                 ; preds = %for.body, %csroa.if.end69.i
  %.phi65.i = phi i64 [ %.phi70.i, %csroa.if.end69.i ], [ 4612291589446882733, %for.body ]
  br label %csroa.if.end59.i

csroa.if.end59.i:                                 ; preds = %for.body, %csroa.if.end64.i
  %.phi60.i = phi i64 [ %.phi65.i, %csroa.if.end64.i ], [ 4611898576320200785, %for.body ]
  br label %csroa.if.end54.i

csroa.if.end54.i:                                 ; preds = %for.body, %csroa.if.end59.i
  %.phi55.i = phi i64 [ %.phi60.i, %csroa.if.end59.i ], [ 4611325107959649769, %for.body ]
  br label %csroa.if.end49.i

csroa.if.end49.i:                                 ; preds = %for.body, %csroa.if.end54.i
  %.phi50.i = phi i64 [ %.phi55.i, %csroa.if.end54.i ], [ 4610539081706285873, %for.body ]
  br label %csroa.if.end44.i

csroa.if.end44.i:                                 ; preds = %for.body, %csroa.if.end49.i
  %.phi45.i = phi i64 [ %.phi50.i, %csroa.if.end49.i ], [ 4609753055452921977, %for.body ]
  br label %csroa.if.end39.i

csroa.if.end39.i:                                 ; preds = %for.body, %csroa.if.end44.i
  %.phi40.i = phi i64 [ %.phi45.i, %csroa.if.end44.i ], [ 4608967029199558081, %for.body ]
  br label %csroa.if.end34.i

csroa.if.end34.i:                                 ; preds = %for.body, %csroa.if.end39.i
  %.phi35.i = phi i64 [ %.phi40.i, %csroa.if.end39.i ], [ 4608181002946194185, %for.body ]
  br label %csroa.if.end29.i

csroa.if.end29.i:                                 ; preds = %for.body, %csroa.if.end34.i
  %.phi30.i = phi i64 [ %.phi35.i, %csroa.if.end34.i ], [ 4607394976692830289, %for.body ]
  br label %csroa.if.end24.i

csroa.if.end24.i:                                 ; preds = %for.body, %csroa.if.end29.i
  %.phi25.i = phi i64 [ %.phi30.i, %csroa.if.end29.i ], [ 4606035482078915377, %for.body ]
  br label %csroa.if.end19.i

csroa.if.end19.i:                                 ; preds = %for.body, %csroa.if.end24.i
  %.phi20.i = phi i64 [ %.phi25.i, %csroa.if.end24.i ], [ 4604463429572187585, %for.body ]
  br label %csroa.if.end14.i

csroa.if.end14.i:                                 ; preds = %for.body, %csroa.if.end19.i
  %.phi15.i = phi i64 [ %.phi20.i, %csroa.if.end19.i ], [ 4602891377065459793, %for.body ]
  br label %csroa.if.end9.i

csroa.if.end9.i:                                  ; preds = %for.body, %csroa.if.end14.i
  %.phi10.i = phi i64 [ %.phi15.i, %csroa.if.end14.i ], [ 4599959829944817089, %for.body ]
  br label %csroa.if.end4.i

csroa.if.end4.i:                                  ; preds = %for.body, %csroa.if.end9.i
  %.phi5.i = phi i64 [ %.phi10.i, %csroa.if.end9.i ], [ 4595456230317446593, %for.body ]
  br label %__non_const_wrapper__.exit

__non_const_wrapper__.exit:                       ; preds = %for.body, %csroa.if.end4.i
  %.phi.i = phi i64 [ %.phi5.i, %csroa.if.end4.i ], [ 0, %for.body ]
  %call.c.i.c = tail call i64 @float64_mul.v0.C.c.c(i64 %.phi.i, i64 %.phi.i) #5
  %or.i = xor i64 %call.c.i.c, -9223372036854775808
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.backedge, %__non_const_wrapper__.exit
  %diff.0.i = phi i64 [ %.phi.i, %__non_const_wrapper__.exit ], [ %call6.c.i.c, %do.body.i.backedge ]
  %app.0.i = phi i64 [ %.phi.i, %__non_const_wrapper__.exit ], [ %retval.0.i, %do.body.i.backedge ]
  %inc.0.i = phi i32 [ 1, %__non_const_wrapper__.exit ], [ %inc8.i, %do.body.i.backedge ]
  %call2.c.i.c = tail call i64 @float64_mul.v0.C.c.c(i64 %diff.0.i, i64 %or.i) #5
  %mul.i = shl nsw i32 %inc.0.i, 1
  %add.i = or i32 %mul.i, 1
  %mul4.i = mul nsw i32 %add.i, %mul.i
  %cmp1.i = icmp slt i32 %mul4.i, 0
  %mul4.i.lobit = lshr i32 %mul4.i, 31
  %sub.i = sub nsw i32 0, %mul4.i
  %cond.i = select i1 %cmp1.i, i32 %sub.i, i32 %mul4.i
  %cmp.i = icmp ult i32 %cond.i, 65536
  %shl.i15 = shl i32 %cond.i, 16
  %. = select i1 %cmp.i, i32 16, i32 0
  %shl.i15.cond.i = select i1 %cmp.i, i32 %shl.i15, i32 %cond.i
  %cmp1.i16 = icmp ult i32 %shl.i15.cond.i, 16777216
  %shl4.i = shl i32 %shl.i15.cond.i, 8
  %a.addr.1.i = select i1 %cmp1.i16, i32 %shl4.i, i32 %shl.i15.cond.i
  %add3.i = or i32 %., 8
  %shiftCount.1.i = select i1 %cmp1.i16, i32 %add3.i, i32 %.
  %shr.i = lshr i32 %a.addr.1.i, 24
  %idxprom.i = zext i32 %shr.i to i64
  %arrayidx.i = getelementptr inbounds [256 x i32], [256 x i32]* @countLeadingZeros32.countLeadingZerosHigh, i64 0, i64 %idxprom.i
  %0 = load i32, i32* %arrayidx.i, align 4
  %add6.i = add nsw i32 %shiftCount.1.i, %0
  %add.i14 = add nsw i32 %add6.i, 21
  %conv2.i = zext i32 %cond.i to i64
  %sub3.i = sub i32 1053, %add6.i
  %sh_prom.i = zext i32 %add.i14 to i64
  %shl.i = shl i64 %conv2.i, %sh_prom.i
  %call4.c.i.c = tail call i64 @packFloat64.v0.C.c.c(i32 %mul4.i.lobit, i32 %sub3.i, i64 %shl.i) #5
  %call6.c.i.c = tail call i64 @float64_div.v0.C.c.c(i64 %call2.c.i.c, i64 %call4.c.i.c) #5
  %call.c.i17.c = tail call i32 @extractFloat64Sign.v0.C.c.c(i64 %app.0.i) #5
  %call1.c.i.c = tail call i32 @extractFloat64Sign.v0.C.c.c(i64 %call6.c.i.c) #5
  %cmp.i18 = icmp eq i32 %call.c.i17.c, %call1.c.i.c
  br i1 %cmp.i18, label %if.then.i20, label %if.else.i

if.then.i20:                                      ; preds = %do.body.i
  %call2.c.i19.c = tail call fastcc i64 @addFloat64Sigs.v0.C.c.c(i64 %app.0.i, i64 %call6.c.i.c, i32 %call.c.i17.c) #5
  br label %float64_add.v0.C.c.exit

if.else.i:                                        ; preds = %do.body.i
  %call3.c.i.c = tail call fastcc i64 @subFloat64Sigs.v0.C.c.c(i64 %app.0.i, i64 %call6.c.i.c, i32 %call.c.i17.c) #5
  br label %float64_add.v0.C.c.exit

float64_add.v0.C.c.exit:                          ; preds = %if.then.i20, %if.else.i
  %retval.0.i = phi i64 [ %call2.c.i19.c, %if.then.i20 ], [ %call3.c.i.c, %if.else.i ]
  %inc8.i = add nuw nsw i32 %inc.0.i, 1
  %and.i21 = and i64 %call6.c.i.c, 9223372036854775807
  %call.c.i23.c = tail call i32 @extractFloat64Exp.v0.C.c.c(i64 4532020583610935537) #5
  %cmp.i24 = icmp eq i32 %call.c.i23.c, 2047
  br i1 %cmp.i24, label %land.lhs.true.i, label %lor.lhs.false.i

land.lhs.true.i:                                  ; preds = %float64_add.v0.C.c.exit
  %call1.c.i25.c = tail call i64 @extractFloat64Frac.v0.C.c.c(i64 4532020583610935537) #5
  %tobool.i26 = icmp eq i64 %call1.c.i25.c, 0
  br i1 %tobool.i26, label %lor.lhs.false.i, label %if.then.i28

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i, %float64_add.v0.C.c.exit
  %call2.c.i27.c = tail call i32 @extractFloat64Exp.v0.C.c.c(i64 %and.i21) #5
  %cmp3.i = icmp eq i32 %call2.c.i27.c, 2047
  br i1 %cmp3.i, label %land.lhs.true4.i, label %if.end.i29

land.lhs.true4.i:                                 ; preds = %lor.lhs.false.i
  %call5.c.i.c = tail call i64 @extractFloat64Frac.v0.C.c.c(i64 %and.i21) #5
  %tobool6.i = icmp eq i64 %call5.c.i.c, 0
  br i1 %tobool6.i, label %if.end.i29, label %if.then.i28

if.then.i28:                                      ; preds = %land.lhs.true.i, %land.lhs.true4.i
  tail call void @float_raise.v0.C.c.c(i32 16) #5
  br label %local_sin.v0.C.c.exit

if.end.i29:                                       ; preds = %land.lhs.true4.i, %lor.lhs.false.i
  %call7.c.i.c = tail call i32 @extractFloat64Sign.v0.C.c.c(i64 4532020583610935537) #5
  %call8.c.i.c = tail call i32 @extractFloat64Sign.v0.C.c.c(i64 %and.i21) #5
  %cmp9.i = icmp eq i32 %call7.c.i.c, %call8.c.i.c
  br i1 %cmp9.i, label %float64_le.v0.C.c.exit, label %if.then10.i

if.then10.i:                                      ; preds = %if.end.i29
  %tobool11.i = icmp eq i32 %call7.c.i.c, 0
  br i1 %tobool11.i, label %local_sin.v0.C.c.exit.loopexit, label %do.body.i.backedge

float64_le.v0.C.c.exit:                           ; preds = %if.end.i29
  %cmp14.i = icmp eq i64 %and.i21, 4532020583610935537
  %cmp16.i = icmp ugt i64 %and.i21, 4532020583610935537
  %conv.i32 = zext i1 %cmp16.i to i32
  %tobool17.i = icmp ne i32 %call7.c.i.c, %conv.i32
  %1 = or i1 %cmp14.i, %tobool17.i
  br i1 %1, label %do.body.i.backedge, label %local_sin.v0.C.c.exit.loopexit

do.body.i.backedge:                               ; preds = %float64_le.v0.C.c.exit, %if.then10.i
  br label %do.body.i

local_sin.v0.C.c.exit.loopexit:                   ; preds = %float64_le.v0.C.c.exit, %if.then10.i
  br label %local_sin.v0.C.c.exit

local_sin.v0.C.c.exit:                            ; preds = %local_sin.v0.C.c.exit.loopexit, %if.then.i28
  switch i32 %i.0884, label %__non_const_wrapper__.31.exit [
    i32 0, label %__non_const_wrapper__.31.exit.thread
    i32 1, label %__non_const_wrapper__.31.exit.thread573
    i32 2, label %__non_const_wrapper__.31.exit.thread578
    i32 3, label %__non_const_wrapper__.31.exit.thread583
    i32 4, label %__non_const_wrapper__.31.exit.thread588
    i32 5, label %__non_const_wrapper__.31.exit.thread593
    i32 6, label %__non_const_wrapper__.31.exit.thread598
    i32 7, label %__non_const_wrapper__.31.exit.thread603
    i32 8, label %__non_const_wrapper__.31.exit.thread608
    i32 9, label %__non_const_wrapper__.31.exit.thread613
    i32 10, label %__non_const_wrapper__.31.exit.thread618
    i32 11, label %__non_const_wrapper__.31.exit.thread623
    i32 12, label %__non_const_wrapper__.31.exit.thread628
    i32 13, label %__non_const_wrapper__.31.exit.thread633
    i32 14, label %__non_const_wrapper__.31.exit.thread638
    i32 15, label %__non_const_wrapper__.31.exit.thread643
    i32 16, label %__non_const_wrapper__.31.exit.thread648
    i32 17, label %__non_const_wrapper__.31.exit.thread653
    i32 18, label %__non_const_wrapper__.31.exit.thread658
    i32 19, label %__non_const_wrapper__.31.exit.thread663
    i32 20, label %__non_const_wrapper__.31.exit.thread668
    i32 21, label %__non_const_wrapper__.31.exit.thread673
    i32 22, label %__non_const_wrapper__.31.exit.thread678
    i32 23, label %__non_const_wrapper__.31.exit.thread683
    i32 24, label %__non_const_wrapper__.31.exit.thread688
    i32 25, label %__non_const_wrapper__.31.exit.thread693
    i32 26, label %__non_const_wrapper__.31.exit.thread698
    i32 27, label %__non_const_wrapper__.31.exit.thread703
    i32 28, label %__non_const_wrapper__.31.exit.thread708
    i32 29, label %__non_const_wrapper__.31.exit.thread713
    i32 30, label %__non_const_wrapper__.31.exit.thread718
    i32 31, label %__non_const_wrapper__.31.exit.thread723
    i32 32, label %__non_const_wrapper__.31.exit.thread728
    i32 33, label %__non_const_wrapper__.33.exit
    i32 34, label %__non_const_wrapper__.31.exit.thread738
  ]

__non_const_wrapper__.31.exit.thread738:          ; preds = %local_sin.v0.C.c.exit
  br label %__non_const_wrapper__.33.exit

__non_const_wrapper__.31.exit.thread728:          ; preds = %local_sin.v0.C.c.exit
  br label %__non_const_wrapper__.33.exit

__non_const_wrapper__.31.exit.thread723:          ; preds = %local_sin.v0.C.c.exit
  br label %__non_const_wrapper__.33.exit

__non_const_wrapper__.31.exit.thread718:          ; preds = %local_sin.v0.C.c.exit
  br label %__non_const_wrapper__.33.exit

__non_const_wrapper__.31.exit.thread713:          ; preds = %local_sin.v0.C.c.exit
  br label %__non_const_wrapper__.33.exit

__non_const_wrapper__.31.exit.thread708:          ; preds = %local_sin.v0.C.c.exit
  br label %__non_const_wrapper__.33.exit

__non_const_wrapper__.31.exit.thread703:          ; preds = %local_sin.v0.C.c.exit
  br label %__non_const_wrapper__.33.exit

__non_const_wrapper__.31.exit.thread698:          ; preds = %local_sin.v0.C.c.exit
  br label %__non_const_wrapper__.33.exit

__non_const_wrapper__.31.exit.thread693:          ; preds = %local_sin.v0.C.c.exit
  br label %__non_const_wrapper__.33.exit

__non_const_wrapper__.31.exit.thread688:          ; preds = %local_sin.v0.C.c.exit
  br label %__non_const_wrapper__.33.exit

__non_const_wrapper__.31.exit.thread683:          ; preds = %local_sin.v0.C.c.exit
  br label %__non_const_wrapper__.33.exit

__non_const_wrapper__.31.exit.thread678:          ; preds = %local_sin.v0.C.c.exit
  br label %__non_const_wrapper__.33.exit

__non_const_wrapper__.31.exit.thread673:          ; preds = %local_sin.v0.C.c.exit
  br label %__non_const_wrapper__.33.exit

__non_const_wrapper__.31.exit.thread668:          ; preds = %local_sin.v0.C.c.exit
  br label %__non_const_wrapper__.33.exit

__non_const_wrapper__.31.exit.thread663:          ; preds = %local_sin.v0.C.c.exit
  br label %__non_const_wrapper__.33.exit

__non_const_wrapper__.31.exit.thread658:          ; preds = %local_sin.v0.C.c.exit
  br label %__non_const_wrapper__.33.exit

__non_const_wrapper__.31.exit.thread653:          ; preds = %local_sin.v0.C.c.exit
  br label %__non_const_wrapper__.33.exit

__non_const_wrapper__.31.exit.thread648:          ; preds = %local_sin.v0.C.c.exit
  br label %__non_const_wrapper__.33.exit

__non_const_wrapper__.31.exit.thread643:          ; preds = %local_sin.v0.C.c.exit
  br label %__non_const_wrapper__.33.exit

__non_const_wrapper__.31.exit.thread638:          ; preds = %local_sin.v0.C.c.exit
  br label %__non_const_wrapper__.33.exit

__non_const_wrapper__.31.exit.thread633:          ; preds = %local_sin.v0.C.c.exit
  br label %__non_const_wrapper__.33.exit

__non_const_wrapper__.31.exit.thread628:          ; preds = %local_sin.v0.C.c.exit
  br label %__non_const_wrapper__.33.exit

__non_const_wrapper__.31.exit.thread623:          ; preds = %local_sin.v0.C.c.exit
  br label %__non_const_wrapper__.33.exit

__non_const_wrapper__.31.exit.thread618:          ; preds = %local_sin.v0.C.c.exit
  br label %__non_const_wrapper__.33.exit

__non_const_wrapper__.31.exit.thread613:          ; preds = %local_sin.v0.C.c.exit
  br label %__non_const_wrapper__.33.exit

__non_const_wrapper__.31.exit.thread608:          ; preds = %local_sin.v0.C.c.exit
  br label %__non_const_wrapper__.33.exit

__non_const_wrapper__.31.exit.thread603:          ; preds = %local_sin.v0.C.c.exit
  br label %__non_const_wrapper__.33.exit

__non_const_wrapper__.31.exit.thread598:          ; preds = %local_sin.v0.C.c.exit
  br label %__non_const_wrapper__.33.exit

__non_const_wrapper__.31.exit.thread593:          ; preds = %local_sin.v0.C.c.exit
  br label %__non_const_wrapper__.33.exit

__non_const_wrapper__.31.exit.thread588:          ; preds = %local_sin.v0.C.c.exit
  br label %__non_const_wrapper__.33.exit

__non_const_wrapper__.31.exit.thread583:          ; preds = %local_sin.v0.C.c.exit
  br label %__non_const_wrapper__.33.exit

__non_const_wrapper__.31.exit.thread578:          ; preds = %local_sin.v0.C.c.exit
  br label %__non_const_wrapper__.33.exit

__non_const_wrapper__.31.exit.thread573:          ; preds = %local_sin.v0.C.c.exit
  br label %__non_const_wrapper__.33.exit

__non_const_wrapper__.31.exit.thread:             ; preds = %local_sin.v0.C.c.exit
  br label %__non_const_wrapper__.33.exit

__non_const_wrapper__.31.exit:                    ; preds = %local_sin.v0.C.c.exit
  br label %__non_const_wrapper__.33.exit

__non_const_wrapper__.33.exit:                    ; preds = %local_sin.v0.C.c.exit, %__non_const_wrapper__.31.exit.thread573, %__non_const_wrapper__.31.exit.thread583, %__non_const_wrapper__.31.exit.thread593, %__non_const_wrapper__.31.exit.thread603, %__non_const_wrapper__.31.exit.thread613, %__non_const_wrapper__.31.exit.thread623, %__non_const_wrapper__.31.exit.thread633, %__non_const_wrapper__.31.exit.thread643, %__non_const_wrapper__.31.exit.thread653, %__non_const_wrapper__.31.exit.thread663, %__non_const_wrapper__.31.exit.thread673, %__non_const_wrapper__.31.exit.thread683, %__non_const_wrapper__.31.exit.thread693, %__non_const_wrapper__.31.exit.thread703, %__non_const_wrapper__.31.exit.thread713, %__non_const_wrapper__.31.exit.thread723, %__non_const_wrapper__.31.exit.thread738, %__non_const_wrapper__.31.exit, %__non_const_wrapper__.31.exit.thread728, %__non_const_wrapper__.31.exit.thread718, %__non_const_wrapper__.31.exit.thread708, %__non_const_wrapper__.31.exit.thread698, %__non_const_wrapper__.31.exit.thread688, %__non_const_wrapper__.31.exit.thread678, %__non_const_wrapper__.31.exit.thread668, %__non_const_wrapper__.31.exit.thread658, %__non_const_wrapper__.31.exit.thread648, %__non_const_wrapper__.31.exit.thread638, %__non_const_wrapper__.31.exit.thread628, %__non_const_wrapper__.31.exit.thread618, %__non_const_wrapper__.31.exit.thread608, %__non_const_wrapper__.31.exit.thread598, %__non_const_wrapper__.31.exit.thread588, %__non_const_wrapper__.31.exit.thread578, %__non_const_wrapper__.31.exit.thread
  %.sink = phi i64 [ 4595424353983311309, %__non_const_wrapper__.31.exit.thread573 ], [ 4602678817326738065, %__non_const_wrapper__.31.exit.thread583 ], [ 4605075133481489574, %__non_const_wrapper__.31.exit.thread593 ], [ 4606639217416480941, %__non_const_wrapper__.31.exit.thread603 ], [ 4607182418293282730, %__non_const_wrapper__.31.exit.thread613 ], [ 4606639219569943220, %__non_const_wrapper__.31.exit.thread623 ], [ 4605075138685085801, %__non_const_wrapper__.31.exit.thread633 ], [ 4602678823104758728, %__non_const_wrapper__.31.exit.thread643 ], [ 4595424366569280812, %__non_const_wrapper__.31.exit.thread653 ], [ -4627947708347468932, %__non_const_wrapper__.31.exit.thread663 ], [ -4620693229337249429, %__non_const_wrapper__.31.exit.thread673 ], [ -4618296906397976555, %__non_const_wrapper__.31.exit.thread683 ], [ -4616732821607866025, %__non_const_wrapper__.31.exit.thread693 ], [ -4616189619079881585, %__non_const_wrapper__.31.exit.thread703 ], [ -4616732815165379033, %__non_const_wrapper__.31.exit.thread713 ], [ -4618296894661077119, %__non_const_wrapper__.31.exit.thread723 ], [ -4623539110082393353, %__non_const_wrapper__.31.exit.thread738 ], [ -4627947641781066787, %__non_const_wrapper__.31.exit ], [ -4619407090579186346, %__non_const_wrapper__.31.exit.thread728 ], [ -4617396348504650934, %__non_const_wrapper__.31.exit.thread718 ], [ -4616326458420041750, %__non_const_wrapper__.31.exit.thread708 ], [ -4616326459558573316, %__non_const_wrapper__.31.exit.thread698 ], [ -4617396355889189326, %__non_const_wrapper__.31.exit.thread688 ], [ -4619407106423282733, %__non_const_wrapper__.31.exit.thread678 ], [ -4623539145043636418, %__non_const_wrapper__.31.exit.thread668 ], [ 4514487953518840721, %__non_const_wrapper__.31.exit.thread658 ], [ 4599832915021762757, %__non_const_wrapper__.31.exit.thread648 ], [ 4603964939033565416, %__non_const_wrapper__.31.exit.thread638 ], [ 4605975685322773549, %__non_const_wrapper__.31.exit.thread628 ], [ 4607045579801131401, %__non_const_wrapper__.31.exit.thread618 ], [ 4607045578640063168, %__non_const_wrapper__.31.exit.thread608 ], [ 4605975682307795949, %__non_const_wrapper__.31.exit.thread598 ], [ 4603964934626362083, %__non_const_wrapper__.31.exit.thread588 ], [ 4599832905844899646, %__non_const_wrapper__.31.exit.thread578 ], [ 0, %__non_const_wrapper__.31.exit.thread ], [ -4620693208604826867, %local_sin.v0.C.c.exit ]
  %.phi.i389744 = phi i64 [ 4595456230317446593, %__non_const_wrapper__.31.exit.thread573 ], [ 4602891377065459793, %__non_const_wrapper__.31.exit.thread583 ], [ 4606035482078915377, %__non_const_wrapper__.31.exit.thread593 ], [ 4608181002946194185, %__non_const_wrapper__.31.exit.thread603 ], [ 4609753055452921977, %__non_const_wrapper__.31.exit.thread613 ], [ 4611325107959649769, %__non_const_wrapper__.31.exit.thread623 ], [ 4612291589446882733, %__non_const_wrapper__.31.exit.thread633 ], [ 4613077615700246629, %__non_const_wrapper__.31.exit.thread643 ], [ 4613863641953610525, %__non_const_wrapper__.31.exit.thread653 ], [ 4614649668206974421, %__non_const_wrapper__.31.exit.thread663 ], [ 4615435694460338317, %__non_const_wrapper__.31.exit.thread673 ], [ 4616205669384230307, %__non_const_wrapper__.31.exit.thread683 ], [ 4616598682510912255, %__non_const_wrapper__.31.exit.thread693 ], [ 4616991695637594203, %__non_const_wrapper__.31.exit.thread703 ], [ 4617384708764276151, %__non_const_wrapper__.31.exit.thread713 ], [ 4617777721890958099, %__non_const_wrapper__.31.exit.thread723 ], [ 4618367241580981021, %__non_const_wrapper__.31.exit.thread738 ], [ 4618563748144321995, %__non_const_wrapper__.31.exit ], [ 4617974228454299073, %__non_const_wrapper__.31.exit.thread728 ], [ 4617581215327617125, %__non_const_wrapper__.31.exit.thread718 ], [ 4617188202200935177, %__non_const_wrapper__.31.exit.thread708 ], [ 4616795189074253229, %__non_const_wrapper__.31.exit.thread698 ], [ 4616402175947571281, %__non_const_wrapper__.31.exit.thread688 ], [ 4615828707587020265, %__non_const_wrapper__.31.exit.thread678 ], [ 4615042681333656369, %__non_const_wrapper__.31.exit.thread668 ], [ 4614256655080292473, %__non_const_wrapper__.31.exit.thread658 ], [ 4613470628826928577, %__non_const_wrapper__.31.exit.thread648 ], [ 4612684602573564681, %__non_const_wrapper__.31.exit.thread638 ], [ 4611898576320200785, %__non_const_wrapper__.31.exit.thread628 ], [ 4610539081706285873, %__non_const_wrapper__.31.exit.thread618 ], [ 4608967029199558081, %__non_const_wrapper__.31.exit.thread608 ], [ 4607394976692830289, %__non_const_wrapper__.31.exit.thread598 ], [ 4604463429572187585, %__non_const_wrapper__.31.exit.thread588 ], [ 4599959829944817089, %__non_const_wrapper__.31.exit.thread578 ], [ 0, %__non_const_wrapper__.31.exit.thread ], [ 4618170735017640047, %local_sin.v0.C.c.exit ]
  %cmp3574 = icmp ne i64 %retval.0.i, %.sink
  %conv575 = zext i1 %cmp3574 to i32
  %add576 = add nsw i32 %conv575, %main_result.0883
  %.cast = bitcast i64 %retval.0.i to double
  %call9 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i64 %.phi.i389744, i64 %.sink, i64 %retval.0.i, double %.cast)
  %inc = add nuw nsw i32 %i.0884, 1
  %exitcond = icmp eq i32 %inc, 36
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %__non_const_wrapper__.33.exit
  %call10 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %add576)
  ret i32 %add576
}

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #2

; Function Attrs: noinline norecurse nounwind
define void @float_raise.v0.C.c.c(i32 %flags) local_unnamed_addr #3 {
entry:
  %0 = load i32, i32* @float_exception_flags, align 4
  %or = or i32 %0, %flags
  store i32 %or, i32* @float_exception_flags, align 4
  ret void
}

; Function Attrs: noinline norecurse nounwind readnone
define internal fastcc i64 @estimateDiv128To64.v0.C.c.c(i64 %a0, i64 %b) unnamed_addr #4 {
entry:
  %cmp = icmp ugt i64 %b, %a0
  br i1 %cmp, label %if.end, label %return

if.end:                                           ; preds = %entry
  %shr = lshr i64 %b, 32
  %shl = shl nuw i64 %shr, 32
  %cmp1 = icmp ugt i64 %shl, %a0
  br i1 %cmp1, label %cond.false, label %cond.end

cond.false:                                       ; preds = %if.end
  %div = udiv i64 %a0, %shr
  %shl2 = shl i64 %div, 32
  br label %cond.end

cond.end:                                         ; preds = %if.end, %cond.false
  %cond = phi i64 [ %shl2, %cond.false ], [ -4294967296, %if.end ]
  %shr3.i = lshr exact i64 %cond, 32
  %conv7.i = and i64 %b, 4294967295
  %mul9.i = mul nuw i64 %shr3.i, %conv7.i
  %mul15.i = mul nuw i64 %shr3.i, %shr
  %shr18.i = lshr i64 %mul9.i, 32
  %shl21.i = shl i64 %mul9.i, 32
  %sub.i = sub i64 0, %shl21.i
  %cmp.i = icmp ne i64 %shl21.i, 0
  %conv2.i.neg = sext i1 %cmp.i to i64
  %add20.i.neg = sub i64 %a0, %mul15.i
  %sub1.i = sub i64 %add20.i.neg, %shr18.i
  %sub3.i = add i64 %sub1.i, %conv2.i.neg
  %cmp31 = icmp slt i64 %sub3.i, 0
  br i1 %cmp31, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %cond.end
  %shl4 = shl i64 %b, 32
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %z.04 = phi i64 [ %cond, %while.body.lr.ph ], [ %sub, %while.body ]
  %rem0.03 = phi i64 [ %sub3.i, %while.body.lr.ph ], [ %add3.i, %while.body ]
  %rem1.02 = phi i64 [ %sub.i, %while.body.lr.ph ], [ %add.i, %while.body ]
  %sub = add i64 %z.04, -4294967296
  %add.i = add i64 %rem1.02, %shl4
  %add1.i = add i64 %rem0.03, %shr
  %cmp.i2 = icmp ult i64 %add.i, %rem1.02
  %conv2.i4 = zext i1 %cmp.i2 to i64
  %add3.i = add i64 %add1.i, %conv2.i4
  %cmp3 = icmp slt i64 %add3.i, 0
  br i1 %cmp3, label %while.body, label %while.end.loopexit

while.end.loopexit:                               ; preds = %while.body
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %cond.end
  %rem1.0.lcssa = phi i64 [ %sub.i, %cond.end ], [ %add.i, %while.end.loopexit ]
  %rem0.0.lcssa = phi i64 [ %sub3.i, %cond.end ], [ %add3.i, %while.end.loopexit ]
  %z.0.lcssa = phi i64 [ %cond, %cond.end ], [ %sub, %while.end.loopexit ]
  %shl5 = shl i64 %rem0.0.lcssa, 32
  %shr6 = lshr i64 %rem1.0.lcssa, 32
  %or = or i64 %shl5, %shr6
  %cmp8 = icmp ugt i64 %shl, %or
  br i1 %cmp8, label %cond.false10, label %cond.end12

cond.false10:                                     ; preds = %while.end
  %div11 = udiv i64 %or, %shr
  br label %cond.end12

cond.end12:                                       ; preds = %while.end, %cond.false10
  %cond13 = phi i64 [ %div11, %cond.false10 ], [ 4294967295, %while.end ]
  %or14 = or i64 %cond13, %z.0.lcssa
  br label %return

return:                                           ; preds = %entry, %cond.end12
  %retval.0 = phi i64 [ %or14, %cond.end12 ], [ -1, %entry ]
  ret i64 %retval.0
}

; Function Attrs: noinline norecurse nounwind
define internal fastcc i64 @roundAndPackFloat64.v0.C.c.c(i32 %zSign, i32 %zExp, i64 %zSig) unnamed_addr #3 {
entry:
  %zSig.addr = alloca i64, align 8
  store i64 %zSig, i64* %zSig.addr, align 8
  %0 = trunc i64 %zSig to i32
  %conv17 = and i32 %0, 1023
  %conv19 = and i32 %zExp, 65535
  %cmp20 = icmp ugt i32 %conv19, 2044
  br i1 %cmp20, label %if.then22, label %if.end47

if.then22:                                        ; preds = %entry
  %cmp23 = icmp sgt i32 %zExp, 2045
  br i1 %cmp23, label %if.then30, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then22
  %cmp25 = icmp eq i32 %zExp, 2045
  br i1 %cmp25, label %land.lhs.true, label %if.end34

land.lhs.true:                                    ; preds = %lor.lhs.false
  %add = add i64 %zSig, 512
  %cmp28 = icmp slt i64 %add, 0
  br i1 %cmp28, label %if.then30, label %if.end47

if.then30:                                        ; preds = %land.lhs.true, %if.then22
  tail call void @float_raise.v0.C.c.c(i32 9)
  %call.c.c = tail call i64 @packFloat64.v0.C.c.c(i32 %zSign, i32 2047, i64 0)
  br label %return

if.end34:                                         ; preds = %lor.lhs.false
  %cmp35 = icmp slt i32 %zExp, 0
  br i1 %cmp35, label %if.then37, label %if.end47

if.then37:                                        ; preds = %if.end34
  %sub38 = sub nsw i32 0, %zExp
  call void @shift64RightJamming.v0.C.c.c(i64 %zSig, i32 %sub38, i64* nonnull %zSig.addr)
  %1 = load i64, i64* %zSig.addr, align 8
  %2 = trunc i64 %1 to i32
  %conv40 = and i32 %2, 1023
  %tobool43 = icmp eq i32 %conv40, 0
  br i1 %tobool43, label %if.end50, label %if.end47.thread5

if.end47.thread5:                                 ; preds = %if.then37
  tail call void @float_raise.v0.C.c.c(i32 4)
  br label %if.then49

if.end47:                                         ; preds = %land.lhs.true, %if.end34, %entry
  %zExp.addr.1 = phi i32 [ %zExp, %entry ], [ %zExp, %if.end34 ], [ 2045, %land.lhs.true ]
  %tobool48 = icmp eq i32 %conv17, 0
  br i1 %tobool48, label %if.end50, label %if.then49

if.then49:                                        ; preds = %if.end47.thread5, %if.end47
  %3 = phi i64 [ %1, %if.end47.thread5 ], [ %zSig, %if.end47 ]
  %roundBits.18 = phi i32 [ %conv40, %if.end47.thread5 ], [ %conv17, %if.end47 ]
  %zExp.addr.17 = phi i32 [ 0, %if.end47.thread5 ], [ %zExp.addr.1, %if.end47 ]
  %4 = load i32, i32* @float_exception_flags, align 4
  %or = or i32 %4, 1
  store i32 %or, i32* @float_exception_flags, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.then37, %if.end47, %if.then49
  %5 = phi i64 [ %zSig, %if.end47 ], [ %3, %if.then49 ], [ %1, %if.then37 ]
  %roundBits.14 = phi i32 [ 0, %if.end47 ], [ %roundBits.18, %if.then49 ], [ 0, %if.then37 ]
  %zExp.addr.13 = phi i32 [ %zExp.addr.1, %if.end47 ], [ %zExp.addr.17, %if.then49 ], [ 0, %if.then37 ]
  %add52 = add i64 %5, 512
  %shr = lshr i64 %add52, 10
  %cmp53 = icmp eq i32 %roundBits.14, 512
  %conv54 = zext i1 %cmp53 to i64
  %neg = xor i64 %conv54, -1
  %and57 = and i64 %shr, %neg
  store i64 %and57, i64* %zSig.addr, align 8
  %cmp58 = icmp eq i64 %and57, 0
  %.zExp.addr.1 = select i1 %cmp58, i32 0, i32 %zExp.addr.13
  %call62.c.c = tail call i64 @packFloat64.v0.C.c.c(i32 %zSign, i32 %.zExp.addr.1, i64 %and57)
  br label %return

return:                                           ; preds = %if.end50, %if.then30
  %retval.0 = phi i64 [ %call.c.c, %if.then30 ], [ %call62.c.c, %if.end50 ]
  ret i64 %retval.0
}

; Function Attrs: noinline norecurse nounwind
define i64 @float64_mul.v0.C.c.c(i64 %a, i64 %b) local_unnamed_addr #3 {
entry:
  %call.c.c = tail call i64 @extractFloat64Frac.v0.C.c.c(i64 %a)
  %call1.c.c = tail call i32 @extractFloat64Exp.v0.C.c.c(i64 %a)
  %call2.c.c = tail call i32 @extractFloat64Sign.v0.C.c.c(i64 %a)
  %call3.c.c = tail call i64 @extractFloat64Frac.v0.C.c.c(i64 %b)
  %call4.c.c = tail call i32 @extractFloat64Exp.v0.C.c.c(i64 %b)
  %call5.c.c = tail call i32 @extractFloat64Sign.v0.C.c.c(i64 %b)
  %xor = xor i32 %call5.c.c, %call2.c.c
  %cmp = icmp eq i32 %call1.c.c, 2047
  br i1 %cmp, label %if.then, label %if.end15

if.then:                                          ; preds = %entry
  %tobool = icmp eq i64 %call.c.c, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then8

lor.lhs.false:                                    ; preds = %if.then
  %cmp6 = icmp eq i32 %call4.c.c, 2047
  %tobool7 = icmp ne i64 %call3.c.c, 0
  %or.cond = and i1 %tobool7, %cmp6
  br i1 %or.cond, label %if.then8, label %if.end

if.then8:                                         ; preds = %if.then, %lor.lhs.false
  %call9.c.c = tail call fastcc i64 @propagateFloat64NaN.v0.C.c.c(i64 %a, i64 %b)
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %conv = sext i32 %call4.c.c to i64
  %or = or i64 %conv, %call3.c.c
  %cmp10 = icmp eq i64 %or, 0
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end
  tail call void @float_raise.v0.C.c.c(i32 16)
  br label %return

if.end13:                                         ; preds = %if.end
  %call14.c.c = tail call i64 @packFloat64.v0.C.c.c(i32 %xor, i32 2047, i64 0)
  br label %return

if.end15:                                         ; preds = %entry
  %cmp16 = icmp eq i32 %call4.c.c, 2047
  br i1 %cmp16, label %if.then18, label %if.end30

if.then18:                                        ; preds = %if.end15
  %tobool19 = icmp eq i64 %call3.c.c, 0
  br i1 %tobool19, label %if.end22, label %if.then20

if.then20:                                        ; preds = %if.then18
  %call21.c.c = tail call fastcc i64 @propagateFloat64NaN.v0.C.c.c(i64 %a, i64 %b)
  br label %return

if.end22:                                         ; preds = %if.then18
  %conv23 = sext i32 %call1.c.c to i64
  %or24 = or i64 %conv23, %call.c.c
  %cmp25 = icmp eq i64 %or24, 0
  br i1 %cmp25, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end22
  tail call void @float_raise.v0.C.c.c(i32 16)
  br label %return

if.end28:                                         ; preds = %if.end22
  %call29.c.c = tail call i64 @packFloat64.v0.C.c.c(i32 %xor, i32 2047, i64 0)
  br label %return

if.end30:                                         ; preds = %if.end15
  %cmp31 = icmp eq i32 %call1.c.c, 0
  br i1 %cmp31, label %if.then33, label %if.end39

if.then33:                                        ; preds = %if.end30
  %cmp34 = icmp eq i64 %call.c.c, 0
  br i1 %cmp34, label %if.then36, label %if.end38

if.then36:                                        ; preds = %if.then33
  %call37.c.c = tail call i64 @packFloat64.v0.C.c.c(i32 %xor, i32 0, i64 0)
  br label %return

if.end38:                                         ; preds = %if.then33
  %cmp.i = icmp ult i64 %call.c.c, 4294967296
  %shiftCount.0.i = select i1 %cmp.i, i32 32, i32 0
  %shr.i = lshr i64 %call.c.c, 32
  %a.addr.0.i = select i1 %cmp.i, i64 %call.c.c, i64 %shr.i
  %conv.i = trunc i64 %a.addr.0.i to i32
  %cmp.i2 = icmp ult i32 %conv.i, 65536
  %shl.i3 = shl i32 %conv.i, 16
  %. = select i1 %cmp.i2, i32 16, i32 0
  %shl.i3.conv.i = select i1 %cmp.i2, i32 %shl.i3, i32 %conv.i
  %cmp1.i = icmp ult i32 %shl.i3.conv.i, 16777216
  %shl4.i = shl i32 %shl.i3.conv.i, 8
  %a.addr.1.i = select i1 %cmp1.i, i32 %shl4.i, i32 %shl.i3.conv.i
  %add3.i = or i32 %., 8
  %shiftCount.1.i = select i1 %cmp1.i, i32 %add3.i, i32 %.
  %shr.i7 = lshr i32 %a.addr.1.i, 24
  %idxprom.i = zext i32 %shr.i7 to i64
  %arrayidx.i = getelementptr inbounds [256 x i32], [256 x i32]* @countLeadingZeros32.countLeadingZerosHigh, i64 0, i64 %idxprom.i
  %0 = load i32, i32* %arrayidx.i, align 4
  %add6.i = or i32 %shiftCount.1.i, %shiftCount.0.i
  %add1.i = add i32 %add6.i, %0
  %sub.i = add nsw i32 %add1.i, -11
  %sh_prom.i = zext i32 %sub.i to i64
  %shl.i = shl i64 %call.c.c, %sh_prom.i
  %sub1.i = sub i32 12, %add1.i
  br label %if.end39

if.end39:                                         ; preds = %if.end38, %if.end30
  %aSig.0 = phi i64 [ %shl.i, %if.end38 ], [ %call.c.c, %if.end30 ]
  %aExp.0 = phi i32 [ %sub1.i, %if.end38 ], [ %call1.c.c, %if.end30 ]
  %cmp40 = icmp eq i32 %call4.c.c, 0
  br i1 %cmp40, label %if.then42, label %if.end48

if.then42:                                        ; preds = %if.end39
  %cmp43 = icmp eq i64 %call3.c.c, 0
  br i1 %cmp43, label %if.then45, label %if.end47

if.then45:                                        ; preds = %if.then42
  %call46.c.c = tail call i64 @packFloat64.v0.C.c.c(i32 %xor, i32 0, i64 0)
  br label %return

if.end47:                                         ; preds = %if.then42
  %cmp.i12 = icmp ult i64 %call3.c.c, 4294967296
  %shiftCount.0.i16 = select i1 %cmp.i12, i32 32, i32 0
  %shr.i14 = lshr i64 %call3.c.c, 32
  %a.addr.0.i17 = select i1 %cmp.i12, i64 %call3.c.c, i64 %shr.i14
  %conv.i18 = trunc i64 %a.addr.0.i17 to i32
  %cmp.i23 = icmp ult i32 %conv.i18, 65536
  %shl.i24 = shl i32 %conv.i18, 16
  %.44 = select i1 %cmp.i23, i32 16, i32 0
  %shl.i24.conv.i18 = select i1 %cmp.i23, i32 %shl.i24, i32 %conv.i18
  %cmp1.i28 = icmp ult i32 %shl.i24.conv.i18, 16777216
  %shl4.i31 = shl i32 %shl.i24.conv.i18, 8
  %a.addr.1.i34 = select i1 %cmp1.i28, i32 %shl4.i31, i32 %shl.i24.conv.i18
  %add3.i30 = or i32 %.44, 8
  %shiftCount.1.i33 = select i1 %cmp1.i28, i32 %add3.i30, i32 %.44
  %shr.i35 = lshr i32 %a.addr.1.i34, 24
  %idxprom.i36 = zext i32 %shr.i35 to i64
  %arrayidx.i37 = getelementptr inbounds [256 x i32], [256 x i32]* @countLeadingZeros32.countLeadingZerosHigh, i64 0, i64 %idxprom.i36
  %1 = load i32, i32* %arrayidx.i37, align 4
  %add6.i38 = or i32 %shiftCount.1.i33, %shiftCount.0.i16
  %add1.i20 = add i32 %add6.i38, %1
  %sub.i8 = add nsw i32 %add1.i20, -11
  %sh_prom.i9 = zext i32 %sub.i8 to i64
  %shl.i10 = shl i64 %call3.c.c, %sh_prom.i9
  %sub1.i11 = sub i32 12, %add1.i20
  br label %if.end48

if.end48:                                         ; preds = %if.end47, %if.end39
  %bSig.0 = phi i64 [ %shl.i10, %if.end47 ], [ %call3.c.c, %if.end39 ]
  %bExp.0 = phi i32 [ %sub1.i11, %if.end47 ], [ %call4.c.c, %if.end39 ]
  %add = add nsw i32 %bExp.0, %aExp.0
  %or49 = shl i64 %aSig.0, 10
  %or50 = shl i64 %bSig.0, 11
  %2 = lshr i64 %aSig.0, 22
  %3 = lshr i64 %bSig.0, 21
  %conv5.i = and i64 %or49, 4294966272
  %conv6.i = and i64 %or50, 4294965248
  %mul.i = mul nuw i64 %conv6.i, %conv5.i
  %conv4.i = and i64 %3, 2147483647
  %conv8.i = or i64 %conv4.i, 2147483648
  %mul9.i = mul nuw i64 %conv8.i, %conv5.i
  %conv1.i = and i64 %2, 3221225471
  %conv10.i = or i64 %conv1.i, 1073741824
  %mul12.i = mul nuw i64 %conv6.i, %conv10.i
  %mul15.i = mul nuw i64 %conv8.i, %conv10.i
  %add.i = add i64 %mul9.i, %mul12.i
  %cmp.i42 = icmp ult i64 %add.i, %mul12.i
  %conv17.i = zext i1 %cmp.i42 to i64
  %shl.i43 = shl nuw nsw i64 %conv17.i, 32
  %shr18.i = lshr i64 %add.i, 32
  %add19.i = or i64 %shl.i43, %shr18.i
  %add20.i = add i64 %add19.i, %mul15.i
  %shl21.i = shl i64 %add.i, 32
  %add22.i = add i64 %shl21.i, %mul.i
  %cmp23.i = icmp ult i64 %add22.i, %shl21.i
  %conv25.i = zext i1 %cmp23.i to i64
  %add26.i = add i64 %add20.i, %conv25.i
  %cmp52 = icmp ne i64 %add22.i, 0
  %conv54 = zext i1 %cmp52 to i64
  %or55 = or i64 %add26.i, %conv54
  %shl56.mask = and i64 %add26.i, 4611686018427387904
  %cmp57 = icmp eq i64 %shl56.mask, 0
  %shl56.mask.lobit = lshr exact i64 %shl56.mask, 62
  %4 = xor i64 %shl56.mask.lobit, 1
  %zSig0.0 = shl i64 %or55, %4
  %zExp.0.v = select i1 %cmp57, i32 -1024, i32 -1023
  %zExp.0 = add i32 %add, %zExp.0.v
  %call62.c.c = tail call fastcc i64 @roundAndPackFloat64.v0.C.c.c(i32 %xor, i32 %zExp.0, i64 %zSig0.0)
  br label %return

return:                                           ; preds = %if.end48, %if.then45, %if.then36, %if.end28, %if.then27, %if.then20, %if.end13, %if.then12, %if.then8
  %retval.0 = phi i64 [ %call9.c.c, %if.then8 ], [ 9223372036854775807, %if.then12 ], [ %call14.c.c, %if.end13 ], [ %call21.c.c, %if.then20 ], [ 9223372036854775807, %if.then27 ], [ %call29.c.c, %if.end28 ], [ %call37.c.c, %if.then36 ], [ %call46.c.c, %if.then45 ], [ %call62.c.c, %if.end48 ]
  ret i64 %retval.0
}

; Function Attrs: noinline norecurse nounwind
define internal fastcc i64 @propagateFloat64NaN.v0.C.c.c(i64 %a, i64 %b) unnamed_addr #3 {
entry:
  %and.i = and i64 %a, 9221120237041090560
  %cmp.i1 = icmp eq i64 %and.i, 9218868437227405312
  %and1.i = and i64 %a, 2251799813685247
  %tobool.i = icmp ne i64 %and1.i, 0
  %0 = and i1 %cmp.i1, %tobool.i
  %shl.i2 = shl i64 %b, 1
  %cmp.i3 = icmp ugt i64 %shl.i2, -9007199254740992
  %and.i6 = and i64 %b, 9221120237041090560
  %cmp.i7 = icmp eq i64 %and.i6, 9218868437227405312
  %and1.i8 = and i64 %b, 2251799813685247
  %tobool.i9 = icmp ne i64 %and1.i8, 0
  %1 = and i1 %cmp.i7, %tobool.i9
  %or = or i64 %a, 2251799813685248
  %or4 = or i64 %b, 2251799813685248
  %or51 = or i1 %0, %1
  br i1 %or51, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @float_raise.v0.C.c.c(i32 16)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %or4.or = select i1 %cmp.i3, i64 %or4, i64 %or
  %cond14 = select i1 %0, i64 %or, i64 %or4.or
  %cond16 = select i1 %1, i64 %or4, i64 %cond14
  ret i64 %cond16
}

; Function Attrs: noinline norecurse nounwind
define i64 @float64_div.v0.C.c.c(i64 %a, i64 %b) local_unnamed_addr #3 {
entry:
  %call.c.c = tail call i64 @extractFloat64Frac.v0.C.c.c(i64 %a)
  %call1.c.c = tail call i32 @extractFloat64Exp.v0.C.c.c(i64 %a)
  %call2.c.c = tail call i32 @extractFloat64Sign.v0.C.c.c(i64 %a)
  %call3.c.c = tail call i64 @extractFloat64Frac.v0.C.c.c(i64 %b)
  %call4.c.c = tail call i32 @extractFloat64Exp.v0.C.c.c(i64 %b)
  %call5.c.c = tail call i32 @extractFloat64Sign.v0.C.c.c(i64 %b)
  %xor = xor i32 %call5.c.c, %call2.c.c
  %cmp = icmp eq i32 %call1.c.c, 2047
  br i1 %cmp, label %if.then, label %if.end16

if.then:                                          ; preds = %entry
  %tobool = icmp eq i64 %call.c.c, 0
  br i1 %tobool, label %if.end, label %if.then6

if.then6:                                         ; preds = %if.then
  %call7.c.c = tail call fastcc i64 @propagateFloat64NaN.v0.C.c.c(i64 %a, i64 %b)
  br label %return

if.end:                                           ; preds = %if.then
  %cmp8 = icmp eq i32 %call4.c.c, 2047
  br i1 %cmp8, label %if.then9, label %if.end14

if.then9:                                         ; preds = %if.end
  %tobool10 = icmp eq i64 %call3.c.c, 0
  br i1 %tobool10, label %if.end13, label %if.then11

if.then11:                                        ; preds = %if.then9
  %call12.c.c = tail call fastcc i64 @propagateFloat64NaN.v0.C.c.c(i64 %a, i64 %b)
  br label %return

if.end13:                                         ; preds = %if.then9
  tail call void @float_raise.v0.C.c.c(i32 16)
  br label %return

if.end14:                                         ; preds = %if.end
  %call15.c.c = tail call i64 @packFloat64.v0.C.c.c(i32 %xor, i32 2047, i64 0)
  br label %return

if.end16:                                         ; preds = %entry
  switch i32 %call4.c.c, label %if.end35 [
    i32 2047, label %if.then18
    i32 0, label %if.then26
  ]

if.then18:                                        ; preds = %if.end16
  %tobool19 = icmp eq i64 %call3.c.c, 0
  br i1 %tobool19, label %if.end22, label %if.then20

if.then20:                                        ; preds = %if.then18
  %call21.c.c = tail call fastcc i64 @propagateFloat64NaN.v0.C.c.c(i64 %a, i64 %b)
  br label %return

if.end22:                                         ; preds = %if.then18
  %call23.c.c = tail call i64 @packFloat64.v0.C.c.c(i32 %xor, i32 0, i64 0)
  br label %return

if.then26:                                        ; preds = %if.end16
  %cmp27 = icmp eq i64 %call3.c.c, 0
  br i1 %cmp27, label %if.then28, label %if.end34

if.then28:                                        ; preds = %if.then26
  %conv = sext i32 %call1.c.c to i64
  %or = or i64 %conv, %call.c.c
  %cmp29 = icmp eq i64 %or, 0
  br i1 %cmp29, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.then28
  tail call void @float_raise.v0.C.c.c(i32 16)
  br label %return

if.end32:                                         ; preds = %if.then28
  tail call void @float_raise.v0.C.c.c(i32 2)
  %call33.c.c = tail call i64 @packFloat64.v0.C.c.c(i32 %xor, i32 2047, i64 0)
  br label %return

if.end34:                                         ; preds = %if.then26
  %cmp.i = icmp ult i64 %call3.c.c, 4294967296
  %shr.i = lshr i64 %call3.c.c, 32
  %shiftCount.0.i = select i1 %cmp.i, i32 32, i32 0
  %a.addr.0.i = select i1 %cmp.i, i64 %call3.c.c, i64 %shr.i
  %conv.i = trunc i64 %a.addr.0.i to i32
  %cmp.i.i = icmp ult i32 %conv.i, 65536
  %shl.i.i = shl i32 %conv.i, 16
  %..i = select i1 %cmp.i.i, i32 16, i32 0
  %shl.i.conv.i = select i1 %cmp.i.i, i32 %shl.i.i, i32 %conv.i
  %cmp1.i.i = icmp ult i32 %shl.i.conv.i, 16777216
  %add3.i.i = or i32 %..i, 8
  %shl4.i.i = shl i32 %shl.i.conv.i, 8
  %shiftCount.1.i.i = select i1 %cmp1.i.i, i32 %add3.i.i, i32 %..i
  %a.addr.1.i.i = select i1 %cmp1.i.i, i32 %shl4.i.i, i32 %shl.i.conv.i
  %shr.i.i = lshr i32 %a.addr.1.i.i, 24
  %idxprom.i.i = zext i32 %shr.i.i to i64
  %arrayidx.i.i = getelementptr inbounds [256 x i32], [256 x i32]* @countLeadingZeros32.countLeadingZerosHigh, i64 0, i64 %idxprom.i.i
  %0 = load i32, i32* %arrayidx.i.i, align 4
  %add6.i.i = or i32 %shiftCount.1.i.i, %shiftCount.0.i
  %add1.i = add i32 %add6.i.i, %0
  %sub.i = add nsw i32 %add1.i, -11
  %sh_prom.i = zext i32 %sub.i to i64
  %shl.i = shl i64 %call3.c.c, %sh_prom.i
  %sub1.i = sub i32 12, %add1.i
  br label %if.end35

if.end35:                                         ; preds = %if.end16, %if.end34
  %bSig.0 = phi i64 [ %shl.i, %if.end34 ], [ %call3.c.c, %if.end16 ]
  %bExp.0 = phi i32 [ %sub1.i, %if.end34 ], [ %call4.c.c, %if.end16 ]
  %cmp36 = icmp eq i32 %call1.c.c, 0
  br i1 %cmp36, label %if.then38, label %if.end44

if.then38:                                        ; preds = %if.end35
  %cmp39 = icmp eq i64 %call.c.c, 0
  br i1 %cmp39, label %if.then41, label %if.end43

if.then41:                                        ; preds = %if.then38
  %call42.c.c = tail call i64 @packFloat64.v0.C.c.c(i32 %xor, i32 0, i64 0)
  br label %return

if.end43:                                         ; preds = %if.then38
  %cmp.i5 = icmp ult i64 %call.c.c, 4294967296
  %shr.i6 = lshr i64 %call.c.c, 32
  %shiftCount.0.i7 = select i1 %cmp.i5, i32 32, i32 0
  %a.addr.0.i8 = select i1 %cmp.i5, i64 %call.c.c, i64 %shr.i6
  %conv.i9 = trunc i64 %a.addr.0.i8 to i32
  %cmp.i.i10 = icmp ult i32 %conv.i9, 65536
  %shl.i.i11 = shl i32 %conv.i9, 16
  %..i12 = select i1 %cmp.i.i10, i32 16, i32 0
  %shl.i.conv.i13 = select i1 %cmp.i.i10, i32 %shl.i.i11, i32 %conv.i9
  %cmp1.i.i14 = icmp ult i32 %shl.i.conv.i13, 16777216
  %add3.i.i15 = or i32 %..i12, 8
  %shl4.i.i16 = shl i32 %shl.i.conv.i13, 8
  %shiftCount.1.i.i17 = select i1 %cmp1.i.i14, i32 %add3.i.i15, i32 %..i12
  %a.addr.1.i.i18 = select i1 %cmp1.i.i14, i32 %shl4.i.i16, i32 %shl.i.conv.i13
  %shr.i.i19 = lshr i32 %a.addr.1.i.i18, 24
  %idxprom.i.i20 = zext i32 %shr.i.i19 to i64
  %arrayidx.i.i21 = getelementptr inbounds [256 x i32], [256 x i32]* @countLeadingZeros32.countLeadingZerosHigh, i64 0, i64 %idxprom.i.i20
  %1 = load i32, i32* %arrayidx.i.i21, align 4
  %add6.i.i22 = or i32 %shiftCount.1.i.i17, %shiftCount.0.i7
  %add1.i23 = add i32 %add6.i.i22, %1
  %sub.i1 = add nsw i32 %add1.i23, -11
  %sh_prom.i2 = zext i32 %sub.i1 to i64
  %shl.i3 = shl i64 %call.c.c, %sh_prom.i2
  %sub1.i4 = sub i32 12, %add1.i23
  br label %if.end44

if.end44:                                         ; preds = %if.end43, %if.end35
  %aSig.0 = phi i64 [ %shl.i3, %if.end43 ], [ %call.c.c, %if.end35 ]
  %aExp.0 = phi i32 [ %sub1.i4, %if.end43 ], [ %call1.c.c, %if.end35 ]
  %sub = sub i32 %aExp.0, %bExp.0
  %or45 = shl i64 %aSig.0, 10
  %shl = or i64 %or45, 4611686018427387904
  %or46 = shl i64 %bSig.0, 11
  %shl47 = or i64 %or46, -9223372036854775808
  %add48 = shl i64 %shl, 1
  %cmp49 = icmp ugt i64 %shl47, %add48
  %not.cmp49 = xor i1 %cmp49, true
  %shr = zext i1 %not.cmp49 to i64
  %aSig.1 = lshr exact i64 %shl, %shr
  %zExp.0.v = select i1 %cmp49, i32 1021, i32 1022
  %zExp.0 = add i32 %sub, %zExp.0.v
  %call53.c.c = tail call fastcc i64 @estimateDiv128To64.v0.C.c.c(i64 %aSig.1, i64 %shl47)
  %and = and i64 %call53.c.c, 511
  %cmp54 = icmp ult i64 %and, 3
  br i1 %cmp54, label %if.then56, label %if.end63

if.then56:                                        ; preds = %if.end44
  %shr.i25 = lshr i64 %shl47, 32
  %shr3.i = lshr i64 %call53.c.c, 32
  %conv5.i = and i64 %or46, 4294965248
  %conv6.i = and i64 %call53.c.c, 4294967295
  %mul.i = mul nuw i64 %conv6.i, %conv5.i
  %mul9.i = mul nuw i64 %shr3.i, %conv5.i
  %mul12.i = mul nuw i64 %conv6.i, %shr.i25
  %mul15.i = mul nuw i64 %shr3.i, %shr.i25
  %add.i = add i64 %mul9.i, %mul12.i
  %cmp.i26 = icmp ult i64 %add.i, %mul12.i
  %conv17.i = zext i1 %cmp.i26 to i64
  %shl.i27 = shl nuw nsw i64 %conv17.i, 32
  %shr18.i = lshr i64 %add.i, 32
  %add19.i = or i64 %shl.i27, %shr18.i
  %shl21.i = shl i64 %add.i, 32
  %add22.i = add i64 %shl21.i, %mul.i
  %cmp23.i = icmp ult i64 %add22.i, %shl21.i
  %sub.i28 = sub i64 0, %add22.i
  %conv25.i.neg = sext i1 %cmp23.i to i64
  %cmp.i30 = icmp ne i64 %add22.i, 0
  %conv2.i32.neg = sext i1 %cmp.i30 to i64
  %add20.i.neg = sub i64 %aSig.1, %mul15.i
  %add26.i.neg = sub i64 %add20.i.neg, %add19.i
  %sub1.i29 = add i64 %add26.i.neg, %conv25.i.neg
  %sub3.i = add i64 %sub1.i29, %conv2.i32.neg
  %cmp571 = icmp slt i64 %sub3.i, 0
  br i1 %cmp571, label %while.body.preheader, label %while.end

while.body.preheader:                             ; preds = %if.then56
  br label %while.body

while.body:                                       ; preds = %while.body.preheader, %while.body
  %zSig.04 = phi i64 [ %dec, %while.body ], [ %call53.c.c, %while.body.preheader ]
  %rem0.03 = phi i64 [ %add3.i, %while.body ], [ %sub3.i, %while.body.preheader ]
  %rem1.02 = phi i64 [ %add.i33, %while.body ], [ %sub.i28, %while.body.preheader ]
  %dec = add i64 %zSig.04, -1
  %add.i33 = add i64 %rem1.02, %shl47
  %cmp.i34 = icmp ult i64 %add.i33, %rem1.02
  %conv2.i36 = zext i1 %cmp.i34 to i64
  %add3.i = add i64 %conv2.i36, %rem0.03
  %cmp57 = icmp slt i64 %add3.i, 0
  br i1 %cmp57, label %while.body, label %while.end.loopexit

while.end.loopexit:                               ; preds = %while.body
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %if.then56
  %rem1.0.lcssa = phi i64 [ %sub.i28, %if.then56 ], [ %add.i33, %while.end.loopexit ]
  %zSig.0.lcssa = phi i64 [ %call53.c.c, %if.then56 ], [ %dec, %while.end.loopexit ]
  %cmp59 = icmp ne i64 %rem1.0.lcssa, 0
  %conv61 = zext i1 %cmp59 to i64
  %or62 = or i64 %zSig.0.lcssa, %conv61
  br label %if.end63

if.end63:                                         ; preds = %while.end, %if.end44
  %zSig.1 = phi i64 [ %or62, %while.end ], [ %call53.c.c, %if.end44 ]
  %call64.c.c = tail call fastcc i64 @roundAndPackFloat64.v0.C.c.c(i32 %xor, i32 %zExp.0, i64 %zSig.1)
  br label %return

return:                                           ; preds = %if.end63, %if.then41, %if.end32, %if.then31, %if.end22, %if.then20, %if.end14, %if.end13, %if.then11, %if.then6
  %retval.0 = phi i64 [ %call7.c.c, %if.then6 ], [ %call12.c.c, %if.then11 ], [ 9223372036854775807, %if.end13 ], [ %call15.c.c, %if.end14 ], [ %call21.c.c, %if.then20 ], [ %call23.c.c, %if.end22 ], [ 9223372036854775807, %if.then31 ], [ %call33.c.c, %if.end32 ], [ %call42.c.c, %if.then41 ], [ %call64.c.c, %if.end63 ]
  ret i64 %retval.0
}

; Function Attrs: noinline norecurse nounwind readnone
define i64 @packFloat64.v0.C.c.c(i32 %zSign, i32 %zExp, i64 %zSig) local_unnamed_addr #4 {
entry:
  %conv2 = zext i32 %zSign to i64
  %shl = shl i64 %conv2, 63
  %conv13 = zext i32 %zExp to i64
  %shl2 = shl i64 %conv13, 52
  %add = add i64 %shl, %zSig
  %add3 = add i64 %add, %shl2
  ret i64 %add3
}

; Function Attrs: noinline norecurse nounwind readnone
define i64 @extractFloat64Frac.v0.C.c.c(i64 %a) local_unnamed_addr #4 {
entry:
  %and = and i64 %a, 4503599627370495
  ret i64 %and
}

; Function Attrs: noinline norecurse nounwind readnone
define i32 @extractFloat64Exp.v0.C.c.c(i64 %a) local_unnamed_addr #4 {
entry:
  %shr = lshr i64 %a, 52
  %0 = trunc i64 %shr to i32
  %conv = and i32 %0, 2047
  ret i32 %conv
}

; Function Attrs: noinline norecurse nounwind readnone
define i32 @extractFloat64Sign.v0.C.c.c(i64 %a) local_unnamed_addr #4 {
entry:
  %shr = lshr i64 %a, 63
  %conv = trunc i64 %shr to i32
  ret i32 %conv
}

; Function Attrs: noinline norecurse nounwind
define internal fastcc i64 @subFloat64Sigs.v0.C.c.c(i64 %a, i64 %b, i32 %zSign) unnamed_addr #3 {
entry:
  %aSig = alloca i64, align 8
  %bSig = alloca i64, align 8
  %call.c.c = tail call i64 @extractFloat64Frac.v0.C.c.c(i64 %a)
  %call1.c.c = tail call i32 @extractFloat64Exp.v0.C.c.c(i64 %a)
  %call2.c.c = tail call i64 @extractFloat64Frac.v0.C.c.c(i64 %b)
  %call3.c.c = tail call i32 @extractFloat64Exp.v0.C.c.c(i64 %b)
  %sub = sub nsw i32 %call1.c.c, %call3.c.c
  %shl = shl i64 %call.c.c, 10
  store i64 %shl, i64* %aSig, align 8
  %shl4 = shl i64 %call2.c.c, 10
  store i64 %shl4, i64* %bSig, align 8
  %cmp = icmp sgt i32 %sub, 0
  br i1 %cmp, label %aExpBigger, label %if.end

if.end:                                           ; preds = %entry
  %cmp5 = icmp slt i32 %sub, 0
  br i1 %cmp5, label %bExpBigger, label %if.end7

if.end7:                                          ; preds = %if.end
  switch i32 %call1.c.c, label %if.end16 [
    i32 2047, label %if.then9
    i32 0, label %if.then15
  ]

if.then9:                                         ; preds = %if.end7
  %or = or i64 %shl, %shl4
  %tobool = icmp eq i64 %or, 0
  br i1 %tobool, label %if.end12, label %if.then10

if.then10:                                        ; preds = %if.then9
  %call11.c.c = tail call fastcc i64 @propagateFloat64NaN.v0.C.c.c(i64 %a, i64 %b)
  br label %return

if.end12:                                         ; preds = %if.then9
  tail call void @float_raise.v0.C.c.c(i32 16)
  br label %return

if.then15:                                        ; preds = %if.end7
  br label %if.end16

if.end16:                                         ; preds = %if.end7, %if.then15
  %bExp.0 = phi i32 [ 1, %if.then15 ], [ %call3.c.c, %if.end7 ]
  %aExp.0 = phi i32 [ 1, %if.then15 ], [ %call1.c.c, %if.end7 ]
  %cmp17 = icmp ult i64 %shl4, %shl
  br i1 %cmp17, label %aBigger, label %if.end19

if.end19:                                         ; preds = %if.end16
  %cmp20 = icmp ult i64 %shl, %shl4
  br i1 %cmp20, label %bBigger, label %if.end22

if.end22:                                         ; preds = %if.end19
  %call24.c.c = tail call i64 @packFloat64.v0.C.c.c(i32 0, i32 0, i64 0)
  br label %return

bExpBigger:                                       ; preds = %if.end
  %cmp25 = icmp eq i32 %call3.c.c, 2047
  br i1 %cmp25, label %if.then27, label %if.end33

if.then27:                                        ; preds = %bExpBigger
  %tobool28 = icmp eq i64 %shl4, 0
  br i1 %tobool28, label %if.end31, label %if.then29

if.then29:                                        ; preds = %if.then27
  %call30.c.c = tail call fastcc i64 @propagateFloat64NaN.v0.C.c.c(i64 %a, i64 %b)
  br label %return

if.end31:                                         ; preds = %if.then27
  %xor = xor i32 %zSign, 1
  %call32.c.c = tail call i64 @packFloat64.v0.C.c.c(i32 %xor, i32 2047, i64 0)
  br label %return

if.end33:                                         ; preds = %bExpBigger
  %cmp34 = icmp eq i32 %call1.c.c, 0
  br i1 %cmp34, label %if.then36, label %if.else

if.then36:                                        ; preds = %if.end33
  %inc = add nsw i32 %sub, 1
  br label %if.end38

if.else:                                          ; preds = %if.end33
  %or37 = or i64 %shl, 4611686018427387904
  store i64 %or37, i64* %aSig, align 8
  br label %if.end38

if.end38:                                         ; preds = %if.else, %if.then36
  %0 = phi i64 [ %shl, %if.then36 ], [ %or37, %if.else ]
  %expDiff.0 = phi i32 [ %inc, %if.then36 ], [ %sub, %if.else ]
  %sub39 = sub nsw i32 0, %expDiff.0
  call void @shift64RightJamming.v0.C.c.c(i64 %0, i32 %sub39, i64* nonnull %aSig)
  %or40 = or i64 %shl4, 4611686018427387904
  store i64 %or40, i64* %bSig, align 8
  %.pre = load i64, i64* %aSig, align 8
  br label %bBigger

bBigger:                                          ; preds = %if.end19, %if.end38
  %1 = phi i64 [ %.pre, %if.end38 ], [ %shl, %if.end19 ]
  %2 = phi i64 [ %or40, %if.end38 ], [ %shl4, %if.end19 ]
  %bExp.1 = phi i32 [ %call3.c.c, %if.end38 ], [ %bExp.0, %if.end19 ]
  %sub41 = sub i64 %2, %1
  %xor42 = xor i32 %zSign, 1
  br label %normalizeRoundAndPack

aExpBigger:                                       ; preds = %entry
  %cmp43 = icmp eq i32 %call1.c.c, 2047
  br i1 %cmp43, label %if.then45, label %if.end50

if.then45:                                        ; preds = %aExpBigger
  %tobool46 = icmp eq i64 %shl, 0
  br i1 %tobool46, label %return, label %if.then47

if.then47:                                        ; preds = %if.then45
  %call48.c.c = tail call fastcc i64 @propagateFloat64NaN.v0.C.c.c(i64 %a, i64 %b)
  br label %return

if.end50:                                         ; preds = %aExpBigger
  %cmp51 = icmp eq i32 %call3.c.c, 0
  br i1 %cmp51, label %if.then53, label %if.else54

if.then53:                                        ; preds = %if.end50
  %dec = add nsw i32 %sub, -1
  br label %if.end56

if.else54:                                        ; preds = %if.end50
  %or55 = or i64 %shl4, 4611686018427387904
  store i64 %or55, i64* %bSig, align 8
  br label %if.end56

if.end56:                                         ; preds = %if.else54, %if.then53
  %3 = phi i64 [ %shl4, %if.then53 ], [ %or55, %if.else54 ]
  %expDiff.1 = phi i32 [ %dec, %if.then53 ], [ %sub, %if.else54 ]
  call void @shift64RightJamming.v0.C.c.c(i64 %3, i32 %expDiff.1, i64* nonnull %bSig)
  %or57 = or i64 %shl, 4611686018427387904
  store i64 %or57, i64* %aSig, align 8
  %.pre1 = load i64, i64* %bSig, align 8
  br label %aBigger

aBigger:                                          ; preds = %if.end16, %if.end56
  %4 = phi i64 [ %.pre1, %if.end56 ], [ %shl4, %if.end16 ]
  %5 = phi i64 [ %or57, %if.end56 ], [ %shl, %if.end16 ]
  %aExp.1 = phi i32 [ %call1.c.c, %if.end56 ], [ %aExp.0, %if.end16 ]
  %sub58 = sub i64 %5, %4
  br label %normalizeRoundAndPack

normalizeRoundAndPack:                            ; preds = %aBigger, %bBigger
  %zExp.0 = phi i32 [ %aExp.1, %aBigger ], [ %bExp.1, %bBigger ]
  %zSign.addr.0 = phi i32 [ %zSign, %aBigger ], [ %xor42, %bBigger ]
  %zSig.0 = phi i64 [ %sub58, %aBigger ], [ %sub41, %bBigger ]
  %dec59 = add nsw i32 %zExp.0, -1
  %cmp.i.i = icmp ult i64 %zSig.0, 4294967296
  %shr.i.i = lshr i64 %zSig.0, 32
  %shiftCount.0.i.i = select i1 %cmp.i.i, i32 32, i32 0
  %a.addr.0.i.i = select i1 %cmp.i.i, i64 %zSig.0, i64 %shr.i.i
  %conv.i.i = trunc i64 %a.addr.0.i.i to i32
  %cmp.i1.i = icmp ult i32 %conv.i.i, 65536
  %shl.i.i = shl i32 %conv.i.i, 16
  %..i = select i1 %cmp.i1.i, i32 16, i32 0
  %shl.i.conv.i.i = select i1 %cmp.i1.i, i32 %shl.i.i, i32 %conv.i.i
  %cmp1.i.i = icmp ult i32 %shl.i.conv.i.i, 16777216
  %add3.i.i = or i32 %..i, 8
  %shl4.i.i = shl i32 %shl.i.conv.i.i, 8
  %shiftCount.1.i.i = select i1 %cmp1.i.i, i32 %add3.i.i, i32 %..i
  %a.addr.1.i.i = select i1 %cmp1.i.i, i32 %shl4.i.i, i32 %shl.i.conv.i.i
  %shr.i5.i = lshr i32 %a.addr.1.i.i, 24
  %idxprom.i.i = zext i32 %shr.i5.i to i64
  %arrayidx.i.i = getelementptr inbounds [256 x i32], [256 x i32]* @countLeadingZeros32.countLeadingZerosHigh, i64 0, i64 %idxprom.i.i
  %6 = load i32, i32* %arrayidx.i.i, align 4
  %add6.i.i = add i32 %6, -1
  %add1.i.i = add i32 %add6.i.i, %shiftCount.0.i.i
  %sub.i = add i32 %add1.i.i, %shiftCount.1.i.i
  %sub1.i = sub i32 %dec59, %sub.i
  %sh_prom.i = zext i32 %sub.i to i64
  %shl.i = shl i64 %zSig.0, %sh_prom.i
  %call2.c.i.c = tail call fastcc i64 @roundAndPackFloat64.v0.C.c.c(i32 %zSign.addr.0, i32 %sub1.i, i64 %shl.i)
  br label %return

return:                                           ; preds = %if.then45, %normalizeRoundAndPack, %if.then47, %if.end31, %if.then29, %if.end22, %if.end12, %if.then10
  %retval.0 = phi i64 [ %call48.c.c, %if.then47 ], [ %call2.c.i.c, %normalizeRoundAndPack ], [ %call30.c.c, %if.then29 ], [ %call32.c.c, %if.end31 ], [ %call11.c.c, %if.then10 ], [ 9223372036854775807, %if.end12 ], [ %call24.c.c, %if.end22 ], [ %a, %if.then45 ]
  ret i64 %retval.0
}

; Function Attrs: noinline norecurse nounwind
define void @shift64RightJamming.v0.C.c.c(i64 %a, i32 %count, i64* nocapture %zPtr) local_unnamed_addr #3 {
entry:
  %cmp = icmp eq i32 %count, 0
  br i1 %cmp, label %if.end10, label %if.else

if.else:                                          ; preds = %entry
  %cmp1 = icmp slt i32 %count, 64
  br i1 %cmp1, label %if.then2, label %if.else6

if.then2:                                         ; preds = %if.else
  %sh_prom = zext i32 %count to i64
  %shr = lshr i64 %a, %sh_prom
  %sub = sub nsw i32 0, %count
  %and = and i32 %sub, 63
  %sh_prom3 = zext i32 %and to i64
  %shl = shl i64 %a, %sh_prom3
  %cmp4 = icmp ne i64 %shl, 0
  %conv5 = zext i1 %cmp4 to i64
  %or = or i64 %conv5, %shr
  br label %if.end10

if.else6:                                         ; preds = %if.else
  %cmp7 = icmp ne i64 %a, 0
  %conv9 = zext i1 %cmp7 to i64
  br label %if.end10

if.end10:                                         ; preds = %if.then2, %if.else6, %entry
  %z.1 = phi i64 [ %a, %entry ], [ %or, %if.then2 ], [ %conv9, %if.else6 ]
  store i64 %z.1, i64* %zPtr, align 8
  ret void
}

; Function Attrs: noinline norecurse nounwind
define internal fastcc i64 @addFloat64Sigs.v0.C.c.c(i64 %a, i64 %b, i32 %zSign) unnamed_addr #3 {
entry:
  %aSig = alloca i64, align 8
  %bSig = alloca i64, align 8
  %call.c.c = tail call i64 @extractFloat64Frac.v0.C.c.c(i64 %a)
  %call1.c.c = tail call i32 @extractFloat64Exp.v0.C.c.c(i64 %a)
  %call2.c.c = tail call i64 @extractFloat64Frac.v0.C.c.c(i64 %b)
  %call3.c.c = tail call i32 @extractFloat64Exp.v0.C.c.c(i64 %b)
  %sub = sub nsw i32 %call1.c.c, %call3.c.c
  %shl = shl i64 %call.c.c, 9
  store i64 %shl, i64* %aSig, align 8
  %shl4 = shl i64 %call2.c.c, 9
  store i64 %shl4, i64* %bSig, align 8
  %cmp = icmp sgt i32 %sub, 0
  br i1 %cmp, label %if.then, label %if.else13

if.then:                                          ; preds = %entry
  %cmp5 = icmp eq i32 %call1.c.c, 2047
  br i1 %cmp5, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.then
  %tobool = icmp eq i64 %shl, 0
  br i1 %tobool, label %return, label %if.then7

if.then7:                                         ; preds = %if.then6
  %call8.c.c = tail call fastcc i64 @propagateFloat64NaN.v0.C.c.c(i64 %a, i64 %b)
  br label %return

if.end9:                                          ; preds = %if.then
  %cmp10 = icmp eq i32 %call3.c.c, 0
  br i1 %cmp10, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end9
  %dec = add nsw i32 %sub, -1
  br label %if.end12

if.else:                                          ; preds = %if.end9
  %or = or i64 %shl4, 2305843009213693952
  store i64 %or, i64* %bSig, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then11
  %0 = phi i64 [ %shl4, %if.then11 ], [ %or, %if.else ]
  %expDiff.0 = phi i32 [ %dec, %if.then11 ], [ %sub, %if.else ]
  call void @shift64RightJamming.v0.C.c.c(i64 %0, i32 %expDiff.0, i64* nonnull %bSig)
  %.pre1 = load i64, i64* %bSig, align 8
  br label %if.end46

if.else13:                                        ; preds = %entry
  %cmp14 = icmp slt i32 %sub, 0
  br i1 %cmp14, label %if.then15, label %if.else30

if.then15:                                        ; preds = %if.else13
  %cmp16 = icmp eq i32 %call3.c.c, 2047
  br i1 %cmp16, label %if.then17, label %if.end23

if.then17:                                        ; preds = %if.then15
  %tobool18 = icmp eq i64 %shl4, 0
  br i1 %tobool18, label %if.end21, label %if.then19

if.then19:                                        ; preds = %if.then17
  %call20.c.c = tail call fastcc i64 @propagateFloat64NaN.v0.C.c.c(i64 %a, i64 %b)
  br label %return

if.end21:                                         ; preds = %if.then17
  %call22.c.c = tail call i64 @packFloat64.v0.C.c.c(i32 %zSign, i32 2047, i64 0)
  br label %return

if.end23:                                         ; preds = %if.then15
  %cmp24 = icmp eq i32 %call1.c.c, 0
  br i1 %cmp24, label %if.then25, label %if.else26

if.then25:                                        ; preds = %if.end23
  %inc = add nsw i32 %sub, 1
  br label %if.end28

if.else26:                                        ; preds = %if.end23
  %or27 = or i64 %shl, 2305843009213693952
  store i64 %or27, i64* %aSig, align 8
  br label %if.end28

if.end28:                                         ; preds = %if.else26, %if.then25
  %1 = phi i64 [ %shl, %if.then25 ], [ %or27, %if.else26 ]
  %expDiff.1 = phi i32 [ %inc, %if.then25 ], [ %sub, %if.else26 ]
  %sub29 = sub nsw i32 0, %expDiff.1
  call void @shift64RightJamming.v0.C.c.c(i64 %1, i32 %sub29, i64* nonnull %aSig)
  %.pre = load i64, i64* %aSig, align 8
  br label %if.end46

if.else30:                                        ; preds = %if.else13
  switch i32 %call1.c.c, label %if.end42 [
    i32 2047, label %if.then32
    i32 0, label %if.then40
  ]

if.then32:                                        ; preds = %if.else30
  %or33 = or i64 %shl, %shl4
  %tobool34 = icmp eq i64 %or33, 0
  br i1 %tobool34, label %return, label %if.then35

if.then35:                                        ; preds = %if.then32
  %call36.c.c = tail call fastcc i64 @propagateFloat64NaN.v0.C.c.c(i64 %a, i64 %b)
  br label %return

if.then40:                                        ; preds = %if.else30
  %add = add i64 %shl, %shl4
  %shr = lshr exact i64 %add, 9
  %call41.c.c = tail call i64 @packFloat64.v0.C.c.c(i32 %zSign, i32 0, i64 %shr)
  br label %return

if.end42:                                         ; preds = %if.else30
  %add43 = add i64 %shl4, 4611686018427387904
  %add44 = add i64 %add43, %shl
  br label %roundAndPack

if.end46:                                         ; preds = %if.end28, %if.end12
  %2 = phi i64 [ %.pre1, %if.end12 ], [ %shl4, %if.end28 ]
  %3 = phi i64 [ %shl, %if.end12 ], [ %.pre, %if.end28 ]
  %zExp.0 = phi i32 [ %call1.c.c, %if.end12 ], [ %call3.c.c, %if.end28 ]
  %or47 = or i64 %3, 2305843009213693952
  store i64 %or47, i64* %aSig, align 8
  %add48 = add i64 %2, %or47
  %shl49 = shl i64 %add48, 1
  %cmp51 = icmp slt i64 %shl49, 0
  %not.cmp51 = xor i1 %cmp51, true
  %dec50 = sext i1 %not.cmp51 to i32
  %zExp.0.dec50 = add nsw i32 %dec50, %zExp.0
  %add48.shl49 = select i1 %cmp51, i64 %add48, i64 %shl49
  br label %roundAndPack

roundAndPack:                                     ; preds = %if.end46, %if.end42
  %zExp.2 = phi i32 [ %call1.c.c, %if.end42 ], [ %zExp.0.dec50, %if.end46 ]
  %zSig.1 = phi i64 [ %add44, %if.end42 ], [ %add48.shl49, %if.end46 ]
  %call56.c.c = tail call fastcc i64 @roundAndPackFloat64.v0.C.c.c(i32 %zSign, i32 %zExp.2, i64 %zSig.1)
  br label %return

return:                                           ; preds = %if.then32, %if.then6, %roundAndPack, %if.then40, %if.then35, %if.end21, %if.then19, %if.then7
  %retval.0 = phi i64 [ %call8.c.c, %if.then7 ], [ %call56.c.c, %roundAndPack ], [ %call20.c.c, %if.then19 ], [ %call22.c.c, %if.end21 ], [ %call36.c.c, %if.then35 ], [ %call41.c.c, %if.then40 ], [ %a, %if.then6 ], [ %a, %if.then32 ]
  ret i64 %retval.0
}

attributes #0 = { noinline norecurse nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noinline norecurse nounwind }
attributes #4 = { noinline norecurse nounwind readnone }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
