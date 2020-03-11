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
  %i.0799 = phi i32 [ 0, %entry ], [ %inc, %__non_const_wrapper__.24.exit ]
  %main_result.0798 = phi i32 [ 0, %entry ], [ %add685753765, %__non_const_wrapper__.24.exit ]
  switch i32 %i.0799, label %csroa.if.end104.i [
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
  switch i32 %i.0799, label %csroa.if.end99.i84 [
    i32 19, label %csroa.if.end89.i88
    i32 1, label %__non_const_wrapper__.20.exit
    i32 2, label %csroa.if.end9.i120
    i32 3, label %csroa.if.end14.i118
    i32 4, label %csroa.if.end19.i116
    i32 5, label %csroa.if.end24.i114
    i32 6, label %csroa.if.end29.i112
    i32 7, label %csroa.if.end29.i112
    i32 8, label %csroa.if.end39.i108
    i32 9, label %csroa.if.end39.i108
    i32 10, label %csroa.if.end49.i104
    i32 11, label %csroa.if.end49.i104
    i32 12, label %csroa.if.end59.i100
    i32 13, label %csroa.if.end59.i100
    i32 14, label %csroa.if.end69.i96
    i32 15, label %csroa.if.end69.i96
    i32 16, label %csroa.if.end79.i92
    i32 17, label %csroa.if.end79.i92
    i32 18, label %csroa.if.end89.i88
  ]

csroa.if.end99.i84:                               ; preds = %__non_const_wrapper__.exit
  br label %csroa.if.end89.i88

csroa.if.end89.i88:                               ; preds = %__non_const_wrapper__.exit, %csroa.if.end99.i84, %__non_const_wrapper__.exit
  %.phi90.i87 = phi i64 [ 4609434218613702656, %__non_const_wrapper__.exit ], [ -4613937818241073152, %csroa.if.end99.i84 ], [ 4609434218613702656, %__non_const_wrapper__.exit ]
  br label %csroa.if.end79.i92

csroa.if.end79.i92:                               ; preds = %csroa.if.end89.i88, %__non_const_wrapper__.exit, %__non_const_wrapper__.exit
  %.phi80.i91 = phi i64 [ -4607182418800017408, %__non_const_wrapper__.exit ], [ %.phi90.i87, %csroa.if.end89.i88 ], [ -4607182418800017408, %__non_const_wrapper__.exit ]
  br label %csroa.if.end69.i96

csroa.if.end69.i96:                               ; preds = %csroa.if.end79.i92, %__non_const_wrapper__.exit, %__non_const_wrapper__.exit
  %.phi70.i95 = phi i64 [ 4616189618054758400, %__non_const_wrapper__.exit ], [ %.phi80.i91, %csroa.if.end79.i92 ], [ 4616189618054758400, %__non_const_wrapper__.exit ]
  br label %csroa.if.end59.i100

csroa.if.end59.i100:                              ; preds = %csroa.if.end69.i96, %__non_const_wrapper__.exit, %__non_const_wrapper__.exit
  %.phi60.i99 = phi i64 [ -4611686018427387904, %__non_const_wrapper__.exit ], [ %.phi70.i95, %csroa.if.end69.i96 ], [ -4611686018427387904, %__non_const_wrapper__.exit ]
  br label %csroa.if.end49.i104

csroa.if.end49.i104:                              ; preds = %csroa.if.end59.i100, %__non_const_wrapper__.exit, %__non_const_wrapper__.exit
  %.phi50.i103 = phi i64 [ 4611686018427387904, %__non_const_wrapper__.exit ], [ %.phi60.i99, %csroa.if.end59.i100 ], [ 4611686018427387904, %__non_const_wrapper__.exit ]
  br label %csroa.if.end39.i108

csroa.if.end39.i108:                              ; preds = %csroa.if.end49.i104, %__non_const_wrapper__.exit, %__non_const_wrapper__.exit
  %.phi40.i107 = phi i64 [ 4607182418800017408, %__non_const_wrapper__.exit ], [ %.phi50.i103, %csroa.if.end49.i104 ], [ 4607182418800017408, %__non_const_wrapper__.exit ]
  br label %csroa.if.end29.i112

csroa.if.end29.i112:                              ; preds = %csroa.if.end39.i108, %__non_const_wrapper__.exit, %__non_const_wrapper__.exit
  %.phi30.i111 = phi i64 [ 0, %__non_const_wrapper__.exit ], [ %.phi40.i107, %csroa.if.end39.i108 ], [ 0, %__non_const_wrapper__.exit ]
  br label %csroa.if.end24.i114

csroa.if.end24.i114:                              ; preds = %__non_const_wrapper__.exit, %csroa.if.end29.i112
  %.phi25.i113 = phi i64 [ %.phi30.i111, %csroa.if.end29.i112 ], [ 9218868437227405312, %__non_const_wrapper__.exit ]
  br label %csroa.if.end19.i116

csroa.if.end19.i116:                              ; preds = %__non_const_wrapper__.exit, %csroa.if.end24.i114
  %.phi20.i115 = phi i64 [ %.phi25.i113, %csroa.if.end24.i114 ], [ 9221120237041090560, %__non_const_wrapper__.exit ]
  br label %csroa.if.end14.i118

csroa.if.end14.i118:                              ; preds = %__non_const_wrapper__.exit, %csroa.if.end19.i116
  %.phi15.i117 = phi i64 [ %.phi20.i115, %csroa.if.end19.i116 ], [ 4607182418800017408, %__non_const_wrapper__.exit ]
  br label %csroa.if.end9.i120

csroa.if.end9.i120:                               ; preds = %__non_const_wrapper__.exit, %csroa.if.end14.i118
  %.phi10.i119 = phi i64 [ %.phi15.i117, %csroa.if.end14.i118 ], [ 9218868437227405312, %__non_const_wrapper__.exit ]
  br label %__non_const_wrapper__.20.exit

__non_const_wrapper__.20.exit:                    ; preds = %csroa.if.end9.i120, %__non_const_wrapper__.exit, %for.body
  %.phi.i679 = phi i64 [ 9223090561878065152, %for.body ], [ %.phi5.i, %__non_const_wrapper__.exit ], [ %.phi5.i, %csroa.if.end9.i120 ]
  %.phi.i123 = phi i64 [ 4607182418800017408, %for.body ], [ 9221120237041090560, %__non_const_wrapper__.exit ], [ %.phi10.i119, %csroa.if.end9.i120 ]
  %and.i124 = and i64 %.phi.i679, 4503599627370495
  %shr.i125 = lshr i64 %.phi.i679, 52
  %0 = trunc i64 %shr.i125 to i32
  %conv.i127 = and i32 %0, 2047
  %and.i130 = and i64 %.phi.i123, 4503599627370495
  %shr.i131 = lshr i64 %.phi.i123, 52
  %1 = trunc i64 %shr.i131 to i32
  %conv.i133 = and i32 %1, 2047
  %shr.i128677 = xor i64 %.phi.i123, %.phi.i679
  %xor.i676 = lshr i64 %shr.i128677, 63
  %xor.i = trunc i64 %xor.i676 to i32
  %cmp.i = icmp eq i32 %conv.i127, 2047
  br i1 %cmp.i, label %if.then.i, label %if.end16.i

if.then.i:                                        ; preds = %__non_const_wrapper__.20.exit
  %tobool.i = icmp eq i64 %and.i124, 0
  br i1 %tobool.i, label %if.end.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.then.i
  %call7.c.i.c = tail call fastcc i64 @propagateFloat64NaN.v0.C.c.c(i64 %.phi.i679, i64 %.phi.i123) #4
  br label %float64_div.v0.C.c.exit

if.end.i:                                         ; preds = %if.then.i
  %cmp8.i = icmp eq i32 %conv.i133, 2047
  br i1 %cmp8.i, label %if.then9.i, label %if.end14.i

if.then9.i:                                       ; preds = %if.end.i
  %tobool10.i = icmp eq i64 %and.i130, 0
  br i1 %tobool10.i, label %if.end13.i, label %if.then11.i

if.then11.i:                                      ; preds = %if.then9.i
  %call12.c.i.c = tail call fastcc i64 @propagateFloat64NaN.v0.C.c.c(i64 %.phi.i679, i64 %.phi.i123) #4
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
  %call21.c.i.c = tail call fastcc i64 @propagateFloat64NaN.v0.C.c.c(i64 %.phi.i679, i64 %.phi.i123) #4
  br label %float64_div.v0.C.c.exit

if.end22.i:                                       ; preds = %if.then18.i
  %call23.c.i.c = tail call i64 @packFloat64.v0.C.c.c(i32 %xor.i, i32 0, i64 0) #4
  br label %float64_div.v0.C.c.exit

if.then26.i:                                      ; preds = %if.end16.i
  %cmp27.i = icmp eq i64 %and.i130, 0
  br i1 %cmp27.i, label %if.then28.i, label %if.end34.i

if.then28.i:                                      ; preds = %if.then26.i
  %conv.i678 = zext i32 %conv.i127 to i64
  %or.i = or i64 %conv.i678, %and.i124
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
  %cmp.i138 = icmp ult i64 %and.i130, 4294967296
  %shiftCount.0.i = select i1 %cmp.i138, i32 32, i32 0
  %shr.i140 = lshr i64 %and.i130, 32
  %a.addr.0.i = select i1 %cmp.i138, i64 %.phi.i123, i64 %shr.i140
  %conv.i141 = trunc i64 %a.addr.0.i to i32
  %cmp.i144 = icmp ult i32 %conv.i141, 65536
  %shl.i145 = shl i32 %conv.i141, 16
  %. = select i1 %cmp.i144, i32 16, i32 0
  %shl.i145.conv.i141 = select i1 %cmp.i144, i32 %shl.i145, i32 %conv.i141
  %cmp1.i = icmp ult i32 %shl.i145.conv.i141, 16777216
  %shl4.i = shl i32 %shl.i145.conv.i141, 8
  %a.addr.1.i = select i1 %cmp1.i, i32 %shl4.i, i32 %shl.i145.conv.i141
  %add3.i = or i32 %., 8
  %shiftCount.1.i = select i1 %cmp1.i, i32 %add3.i, i32 %.
  %shr.i150 = lshr i32 %a.addr.1.i, 24
  %arrayidx.i = getelementptr inbounds [256 x i32], [256 x i32]* @countLeadingZeros32.countLeadingZerosHigh, i32 0, i32 %shr.i150
  %2 = load i32, i32* %arrayidx.i, align 4
  %add6.i = or i32 %shiftCount.1.i, %shiftCount.0.i
  %add1.i = add i32 %add6.i, %2
  %sub.i136 = add nsw i32 %add1.i, -11
  %sh_prom.i = zext i32 %sub.i136 to i64
  %shl.i137 = shl i64 %and.i130, %sh_prom.i
  %sub1.i = sub i32 12, %add1.i
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.end16.i, %if.end34.i
  %bSig.i.0 = phi i64 [ %shl.i137, %if.end34.i ], [ %and.i130, %if.end16.i ]
  %bExp.i.0 = phi i32 [ %sub1.i, %if.end34.i ], [ %conv.i133, %if.end16.i ]
  %cmp36.i = icmp eq i32 %conv.i127, 0
  br i1 %cmp36.i, label %if.then38.i, label %if.end44.i

if.then38.i:                                      ; preds = %if.end35.i
  %cmp39.i = icmp eq i64 %and.i124, 0
  br i1 %cmp39.i, label %if.then41.i, label %if.end43.i

if.then41.i:                                      ; preds = %if.then38.i
  %call42.c.i.c = tail call i64 @packFloat64.v0.C.c.c(i32 %xor.i, i32 0, i64 0) #4
  br label %float64_div.v0.C.c.exit

if.end43.i:                                       ; preds = %if.then38.i
  %cmp.i155 = icmp ult i64 %and.i124, 4294967296
  %shiftCount.0.i159 = select i1 %cmp.i155, i32 32, i32 0
  %shr.i157 = lshr i64 %and.i124, 32
  %a.addr.0.i160 = select i1 %cmp.i155, i64 %.phi.i679, i64 %shr.i157
  %conv.i161 = trunc i64 %a.addr.0.i160 to i32
  %cmp.i166 = icmp ult i32 %conv.i161, 65536
  %shl.i167 = shl i32 %conv.i161, 16
  %.675 = select i1 %cmp.i166, i32 16, i32 0
  %shl.i167.conv.i161 = select i1 %cmp.i166, i32 %shl.i167, i32 %conv.i161
  %cmp1.i171 = icmp ult i32 %shl.i167.conv.i161, 16777216
  %shl4.i174 = shl i32 %shl.i167.conv.i161, 8
  %a.addr.1.i177 = select i1 %cmp1.i171, i32 %shl4.i174, i32 %shl.i167.conv.i161
  %add3.i173 = or i32 %.675, 8
  %shiftCount.1.i176 = select i1 %cmp1.i171, i32 %add3.i173, i32 %.675
  %shr.i178 = lshr i32 %a.addr.1.i177, 24
  %arrayidx.i179 = getelementptr inbounds [256 x i32], [256 x i32]* @countLeadingZeros32.countLeadingZerosHigh, i32 0, i32 %shr.i178
  %3 = load i32, i32* %arrayidx.i179, align 4
  %add6.i180 = or i32 %shiftCount.1.i176, %shiftCount.0.i159
  %add1.i163 = add i32 %add6.i180, %3
  %sub.i151 = add nsw i32 %add1.i163, -11
  %sh_prom.i152 = zext i32 %sub.i151 to i64
  %shl.i153 = shl i64 %and.i124, %sh_prom.i152
  %sub1.i154 = sub i32 12, %add1.i163
  br label %if.end44.i

if.end44.i:                                       ; preds = %if.end43.i, %if.end35.i
  %aSig.i.0 = phi i64 [ %shl.i153, %if.end43.i ], [ %and.i124, %if.end35.i ]
  %aExp.i.0 = phi i32 [ %sub1.i154, %if.end43.i ], [ %conv.i127, %if.end35.i ]
  %sub.i = sub i32 %aExp.i.0, %bExp.i.0
  %or45.i = shl i64 %aSig.i.0, 10
  %shl.i = or i64 %or45.i, 4611686018427387904
  %or46.i = shl i64 %bSig.i.0, 11
  %shl47.i = or i64 %or46.i, -9223372036854775808
  %add48.i = shl i64 %shl.i, 1
  %cmp49.i = icmp ugt i64 %shl47.i, %add48.i
  %not.cmp49.i = xor i1 %cmp49.i, true
  %shr.i = zext i1 %not.cmp49.i to i64
  %aSig.i.1 = lshr exact i64 %shl.i, %shr.i
  %zExp.0.i.v = select i1 %cmp49.i, i32 1021, i32 1022
  %zExp.0.i = add i32 %sub.i, %zExp.0.i.v
  %cmp.i186 = icmp ugt i64 %shl47.i, %aSig.i.1
  br i1 %cmp.i186, label %if.end.i191, label %if.end63.i

if.end.i191:                                      ; preds = %if.end44.i
  %shr.i188 = lshr i64 %shl47.i, 32
  %shl.i189 = shl nuw i64 %shr.i188, 32
  %cmp1.i190 = icmp ugt i64 %shl.i189, %aSig.i.1
  br i1 %cmp1.i190, label %cond.false.i, label %cond.end.i

cond.false.i:                                     ; preds = %if.end.i191
  %div.i = udiv i64 %aSig.i.1, %shr.i188
  %shl2.i = shl i64 %div.i, 32
  br label %cond.end.i

cond.end.i:                                       ; preds = %if.end.i191, %cond.false.i
  %cond.i = phi i64 [ %shl2.i, %cond.false.i ], [ -4294967296, %if.end.i191 ]
  %shr3.i = lshr exact i64 %cond.i, 32
  %conv7.i = and i64 %or46.i, 4294965248
  %mul9.i = mul nuw i64 %shr3.i, %conv7.i
  %mul15.i = mul nuw i64 %shr3.i, %shr.i188
  %shr18.i = lshr i64 %mul9.i, 32
  %shl21.i = shl i64 %mul9.i, 32
  %sub.i202 = sub i64 0, %shl21.i
  %cmp.i204 = icmp ne i64 %shl21.i, 0
  %conv2.i.neg = sext i1 %cmp.i204 to i64
  %add20.i.neg = sub i64 %aSig.i.1, %mul15.i
  %sub1.i203 = sub i64 %add20.i.neg, %shr18.i
  %sub3.i = add i64 %sub1.i203, %conv2.i.neg
  %cmp3.i786 = icmp slt i64 %sub3.i, 0
  br i1 %cmp3.i786, label %while.body.i195.lr.ph, label %while.end.i198

while.body.i195.lr.ph:                            ; preds = %cond.end.i
  %shl4.i194 = shl i64 %bSig.i.0, 43
  br label %while.body.i195

while.body.i195:                                  ; preds = %while.body.i195.lr.ph, %while.body.i195
  %z.0.i789 = phi i64 [ %cond.i, %while.body.i195.lr.ph ], [ %sub.i193, %while.body.i195 ]
  %rem0.i182.0788 = phi i64 [ %sub3.i, %while.body.i195.lr.ph ], [ %add3.i211, %while.body.i195 ]
  %rem1.i183.0787 = phi i64 [ %sub.i202, %while.body.i195.lr.ph ], [ %add.i206, %while.body.i195 ]
  %sub.i193 = add i64 %z.0.i789, -4294967296
  %add.i206 = add i64 %rem1.i183.0787, %shl4.i194
  %add1.i207 = add i64 %rem0.i182.0788, %shr.i188
  %cmp.i208 = icmp ult i64 %add.i206, %rem1.i183.0787
  %conv2.i210 = zext i1 %cmp.i208 to i64
  %add3.i211 = add i64 %add1.i207, %conv2.i210
  %cmp3.i = icmp slt i64 %add3.i211, 0
  br i1 %cmp3.i, label %while.body.i195, label %while.end.i198.loopexit

while.end.i198.loopexit:                          ; preds = %while.body.i195
  br label %while.end.i198

while.end.i198:                                   ; preds = %while.end.i198.loopexit, %cond.end.i
  %rem1.i183.0.lcssa = phi i64 [ %sub.i202, %cond.end.i ], [ %add.i206, %while.end.i198.loopexit ]
  %rem0.i182.0.lcssa = phi i64 [ %sub3.i, %cond.end.i ], [ %add3.i211, %while.end.i198.loopexit ]
  %z.0.i.lcssa = phi i64 [ %cond.i, %cond.end.i ], [ %sub.i193, %while.end.i198.loopexit ]
  %shl5.i = shl i64 %rem0.i182.0.lcssa, 32
  %shr6.i = lshr i64 %rem1.i183.0.lcssa, 32
  %or.i196 = or i64 %shl5.i, %shr6.i
  %cmp8.i197 = icmp ugt i64 %shl.i189, %or.i196
  br i1 %cmp8.i197, label %estimateDiv128To64.v0.C.c.exit, label %estimateDiv128To64.v0.C.c.exit.thread

estimateDiv128To64.v0.C.c.exit.thread:            ; preds = %while.end.i198
  %or14.i806 = or i64 %z.0.i.lcssa, 4294967295
  br label %if.end63.i

estimateDiv128To64.v0.C.c.exit:                   ; preds = %while.end.i198
  %div11.i = udiv i64 %or.i196, %shr.i188
  %or14.i = or i64 %div11.i, %z.0.i.lcssa
  %and.i = and i64 %div11.i, 511
  %cmp54.i = icmp ult i64 %and.i, 3
  br i1 %cmp54.i, label %if.then56.i, label %if.end63.i

if.then56.i:                                      ; preds = %estimateDiv128To64.v0.C.c.exit
  %shr3.i216 = lshr i64 %or14.i, 32
  %conv6.i = and i64 %div11.i, 4294967295
  %mul.i = mul nuw i64 %conv6.i, %conv7.i
  %mul9.i221 = mul nuw i64 %shr3.i216, %conv7.i
  %mul12.i = mul nuw i64 %conv6.i, %shr.i188
  %mul15.i225 = mul nuw i64 %shr3.i216, %shr.i188
  %add.i226 = add i64 %mul9.i221, %mul12.i
  %cmp.i227 = icmp ult i64 %add.i226, %mul12.i
  %conv17.i = zext i1 %cmp.i227 to i64
  %shl.i228 = shl nuw nsw i64 %conv17.i, 32
  %shr18.i229 = lshr i64 %add.i226, 32
  %add19.i = or i64 %shl.i228, %shr18.i229
  %shl21.i231 = shl i64 %add.i226, 32
  %add22.i = add i64 %shl21.i231, %mul.i
  %cmp23.i = icmp ult i64 %add22.i, %shl21.i231
  %sub.i232 = sub i64 0, %add22.i
  %conv25.i.neg = sext i1 %cmp23.i to i64
  %cmp.i234 = icmp ne i64 %add22.i, 0
  %conv2.i236.neg = sext i1 %cmp.i234 to i64
  %add20.i230.neg = sub i64 %aSig.i.1, %mul15.i225
  %add26.i.neg = sub i64 %add20.i230.neg, %add19.i
  %sub1.i233 = add i64 %add26.i.neg, %conv25.i.neg
  %sub3.i237 = add i64 %sub1.i233, %conv2.i236.neg
  %cmp57.i792 = icmp slt i64 %sub3.i237, 0
  br i1 %cmp57.i792, label %while.body.i.preheader, label %while.end.i

while.body.i.preheader:                           ; preds = %if.then56.i
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.preheader, %while.body.i
  %zSig.0.i795 = phi i64 [ %dec.i, %while.body.i ], [ %or14.i, %while.body.i.preheader ]
  %rem1.i.0794 = phi i64 [ %add.i238, %while.body.i ], [ %sub.i232, %while.body.i.preheader ]
  %rem0.i.0793 = phi i64 [ %add3.i242, %while.body.i ], [ %sub3.i237, %while.body.i.preheader ]
  %dec.i = add i64 %zSig.0.i795, -1
  %add.i238 = add i64 %rem1.i.0794, %shl47.i
  %cmp.i239 = icmp ult i64 %add.i238, %rem1.i.0794
  %conv2.i241 = zext i1 %cmp.i239 to i64
  %add3.i242 = add i64 %conv2.i241, %rem0.i.0793
  %cmp57.i = icmp slt i64 %add3.i242, 0
  br i1 %cmp57.i, label %while.body.i, label %while.end.i.loopexit

while.end.i.loopexit:                             ; preds = %while.body.i
  br label %while.end.i

while.end.i:                                      ; preds = %while.end.i.loopexit, %if.then56.i
  %rem1.i.0.lcssa = phi i64 [ %sub.i232, %if.then56.i ], [ %add.i238, %while.end.i.loopexit ]
  %zSig.0.i.lcssa = phi i64 [ %or14.i, %if.then56.i ], [ %dec.i, %while.end.i.loopexit ]
  %cmp59.i = icmp ne i64 %rem1.i.0.lcssa, 0
  %conv61.i = zext i1 %cmp59.i to i64
  %or62.i = or i64 %conv61.i, %zSig.0.i.lcssa
  br label %if.end63.i

if.end63.i:                                       ; preds = %estimateDiv128To64.v0.C.c.exit.thread, %if.end44.i, %while.end.i, %estimateDiv128To64.v0.C.c.exit
  %zSig.1.i = phi i64 [ %or62.i, %while.end.i ], [ %or14.i, %estimateDiv128To64.v0.C.c.exit ], [ -1, %if.end44.i ], [ %or14.i806, %estimateDiv128To64.v0.C.c.exit.thread ]
  %call64.c.i.c = tail call fastcc i64 @roundAndPackFloat64.v0.C.c.c(i32 %xor.i, i32 %zExp.0.i, i64 %zSig.1.i) #4
  br label %float64_div.v0.C.c.exit

float64_div.v0.C.c.exit:                          ; preds = %if.then6.i, %if.then11.i, %if.end13.i, %if.end14.i, %if.then20.i, %if.end22.i, %if.then31.i, %if.end32.i, %if.then41.i, %if.end63.i
  %retval.0.i = phi i64 [ %call7.c.i.c, %if.then6.i ], [ %call12.c.i.c, %if.then11.i ], [ 9223372036854775807, %if.end13.i ], [ %call15.c.i.c, %if.end14.i ], [ %call21.c.i.c, %if.then20.i ], [ %call23.c.i.c, %if.end22.i ], [ 9223372036854775807, %if.then31.i ], [ %call33.c.i.c, %if.end32.i ], [ %call42.c.i.c, %if.then41.i ], [ %call64.c.i.c, %if.end63.i ]
  switch i32 %i.0799, label %csroa.if.else53.i279 [
    i32 0, label %__non_const_wrapper__.21.exit.thread
    i32 1, label %__non_const_wrapper__.22.exit.thread755
    i32 2, label %__non_const_wrapper__.22.exit.thread758
    i32 3, label %__non_const_wrapper__.22.exit.thread761
    i32 4, label %__non_const_wrapper__.22.exit.thread839
    i32 5, label %__non_const_wrapper__.22.exit.thread840
    i32 6, label %__non_const_wrapper__.23.exit.thread
    i32 7, label %__non_const_wrapper__.23.exit.thread849
    i32 8, label %__non_const_wrapper__.21.exit.thread718
    i32 9, label %__non_const_wrapper__.21.exit.thread723
    i32 10, label %__non_const_wrapper__.21.exit.thread728
    i32 11, label %__non_const_wrapper__.21.exit.thread733
  ]

__non_const_wrapper__.21.exit.thread733:          ; preds = %float64_div.v0.C.c.exit
  %cmp3734 = icmp ne i64 %retval.0.i, -4613937818241073152
  %conv735 = zext i1 %cmp3734 to i32
  %add736 = add nsw i32 %conv735, %main_result.0798
  br label %csroa.if.end49.i547

__non_const_wrapper__.21.exit.thread728:          ; preds = %float64_div.v0.C.c.exit
  %cmp3729 = icmp ne i64 %retval.0.i, 4609434218613702656
  %conv730 = zext i1 %cmp3729 to i32
  %add731 = add nsw i32 %conv730, %main_result.0798
  br label %csroa.if.end49.i547

__non_const_wrapper__.21.exit.thread723:          ; preds = %float64_div.v0.C.c.exit
  %cmp3724 = icmp ne i64 %retval.0.i, -9223372036854775808
  %conv725 = zext i1 %cmp3724 to i32
  %add726 = add nsw i32 %conv725, %main_result.0798
  br label %csroa.if.end39.i551

__non_const_wrapper__.21.exit.thread718:          ; preds = %float64_div.v0.C.c.exit
  %cmp3719 = icmp ne i64 %retval.0.i, 0
  %conv720 = zext i1 %cmp3719 to i32
  %add721 = add nsw i32 %conv720, %main_result.0798
  br label %csroa.if.end39.i551

__non_const_wrapper__.23.exit.thread849:          ; preds = %float64_div.v0.C.c.exit
  %cmp3714 = icmp ne i64 %retval.0.i, 9218868437227405312
  %conv715 = zext i1 %cmp3714 to i32
  %add716 = add nsw i32 %conv715, %main_result.0798
  br label %csroa.if.end34.i661

__non_const_wrapper__.23.exit.thread:             ; preds = %float64_div.v0.C.c.exit
  %cmp3709 = icmp ne i64 %retval.0.i, 9223372036854775807
  %conv710 = zext i1 %cmp3709 to i32
  %add711 = add nsw i32 %conv710, %main_result.0798
  br label %csroa.if.end24.i665

__non_const_wrapper__.22.exit.thread840:          ; preds = %float64_div.v0.C.c.exit
  %cmp3705 = icmp ne i64 %retval.0.i, 0
  %conv706 = zext i1 %cmp3705 to i32
  %add707 = add nsw i32 %conv706, %main_result.0798
  br label %csroa.if.end24.i665

__non_const_wrapper__.22.exit.thread839:          ; preds = %float64_div.v0.C.c.exit
  %cmp3700 = icmp ne i64 %retval.0.i, 9221120237041090560
  %conv701 = zext i1 %cmp3700 to i32
  %add702 = add nsw i32 %conv701, %main_result.0798
  br label %csroa.if.end19.i667

__non_const_wrapper__.22.exit.thread761:          ; preds = %float64_div.v0.C.c.exit
  %cmp3696 = icmp ne i64 %retval.0.i, 9218868437227405312
  %conv697 = zext i1 %cmp3696 to i32
  %add698 = add nsw i32 %conv697, %main_result.0798
  br label %csroa.if.end14.i669

__non_const_wrapper__.22.exit.thread758:          ; preds = %float64_div.v0.C.c.exit
  %cmp3692 = icmp ne i64 %retval.0.i, 9223372036854775807
  %conv693 = zext i1 %cmp3692 to i32
  %add694 = add nsw i32 %conv693, %main_result.0798
  br label %csroa.if.end9.i671

__non_const_wrapper__.22.exit.thread755:          ; preds = %float64_div.v0.C.c.exit
  %cmp3687 = icmp ne i64 %retval.0.i, 9221120237041090560
  %conv688 = zext i1 %cmp3687 to i32
  %add689 = add nsw i32 %conv688, %main_result.0798
  br label %csroa.if.end4.i673

__non_const_wrapper__.21.exit.thread:             ; preds = %float64_div.v0.C.c.exit
  %cmp3682 = icmp ne i64 %retval.0.i, 9223090561878065152
  %conv683 = zext i1 %cmp3682 to i32
  %add684 = add nsw i32 %conv683, %main_result.0798
  br label %__non_const_wrapper__.24.exit

csroa.if.else53.i279:                             ; preds = %float64_div.v0.C.c.exit
  switch i32 %i.0799, label %csroa.if.end104.i309 [
    i32 12, label %__non_const_wrapper__.21.exit.thread738
    i32 13, label %__non_const_wrapper__.21.exit.thread743
    i32 14, label %__non_const_wrapper__.21.exit.thread748
    i32 15, label %__non_const_wrapper__.21.exit
    i32 16, label %__non_const_wrapper__.21.exit
    i32 17, label %csroa.if.end84.i317
    i32 18, label %csroa.if.end89.i315
    i32 19, label %csroa.if.end94.i313
    i32 20, label %csroa.if.end94.i313
  ]

__non_const_wrapper__.21.exit.thread748:          ; preds = %csroa.if.else53.i279
  %cmp3749 = icmp ne i64 %retval.0.i, 4602678819172646912
  %conv750 = zext i1 %cmp3749 to i32
  %add751 = add nsw i32 %conv750, %main_result.0798
  br label %csroa.if.end69.i539

__non_const_wrapper__.21.exit.thread743:          ; preds = %csroa.if.else53.i279
  %cmp3744 = icmp ne i64 %retval.0.i, 4609434218613702656
  %conv745 = zext i1 %cmp3744 to i32
  %add746 = add nsw i32 %conv745, %main_result.0798
  br label %csroa.if.end59.i543

__non_const_wrapper__.21.exit.thread738:          ; preds = %csroa.if.else53.i279
  %cmp3739 = icmp ne i64 %retval.0.i, -4613937818241073152
  %conv740 = zext i1 %cmp3739 to i32
  %add741 = add nsw i32 %conv740, %main_result.0798
  br label %csroa.if.end59.i543

csroa.if.end104.i309:                             ; preds = %csroa.if.else53.i279
  br label %csroa.if.end94.i313

csroa.if.end94.i313:                              ; preds = %csroa.if.end104.i309, %csroa.if.else53.i279, %csroa.if.else53.i279
  %.phi95.i312 = phi i64 [ -4619192017806338731, %csroa.if.else53.i279 ], [ 4604180019048437077, %csroa.if.end104.i309 ], [ -4619192017806338731, %csroa.if.else53.i279 ]
  br label %csroa.if.end89.i315

csroa.if.end89.i315:                              ; preds = %csroa.if.else53.i279, %csroa.if.end94.i313
  %.phi90.i314 = phi i64 [ %.phi95.i312, %csroa.if.end94.i313 ], [ 4604180019048437077, %csroa.if.else53.i279 ]
  br label %csroa.if.end84.i317

csroa.if.end84.i317:                              ; preds = %csroa.if.else53.i279, %csroa.if.end89.i315
  %.phi85.i316 = phi i64 [ %.phi90.i314, %csroa.if.end89.i315 ], [ 4602678819172646912, %csroa.if.else53.i279 ]
  br label %__non_const_wrapper__.21.exit

__non_const_wrapper__.21.exit:                    ; preds = %csroa.if.else53.i279, %csroa.if.else53.i279, %csroa.if.end84.i317
  %.phi75.i320 = phi i64 [ -4620693217682128896, %csroa.if.else53.i279 ], [ %.phi85.i316, %csroa.if.end84.i317 ], [ -4620693217682128896, %csroa.if.else53.i279 ]
  %cmp3 = icmp ne i64 %retval.0.i, %.phi75.i320
  %conv = zext i1 %cmp3 to i32
  %add = add nsw i32 %conv, %main_result.0798
  switch i32 %i.0799, label %csroa.if.end99.i527.fold.split [
    i32 18, label %__non_const_wrapper__.22.exit.thread844
    i32 19, label %csroa.if.end89.i531
    i32 20, label %csroa.if.end99.i527
    i32 15, label %csroa.if.end69.i539
    i32 16, label %__non_const_wrapper__.22.exit.thread841
    i32 17, label %csroa.if.end79.i535
    i32 0, label %__non_const_wrapper__.24.exit
    i32 1, label %csroa.if.end4.i673
    i32 2, label %csroa.if.end9.i671
    i32 3, label %csroa.if.end14.i669
    i32 4, label %csroa.if.end19.i667
    i32 5, label %csroa.if.end24.i665
    i32 6, label %__non_const_wrapper__.23.exit
    i32 7, label %__non_const_wrapper__.23.exit
    i32 8, label %csroa.if.end39.i551
    i32 9, label %csroa.if.end39.i551
    i32 10, label %csroa.if.end49.i547
    i32 11, label %csroa.if.end49.i547
    i32 12, label %csroa.if.end59.i543
    i32 13, label %csroa.if.end59.i543
    i32 14, label %csroa.if.end69.i539.fold.split
  ]

__non_const_wrapper__.22.exit.thread844:          ; preds = %__non_const_wrapper__.21.exit
  br label %csroa.if.end89.i531

__non_const_wrapper__.22.exit.thread841:          ; preds = %__non_const_wrapper__.21.exit
  br label %csroa.if.end79.i535

csroa.if.end99.i527.fold.split:                   ; preds = %__non_const_wrapper__.21.exit
  br label %csroa.if.end99.i527

csroa.if.end99.i527:                              ; preds = %__non_const_wrapper__.21.exit, %csroa.if.end99.i527.fold.split
  %.phi100.i418848 = phi i64 [ 4607182418800017408, %__non_const_wrapper__.21.exit ], [ -4616189618054758400, %csroa.if.end99.i527.fold.split ]
  br label %csroa.if.end89.i531

csroa.if.end89.i531:                              ; preds = %__non_const_wrapper__.21.exit, %__non_const_wrapper__.22.exit.thread844, %csroa.if.end99.i527
  %.phi90.i422845 = phi i64 [ %.phi100.i418848, %csroa.if.end99.i527 ], [ 4607182418800017408, %__non_const_wrapper__.22.exit.thread844 ], [ -4616189618054758400, %__non_const_wrapper__.21.exit ]
  %.phi90.i530 = phi i64 [ -4613937818241073152, %csroa.if.end99.i527 ], [ 4609434218613702656, %__non_const_wrapper__.22.exit.thread844 ], [ 4609434218613702656, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end79.i535

csroa.if.end79.i535:                              ; preds = %__non_const_wrapper__.21.exit, %__non_const_wrapper__.22.exit.thread841, %csroa.if.end89.i531
  %.phi80.i426842 = phi i64 [ %.phi90.i422845, %csroa.if.end89.i531 ], [ 4611686018427387904, %__non_const_wrapper__.22.exit.thread841 ], [ -4611686018427387904, %__non_const_wrapper__.21.exit ]
  %.phi80.i534 = phi i64 [ %.phi90.i530, %csroa.if.end89.i531 ], [ -4607182418800017408, %__non_const_wrapper__.22.exit.thread841 ], [ -4607182418800017408, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end69.i539

csroa.if.end69.i539.fold.split:                   ; preds = %__non_const_wrapper__.21.exit
  br label %csroa.if.end69.i539

csroa.if.end69.i539:                              ; preds = %__non_const_wrapper__.21.exit, %csroa.if.end69.i539.fold.split, %__non_const_wrapper__.21.exit.thread748, %csroa.if.end79.i535
  %.phi20.i450838 = phi i64 [ %.phi80.i426842, %csroa.if.end79.i535 ], [ -4611686018427387904, %__non_const_wrapper__.21.exit ], [ 4611686018427387904, %__non_const_wrapper__.21.exit.thread748 ], [ -4616189618054758400, %csroa.if.end69.i539.fold.split ]
  %add703837 = phi i32 [ %add, %csroa.if.end79.i535 ], [ %add, %__non_const_wrapper__.21.exit ], [ %add751, %__non_const_wrapper__.21.exit.thread748 ], [ %add, %csroa.if.end69.i539.fold.split ]
  %.phi70.i538 = phi i64 [ %.phi80.i534, %csroa.if.end79.i535 ], [ 4616189618054758400, %__non_const_wrapper__.21.exit ], [ 4616189618054758400, %__non_const_wrapper__.21.exit.thread748 ], [ 4616189618054758400, %csroa.if.end69.i539.fold.split ]
  br label %csroa.if.end59.i543

csroa.if.end59.i543:                              ; preds = %__non_const_wrapper__.21.exit, %__non_const_wrapper__.21.exit, %__non_const_wrapper__.21.exit.thread738, %__non_const_wrapper__.21.exit.thread743, %csroa.if.end69.i539
  %.phi20.i450832 = phi i64 [ %.phi20.i450838, %csroa.if.end69.i539 ], [ -4609434218613702656, %__non_const_wrapper__.21.exit.thread743 ], [ 4613937818241073152, %__non_const_wrapper__.21.exit.thread738 ], [ -4616189618054758400, %__non_const_wrapper__.21.exit ], [ -4616189618054758400, %__non_const_wrapper__.21.exit ]
  %add703831 = phi i32 [ %add703837, %csroa.if.end69.i539 ], [ %add746, %__non_const_wrapper__.21.exit.thread743 ], [ %add741, %__non_const_wrapper__.21.exit.thread738 ], [ %add, %__non_const_wrapper__.21.exit ], [ %add, %__non_const_wrapper__.21.exit ]
  %.phi60.i542 = phi i64 [ %.phi70.i538, %csroa.if.end69.i539 ], [ -4611686018427387904, %__non_const_wrapper__.21.exit.thread743 ], [ -4611686018427387904, %__non_const_wrapper__.21.exit.thread738 ], [ -4611686018427387904, %__non_const_wrapper__.21.exit ], [ -4611686018427387904, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end49.i547

csroa.if.end49.i547:                              ; preds = %__non_const_wrapper__.21.exit, %__non_const_wrapper__.21.exit, %__non_const_wrapper__.21.exit.thread728, %__non_const_wrapper__.21.exit.thread733, %csroa.if.end59.i543
  %.phi20.i450826 = phi i64 [ %.phi20.i450832, %csroa.if.end59.i543 ], [ -4609434218613702656, %__non_const_wrapper__.21.exit.thread733 ], [ 4613937818241073152, %__non_const_wrapper__.21.exit.thread728 ], [ -4616189618054758400, %__non_const_wrapper__.21.exit ], [ -4616189618054758400, %__non_const_wrapper__.21.exit ]
  %add703825 = phi i32 [ %add703831, %csroa.if.end59.i543 ], [ %add736, %__non_const_wrapper__.21.exit.thread733 ], [ %add731, %__non_const_wrapper__.21.exit.thread728 ], [ %add, %__non_const_wrapper__.21.exit ], [ %add, %__non_const_wrapper__.21.exit ]
  %.phi50.i546 = phi i64 [ %.phi60.i542, %csroa.if.end59.i543 ], [ 4611686018427387904, %__non_const_wrapper__.21.exit.thread733 ], [ 4611686018427387904, %__non_const_wrapper__.21.exit.thread728 ], [ 4611686018427387904, %__non_const_wrapper__.21.exit ], [ 4611686018427387904, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end39.i551

csroa.if.end39.i551:                              ; preds = %__non_const_wrapper__.21.exit, %__non_const_wrapper__.21.exit, %__non_const_wrapper__.21.exit.thread718, %__non_const_wrapper__.21.exit.thread723, %csroa.if.end49.i547
  %.phi20.i450820 = phi i64 [ %.phi20.i450826, %csroa.if.end49.i547 ], [ -9223372036854775808, %__non_const_wrapper__.21.exit.thread723 ], [ 0, %__non_const_wrapper__.21.exit.thread718 ], [ -4616189618054758400, %__non_const_wrapper__.21.exit ], [ -4616189618054758400, %__non_const_wrapper__.21.exit ]
  %add703819 = phi i32 [ %add703825, %csroa.if.end49.i547 ], [ %add726, %__non_const_wrapper__.21.exit.thread723 ], [ %add721, %__non_const_wrapper__.21.exit.thread718 ], [ %add, %__non_const_wrapper__.21.exit ], [ %add, %__non_const_wrapper__.21.exit ]
  %.phi40.i550 = phi i64 [ %.phi50.i546, %csroa.if.end49.i547 ], [ 4607182418800017408, %__non_const_wrapper__.21.exit.thread723 ], [ 4607182418800017408, %__non_const_wrapper__.21.exit.thread718 ], [ 4607182418800017408, %__non_const_wrapper__.21.exit ], [ 4607182418800017408, %__non_const_wrapper__.21.exit ]
  br label %__non_const_wrapper__.23.exit

__non_const_wrapper__.23.exit:                    ; preds = %__non_const_wrapper__.21.exit, %__non_const_wrapper__.21.exit, %csroa.if.end39.i551
  %.phi20.i450812 = phi i64 [ %.phi20.i450820, %csroa.if.end39.i551 ], [ -4616189618054758400, %__non_const_wrapper__.21.exit ], [ -4616189618054758400, %__non_const_wrapper__.21.exit ]
  %add703809 = phi i32 [ %add703819, %csroa.if.end39.i551 ], [ %add, %__non_const_wrapper__.21.exit ], [ %add, %__non_const_wrapper__.21.exit ]
  %.phi30.i554 = phi i64 [ %.phi40.i550, %csroa.if.end39.i551 ], [ 0, %__non_const_wrapper__.21.exit ], [ 0, %__non_const_wrapper__.21.exit ]
  switch i32 %i.0799, label %csroa.if.end104.i633 [
    i32 15, label %csroa.if.end74.i645
    i32 16, label %csroa.if.end74.i645
    i32 17, label %csroa.if.end84.i641
    i32 18, label %csroa.if.end89.i639
    i32 19, label %csroa.if.end94.i637
    i32 20, label %csroa.if.end94.i637
    i32 6, label %csroa.if.end24.i665
    i32 7, label %csroa.if.end34.i661
    i32 8, label %csroa.if.end39.i659
    i32 9, label %csroa.if.end44.i657
    i32 10, label %csroa.if.end49.i655
    i32 11, label %csroa.if.end54.i653
    i32 12, label %csroa.if.end54.i653
    i32 13, label %csroa.if.end64.i649
    i32 14, label %csroa.if.end69.i647
  ]

csroa.if.end104.i633:                             ; preds = %__non_const_wrapper__.23.exit
  br label %csroa.if.end94.i637

csroa.if.end94.i637:                              ; preds = %__non_const_wrapper__.23.exit, %__non_const_wrapper__.23.exit, %csroa.if.end104.i633
  %.phi95.i636 = phi i64 [ -4619192017806338731, %__non_const_wrapper__.23.exit ], [ 4604180019048437077, %csroa.if.end104.i633 ], [ -4619192017806338731, %__non_const_wrapper__.23.exit ]
  br label %csroa.if.end89.i639

csroa.if.end89.i639:                              ; preds = %__non_const_wrapper__.23.exit, %csroa.if.end94.i637
  %.phi90.i638 = phi i64 [ %.phi95.i636, %csroa.if.end94.i637 ], [ 4604180019048437077, %__non_const_wrapper__.23.exit ]
  br label %csroa.if.end84.i641

csroa.if.end84.i641:                              ; preds = %__non_const_wrapper__.23.exit, %csroa.if.end89.i639
  %.phi85.i640 = phi i64 [ %.phi90.i638, %csroa.if.end89.i639 ], [ 4602678819172646912, %__non_const_wrapper__.23.exit ]
  br label %csroa.if.end74.i645

csroa.if.end74.i645:                              ; preds = %__non_const_wrapper__.23.exit, %__non_const_wrapper__.23.exit, %csroa.if.end84.i641
  %.phi75.i644 = phi i64 [ -4620693217682128896, %__non_const_wrapper__.23.exit ], [ %.phi85.i640, %csroa.if.end84.i641 ], [ -4620693217682128896, %__non_const_wrapper__.23.exit ]
  br label %csroa.if.end69.i647

csroa.if.end69.i647:                              ; preds = %__non_const_wrapper__.23.exit, %csroa.if.end74.i645
  %.phi70.i646 = phi i64 [ %.phi75.i644, %csroa.if.end74.i645 ], [ 4602678819172646912, %__non_const_wrapper__.23.exit ]
  br label %csroa.if.end64.i649

csroa.if.end64.i649:                              ; preds = %__non_const_wrapper__.23.exit, %csroa.if.end69.i647
  %.phi65.i648 = phi i64 [ %.phi70.i646, %csroa.if.end69.i647 ], [ 4609434218613702656, %__non_const_wrapper__.23.exit ]
  br label %csroa.if.end54.i653

csroa.if.end54.i653:                              ; preds = %csroa.if.end64.i649, %__non_const_wrapper__.23.exit, %__non_const_wrapper__.23.exit
  %.phi55.i652 = phi i64 [ -4613937818241073152, %__non_const_wrapper__.23.exit ], [ %.phi65.i648, %csroa.if.end64.i649 ], [ -4613937818241073152, %__non_const_wrapper__.23.exit ]
  br label %csroa.if.end49.i655

csroa.if.end49.i655:                              ; preds = %__non_const_wrapper__.23.exit, %csroa.if.end54.i653
  %.phi50.i654 = phi i64 [ %.phi55.i652, %csroa.if.end54.i653 ], [ 4609434218613702656, %__non_const_wrapper__.23.exit ]
  br label %csroa.if.end44.i657

csroa.if.end44.i657:                              ; preds = %__non_const_wrapper__.23.exit, %csroa.if.end49.i655
  %.phi45.i656 = phi i64 [ %.phi50.i654, %csroa.if.end49.i655 ], [ -9223372036854775808, %__non_const_wrapper__.23.exit ]
  br label %csroa.if.end39.i659

csroa.if.end39.i659:                              ; preds = %__non_const_wrapper__.23.exit, %csroa.if.end44.i657
  %.phi40.i658 = phi i64 [ %.phi45.i656, %csroa.if.end44.i657 ], [ 0, %__non_const_wrapper__.23.exit ]
  br label %csroa.if.end34.i661

csroa.if.end34.i661:                              ; preds = %__non_const_wrapper__.23.exit.thread849, %__non_const_wrapper__.23.exit, %csroa.if.end39.i659
  %.phi30.i554852 = phi i64 [ %.phi30.i554, %csroa.if.end39.i659 ], [ %.phi30.i554, %__non_const_wrapper__.23.exit ], [ 0, %__non_const_wrapper__.23.exit.thread849 ]
  %add703809851 = phi i32 [ %add703809, %csroa.if.end39.i659 ], [ %add703809, %__non_const_wrapper__.23.exit ], [ %add716, %__non_const_wrapper__.23.exit.thread849 ]
  %.phi20.i450812850 = phi i64 [ %.phi20.i450812, %csroa.if.end39.i659 ], [ %.phi20.i450812, %__non_const_wrapper__.23.exit ], [ 4607182418800017408, %__non_const_wrapper__.23.exit.thread849 ]
  %.phi35.i660 = phi i64 [ %.phi40.i658, %csroa.if.end39.i659 ], [ 9218868437227405312, %__non_const_wrapper__.23.exit ], [ 9218868437227405312, %__non_const_wrapper__.23.exit.thread849 ]
  br label %csroa.if.end24.i665

csroa.if.end24.i665:                              ; preds = %__non_const_wrapper__.21.exit, %__non_const_wrapper__.23.exit.thread, %__non_const_wrapper__.22.exit.thread840, %csroa.if.end34.i661, %__non_const_wrapper__.23.exit
  %.phi20.i450813 = phi i64 [ %.phi20.i450812, %__non_const_wrapper__.23.exit ], [ %.phi20.i450812850, %csroa.if.end34.i661 ], [ 4607182418800017408, %__non_const_wrapper__.22.exit.thread840 ], [ 0, %__non_const_wrapper__.23.exit.thread ], [ -4616189618054758400, %__non_const_wrapper__.21.exit ]
  %add703810 = phi i32 [ %add703809, %__non_const_wrapper__.23.exit ], [ %add703809851, %csroa.if.end34.i661 ], [ %add707, %__non_const_wrapper__.22.exit.thread840 ], [ %add711, %__non_const_wrapper__.23.exit.thread ], [ %add, %__non_const_wrapper__.21.exit ]
  %.phi25.i556785 = phi i64 [ %.phi30.i554, %__non_const_wrapper__.23.exit ], [ %.phi30.i554852, %csroa.if.end34.i661 ], [ 9218868437227405312, %__non_const_wrapper__.22.exit.thread840 ], [ 0, %__non_const_wrapper__.23.exit.thread ], [ 9218868437227405312, %__non_const_wrapper__.21.exit ]
  %.phi25.i664 = phi i64 [ 9223372036854775807, %__non_const_wrapper__.23.exit ], [ %.phi35.i660, %csroa.if.end34.i661 ], [ 0, %__non_const_wrapper__.22.exit.thread840 ], [ 9223372036854775807, %__non_const_wrapper__.23.exit.thread ], [ 0, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end19.i667

csroa.if.end19.i667:                              ; preds = %__non_const_wrapper__.21.exit, %__non_const_wrapper__.22.exit.thread839, %csroa.if.end24.i665
  %.phi20.i450814 = phi i64 [ %.phi20.i450813, %csroa.if.end24.i665 ], [ 4607182418800017408, %__non_const_wrapper__.22.exit.thread839 ], [ -4616189618054758400, %__non_const_wrapper__.21.exit ]
  %add703811 = phi i32 [ %add703810, %csroa.if.end24.i665 ], [ %add702, %__non_const_wrapper__.22.exit.thread839 ], [ %add, %__non_const_wrapper__.21.exit ]
  %.phi20.i558783 = phi i64 [ %.phi25.i556785, %csroa.if.end24.i665 ], [ 9221120237041090560, %__non_const_wrapper__.22.exit.thread839 ], [ 9221120237041090560, %__non_const_wrapper__.21.exit ]
  %.phi20.i666 = phi i64 [ %.phi25.i664, %csroa.if.end24.i665 ], [ 9221120237041090560, %__non_const_wrapper__.22.exit.thread839 ], [ 9221120237041090560, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end14.i669

csroa.if.end14.i669:                              ; preds = %__non_const_wrapper__.21.exit, %__non_const_wrapper__.22.exit.thread761, %csroa.if.end19.i667
  %.phi15.i560781 = phi i64 [ %.phi20.i558783, %csroa.if.end19.i667 ], [ 4607182418800017408, %__non_const_wrapper__.22.exit.thread761 ], [ 4607182418800017408, %__non_const_wrapper__.21.exit ]
  %add690762780 = phi i32 [ %add703811, %csroa.if.end19.i667 ], [ %add698, %__non_const_wrapper__.22.exit.thread761 ], [ %add, %__non_const_wrapper__.21.exit ]
  %.phi5.i456763779 = phi i64 [ %.phi20.i450814, %csroa.if.end19.i667 ], [ 9218868437227405312, %__non_const_wrapper__.22.exit.thread761 ], [ -4616189618054758400, %__non_const_wrapper__.21.exit ]
  %.phi15.i668 = phi i64 [ %.phi20.i666, %csroa.if.end19.i667 ], [ 9218868437227405312, %__non_const_wrapper__.22.exit.thread761 ], [ 9218868437227405312, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end9.i671

csroa.if.end9.i671:                               ; preds = %__non_const_wrapper__.21.exit, %__non_const_wrapper__.22.exit.thread758, %csroa.if.end14.i669
  %.phi10.i562776 = phi i64 [ %.phi15.i560781, %csroa.if.end14.i669 ], [ 9218868437227405312, %__non_const_wrapper__.22.exit.thread758 ], [ 9218868437227405312, %__non_const_wrapper__.21.exit ]
  %add690759775 = phi i32 [ %add690762780, %csroa.if.end14.i669 ], [ %add694, %__non_const_wrapper__.22.exit.thread758 ], [ %add, %__non_const_wrapper__.21.exit ]
  %.phi5.i456760774 = phi i64 [ %.phi5.i456763779, %csroa.if.end14.i669 ], [ 9218868437227405312, %__non_const_wrapper__.22.exit.thread758 ], [ -4616189618054758400, %__non_const_wrapper__.21.exit ]
  %.phi10.i670 = phi i64 [ %.phi15.i668, %csroa.if.end14.i669 ], [ 9223372036854775807, %__non_const_wrapper__.22.exit.thread758 ], [ 9223372036854775807, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end4.i673

csroa.if.end4.i673:                               ; preds = %__non_const_wrapper__.21.exit, %__non_const_wrapper__.22.exit.thread755, %csroa.if.end9.i671
  %.phi5.i564771 = phi i64 [ %.phi10.i562776, %csroa.if.end9.i671 ], [ 9221120237041090560, %__non_const_wrapper__.22.exit.thread755 ], [ 9221120237041090560, %__non_const_wrapper__.21.exit ]
  %add690756770 = phi i32 [ %add690759775, %csroa.if.end9.i671 ], [ %add689, %__non_const_wrapper__.22.exit.thread755 ], [ %add, %__non_const_wrapper__.21.exit ]
  %.phi5.i456757769 = phi i64 [ %.phi5.i456760774, %csroa.if.end9.i671 ], [ 9218868437227405312, %__non_const_wrapper__.22.exit.thread755 ], [ -4616189618054758400, %__non_const_wrapper__.21.exit ]
  %.phi5.i672 = phi i64 [ %.phi10.i670, %csroa.if.end9.i671 ], [ 9221120237041090560, %__non_const_wrapper__.22.exit.thread755 ], [ 9221120237041090560, %__non_const_wrapper__.21.exit ]
  br label %__non_const_wrapper__.24.exit

__non_const_wrapper__.24.exit:                    ; preds = %__non_const_wrapper__.21.exit, %__non_const_wrapper__.21.exit.thread, %csroa.if.end4.i673
  %.phi.i566766 = phi i64 [ %.phi5.i564771, %csroa.if.end4.i673 ], [ 4607182418800017408, %__non_const_wrapper__.21.exit.thread ], [ 4607182418800017408, %__non_const_wrapper__.21.exit ]
  %add685753765 = phi i32 [ %add690756770, %csroa.if.end4.i673 ], [ %add684, %__non_const_wrapper__.21.exit.thread ], [ %add, %__non_const_wrapper__.21.exit ]
  %.phi.i458754764 = phi i64 [ %.phi5.i456757769, %csroa.if.end4.i673 ], [ 9223090561878065152, %__non_const_wrapper__.21.exit.thread ], [ -4616189618054758400, %__non_const_wrapper__.21.exit ]
  %.phi.i674 = phi i64 [ %.phi5.i672, %csroa.if.end4.i673 ], [ 9223090561878065152, %__non_const_wrapper__.21.exit.thread ], [ 9223090561878065152, %__non_const_wrapper__.21.exit ]
  %.cast = bitcast i64 %retval.0.i to double
  %call8 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i32 0, i32 0), i64 %.phi.i458754764, i64 %.phi.i566766, i64 %.phi.i674, i64 %retval.0.i, double %.cast)
  %inc = add nuw nsw i32 %i.0799, 1
  %exitcond = icmp eq i32 %inc, 22
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %__non_const_wrapper__.24.exit
  %call9 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %add685753765)
  ret i32 %add685753765
}

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #1

; Function Attrs: noinline norecurse nounwind readnone
define i64 @packFloat64.v0.C.c.c(i32 %zSign, i32 %zExp, i64 %zSig) local_unnamed_addr #2 {
entry:
  %conv2 = zext i32 %zSign to i64
  %shl = shl i64 %conv2, 63
  %conv13 = zext i32 %zExp to i64
  %shl2 = shl i64 %conv13, 52
  %add = add i64 %shl, %zSig
  %add3 = add i64 %add, %shl2
  ret i64 %add3
}

; Function Attrs: noinline norecurse nounwind
define internal fastcc i64 @roundAndPackFloat64.v0.C.c.c(i32 %zSign, i32 %zExp, i64 %zSig) unnamed_addr #3 {
entry:
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
  %add = add i64 %zSig, 512
  %cmp28 = icmp slt i64 %add, 0
  %or.cond = and i1 %cmp25, %cmp28
  br i1 %or.cond, label %if.then30, label %if.end34

if.then30:                                        ; preds = %lor.lhs.false, %if.then22
  tail call void @float_raise.v0.C.c.c(i32 9)
  %call.c.c = tail call i64 @packFloat64.v0.C.c.c(i32 %zSign, i32 2047, i64 0)
  br label %return

if.end34:                                         ; preds = %lor.lhs.false
  %cmp35 = icmp slt i32 %zExp, 0
  br i1 %cmp35, label %if.then37, label %if.end47

if.then37:                                        ; preds = %if.end34
  %cmp1.i = icmp sgt i32 %zExp, -64
  br i1 %cmp1.i, label %if.then2.i, label %if.else6.i

if.then2.i:                                       ; preds = %if.then37
  %sub38 = sub nsw i32 0, %zExp
  %sh_prom.i = zext i32 %sub38 to i64
  %shr.i = lshr i64 %zSig, %sh_prom.i
  %and.i = and i32 %zExp, 63
  %sh_prom3.i = zext i32 %and.i to i64
  %shl.i = shl i64 %zSig, %sh_prom3.i
  %cmp4.i = icmp ne i64 %shl.i, 0
  %conv5.i = zext i1 %cmp4.i to i64
  %or.i = or i64 %conv5.i, %shr.i
  br label %shift64RightJamming.v0.C.c.exit

if.else6.i:                                       ; preds = %if.then37
  %cmp7.i = icmp ne i64 %zSig, 0
  %conv9.i = zext i1 %cmp7.i to i64
  br label %shift64RightJamming.v0.C.c.exit

shift64RightJamming.v0.C.c.exit:                  ; preds = %if.then2.i, %if.else6.i
  %z.1.i = phi i64 [ %or.i, %if.then2.i ], [ %conv9.i, %if.else6.i ]
  %1 = trunc i64 %z.1.i to i32
  %conv40 = and i32 %1, 1023
  %tobool43 = icmp eq i32 %conv40, 0
  br i1 %tobool43, label %if.end50, label %if.end47.thread5

if.end47.thread5:                                 ; preds = %shift64RightJamming.v0.C.c.exit
  tail call void @float_raise.v0.C.c.c(i32 4)
  br label %if.then49

if.end47:                                         ; preds = %if.end34, %entry
  %tobool48 = icmp eq i32 %conv17, 0
  br i1 %tobool48, label %if.end50, label %if.then49

if.then49:                                        ; preds = %if.end47.thread5, %if.end47
  %roundBits.19 = phi i32 [ %conv40, %if.end47.thread5 ], [ %conv17, %if.end47 ]
  %zExp.addr.18 = phi i32 [ 0, %if.end47.thread5 ], [ %zExp, %if.end47 ]
  %zSig.addr.07 = phi i64 [ %z.1.i, %if.end47.thread5 ], [ %zSig, %if.end47 ]
  %2 = load i32, i32* @float_exception_flags, align 4
  %or = or i32 %2, 1
  store i32 %or, i32* @float_exception_flags, align 4
  br label %if.end50

if.end50:                                         ; preds = %shift64RightJamming.v0.C.c.exit, %if.end47, %if.then49
  %roundBits.14 = phi i32 [ 0, %if.end47 ], [ %roundBits.19, %if.then49 ], [ 0, %shift64RightJamming.v0.C.c.exit ]
  %zExp.addr.13 = phi i32 [ %zExp, %if.end47 ], [ %zExp.addr.18, %if.then49 ], [ 0, %shift64RightJamming.v0.C.c.exit ]
  %zSig.addr.02 = phi i64 [ %zSig, %if.end47 ], [ %zSig.addr.07, %if.then49 ], [ %z.1.i, %shift64RightJamming.v0.C.c.exit ]
  %add52 = add i64 %zSig.addr.02, 512
  %shr = lshr i64 %add52, 10
  %cmp53 = icmp eq i32 %roundBits.14, 512
  %conv54 = zext i1 %cmp53 to i32
  %neg = xor i32 %conv54, -1
  %conv56 = sext i32 %neg to i64
  %and57 = and i64 %shr, %conv56
  %cmp58 = icmp eq i64 %and57, 0
  %.zExp.addr.1 = select i1 %cmp58, i32 0, i32 %zExp.addr.13
  %call62.c.c = tail call i64 @packFloat64.v0.C.c.c(i32 %zSign, i32 %.zExp.addr.1, i64 %and57)
  br label %return

return:                                           ; preds = %if.end50, %if.then30
  %retval.0 = phi i64 [ %call.c.c, %if.then30 ], [ %call62.c.c, %if.end50 ]
  ret i64 %retval.0
}

; Function Attrs: noinline norecurse nounwind
define void @float_raise.v0.C.c.c(i32 %flags) local_unnamed_addr #3 {
entry:
  %0 = load i32, i32* @float_exception_flags, align 4
  %or = or i32 %0, %flags
  store i32 %or, i32* @float_exception_flags, align 4
  ret void
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

attributes #0 = { noinline nounwind ssp "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline norecurse nounwind readnone }
attributes #3 = { noinline norecurse nounwind }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
