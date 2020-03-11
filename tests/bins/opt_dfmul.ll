; ModuleID = './../tests/test_cases/dfmul.ll'
source_filename = "dfmul.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

@float_exception_flags = local_unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [71 x i8] c"a_input=%016llx b_input=%016llx expected=%016llx output=%016llx (%lf)\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@countLeadingZeros32.countLeadingZerosHigh = internal unnamed_addr constant [256 x i32] [i32 8, i32 7, i32 6, i32 6, i32 5, i32 5, i32 5, i32 5, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16

; Function Attrs: noinline nounwind ssp uwtable
define i32 @main() local_unnamed_addr #0 {
entry:
  br label %for.body

for.body:                                         ; preds = %__non_const_wrapper__.21.exit, %entry
  %i.0726 = phi i32 [ 0, %entry ], [ %inc, %__non_const_wrapper__.21.exit ]
  %main_result.0725 = phi i32 [ 0, %entry ], [ %add652693706, %__non_const_wrapper__.21.exit ]
  switch i32 %i.0726, label %csroa.if.end94.i [
    i32 0, label %__non_const_wrapper__.17.exit
    i32 1, label %csroa.if.end4.i117
    i32 2, label %__non_const_wrapper__.exit
    i32 3, label %__non_const_wrapper__.exit
    i32 4, label %csroa.if.end19.i
    i32 5, label %csroa.if.end24.i
    i32 6, label %csroa.if.end29.i
    i32 7, label %csroa.if.end34.i
    i32 8, label %csroa.if.end39.i
    i32 9, label %csroa.if.end44.i
    i32 10, label %csroa.if.end44.i
    i32 11, label %csroa.if.end54.i
    i32 12, label %csroa.if.end59.i
    i32 13, label %csroa.if.end64.i
    i32 14, label %csroa.if.end69.i
    i32 15, label %csroa.if.end74.i
    i32 16, label %csroa.if.end79.i
    i32 17, label %csroa.if.end84.i
    i32 18, label %csroa.if.end89.i
  ]

csroa.if.end94.i:                                 ; preds = %for.body
  br label %csroa.if.end89.i

csroa.if.end89.i:                                 ; preds = %for.body, %csroa.if.end94.i
  %.phi90.i = phi i64 [ 0, %csroa.if.end94.i ], [ 4598175219545276416, %for.body ]
  br label %csroa.if.end84.i

csroa.if.end84.i:                                 ; preds = %for.body, %csroa.if.end89.i
  %.phi85.i = phi i64 [ %.phi90.i, %csroa.if.end89.i ], [ -4611686018427387904, %for.body ]
  br label %csroa.if.end79.i

csroa.if.end79.i:                                 ; preds = %for.body, %csroa.if.end84.i
  %.phi80.i = phi i64 [ %.phi85.i, %csroa.if.end84.i ], [ -4625196817309499392, %for.body ]
  br label %csroa.if.end74.i

csroa.if.end74.i:                                 ; preds = %for.body, %csroa.if.end79.i
  %.phi75.i = phi i64 [ %.phi80.i, %csroa.if.end79.i ], [ 4611686018427387904, %for.body ]
  br label %csroa.if.end69.i

csroa.if.end69.i:                                 ; preds = %for.body, %csroa.if.end74.i
  %.phi70.i = phi i64 [ %.phi75.i, %csroa.if.end74.i ], [ -4625196817309499392, %for.body ]
  br label %csroa.if.end64.i

csroa.if.end64.i:                                 ; preds = %for.body, %csroa.if.end69.i
  %.phi65.i = phi i64 [ %.phi70.i, %csroa.if.end69.i ], [ -4611686018427387904, %for.body ]
  br label %csroa.if.end59.i

csroa.if.end59.i:                                 ; preds = %for.body, %csroa.if.end64.i
  %.phi60.i = phi i64 [ %.phi65.i, %csroa.if.end64.i ], [ 4598175219545276416, %for.body ]
  br label %csroa.if.end54.i

csroa.if.end54.i:                                 ; preds = %for.body, %csroa.if.end59.i
  %.phi55.i = phi i64 [ %.phi60.i, %csroa.if.end59.i ], [ 4611686018427387904, %for.body ]
  br label %csroa.if.end44.i

csroa.if.end44.i:                                 ; preds = %csroa.if.end54.i, %for.body, %for.body
  %.phi45.i = phi i64 [ 4607182418800017408, %for.body ], [ %.phi55.i, %csroa.if.end54.i ], [ 4607182418800017408, %for.body ]
  br label %csroa.if.end39.i

csroa.if.end39.i:                                 ; preds = %for.body, %csroa.if.end44.i
  %.phi40.i = phi i64 [ %.phi45.i, %csroa.if.end44.i ], [ -9223372036854775808, %for.body ]
  br label %csroa.if.end34.i

csroa.if.end34.i:                                 ; preds = %for.body, %csroa.if.end39.i
  %.phi35.i = phi i64 [ %.phi40.i, %csroa.if.end39.i ], [ 0, %for.body ]
  br label %csroa.if.end29.i

csroa.if.end29.i:                                 ; preds = %for.body, %csroa.if.end34.i
  %.phi30.i = phi i64 [ %.phi35.i, %csroa.if.end34.i ], [ 4607182418800017408, %for.body ]
  br label %csroa.if.end24.i

csroa.if.end24.i:                                 ; preds = %for.body, %csroa.if.end29.i
  %.phi25.i = phi i64 [ %.phi30.i, %csroa.if.end29.i ], [ 0, %for.body ]
  br label %csroa.if.end19.i

csroa.if.end19.i:                                 ; preds = %for.body, %csroa.if.end24.i
  %.phi20.i = phi i64 [ %.phi25.i, %csroa.if.end24.i ], [ 4607182418800017408, %for.body ]
  br label %__non_const_wrapper__.exit

__non_const_wrapper__.exit:                       ; preds = %for.body, %for.body, %csroa.if.end19.i
  %.phi10.i = phi i64 [ 9218868437227405312, %for.body ], [ %.phi20.i, %csroa.if.end19.i ], [ 9218868437227405312, %for.body ]
  switch i32 %i.0726, label %csroa.if.end94.i81 [
    i32 17, label %csroa.if.end84.i85
    i32 18, label %csroa.if.end89.i83
    i32 2, label %csroa.if.end4.i117
    i32 3, label %csroa.if.end14.i113
    i32 4, label %csroa.if.end19.i111
    i32 5, label %csroa.if.end24.i109
    i32 6, label %csroa.if.end24.i109
    i32 7, label %csroa.if.end34.i105
    i32 8, label %csroa.if.end34.i105
    i32 9, label %csroa.if.end44.i101
    i32 10, label %csroa.if.end49.i99
    i32 11, label %csroa.if.end54.i97
    i32 12, label %csroa.if.end59.i95
    i32 13, label %csroa.if.end64.i93
    i32 14, label %csroa.if.end69.i91
    i32 15, label %csroa.if.end74.i89
    i32 16, label %csroa.if.end79.i87
  ]

csroa.if.end94.i81:                               ; preds = %__non_const_wrapper__.exit
  br label %csroa.if.end89.i83

csroa.if.end89.i83:                               ; preds = %__non_const_wrapper__.exit, %csroa.if.end94.i81
  %.phi90.i82 = phi i64 [ 0, %csroa.if.end94.i81 ], [ -4611686018427387904, %__non_const_wrapper__.exit ]
  br label %csroa.if.end84.i85

csroa.if.end84.i85:                               ; preds = %__non_const_wrapper__.exit, %csroa.if.end89.i83
  %.phi85.i84 = phi i64 [ %.phi90.i82, %csroa.if.end89.i83 ], [ 4598175219545276416, %__non_const_wrapper__.exit ]
  br label %csroa.if.end79.i87

csroa.if.end79.i87:                               ; preds = %__non_const_wrapper__.exit, %csroa.if.end84.i85
  %.phi80.i86 = phi i64 [ %.phi85.i84, %csroa.if.end84.i85 ], [ 4611686018427387904, %__non_const_wrapper__.exit ]
  br label %csroa.if.end74.i89

csroa.if.end74.i89:                               ; preds = %__non_const_wrapper__.exit, %csroa.if.end79.i87
  %.phi75.i88 = phi i64 [ %.phi80.i86, %csroa.if.end79.i87 ], [ -4625196817309499392, %__non_const_wrapper__.exit ]
  br label %csroa.if.end69.i91

csroa.if.end69.i91:                               ; preds = %__non_const_wrapper__.exit, %csroa.if.end74.i89
  %.phi70.i90 = phi i64 [ %.phi75.i88, %csroa.if.end74.i89 ], [ -4611686018427387904, %__non_const_wrapper__.exit ]
  br label %csroa.if.end64.i93

csroa.if.end64.i93:                               ; preds = %__non_const_wrapper__.exit, %csroa.if.end69.i91
  %.phi65.i92 = phi i64 [ %.phi70.i90, %csroa.if.end69.i91 ], [ -4625196817309499392, %__non_const_wrapper__.exit ]
  br label %csroa.if.end59.i95

csroa.if.end59.i95:                               ; preds = %__non_const_wrapper__.exit, %csroa.if.end64.i93
  %.phi60.i94 = phi i64 [ %.phi65.i92, %csroa.if.end64.i93 ], [ 4611686018427387904, %__non_const_wrapper__.exit ]
  br label %csroa.if.end54.i97

csroa.if.end54.i97:                               ; preds = %__non_const_wrapper__.exit, %csroa.if.end59.i95
  %.phi55.i96 = phi i64 [ %.phi60.i94, %csroa.if.end59.i95 ], [ 4598175219545276416, %__non_const_wrapper__.exit ]
  br label %csroa.if.end49.i99

csroa.if.end49.i99:                               ; preds = %__non_const_wrapper__.exit, %csroa.if.end54.i97
  %.phi50.i98 = phi i64 [ %.phi55.i96, %csroa.if.end54.i97 ], [ -9223372036854775808, %__non_const_wrapper__.exit ]
  br label %csroa.if.end44.i101

csroa.if.end44.i101:                              ; preds = %__non_const_wrapper__.exit, %csroa.if.end49.i99
  %.phi45.i100 = phi i64 [ %.phi50.i98, %csroa.if.end49.i99 ], [ 0, %__non_const_wrapper__.exit ]
  br label %csroa.if.end34.i105

csroa.if.end34.i105:                              ; preds = %csroa.if.end44.i101, %__non_const_wrapper__.exit, %__non_const_wrapper__.exit
  %.phi35.i104 = phi i64 [ 4607182418800017408, %__non_const_wrapper__.exit ], [ %.phi45.i100, %csroa.if.end44.i101 ], [ 4607182418800017408, %__non_const_wrapper__.exit ]
  br label %csroa.if.end24.i109

csroa.if.end24.i109:                              ; preds = %csroa.if.end34.i105, %__non_const_wrapper__.exit, %__non_const_wrapper__.exit
  %.phi25.i108 = phi i64 [ 9218868437227405312, %__non_const_wrapper__.exit ], [ %.phi35.i104, %csroa.if.end34.i105 ], [ 9218868437227405312, %__non_const_wrapper__.exit ]
  br label %csroa.if.end19.i111

csroa.if.end19.i111:                              ; preds = %__non_const_wrapper__.exit, %csroa.if.end24.i109
  %.phi20.i110 = phi i64 [ %.phi25.i108, %csroa.if.end24.i109 ], [ -281474976710656, %__non_const_wrapper__.exit ]
  br label %csroa.if.end14.i113

csroa.if.end14.i113:                              ; preds = %__non_const_wrapper__.exit, %csroa.if.end19.i111
  %.phi15.i112 = phi i64 [ %.phi20.i110, %csroa.if.end19.i111 ], [ 4607182418800017408, %__non_const_wrapper__.exit ]
  br label %csroa.if.end4.i117

csroa.if.end4.i117:                               ; preds = %csroa.if.end14.i113, %__non_const_wrapper__.exit, %for.body
  %.phi5.i648 = phi i64 [ 9223090561878065152, %for.body ], [ %.phi10.i, %__non_const_wrapper__.exit ], [ %.phi10.i, %csroa.if.end14.i113 ]
  %.phi5.i116 = phi i64 [ -4503599627370496, %for.body ], [ 0, %__non_const_wrapper__.exit ], [ %.phi15.i112, %csroa.if.end14.i113 ]
  br label %__non_const_wrapper__.17.exit

__non_const_wrapper__.17.exit:                    ; preds = %for.body, %csroa.if.end4.i117
  %.phi.i646 = phi i64 [ %.phi5.i648, %csroa.if.end4.i117 ], [ 9218868437227405312, %for.body ]
  %.phi.i118 = phi i64 [ %.phi5.i116, %csroa.if.end4.i117 ], [ -1, %for.body ]
  %and.i = and i64 %.phi.i646, 4503599627370495
  %shr.i = lshr i64 %.phi.i646, 52
  %0 = trunc i64 %shr.i to i32
  %conv.i120 = and i32 %0, 2047
  %and.i123 = and i64 %.phi.i118, 4503599627370495
  %shr.i124 = lshr i64 %.phi.i118, 52
  %1 = trunc i64 %shr.i124 to i32
  %conv.i126 = and i32 %1, 2047
  %shr.i121641 = xor i64 %.phi.i118, %.phi.i646
  %xor.i640 = lshr i64 %shr.i121641, 63
  %xor.i = trunc i64 %xor.i640 to i32
  %cmp.i = icmp eq i32 %conv.i120, 2047
  br i1 %cmp.i, label %if.then.i, label %if.end15.i

if.then.i:                                        ; preds = %__non_const_wrapper__.17.exit
  %tobool.i = icmp eq i64 %and.i, 0
  br i1 %tobool.i, label %lor.lhs.false.i, label %if.then8.i

lor.lhs.false.i:                                  ; preds = %if.then.i
  %cmp6.i = icmp eq i32 %conv.i126, 2047
  %tobool7.i = icmp ne i64 %and.i123, 0
  %or.cond = and i1 %tobool7.i, %cmp6.i
  br i1 %or.cond, label %if.then8.i, label %if.end.i

if.then8.i:                                       ; preds = %if.then.i, %lor.lhs.false.i
  %and.i138 = and i64 %.phi.i646, 9221120237041090560
  %cmp.i139 = icmp eq i64 %and.i138, 9218868437227405312
  %and1.i = and i64 %.phi.i646, 2251799813685247
  %tobool.i140 = icmp ne i64 %and1.i, 0
  %2 = and i1 %cmp.i139, %tobool.i140
  %shl.i141 = shl i64 %.phi.i118, 1
  %cmp.i142 = icmp ugt i64 %shl.i141, -9007199254740992
  %and.i145 = and i64 %.phi.i118, 9221120237041090560
  %cmp.i146 = icmp eq i64 %and.i145, 9218868437227405312
  %and1.i147 = and i64 %.phi.i118, 2251799813685247
  %tobool.i148 = icmp ne i64 %and1.i147, 0
  %3 = and i1 %cmp.i146, %tobool.i148
  %or.i129 = or i64 %.phi.i646, 2251799813685248
  %or4.i = or i64 %.phi.i118, 2251799813685248
  %or5.i645 = or i1 %2, %3
  br i1 %or5.i645, label %if.then.i131, label %if.end.i132

if.then.i131:                                     ; preds = %if.then8.i
  tail call void @float_raise.v0.C.c.c(i32 16) #4
  br label %if.end.i132

if.end.i132:                                      ; preds = %if.then.i131, %if.then8.i
  br i1 %3, label %float64_mul.v0.C.c.exit, label %cond.false.i

cond.false.i:                                     ; preds = %if.end.i132
  %or4.i.or.i129 = select i1 %cmp.i142, i64 %or4.i, i64 %or.i129
  %cond14.i = select i1 %2, i64 %or.i129, i64 %or4.i.or.i129
  br label %float64_mul.v0.C.c.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %conv.i644 = zext i32 %conv.i126 to i64
  %or.i = or i64 %conv.i644, %and.i123
  %cmp10.i = icmp eq i64 %or.i, 0
  br i1 %cmp10.i, label %if.then12.i, label %if.end13.i

if.then12.i:                                      ; preds = %if.end.i
  tail call void @float_raise.v0.C.c.c(i32 16) #4
  br label %float64_mul.v0.C.c.exit

if.end13.i:                                       ; preds = %if.end.i
  %call14.c.i.c = tail call i64 @packFloat64.v0.C.c.c(i32 %xor.i, i32 2047, i64 0) #4
  br label %float64_mul.v0.C.c.exit

if.end15.i:                                       ; preds = %__non_const_wrapper__.17.exit
  %cmp16.i = icmp eq i32 %conv.i126, 2047
  br i1 %cmp16.i, label %if.then18.i, label %if.end30.i

if.then18.i:                                      ; preds = %if.end15.i
  %tobool19.i = icmp eq i64 %and.i123, 0
  br i1 %tobool19.i, label %if.end22.i, label %if.then20.i

if.then20.i:                                      ; preds = %if.then18.i
  %and.i177 = and i64 %.phi.i646, 9221120237041090560
  %cmp.i178 = icmp eq i64 %and.i177, 9218868437227405312
  %and1.i179 = and i64 %.phi.i646, 2251799813685247
  %tobool.i180 = icmp ne i64 %and1.i179, 0
  %4 = and i1 %cmp.i178, %tobool.i180
  %shl.i184 = shl i64 %.phi.i118, 1
  %cmp.i185 = icmp ugt i64 %shl.i184, -9007199254740992
  %and.i188 = and i64 %.phi.i118, 9221120237041090560
  %cmp.i189 = icmp eq i64 %and.i188, 9218868437227405312
  %and1.i190 = and i64 %.phi.i118, 2251799813685247
  %tobool.i191 = icmp ne i64 %and1.i190, 0
  %5 = and i1 %cmp.i189, %tobool.i191
  %or.i152 = or i64 %.phi.i646, 2251799813685248
  %or4.i153 = or i64 %.phi.i118, 2251799813685248
  %or5.i154643 = or i1 %4, %5
  br i1 %or5.i154643, label %if.then.i156, label %if.end.i158

if.then.i156:                                     ; preds = %if.then20.i
  tail call void @float_raise.v0.C.c.c(i32 16) #4
  br label %if.end.i158

if.end.i158:                                      ; preds = %if.then.i156, %if.then20.i
  br i1 %5, label %float64_mul.v0.C.c.exit, label %cond.false.i161

cond.false.i161:                                  ; preds = %if.end.i158
  %or4.i153.or.i152 = select i1 %cmp.i185, i64 %or4.i153, i64 %or.i152
  %cond14.i169 = select i1 %4, i64 %or.i152, i64 %or4.i153.or.i152
  br label %float64_mul.v0.C.c.exit

if.end22.i:                                       ; preds = %if.then18.i
  %conv23.i642 = zext i32 %conv.i120 to i64
  %or24.i = or i64 %conv23.i642, %and.i
  %cmp25.i = icmp eq i64 %or24.i, 0
  br i1 %cmp25.i, label %if.then27.i, label %if.end28.i

if.then27.i:                                      ; preds = %if.end22.i
  tail call void @float_raise.v0.C.c.c(i32 16) #4
  br label %float64_mul.v0.C.c.exit

if.end28.i:                                       ; preds = %if.end22.i
  %call29.c.i.c = tail call i64 @packFloat64.v0.C.c.c(i32 %xor.i, i32 2047, i64 0) #4
  br label %float64_mul.v0.C.c.exit

if.end30.i:                                       ; preds = %if.end15.i
  %cmp31.i = icmp eq i32 %conv.i120, 0
  br i1 %cmp31.i, label %if.then33.i, label %if.end39.i

if.then33.i:                                      ; preds = %if.end30.i
  %cmp34.i = icmp eq i64 %and.i, 0
  br i1 %cmp34.i, label %if.then36.i, label %if.end38.i

if.then36.i:                                      ; preds = %if.then33.i
  %call37.c.i.c = tail call i64 @packFloat64.v0.C.c.c(i32 %xor.i, i32 0, i64 0) #4
  br label %float64_mul.v0.C.c.exit

if.end38.i:                                       ; preds = %if.then33.i
  %cmp.i197 = icmp ult i64 %and.i, 4294967296
  %shiftCount.0.i = select i1 %cmp.i197, i32 32, i32 0
  %shr.i199 = lshr i64 %and.i, 32
  %a.addr.0.i = select i1 %cmp.i197, i64 %.phi.i646, i64 %shr.i199
  %conv.i200 = trunc i64 %a.addr.0.i to i32
  %cmp.i203 = icmp ult i32 %conv.i200, 65536
  %shl.i204 = shl i32 %conv.i200, 16
  %. = select i1 %cmp.i203, i32 16, i32 0
  %shl.i204.conv.i200 = select i1 %cmp.i203, i32 %shl.i204, i32 %conv.i200
  %cmp1.i = icmp ult i32 %shl.i204.conv.i200, 16777216
  %shl4.i = shl i32 %shl.i204.conv.i200, 8
  %a.addr.1.i = select i1 %cmp1.i, i32 %shl4.i, i32 %shl.i204.conv.i200
  %add3.i = or i32 %., 8
  %shiftCount.1.i = select i1 %cmp1.i, i32 %add3.i, i32 %.
  %shr.i209 = lshr i32 %a.addr.1.i, 24
  %idxprom.i = zext i32 %shr.i209 to i64
  %arrayidx.i = getelementptr inbounds [256 x i32], [256 x i32]* @countLeadingZeros32.countLeadingZerosHigh, i64 0, i64 %idxprom.i
  %6 = load i32, i32* %arrayidx.i, align 4
  %add6.i = or i32 %shiftCount.1.i, %shiftCount.0.i
  %add1.i = add i32 %add6.i, %6
  %sub.i195 = add nsw i32 %add1.i, -11
  %sh_prom.i = zext i32 %sub.i195 to i64
  %shl.i196 = shl i64 %and.i, %sh_prom.i
  %sub1.i = sub i32 12, %add1.i
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.end38.i, %if.end30.i
  %aSig.i.0 = phi i64 [ %shl.i196, %if.end38.i ], [ %and.i, %if.end30.i ]
  %aExp.i.0 = phi i32 [ %sub1.i, %if.end38.i ], [ %conv.i120, %if.end30.i ]
  %cmp40.i = icmp eq i32 %conv.i126, 0
  br i1 %cmp40.i, label %if.then42.i, label %if.end48.i

if.then42.i:                                      ; preds = %if.end39.i
  %cmp43.i = icmp eq i64 %and.i123, 0
  br i1 %cmp43.i, label %if.then45.i, label %if.end47.i

if.then45.i:                                      ; preds = %if.then42.i
  %call46.c.i.c = tail call i64 @packFloat64.v0.C.c.c(i32 %xor.i, i32 0, i64 0) #4
  br label %float64_mul.v0.C.c.exit

if.end47.i:                                       ; preds = %if.then42.i
  %cmp.i214 = icmp ult i64 %and.i123, 4294967296
  %shiftCount.0.i218 = select i1 %cmp.i214, i32 32, i32 0
  %shr.i216 = lshr i64 %and.i123, 32
  %a.addr.0.i219 = select i1 %cmp.i214, i64 %.phi.i118, i64 %shr.i216
  %conv.i220 = trunc i64 %a.addr.0.i219 to i32
  %cmp.i225 = icmp ult i32 %conv.i220, 65536
  %shl.i226 = shl i32 %conv.i220, 16
  %.639 = select i1 %cmp.i225, i32 16, i32 0
  %shl.i226.conv.i220 = select i1 %cmp.i225, i32 %shl.i226, i32 %conv.i220
  %cmp1.i230 = icmp ult i32 %shl.i226.conv.i220, 16777216
  %shl4.i233 = shl i32 %shl.i226.conv.i220, 8
  %a.addr.1.i236 = select i1 %cmp1.i230, i32 %shl4.i233, i32 %shl.i226.conv.i220
  %add3.i232 = or i32 %.639, 8
  %shiftCount.1.i235 = select i1 %cmp1.i230, i32 %add3.i232, i32 %.639
  %shr.i237 = lshr i32 %a.addr.1.i236, 24
  %idxprom.i238 = zext i32 %shr.i237 to i64
  %arrayidx.i239 = getelementptr inbounds [256 x i32], [256 x i32]* @countLeadingZeros32.countLeadingZerosHigh, i64 0, i64 %idxprom.i238
  %7 = load i32, i32* %arrayidx.i239, align 4
  %add6.i240 = or i32 %shiftCount.1.i235, %shiftCount.0.i218
  %add1.i222 = add i32 %add6.i240, %7
  %sub.i210 = add nsw i32 %add1.i222, -11
  %sh_prom.i211 = zext i32 %sub.i210 to i64
  %shl.i212 = shl i64 %and.i123, %sh_prom.i211
  %sub1.i213 = sub i32 12, %add1.i222
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.end47.i, %if.end39.i
  %bSig.i.0 = phi i64 [ %shl.i212, %if.end47.i ], [ %and.i123, %if.end39.i ]
  %bExp.i.0 = phi i32 [ %sub1.i213, %if.end47.i ], [ %conv.i126, %if.end39.i ]
  %add.i = add nsw i32 %bExp.i.0, %aExp.i.0
  %or49.i = shl i64 %aSig.i.0, 10
  %or50.i = shl i64 %bSig.i.0, 11
  %8 = lshr i64 %aSig.i.0, 22
  %9 = lshr i64 %bSig.i.0, 21
  %conv5.i = and i64 %or49.i, 4294966272
  %conv6.i = and i64 %or50.i, 4294965248
  %mul.i = mul nuw i64 %conv6.i, %conv5.i
  %conv4.i = and i64 %9, 2147483647
  %conv8.i = or i64 %conv4.i, 2147483648
  %mul9.i = mul nuw i64 %conv8.i, %conv5.i
  %conv1.i = and i64 %8, 3221225471
  %conv10.i = or i64 %conv1.i, 1073741824
  %mul12.i = mul nuw i64 %conv6.i, %conv10.i
  %mul15.i = mul nuw i64 %conv8.i, %conv10.i
  %add.i244 = add i64 %mul9.i, %mul12.i
  %cmp.i245 = icmp ult i64 %add.i244, %mul12.i
  %conv17.i = zext i1 %cmp.i245 to i64
  %shl.i246 = shl nuw nsw i64 %conv17.i, 32
  %shr18.i = lshr i64 %add.i244, 32
  %add19.i = or i64 %shl.i246, %shr18.i
  %add20.i = add i64 %add19.i, %mul15.i
  %shl21.i = shl i64 %add.i244, 32
  %add22.i = add i64 %shl21.i, %mul.i
  %cmp23.i = icmp ult i64 %add22.i, %shl21.i
  %conv25.i = zext i1 %cmp23.i to i64
  %add26.i = add i64 %add20.i, %conv25.i
  %cmp52.i = icmp ne i64 %add22.i, 0
  %conv54.i = zext i1 %cmp52.i to i64
  %or55.i = or i64 %add26.i, %conv54.i
  %shl56.i.mask = and i64 %add26.i, 4611686018427387904
  %cmp57.i = icmp eq i64 %shl56.i.mask, 0
  %shl56.i.mask.lobit = lshr exact i64 %shl56.i.mask, 62
  %10 = xor i64 %shl56.i.mask.lobit, 1
  %zSig0.i.0 = shl i64 %or55.i, %10
  %zExp.0.i.v = select i1 %cmp57.i, i32 -1024, i32 -1023
  %zExp.0.i = add i32 %add.i, %zExp.0.i.v
  %call62.c.i.c = tail call fastcc i64 @roundAndPackFloat64.v0.C.c.c(i32 %xor.i, i32 %zExp.0.i, i64 %zSig0.i.0) #4
  br label %float64_mul.v0.C.c.exit

float64_mul.v0.C.c.exit:                          ; preds = %if.end.i158, %cond.false.i161, %if.end.i132, %cond.false.i, %if.then12.i, %if.end13.i, %if.then27.i, %if.end28.i, %if.then36.i, %if.then45.i, %if.end48.i
  %retval.0.i = phi i64 [ 9223372036854775807, %if.then12.i ], [ %call14.c.i.c, %if.end13.i ], [ 9223372036854775807, %if.then27.i ], [ %call29.c.i.c, %if.end28.i ], [ %call37.c.i.c, %if.then36.i ], [ %call46.c.i.c, %if.then45.i ], [ %call62.c.i.c, %if.end48.i ], [ %or4.i, %if.end.i132 ], [ %cond14.i, %cond.false.i ], [ %or4.i153, %if.end.i158 ], [ %cond14.i169, %cond.false.i161 ]
  switch i32 %i.0726, label %csroa.if.end94.i307 [
    i32 0, label %__non_const_wrapper__.18.exit.thread
    i32 1, label %__non_const_wrapper__.18.exit.thread653
    i32 2, label %__non_const_wrapper__.19.exit.thread699
    i32 3, label %__non_const_wrapper__.19.exit.thread702
    i32 4, label %__non_const_wrapper__.19.exit.thread736
    i32 5, label %__non_const_wrapper__.20.exit.thread
    i32 6, label %__non_const_wrapper__.20.exit.thread740
    i32 7, label %__non_const_wrapper__.18.exit.thread682
    i32 8, label %__non_const_wrapper__.18.exit
    i32 9, label %__non_const_wrapper__.19.exit.thread737
    i32 10, label %__non_const_wrapper__.18.exit
    i32 11, label %csroa.if.end54.i323
    i32 12, label %csroa.if.end54.i323
    i32 13, label %csroa.if.end54.i323
    i32 14, label %csroa.if.end54.i323
    i32 15, label %csroa.if.end74.i315
    i32 16, label %csroa.if.end74.i315
    i32 17, label %csroa.if.end74.i315
    i32 18, label %csroa.if.end74.i315
  ]

__non_const_wrapper__.18.exit.thread682:          ; preds = %float64_mul.v0.C.c.exit
  %cmp5683 = icmp ne i64 %retval.0.i, 0
  %conv684 = zext i1 %cmp5683 to i32
  %add685 = add nsw i32 %conv684, %main_result.0725
  br label %csroa.if.end34.i527

__non_const_wrapper__.20.exit.thread740:          ; preds = %float64_mul.v0.C.c.exit
  %cmp5678 = icmp ne i64 %retval.0.i, 9218868437227405312
  %conv679 = zext i1 %cmp5678 to i32
  %add680 = add nsw i32 %conv679, %main_result.0725
  br label %csroa.if.end29.i627

__non_const_wrapper__.20.exit.thread:             ; preds = %float64_mul.v0.C.c.exit
  %cmp5673 = icmp ne i64 %retval.0.i, 9223372036854775807
  %conv674 = zext i1 %cmp5673 to i32
  %add675 = add nsw i32 %conv674, %main_result.0725
  br label %__non_const_wrapper__.21.exit

__non_const_wrapper__.19.exit.thread736:          ; preds = %float64_mul.v0.C.c.exit
  %cmp5668 = icmp ne i64 %retval.0.i, -281474976710656
  %conv669 = zext i1 %cmp5668 to i32
  %add670 = add nsw i32 %conv669, %main_result.0725
  br label %__non_const_wrapper__.21.exit

__non_const_wrapper__.19.exit.thread702:          ; preds = %float64_mul.v0.C.c.exit
  %cmp5664 = icmp ne i64 %retval.0.i, 9218868437227405312
  %conv665 = zext i1 %cmp5664 to i32
  %add666 = add nsw i32 %conv665, %main_result.0725
  br label %__non_const_wrapper__.21.exit

__non_const_wrapper__.19.exit.thread699:          ; preds = %float64_mul.v0.C.c.exit
  %cmp5659 = icmp ne i64 %retval.0.i, 9223372036854775807
  %conv660 = zext i1 %cmp5659 to i32
  %add661 = add nsw i32 %conv660, %main_result.0725
  br label %__non_const_wrapper__.21.exit

__non_const_wrapper__.18.exit.thread653:          ; preds = %float64_mul.v0.C.c.exit
  %cmp5654 = icmp ne i64 %retval.0.i, 9223090561878065152
  %conv655 = zext i1 %cmp5654 to i32
  %add656 = add nsw i32 %conv655, %main_result.0725
  br label %__non_const_wrapper__.21.exit

__non_const_wrapper__.18.exit.thread:             ; preds = %float64_mul.v0.C.c.exit
  %cmp5649 = icmp ne i64 %retval.0.i, -1
  %conv650 = zext i1 %cmp5649 to i32
  %add651 = add nsw i32 %conv650, %main_result.0725
  br label %__non_const_wrapper__.21.exit

csroa.if.end94.i307:                              ; preds = %float64_mul.v0.C.c.exit
  br label %csroa.if.end74.i315

csroa.if.end74.i315:                              ; preds = %float64_mul.v0.C.c.exit, %float64_mul.v0.C.c.exit, %float64_mul.v0.C.c.exit, %float64_mul.v0.C.c.exit, %csroa.if.end94.i307
  %.phi75.i314 = phi i64 [ 0, %csroa.if.end94.i307 ], [ -4620693217682128896, %float64_mul.v0.C.c.exit ], [ -4620693217682128896, %float64_mul.v0.C.c.exit ], [ -4620693217682128896, %float64_mul.v0.C.c.exit ], [ -4620693217682128896, %float64_mul.v0.C.c.exit ]
  br label %csroa.if.end54.i323

csroa.if.end54.i323:                              ; preds = %float64_mul.v0.C.c.exit, %float64_mul.v0.C.c.exit, %float64_mul.v0.C.c.exit, %float64_mul.v0.C.c.exit, %csroa.if.end74.i315
  %.phi55.i322 = phi i64 [ %.phi75.i314, %csroa.if.end74.i315 ], [ 4602678819172646912, %float64_mul.v0.C.c.exit ], [ 4602678819172646912, %float64_mul.v0.C.c.exit ], [ 4602678819172646912, %float64_mul.v0.C.c.exit ], [ 4602678819172646912, %float64_mul.v0.C.c.exit ]
  br label %__non_const_wrapper__.18.exit

__non_const_wrapper__.19.exit.thread737:          ; preds = %float64_mul.v0.C.c.exit
  %cmp5688 = icmp ne i64 %retval.0.i, 0
  %conv689 = zext i1 %cmp5688 to i32
  %add690 = add nsw i32 %conv689, %main_result.0725
  br label %csroa.if.end44.i523

__non_const_wrapper__.18.exit:                    ; preds = %float64_mul.v0.C.c.exit, %float64_mul.v0.C.c.exit, %csroa.if.end54.i323
  %.phi40.i328 = phi i64 [ -9223372036854775808, %float64_mul.v0.C.c.exit ], [ %.phi55.i322, %csroa.if.end54.i323 ], [ -9223372036854775808, %float64_mul.v0.C.c.exit ]
  %cmp5 = icmp ne i64 %retval.0.i, %.phi40.i328
  %conv = zext i1 %cmp5 to i32
  %add = add nsw i32 %conv, %main_result.0725
  switch i32 %i.0726, label %csroa.if.end94.i405 [
    i32 11, label %csroa.if.end54.i421
    i32 12, label %csroa.if.end59.i419
    i32 13, label %csroa.if.end64.i417
    i32 14, label %csroa.if.end69.i415
    i32 15, label %csroa.if.end74.i413
    i32 16, label %csroa.if.end79.i411
    i32 17, label %csroa.if.end84.i409
    i32 18, label %csroa.if.end89.i407
    i32 8, label %csroa.if.end34.i527
    i32 9, label %__non_const_wrapper__.19.exit
    i32 10, label %__non_const_wrapper__.19.exit
  ]

csroa.if.end94.i405:                              ; preds = %__non_const_wrapper__.18.exit
  br label %csroa.if.end89.i407

csroa.if.end89.i407:                              ; preds = %__non_const_wrapper__.18.exit, %csroa.if.end94.i405
  %.phi90.i406 = phi i64 [ 0, %csroa.if.end94.i405 ], [ 4598175219545276416, %__non_const_wrapper__.18.exit ]
  br label %csroa.if.end84.i409

csroa.if.end84.i409:                              ; preds = %__non_const_wrapper__.18.exit, %csroa.if.end89.i407
  %.phi85.i408 = phi i64 [ %.phi90.i406, %csroa.if.end89.i407 ], [ -4611686018427387904, %__non_const_wrapper__.18.exit ]
  br label %csroa.if.end79.i411

csroa.if.end79.i411:                              ; preds = %__non_const_wrapper__.18.exit, %csroa.if.end84.i409
  %.phi80.i410 = phi i64 [ %.phi85.i408, %csroa.if.end84.i409 ], [ -4625196817309499392, %__non_const_wrapper__.18.exit ]
  br label %csroa.if.end74.i413

csroa.if.end74.i413:                              ; preds = %__non_const_wrapper__.18.exit, %csroa.if.end79.i411
  %.phi75.i412 = phi i64 [ %.phi80.i410, %csroa.if.end79.i411 ], [ 4611686018427387904, %__non_const_wrapper__.18.exit ]
  br label %csroa.if.end69.i415

csroa.if.end69.i415:                              ; preds = %__non_const_wrapper__.18.exit, %csroa.if.end74.i413
  %.phi70.i414 = phi i64 [ %.phi75.i412, %csroa.if.end74.i413 ], [ -4625196817309499392, %__non_const_wrapper__.18.exit ]
  br label %csroa.if.end64.i417

csroa.if.end64.i417:                              ; preds = %__non_const_wrapper__.18.exit, %csroa.if.end69.i415
  %.phi65.i416 = phi i64 [ %.phi70.i414, %csroa.if.end69.i415 ], [ -4611686018427387904, %__non_const_wrapper__.18.exit ]
  br label %csroa.if.end59.i419

csroa.if.end59.i419:                              ; preds = %__non_const_wrapper__.18.exit, %csroa.if.end64.i417
  %.phi60.i418 = phi i64 [ %.phi65.i416, %csroa.if.end64.i417 ], [ 4598175219545276416, %__non_const_wrapper__.18.exit ]
  br label %csroa.if.end54.i421

csroa.if.end54.i421:                              ; preds = %__non_const_wrapper__.18.exit, %csroa.if.end59.i419
  %.phi55.i420 = phi i64 [ %.phi60.i418, %csroa.if.end59.i419 ], [ 4611686018427387904, %__non_const_wrapper__.18.exit ]
  br label %__non_const_wrapper__.19.exit

__non_const_wrapper__.19.exit:                    ; preds = %__non_const_wrapper__.18.exit, %__non_const_wrapper__.18.exit, %csroa.if.end54.i421
  %.phi45.i424 = phi i64 [ 4607182418800017408, %__non_const_wrapper__.18.exit ], [ %.phi55.i420, %csroa.if.end54.i421 ], [ 4607182418800017408, %__non_const_wrapper__.18.exit ]
  switch i32 %i.0726, label %csroa.if.end94.i503 [
    i32 15, label %csroa.if.end74.i511
    i32 16, label %csroa.if.end79.i509
    i32 17, label %csroa.if.end84.i507
    i32 18, label %csroa.if.end89.i505
    i32 4, label %__non_const_wrapper__.21.exit
    i32 5, label %__non_const_wrapper__.20.exit
    i32 6, label %__non_const_wrapper__.20.exit
    i32 7, label %csroa.if.end34.i527
    i32 8, label %csroa.if.end34.i527
    i32 9, label %csroa.if.end44.i523
    i32 10, label %csroa.if.end49.i521
    i32 11, label %csroa.if.end54.i519
    i32 12, label %csroa.if.end59.i517
    i32 13, label %csroa.if.end64.i515
    i32 14, label %csroa.if.end69.i513
  ]

csroa.if.end94.i503:                              ; preds = %__non_const_wrapper__.19.exit
  br label %csroa.if.end89.i505

csroa.if.end89.i505:                              ; preds = %__non_const_wrapper__.19.exit, %csroa.if.end94.i503
  %.phi90.i504 = phi i64 [ 0, %csroa.if.end94.i503 ], [ -4611686018427387904, %__non_const_wrapper__.19.exit ]
  br label %csroa.if.end84.i507

csroa.if.end84.i507:                              ; preds = %__non_const_wrapper__.19.exit, %csroa.if.end89.i505
  %.phi85.i506 = phi i64 [ %.phi90.i504, %csroa.if.end89.i505 ], [ 4598175219545276416, %__non_const_wrapper__.19.exit ]
  br label %csroa.if.end79.i509

csroa.if.end79.i509:                              ; preds = %__non_const_wrapper__.19.exit, %csroa.if.end84.i507
  %.phi80.i508 = phi i64 [ %.phi85.i506, %csroa.if.end84.i507 ], [ 4611686018427387904, %__non_const_wrapper__.19.exit ]
  br label %csroa.if.end74.i511

csroa.if.end74.i511:                              ; preds = %__non_const_wrapper__.19.exit, %csroa.if.end79.i509
  %.phi75.i510 = phi i64 [ %.phi80.i508, %csroa.if.end79.i509 ], [ -4625196817309499392, %__non_const_wrapper__.19.exit ]
  br label %csroa.if.end69.i513

csroa.if.end69.i513:                              ; preds = %__non_const_wrapper__.19.exit, %csroa.if.end74.i511
  %.phi70.i512 = phi i64 [ %.phi75.i510, %csroa.if.end74.i511 ], [ -4611686018427387904, %__non_const_wrapper__.19.exit ]
  br label %csroa.if.end64.i515

csroa.if.end64.i515:                              ; preds = %__non_const_wrapper__.19.exit, %csroa.if.end69.i513
  %.phi65.i514 = phi i64 [ %.phi70.i512, %csroa.if.end69.i513 ], [ -4625196817309499392, %__non_const_wrapper__.19.exit ]
  br label %csroa.if.end59.i517

csroa.if.end59.i517:                              ; preds = %__non_const_wrapper__.19.exit, %csroa.if.end64.i515
  %.phi60.i516 = phi i64 [ %.phi65.i514, %csroa.if.end64.i515 ], [ 4611686018427387904, %__non_const_wrapper__.19.exit ]
  br label %csroa.if.end54.i519

csroa.if.end54.i519:                              ; preds = %__non_const_wrapper__.19.exit, %csroa.if.end59.i517
  %.phi55.i518 = phi i64 [ %.phi60.i516, %csroa.if.end59.i517 ], [ 4598175219545276416, %__non_const_wrapper__.19.exit ]
  br label %csroa.if.end49.i521

csroa.if.end49.i521:                              ; preds = %__non_const_wrapper__.19.exit, %csroa.if.end54.i519
  %.phi50.i520 = phi i64 [ %.phi55.i518, %csroa.if.end54.i519 ], [ -9223372036854775808, %__non_const_wrapper__.19.exit ]
  br label %csroa.if.end44.i523

csroa.if.end44.i523:                              ; preds = %__non_const_wrapper__.19.exit.thread737, %__non_const_wrapper__.19.exit, %csroa.if.end49.i521
  %.phi45.i424739 = phi i64 [ %.phi45.i424, %csroa.if.end49.i521 ], [ %.phi45.i424, %__non_const_wrapper__.19.exit ], [ 4607182418800017408, %__non_const_wrapper__.19.exit.thread737 ]
  %add691738 = phi i32 [ %add, %csroa.if.end49.i521 ], [ %add, %__non_const_wrapper__.19.exit ], [ %add690, %__non_const_wrapper__.19.exit.thread737 ]
  %.phi45.i522 = phi i64 [ %.phi50.i520, %csroa.if.end49.i521 ], [ 0, %__non_const_wrapper__.19.exit ], [ 0, %__non_const_wrapper__.19.exit.thread737 ]
  br label %csroa.if.end34.i527

csroa.if.end34.i527:                              ; preds = %__non_const_wrapper__.18.exit.thread682, %__non_const_wrapper__.18.exit, %csroa.if.end44.i523, %__non_const_wrapper__.19.exit, %__non_const_wrapper__.19.exit
  %.phi20.i434735 = phi i64 [ %.phi45.i424, %__non_const_wrapper__.19.exit ], [ %.phi45.i424739, %csroa.if.end44.i523 ], [ %.phi45.i424, %__non_const_wrapper__.19.exit ], [ -9223372036854775808, %__non_const_wrapper__.18.exit ], [ 0, %__non_const_wrapper__.18.exit.thread682 ]
  %add671734 = phi i32 [ %add, %__non_const_wrapper__.19.exit ], [ %add691738, %csroa.if.end44.i523 ], [ %add, %__non_const_wrapper__.19.exit ], [ %add, %__non_const_wrapper__.18.exit ], [ %add685, %__non_const_wrapper__.18.exit.thread682 ]
  %.phi35.i526 = phi i64 [ 4607182418800017408, %__non_const_wrapper__.19.exit ], [ %.phi45.i522, %csroa.if.end44.i523 ], [ 4607182418800017408, %__non_const_wrapper__.19.exit ], [ 4607182418800017408, %__non_const_wrapper__.18.exit ], [ 4607182418800017408, %__non_const_wrapper__.18.exit.thread682 ]
  br label %__non_const_wrapper__.20.exit

__non_const_wrapper__.20.exit:                    ; preds = %__non_const_wrapper__.19.exit, %__non_const_wrapper__.19.exit, %csroa.if.end34.i527
  %.phi20.i434729 = phi i64 [ %.phi45.i424, %__non_const_wrapper__.19.exit ], [ %.phi20.i434735, %csroa.if.end34.i527 ], [ %.phi45.i424, %__non_const_wrapper__.19.exit ]
  %add671728 = phi i32 [ %add, %__non_const_wrapper__.19.exit ], [ %add671734, %csroa.if.end34.i527 ], [ %add, %__non_const_wrapper__.19.exit ]
  %.phi25.i530 = phi i64 [ 9218868437227405312, %__non_const_wrapper__.19.exit ], [ %.phi35.i526, %csroa.if.end34.i527 ], [ 9218868437227405312, %__non_const_wrapper__.19.exit ]
  switch i32 %i.0726, label %csroa.if.end94.i601 [
    i32 14, label %csroa.if.end54.i617
    i32 15, label %csroa.if.end74.i609
    i32 16, label %csroa.if.end74.i609
    i32 17, label %csroa.if.end74.i609
    i32 18, label %csroa.if.end74.i609
    i32 5, label %__non_const_wrapper__.21.exit
    i32 6, label %csroa.if.end29.i627
    i32 7, label %csroa.if.end34.i625
    i32 8, label %csroa.if.end39.i623
    i32 9, label %csroa.if.end44.i621
    i32 10, label %csroa.if.end49.i619
    i32 11, label %csroa.if.end54.i617
    i32 12, label %csroa.if.end54.i617
    i32 13, label %csroa.if.end54.i617
  ]

csroa.if.end94.i601:                              ; preds = %__non_const_wrapper__.20.exit
  br label %csroa.if.end74.i609

csroa.if.end74.i609:                              ; preds = %__non_const_wrapper__.20.exit, %__non_const_wrapper__.20.exit, %__non_const_wrapper__.20.exit, %__non_const_wrapper__.20.exit, %csroa.if.end94.i601
  %.phi75.i608 = phi i64 [ -4620693217682128896, %__non_const_wrapper__.20.exit ], [ -4620693217682128896, %__non_const_wrapper__.20.exit ], [ -4620693217682128896, %__non_const_wrapper__.20.exit ], [ 0, %csroa.if.end94.i601 ], [ -4620693217682128896, %__non_const_wrapper__.20.exit ]
  br label %csroa.if.end54.i617

csroa.if.end54.i617:                              ; preds = %__non_const_wrapper__.20.exit, %__non_const_wrapper__.20.exit, %csroa.if.end74.i609, %__non_const_wrapper__.20.exit, %__non_const_wrapper__.20.exit
  %.phi55.i616 = phi i64 [ 4602678819172646912, %__non_const_wrapper__.20.exit ], [ 4602678819172646912, %__non_const_wrapper__.20.exit ], [ 4602678819172646912, %__non_const_wrapper__.20.exit ], [ %.phi75.i608, %csroa.if.end74.i609 ], [ 4602678819172646912, %__non_const_wrapper__.20.exit ]
  br label %csroa.if.end49.i619

csroa.if.end49.i619:                              ; preds = %__non_const_wrapper__.20.exit, %csroa.if.end54.i617
  %.phi50.i618 = phi i64 [ %.phi55.i616, %csroa.if.end54.i617 ], [ -9223372036854775808, %__non_const_wrapper__.20.exit ]
  br label %csroa.if.end44.i621

csroa.if.end44.i621:                              ; preds = %__non_const_wrapper__.20.exit, %csroa.if.end49.i619
  %.phi45.i620 = phi i64 [ %.phi50.i618, %csroa.if.end49.i619 ], [ 0, %__non_const_wrapper__.20.exit ]
  br label %csroa.if.end39.i623

csroa.if.end39.i623:                              ; preds = %__non_const_wrapper__.20.exit, %csroa.if.end44.i621
  %.phi40.i622 = phi i64 [ %.phi45.i620, %csroa.if.end44.i621 ], [ -9223372036854775808, %__non_const_wrapper__.20.exit ]
  br label %csroa.if.end34.i625

csroa.if.end34.i625:                              ; preds = %__non_const_wrapper__.20.exit, %csroa.if.end39.i623
  %.phi35.i624 = phi i64 [ %.phi40.i622, %csroa.if.end39.i623 ], [ 0, %__non_const_wrapper__.20.exit ]
  br label %csroa.if.end29.i627

csroa.if.end29.i627:                              ; preds = %__non_const_wrapper__.20.exit.thread740, %__non_const_wrapper__.20.exit, %csroa.if.end34.i625
  %.phi25.i530743 = phi i64 [ %.phi25.i530, %csroa.if.end34.i625 ], [ %.phi25.i530, %__non_const_wrapper__.20.exit ], [ 9218868437227405312, %__non_const_wrapper__.20.exit.thread740 ]
  %add671728742 = phi i32 [ %add671728, %csroa.if.end34.i625 ], [ %add671728, %__non_const_wrapper__.20.exit ], [ %add680, %__non_const_wrapper__.20.exit.thread740 ]
  %.phi20.i434729741 = phi i64 [ %.phi20.i434729, %csroa.if.end34.i625 ], [ %.phi20.i434729, %__non_const_wrapper__.20.exit ], [ 4607182418800017408, %__non_const_wrapper__.20.exit.thread740 ]
  %.phi30.i626 = phi i64 [ %.phi35.i624, %csroa.if.end34.i625 ], [ 9218868437227405312, %__non_const_wrapper__.20.exit ], [ 9218868437227405312, %__non_const_wrapper__.20.exit.thread740 ]
  br label %__non_const_wrapper__.21.exit

__non_const_wrapper__.21.exit:                    ; preds = %__non_const_wrapper__.20.exit.thread, %__non_const_wrapper__.19.exit.thread736, %__non_const_wrapper__.18.exit.thread653, %__non_const_wrapper__.19.exit.thread702, %csroa.if.end29.i627, %__non_const_wrapper__.20.exit, %__non_const_wrapper__.19.exit, %__non_const_wrapper__.19.exit.thread699, %__non_const_wrapper__.18.exit.thread
  %.phi.i540707 = phi i64 [ -1, %__non_const_wrapper__.18.exit.thread ], [ -4503599627370496, %__non_const_wrapper__.18.exit.thread653 ], [ 0, %__non_const_wrapper__.19.exit.thread699 ], [ 4607182418800017408, %__non_const_wrapper__.19.exit.thread702 ], [ -281474976710656, %__non_const_wrapper__.19.exit ], [ %.phi25.i530, %__non_const_wrapper__.20.exit ], [ %.phi25.i530743, %csroa.if.end29.i627 ], [ -281474976710656, %__non_const_wrapper__.19.exit.thread736 ], [ 9218868437227405312, %__non_const_wrapper__.20.exit.thread ]
  %add652693706 = phi i32 [ %add651, %__non_const_wrapper__.18.exit.thread ], [ %add656, %__non_const_wrapper__.18.exit.thread653 ], [ %add661, %__non_const_wrapper__.19.exit.thread699 ], [ %add666, %__non_const_wrapper__.19.exit.thread702 ], [ %add, %__non_const_wrapper__.19.exit ], [ %add671728, %__non_const_wrapper__.20.exit ], [ %add671728742, %csroa.if.end29.i627 ], [ %add670, %__non_const_wrapper__.19.exit.thread736 ], [ %add675, %__non_const_wrapper__.20.exit.thread ]
  %.phi.i442694705 = phi i64 [ 9218868437227405312, %__non_const_wrapper__.18.exit.thread ], [ 9223090561878065152, %__non_const_wrapper__.18.exit.thread653 ], [ 9218868437227405312, %__non_const_wrapper__.19.exit.thread699 ], [ 9218868437227405312, %__non_const_wrapper__.19.exit.thread702 ], [ %.phi45.i424, %__non_const_wrapper__.19.exit ], [ %.phi20.i434729, %__non_const_wrapper__.20.exit ], [ %.phi20.i434729741, %csroa.if.end29.i627 ], [ 4607182418800017408, %__non_const_wrapper__.19.exit.thread736 ], [ 0, %__non_const_wrapper__.20.exit.thread ]
  %.phi.i638 = phi i64 [ -1, %__non_const_wrapper__.18.exit.thread ], [ 9223090561878065152, %__non_const_wrapper__.18.exit.thread653 ], [ 9223372036854775807, %__non_const_wrapper__.19.exit.thread699 ], [ 9218868437227405312, %__non_const_wrapper__.19.exit.thread702 ], [ -281474976710656, %__non_const_wrapper__.19.exit ], [ 9223372036854775807, %__non_const_wrapper__.20.exit ], [ %.phi30.i626, %csroa.if.end29.i627 ], [ -281474976710656, %__non_const_wrapper__.19.exit.thread736 ], [ 9223372036854775807, %__non_const_wrapper__.20.exit.thread ]
  %.cast = bitcast i64 %retval.0.i to double
  %call13 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i64 %.phi.i442694705, i64 %.phi.i540707, i64 %.phi.i638, i64 %retval.0.i, double %.cast)
  %inc = add nuw nsw i32 %i.0726, 1
  %exitcond = icmp eq i32 %inc, 20
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %__non_const_wrapper__.21.exit
  %call14 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %add652693706)
  ret i32 %add652693706
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
  %conv54 = zext i1 %cmp53 to i64
  %neg = xor i64 %conv54, -1
  %and57 = and i64 %shr, %neg
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

attributes #0 = { noinline nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline norecurse nounwind readnone }
attributes #3 = { noinline norecurse nounwind }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
