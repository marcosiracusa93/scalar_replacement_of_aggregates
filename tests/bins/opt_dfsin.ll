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
  %aSig.i = alloca i64, align 8
  %bSig.i = alloca i64, align 8
  %0 = bitcast i64* %aSig.i to i8*
  %1 = bitcast i64* %bSig.i to i8*
  br label %for.body

for.body:                                         ; preds = %__non_const_wrapper__.33.exit, %entry
  %i.014 = phi i32 [ 0, %entry ], [ %inc, %__non_const_wrapper__.33.exit ]
  %main_result.013 = phi i32 [ 0, %entry ], [ %add, %__non_const_wrapper__.33.exit ]
  switch i32 %i.014, label %csroa.if.end174.i [
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
  %call.c.i.c = tail call i64 @float64_mul.v0.C.c.c(i64 %.phi.i, i64 %.phi.i) #8
  %or.i = xor i64 %call.c.i.c, -9223372036854775808
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.backedge, %__non_const_wrapper__.exit
  %diff.0.i = phi i64 [ %.phi.i, %__non_const_wrapper__.exit ], [ %call6.c.i.c, %do.body.i.backedge ]
  %app.0.i = phi i64 [ %.phi.i, %__non_const_wrapper__.exit ], [ %retval.0.i23, %do.body.i.backedge ]
  %inc.0.i = phi i32 [ 1, %__non_const_wrapper__.exit ], [ %inc8.i, %do.body.i.backedge ]
  %call2.c.i.c = tail call i64 @float64_mul.v0.C.c.c(i64 %diff.0.i, i64 %or.i) #8
  %mul.i = shl nsw i32 %inc.0.i, 1
  %add.i = or i32 %mul.i, 1
  %mul4.i = mul nsw i32 %add.i, %mul.i
  %cmp.i = icmp eq i32 %mul4.i, 0
  br i1 %cmp.i, label %int32_to_float64.v0.C.c.exit, label %if.end.i

if.end.i:                                         ; preds = %do.body.i
  %a.lobit.i = lshr i32 %mul4.i, 31
  %tobool.i15 = icmp eq i32 %a.lobit.i, 0
  %sub.i = sub nsw i32 0, %mul4.i
  %cond.i = select i1 %tobool.i15, i32 %mul4.i, i32 %sub.i
  %cmp.i18 = icmp ult i32 %cond.i, 65536
  %shl.i19 = shl i32 %cond.i, 16
  %..i = select i1 %cmp.i18, i32 16, i32 0
  %shl.a.i = select i1 %cmp.i18, i32 %shl.i19, i32 %cond.i
  %cmp1.i = icmp ult i32 %shl.a.i, 16777216
  %add3.i = or i32 %..i, 8
  %shl4.i = shl i32 %shl.a.i, 8
  %shiftCount.1.i = select i1 %cmp1.i, i32 %add3.i, i32 %..i
  %a.addr.1.i = select i1 %cmp1.i, i32 %shl4.i, i32 %shl.a.i
  %shr.i = lshr i32 %a.addr.1.i, 24
  %idxprom.i = zext i32 %shr.i to i64
  %arrayidx.i = getelementptr inbounds [256 x i32], [256 x i32]* @countLeadingZeros32.countLeadingZerosHigh, i64 0, i64 %idxprom.i
  %2 = load i32, i32* %arrayidx.i, align 4
  %add6.i = add nsw i32 %2, %shiftCount.1.i
  %add.i17 = add nsw i32 %add6.i, 21
  %conv2.i = zext i32 %cond.i to i64
  %sub3.i = sub i32 1053, %add6.i
  %sh_prom.i = zext i32 %add.i17 to i64
  %shl.i = shl i64 %conv2.i, %sh_prom.i
  %call4.c.i.c = tail call i64 @packFloat64.v0.C.c.c(i32 %a.lobit.i, i32 %sub3.i, i64 %shl.i) #8
  br label %int32_to_float64.v0.C.c.exit

int32_to_float64.v0.C.c.exit:                     ; preds = %do.body.i, %if.end.i
  %retval.0.i = phi i64 [ %call4.c.i.c, %if.end.i ], [ 0, %do.body.i ]
  %call6.c.i.c = tail call i64 @float64_div.v0.C.c.c(i64 %call2.c.i.c, i64 %retval.0.i) #8
  %call.c.i20.c = tail call i32 @extractFloat64Sign.v0.C.c.c(i64 %app.0.i) #8
  %call1.c.i.c = tail call i32 @extractFloat64Sign.v0.C.c.c(i64 %call6.c.i.c) #8
  %cmp.i21 = icmp eq i32 %call.c.i20.c, %call1.c.i.c
  br i1 %cmp.i21, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %int32_to_float64.v0.C.c.exit
  call void @llvm.lifetime.start(i64 8, i8* nonnull %0)
  call void @llvm.lifetime.start(i64 8, i8* nonnull %1)
  %call.c.i24.c = tail call i64 @extractFloat64Frac.v0.C.c.c(i64 %app.0.i) #8
  %call1.c.i25.c = tail call i32 @extractFloat64Exp.v0.C.c.c(i64 %app.0.i) #8
  %call2.c.i26.c = tail call i64 @extractFloat64Frac.v0.C.c.c(i64 %call6.c.i.c) #8
  %call3.c.i27.c = tail call i32 @extractFloat64Exp.v0.C.c.c(i64 %call6.c.i.c) #8
  %sub.i28 = sub nsw i32 %call1.c.i25.c, %call3.c.i27.c
  %shl.i29 = shl i64 %call.c.i24.c, 9
  store i64 %shl.i29, i64* %aSig.i, align 8
  %shl4.i30 = shl i64 %call2.c.i26.c, 9
  store i64 %shl4.i30, i64* %bSig.i, align 8
  %cmp.i31 = icmp sgt i32 %sub.i28, 0
  br i1 %cmp.i31, label %if.then.i32, label %if.else13.i

if.then.i32:                                      ; preds = %if.then.i
  %cmp5.i = icmp eq i32 %call1.c.i25.c, 2047
  br i1 %cmp5.i, label %if.then6.i, label %if.end9.i

if.then6.i:                                       ; preds = %if.then.i32
  %tobool.i33 = icmp eq i64 %shl.i29, 0
  br i1 %tobool.i33, label %addFloat64Sigs.v0.C.c.exit, label %if.then7.i

if.then7.i:                                       ; preds = %if.then6.i
  %call8.c.i.c = tail call fastcc i64 @propagateFloat64NaN.v0.C.c.c(i64 %app.0.i, i64 %call6.c.i.c) #8
  br label %addFloat64Sigs.v0.C.c.exit

if.end9.i:                                        ; preds = %if.then.i32
  %cmp10.i = icmp eq i32 %call3.c.i27.c, 0
  br i1 %cmp10.i, label %if.then11.i, label %if.else.i35

if.then11.i:                                      ; preds = %if.end9.i
  %dec.i = add nsw i32 %sub.i28, -1
  br label %if.end12.i

if.else.i35:                                      ; preds = %if.end9.i
  %or.i34 = or i64 %shl4.i30, 2305843009213693952
  store i64 %or.i34, i64* %bSig.i, align 8
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.else.i35, %if.then11.i
  %3 = phi i64 [ %shl4.i30, %if.then11.i ], [ %or.i34, %if.else.i35 ]
  %expDiff.0.i = phi i32 [ %dec.i, %if.then11.i ], [ %sub.i28, %if.else.i35 ]
  call void @shift64RightJamming.v0.C.c.c(i64 %3, i32 %expDiff.0.i, i64* nonnull %bSig.i) #8
  %.pre1.i = load i64, i64* %bSig.i, align 8
  br label %if.end46.i

if.else13.i:                                      ; preds = %if.then.i
  %cmp14.i = icmp slt i32 %sub.i28, 0
  br i1 %cmp14.i, label %if.then15.i, label %if.else30.i

if.then15.i:                                      ; preds = %if.else13.i
  %cmp16.i = icmp eq i32 %call3.c.i27.c, 2047
  br i1 %cmp16.i, label %if.then17.i, label %if.end23.i

if.then17.i:                                      ; preds = %if.then15.i
  %tobool18.i = icmp eq i64 %shl4.i30, 0
  br i1 %tobool18.i, label %if.end21.i, label %if.then19.i

if.then19.i:                                      ; preds = %if.then17.i
  %call20.c.i.c = tail call fastcc i64 @propagateFloat64NaN.v0.C.c.c(i64 %app.0.i, i64 %call6.c.i.c) #8
  br label %addFloat64Sigs.v0.C.c.exit

if.end21.i:                                       ; preds = %if.then17.i
  %call22.c.i.c = tail call i64 @packFloat64.v0.C.c.c(i32 %call.c.i20.c, i32 2047, i64 0) #8
  br label %addFloat64Sigs.v0.C.c.exit

if.end23.i:                                       ; preds = %if.then15.i
  %cmp24.i = icmp eq i32 %call1.c.i25.c, 0
  br i1 %cmp24.i, label %if.then25.i, label %if.else26.i

if.then25.i:                                      ; preds = %if.end23.i
  %inc.i = add nsw i32 %sub.i28, 1
  br label %if.end28.i

if.else26.i:                                      ; preds = %if.end23.i
  %or27.i = or i64 %shl.i29, 2305843009213693952
  store i64 %or27.i, i64* %aSig.i, align 8
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.else26.i, %if.then25.i
  %4 = phi i64 [ %shl.i29, %if.then25.i ], [ %or27.i, %if.else26.i ]
  %expDiff.1.i = phi i32 [ %inc.i, %if.then25.i ], [ %sub.i28, %if.else26.i ]
  %sub29.i = sub nsw i32 0, %expDiff.1.i
  call void @shift64RightJamming.v0.C.c.c(i64 %4, i32 %sub29.i, i64* nonnull %aSig.i) #8
  %.pre.i = load i64, i64* %aSig.i, align 8
  br label %if.end46.i

if.else30.i:                                      ; preds = %if.else13.i
  switch i32 %call1.c.i25.c, label %if.end42.i [
    i32 2047, label %if.then32.i
    i32 0, label %if.then40.i
  ]

if.then32.i:                                      ; preds = %if.else30.i
  %or33.i = or i64 %shl4.i30, %shl.i29
  %tobool34.i = icmp eq i64 %or33.i, 0
  br i1 %tobool34.i, label %addFloat64Sigs.v0.C.c.exit, label %if.then35.i

if.then35.i:                                      ; preds = %if.then32.i
  %call36.c.i.c = tail call fastcc i64 @propagateFloat64NaN.v0.C.c.c(i64 %app.0.i, i64 %call6.c.i.c) #8
  br label %addFloat64Sigs.v0.C.c.exit

if.then40.i:                                      ; preds = %if.else30.i
  %add.i36 = add i64 %shl4.i30, %shl.i29
  %shr.i37 = lshr exact i64 %add.i36, 9
  %call41.c.i.c = tail call i64 @packFloat64.v0.C.c.c(i32 %call.c.i20.c, i32 0, i64 %shr.i37) #8
  br label %addFloat64Sigs.v0.C.c.exit

if.end42.i:                                       ; preds = %if.else30.i
  %add43.i = add i64 %shl.i29, 4611686018427387904
  %add44.i = add i64 %add43.i, %shl4.i30
  br label %roundAndPack.i

if.end46.i:                                       ; preds = %if.end28.i, %if.end12.i
  %5 = phi i64 [ %.pre1.i, %if.end12.i ], [ %shl4.i30, %if.end28.i ]
  %6 = phi i64 [ %shl.i29, %if.end12.i ], [ %.pre.i, %if.end28.i ]
  %zExp.0.i = phi i32 [ %call1.c.i25.c, %if.end12.i ], [ %call3.c.i27.c, %if.end28.i ]
  %or47.i = or i64 %6, 2305843009213693952
  store i64 %or47.i, i64* %aSig.i, align 8
  %add48.i = add i64 %or47.i, %5
  %shl49.i = shl i64 %add48.i, 1
  %cmp51.i = icmp slt i64 %shl49.i, 0
  %not.cmp51.i = xor i1 %cmp51.i, true
  %dec50.i = sext i1 %not.cmp51.i to i32
  %zExp.0.dec50.i = add nsw i32 %dec50.i, %zExp.0.i
  %add48.shl49.i = select i1 %cmp51.i, i64 %add48.i, i64 %shl49.i
  br label %roundAndPack.i

roundAndPack.i:                                   ; preds = %if.end46.i, %if.end42.i
  %zExp.2.i = phi i32 [ %call1.c.i25.c, %if.end42.i ], [ %zExp.0.dec50.i, %if.end46.i ]
  %zSig.1.i = phi i64 [ %add44.i, %if.end42.i ], [ %add48.shl49.i, %if.end46.i ]
  %call56.c.i.c = tail call fastcc i64 @roundAndPackFloat64.v0.C.c.c(i32 %call.c.i20.c, i32 %zExp.2.i, i64 %zSig.1.i) #8
  br label %addFloat64Sigs.v0.C.c.exit

addFloat64Sigs.v0.C.c.exit:                       ; preds = %if.then6.i, %if.then7.i, %if.then19.i, %if.end21.i, %if.then32.i, %if.then35.i, %if.then40.i, %roundAndPack.i
  %retval.0.i38 = phi i64 [ %call8.c.i.c, %if.then7.i ], [ %call56.c.i.c, %roundAndPack.i ], [ %call20.c.i.c, %if.then19.i ], [ %call22.c.i.c, %if.end21.i ], [ %call36.c.i.c, %if.then35.i ], [ %call41.c.i.c, %if.then40.i ], [ %app.0.i, %if.then6.i ], [ %app.0.i, %if.then32.i ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %0)
  call void @llvm.lifetime.end(i64 8, i8* nonnull %1)
  br label %float64_add.v0.C.c.exit

if.else.i:                                        ; preds = %int32_to_float64.v0.C.c.exit
  %call3.c.i.c = tail call fastcc i64 @subFloat64Sigs.v0.C.c.c(i64 %app.0.i, i64 %call6.c.i.c, i32 %call.c.i20.c) #8
  br label %float64_add.v0.C.c.exit

float64_add.v0.C.c.exit:                          ; preds = %addFloat64Sigs.v0.C.c.exit, %if.else.i
  %retval.0.i23 = phi i64 [ %retval.0.i38, %addFloat64Sigs.v0.C.c.exit ], [ %call3.c.i.c, %if.else.i ]
  %inc8.i = add nuw nsw i32 %inc.0.i, 1
  %and.i = and i64 %call6.c.i.c, 9223372036854775807
  %call.c.i40.c = tail call i32 @extractFloat64Exp.v0.C.c.c(i64 4532020583610935537) #8
  %cmp.i41 = icmp eq i32 %call.c.i40.c, 2047
  br i1 %cmp.i41, label %land.lhs.true.i, label %lor.lhs.false.i

land.lhs.true.i:                                  ; preds = %float64_add.v0.C.c.exit
  %call1.c.i42.c = tail call i64 @extractFloat64Frac.v0.C.c.c(i64 4532020583610935537) #8
  %tobool.i43 = icmp eq i64 %call1.c.i42.c, 0
  br i1 %tobool.i43, label %lor.lhs.false.i, label %if.then.i45

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i, %float64_add.v0.C.c.exit
  %call2.c.i44.c = tail call i32 @extractFloat64Exp.v0.C.c.c(i64 %and.i) #8
  %cmp3.i = icmp eq i32 %call2.c.i44.c, 2047
  br i1 %cmp3.i, label %land.lhs.true4.i, label %if.end.i47

land.lhs.true4.i:                                 ; preds = %lor.lhs.false.i
  %call5.c.i.c = tail call i64 @extractFloat64Frac.v0.C.c.c(i64 %and.i) #8
  %tobool6.i = icmp eq i64 %call5.c.i.c, 0
  br i1 %tobool6.i, label %if.end.i47, label %if.then.i45

if.then.i45:                                      ; preds = %land.lhs.true4.i, %land.lhs.true.i
  tail call void @float_raise.v0.C.c.c(i32 16) #8
  br label %local_sin.v0.C.c.exit

if.end.i47:                                       ; preds = %land.lhs.true4.i, %lor.lhs.false.i
  %call7.c.i.c = tail call i32 @extractFloat64Sign.v0.C.c.c(i64 4532020583610935537) #8
  %call8.c.i46.c = tail call i32 @extractFloat64Sign.v0.C.c.c(i64 %and.i) #8
  %cmp9.i = icmp eq i32 %call7.c.i.c, %call8.c.i46.c
  br i1 %cmp9.i, label %if.end13.i, label %float64_le.v0.C.c.exit

if.end13.i:                                       ; preds = %if.end.i47
  %cmp14.i49 = icmp eq i64 %and.i, 4532020583610935537
  %cmp16.i50 = icmp ugt i64 %and.i, 4532020583610935537
  %conv.i = zext i1 %cmp16.i50 to i32
  %tobool17.i = icmp ne i32 %call7.c.i.c, %conv.i
  %7 = or i1 %cmp14.i49, %tobool17.i
  br i1 %7, label %do.body.i.backedge, label %local_sin.v0.C.c.exit.loopexit

do.body.i.backedge:                               ; preds = %if.end13.i, %float64_le.v0.C.c.exit
  br label %do.body.i

float64_le.v0.C.c.exit:                           ; preds = %if.end.i47
  %not.tobool11.i = icmp eq i32 %call7.c.i.c, 0
  br i1 %not.tobool11.i, label %local_sin.v0.C.c.exit.loopexit, label %do.body.i.backedge

local_sin.v0.C.c.exit.loopexit:                   ; preds = %if.end13.i, %float64_le.v0.C.c.exit
  br label %local_sin.v0.C.c.exit

local_sin.v0.C.c.exit:                            ; preds = %local_sin.v0.C.c.exit.loopexit, %if.then.i45
  switch i32 %i.014, label %csroa.if.end174.i516 [
    i32 0, label %__non_const_wrapper__.33.exit
    i32 1, label %csroa.if.end4.i584
    i32 2, label %csroa.if.end9.i582
    i32 3, label %csroa.if.end14.i580
    i32 4, label %csroa.if.end19.i578
    i32 5, label %csroa.if.end24.i576
    i32 6, label %csroa.if.end29.i574
    i32 7, label %csroa.if.end34.i572
    i32 8, label %csroa.if.end39.i570
    i32 9, label %csroa.if.end44.i568
    i32 10, label %csroa.if.end49.i566
    i32 11, label %csroa.if.end54.i564
    i32 12, label %csroa.if.end59.i562
    i32 13, label %csroa.if.end64.i560
    i32 14, label %csroa.if.end69.i558
    i32 15, label %csroa.if.end74.i556
    i32 16, label %csroa.if.end79.i554
    i32 17, label %csroa.if.end84.i552
    i32 18, label %csroa.if.end89.i550
    i32 19, label %csroa.if.end94.i548
    i32 20, label %csroa.if.end99.i546
    i32 21, label %csroa.if.end104.i544
    i32 22, label %csroa.if.end109.i542
    i32 23, label %csroa.if.end114.i540
    i32 24, label %csroa.if.end119.i538
    i32 25, label %csroa.if.end124.i536
    i32 26, label %csroa.if.end129.i534
    i32 27, label %csroa.if.end134.i532
    i32 28, label %csroa.if.end139.i530
    i32 29, label %csroa.if.end144.i528
    i32 30, label %csroa.if.end149.i526
    i32 31, label %csroa.if.end154.i524
    i32 32, label %csroa.if.end159.i522
    i32 33, label %csroa.if.end164.i520
    i32 34, label %csroa.if.end169.i518
  ]

csroa.if.end174.i516:                             ; preds = %local_sin.v0.C.c.exit
  br label %csroa.if.end169.i518

csroa.if.end169.i518:                             ; preds = %local_sin.v0.C.c.exit, %csroa.if.end174.i516
  %.phi170.i339792 = phi i64 [ 4618563748144321995, %csroa.if.end174.i516 ], [ 4618367241580981021, %local_sin.v0.C.c.exit ]
  %.phi170.i161654791 = phi i64 [ -4627947641781066787, %csroa.if.end174.i516 ], [ -4623539110082393353, %local_sin.v0.C.c.exit ]
  br label %csroa.if.end164.i520

csroa.if.end164.i520:                             ; preds = %local_sin.v0.C.c.exit, %csroa.if.end169.i518
  %.phi165.i341788 = phi i64 [ %.phi170.i339792, %csroa.if.end169.i518 ], [ 4618170735017640047, %local_sin.v0.C.c.exit ]
  %.phi165.i163652787 = phi i64 [ %.phi170.i161654791, %csroa.if.end169.i518 ], [ -4620693208604826867, %local_sin.v0.C.c.exit ]
  br label %csroa.if.end159.i522

csroa.if.end159.i522:                             ; preds = %local_sin.v0.C.c.exit, %csroa.if.end164.i520
  %.phi160.i343784 = phi i64 [ %.phi165.i341788, %csroa.if.end164.i520 ], [ 4617974228454299073, %local_sin.v0.C.c.exit ]
  %.phi160.i165650783 = phi i64 [ %.phi165.i163652787, %csroa.if.end164.i520 ], [ -4619407090579186346, %local_sin.v0.C.c.exit ]
  br label %csroa.if.end154.i524

csroa.if.end154.i524:                             ; preds = %local_sin.v0.C.c.exit, %csroa.if.end159.i522
  %.phi155.i345780 = phi i64 [ %.phi160.i343784, %csroa.if.end159.i522 ], [ 4617777721890958099, %local_sin.v0.C.c.exit ]
  %.phi155.i167648779 = phi i64 [ %.phi160.i165650783, %csroa.if.end159.i522 ], [ -4618296894661077119, %local_sin.v0.C.c.exit ]
  br label %csroa.if.end149.i526

csroa.if.end149.i526:                             ; preds = %local_sin.v0.C.c.exit, %csroa.if.end154.i524
  %.phi150.i347776 = phi i64 [ %.phi155.i345780, %csroa.if.end154.i524 ], [ 4617581215327617125, %local_sin.v0.C.c.exit ]
  %.phi150.i169646775 = phi i64 [ %.phi155.i167648779, %csroa.if.end154.i524 ], [ -4617396348504650934, %local_sin.v0.C.c.exit ]
  br label %csroa.if.end144.i528

csroa.if.end144.i528:                             ; preds = %local_sin.v0.C.c.exit, %csroa.if.end149.i526
  %.phi145.i349772 = phi i64 [ %.phi150.i347776, %csroa.if.end149.i526 ], [ 4617384708764276151, %local_sin.v0.C.c.exit ]
  %.phi145.i171644771 = phi i64 [ %.phi150.i169646775, %csroa.if.end149.i526 ], [ -4616732815165379033, %local_sin.v0.C.c.exit ]
  br label %csroa.if.end139.i530

csroa.if.end139.i530:                             ; preds = %local_sin.v0.C.c.exit, %csroa.if.end144.i528
  %.phi140.i351768 = phi i64 [ %.phi145.i349772, %csroa.if.end144.i528 ], [ 4617188202200935177, %local_sin.v0.C.c.exit ]
  %.phi140.i173642767 = phi i64 [ %.phi145.i171644771, %csroa.if.end144.i528 ], [ -4616326458420041750, %local_sin.v0.C.c.exit ]
  br label %csroa.if.end134.i532

csroa.if.end134.i532:                             ; preds = %local_sin.v0.C.c.exit, %csroa.if.end139.i530
  %.phi135.i353764 = phi i64 [ %.phi140.i351768, %csroa.if.end139.i530 ], [ 4616991695637594203, %local_sin.v0.C.c.exit ]
  %.phi135.i175640763 = phi i64 [ %.phi140.i173642767, %csroa.if.end139.i530 ], [ -4616189619079881585, %local_sin.v0.C.c.exit ]
  br label %csroa.if.end129.i534

csroa.if.end129.i534:                             ; preds = %local_sin.v0.C.c.exit, %csroa.if.end134.i532
  %.phi130.i355760 = phi i64 [ %.phi135.i353764, %csroa.if.end134.i532 ], [ 4616795189074253229, %local_sin.v0.C.c.exit ]
  %.phi130.i177638759 = phi i64 [ %.phi135.i175640763, %csroa.if.end134.i532 ], [ -4616326459558573316, %local_sin.v0.C.c.exit ]
  br label %csroa.if.end124.i536

csroa.if.end124.i536:                             ; preds = %local_sin.v0.C.c.exit, %csroa.if.end129.i534
  %.phi125.i357756 = phi i64 [ %.phi130.i355760, %csroa.if.end129.i534 ], [ 4616598682510912255, %local_sin.v0.C.c.exit ]
  %.phi125.i179636755 = phi i64 [ %.phi130.i177638759, %csroa.if.end129.i534 ], [ -4616732821607866025, %local_sin.v0.C.c.exit ]
  br label %csroa.if.end119.i538

csroa.if.end119.i538:                             ; preds = %local_sin.v0.C.c.exit, %csroa.if.end124.i536
  %.phi120.i359752 = phi i64 [ %.phi125.i357756, %csroa.if.end124.i536 ], [ 4616402175947571281, %local_sin.v0.C.c.exit ]
  %.phi120.i181634751 = phi i64 [ %.phi125.i179636755, %csroa.if.end124.i536 ], [ -4617396355889189326, %local_sin.v0.C.c.exit ]
  br label %csroa.if.end114.i540

csroa.if.end114.i540:                             ; preds = %local_sin.v0.C.c.exit, %csroa.if.end119.i538
  %.phi115.i361748 = phi i64 [ %.phi120.i359752, %csroa.if.end119.i538 ], [ 4616205669384230307, %local_sin.v0.C.c.exit ]
  %.phi115.i183632747 = phi i64 [ %.phi120.i181634751, %csroa.if.end119.i538 ], [ -4618296906397976555, %local_sin.v0.C.c.exit ]
  br label %csroa.if.end109.i542

csroa.if.end109.i542:                             ; preds = %local_sin.v0.C.c.exit, %csroa.if.end114.i540
  %.phi110.i363744 = phi i64 [ %.phi115.i361748, %csroa.if.end114.i540 ], [ 4615828707587020265, %local_sin.v0.C.c.exit ]
  %.phi110.i185630743 = phi i64 [ %.phi115.i183632747, %csroa.if.end114.i540 ], [ -4619407106423282733, %local_sin.v0.C.c.exit ]
  br label %csroa.if.end104.i544

csroa.if.end104.i544:                             ; preds = %local_sin.v0.C.c.exit, %csroa.if.end109.i542
  %.phi105.i365740 = phi i64 [ %.phi110.i363744, %csroa.if.end109.i542 ], [ 4615435694460338317, %local_sin.v0.C.c.exit ]
  %.phi105.i187628739 = phi i64 [ %.phi110.i185630743, %csroa.if.end109.i542 ], [ -4620693229337249429, %local_sin.v0.C.c.exit ]
  br label %csroa.if.end99.i546

csroa.if.end99.i546:                              ; preds = %local_sin.v0.C.c.exit, %csroa.if.end104.i544
  %.phi100.i367736 = phi i64 [ %.phi105.i365740, %csroa.if.end104.i544 ], [ 4615042681333656369, %local_sin.v0.C.c.exit ]
  %.phi100.i189626735 = phi i64 [ %.phi105.i187628739, %csroa.if.end104.i544 ], [ -4623539145043636418, %local_sin.v0.C.c.exit ]
  br label %csroa.if.end94.i548

csroa.if.end94.i548:                              ; preds = %local_sin.v0.C.c.exit, %csroa.if.end99.i546
  %.phi95.i369732 = phi i64 [ %.phi100.i367736, %csroa.if.end99.i546 ], [ 4614649668206974421, %local_sin.v0.C.c.exit ]
  %.phi95.i191624731 = phi i64 [ %.phi100.i189626735, %csroa.if.end99.i546 ], [ -4627947708347468932, %local_sin.v0.C.c.exit ]
  br label %csroa.if.end89.i550

csroa.if.end89.i550:                              ; preds = %local_sin.v0.C.c.exit, %csroa.if.end94.i548
  %.phi90.i371728 = phi i64 [ %.phi95.i369732, %csroa.if.end94.i548 ], [ 4614256655080292473, %local_sin.v0.C.c.exit ]
  %.phi90.i193622727 = phi i64 [ %.phi95.i191624731, %csroa.if.end94.i548 ], [ 4514487953518840721, %local_sin.v0.C.c.exit ]
  br label %csroa.if.end84.i552

csroa.if.end84.i552:                              ; preds = %local_sin.v0.C.c.exit, %csroa.if.end89.i550
  %.phi85.i373724 = phi i64 [ %.phi90.i371728, %csroa.if.end89.i550 ], [ 4613863641953610525, %local_sin.v0.C.c.exit ]
  %.phi85.i195620723 = phi i64 [ %.phi90.i193622727, %csroa.if.end89.i550 ], [ 4595424366569280812, %local_sin.v0.C.c.exit ]
  br label %csroa.if.end79.i554

csroa.if.end79.i554:                              ; preds = %local_sin.v0.C.c.exit, %csroa.if.end84.i552
  %.phi80.i375720 = phi i64 [ %.phi85.i373724, %csroa.if.end84.i552 ], [ 4613470628826928577, %local_sin.v0.C.c.exit ]
  %.phi80.i197618719 = phi i64 [ %.phi85.i195620723, %csroa.if.end84.i552 ], [ 4599832915021762757, %local_sin.v0.C.c.exit ]
  br label %csroa.if.end74.i556

csroa.if.end74.i556:                              ; preds = %local_sin.v0.C.c.exit, %csroa.if.end79.i554
  %.phi75.i377716 = phi i64 [ %.phi80.i375720, %csroa.if.end79.i554 ], [ 4613077615700246629, %local_sin.v0.C.c.exit ]
  %.phi75.i199616715 = phi i64 [ %.phi80.i197618719, %csroa.if.end79.i554 ], [ 4602678823104758728, %local_sin.v0.C.c.exit ]
  br label %csroa.if.end69.i558

csroa.if.end69.i558:                              ; preds = %local_sin.v0.C.c.exit, %csroa.if.end74.i556
  %.phi70.i379712 = phi i64 [ %.phi75.i377716, %csroa.if.end74.i556 ], [ 4612684602573564681, %local_sin.v0.C.c.exit ]
  %.phi70.i201614711 = phi i64 [ %.phi75.i199616715, %csroa.if.end74.i556 ], [ 4603964939033565416, %local_sin.v0.C.c.exit ]
  br label %csroa.if.end64.i560

csroa.if.end64.i560:                              ; preds = %local_sin.v0.C.c.exit, %csroa.if.end69.i558
  %.phi65.i381708 = phi i64 [ %.phi70.i379712, %csroa.if.end69.i558 ], [ 4612291589446882733, %local_sin.v0.C.c.exit ]
  %.phi65.i203612707 = phi i64 [ %.phi70.i201614711, %csroa.if.end69.i558 ], [ 4605075138685085801, %local_sin.v0.C.c.exit ]
  br label %csroa.if.end59.i562

csroa.if.end59.i562:                              ; preds = %local_sin.v0.C.c.exit, %csroa.if.end64.i560
  %.phi60.i383704 = phi i64 [ %.phi65.i381708, %csroa.if.end64.i560 ], [ 4611898576320200785, %local_sin.v0.C.c.exit ]
  %.phi60.i205610703 = phi i64 [ %.phi65.i203612707, %csroa.if.end64.i560 ], [ 4605975685322773549, %local_sin.v0.C.c.exit ]
  br label %csroa.if.end54.i564

csroa.if.end54.i564:                              ; preds = %local_sin.v0.C.c.exit, %csroa.if.end59.i562
  %.phi55.i385700 = phi i64 [ %.phi60.i383704, %csroa.if.end59.i562 ], [ 4611325107959649769, %local_sin.v0.C.c.exit ]
  %.phi55.i207608699 = phi i64 [ %.phi60.i205610703, %csroa.if.end59.i562 ], [ 4606639219569943220, %local_sin.v0.C.c.exit ]
  br label %csroa.if.end49.i566

csroa.if.end49.i566:                              ; preds = %local_sin.v0.C.c.exit, %csroa.if.end54.i564
  %.phi50.i387696 = phi i64 [ %.phi55.i385700, %csroa.if.end54.i564 ], [ 4610539081706285873, %local_sin.v0.C.c.exit ]
  %.phi50.i209606695 = phi i64 [ %.phi55.i207608699, %csroa.if.end54.i564 ], [ 4607045579801131401, %local_sin.v0.C.c.exit ]
  br label %csroa.if.end44.i568

csroa.if.end44.i568:                              ; preds = %local_sin.v0.C.c.exit, %csroa.if.end49.i566
  %.phi45.i389692 = phi i64 [ %.phi50.i387696, %csroa.if.end49.i566 ], [ 4609753055452921977, %local_sin.v0.C.c.exit ]
  %.phi45.i211604691 = phi i64 [ %.phi50.i209606695, %csroa.if.end49.i566 ], [ 4607182418293282730, %local_sin.v0.C.c.exit ]
  br label %csroa.if.end39.i570

csroa.if.end39.i570:                              ; preds = %local_sin.v0.C.c.exit, %csroa.if.end44.i568
  %.phi40.i391688 = phi i64 [ %.phi45.i389692, %csroa.if.end44.i568 ], [ 4608967029199558081, %local_sin.v0.C.c.exit ]
  %.phi40.i213602687 = phi i64 [ %.phi45.i211604691, %csroa.if.end44.i568 ], [ 4607045578640063168, %local_sin.v0.C.c.exit ]
  br label %csroa.if.end34.i572

csroa.if.end34.i572:                              ; preds = %local_sin.v0.C.c.exit, %csroa.if.end39.i570
  %.phi35.i393684 = phi i64 [ %.phi40.i391688, %csroa.if.end39.i570 ], [ 4608181002946194185, %local_sin.v0.C.c.exit ]
  %.phi35.i215600683 = phi i64 [ %.phi40.i213602687, %csroa.if.end39.i570 ], [ 4606639217416480941, %local_sin.v0.C.c.exit ]
  br label %csroa.if.end29.i574

csroa.if.end29.i574:                              ; preds = %local_sin.v0.C.c.exit, %csroa.if.end34.i572
  %.phi30.i395680 = phi i64 [ %.phi35.i393684, %csroa.if.end34.i572 ], [ 4607394976692830289, %local_sin.v0.C.c.exit ]
  %.phi30.i217598679 = phi i64 [ %.phi35.i215600683, %csroa.if.end34.i572 ], [ 4605975682307795949, %local_sin.v0.C.c.exit ]
  br label %csroa.if.end24.i576

csroa.if.end24.i576:                              ; preds = %local_sin.v0.C.c.exit, %csroa.if.end29.i574
  %.phi25.i397676 = phi i64 [ %.phi30.i395680, %csroa.if.end29.i574 ], [ 4606035482078915377, %local_sin.v0.C.c.exit ]
  %.phi25.i219596675 = phi i64 [ %.phi30.i217598679, %csroa.if.end29.i574 ], [ 4605075133481489574, %local_sin.v0.C.c.exit ]
  br label %csroa.if.end19.i578

csroa.if.end19.i578:                              ; preds = %local_sin.v0.C.c.exit, %csroa.if.end24.i576
  %.phi20.i399672 = phi i64 [ %.phi25.i397676, %csroa.if.end24.i576 ], [ 4604463429572187585, %local_sin.v0.C.c.exit ]
  %.phi20.i221594671 = phi i64 [ %.phi25.i219596675, %csroa.if.end24.i576 ], [ 4603964934626362083, %local_sin.v0.C.c.exit ]
  br label %csroa.if.end14.i580

csroa.if.end14.i580:                              ; preds = %local_sin.v0.C.c.exit, %csroa.if.end19.i578
  %.phi15.i401668 = phi i64 [ %.phi20.i399672, %csroa.if.end19.i578 ], [ 4602891377065459793, %local_sin.v0.C.c.exit ]
  %.phi15.i223592667 = phi i64 [ %.phi20.i221594671, %csroa.if.end19.i578 ], [ 4602678817326738065, %local_sin.v0.C.c.exit ]
  br label %csroa.if.end9.i582

csroa.if.end9.i582:                               ; preds = %local_sin.v0.C.c.exit, %csroa.if.end14.i580
  %.phi10.i403664 = phi i64 [ %.phi15.i401668, %csroa.if.end14.i580 ], [ 4599959829944817089, %local_sin.v0.C.c.exit ]
  %.phi10.i225590663 = phi i64 [ %.phi15.i223592667, %csroa.if.end14.i580 ], [ 4599832905844899646, %local_sin.v0.C.c.exit ]
  br label %csroa.if.end4.i584

csroa.if.end4.i584:                               ; preds = %local_sin.v0.C.c.exit, %csroa.if.end9.i582
  %.phi5.i405660 = phi i64 [ %.phi10.i403664, %csroa.if.end9.i582 ], [ 4595456230317446593, %local_sin.v0.C.c.exit ]
  %.phi5.i227588659 = phi i64 [ %.phi10.i225590663, %csroa.if.end9.i582 ], [ 4595424353983311309, %local_sin.v0.C.c.exit ]
  br label %__non_const_wrapper__.33.exit

__non_const_wrapper__.33.exit:                    ; preds = %local_sin.v0.C.c.exit, %csroa.if.end4.i584
  %.phi.i407656 = phi i64 [ %.phi5.i405660, %csroa.if.end4.i584 ], [ 0, %local_sin.v0.C.c.exit ]
  %.phi.i229586655 = phi i64 [ %.phi5.i227588659, %csroa.if.end4.i584 ], [ 0, %local_sin.v0.C.c.exit ]
  %.cast.i = bitcast i64 %retval.0.i23 to double
  %call9 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i64 %.phi.i407656, i64 %.phi.i229586655, i64 %retval.0.i23, double %.cast.i)
  %cmp3 = icmp ne i64 %retval.0.i23, %.phi.i229586655
  %conv = zext i1 %cmp3 to i32
  %add = add nsw i32 %conv, %main_result.013
  %inc = add nuw nsw i32 %i.014, 1
  %exitcond = icmp eq i32 %inc, 36
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %__non_const_wrapper__.33.exit
  %call10 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %add)
  ret i32 %add
}

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #2

; Function Attrs: norecurse nounwind
define void @mul64To128.v0.C.c(i64 %a, i64 %b, i64* nocapture %z0Ptr, i64* nocapture %z1Ptr) local_unnamed_addr #3 {
entry:
  %shr = lshr i64 %a, 32
  %shr3 = lshr i64 %b, 32
  %conv5 = and i64 %a, 4294967295
  %conv6 = and i64 %b, 4294967295
  %mul = mul nuw i64 %conv6, %conv5
  %mul9 = mul nuw i64 %shr3, %conv5
  %mul12 = mul nuw i64 %conv6, %shr
  %mul15 = mul nuw i64 %shr3, %shr
  %add = add i64 %mul9, %mul12
  %cmp = icmp ult i64 %add, %mul12
  %conv17 = zext i1 %cmp to i64
  %shl = shl nuw nsw i64 %conv17, 32
  %shr18 = lshr i64 %add, 32
  %add19 = or i64 %shl, %shr18
  %add20 = add i64 %add19, %mul15
  %shl21 = shl i64 %add, 32
  %add22 = add i64 %shl21, %mul
  %cmp23 = icmp ult i64 %add22, %shl21
  %conv25 = zext i1 %cmp23 to i64
  %add26 = add i64 %add20, %conv25
  store i64 %add22, i64* %z1Ptr, align 8
  store i64 %add26, i64* %z0Ptr, align 8
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #4

; Function Attrs: noinline nounwind
define i64 @float64_div.v0.C.c.c(i64 %a, i64 %b) local_unnamed_addr #5 {
entry:
  %term0.i = alloca i64, align 8
  %term1.i = alloca i64, align 8
  %term0 = alloca i64, align 8
  %term1 = alloca i64, align 8
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
  %cmp.i5 = icmp ult i32 %conv.i, 65536
  %shl.i6 = shl i32 %conv.i, 16
  %..i = select i1 %cmp.i5, i32 16, i32 0
  %shl.a.i = select i1 %cmp.i5, i32 %shl.i6, i32 %conv.i
  %cmp1.i = icmp ult i32 %shl.a.i, 16777216
  %add3.i = or i32 %..i, 8
  %shl4.i = shl i32 %shl.a.i, 8
  %shiftCount.1.i = select i1 %cmp1.i, i32 %add3.i, i32 %..i
  %a.addr.1.i = select i1 %cmp1.i, i32 %shl4.i, i32 %shl.a.i
  %shr.i7 = lshr i32 %a.addr.1.i, 24
  %idxprom.i = zext i32 %shr.i7 to i64
  %arrayidx.i = getelementptr inbounds [256 x i32], [256 x i32]* @countLeadingZeros32.countLeadingZerosHigh, i64 0, i64 %idxprom.i
  %0 = load i32, i32* %arrayidx.i, align 4
  %add6.i = or i32 %shiftCount.1.i, %shiftCount.0.i
  %add1.i = add i32 %add6.i, %0
  %sub.i = add nsw i32 %add1.i, -11
  %sh_prom.i = zext i32 %sub.i to i64
  %shl.i = shl i64 %call3.c.c, %sh_prom.i
  %sub1.i = sub i32 12, %add1.i
  br label %if.end35

if.end35:                                         ; preds = %if.end16, %if.end34
  %bSig.0 = phi i64 [ %call3.c.c, %if.end16 ], [ %shl.i, %if.end34 ]
  %bExp.0 = phi i32 [ %call4.c.c, %if.end16 ], [ %sub1.i, %if.end34 ]
  %cmp36 = icmp eq i32 %call1.c.c, 0
  br i1 %cmp36, label %if.then38, label %if.end44

if.then38:                                        ; preds = %if.end35
  %cmp39 = icmp eq i64 %call.c.c, 0
  br i1 %cmp39, label %if.then41, label %if.end43

if.then41:                                        ; preds = %if.then38
  %call42.c.c = tail call i64 @packFloat64.v0.C.c.c(i32 %xor, i32 0, i64 0)
  br label %return

if.end43:                                         ; preds = %if.then38
  %cmp.i12 = icmp ult i64 %call.c.c, 4294967296
  %shr.i13 = lshr i64 %call.c.c, 32
  %shiftCount.0.i14 = select i1 %cmp.i12, i32 32, i32 0
  %a.addr.0.i15 = select i1 %cmp.i12, i64 %call.c.c, i64 %shr.i13
  %conv.i16 = trunc i64 %a.addr.0.i15 to i32
  %cmp.i19 = icmp ult i32 %conv.i16, 65536
  %shl.i20 = shl i32 %conv.i16, 16
  %..i21 = select i1 %cmp.i19, i32 16, i32 0
  %shl.a.i22 = select i1 %cmp.i19, i32 %shl.i20, i32 %conv.i16
  %cmp1.i23 = icmp ult i32 %shl.a.i22, 16777216
  %add3.i24 = or i32 %..i21, 8
  %shl4.i25 = shl i32 %shl.a.i22, 8
  %shiftCount.1.i26 = select i1 %cmp1.i23, i32 %add3.i24, i32 %..i21
  %a.addr.1.i27 = select i1 %cmp1.i23, i32 %shl4.i25, i32 %shl.a.i22
  %shr.i28 = lshr i32 %a.addr.1.i27, 24
  %idxprom.i29 = zext i32 %shr.i28 to i64
  %arrayidx.i30 = getelementptr inbounds [256 x i32], [256 x i32]* @countLeadingZeros32.countLeadingZerosHigh, i64 0, i64 %idxprom.i29
  %1 = load i32, i32* %arrayidx.i30, align 4
  %add6.i31 = or i32 %shiftCount.1.i26, %shiftCount.0.i14
  %add1.i18 = add i32 %add6.i31, %1
  %sub.i8 = add nsw i32 %add1.i18, -11
  %sh_prom.i9 = zext i32 %sub.i8 to i64
  %shl.i10 = shl i64 %call.c.c, %sh_prom.i9
  %sub1.i11 = sub i32 12, %add1.i18
  br label %if.end44

if.end44:                                         ; preds = %if.end43, %if.end35
  %2 = phi i64 [ %shl.i10, %if.end43 ], [ %call.c.c, %if.end35 ]
  %3 = phi i32 [ %sub1.i11, %if.end43 ], [ %call1.c.c, %if.end35 ]
  %sub = sub i32 %3, %bExp.0
  %or45 = shl i64 %2, 10
  %shl = or i64 %or45, 4611686018427387904
  %or46 = shl i64 %bSig.0, 11
  %shl47 = or i64 %or46, -9223372036854775808
  %add48 = shl i64 %shl, 1
  %cmp49 = icmp ugt i64 %shl47, %add48
  %not.cmp49 = xor i1 %cmp49, true
  %shr = zext i1 %not.cmp49 to i64
  %4 = lshr exact i64 %shl, %shr
  %zExp.0.v = select i1 %cmp49, i32 1021, i32 1022
  %zExp.0 = add i32 %sub, %zExp.0.v
  %5 = bitcast i64* %term0.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %5)
  %6 = bitcast i64* %term1.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %6)
  %cmp.i32 = icmp ugt i64 %shl47, %4
  br i1 %cmp.i32, label %if.end.i, label %estimateDiv128To64.v0.C.c.exit.thread

estimateDiv128To64.v0.C.c.exit.thread:            ; preds = %if.end44
  call void @llvm.lifetime.end(i64 8, i8* nonnull %5)
  call void @llvm.lifetime.end(i64 8, i8* nonnull %6)
  br label %if.end63

if.end.i:                                         ; preds = %if.end44
  %shr.i33 = lshr i64 %shl47, 32
  %shl.i34 = shl nuw i64 %shr.i33, 32
  %cmp1.i35 = icmp ugt i64 %shl.i34, %4
  br i1 %cmp1.i35, label %cond.false.i, label %cond.end.i

cond.false.i:                                     ; preds = %if.end.i
  %div.i = udiv i64 %4, %shr.i33
  %shl2.i = shl i64 %div.i, 32
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %if.end.i
  %cond.i = phi i64 [ %shl2.i, %cond.false.i ], [ -4294967296, %if.end.i ]
  call void @mul64To128.v0.C.c(i64 %shl47, i64 %cond.i, i64* nonnull %term0.i, i64* nonnull %term1.i) #8
  %7 = load i64, i64* %term0.i, align 8
  %8 = load i64, i64* %term1.i, align 8
  %sub.i38 = sub i64 0, %8
  %sub1.i39 = sub i64 %4, %7
  %cmp.i40 = icmp ne i64 %8, 0
  %conv2.neg.i = sext i1 %cmp.i40 to i64
  %sub3.i = add i64 %conv2.neg.i, %sub1.i39
  %cmp31.i = icmp slt i64 %sub3.i, 0
  br i1 %cmp31.i, label %while.body.lr.ph.i, label %while.end.i

while.body.lr.ph.i:                               ; preds = %cond.end.i
  %shl4.i36 = shl i64 %bSig.0, 43
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i, %while.body.lr.ph.i
  %rem1.i.0 = phi i64 [ %sub.i38, %while.body.lr.ph.i ], [ %add.i, %while.body.i ]
  %9 = phi i64 [ %sub3.i, %while.body.lr.ph.i ], [ %add3.i43, %while.body.i ]
  %z.02.i = phi i64 [ %cond.i, %while.body.lr.ph.i ], [ %sub.i37, %while.body.i ]
  %sub.i37 = add i64 %z.02.i, -4294967296
  %add.i = add i64 %rem1.i.0, %shl4.i36
  %add1.i41 = add i64 %9, %shr.i33
  %cmp.i42 = icmp ult i64 %add.i, %rem1.i.0
  %conv2.i = zext i1 %cmp.i42 to i64
  %add3.i43 = add i64 %add1.i41, %conv2.i
  %cmp3.i = icmp slt i64 %add3.i43, 0
  br i1 %cmp3.i, label %while.body.i, label %while.end.i.loopexit

while.end.i.loopexit:                             ; preds = %while.body.i
  br label %while.end.i

while.end.i:                                      ; preds = %while.end.i.loopexit, %cond.end.i
  %rem1.i.1 = phi i64 [ %sub.i38, %cond.end.i ], [ %add.i, %while.end.i.loopexit ]
  %z.0.lcssa.i = phi i64 [ %cond.i, %cond.end.i ], [ %sub.i37, %while.end.i.loopexit ]
  %.lcssa.i = phi i64 [ %sub3.i, %cond.end.i ], [ %add3.i43, %while.end.i.loopexit ]
  %shl5.i = shl i64 %.lcssa.i, 32
  %shr6.i = lshr i64 %rem1.i.1, 32
  %or.i = or i64 %shl5.i, %shr6.i
  %cmp8.i = icmp ugt i64 %shl.i34, %or.i
  br i1 %cmp8.i, label %cond.false10.i, label %estimateDiv128To64.v0.C.c.exit

cond.false10.i:                                   ; preds = %while.end.i
  %div11.i = udiv i64 %or.i, %shr.i33
  br label %estimateDiv128To64.v0.C.c.exit

estimateDiv128To64.v0.C.c.exit:                   ; preds = %while.end.i, %cond.false10.i
  %cond13.i = phi i64 [ %div11.i, %cond.false10.i ], [ 4294967295, %while.end.i ]
  %or14.i = or i64 %cond13.i, %z.0.lcssa.i
  call void @llvm.lifetime.end(i64 8, i8* nonnull %5)
  call void @llvm.lifetime.end(i64 8, i8* nonnull %6)
  %and = and i64 %or14.i, 511
  %cmp54 = icmp ult i64 %and, 3
  br i1 %cmp54, label %if.then56, label %if.end63

if.then56:                                        ; preds = %estimateDiv128To64.v0.C.c.exit
  call void @mul64To128.v0.C.c(i64 %shl47, i64 %or14.i, i64* nonnull %term0, i64* nonnull %term1)
  %10 = load i64, i64* %term0, align 8
  %11 = load i64, i64* %term1, align 8
  %sub.i44 = sub i64 0, %11
  %sub1.i45 = sub i64 %4, %10
  %cmp.i46 = icmp ne i64 %11, 0
  %conv2.neg.i47 = sext i1 %cmp.i46 to i64
  %sub3.i48 = add i64 %conv2.neg.i47, %sub1.i45
  %cmp571 = icmp slt i64 %sub3.i48, 0
  br i1 %cmp571, label %while.body.preheader, label %while.end

while.body.preheader:                             ; preds = %if.then56
  br label %while.body

while.body:                                       ; preds = %while.body.preheader, %while.body
  %rem1.0 = phi i64 [ %add.i49, %while.body ], [ %sub.i44, %while.body.preheader ]
  %12 = phi i64 [ %add3.i52, %while.body ], [ %sub3.i48, %while.body.preheader ]
  %zSig.02 = phi i64 [ %dec, %while.body ], [ %or14.i, %while.body.preheader ]
  %dec = add i64 %zSig.02, -1
  %add.i49 = add i64 %rem1.0, %shl47
  %cmp.i50 = icmp ult i64 %add.i49, %rem1.0
  %conv2.i51 = zext i1 %cmp.i50 to i64
  %add3.i52 = add i64 %conv2.i51, %12
  %cmp57 = icmp slt i64 %add3.i52, 0
  br i1 %cmp57, label %while.body, label %while.end.loopexit

while.end.loopexit:                               ; preds = %while.body
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %if.then56
  %rem1.1 = phi i64 [ %sub.i44, %if.then56 ], [ %add.i49, %while.end.loopexit ]
  %zSig.0.lcssa = phi i64 [ %or14.i, %if.then56 ], [ %dec, %while.end.loopexit ]
  %cmp59 = icmp ne i64 %rem1.1, 0
  %conv61 = zext i1 %cmp59 to i64
  %or62 = or i64 %conv61, %zSig.0.lcssa
  br label %if.end63

if.end63:                                         ; preds = %estimateDiv128To64.v0.C.c.exit.thread, %while.end, %estimateDiv128To64.v0.C.c.exit
  %zSig.1 = phi i64 [ %or62, %while.end ], [ %or14.i, %estimateDiv128To64.v0.C.c.exit ], [ -1, %estimateDiv128To64.v0.C.c.exit.thread ]
  %call64.c.c = tail call fastcc i64 @roundAndPackFloat64.v0.C.c.c(i32 %xor, i32 %zExp.0, i64 %zSig.1)
  br label %return

return:                                           ; preds = %if.end63, %if.then41, %if.end32, %if.then31, %if.end22, %if.then20, %if.end14, %if.end13, %if.then11, %if.then6
  %retval.0 = phi i64 [ %call7.c.c, %if.then6 ], [ %call12.c.c, %if.then11 ], [ 9223372036854775807, %if.end13 ], [ %call15.c.c, %if.end14 ], [ %call21.c.c, %if.then20 ], [ %call23.c.c, %if.end22 ], [ 9223372036854775807, %if.then31 ], [ %call33.c.c, %if.end32 ], [ %call42.c.c, %if.then41 ], [ %call64.c.c, %if.end63 ]
  ret i64 %retval.0
}

; Function Attrs: noinline norecurse nounwind
define void @float_raise.v0.C.c.c(i32 %flags) local_unnamed_addr #6 {
entry:
  %0 = load i32, i32* @float_exception_flags, align 4
  %or = or i32 %0, %flags
  store i32 %or, i32* @float_exception_flags, align 4
  ret void
}

; Function Attrs: noinline norecurse nounwind
define void @shift64RightJamming.v0.C.c.c(i64 %a, i32 %count, i64* nocapture %zPtr) local_unnamed_addr #6 {
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
define internal fastcc i64 @subFloat64Sigs.v0.C.c.c(i64 %a, i64 %b, i32 %zSign) unnamed_addr #6 {
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
  %or = or i64 %shl4, %shl
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
  %cmp.i = icmp ult i64 %zSig.0, 4294967296
  %shr.i = lshr i64 %zSig.0, 32
  %shiftCount.0.i = select i1 %cmp.i, i32 32, i32 0
  %a.addr.0.i = select i1 %cmp.i, i64 %zSig.0, i64 %shr.i
  %conv.i = trunc i64 %a.addr.0.i to i32
  %cmp.i3 = icmp ult i32 %conv.i, 65536
  %shl.i4 = shl i32 %conv.i, 16
  %..i = select i1 %cmp.i3, i32 16, i32 0
  %shl.a.i = select i1 %cmp.i3, i32 %shl.i4, i32 %conv.i
  %cmp1.i = icmp ult i32 %shl.a.i, 16777216
  %add3.i = or i32 %..i, 8
  %shl4.i = shl i32 %shl.a.i, 8
  %shiftCount.1.i = select i1 %cmp1.i, i32 %add3.i, i32 %..i
  %a.addr.1.i = select i1 %cmp1.i, i32 %shl4.i, i32 %shl.a.i
  %shr.i5 = lshr i32 %a.addr.1.i, 24
  %idxprom.i = zext i32 %shr.i5 to i64
  %arrayidx.i = getelementptr inbounds [256 x i32], [256 x i32]* @countLeadingZeros32.countLeadingZerosHigh, i64 0, i64 %idxprom.i
  %6 = load i32, i32* %arrayidx.i, align 4
  %add6.i = add i32 %6, -1
  %add1.i = add i32 %add6.i, %shiftCount.0.i
  %sub.i = add i32 %add1.i, %shiftCount.1.i
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
define internal fastcc i64 @roundAndPackFloat64.v0.C.c.c(i32 %zSign, i32 %zExp, i64 %zSig) unnamed_addr #6 {
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
define i64 @float64_mul.v0.C.c.c(i64 %a, i64 %b) local_unnamed_addr #6 {
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
  %cmp6 = icmp ne i32 %call4.c.c, 2047
  %tobool7 = icmp eq i64 %call3.c.c, 0
  %or.cond = or i1 %tobool7, %cmp6
  br i1 %or.cond, label %if.end, label %if.then8

if.then8:                                         ; preds = %lor.lhs.false, %if.then
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
  %cmp.i.i = icmp ult i64 %call.c.c, 4294967296
  %shr.i.i = lshr i64 %call.c.c, 32
  %shiftCount.0.i.i = select i1 %cmp.i.i, i32 32, i32 0
  %a.addr.0.i.i = select i1 %cmp.i.i, i64 %call.c.c, i64 %shr.i.i
  %conv.i.i = trunc i64 %a.addr.0.i.i to i32
  %cmp.i1.i = icmp ult i32 %conv.i.i, 65536
  %shl.i.i = shl i32 %conv.i.i, 16
  %..i.i = select i1 %cmp.i1.i, i32 16, i32 0
  %shl.a.i.i = select i1 %cmp.i1.i, i32 %shl.i.i, i32 %conv.i.i
  %cmp1.i.i = icmp ult i32 %shl.a.i.i, 16777216
  %add3.i.i = or i32 %..i.i, 8
  %shl4.i.i = shl i32 %shl.a.i.i, 8
  %shiftCount.1.i.i = select i1 %cmp1.i.i, i32 %add3.i.i, i32 %..i.i
  %a.addr.1.i.i = select i1 %cmp1.i.i, i32 %shl4.i.i, i32 %shl.a.i.i
  %shr.i2.i = lshr i32 %a.addr.1.i.i, 24
  %idxprom.i.i = zext i32 %shr.i2.i to i64
  %arrayidx.i.i = getelementptr inbounds [256 x i32], [256 x i32]* @countLeadingZeros32.countLeadingZerosHigh, i64 0, i64 %idxprom.i.i
  %0 = load i32, i32* %arrayidx.i.i, align 4
  %add6.i.i = or i32 %shiftCount.1.i.i, %shiftCount.0.i.i
  %add1.i.i = add i32 %add6.i.i, %0
  %sub.i = add nsw i32 %add1.i.i, -11
  %sh_prom.i = zext i32 %sub.i to i64
  %shl.i = shl i64 %call.c.c, %sh_prom.i
  %sub1.i = sub i32 12, %add1.i.i
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
  %cmp.i.i2 = icmp ult i64 %call3.c.c, 4294967296
  %shr.i.i3 = lshr i64 %call3.c.c, 32
  %shiftCount.0.i.i4 = select i1 %cmp.i.i2, i32 32, i32 0
  %a.addr.0.i.i5 = select i1 %cmp.i.i2, i64 %call3.c.c, i64 %shr.i.i3
  %conv.i.i6 = trunc i64 %a.addr.0.i.i5 to i32
  %cmp.i1.i7 = icmp ult i32 %conv.i.i6, 65536
  %shl.i.i8 = shl i32 %conv.i.i6, 16
  %..i.i9 = select i1 %cmp.i1.i7, i32 16, i32 0
  %shl.a.i.i10 = select i1 %cmp.i1.i7, i32 %shl.i.i8, i32 %conv.i.i6
  %cmp1.i.i11 = icmp ult i32 %shl.a.i.i10, 16777216
  %add3.i.i12 = or i32 %..i.i9, 8
  %shl4.i.i13 = shl i32 %shl.a.i.i10, 8
  %shiftCount.1.i.i14 = select i1 %cmp1.i.i11, i32 %add3.i.i12, i32 %..i.i9
  %a.addr.1.i.i15 = select i1 %cmp1.i.i11, i32 %shl4.i.i13, i32 %shl.a.i.i10
  %shr.i2.i16 = lshr i32 %a.addr.1.i.i15, 24
  %idxprom.i.i17 = zext i32 %shr.i2.i16 to i64
  %arrayidx.i.i18 = getelementptr inbounds [256 x i32], [256 x i32]* @countLeadingZeros32.countLeadingZerosHigh, i64 0, i64 %idxprom.i.i17
  %1 = load i32, i32* %arrayidx.i.i18, align 4
  %add6.i.i19 = or i32 %shiftCount.1.i.i14, %shiftCount.0.i.i4
  %add1.i.i20 = add i32 %add6.i.i19, %1
  %sub.i21 = add nsw i32 %add1.i.i20, -11
  %sh_prom.i22 = zext i32 %sub.i21 to i64
  %shl.i23 = shl i64 %call3.c.c, %sh_prom.i22
  %sub1.i24 = sub i32 12, %add1.i.i20
  br label %if.end48

if.end48:                                         ; preds = %if.end47, %if.end39
  %2 = phi i64 [ %shl.i23, %if.end47 ], [ %call3.c.c, %if.end39 ]
  %3 = phi i32 [ %sub1.i24, %if.end47 ], [ %call4.c.c, %if.end39 ]
  %add = add nsw i32 %3, %aExp.0
  %or49 = shl i64 %aSig.0, 10
  %or50 = shl i64 %2, 11
  %4 = lshr i64 %aSig.0, 22
  %shl = and i64 %4, 3221225471
  %shr.i = or i64 %shl, 1073741824
  %5 = lshr i64 %2, 21
  %shl51 = and i64 %5, 2147483647
  %shr3.i = or i64 %shl51, 2147483648
  %conv5.i = and i64 %or49, 4294966272
  %conv6.i = and i64 %or50, 4294965248
  %mul.i = mul nuw i64 %conv6.i, %conv5.i
  %mul9.i = mul nuw i64 %shr3.i, %conv5.i
  %mul12.i = mul nuw i64 %conv6.i, %shr.i
  %mul15.i = mul nuw i64 %shr3.i, %shr.i
  %add.i = add i64 %mul9.i, %mul12.i
  %cmp.i = icmp ult i64 %add.i, %mul12.i
  %conv17.i = zext i1 %cmp.i to i64
  %shl.i25 = shl nuw nsw i64 %conv17.i, 32
  %shr18.i = lshr i64 %add.i, 32
  %add19.i = or i64 %shl.i25, %shr18.i
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
  %6 = xor i64 %shl56.mask.lobit, 1
  %7 = shl i64 %or55, %6
  %zExp.0.v = select i1 %cmp57, i32 -1024, i32 -1023
  %zExp.0 = add i32 %add, %zExp.0.v
  %call62.c.c = tail call fastcc i64 @roundAndPackFloat64.v0.C.c.c(i32 %xor, i32 %zExp.0, i64 %7)
  br label %return

return:                                           ; preds = %if.end48, %if.then45, %if.then36, %if.end28, %if.then27, %if.then20, %if.end13, %if.then12, %if.then8
  %retval.0 = phi i64 [ %call9.c.c, %if.then8 ], [ 9223372036854775807, %if.then12 ], [ %call14.c.c, %if.end13 ], [ %call21.c.c, %if.then20 ], [ 9223372036854775807, %if.then27 ], [ %call29.c.c, %if.end28 ], [ %call37.c.c, %if.then36 ], [ %call46.c.c, %if.then45 ], [ %call62.c.c, %if.end48 ]
  ret i64 %retval.0
}

; Function Attrs: noinline norecurse nounwind
define internal fastcc i64 @propagateFloat64NaN.v0.C.c.c(i64 %a, i64 %b) unnamed_addr #6 {
entry:
  %and.i = and i64 %a, 9221120237041090560
  %cmp.i = icmp eq i64 %and.i, 9218868437227405312
  %and1.i = and i64 %a, 2251799813685247
  %tobool.i = icmp ne i64 %and1.i, 0
  %0 = and i1 %cmp.i, %tobool.i
  %shl.i = shl i64 %b, 1
  %cmp.i1 = icmp ugt i64 %shl.i, -9007199254740992
  %and.i2 = and i64 %b, 9221120237041090560
  %cmp.i3 = icmp eq i64 %and.i2, 9218868437227405312
  %and1.i4 = and i64 %b, 2251799813685247
  %tobool.i5 = icmp ne i64 %and1.i4, 0
  %1 = and i1 %cmp.i3, %tobool.i5
  %or = or i64 %a, 2251799813685248
  %or4 = or i64 %b, 2251799813685248
  %or51 = or i1 %0, %1
  br i1 %or51, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @float_raise.v0.C.c.c(i32 16)
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  br i1 %1, label %cond.end15, label %cond.false

cond.false:                                       ; preds = %if.end
  %tobool7.demorgan = and i1 %cmp.i, %tobool.i
  %tobool7 = xor i1 %tobool7.demorgan, true
  %2 = and i1 %cmp.i1, %tobool7
  %cond14 = select i1 %2, i64 %or4, i64 %or
  br label %cond.end15

cond.end15:                                       ; preds = %if.end, %cond.false
  %cond16 = phi i64 [ %or4, %if.end ], [ %cond14, %cond.false ]
  ret i64 %cond16
}

; Function Attrs: noinline norecurse nounwind readnone
define i64 @extractFloat64Frac.v0.C.c.c(i64 %a) local_unnamed_addr #7 {
entry:
  %and = and i64 %a, 4503599627370495
  ret i64 %and
}

; Function Attrs: noinline norecurse nounwind readnone
define i32 @extractFloat64Exp.v0.C.c.c(i64 %a) local_unnamed_addr #7 {
entry:
  %shr = lshr i64 %a, 52
  %0 = trunc i64 %shr to i32
  %conv = and i32 %0, 2047
  ret i32 %conv
}

; Function Attrs: noinline norecurse nounwind readnone
define i32 @extractFloat64Sign.v0.C.c.c(i64 %a) local_unnamed_addr #7 {
entry:
  %shr = lshr i64 %a, 63
  %conv = trunc i64 %shr to i32
  ret i32 %conv
}

; Function Attrs: noinline norecurse nounwind readnone
define i64 @packFloat64.v0.C.c.c(i32 %zSign, i32 %zExp, i64 %zSig) local_unnamed_addr #7 {
entry:
  %conv2 = zext i32 %zSign to i64
  %shl = shl i64 %conv2, 63
  %conv13 = zext i32 %zExp to i64
  %shl2 = shl i64 %conv13, 52
  %add = add i64 %shl, %zSig
  %add3 = add i64 %add, %shl2
  ret i64 %add3
}

attributes #0 = { noinline norecurse nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { norecurse nounwind }
attributes #4 = { argmemonly nounwind }
attributes #5 = { noinline nounwind }
attributes #6 = { noinline norecurse nounwind }
attributes #7 = { noinline norecurse nounwind readnone }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
