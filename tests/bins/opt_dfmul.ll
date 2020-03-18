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
  %i.022 = phi i32 [ 0, %entry ], [ %inc, %__non_const_wrapper__.21.exit ]
  %main_result.021 = phi i32 [ 0, %entry ], [ %add, %__non_const_wrapper__.21.exit ]
  switch i32 %i.022, label %csroa.if.end94.i [
    i32 0, label %__non_const_wrapper__.17.exit.thread
    i32 1, label %__non_const_wrapper__.17.exit.thread519
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
  switch i32 %i.022, label %csroa.if.end94.i83 [
    i32 17, label %csroa.if.end84.i87
    i32 18, label %csroa.if.end89.i85
    i32 2, label %__non_const_wrapper__.17.exit.thread522
    i32 3, label %__non_const_wrapper__.17.exit.thread525
    i32 4, label %__non_const_wrapper__.19.exit.thread
    i32 5, label %__non_const_wrapper__.17.exit
    i32 6, label %__non_const_wrapper__.17.exit
    i32 7, label %csroa.if.end34.i107
    i32 8, label %csroa.if.end34.i107
    i32 9, label %csroa.if.end44.i103
    i32 10, label %csroa.if.end49.i101
    i32 11, label %csroa.if.end54.i99
    i32 12, label %csroa.if.end59.i97
    i32 13, label %csroa.if.end64.i95
    i32 14, label %csroa.if.end69.i93
    i32 15, label %csroa.if.end74.i91
    i32 16, label %csroa.if.end79.i89
  ]

__non_const_wrapper__.19.exit.thread:             ; preds = %__non_const_wrapper__.exit
  %call.c.c529 = tail call i64 @float64_mul.v0.C.c.c(i64 %.phi10.i, i64 -281474976710656) #4
  br label %csroa.if.end19.i505

__non_const_wrapper__.17.exit.thread525:          ; preds = %__non_const_wrapper__.exit
  %call.c.c526 = tail call i64 @float64_mul.v0.C.c.c(i64 %.phi10.i, i64 4607182418800017408) #4
  br label %csroa.if.end14.i507

__non_const_wrapper__.17.exit.thread522:          ; preds = %__non_const_wrapper__.exit
  %call.c.c523 = tail call i64 @float64_mul.v0.C.c.c(i64 %.phi10.i, i64 0) #4
  br label %csroa.if.end9.i509

csroa.if.end94.i83:                               ; preds = %__non_const_wrapper__.exit
  br label %csroa.if.end89.i85

csroa.if.end89.i85:                               ; preds = %__non_const_wrapper__.exit, %csroa.if.end94.i83
  %.phi90.i84 = phi i64 [ 0, %csroa.if.end94.i83 ], [ -4611686018427387904, %__non_const_wrapper__.exit ]
  br label %csroa.if.end84.i87

csroa.if.end84.i87:                               ; preds = %__non_const_wrapper__.exit, %csroa.if.end89.i85
  %.phi85.i86 = phi i64 [ %.phi90.i84, %csroa.if.end89.i85 ], [ 4598175219545276416, %__non_const_wrapper__.exit ]
  br label %csroa.if.end79.i89

csroa.if.end79.i89:                               ; preds = %__non_const_wrapper__.exit, %csroa.if.end84.i87
  %.phi80.i88 = phi i64 [ %.phi85.i86, %csroa.if.end84.i87 ], [ 4611686018427387904, %__non_const_wrapper__.exit ]
  br label %csroa.if.end74.i91

csroa.if.end74.i91:                               ; preds = %__non_const_wrapper__.exit, %csroa.if.end79.i89
  %.phi75.i90 = phi i64 [ %.phi80.i88, %csroa.if.end79.i89 ], [ -4625196817309499392, %__non_const_wrapper__.exit ]
  br label %csroa.if.end69.i93

csroa.if.end69.i93:                               ; preds = %__non_const_wrapper__.exit, %csroa.if.end74.i91
  %.phi70.i92 = phi i64 [ %.phi75.i90, %csroa.if.end74.i91 ], [ -4611686018427387904, %__non_const_wrapper__.exit ]
  br label %csroa.if.end64.i95

csroa.if.end64.i95:                               ; preds = %__non_const_wrapper__.exit, %csroa.if.end69.i93
  %.phi65.i94 = phi i64 [ %.phi70.i92, %csroa.if.end69.i93 ], [ -4625196817309499392, %__non_const_wrapper__.exit ]
  br label %csroa.if.end59.i97

csroa.if.end59.i97:                               ; preds = %__non_const_wrapper__.exit, %csroa.if.end64.i95
  %.phi60.i96 = phi i64 [ %.phi65.i94, %csroa.if.end64.i95 ], [ 4611686018427387904, %__non_const_wrapper__.exit ]
  br label %csroa.if.end54.i99

csroa.if.end54.i99:                               ; preds = %__non_const_wrapper__.exit, %csroa.if.end59.i97
  %.phi55.i98 = phi i64 [ %.phi60.i96, %csroa.if.end59.i97 ], [ 4598175219545276416, %__non_const_wrapper__.exit ]
  br label %csroa.if.end49.i101

csroa.if.end49.i101:                              ; preds = %__non_const_wrapper__.exit, %csroa.if.end54.i99
  %.phi50.i100 = phi i64 [ %.phi55.i98, %csroa.if.end54.i99 ], [ -9223372036854775808, %__non_const_wrapper__.exit ]
  br label %csroa.if.end44.i103

csroa.if.end44.i103:                              ; preds = %__non_const_wrapper__.exit, %csroa.if.end49.i101
  %.phi45.i102 = phi i64 [ %.phi50.i100, %csroa.if.end49.i101 ], [ 0, %__non_const_wrapper__.exit ]
  br label %csroa.if.end34.i107

csroa.if.end34.i107:                              ; preds = %csroa.if.end44.i103, %__non_const_wrapper__.exit, %__non_const_wrapper__.exit
  %.phi35.i106 = phi i64 [ 4607182418800017408, %__non_const_wrapper__.exit ], [ %.phi45.i102, %csroa.if.end44.i103 ], [ 4607182418800017408, %__non_const_wrapper__.exit ]
  br label %__non_const_wrapper__.17.exit

__non_const_wrapper__.17.exit.thread:             ; preds = %for.body
  %call.c.c516 = tail call i64 @float64_mul.v0.C.c.c(i64 9218868437227405312, i64 -1) #4
  br label %__non_const_wrapper__.21.exit

__non_const_wrapper__.17.exit.thread519:          ; preds = %for.body
  %call.c.c520 = tail call i64 @float64_mul.v0.C.c.c(i64 9223090561878065152, i64 -4503599627370496) #4
  br label %csroa.if.end4.i511

__non_const_wrapper__.17.exit:                    ; preds = %__non_const_wrapper__.exit, %__non_const_wrapper__.exit, %csroa.if.end34.i107
  %.phi25.i110 = phi i64 [ 9218868437227405312, %__non_const_wrapper__.exit ], [ %.phi35.i106, %csroa.if.end34.i107 ], [ 9218868437227405312, %__non_const_wrapper__.exit ]
  %call.c.c = tail call i64 @float64_mul.v0.C.c.c(i64 %.phi10.i, i64 %.phi25.i110) #4
  switch i32 %i.022, label %csroa.if.end94.i181 [
    i32 14, label %__non_const_wrapper__.18.exit
    i32 15, label %csroa.if.end74.i189
    i32 16, label %csroa.if.end74.i189
    i32 17, label %csroa.if.end74.i189
    i32 18, label %csroa.if.end74.i189
    i32 5, label %csroa.if.end19.i505
    i32 6, label %csroa.if.end29.i501
    i32 7, label %__non_const_wrapper__.19.exit.thread606
    i32 8, label %csroa.if.end34.i401
    i32 9, label %csroa.if.end44.i397
    i32 10, label %csroa.if.end49.i395
    i32 11, label %__non_const_wrapper__.18.exit
    i32 12, label %__non_const_wrapper__.18.exit
    i32 13, label %__non_const_wrapper__.18.exit
  ]

__non_const_wrapper__.19.exit.thread606:          ; preds = %__non_const_wrapper__.17.exit
  br label %csroa.if.end34.i401

csroa.if.end94.i181:                              ; preds = %__non_const_wrapper__.17.exit
  br label %csroa.if.end74.i189

csroa.if.end74.i189:                              ; preds = %__non_const_wrapper__.17.exit, %__non_const_wrapper__.17.exit, %__non_const_wrapper__.17.exit, %__non_const_wrapper__.17.exit, %csroa.if.end94.i181
  %.phi75.i188 = phi i64 [ -4620693217682128896, %__non_const_wrapper__.17.exit ], [ -4620693217682128896, %__non_const_wrapper__.17.exit ], [ -4620693217682128896, %__non_const_wrapper__.17.exit ], [ 0, %csroa.if.end94.i181 ], [ -4620693217682128896, %__non_const_wrapper__.17.exit ]
  br label %__non_const_wrapper__.18.exit

__non_const_wrapper__.18.exit:                    ; preds = %__non_const_wrapper__.17.exit, %__non_const_wrapper__.17.exit, %__non_const_wrapper__.17.exit, %csroa.if.end74.i189, %__non_const_wrapper__.17.exit
  %.phi55.i196 = phi i64 [ 4602678819172646912, %__non_const_wrapper__.17.exit ], [ 4602678819172646912, %__non_const_wrapper__.17.exit ], [ 4602678819172646912, %__non_const_wrapper__.17.exit ], [ %.phi75.i188, %csroa.if.end74.i189 ], [ 4602678819172646912, %__non_const_wrapper__.17.exit ]
  switch i32 %i.022, label %csroa.if.end94.i377 [
    i32 16, label %csroa.if.end79.i383
    i32 17, label %csroa.if.end84.i381
    i32 18, label %csroa.if.end89.i379
    i32 11, label %csroa.if.end54.i393
    i32 12, label %csroa.if.end59.i391
    i32 13, label %csroa.if.end64.i389
    i32 14, label %csroa.if.end69.i387
    i32 15, label %csroa.if.end74.i385
    i32 0, label %__non_const_wrapper__.21.exit
    i32 1, label %csroa.if.end4.i511
    i32 2, label %csroa.if.end9.i509
    i32 3, label %csroa.if.end14.i507
    i32 4, label %csroa.if.end19.i505
    i32 5, label %__non_const_wrapper__.20.exit
    i32 6, label %__non_const_wrapper__.20.exit
    i32 7, label %csroa.if.end34.i401
    i32 8, label %csroa.if.end34.i401
    i32 9, label %csroa.if.end44.i397
    i32 10, label %csroa.if.end49.i395
  ]

csroa.if.end94.i377:                              ; preds = %__non_const_wrapper__.18.exit
  br label %csroa.if.end89.i379

csroa.if.end89.i379:                              ; preds = %__non_const_wrapper__.18.exit, %csroa.if.end94.i377
  %.phi90.i280632 = phi i64 [ 0, %csroa.if.end94.i377 ], [ 4598175219545276416, %__non_const_wrapper__.18.exit ]
  %.phi90.i378 = phi i64 [ 0, %csroa.if.end94.i377 ], [ -4611686018427387904, %__non_const_wrapper__.18.exit ]
  br label %csroa.if.end84.i381

csroa.if.end84.i381:                              ; preds = %__non_const_wrapper__.18.exit, %csroa.if.end89.i379
  %.phi85.i282630 = phi i64 [ %.phi90.i280632, %csroa.if.end89.i379 ], [ -4611686018427387904, %__non_const_wrapper__.18.exit ]
  %.phi85.i380 = phi i64 [ %.phi90.i378, %csroa.if.end89.i379 ], [ 4598175219545276416, %__non_const_wrapper__.18.exit ]
  br label %csroa.if.end79.i383

csroa.if.end79.i383:                              ; preds = %__non_const_wrapper__.18.exit, %csroa.if.end84.i381
  %.phi80.i284628 = phi i64 [ %.phi85.i282630, %csroa.if.end84.i381 ], [ -4625196817309499392, %__non_const_wrapper__.18.exit ]
  %.phi80.i382 = phi i64 [ %.phi85.i380, %csroa.if.end84.i381 ], [ 4611686018427387904, %__non_const_wrapper__.18.exit ]
  br label %csroa.if.end74.i385

csroa.if.end74.i385:                              ; preds = %__non_const_wrapper__.18.exit, %csroa.if.end79.i383
  %.phi75.i286626 = phi i64 [ %.phi80.i284628, %csroa.if.end79.i383 ], [ 4611686018427387904, %__non_const_wrapper__.18.exit ]
  %.phi75.i384 = phi i64 [ %.phi80.i382, %csroa.if.end79.i383 ], [ -4625196817309499392, %__non_const_wrapper__.18.exit ]
  br label %csroa.if.end69.i387

csroa.if.end69.i387:                              ; preds = %__non_const_wrapper__.18.exit, %csroa.if.end74.i385
  %.phi70.i288624 = phi i64 [ %.phi75.i286626, %csroa.if.end74.i385 ], [ -4625196817309499392, %__non_const_wrapper__.18.exit ]
  %.phi70.i386 = phi i64 [ %.phi75.i384, %csroa.if.end74.i385 ], [ -4611686018427387904, %__non_const_wrapper__.18.exit ]
  br label %csroa.if.end64.i389

csroa.if.end64.i389:                              ; preds = %__non_const_wrapper__.18.exit, %csroa.if.end69.i387
  %.phi65.i290622 = phi i64 [ %.phi70.i288624, %csroa.if.end69.i387 ], [ -4611686018427387904, %__non_const_wrapper__.18.exit ]
  %.phi65.i388 = phi i64 [ %.phi70.i386, %csroa.if.end69.i387 ], [ -4625196817309499392, %__non_const_wrapper__.18.exit ]
  br label %csroa.if.end59.i391

csroa.if.end59.i391:                              ; preds = %__non_const_wrapper__.18.exit, %csroa.if.end64.i389
  %.phi60.i292620 = phi i64 [ %.phi65.i290622, %csroa.if.end64.i389 ], [ 4598175219545276416, %__non_const_wrapper__.18.exit ]
  %.phi60.i390 = phi i64 [ %.phi65.i388, %csroa.if.end64.i389 ], [ 4611686018427387904, %__non_const_wrapper__.18.exit ]
  br label %csroa.if.end54.i393

csroa.if.end54.i393:                              ; preds = %__non_const_wrapper__.18.exit, %csroa.if.end59.i391
  %.phi45.i298618 = phi i64 [ %.phi60.i292620, %csroa.if.end59.i391 ], [ 4611686018427387904, %__non_const_wrapper__.18.exit ]
  %.phi55.i392 = phi i64 [ %.phi60.i390, %csroa.if.end59.i391 ], [ 4598175219545276416, %__non_const_wrapper__.18.exit ]
  br label %csroa.if.end49.i395

csroa.if.end49.i395:                              ; preds = %__non_const_wrapper__.18.exit, %__non_const_wrapper__.17.exit, %csroa.if.end54.i393
  %.phi45.i298615 = phi i64 [ %.phi45.i298618, %csroa.if.end54.i393 ], [ 4607182418800017408, %__non_const_wrapper__.17.exit ], [ 0, %__non_const_wrapper__.18.exit ]
  %.phi45.i200556614 = phi i64 [ %.phi55.i196, %csroa.if.end54.i393 ], [ -9223372036854775808, %__non_const_wrapper__.17.exit ], [ %.phi55.i196, %__non_const_wrapper__.18.exit ]
  %.phi50.i394 = phi i64 [ %.phi55.i392, %csroa.if.end54.i393 ], [ -9223372036854775808, %__non_const_wrapper__.17.exit ], [ -9223372036854775808, %__non_const_wrapper__.18.exit ]
  br label %csroa.if.end44.i397

csroa.if.end44.i397:                              ; preds = %__non_const_wrapper__.18.exit, %__non_const_wrapper__.17.exit, %csroa.if.end49.i395
  %.phi45.i298612 = phi i64 [ %.phi45.i298615, %csroa.if.end49.i395 ], [ 4607182418800017408, %__non_const_wrapper__.17.exit ], [ 0, %__non_const_wrapper__.18.exit ]
  %.phi45.i200556611 = phi i64 [ %.phi45.i200556614, %csroa.if.end49.i395 ], [ 0, %__non_const_wrapper__.17.exit ], [ %.phi55.i196, %__non_const_wrapper__.18.exit ]
  %.phi45.i396 = phi i64 [ %.phi50.i394, %csroa.if.end49.i395 ], [ 0, %__non_const_wrapper__.17.exit ], [ 0, %__non_const_wrapper__.18.exit ]
  br label %csroa.if.end34.i401

csroa.if.end34.i401:                              ; preds = %__non_const_wrapper__.18.exit, %__non_const_wrapper__.18.exit, %__non_const_wrapper__.17.exit, %__non_const_wrapper__.19.exit.thread606, %csroa.if.end44.i397
  %.phi35.i302608 = phi i64 [ %.phi45.i298612, %csroa.if.end44.i397 ], [ 0, %__non_const_wrapper__.19.exit.thread606 ], [ -9223372036854775808, %__non_const_wrapper__.17.exit ], [ 0, %__non_const_wrapper__.18.exit ], [ 0, %__non_const_wrapper__.18.exit ]
  %.phi35.i204552607 = phi i64 [ %.phi45.i200556611, %csroa.if.end44.i397 ], [ 0, %__non_const_wrapper__.19.exit.thread606 ], [ -9223372036854775808, %__non_const_wrapper__.17.exit ], [ %.phi55.i196, %__non_const_wrapper__.18.exit ], [ %.phi55.i196, %__non_const_wrapper__.18.exit ]
  %.phi35.i400 = phi i64 [ %.phi45.i396, %csroa.if.end44.i397 ], [ 4607182418800017408, %__non_const_wrapper__.19.exit.thread606 ], [ 4607182418800017408, %__non_const_wrapper__.17.exit ], [ 4607182418800017408, %__non_const_wrapper__.18.exit ], [ 4607182418800017408, %__non_const_wrapper__.18.exit ]
  br label %__non_const_wrapper__.20.exit

__non_const_wrapper__.20.exit:                    ; preds = %__non_const_wrapper__.18.exit, %__non_const_wrapper__.18.exit, %csroa.if.end34.i401
  %.phi20.i308604 = phi i64 [ %.phi35.i302608, %csroa.if.end34.i401 ], [ 0, %__non_const_wrapper__.18.exit ], [ 0, %__non_const_wrapper__.18.exit ]
  %.phi20.i210546602 = phi i64 [ %.phi35.i204552607, %csroa.if.end34.i401 ], [ %.phi55.i196, %__non_const_wrapper__.18.exit ], [ %.phi55.i196, %__non_const_wrapper__.18.exit ]
  %.phi25.i404 = phi i64 [ %.phi35.i400, %csroa.if.end34.i401 ], [ 9218868437227405312, %__non_const_wrapper__.18.exit ], [ 9218868437227405312, %__non_const_wrapper__.18.exit ]
  switch i32 %i.022, label %csroa.if.end94.i475 [
    i32 14, label %csroa.if.end54.i491
    i32 15, label %csroa.if.end74.i483
    i32 16, label %csroa.if.end74.i483
    i32 17, label %csroa.if.end74.i483
    i32 18, label %csroa.if.end74.i483
    i32 5, label %csroa.if.end19.i505
    i32 6, label %csroa.if.end29.i501
    i32 7, label %csroa.if.end34.i499
    i32 8, label %csroa.if.end39.i497
    i32 9, label %csroa.if.end44.i495
    i32 10, label %csroa.if.end49.i493
    i32 11, label %csroa.if.end54.i491
    i32 12, label %csroa.if.end54.i491
    i32 13, label %csroa.if.end54.i491
  ]

csroa.if.end94.i475:                              ; preds = %__non_const_wrapper__.20.exit
  br label %csroa.if.end74.i483

csroa.if.end74.i483:                              ; preds = %__non_const_wrapper__.20.exit, %__non_const_wrapper__.20.exit, %__non_const_wrapper__.20.exit, %__non_const_wrapper__.20.exit, %csroa.if.end94.i475
  %.phi75.i482 = phi i64 [ -4620693217682128896, %__non_const_wrapper__.20.exit ], [ -4620693217682128896, %__non_const_wrapper__.20.exit ], [ -4620693217682128896, %__non_const_wrapper__.20.exit ], [ 0, %csroa.if.end94.i475 ], [ -4620693217682128896, %__non_const_wrapper__.20.exit ]
  br label %csroa.if.end54.i491

csroa.if.end54.i491:                              ; preds = %__non_const_wrapper__.20.exit, %__non_const_wrapper__.20.exit, %csroa.if.end74.i483, %__non_const_wrapper__.20.exit, %__non_const_wrapper__.20.exit
  %.phi55.i490 = phi i64 [ 4602678819172646912, %__non_const_wrapper__.20.exit ], [ 4602678819172646912, %__non_const_wrapper__.20.exit ], [ 4602678819172646912, %__non_const_wrapper__.20.exit ], [ %.phi75.i482, %csroa.if.end74.i483 ], [ 4602678819172646912, %__non_const_wrapper__.20.exit ]
  br label %csroa.if.end49.i493

csroa.if.end49.i493:                              ; preds = %__non_const_wrapper__.20.exit, %csroa.if.end54.i491
  %.phi50.i492 = phi i64 [ %.phi55.i490, %csroa.if.end54.i491 ], [ -9223372036854775808, %__non_const_wrapper__.20.exit ]
  br label %csroa.if.end44.i495

csroa.if.end44.i495:                              ; preds = %__non_const_wrapper__.20.exit, %csroa.if.end49.i493
  %.phi45.i494 = phi i64 [ %.phi50.i492, %csroa.if.end49.i493 ], [ 0, %__non_const_wrapper__.20.exit ]
  br label %csroa.if.end39.i497

csroa.if.end39.i497:                              ; preds = %__non_const_wrapper__.20.exit, %csroa.if.end44.i495
  %.phi40.i496 = phi i64 [ %.phi45.i494, %csroa.if.end44.i495 ], [ -9223372036854775808, %__non_const_wrapper__.20.exit ]
  br label %csroa.if.end34.i499

csroa.if.end34.i499:                              ; preds = %__non_const_wrapper__.20.exit, %csroa.if.end39.i497
  %.phi35.i498 = phi i64 [ %.phi40.i496, %csroa.if.end39.i497 ], [ 0, %__non_const_wrapper__.20.exit ]
  br label %csroa.if.end29.i501

csroa.if.end29.i501:                              ; preds = %__non_const_wrapper__.17.exit, %__non_const_wrapper__.20.exit, %csroa.if.end34.i499
  %.phi25.i404637 = phi i64 [ %.phi25.i404, %csroa.if.end34.i499 ], [ %.phi25.i404, %__non_const_wrapper__.20.exit ], [ 9218868437227405312, %__non_const_wrapper__.17.exit ]
  %.phi20.i210546602636 = phi i64 [ %.phi20.i210546602, %csroa.if.end34.i499 ], [ %.phi20.i210546602, %__non_const_wrapper__.20.exit ], [ 9218868437227405312, %__non_const_wrapper__.17.exit ]
  %.phi20.i308604634 = phi i64 [ %.phi20.i308604, %csroa.if.end34.i499 ], [ %.phi20.i308604, %__non_const_wrapper__.20.exit ], [ 4607182418800017408, %__non_const_wrapper__.17.exit ]
  %.phi30.i500 = phi i64 [ %.phi35.i498, %csroa.if.end34.i499 ], [ 9218868437227405312, %__non_const_wrapper__.20.exit ], [ 9218868437227405312, %__non_const_wrapper__.17.exit ]
  br label %csroa.if.end19.i505

csroa.if.end19.i505:                              ; preds = %__non_const_wrapper__.18.exit, %__non_const_wrapper__.17.exit, %__non_const_wrapper__.19.exit.thread, %csroa.if.end29.i501, %__non_const_wrapper__.20.exit
  %.phi20.i308600 = phi i64 [ %.phi20.i308604, %__non_const_wrapper__.20.exit ], [ %.phi20.i308604634, %csroa.if.end29.i501 ], [ 4607182418800017408, %__non_const_wrapper__.19.exit.thread ], [ 0, %__non_const_wrapper__.17.exit ], [ 0, %__non_const_wrapper__.18.exit ]
  %call.c.c530545599 = phi i64 [ %call.c.c, %__non_const_wrapper__.20.exit ], [ %call.c.c, %csroa.if.end29.i501 ], [ %call.c.c529, %__non_const_wrapper__.19.exit.thread ], [ %call.c.c, %__non_const_wrapper__.17.exit ], [ %call.c.c, %__non_const_wrapper__.18.exit ]
  %.phi20.i210546598 = phi i64 [ %.phi20.i210546602, %__non_const_wrapper__.20.exit ], [ %.phi20.i210546602636, %csroa.if.end29.i501 ], [ -281474976710656, %__non_const_wrapper__.19.exit.thread ], [ 9223372036854775807, %__non_const_wrapper__.17.exit ], [ %.phi55.i196, %__non_const_wrapper__.18.exit ]
  %.phi20.i406597 = phi i64 [ %.phi25.i404, %__non_const_wrapper__.20.exit ], [ %.phi25.i404637, %csroa.if.end29.i501 ], [ -281474976710656, %__non_const_wrapper__.19.exit.thread ], [ 9218868437227405312, %__non_const_wrapper__.17.exit ], [ -281474976710656, %__non_const_wrapper__.18.exit ]
  %.phi20.i504 = phi i64 [ 9223372036854775807, %__non_const_wrapper__.20.exit ], [ %.phi30.i500, %csroa.if.end29.i501 ], [ -281474976710656, %__non_const_wrapper__.19.exit.thread ], [ 9223372036854775807, %__non_const_wrapper__.17.exit ], [ -281474976710656, %__non_const_wrapper__.18.exit ]
  br label %csroa.if.end14.i507

csroa.if.end14.i507:                              ; preds = %__non_const_wrapper__.18.exit, %__non_const_wrapper__.17.exit.thread525, %csroa.if.end19.i505
  %.phi15.i408595 = phi i64 [ %.phi20.i406597, %csroa.if.end19.i505 ], [ 4607182418800017408, %__non_const_wrapper__.17.exit.thread525 ], [ 4607182418800017408, %__non_const_wrapper__.18.exit ]
  %.phi10.i214540571594 = phi i64 [ %.phi20.i210546598, %csroa.if.end19.i505 ], [ 9218868437227405312, %__non_const_wrapper__.17.exit.thread525 ], [ %.phi55.i196, %__non_const_wrapper__.18.exit ]
  %call.c.c524539572593 = phi i64 [ %call.c.c530545599, %csroa.if.end19.i505 ], [ %call.c.c526, %__non_const_wrapper__.17.exit.thread525 ], [ %call.c.c, %__non_const_wrapper__.18.exit ]
  %.phi10.i312573592 = phi i64 [ %.phi20.i308600, %csroa.if.end19.i505 ], [ 9218868437227405312, %__non_const_wrapper__.17.exit.thread525 ], [ 0, %__non_const_wrapper__.18.exit ]
  %.phi15.i506 = phi i64 [ %.phi20.i504, %csroa.if.end19.i505 ], [ 9218868437227405312, %__non_const_wrapper__.17.exit.thread525 ], [ 9218868437227405312, %__non_const_wrapper__.18.exit ]
  br label %csroa.if.end9.i509

csroa.if.end9.i509:                               ; preds = %__non_const_wrapper__.18.exit, %__non_const_wrapper__.17.exit.thread522, %csroa.if.end14.i507
  %.phi10.i410589 = phi i64 [ %.phi15.i408595, %csroa.if.end14.i507 ], [ 0, %__non_const_wrapper__.17.exit.thread522 ], [ 0, %__non_const_wrapper__.18.exit ]
  %.phi10.i214540567588 = phi i64 [ %.phi10.i214540571594, %csroa.if.end14.i507 ], [ 9223372036854775807, %__non_const_wrapper__.17.exit.thread522 ], [ %.phi55.i196, %__non_const_wrapper__.18.exit ]
  %call.c.c524539568587 = phi i64 [ %call.c.c524539572593, %csroa.if.end14.i507 ], [ %call.c.c523, %__non_const_wrapper__.17.exit.thread522 ], [ %call.c.c, %__non_const_wrapper__.18.exit ]
  %.phi10.i312569586 = phi i64 [ %.phi10.i312573592, %csroa.if.end14.i507 ], [ 9218868437227405312, %__non_const_wrapper__.17.exit.thread522 ], [ 0, %__non_const_wrapper__.18.exit ]
  %.phi10.i508 = phi i64 [ %.phi15.i506, %csroa.if.end14.i507 ], [ 9223372036854775807, %__non_const_wrapper__.17.exit.thread522 ], [ 9223372036854775807, %__non_const_wrapper__.18.exit ]
  br label %csroa.if.end4.i511

csroa.if.end4.i511:                               ; preds = %__non_const_wrapper__.18.exit, %__non_const_wrapper__.17.exit.thread519, %csroa.if.end9.i509
  %.phi5.i412583 = phi i64 [ %.phi10.i410589, %csroa.if.end9.i509 ], [ -4503599627370496, %__non_const_wrapper__.17.exit.thread519 ], [ -4503599627370496, %__non_const_wrapper__.18.exit ]
  %.phi5.i216536563582 = phi i64 [ %.phi10.i214540567588, %csroa.if.end9.i509 ], [ 9223090561878065152, %__non_const_wrapper__.17.exit.thread519 ], [ %.phi55.i196, %__non_const_wrapper__.18.exit ]
  %call.c.c521535564581 = phi i64 [ %call.c.c524539568587, %csroa.if.end9.i509 ], [ %call.c.c520, %__non_const_wrapper__.17.exit.thread519 ], [ %call.c.c, %__non_const_wrapper__.18.exit ]
  %.phi5.i314565580 = phi i64 [ %.phi10.i312569586, %csroa.if.end9.i509 ], [ 9223090561878065152, %__non_const_wrapper__.17.exit.thread519 ], [ 0, %__non_const_wrapper__.18.exit ]
  %.phi5.i510 = phi i64 [ %.phi10.i508, %csroa.if.end9.i509 ], [ 9223090561878065152, %__non_const_wrapper__.17.exit.thread519 ], [ 9223090561878065152, %__non_const_wrapper__.18.exit ]
  br label %__non_const_wrapper__.21.exit

__non_const_wrapper__.21.exit:                    ; preds = %__non_const_wrapper__.18.exit, %__non_const_wrapper__.17.exit.thread, %csroa.if.end4.i511
  %.phi.i414577 = phi i64 [ %.phi5.i412583, %csroa.if.end4.i511 ], [ -1, %__non_const_wrapper__.17.exit.thread ], [ -1, %__non_const_wrapper__.18.exit ]
  %.phi.i218532558576 = phi i64 [ %.phi5.i216536563582, %csroa.if.end4.i511 ], [ -1, %__non_const_wrapper__.17.exit.thread ], [ %.phi55.i196, %__non_const_wrapper__.18.exit ]
  %call.c.c517531559575 = phi i64 [ %call.c.c521535564581, %csroa.if.end4.i511 ], [ %call.c.c516, %__non_const_wrapper__.17.exit.thread ], [ %call.c.c, %__non_const_wrapper__.18.exit ]
  %.phi.i316560574 = phi i64 [ %.phi5.i314565580, %csroa.if.end4.i511 ], [ 9218868437227405312, %__non_const_wrapper__.17.exit.thread ], [ 0, %__non_const_wrapper__.18.exit ]
  %.phi.i512 = phi i64 [ %.phi5.i510, %csroa.if.end4.i511 ], [ -1, %__non_const_wrapper__.17.exit.thread ], [ -1, %__non_const_wrapper__.18.exit ]
  %.cast.i = bitcast i64 %call.c.c517531559575 to double
  %call13 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i64 %.phi.i316560574, i64 %.phi.i414577, i64 %.phi.i512, i64 %call.c.c517531559575, double %.cast.i)
  %cmp5 = icmp ne i64 %call.c.c517531559575, %.phi.i218532558576
  %conv = zext i1 %cmp5 to i32
  %add = add nsw i32 %conv, %main_result.021
  %inc = add nuw nsw i32 %i.022, 1
  %exitcond = icmp eq i32 %inc, 20
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %__non_const_wrapper__.21.exit
  %call14 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %add)
  ret i32 %add
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
define void @float_raise.v0.C.c.c(i32 %flags) local_unnamed_addr #3 {
entry:
  %0 = load i32, i32* @float_exception_flags, align 4
  %or = or i32 %0, %flags
  store i32 %or, i32* @float_exception_flags, align 4
  ret void
}

; Function Attrs: noinline norecurse nounwind
define i64 @float64_mul.v0.C.c.c(i64 %a, i64 %b) local_unnamed_addr #3 {
entry:
  %and.i = and i64 %a, 4503599627370495
  %shr.i = lshr i64 %a, 52
  %0 = trunc i64 %shr.i to i32
  %conv.i = and i32 %0, 2047
  %and.i4 = and i64 %b, 4503599627370495
  %shr.i5 = lshr i64 %b, 52
  %1 = trunc i64 %shr.i5 to i32
  %conv.i6 = and i32 %1, 2047
  %shr.i72 = xor i64 %b, %a
  %xor1 = lshr i64 %shr.i72, 63
  %xor = trunc i64 %xor1 to i32
  %cmp = icmp eq i32 %conv.i, 2047
  br i1 %cmp, label %if.then, label %if.end15

if.then:                                          ; preds = %entry
  %tobool = icmp eq i64 %and.i, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then8

lor.lhs.false:                                    ; preds = %if.then
  %cmp6 = icmp ne i32 %conv.i6, 2047
  %tobool7 = icmp eq i64 %and.i4, 0
  %or.cond = or i1 %tobool7, %cmp6
  br i1 %or.cond, label %if.end, label %if.then8

if.then8:                                         ; preds = %lor.lhs.false, %if.then
  %and.i9 = and i64 %a, 9221120237041090560
  %cmp.i = icmp eq i64 %and.i9, 9218868437227405312
  %and1.i = and i64 %a, 2251799813685247
  %tobool.i10 = icmp ne i64 %and1.i, 0
  %2 = and i1 %cmp.i, %tobool.i10
  %shl.i = shl i64 %b, 1
  %cmp.i11 = icmp ugt i64 %shl.i, -9007199254740992
  %and.i13 = and i64 %b, 9221120237041090560
  %cmp.i14 = icmp eq i64 %and.i13, 9218868437227405312
  %and1.i15 = and i64 %b, 2251799813685247
  %tobool.i16 = icmp ne i64 %and1.i15, 0
  %3 = and i1 %cmp.i14, %tobool.i16
  %or.i = or i64 %a, 2251799813685248
  %or4.i = or i64 %b, 2251799813685248
  %or5.i5 = or i1 %2, %3
  br i1 %or5.i5, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then8
  tail call void @float_raise.v0.C.c.c(i32 16)
  br label %if.end.i

if.end.i:                                         ; preds = %if.then8, %if.then.i
  br i1 %3, label %return, label %cond.false.i

cond.false.i:                                     ; preds = %if.end.i
  %tobool7.i.demorgan = and i1 %cmp.i, %tobool.i10
  %tobool7.i = xor i1 %tobool7.i.demorgan, true
  %4 = and i1 %cmp.i11, %tobool7.i
  %cond14.i = select i1 %4, i64 %or4.i, i64 %or.i
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %conv6 = zext i32 %conv.i6 to i64
  %or = or i64 %conv6, %and.i4
  %cmp10 = icmp eq i64 %or, 0
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end
  tail call void @float_raise.v0.C.c.c(i32 16)
  br label %return

if.end13:                                         ; preds = %if.end
  %call14.c.c = tail call i64 @packFloat64.v0.C.c.c(i32 %xor, i32 2047, i64 0)
  br label %return

if.end15:                                         ; preds = %entry
  %cmp16 = icmp eq i32 %conv.i6, 2047
  br i1 %cmp16, label %if.then18, label %if.end30

if.then18:                                        ; preds = %if.end15
  %tobool19 = icmp eq i64 %and.i4, 0
  br i1 %tobool19, label %if.end22, label %if.then20

if.then20:                                        ; preds = %if.then18
  %and.i32 = and i64 %a, 9221120237041090560
  %cmp.i33 = icmp eq i64 %and.i32, 9218868437227405312
  %and1.i34 = and i64 %a, 2251799813685247
  %tobool.i35 = icmp ne i64 %and1.i34, 0
  %5 = and i1 %cmp.i33, %tobool.i35
  %shl.i37 = shl i64 %b, 1
  %cmp.i38 = icmp ugt i64 %shl.i37, -9007199254740992
  %and.i40 = and i64 %b, 9221120237041090560
  %cmp.i41 = icmp eq i64 %and.i40, 9218868437227405312
  %and1.i42 = and i64 %b, 2251799813685247
  %tobool.i43 = icmp ne i64 %and1.i42, 0
  %6 = and i1 %cmp.i41, %tobool.i43
  %or.i18 = or i64 %a, 2251799813685248
  %or4.i19 = or i64 %b, 2251799813685248
  %or5.i203 = or i1 %5, %6
  br i1 %or5.i203, label %if.then.i22, label %if.end.i24

if.then.i22:                                      ; preds = %if.then20
  tail call void @float_raise.v0.C.c.c(i32 16)
  br label %if.end.i24

if.end.i24:                                       ; preds = %if.then20, %if.then.i22
  br i1 %6, label %return, label %cond.false.i29

cond.false.i29:                                   ; preds = %if.end.i24
  %tobool7.i25.demorgan = and i1 %cmp.i33, %tobool.i35
  %tobool7.i25 = xor i1 %tobool7.i25.demorgan, true
  %7 = and i1 %cmp.i38, %tobool7.i25
  %cond14.i28 = select i1 %7, i64 %or4.i19, i64 %or.i18
  br label %return

if.end22:                                         ; preds = %if.then18
  %conv234 = zext i32 %conv.i to i64
  %or24 = or i64 %conv234, %and.i
  %cmp25 = icmp eq i64 %or24, 0
  br i1 %cmp25, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end22
  tail call void @float_raise.v0.C.c.c(i32 16)
  br label %return

if.end28:                                         ; preds = %if.end22
  %call29.c.c = tail call i64 @packFloat64.v0.C.c.c(i32 %xor, i32 2047, i64 0)
  br label %return

if.end30:                                         ; preds = %if.end15
  %cmp31 = icmp eq i32 %conv.i, 0
  br i1 %cmp31, label %if.then33, label %if.end39

if.then33:                                        ; preds = %if.end30
  %cmp34 = icmp eq i64 %and.i, 0
  br i1 %cmp34, label %if.then36, label %if.end38

if.then36:                                        ; preds = %if.then33
  %call37.c.c = tail call i64 @packFloat64.v0.C.c.c(i32 %xor, i32 0, i64 0)
  br label %return

if.end38:                                         ; preds = %if.then33
  %cmp.i.i = icmp ult i64 %and.i, 4294967296
  %shr.i.i = lshr i64 %and.i, 32
  %shiftCount.0.i.i = select i1 %cmp.i.i, i32 32, i32 0
  %a.addr.0.i.i = select i1 %cmp.i.i, i64 %a, i64 %shr.i.i
  %conv.i.i = trunc i64 %a.addr.0.i.i to i32
  %cmp.i.i.i = icmp ult i32 %conv.i.i, 65536
  %shl.i.i.i = shl i32 %conv.i.i, 16
  %..i.i.i = select i1 %cmp.i.i.i, i32 16, i32 0
  %shl.a.i.i.i = select i1 %cmp.i.i.i, i32 %shl.i.i.i, i32 %conv.i.i
  %cmp1.i.i.i = icmp ult i32 %shl.a.i.i.i, 16777216
  %add3.i.i.i = or i32 %..i.i.i, 8
  %shl4.i.i.i = shl i32 %shl.a.i.i.i, 8
  %shiftCount.1.i.i.i = select i1 %cmp1.i.i.i, i32 %add3.i.i.i, i32 %..i.i.i
  %a.addr.1.i.i.i = select i1 %cmp1.i.i.i, i32 %shl4.i.i.i, i32 %shl.a.i.i.i
  %shr.i.i.i = lshr i32 %a.addr.1.i.i.i, 24
  %idxprom.i.i.i = zext i32 %shr.i.i.i to i64
  %arrayidx.i.i.i = getelementptr inbounds [256 x i32], [256 x i32]* @countLeadingZeros32.countLeadingZerosHigh, i64 0, i64 %idxprom.i.i.i
  %8 = load i32, i32* %arrayidx.i.i.i, align 4
  %add6.i.i.i = or i32 %shiftCount.1.i.i.i, %shiftCount.0.i.i
  %add1.i.i = add i32 %add6.i.i.i, %8
  %sub.i = add nsw i32 %add1.i.i, -11
  %sh_prom.i = zext i32 %sub.i to i64
  %shl.i45 = shl i64 %and.i, %sh_prom.i
  %sub1.i = sub i32 12, %add1.i.i
  br label %if.end39

if.end39:                                         ; preds = %if.end38, %if.end30
  %aSig.0 = phi i64 [ %shl.i45, %if.end38 ], [ %and.i, %if.end30 ]
  %aExp.0 = phi i32 [ %sub1.i, %if.end38 ], [ %conv.i, %if.end30 ]
  %cmp40 = icmp eq i32 %conv.i6, 0
  br i1 %cmp40, label %if.then42, label %if.end48

if.then42:                                        ; preds = %if.end39
  %cmp43 = icmp eq i64 %and.i4, 0
  br i1 %cmp43, label %if.then45, label %if.end47

if.then45:                                        ; preds = %if.then42
  %call46.c.c = tail call i64 @packFloat64.v0.C.c.c(i32 %xor, i32 0, i64 0)
  br label %return

if.end47:                                         ; preds = %if.then42
  %cmp.i.i46 = icmp ult i64 %and.i4, 4294967296
  %shr.i.i47 = lshr i64 %and.i4, 32
  %shiftCount.0.i.i48 = select i1 %cmp.i.i46, i32 32, i32 0
  %a.addr.0.i.i49 = select i1 %cmp.i.i46, i64 %b, i64 %shr.i.i47
  %conv.i.i50 = trunc i64 %a.addr.0.i.i49 to i32
  %cmp.i.i.i51 = icmp ult i32 %conv.i.i50, 65536
  %shl.i.i.i52 = shl i32 %conv.i.i50, 16
  %..i.i.i53 = select i1 %cmp.i.i.i51, i32 16, i32 0
  %shl.a.i.i.i54 = select i1 %cmp.i.i.i51, i32 %shl.i.i.i52, i32 %conv.i.i50
  %cmp1.i.i.i55 = icmp ult i32 %shl.a.i.i.i54, 16777216
  %add3.i.i.i56 = or i32 %..i.i.i53, 8
  %shl4.i.i.i57 = shl i32 %shl.a.i.i.i54, 8
  %shiftCount.1.i.i.i58 = select i1 %cmp1.i.i.i55, i32 %add3.i.i.i56, i32 %..i.i.i53
  %a.addr.1.i.i.i59 = select i1 %cmp1.i.i.i55, i32 %shl4.i.i.i57, i32 %shl.a.i.i.i54
  %shr.i.i.i60 = lshr i32 %a.addr.1.i.i.i59, 24
  %idxprom.i.i.i61 = zext i32 %shr.i.i.i60 to i64
  %arrayidx.i.i.i62 = getelementptr inbounds [256 x i32], [256 x i32]* @countLeadingZeros32.countLeadingZerosHigh, i64 0, i64 %idxprom.i.i.i61
  %9 = load i32, i32* %arrayidx.i.i.i62, align 4
  %add6.i.i.i63 = or i32 %shiftCount.1.i.i.i58, %shiftCount.0.i.i48
  %add1.i.i64 = add i32 %add6.i.i.i63, %9
  %sub.i65 = add nsw i32 %add1.i.i64, -11
  %sh_prom.i66 = zext i32 %sub.i65 to i64
  %shl.i67 = shl i64 %and.i4, %sh_prom.i66
  %sub1.i68 = sub i32 12, %add1.i.i64
  br label %if.end48

if.end48:                                         ; preds = %if.end47, %if.end39
  %10 = phi i64 [ %shl.i67, %if.end47 ], [ %and.i4, %if.end39 ]
  %11 = phi i32 [ %sub1.i68, %if.end47 ], [ %conv.i6, %if.end39 ]
  %add = add nsw i32 %11, %aExp.0
  %or49 = shl i64 %aSig.0, 10
  %or50 = shl i64 %10, 11
  %12 = lshr i64 %aSig.0, 22
  %shl = and i64 %12, 3221225471
  %shr.i69 = or i64 %shl, 1073741824
  %13 = lshr i64 %10, 21
  %shl51 = and i64 %13, 2147483647
  %shr3.i = or i64 %shl51, 2147483648
  %conv5.i = and i64 %or49, 4294966272
  %conv6.i = and i64 %or50, 4294965248
  %mul.i = mul nuw i64 %conv6.i, %conv5.i
  %mul9.i = mul nuw i64 %shr3.i, %conv5.i
  %mul12.i = mul nuw i64 %conv6.i, %shr.i69
  %mul15.i = mul nuw i64 %shr3.i, %shr.i69
  %add.i = add i64 %mul9.i, %mul12.i
  %cmp.i70 = icmp ult i64 %add.i, %mul12.i
  %conv17.i = zext i1 %cmp.i70 to i64
  %shl.i71 = shl nuw nsw i64 %conv17.i, 32
  %shr18.i = lshr i64 %add.i, 32
  %add19.i = or i64 %shl.i71, %shr18.i
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
  %14 = xor i64 %shl56.mask.lobit, 1
  %15 = shl i64 %or55, %14
  %zExp.0.v = select i1 %cmp57, i32 -1024, i32 -1023
  %zExp.0 = add i32 %add, %zExp.0.v
  %16 = trunc i64 %15 to i32
  %conv17.i72 = and i32 %16, 1023
  %conv19.i = and i32 %zExp.0, 65535
  %cmp20.i = icmp ugt i32 %conv19.i, 2044
  br i1 %cmp20.i, label %if.then22.i, label %if.end47.i

if.then22.i:                                      ; preds = %if.end48
  %cmp23.i73 = icmp sgt i32 %zExp.0, 2045
  br i1 %cmp23.i73, label %if.then30.i, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %if.then22.i
  %cmp25.i = icmp eq i32 %zExp.0, 2045
  br i1 %cmp25.i, label %land.lhs.true.i, label %if.end34.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %add.i74 = add i64 %15, 512
  %cmp28.i = icmp slt i64 %add.i74, 0
  br i1 %cmp28.i, label %if.then30.i, label %if.end47.i

if.then30.i:                                      ; preds = %land.lhs.true.i, %if.then22.i
  tail call void @float_raise.v0.C.c.c(i32 9)
  %call.c.i.c = tail call i64 @packFloat64.v0.C.c.c(i32 %xor, i32 2047, i64 0)
  br label %return

if.end34.i:                                       ; preds = %lor.lhs.false.i
  %cmp35.i = icmp slt i32 %zExp.0, 0
  br i1 %cmp35.i, label %if.then37.i, label %if.end47.i

if.then37.i:                                      ; preds = %if.end34.i
  %cmp1.i.i = icmp sgt i32 %zExp.0, -64
  br i1 %cmp1.i.i, label %if.then2.i.i, label %if.else6.i.i

if.then2.i.i:                                     ; preds = %if.then37.i
  %sub38.i = sub nsw i32 0, %zExp.0
  %sh_prom.i.i = zext i32 %sub38.i to i64
  %shr.i.i76 = lshr i64 %15, %sh_prom.i.i
  %and.i.i = and i32 %zExp.0, 63
  %sh_prom3.i.i = zext i32 %and.i.i to i64
  %shl.i.i = shl i64 %15, %sh_prom3.i.i
  %cmp4.i.i = icmp ne i64 %shl.i.i, 0
  %conv5.i.i = zext i1 %cmp4.i.i to i64
  %or.i.i = or i64 %conv5.i.i, %shr.i.i76
  br label %shift64RightJamming.v0.C.c.exit.i

if.else6.i.i:                                     ; preds = %if.then37.i
  %cmp7.i.i = icmp ne i64 %15, 0
  %conv9.i.i = zext i1 %cmp7.i.i to i64
  br label %shift64RightJamming.v0.C.c.exit.i

shift64RightJamming.v0.C.c.exit.i:                ; preds = %if.else6.i.i, %if.then2.i.i
  %z.1.i.i = phi i64 [ %or.i.i, %if.then2.i.i ], [ %conv9.i.i, %if.else6.i.i ]
  %17 = trunc i64 %z.1.i.i to i32
  %conv40.i = and i32 %17, 1023
  %tobool43.i = icmp eq i32 %conv40.i, 0
  br i1 %tobool43.i, label %if.end50.i, label %if.end47.thread5.i

if.end47.thread5.i:                               ; preds = %shift64RightJamming.v0.C.c.exit.i
  tail call void @float_raise.v0.C.c.c(i32 4)
  br label %if.then49.i

if.end47.i:                                       ; preds = %if.end34.i, %land.lhs.true.i, %if.end48
  %zExp.addr.1.i = phi i32 [ %zExp.0, %if.end48 ], [ %zExp.0, %if.end34.i ], [ 2045, %land.lhs.true.i ]
  %tobool48.i = icmp eq i32 %conv17.i72, 0
  br i1 %tobool48.i, label %if.end50.i, label %if.then49.i

if.then49.i:                                      ; preds = %if.end47.i, %if.end47.thread5.i
  %18 = phi i64 [ %z.1.i.i, %if.end47.thread5.i ], [ %15, %if.end47.i ]
  %roundBits.18.i = phi i32 [ %conv40.i, %if.end47.thread5.i ], [ %conv17.i72, %if.end47.i ]
  %zExp.addr.17.i = phi i32 [ 0, %if.end47.thread5.i ], [ %zExp.addr.1.i, %if.end47.i ]
  %19 = load i32, i32* @float_exception_flags, align 4
  %or.i77 = or i32 %19, 1
  store i32 %or.i77, i32* @float_exception_flags, align 4
  br label %if.end50.i

if.end50.i:                                       ; preds = %if.then49.i, %if.end47.i, %shift64RightJamming.v0.C.c.exit.i
  %20 = phi i64 [ %15, %if.end47.i ], [ %18, %if.then49.i ], [ %z.1.i.i, %shift64RightJamming.v0.C.c.exit.i ]
  %roundBits.14.i = phi i32 [ 0, %if.end47.i ], [ %roundBits.18.i, %if.then49.i ], [ 0, %shift64RightJamming.v0.C.c.exit.i ]
  %zExp.addr.13.i = phi i32 [ %zExp.addr.1.i, %if.end47.i ], [ %zExp.addr.17.i, %if.then49.i ], [ 0, %shift64RightJamming.v0.C.c.exit.i ]
  %add52.i = add i64 %20, 512
  %shr.i78 = lshr i64 %add52.i, 10
  %cmp53.i = icmp eq i32 %roundBits.14.i, 512
  %conv54.i = zext i1 %cmp53.i to i64
  %neg.i = xor i64 %conv54.i, -1
  %and57.i = and i64 %shr.i78, %neg.i
  %cmp58.i = icmp eq i64 %and57.i, 0
  %.zExp.addr.1.i = select i1 %cmp58.i, i32 0, i32 %zExp.addr.13.i
  %call62.c.i.c = tail call i64 @packFloat64.v0.C.c.c(i32 %xor, i32 %.zExp.addr.1.i, i64 %and57.i)
  br label %return

return:                                           ; preds = %if.end.i, %if.end.i24, %if.end50.i, %if.then30.i, %cond.false.i29, %cond.false.i, %if.then45, %if.then36, %if.end28, %if.then27, %if.end13, %if.then12
  %retval.0 = phi i64 [ 9223372036854775807, %if.then12 ], [ %call14.c.c, %if.end13 ], [ 9223372036854775807, %if.then27 ], [ %call29.c.c, %if.end28 ], [ %call37.c.c, %if.then36 ], [ %call46.c.c, %if.then45 ], [ %or4.i, %if.end.i ], [ %cond14.i, %cond.false.i ], [ %or4.i19, %if.end.i24 ], [ %cond14.i28, %cond.false.i29 ], [ %call.c.i.c, %if.then30.i ], [ %call62.c.i.c, %if.end50.i ]
  ret i64 %retval.0
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
