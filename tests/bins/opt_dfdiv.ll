; ModuleID = './../tests/test_cases/dfdiv.ll'
source_filename = "dfdiv.c"
target datalayout = "e-m:o-p:32:32-f64:32:64-f80:128-n8:16:32-S128"
target triple = "i386-apple-macosx10.13.0"

@float_exception_flags = local_unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [71 x i8] c"a_input=%016llx b_input=%016llx expected=%016llx output=%016llx (%lf)\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@countLeadingZeros32.countLeadingZerosHigh = internal unnamed_addr constant [256 x i32] [i32 8, i32 7, i32 6, i32 6, i32 5, i32 5, i32 5, i32 5, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 4

; Function Attrs: noinline nounwind ssp
define i32 @main() local_unnamed_addr #0 {
entry:
  br label %for.body

for.body:                                         ; preds = %__non_const_wrapper__.24.exit, %entry
  %i.017 = phi i32 [ 0, %entry ], [ %inc, %__non_const_wrapper__.24.exit ]
  %main_result.016 = phi i32 [ 0, %entry ], [ %add, %__non_const_wrapper__.24.exit ]
  switch i32 %i.017, label %csroa.if.end104.i [
    i32 0, label %__non_const_wrapper__.20.exit
    i32 1, label %__non_const_wrapper__.exit
    i32 2, label %__non_const_wrapper__.exit
    i32 3, label %__non_const_wrapper__.exit
    i32 4, label %csroa.if.end19.i
    i32 5, label %csroa.if.end19.i
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
  ]

csroa.if.end104.i:                                ; preds = %for.body
  br label %csroa.if.end99.i

csroa.if.end99.i:                                 ; preds = %for.body, %csroa.if.end104.i
  %.phi100.i = phi i64 [ -4616189618054758400, %csroa.if.end104.i ], [ 4607182418800017408, %for.body ]
  br label %csroa.if.end94.i

csroa.if.end94.i:                                 ; preds = %for.body, %csroa.if.end99.i
  %.phi95.i = phi i64 [ %.phi100.i, %csroa.if.end99.i ], [ -4616189618054758400, %for.body ]
  br label %csroa.if.end89.i

csroa.if.end89.i:                                 ; preds = %for.body, %csroa.if.end94.i
  %.phi90.i = phi i64 [ %.phi95.i, %csroa.if.end94.i ], [ 4607182418800017408, %for.body ]
  br label %csroa.if.end84.i

csroa.if.end84.i:                                 ; preds = %for.body, %csroa.if.end89.i
  %.phi85.i = phi i64 [ %.phi90.i, %csroa.if.end89.i ], [ -4611686018427387904, %for.body ]
  br label %csroa.if.end79.i

csroa.if.end79.i:                                 ; preds = %for.body, %csroa.if.end84.i
  %.phi80.i = phi i64 [ %.phi85.i, %csroa.if.end84.i ], [ 4611686018427387904, %for.body ]
  br label %csroa.if.end74.i

csroa.if.end74.i:                                 ; preds = %for.body, %csroa.if.end79.i
  %.phi75.i = phi i64 [ %.phi80.i, %csroa.if.end79.i ], [ -4611686018427387904, %for.body ]
  br label %csroa.if.end69.i

csroa.if.end69.i:                                 ; preds = %for.body, %csroa.if.end74.i
  %.phi70.i = phi i64 [ %.phi75.i, %csroa.if.end74.i ], [ 4611686018427387904, %for.body ]
  br label %csroa.if.end64.i

csroa.if.end64.i:                                 ; preds = %for.body, %csroa.if.end69.i
  %.phi65.i = phi i64 [ %.phi70.i, %csroa.if.end69.i ], [ -4609434218613702656, %for.body ]
  br label %csroa.if.end59.i

csroa.if.end59.i:                                 ; preds = %for.body, %csroa.if.end64.i
  %.phi60.i = phi i64 [ %.phi65.i, %csroa.if.end64.i ], [ 4613937818241073152, %for.body ]
  br label %csroa.if.end54.i

csroa.if.end54.i:                                 ; preds = %for.body, %csroa.if.end59.i
  %.phi55.i = phi i64 [ %.phi60.i, %csroa.if.end59.i ], [ -4609434218613702656, %for.body ]
  br label %csroa.if.end49.i

csroa.if.end49.i:                                 ; preds = %for.body, %csroa.if.end54.i
  %.phi50.i = phi i64 [ %.phi55.i, %csroa.if.end54.i ], [ 4613937818241073152, %for.body ]
  br label %csroa.if.end44.i

csroa.if.end44.i:                                 ; preds = %for.body, %csroa.if.end49.i
  %.phi45.i = phi i64 [ %.phi50.i, %csroa.if.end49.i ], [ -9223372036854775808, %for.body ]
  br label %csroa.if.end39.i

csroa.if.end39.i:                                 ; preds = %for.body, %csroa.if.end44.i
  %.phi40.i = phi i64 [ %.phi45.i, %csroa.if.end44.i ], [ 0, %for.body ]
  br label %csroa.if.end34.i

csroa.if.end34.i:                                 ; preds = %for.body, %csroa.if.end39.i
  %.phi35.i = phi i64 [ %.phi40.i, %csroa.if.end39.i ], [ 4607182418800017408, %for.body ]
  br label %csroa.if.end29.i

csroa.if.end29.i:                                 ; preds = %for.body, %csroa.if.end34.i
  %.phi30.i = phi i64 [ %.phi35.i, %csroa.if.end34.i ], [ 0, %for.body ]
  br label %csroa.if.end19.i

csroa.if.end19.i:                                 ; preds = %csroa.if.end29.i, %for.body, %for.body
  %.phi20.i = phi i64 [ 4607182418800017408, %for.body ], [ %.phi30.i, %csroa.if.end29.i ], [ 4607182418800017408, %for.body ]
  br label %__non_const_wrapper__.exit

__non_const_wrapper__.exit:                       ; preds = %for.body, %csroa.if.end19.i, %for.body, %for.body
  %.phi5.i = phi i64 [ 9218868437227405312, %for.body ], [ 9218868437227405312, %for.body ], [ %.phi20.i, %csroa.if.end19.i ], [ 9218868437227405312, %for.body ]
  switch i32 %i.017, label %csroa.if.end99.i85 [
    i32 19, label %csroa.if.end89.i89
    i32 1, label %__non_const_wrapper__.20.exit
    i32 2, label %csroa.if.end9.i121
    i32 3, label %csroa.if.end14.i119
    i32 4, label %csroa.if.end19.i117
    i32 5, label %csroa.if.end24.i115
    i32 6, label %csroa.if.end29.i113
    i32 7, label %csroa.if.end29.i113
    i32 8, label %csroa.if.end39.i109
    i32 9, label %csroa.if.end39.i109
    i32 10, label %csroa.if.end49.i105
    i32 11, label %csroa.if.end49.i105
    i32 12, label %csroa.if.end59.i101
    i32 13, label %csroa.if.end59.i101
    i32 14, label %csroa.if.end69.i97
    i32 15, label %csroa.if.end69.i97
    i32 16, label %csroa.if.end79.i93
    i32 17, label %csroa.if.end79.i93
    i32 18, label %csroa.if.end89.i89
  ]

csroa.if.end99.i85:                               ; preds = %__non_const_wrapper__.exit
  br label %csroa.if.end89.i89

csroa.if.end89.i89:                               ; preds = %__non_const_wrapper__.exit, %csroa.if.end99.i85, %__non_const_wrapper__.exit
  %.phi90.i88 = phi i64 [ 4609434218613702656, %__non_const_wrapper__.exit ], [ -4613937818241073152, %csroa.if.end99.i85 ], [ 4609434218613702656, %__non_const_wrapper__.exit ]
  br label %csroa.if.end79.i93

csroa.if.end79.i93:                               ; preds = %csroa.if.end89.i89, %__non_const_wrapper__.exit, %__non_const_wrapper__.exit
  %.phi80.i92 = phi i64 [ -4607182418800017408, %__non_const_wrapper__.exit ], [ %.phi90.i88, %csroa.if.end89.i89 ], [ -4607182418800017408, %__non_const_wrapper__.exit ]
  br label %csroa.if.end69.i97

csroa.if.end69.i97:                               ; preds = %csroa.if.end79.i93, %__non_const_wrapper__.exit, %__non_const_wrapper__.exit
  %.phi70.i96 = phi i64 [ 4616189618054758400, %__non_const_wrapper__.exit ], [ %.phi80.i92, %csroa.if.end79.i93 ], [ 4616189618054758400, %__non_const_wrapper__.exit ]
  br label %csroa.if.end59.i101

csroa.if.end59.i101:                              ; preds = %csroa.if.end69.i97, %__non_const_wrapper__.exit, %__non_const_wrapper__.exit
  %.phi60.i100 = phi i64 [ -4611686018427387904, %__non_const_wrapper__.exit ], [ %.phi70.i96, %csroa.if.end69.i97 ], [ -4611686018427387904, %__non_const_wrapper__.exit ]
  br label %csroa.if.end49.i105

csroa.if.end49.i105:                              ; preds = %csroa.if.end59.i101, %__non_const_wrapper__.exit, %__non_const_wrapper__.exit
  %.phi50.i104 = phi i64 [ 4611686018427387904, %__non_const_wrapper__.exit ], [ %.phi60.i100, %csroa.if.end59.i101 ], [ 4611686018427387904, %__non_const_wrapper__.exit ]
  br label %csroa.if.end39.i109

csroa.if.end39.i109:                              ; preds = %csroa.if.end49.i105, %__non_const_wrapper__.exit, %__non_const_wrapper__.exit
  %.phi40.i108 = phi i64 [ 4607182418800017408, %__non_const_wrapper__.exit ], [ %.phi50.i104, %csroa.if.end49.i105 ], [ 4607182418800017408, %__non_const_wrapper__.exit ]
  br label %csroa.if.end29.i113

csroa.if.end29.i113:                              ; preds = %csroa.if.end39.i109, %__non_const_wrapper__.exit, %__non_const_wrapper__.exit
  %.phi30.i112 = phi i64 [ 0, %__non_const_wrapper__.exit ], [ %.phi40.i108, %csroa.if.end39.i109 ], [ 0, %__non_const_wrapper__.exit ]
  br label %csroa.if.end24.i115

csroa.if.end24.i115:                              ; preds = %__non_const_wrapper__.exit, %csroa.if.end29.i113
  %.phi25.i114 = phi i64 [ %.phi30.i112, %csroa.if.end29.i113 ], [ 9218868437227405312, %__non_const_wrapper__.exit ]
  br label %csroa.if.end19.i117

csroa.if.end19.i117:                              ; preds = %__non_const_wrapper__.exit, %csroa.if.end24.i115
  %.phi20.i116 = phi i64 [ %.phi25.i114, %csroa.if.end24.i115 ], [ 9221120237041090560, %__non_const_wrapper__.exit ]
  br label %csroa.if.end14.i119

csroa.if.end14.i119:                              ; preds = %__non_const_wrapper__.exit, %csroa.if.end19.i117
  %.phi15.i118 = phi i64 [ %.phi20.i116, %csroa.if.end19.i117 ], [ 4607182418800017408, %__non_const_wrapper__.exit ]
  br label %csroa.if.end9.i121

csroa.if.end9.i121:                               ; preds = %__non_const_wrapper__.exit, %csroa.if.end14.i119
  %.phi10.i120 = phi i64 [ %.phi15.i118, %csroa.if.end14.i119 ], [ 9218868437227405312, %__non_const_wrapper__.exit ]
  br label %__non_const_wrapper__.20.exit

__non_const_wrapper__.20.exit:                    ; preds = %csroa.if.end9.i121, %__non_const_wrapper__.exit, %for.body
  %.phi.i660 = phi i64 [ 9223090561878065152, %for.body ], [ %.phi5.i, %__non_const_wrapper__.exit ], [ %.phi5.i, %csroa.if.end9.i121 ]
  %.phi.i124 = phi i64 [ 4607182418800017408, %for.body ], [ 9221120237041090560, %__non_const_wrapper__.exit ], [ %.phi10.i120, %csroa.if.end9.i121 ]
  %and.i125 = and i64 %.phi.i660, 4503599627370495
  %shr.i126 = lshr i64 %.phi.i660, 52
  %0 = trunc i64 %shr.i126 to i32
  %conv.i127 = and i32 %0, 2047
  %and.i130 = and i64 %.phi.i124, 4503599627370495
  %shr.i131 = lshr i64 %.phi.i124, 52
  %1 = trunc i64 %shr.i131 to i32
  %conv.i132 = and i32 %1, 2047
  %shr.i133658 = xor i64 %.phi.i124, %.phi.i660
  %xor.i657 = lshr i64 %shr.i133658, 63
  %xor.i = trunc i64 %xor.i657 to i32
  %cmp.i = icmp eq i32 %conv.i127, 2047
  br i1 %cmp.i, label %if.then.i, label %if.end16.i

if.then.i:                                        ; preds = %__non_const_wrapper__.20.exit
  %tobool.i = icmp eq i64 %and.i125, 0
  br i1 %tobool.i, label %if.end.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.then.i
  %call7.c.i.c = tail call fastcc i64 @propagateFloat64NaN.v0.C.c.c(i64 %.phi.i660, i64 %.phi.i124) #4
  br label %float64_div.v0.C.c.exit

if.end.i:                                         ; preds = %if.then.i
  %cmp8.i = icmp eq i32 %conv.i132, 2047
  br i1 %cmp8.i, label %if.then9.i, label %if.end14.i

if.then9.i:                                       ; preds = %if.end.i
  %tobool10.i = icmp eq i64 %and.i130, 0
  br i1 %tobool10.i, label %if.end13.i, label %if.then11.i

if.then11.i:                                      ; preds = %if.then9.i
  %call12.c.i.c = tail call fastcc i64 @propagateFloat64NaN.v0.C.c.c(i64 %.phi.i660, i64 %.phi.i124) #4
  br label %float64_div.v0.C.c.exit

if.end13.i:                                       ; preds = %if.then9.i
  tail call void @float_raise.v0.C.c.c(i32 16) #4
  br label %float64_div.v0.C.c.exit

if.end14.i:                                       ; preds = %if.end.i
  %call15.c.i.c = tail call i64 @packFloat64.v0.C.c.c(i32 %xor.i, i32 2047, i64 0) #4
  br label %float64_div.v0.C.c.exit

if.end16.i:                                       ; preds = %__non_const_wrapper__.20.exit
  %trunc = trunc i64 %shr.i131 to i11
  switch i11 %trunc, label %if.end35.i [
    i11 -1, label %if.then18.i
    i11 0, label %if.then26.i
  ]

if.then18.i:                                      ; preds = %if.end16.i
  %tobool19.i = icmp eq i64 %and.i130, 0
  br i1 %tobool19.i, label %if.end22.i, label %if.then20.i

if.then20.i:                                      ; preds = %if.then18.i
  %call21.c.i.c = tail call fastcc i64 @propagateFloat64NaN.v0.C.c.c(i64 %.phi.i660, i64 %.phi.i124) #4
  br label %float64_div.v0.C.c.exit

if.end22.i:                                       ; preds = %if.then18.i
  %call23.c.i.c = tail call i64 @packFloat64.v0.C.c.c(i32 %xor.i, i32 0, i64 0) #4
  br label %float64_div.v0.C.c.exit

if.then26.i:                                      ; preds = %if.end16.i
  %cmp27.i = icmp eq i64 %and.i130, 0
  br i1 %cmp27.i, label %if.then28.i, label %if.end34.i

if.then28.i:                                      ; preds = %if.then26.i
  %conv.i659 = zext i32 %conv.i127 to i64
  %or.i = or i64 %conv.i659, %and.i125
  %cmp29.i = icmp eq i64 %or.i, 0
  br i1 %cmp29.i, label %if.then31.i, label %if.end32.i

if.then31.i:                                      ; preds = %if.then28.i
  tail call void @float_raise.v0.C.c.c(i32 16) #4
  br label %float64_div.v0.C.c.exit

if.end32.i:                                       ; preds = %if.then28.i
  tail call void @float_raise.v0.C.c.c(i32 2) #4
  %call33.c.i.c = tail call i64 @packFloat64.v0.C.c.c(i32 %xor.i, i32 2047, i64 0) #4
  br label %float64_div.v0.C.c.exit

if.end34.i:                                       ; preds = %if.then26.i
  %cmp.i137 = icmp ult i64 %and.i130, 4294967296
  %shr.i138 = lshr i64 %and.i130, 32
  %shr.sink.i = select i1 %cmp.i137, i64 %.phi.i124, i64 %shr.i138
  %shiftCount.0.i = select i1 %cmp.i137, i32 32, i32 0
  %extract.t1.i = trunc i64 %shr.sink.i to i32
  %cmp.i140 = icmp ult i32 %extract.t1.i, 65536
  %shl.i141 = shl i32 %extract.t1.i, 16
  %..i = select i1 %cmp.i140, i32 16, i32 0
  %shl.a.i = select i1 %cmp.i140, i32 %shl.i141, i32 %extract.t1.i
  %cmp1.i = icmp ult i32 %shl.a.i, 16777216
  %add3.i = or i32 %..i, 8
  %shl4.i = shl i32 %shl.a.i, 8
  %shiftCount.1.i = select i1 %cmp1.i, i32 %add3.i, i32 %..i
  %a.addr.1.i = select i1 %cmp1.i, i32 %shl4.i, i32 %shl.a.i
  %shr.i142 = lshr i32 %a.addr.1.i, 24
  %arrayidx.i = getelementptr inbounds [256 x i32], [256 x i32]* @countLeadingZeros32.countLeadingZerosHigh, i32 0, i32 %shr.i142
  %2 = load i32, i32* %arrayidx.i, align 4
  %add6.i = or i32 %shiftCount.1.i, %shiftCount.0.i
  %add1.i = add i32 %add6.i, %2
  %sub.i135 = add nsw i32 %add1.i, -11
  %sh_prom.i = zext i32 %sub.i135 to i64
  %shl.i136 = shl i64 %and.i130, %sh_prom.i
  %sub1.i = sub i32 12, %add1.i
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.end34.i, %if.end16.i
  %bSig.i.0 = phi i64 [ %and.i130, %if.end16.i ], [ %shl.i136, %if.end34.i ]
  %bExp.i.0 = phi i32 [ %conv.i132, %if.end16.i ], [ %sub1.i, %if.end34.i ]
  %cmp36.i = icmp eq i32 %conv.i127, 0
  br i1 %cmp36.i, label %if.then38.i, label %if.end44.i

if.then38.i:                                      ; preds = %if.end35.i
  %cmp39.i = icmp eq i64 %and.i125, 0
  br i1 %cmp39.i, label %if.then41.i, label %if.end43.i

if.then41.i:                                      ; preds = %if.then38.i
  %call42.c.i.c = tail call i64 @packFloat64.v0.C.c.c(i32 %xor.i, i32 0, i64 0) #4
  br label %float64_div.v0.C.c.exit

if.end43.i:                                       ; preds = %if.then38.i
  %cmp.i147 = icmp ult i64 %and.i125, 4294967296
  %shr.i148 = lshr i64 %and.i125, 32
  %shr.sink.i149 = select i1 %cmp.i147, i64 %.phi.i660, i64 %shr.i148
  %shiftCount.0.i150 = select i1 %cmp.i147, i32 32, i32 0
  %extract.t1.i151 = trunc i64 %shr.sink.i149 to i32
  %cmp.i154 = icmp ult i32 %extract.t1.i151, 65536
  %shl.i155 = shl i32 %extract.t1.i151, 16
  %..i156 = select i1 %cmp.i154, i32 16, i32 0
  %shl.a.i157 = select i1 %cmp.i154, i32 %shl.i155, i32 %extract.t1.i151
  %cmp1.i158 = icmp ult i32 %shl.a.i157, 16777216
  %add3.i159 = or i32 %..i156, 8
  %shl4.i160 = shl i32 %shl.a.i157, 8
  %shiftCount.1.i161 = select i1 %cmp1.i158, i32 %add3.i159, i32 %..i156
  %a.addr.1.i162 = select i1 %cmp1.i158, i32 %shl4.i160, i32 %shl.a.i157
  %shr.i163 = lshr i32 %a.addr.1.i162, 24
  %arrayidx.i164 = getelementptr inbounds [256 x i32], [256 x i32]* @countLeadingZeros32.countLeadingZerosHigh, i32 0, i32 %shr.i163
  %3 = load i32, i32* %arrayidx.i164, align 4
  %add6.i165 = or i32 %shiftCount.1.i161, %shiftCount.0.i150
  %add1.i153 = add i32 %add6.i165, %3
  %sub.i143 = add nsw i32 %add1.i153, -11
  %sh_prom.i144 = zext i32 %sub.i143 to i64
  %shl.i145 = shl i64 %and.i125, %sh_prom.i144
  %sub1.i146 = sub i32 12, %add1.i153
  br label %if.end44.i

if.end44.i:                                       ; preds = %if.end43.i, %if.end35.i
  %4 = phi i64 [ %shl.i145, %if.end43.i ], [ %and.i125, %if.end35.i ]
  %5 = phi i32 [ %sub1.i146, %if.end43.i ], [ %conv.i127, %if.end35.i ]
  %sub.i = sub nsw i32 %5, %bExp.i.0
  %or45.i = shl i64 %4, 10
  %shl.i = or i64 %or45.i, 4611686018427387904
  %or46.i = shl i64 %bSig.i.0, 11
  %shl47.i = or i64 %or46.i, -9223372036854775808
  %add48.i = shl i64 %shl.i, 1
  %cmp49.i = icmp ugt i64 %shl47.i, %add48.i
  %not.cmp49.i = xor i1 %cmp49.i, true
  %shr.i = zext i1 %not.cmp49.i to i64
  %6 = lshr exact i64 %shl.i, %shr.i
  %zExp.0.i.v = select i1 %cmp49.i, i32 1021, i32 1022
  %zExp.0.i = add i32 %zExp.0.i.v, %sub.i
  %cmp.i170 = icmp ugt i64 %shl47.i, %6
  br i1 %cmp.i170, label %if.end.i174, label %if.end63.i

if.end.i174:                                      ; preds = %if.end44.i
  %shr.i171 = lshr i64 %shl47.i, 32
  %shl.i172 = shl nuw i64 %shr.i171, 32
  %cmp1.i173 = icmp ugt i64 %shl.i172, %6
  br i1 %cmp1.i173, label %cond.false.i, label %cond.end.i

cond.false.i:                                     ; preds = %if.end.i174
  %div.i = udiv i64 %6, %shr.i171
  %shl2.i = shl i64 %div.i, 32
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %if.end.i174
  %cond.i = phi i64 [ %shl2.i, %cond.false.i ], [ -4294967296, %if.end.i174 ]
  %shr3.i = lshr exact i64 %cond.i, 32
  %conv5.i = and i64 %or46.i, 4294965248
  %mul9.i = mul nuw i64 %shr3.i, %conv5.i
  %mul15.i = mul nuw i64 %shr3.i, %shr.i171
  %shr18.i = lshr i64 %mul9.i, 32
  %shl21.i = shl i64 %mul9.i, 32
  %sub.i184 = sub i64 0, %shl21.i
  %cmp.i186 = icmp ne i64 %shl21.i, 0
  %conv2.neg.i = sext i1 %cmp.i186 to i64
  %add20.i.neg = sub i64 %6, %mul15.i
  %sub1.i185 = sub i64 %add20.i.neg, %shr18.i
  %sub3.i = add i64 %sub1.i185, %conv2.neg.i
  %cmp31.i = icmp slt i64 %sub3.i, 0
  br i1 %cmp31.i, label %while.body.lr.ph.i, label %while.end.i181

while.body.lr.ph.i:                               ; preds = %cond.end.i
  %shl4.i175 = shl i64 %bSig.i.0, 43
  br label %while.body.i177

while.body.i177:                                  ; preds = %while.body.i177, %while.body.lr.ph.i
  %rem1.i167.0 = phi i64 [ %sub.i184, %while.body.lr.ph.i ], [ %add.i187, %while.body.i177 ]
  %7 = phi i64 [ %sub3.i, %while.body.lr.ph.i ], [ %add3.i190, %while.body.i177 ]
  %z.02.i = phi i64 [ %cond.i, %while.body.lr.ph.i ], [ %sub.i176, %while.body.i177 ]
  %sub.i176 = add i64 %z.02.i, -4294967296
  %add.i187 = add i64 %rem1.i167.0, %shl4.i175
  %add1.i188 = add i64 %7, %shr.i171
  %cmp.i189 = icmp ult i64 %add.i187, %rem1.i167.0
  %conv2.i = zext i1 %cmp.i189 to i64
  %add3.i190 = add i64 %add1.i188, %conv2.i
  %cmp3.i = icmp slt i64 %add3.i190, 0
  br i1 %cmp3.i, label %while.body.i177, label %while.end.i181.loopexit

while.end.i181.loopexit:                          ; preds = %while.body.i177
  br label %while.end.i181

while.end.i181:                                   ; preds = %while.end.i181.loopexit, %cond.end.i
  %rem1.i167.1 = phi i64 [ %sub.i184, %cond.end.i ], [ %add.i187, %while.end.i181.loopexit ]
  %z.0.lcssa.i = phi i64 [ %cond.i, %cond.end.i ], [ %sub.i176, %while.end.i181.loopexit ]
  %.lcssa.i = phi i64 [ %sub3.i, %cond.end.i ], [ %add3.i190, %while.end.i181.loopexit ]
  %shl5.i = shl i64 %.lcssa.i, 32
  %shr6.i = lshr i64 %rem1.i167.1, 32
  %or.i179 = or i64 %shl5.i, %shr6.i
  %cmp8.i180 = icmp ugt i64 %shl.i172, %or.i179
  br i1 %cmp8.i180, label %cond.false10.i, label %estimateDiv128To64.v0.C.c.exit

cond.false10.i:                                   ; preds = %while.end.i181
  %div11.i = udiv i64 %or.i179, %shr.i171
  br label %estimateDiv128To64.v0.C.c.exit

estimateDiv128To64.v0.C.c.exit:                   ; preds = %while.end.i181, %cond.false10.i
  %cond13.i = phi i64 [ %div11.i, %cond.false10.i ], [ 4294967295, %while.end.i181 ]
  %or14.i = or i64 %cond13.i, %z.0.lcssa.i
  %and.i = and i64 %or14.i, 511
  %cmp54.i = icmp ult i64 %and.i, 3
  br i1 %cmp54.i, label %if.then56.i, label %if.end63.i

if.then56.i:                                      ; preds = %estimateDiv128To64.v0.C.c.exit
  %shr3.i192 = lshr i64 %or14.i, 32
  %conv6.i = and i64 %or14.i, 4294967295
  %mul.i = mul nuw i64 %conv6.i, %conv5.i
  %mul9.i194 = mul nuw i64 %shr3.i192, %conv5.i
  %mul12.i = mul nuw i64 %conv6.i, %shr.i171
  %mul15.i195 = mul nuw i64 %shr3.i192, %shr.i171
  %add.i196 = add i64 %mul9.i194, %mul12.i
  %cmp.i197 = icmp ult i64 %add.i196, %mul12.i
  %conv17.i = zext i1 %cmp.i197 to i64
  %shl.i198 = shl nuw nsw i64 %conv17.i, 32
  %shr18.i199 = lshr i64 %add.i196, 32
  %add19.i = or i64 %shl.i198, %shr18.i199
  %shl21.i201 = shl i64 %add.i196, 32
  %add22.i = add i64 %shl21.i201, %mul.i
  %cmp23.i = icmp ult i64 %add22.i, %shl21.i201
  %sub.i202 = sub i64 0, %add22.i
  %conv25.i.neg = sext i1 %cmp23.i to i64
  %cmp.i204 = icmp ne i64 %add22.i, 0
  %conv2.neg.i205 = sext i1 %cmp.i204 to i64
  %add20.i200.neg = sub i64 %6, %mul15.i195
  %add26.i.neg = sub i64 %add20.i200.neg, %add19.i
  %sub1.i203 = add i64 %add26.i.neg, %conv25.i.neg
  %sub3.i206 = add i64 %sub1.i203, %conv2.neg.i205
  %cmp571.i = icmp slt i64 %sub3.i206, 0
  br i1 %cmp571.i, label %while.body.i.preheader, label %while.end.i

while.body.i.preheader:                           ; preds = %if.then56.i
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.preheader, %while.body.i
  %rem1.i.0 = phi i64 [ %add.i207, %while.body.i ], [ %sub.i202, %while.body.i.preheader ]
  %8 = phi i64 [ %add3.i210, %while.body.i ], [ %sub3.i206, %while.body.i.preheader ]
  %zSig.02.i = phi i64 [ %dec.i, %while.body.i ], [ %or14.i, %while.body.i.preheader ]
  %dec.i = add i64 %zSig.02.i, -1
  %add.i207 = add i64 %rem1.i.0, %shl47.i
  %cmp.i208 = icmp ult i64 %add.i207, %rem1.i.0
  %conv2.i209 = zext i1 %cmp.i208 to i64
  %add3.i210 = add i64 %conv2.i209, %8
  %cmp57.i = icmp slt i64 %add3.i210, 0
  br i1 %cmp57.i, label %while.body.i, label %while.end.i.loopexit

while.end.i.loopexit:                             ; preds = %while.body.i
  br label %while.end.i

while.end.i:                                      ; preds = %while.end.i.loopexit, %if.then56.i
  %rem1.i.1 = phi i64 [ %sub.i202, %if.then56.i ], [ %add.i207, %while.end.i.loopexit ]
  %zSig.0.lcssa.i = phi i64 [ %or14.i, %if.then56.i ], [ %dec.i, %while.end.i.loopexit ]
  %cmp59.i = icmp ne i64 %rem1.i.1, 0
  %conv61.i = zext i1 %cmp59.i to i64
  %or62.i = or i64 %conv61.i, %zSig.0.lcssa.i
  br label %if.end63.i

if.end63.i:                                       ; preds = %if.end44.i, %while.end.i, %estimateDiv128To64.v0.C.c.exit
  %zSig.1.i = phi i64 [ %or62.i, %while.end.i ], [ %or14.i, %estimateDiv128To64.v0.C.c.exit ], [ -1, %if.end44.i ]
  %9 = trunc i64 %zSig.1.i to i32
  %conv17.i211 = and i32 %9, 1023
  %conv19.i = and i32 %zExp.0.i, 65535
  %cmp20.i = icmp ugt i32 %conv19.i, 2044
  br i1 %cmp20.i, label %if.then22.i, label %if.end47.i

if.then22.i:                                      ; preds = %if.end63.i
  %cmp23.i212 = icmp sgt i32 %zExp.0.i, 2045
  br i1 %cmp23.i212, label %if.then30.i, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %if.then22.i
  %cmp25.i = icmp eq i32 %zExp.0.i, 2045
  br i1 %cmp25.i, label %land.lhs.true.i, label %if.end34.i214

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %add.i213 = add i64 %zSig.1.i, 512
  %cmp28.i = icmp slt i64 %add.i213, 0
  br i1 %cmp28.i, label %if.then30.i, label %if.end47.i

if.then30.i:                                      ; preds = %land.lhs.true.i, %if.then22.i
  tail call void @float_raise.v0.C.c.c(i32 9) #4
  %call.c.i.c = tail call i64 @packFloat64.v0.C.c.c(i32 %xor.i, i32 2047, i64 0) #4
  br label %float64_div.v0.C.c.exit

if.end34.i214:                                    ; preds = %lor.lhs.false.i
  %cmp35.i = icmp slt i32 %zExp.0.i, 0
  br i1 %cmp35.i, label %if.then37.i, label %if.end47.i

if.then37.i:                                      ; preds = %if.end34.i214
  %cmp1.i219 = icmp sgt i32 %zExp.0.i, -64
  br i1 %cmp1.i219, label %if.then2.i, label %if.else6.i

if.then2.i:                                       ; preds = %if.then37.i
  %sub38.i = sub nsw i32 0, %zExp.0.i
  %sh_prom.i220 = zext i32 %sub38.i to i64
  %shr.i221 = lshr i64 %zSig.1.i, %sh_prom.i220
  %and.i222 = and i32 %zExp.0.i, 63
  %sh_prom3.i = zext i32 %and.i222 to i64
  %shl.i223 = shl i64 %zSig.1.i, %sh_prom3.i
  %cmp4.i = icmp ne i64 %shl.i223, 0
  %conv5.i224 = zext i1 %cmp4.i to i64
  %or.i225 = or i64 %conv5.i224, %shr.i221
  br label %shift64RightJamming.v0.C.c.exit

if.else6.i:                                       ; preds = %if.then37.i
  %cmp7.i = icmp ne i64 %zSig.1.i, 0
  %conv9.i = zext i1 %cmp7.i to i64
  br label %shift64RightJamming.v0.C.c.exit

shift64RightJamming.v0.C.c.exit:                  ; preds = %if.then2.i, %if.else6.i
  %z.1.i = phi i64 [ %or.i225, %if.then2.i ], [ %conv9.i, %if.else6.i ]
  %10 = trunc i64 %z.1.i to i32
  %conv40.i = and i32 %10, 1023
  %tobool43.i = icmp eq i32 %conv40.i, 0
  br i1 %tobool43.i, label %if.end50.i, label %if.end47.thread5.i

if.end47.thread5.i:                               ; preds = %shift64RightJamming.v0.C.c.exit
  tail call void @float_raise.v0.C.c.c(i32 4) #4
  br label %if.then49.i

if.end47.i:                                       ; preds = %if.end34.i214, %land.lhs.true.i, %if.end63.i
  %zExp.addr.1.i = phi i32 [ %zExp.0.i, %if.end63.i ], [ %zExp.0.i, %if.end34.i214 ], [ 2045, %land.lhs.true.i ]
  %tobool48.i = icmp eq i32 %conv17.i211, 0
  br i1 %tobool48.i, label %if.end50.i, label %if.then49.i

if.then49.i:                                      ; preds = %if.end47.i, %if.end47.thread5.i
  %11 = phi i64 [ %z.1.i, %if.end47.thread5.i ], [ %zSig.1.i, %if.end47.i ]
  %roundBits.18.i = phi i32 [ %conv40.i, %if.end47.thread5.i ], [ %conv17.i211, %if.end47.i ]
  %zExp.addr.17.i = phi i32 [ 0, %if.end47.thread5.i ], [ %zExp.addr.1.i, %if.end47.i ]
  %12 = load i32, i32* @float_exception_flags, align 4
  %or.i215 = or i32 %12, 1
  store i32 %or.i215, i32* @float_exception_flags, align 4
  br label %if.end50.i

if.end50.i:                                       ; preds = %if.then49.i, %if.end47.i, %shift64RightJamming.v0.C.c.exit
  %13 = phi i64 [ %zSig.1.i, %if.end47.i ], [ %11, %if.then49.i ], [ %z.1.i, %shift64RightJamming.v0.C.c.exit ]
  %roundBits.14.i = phi i32 [ 0, %if.end47.i ], [ %roundBits.18.i, %if.then49.i ], [ 0, %shift64RightJamming.v0.C.c.exit ]
  %zExp.addr.13.i = phi i32 [ %zExp.addr.1.i, %if.end47.i ], [ %zExp.addr.17.i, %if.then49.i ], [ 0, %shift64RightJamming.v0.C.c.exit ]
  %add52.i = add i64 %13, 512
  %shr.i216 = lshr i64 %add52.i, 10
  %cmp53.i = icmp eq i32 %roundBits.14.i, 512
  %conv54.i = zext i1 %cmp53.i to i32
  %neg.i = xor i32 %conv54.i, -1
  %conv56.i = sext i32 %neg.i to i64
  %and57.i = and i64 %conv56.i, %shr.i216
  %cmp58.i = icmp eq i64 %and57.i, 0
  %.zExp.addr.1.i = select i1 %cmp58.i, i32 0, i32 %zExp.addr.13.i
  %call62.c.i.c = tail call i64 @packFloat64.v0.C.c.c(i32 %xor.i, i32 %.zExp.addr.1.i, i64 %and57.i) #4
  br label %float64_div.v0.C.c.exit

float64_div.v0.C.c.exit:                          ; preds = %if.end50.i, %if.then30.i, %if.then6.i, %if.then11.i, %if.end13.i, %if.end14.i, %if.then20.i, %if.end22.i, %if.then31.i, %if.end32.i, %if.then41.i
  %retval.0.i = phi i64 [ %call7.c.i.c, %if.then6.i ], [ %call12.c.i.c, %if.then11.i ], [ 9223372036854775807, %if.end13.i ], [ %call15.c.i.c, %if.end14.i ], [ %call21.c.i.c, %if.then20.i ], [ %call23.c.i.c, %if.end22.i ], [ 9223372036854775807, %if.then31.i ], [ %call33.c.i.c, %if.end32.i ], [ %call42.c.i.c, %if.then41.i ], [ %call.c.i.c, %if.then30.i ], [ %call62.c.i.c, %if.end50.i ]
  switch i32 %i.017, label %csroa.if.else53.i262 [
    i32 0, label %__non_const_wrapper__.24.exit
    i32 1, label %csroa.if.end4.i655
    i32 2, label %csroa.if.end9.i653
    i32 3, label %csroa.if.end14.i651
    i32 4, label %csroa.if.end19.i649
    i32 5, label %__non_const_wrapper__.22.exit.thread724
    i32 6, label %csroa.if.end24.i647
    i32 7, label %csroa.if.end34.i643
    i32 8, label %__non_const_wrapper__.22.exit.thread731
    i32 9, label %csroa.if.end39.i533
    i32 10, label %__non_const_wrapper__.22.exit.thread735
    i32 11, label %csroa.if.end49.i529
  ]

__non_const_wrapper__.22.exit.thread735:          ; preds = %float64_div.v0.C.c.exit
  br label %csroa.if.end49.i529

__non_const_wrapper__.22.exit.thread731:          ; preds = %float64_div.v0.C.c.exit
  br label %csroa.if.end39.i533

__non_const_wrapper__.22.exit.thread724:          ; preds = %float64_div.v0.C.c.exit
  br label %csroa.if.end24.i647

csroa.if.else53.i262:                             ; preds = %float64_div.v0.C.c.exit
  switch i32 %i.017, label %csroa.if.end104.i292 [
    i32 12, label %__non_const_wrapper__.22.exit.thread739
    i32 13, label %csroa.if.end59.i525
    i32 14, label %csroa.if.end69.i521
    i32 15, label %__non_const_wrapper__.21.exit
    i32 16, label %__non_const_wrapper__.21.exit
    i32 17, label %csroa.if.end84.i300
    i32 18, label %csroa.if.end89.i298
    i32 19, label %csroa.if.end94.i296
    i32 20, label %csroa.if.end94.i296
  ]

__non_const_wrapper__.22.exit.thread739:          ; preds = %csroa.if.else53.i262
  br label %csroa.if.end59.i525

csroa.if.end104.i292:                             ; preds = %csroa.if.else53.i262
  br label %csroa.if.end94.i296

csroa.if.end94.i296:                              ; preds = %csroa.if.end104.i292, %csroa.if.else53.i262, %csroa.if.else53.i262
  %.phi95.i295 = phi i64 [ -4619192017806338731, %csroa.if.else53.i262 ], [ 4604180019048437077, %csroa.if.end104.i292 ], [ -4619192017806338731, %csroa.if.else53.i262 ]
  br label %csroa.if.end89.i298

csroa.if.end89.i298:                              ; preds = %csroa.if.else53.i262, %csroa.if.end94.i296
  %.phi90.i297 = phi i64 [ %.phi95.i295, %csroa.if.end94.i296 ], [ 4604180019048437077, %csroa.if.else53.i262 ]
  br label %csroa.if.end84.i300

csroa.if.end84.i300:                              ; preds = %csroa.if.else53.i262, %csroa.if.end89.i298
  %.phi85.i299 = phi i64 [ %.phi90.i297, %csroa.if.end89.i298 ], [ 4602678819172646912, %csroa.if.else53.i262 ]
  br label %__non_const_wrapper__.21.exit

__non_const_wrapper__.21.exit:                    ; preds = %csroa.if.else53.i262, %csroa.if.else53.i262, %csroa.if.end84.i300
  %.phi75.i303 = phi i64 [ -4620693217682128896, %csroa.if.else53.i262 ], [ %.phi85.i299, %csroa.if.end84.i300 ], [ -4620693217682128896, %csroa.if.else53.i262 ]
  switch i32 %i.017, label %csroa.if.end99.i509.fold.split [
    i32 18, label %__non_const_wrapper__.22.exit.thread749
    i32 19, label %csroa.if.end89.i513
    i32 20, label %csroa.if.end99.i509
    i32 15, label %csroa.if.end69.i521
    i32 16, label %__non_const_wrapper__.22.exit.thread746
    i32 17, label %csroa.if.end79.i517
    i32 0, label %__non_const_wrapper__.24.exit
    i32 1, label %csroa.if.end4.i655
    i32 2, label %csroa.if.end9.i653
    i32 3, label %csroa.if.end14.i651
    i32 4, label %csroa.if.end19.i649
    i32 5, label %csroa.if.end24.i647
    i32 6, label %__non_const_wrapper__.23.exit
    i32 7, label %__non_const_wrapper__.23.exit
    i32 8, label %csroa.if.end39.i533
    i32 9, label %csroa.if.end39.i533
    i32 10, label %csroa.if.end49.i529
    i32 11, label %csroa.if.end49.i529
    i32 12, label %csroa.if.end59.i525
    i32 13, label %csroa.if.end59.i525
    i32 14, label %csroa.if.end69.i521.fold.split
  ]

__non_const_wrapper__.22.exit.thread749:          ; preds = %__non_const_wrapper__.21.exit
  br label %csroa.if.end89.i513

__non_const_wrapper__.22.exit.thread746:          ; preds = %__non_const_wrapper__.21.exit
  br label %csroa.if.end79.i517

csroa.if.end99.i509.fold.split:                   ; preds = %__non_const_wrapper__.21.exit
  br label %csroa.if.end99.i509

csroa.if.end99.i509:                              ; preds = %__non_const_wrapper__.21.exit, %csroa.if.end99.i509.fold.split
  %.phi100.i401753 = phi i64 [ 4607182418800017408, %__non_const_wrapper__.21.exit ], [ -4616189618054758400, %csroa.if.end99.i509.fold.split ]
  br label %csroa.if.end89.i513

csroa.if.end89.i513:                              ; preds = %__non_const_wrapper__.21.exit, %__non_const_wrapper__.22.exit.thread749, %csroa.if.end99.i509
  %.phi90.i405750 = phi i64 [ %.phi100.i401753, %csroa.if.end99.i509 ], [ 4607182418800017408, %__non_const_wrapper__.22.exit.thread749 ], [ -4616189618054758400, %__non_const_wrapper__.21.exit ]
  %.phi90.i512 = phi i64 [ -4613937818241073152, %csroa.if.end99.i509 ], [ 4609434218613702656, %__non_const_wrapper__.22.exit.thread749 ], [ 4609434218613702656, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end79.i517

csroa.if.end79.i517:                              ; preds = %__non_const_wrapper__.21.exit, %__non_const_wrapper__.22.exit.thread746, %csroa.if.end89.i513
  %.phi80.i409747 = phi i64 [ %.phi90.i405750, %csroa.if.end89.i513 ], [ 4611686018427387904, %__non_const_wrapper__.22.exit.thread746 ], [ -4611686018427387904, %__non_const_wrapper__.21.exit ]
  %.phi80.i516 = phi i64 [ %.phi90.i512, %csroa.if.end89.i513 ], [ -4607182418800017408, %__non_const_wrapper__.22.exit.thread746 ], [ -4607182418800017408, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end69.i521

csroa.if.end69.i521.fold.split:                   ; preds = %__non_const_wrapper__.21.exit
  br label %csroa.if.end69.i521

csroa.if.end69.i521:                              ; preds = %__non_const_wrapper__.21.exit, %csroa.if.end69.i521.fold.split, %csroa.if.else53.i262, %csroa.if.end79.i517
  %.phi70.i413745 = phi i64 [ %.phi80.i409747, %csroa.if.end79.i517 ], [ -4611686018427387904, %__non_const_wrapper__.21.exit ], [ 4611686018427387904, %csroa.if.else53.i262 ], [ -4616189618054758400, %csroa.if.end69.i521.fold.split ]
  %.phi70.i305688744 = phi i64 [ %.phi75.i303, %csroa.if.end79.i517 ], [ %.phi75.i303, %__non_const_wrapper__.21.exit ], [ 4602678819172646912, %csroa.if.else53.i262 ], [ %.phi75.i303, %csroa.if.end69.i521.fold.split ]
  %.phi70.i520 = phi i64 [ %.phi80.i516, %csroa.if.end79.i517 ], [ 4616189618054758400, %__non_const_wrapper__.21.exit ], [ 4616189618054758400, %csroa.if.else53.i262 ], [ 4616189618054758400, %csroa.if.end69.i521.fold.split ]
  br label %csroa.if.end59.i525

csroa.if.end59.i525:                              ; preds = %__non_const_wrapper__.21.exit, %__non_const_wrapper__.21.exit, %csroa.if.else53.i262, %__non_const_wrapper__.22.exit.thread739, %csroa.if.end69.i521
  %.phi55.i419741 = phi i64 [ %.phi70.i413745, %csroa.if.end69.i521 ], [ 4613937818241073152, %__non_const_wrapper__.22.exit.thread739 ], [ -4609434218613702656, %csroa.if.else53.i262 ], [ -4616189618054758400, %__non_const_wrapper__.21.exit ], [ -4616189618054758400, %__non_const_wrapper__.21.exit ]
  %.phi55.i311682740 = phi i64 [ %.phi70.i305688744, %csroa.if.end69.i521 ], [ -4613937818241073152, %__non_const_wrapper__.22.exit.thread739 ], [ 4609434218613702656, %csroa.if.else53.i262 ], [ %.phi75.i303, %__non_const_wrapper__.21.exit ], [ %.phi75.i303, %__non_const_wrapper__.21.exit ]
  %.phi60.i524 = phi i64 [ %.phi70.i520, %csroa.if.end69.i521 ], [ -4611686018427387904, %__non_const_wrapper__.22.exit.thread739 ], [ -4611686018427387904, %csroa.if.else53.i262 ], [ -4611686018427387904, %__non_const_wrapper__.21.exit ], [ -4611686018427387904, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end49.i529

csroa.if.end49.i529:                              ; preds = %__non_const_wrapper__.21.exit, %__non_const_wrapper__.21.exit, %float64_div.v0.C.c.exit, %__non_const_wrapper__.22.exit.thread735, %csroa.if.end59.i525
  %.phi50.i421737 = phi i64 [ %.phi55.i419741, %csroa.if.end59.i525 ], [ 4613937818241073152, %__non_const_wrapper__.22.exit.thread735 ], [ -4609434218613702656, %float64_div.v0.C.c.exit ], [ -4616189618054758400, %__non_const_wrapper__.21.exit ], [ -4616189618054758400, %__non_const_wrapper__.21.exit ]
  %.phi50.i313680736 = phi i64 [ %.phi55.i311682740, %csroa.if.end59.i525 ], [ 4609434218613702656, %__non_const_wrapper__.22.exit.thread735 ], [ -4613937818241073152, %float64_div.v0.C.c.exit ], [ %.phi75.i303, %__non_const_wrapper__.21.exit ], [ %.phi75.i303, %__non_const_wrapper__.21.exit ]
  %.phi50.i528 = phi i64 [ %.phi60.i524, %csroa.if.end59.i525 ], [ 4611686018427387904, %__non_const_wrapper__.22.exit.thread735 ], [ 4611686018427387904, %float64_div.v0.C.c.exit ], [ 4611686018427387904, %__non_const_wrapper__.21.exit ], [ 4611686018427387904, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end39.i533

csroa.if.end39.i533:                              ; preds = %__non_const_wrapper__.21.exit, %__non_const_wrapper__.21.exit, %float64_div.v0.C.c.exit, %__non_const_wrapper__.22.exit.thread731, %csroa.if.end49.i529
  %.phi40.i425733 = phi i64 [ %.phi50.i421737, %csroa.if.end49.i529 ], [ 0, %__non_const_wrapper__.22.exit.thread731 ], [ -9223372036854775808, %float64_div.v0.C.c.exit ], [ -4616189618054758400, %__non_const_wrapper__.21.exit ], [ -4616189618054758400, %__non_const_wrapper__.21.exit ]
  %.phi40.i317676732 = phi i64 [ %.phi50.i313680736, %csroa.if.end49.i529 ], [ 0, %__non_const_wrapper__.22.exit.thread731 ], [ -9223372036854775808, %float64_div.v0.C.c.exit ], [ %.phi75.i303, %__non_const_wrapper__.21.exit ], [ %.phi75.i303, %__non_const_wrapper__.21.exit ]
  %.phi40.i532 = phi i64 [ %.phi50.i528, %csroa.if.end49.i529 ], [ 4607182418800017408, %__non_const_wrapper__.22.exit.thread731 ], [ 4607182418800017408, %float64_div.v0.C.c.exit ], [ 4607182418800017408, %__non_const_wrapper__.21.exit ], [ 4607182418800017408, %__non_const_wrapper__.21.exit ]
  br label %__non_const_wrapper__.23.exit

__non_const_wrapper__.23.exit:                    ; preds = %__non_const_wrapper__.21.exit, %__non_const_wrapper__.21.exit, %csroa.if.end39.i533
  %.phi30.i429729 = phi i64 [ %.phi40.i425733, %csroa.if.end39.i533 ], [ -4616189618054758400, %__non_const_wrapper__.21.exit ], [ -4616189618054758400, %__non_const_wrapper__.21.exit ]
  %.phi30.i321672728 = phi i64 [ %.phi40.i317676732, %csroa.if.end39.i533 ], [ %.phi75.i303, %__non_const_wrapper__.21.exit ], [ %.phi75.i303, %__non_const_wrapper__.21.exit ]
  %.phi30.i536 = phi i64 [ %.phi40.i532, %csroa.if.end39.i533 ], [ 0, %__non_const_wrapper__.21.exit ], [ 0, %__non_const_wrapper__.21.exit ]
  switch i32 %i.017, label %csroa.if.end104.i615 [
    i32 15, label %csroa.if.end74.i627
    i32 16, label %csroa.if.end74.i627
    i32 17, label %csroa.if.end84.i623
    i32 18, label %csroa.if.end89.i621
    i32 19, label %csroa.if.end94.i619
    i32 20, label %csroa.if.end94.i619
    i32 6, label %csroa.if.end24.i647
    i32 7, label %csroa.if.end34.i643
    i32 8, label %csroa.if.end39.i641
    i32 9, label %csroa.if.end44.i639
    i32 10, label %csroa.if.end49.i637
    i32 11, label %csroa.if.end54.i635
    i32 12, label %csroa.if.end54.i635
    i32 13, label %csroa.if.end64.i631
    i32 14, label %csroa.if.end69.i629
  ]

csroa.if.end104.i615:                             ; preds = %__non_const_wrapper__.23.exit
  br label %csroa.if.end94.i619

csroa.if.end94.i619:                              ; preds = %__non_const_wrapper__.23.exit, %__non_const_wrapper__.23.exit, %csroa.if.end104.i615
  %.phi95.i618 = phi i64 [ -4619192017806338731, %__non_const_wrapper__.23.exit ], [ 4604180019048437077, %csroa.if.end104.i615 ], [ -4619192017806338731, %__non_const_wrapper__.23.exit ]
  br label %csroa.if.end89.i621

csroa.if.end89.i621:                              ; preds = %__non_const_wrapper__.23.exit, %csroa.if.end94.i619
  %.phi90.i620 = phi i64 [ %.phi95.i618, %csroa.if.end94.i619 ], [ 4604180019048437077, %__non_const_wrapper__.23.exit ]
  br label %csroa.if.end84.i623

csroa.if.end84.i623:                              ; preds = %__non_const_wrapper__.23.exit, %csroa.if.end89.i621
  %.phi85.i622 = phi i64 [ %.phi90.i620, %csroa.if.end89.i621 ], [ 4602678819172646912, %__non_const_wrapper__.23.exit ]
  br label %csroa.if.end74.i627

csroa.if.end74.i627:                              ; preds = %__non_const_wrapper__.23.exit, %__non_const_wrapper__.23.exit, %csroa.if.end84.i623
  %.phi75.i626 = phi i64 [ -4620693217682128896, %__non_const_wrapper__.23.exit ], [ %.phi85.i622, %csroa.if.end84.i623 ], [ -4620693217682128896, %__non_const_wrapper__.23.exit ]
  br label %csroa.if.end69.i629

csroa.if.end69.i629:                              ; preds = %__non_const_wrapper__.23.exit, %csroa.if.end74.i627
  %.phi70.i628 = phi i64 [ %.phi75.i626, %csroa.if.end74.i627 ], [ 4602678819172646912, %__non_const_wrapper__.23.exit ]
  br label %csroa.if.end64.i631

csroa.if.end64.i631:                              ; preds = %__non_const_wrapper__.23.exit, %csroa.if.end69.i629
  %.phi65.i630 = phi i64 [ %.phi70.i628, %csroa.if.end69.i629 ], [ 4609434218613702656, %__non_const_wrapper__.23.exit ]
  br label %csroa.if.end54.i635

csroa.if.end54.i635:                              ; preds = %csroa.if.end64.i631, %__non_const_wrapper__.23.exit, %__non_const_wrapper__.23.exit
  %.phi55.i634 = phi i64 [ -4613937818241073152, %__non_const_wrapper__.23.exit ], [ %.phi65.i630, %csroa.if.end64.i631 ], [ -4613937818241073152, %__non_const_wrapper__.23.exit ]
  br label %csroa.if.end49.i637

csroa.if.end49.i637:                              ; preds = %__non_const_wrapper__.23.exit, %csroa.if.end54.i635
  %.phi50.i636 = phi i64 [ %.phi55.i634, %csroa.if.end54.i635 ], [ 4609434218613702656, %__non_const_wrapper__.23.exit ]
  br label %csroa.if.end44.i639

csroa.if.end44.i639:                              ; preds = %__non_const_wrapper__.23.exit, %csroa.if.end49.i637
  %.phi45.i638 = phi i64 [ %.phi50.i636, %csroa.if.end49.i637 ], [ -9223372036854775808, %__non_const_wrapper__.23.exit ]
  br label %csroa.if.end39.i641

csroa.if.end39.i641:                              ; preds = %__non_const_wrapper__.23.exit, %csroa.if.end44.i639
  %.phi40.i640 = phi i64 [ %.phi45.i638, %csroa.if.end44.i639 ], [ 0, %__non_const_wrapper__.23.exit ]
  br label %csroa.if.end34.i643

csroa.if.end34.i643:                              ; preds = %float64_div.v0.C.c.exit, %__non_const_wrapper__.23.exit, %csroa.if.end39.i641
  %.phi30.i536757 = phi i64 [ %.phi30.i536, %csroa.if.end39.i641 ], [ %.phi30.i536, %__non_const_wrapper__.23.exit ], [ 0, %float64_div.v0.C.c.exit ]
  %.phi30.i321672728756 = phi i64 [ %.phi30.i321672728, %csroa.if.end39.i641 ], [ %.phi30.i321672728, %__non_const_wrapper__.23.exit ], [ 9218868437227405312, %float64_div.v0.C.c.exit ]
  %.phi30.i429729755 = phi i64 [ %.phi30.i429729, %csroa.if.end39.i641 ], [ %.phi30.i429729, %__non_const_wrapper__.23.exit ], [ 4607182418800017408, %float64_div.v0.C.c.exit ]
  %.phi35.i642 = phi i64 [ %.phi40.i640, %csroa.if.end39.i641 ], [ 9218868437227405312, %__non_const_wrapper__.23.exit ], [ 9218868437227405312, %float64_div.v0.C.c.exit ]
  br label %csroa.if.end24.i647

csroa.if.end24.i647:                              ; preds = %__non_const_wrapper__.21.exit, %float64_div.v0.C.c.exit, %__non_const_wrapper__.22.exit.thread724, %csroa.if.end34.i643, %__non_const_wrapper__.23.exit
  %.phi20.i433726 = phi i64 [ %.phi30.i429729, %__non_const_wrapper__.23.exit ], [ %.phi30.i429729755, %csroa.if.end34.i643 ], [ 4607182418800017408, %__non_const_wrapper__.22.exit.thread724 ], [ 0, %float64_div.v0.C.c.exit ], [ -4616189618054758400, %__non_const_wrapper__.21.exit ]
  %.phi20.i325669725 = phi i64 [ %.phi30.i321672728, %__non_const_wrapper__.23.exit ], [ %.phi30.i321672728756, %csroa.if.end34.i643 ], [ 0, %__non_const_wrapper__.22.exit.thread724 ], [ 9223372036854775807, %float64_div.v0.C.c.exit ], [ %.phi75.i303, %__non_const_wrapper__.21.exit ]
  %.phi25.i538721 = phi i64 [ %.phi30.i536, %__non_const_wrapper__.23.exit ], [ %.phi30.i536757, %csroa.if.end34.i643 ], [ 9218868437227405312, %__non_const_wrapper__.22.exit.thread724 ], [ 0, %float64_div.v0.C.c.exit ], [ 9218868437227405312, %__non_const_wrapper__.21.exit ]
  %.phi25.i646 = phi i64 [ 9223372036854775807, %__non_const_wrapper__.23.exit ], [ %.phi35.i642, %csroa.if.end34.i643 ], [ 0, %__non_const_wrapper__.22.exit.thread724 ], [ 9223372036854775807, %float64_div.v0.C.c.exit ], [ 0, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end19.i649

csroa.if.end19.i649:                              ; preds = %__non_const_wrapper__.21.exit, %float64_div.v0.C.c.exit, %csroa.if.end24.i647
  %.phi20.i433723 = phi i64 [ %.phi20.i433726, %csroa.if.end24.i647 ], [ 4607182418800017408, %float64_div.v0.C.c.exit ], [ -4616189618054758400, %__non_const_wrapper__.21.exit ]
  %.phi20.i325669722 = phi i64 [ %.phi20.i325669725, %csroa.if.end24.i647 ], [ 9221120237041090560, %float64_div.v0.C.c.exit ], [ %.phi75.i303, %__non_const_wrapper__.21.exit ]
  %.phi20.i540719 = phi i64 [ %.phi25.i538721, %csroa.if.end24.i647 ], [ 9221120237041090560, %float64_div.v0.C.c.exit ], [ 9221120237041090560, %__non_const_wrapper__.21.exit ]
  %.phi20.i648 = phi i64 [ %.phi25.i646, %csroa.if.end24.i647 ], [ 9221120237041090560, %float64_div.v0.C.c.exit ], [ 9221120237041090560, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end14.i651

csroa.if.end14.i651:                              ; preds = %__non_const_wrapper__.21.exit, %float64_div.v0.C.c.exit, %csroa.if.end19.i649
  %.phi15.i542717 = phi i64 [ %.phi20.i540719, %csroa.if.end19.i649 ], [ 4607182418800017408, %float64_div.v0.C.c.exit ], [ 4607182418800017408, %__non_const_wrapper__.21.exit ]
  %.phi5.i331665698716 = phi i64 [ %.phi20.i325669722, %csroa.if.end19.i649 ], [ 9218868437227405312, %float64_div.v0.C.c.exit ], [ %.phi75.i303, %__non_const_wrapper__.21.exit ]
  %.phi5.i439699715 = phi i64 [ %.phi20.i433723, %csroa.if.end19.i649 ], [ 9218868437227405312, %float64_div.v0.C.c.exit ], [ -4616189618054758400, %__non_const_wrapper__.21.exit ]
  %.phi15.i650 = phi i64 [ %.phi20.i648, %csroa.if.end19.i649 ], [ 9218868437227405312, %float64_div.v0.C.c.exit ], [ 9218868437227405312, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end9.i653

csroa.if.end9.i653:                               ; preds = %__non_const_wrapper__.21.exit, %float64_div.v0.C.c.exit, %csroa.if.end14.i651
  %.phi10.i544712 = phi i64 [ %.phi15.i542717, %csroa.if.end14.i651 ], [ 9218868437227405312, %float64_div.v0.C.c.exit ], [ 9218868437227405312, %__non_const_wrapper__.21.exit ]
  %.phi5.i331665695711 = phi i64 [ %.phi5.i331665698716, %csroa.if.end14.i651 ], [ 9223372036854775807, %float64_div.v0.C.c.exit ], [ %.phi75.i303, %__non_const_wrapper__.21.exit ]
  %.phi5.i439696710 = phi i64 [ %.phi5.i439699715, %csroa.if.end14.i651 ], [ 9218868437227405312, %float64_div.v0.C.c.exit ], [ -4616189618054758400, %__non_const_wrapper__.21.exit ]
  %.phi10.i652 = phi i64 [ %.phi15.i650, %csroa.if.end14.i651 ], [ 9223372036854775807, %float64_div.v0.C.c.exit ], [ 9223372036854775807, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end4.i655

csroa.if.end4.i655:                               ; preds = %__non_const_wrapper__.21.exit, %float64_div.v0.C.c.exit, %csroa.if.end9.i653
  %.phi5.i546707 = phi i64 [ %.phi10.i544712, %csroa.if.end9.i653 ], [ 9221120237041090560, %float64_div.v0.C.c.exit ], [ 9221120237041090560, %__non_const_wrapper__.21.exit ]
  %.phi5.i331665692706 = phi i64 [ %.phi5.i331665695711, %csroa.if.end9.i653 ], [ 9221120237041090560, %float64_div.v0.C.c.exit ], [ %.phi75.i303, %__non_const_wrapper__.21.exit ]
  %.phi5.i439693705 = phi i64 [ %.phi5.i439696710, %csroa.if.end9.i653 ], [ 9218868437227405312, %float64_div.v0.C.c.exit ], [ -4616189618054758400, %__non_const_wrapper__.21.exit ]
  %.phi5.i654 = phi i64 [ %.phi10.i652, %csroa.if.end9.i653 ], [ 9221120237041090560, %float64_div.v0.C.c.exit ], [ 9221120237041090560, %__non_const_wrapper__.21.exit ]
  br label %__non_const_wrapper__.24.exit

__non_const_wrapper__.24.exit:                    ; preds = %__non_const_wrapper__.21.exit, %float64_div.v0.C.c.exit, %csroa.if.end4.i655
  %.phi.i548702 = phi i64 [ %.phi5.i546707, %csroa.if.end4.i655 ], [ 4607182418800017408, %float64_div.v0.C.c.exit ], [ 4607182418800017408, %__non_const_wrapper__.21.exit ]
  %.phi.i333663689701 = phi i64 [ %.phi5.i331665692706, %csroa.if.end4.i655 ], [ 9223090561878065152, %float64_div.v0.C.c.exit ], [ %.phi75.i303, %__non_const_wrapper__.21.exit ]
  %.phi.i441690700 = phi i64 [ %.phi5.i439693705, %csroa.if.end4.i655 ], [ 9223090561878065152, %float64_div.v0.C.c.exit ], [ -4616189618054758400, %__non_const_wrapper__.21.exit ]
  %.phi.i656 = phi i64 [ %.phi5.i654, %csroa.if.end4.i655 ], [ 9223090561878065152, %float64_div.v0.C.c.exit ], [ 9223090561878065152, %__non_const_wrapper__.21.exit ]
  %.cast.i = bitcast i64 %retval.0.i to double
  %call8 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i32 0, i32 0), i64 %.phi.i441690700, i64 %.phi.i548702, i64 %.phi.i656, i64 %retval.0.i, double %.cast.i)
  %cmp3 = icmp ne i64 %retval.0.i, %.phi.i333663689701
  %conv = zext i1 %cmp3 to i32
  %add = add nsw i32 %conv, %main_result.016
  %inc = add nuw nsw i32 %i.017, 1
  %exitcond = icmp eq i32 %inc, 22
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %__non_const_wrapper__.24.exit
  %call9 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %add)
  ret i32 %add
}

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #1

; Function Attrs: noinline norecurse nounwind
define void @float_raise.v0.C.c.c(i32 %flags) local_unnamed_addr #2 {
entry:
  %0 = load i32, i32* @float_exception_flags, align 4
  %or = or i32 %0, %flags
  store i32 %or, i32* @float_exception_flags, align 4
  ret void
}

; Function Attrs: noinline norecurse nounwind
define internal fastcc i64 @propagateFloat64NaN.v0.C.c.c(i64 %a, i64 %b) unnamed_addr #2 {
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
define i64 @packFloat64.v0.C.c.c(i32 %zSign, i32 %zExp, i64 %zSig) local_unnamed_addr #3 {
entry:
  %conv2 = zext i32 %zSign to i64
  %shl = shl i64 %conv2, 63
  %conv13 = zext i32 %zExp to i64
  %shl2 = shl i64 %conv13, 52
  %add = add i64 %shl, %zSig
  %add3 = add i64 %add, %shl2
  ret i64 %add3
}

attributes #0 = { noinline nounwind ssp "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline norecurse nounwind }
attributes #3 = { noinline norecurse nounwind readnone }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
