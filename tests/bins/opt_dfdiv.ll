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
    i32 0, label %__non_const_wrapper__.20.exit.thread
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
    i32 1, label %__non_const_wrapper__.20.exit.thread559
    i32 2, label %__non_const_wrapper__.20.exit.thread562
    i32 3, label %__non_const_wrapper__.20.exit.thread565
    i32 4, label %__non_const_wrapper__.22.exit.thread
    i32 5, label %__non_const_wrapper__.22.exit.thread644
    i32 6, label %__non_const_wrapper__.20.exit
    i32 7, label %__non_const_wrapper__.20.exit
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

__non_const_wrapper__.22.exit.thread644:          ; preds = %__non_const_wrapper__.exit
  %call.c.c572 = tail call i64 @float64_div.v0.C.c.c(i64 %.phi5.i, i64 9218868437227405312) #4
  br label %csroa.if.end24.i546

__non_const_wrapper__.22.exit.thread:             ; preds = %__non_const_wrapper__.exit
  %call.c.c569 = tail call i64 @float64_div.v0.C.c.c(i64 %.phi5.i, i64 9221120237041090560) #4
  br label %csroa.if.end19.i548

__non_const_wrapper__.20.exit.thread565:          ; preds = %__non_const_wrapper__.exit
  %call.c.c566 = tail call i64 @float64_div.v0.C.c.c(i64 %.phi5.i, i64 4607182418800017408) #4
  br label %csroa.if.end14.i550

__non_const_wrapper__.20.exit.thread562:          ; preds = %__non_const_wrapper__.exit
  %call.c.c563 = tail call i64 @float64_div.v0.C.c.c(i64 %.phi5.i, i64 9218868437227405312) #4
  br label %csroa.if.end9.i552

__non_const_wrapper__.20.exit.thread559:          ; preds = %__non_const_wrapper__.exit
  %call.c.c560 = tail call i64 @float64_div.v0.C.c.c(i64 %.phi5.i, i64 9221120237041090560) #4
  br label %csroa.if.end4.i554

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
  br label %__non_const_wrapper__.20.exit

__non_const_wrapper__.20.exit.thread:             ; preds = %for.body
  %call.c.c557 = tail call i64 @float64_div.v0.C.c.c(i64 9223090561878065152, i64 4607182418800017408) #4
  br label %__non_const_wrapper__.24.exit

__non_const_wrapper__.20.exit:                    ; preds = %__non_const_wrapper__.exit, %__non_const_wrapper__.exit, %csroa.if.end39.i109
  %.phi30.i112 = phi i64 [ 0, %__non_const_wrapper__.exit ], [ %.phi40.i108, %csroa.if.end39.i109 ], [ 0, %__non_const_wrapper__.exit ]
  %call.c.c = tail call i64 @float64_div.v0.C.c.c(i64 %.phi5.i, i64 %.phi30.i112) #4
  switch i32 %i.017, label %csroa.if.end104.i191 [
    i32 15, label %csroa.if.end74.i203
    i32 16, label %csroa.if.end74.i203
    i32 17, label %csroa.if.end84.i199
    i32 18, label %csroa.if.end89.i197
    i32 19, label %csroa.if.end94.i195
    i32 20, label %csroa.if.end94.i195
    i32 6, label %csroa.if.end24.i546
    i32 7, label %csroa.if.end34.i542
    i32 8, label %__non_const_wrapper__.22.exit.thread653
    i32 9, label %csroa.if.end39.i432
    i32 10, label %csroa.if.end49.i428
    i32 11, label %__non_const_wrapper__.21.exit
    i32 12, label %__non_const_wrapper__.21.exit
    i32 13, label %csroa.if.end64.i207
    i32 14, label %csroa.if.end69.i205
  ]

__non_const_wrapper__.22.exit.thread653:          ; preds = %__non_const_wrapper__.20.exit
  br label %csroa.if.end39.i432

csroa.if.end104.i191:                             ; preds = %__non_const_wrapper__.20.exit
  br label %csroa.if.end94.i195

csroa.if.end94.i195:                              ; preds = %__non_const_wrapper__.20.exit, %__non_const_wrapper__.20.exit, %csroa.if.end104.i191
  %.phi95.i194 = phi i64 [ -4619192017806338731, %__non_const_wrapper__.20.exit ], [ 4604180019048437077, %csroa.if.end104.i191 ], [ -4619192017806338731, %__non_const_wrapper__.20.exit ]
  br label %csroa.if.end89.i197

csroa.if.end89.i197:                              ; preds = %__non_const_wrapper__.20.exit, %csroa.if.end94.i195
  %.phi90.i196 = phi i64 [ %.phi95.i194, %csroa.if.end94.i195 ], [ 4604180019048437077, %__non_const_wrapper__.20.exit ]
  br label %csroa.if.end84.i199

csroa.if.end84.i199:                              ; preds = %__non_const_wrapper__.20.exit, %csroa.if.end89.i197
  %.phi85.i198 = phi i64 [ %.phi90.i196, %csroa.if.end89.i197 ], [ 4602678819172646912, %__non_const_wrapper__.20.exit ]
  br label %csroa.if.end74.i203

csroa.if.end74.i203:                              ; preds = %__non_const_wrapper__.20.exit, %__non_const_wrapper__.20.exit, %csroa.if.end84.i199
  %.phi75.i202 = phi i64 [ -4620693217682128896, %__non_const_wrapper__.20.exit ], [ %.phi85.i198, %csroa.if.end84.i199 ], [ -4620693217682128896, %__non_const_wrapper__.20.exit ]
  br label %csroa.if.end69.i205

csroa.if.end69.i205:                              ; preds = %__non_const_wrapper__.20.exit, %csroa.if.end74.i203
  %.phi70.i204 = phi i64 [ %.phi75.i202, %csroa.if.end74.i203 ], [ 4602678819172646912, %__non_const_wrapper__.20.exit ]
  br label %csroa.if.end64.i207

csroa.if.end64.i207:                              ; preds = %__non_const_wrapper__.20.exit, %csroa.if.end69.i205
  %.phi65.i206 = phi i64 [ %.phi70.i204, %csroa.if.end69.i205 ], [ 4609434218613702656, %__non_const_wrapper__.20.exit ]
  br label %__non_const_wrapper__.21.exit

__non_const_wrapper__.21.exit:                    ; preds = %__non_const_wrapper__.20.exit, %__non_const_wrapper__.20.exit, %csroa.if.end64.i207
  %.phi55.i210 = phi i64 [ -4613937818241073152, %__non_const_wrapper__.20.exit ], [ %.phi65.i206, %csroa.if.end64.i207 ], [ -4613937818241073152, %__non_const_wrapper__.20.exit ]
  switch i32 %i.017, label %csroa.if.end99.i408.fold.split [
    i32 20, label %csroa.if.end99.i408
    i32 11, label %csroa.if.end49.i428
    i32 12, label %__non_const_wrapper__.22.exit.thread660
    i32 13, label %csroa.if.end59.i424
    i32 14, label %__non_const_wrapper__.22.exit.thread663
    i32 15, label %csroa.if.end69.i420
    i32 16, label %__non_const_wrapper__.22.exit.thread666
    i32 17, label %csroa.if.end79.i416
    i32 18, label %__non_const_wrapper__.22.exit.thread669
    i32 19, label %csroa.if.end89.i412
    i32 0, label %__non_const_wrapper__.24.exit
    i32 1, label %csroa.if.end4.i554
    i32 2, label %csroa.if.end9.i552
    i32 3, label %csroa.if.end14.i550
    i32 4, label %csroa.if.end19.i548
    i32 5, label %csroa.if.end24.i546
    i32 6, label %__non_const_wrapper__.23.exit
    i32 7, label %__non_const_wrapper__.23.exit
    i32 8, label %csroa.if.end39.i432
    i32 9, label %csroa.if.end39.i432
    i32 10, label %csroa.if.end49.i428.fold.split
  ]

__non_const_wrapper__.22.exit.thread669:          ; preds = %__non_const_wrapper__.21.exit
  br label %csroa.if.end89.i412

__non_const_wrapper__.22.exit.thread666:          ; preds = %__non_const_wrapper__.21.exit
  br label %csroa.if.end79.i416

__non_const_wrapper__.22.exit.thread663:          ; preds = %__non_const_wrapper__.21.exit
  br label %csroa.if.end69.i420

__non_const_wrapper__.22.exit.thread660:          ; preds = %__non_const_wrapper__.21.exit
  br label %csroa.if.end59.i424

csroa.if.end99.i408.fold.split:                   ; preds = %__non_const_wrapper__.21.exit
  br label %csroa.if.end99.i408

csroa.if.end99.i408:                              ; preds = %__non_const_wrapper__.21.exit, %csroa.if.end99.i408.fold.split
  %.phi100.i300673 = phi i64 [ 4607182418800017408, %__non_const_wrapper__.21.exit ], [ -4616189618054758400, %csroa.if.end99.i408.fold.split ]
  br label %csroa.if.end89.i412

csroa.if.end89.i412:                              ; preds = %__non_const_wrapper__.21.exit, %__non_const_wrapper__.22.exit.thread669, %csroa.if.end99.i408
  %.phi90.i304670 = phi i64 [ %.phi100.i300673, %csroa.if.end99.i408 ], [ 4607182418800017408, %__non_const_wrapper__.22.exit.thread669 ], [ -4616189618054758400, %__non_const_wrapper__.21.exit ]
  %.phi90.i411 = phi i64 [ -4613937818241073152, %csroa.if.end99.i408 ], [ 4609434218613702656, %__non_const_wrapper__.22.exit.thread669 ], [ 4609434218613702656, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end79.i416

csroa.if.end79.i416:                              ; preds = %__non_const_wrapper__.21.exit, %__non_const_wrapper__.22.exit.thread666, %csroa.if.end89.i412
  %.phi80.i308667 = phi i64 [ %.phi90.i304670, %csroa.if.end89.i412 ], [ 4611686018427387904, %__non_const_wrapper__.22.exit.thread666 ], [ -4611686018427387904, %__non_const_wrapper__.21.exit ]
  %.phi80.i415 = phi i64 [ %.phi90.i411, %csroa.if.end89.i412 ], [ -4607182418800017408, %__non_const_wrapper__.22.exit.thread666 ], [ -4607182418800017408, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end69.i420

csroa.if.end69.i420:                              ; preds = %__non_const_wrapper__.21.exit, %__non_const_wrapper__.22.exit.thread663, %csroa.if.end79.i416
  %.phi70.i312664 = phi i64 [ %.phi80.i308667, %csroa.if.end79.i416 ], [ 4611686018427387904, %__non_const_wrapper__.22.exit.thread663 ], [ -4611686018427387904, %__non_const_wrapper__.21.exit ]
  %.phi70.i419 = phi i64 [ %.phi80.i415, %csroa.if.end79.i416 ], [ 4616189618054758400, %__non_const_wrapper__.22.exit.thread663 ], [ 4616189618054758400, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end59.i424

csroa.if.end59.i424:                              ; preds = %__non_const_wrapper__.21.exit, %__non_const_wrapper__.22.exit.thread660, %csroa.if.end69.i420
  %.phi60.i316661 = phi i64 [ %.phi70.i312664, %csroa.if.end69.i420 ], [ 4613937818241073152, %__non_const_wrapper__.22.exit.thread660 ], [ -4609434218613702656, %__non_const_wrapper__.21.exit ]
  %.phi60.i423 = phi i64 [ %.phi70.i419, %csroa.if.end69.i420 ], [ -4611686018427387904, %__non_const_wrapper__.22.exit.thread660 ], [ -4611686018427387904, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end49.i428

csroa.if.end49.i428.fold.split:                   ; preds = %__non_const_wrapper__.21.exit
  br label %csroa.if.end49.i428

csroa.if.end49.i428:                              ; preds = %__non_const_wrapper__.21.exit, %csroa.if.end49.i428.fold.split, %__non_const_wrapper__.20.exit, %csroa.if.end59.i424
  %.phi50.i320659 = phi i64 [ %.phi60.i316661, %csroa.if.end59.i424 ], [ -4609434218613702656, %__non_const_wrapper__.21.exit ], [ 4613937818241073152, %__non_const_wrapper__.20.exit ], [ -4616189618054758400, %csroa.if.end49.i428.fold.split ]
  %.phi50.i212599658 = phi i64 [ %.phi55.i210, %csroa.if.end59.i424 ], [ %.phi55.i210, %__non_const_wrapper__.21.exit ], [ 4609434218613702656, %__non_const_wrapper__.20.exit ], [ %.phi55.i210, %csroa.if.end49.i428.fold.split ]
  %.phi50.i427 = phi i64 [ %.phi60.i423, %csroa.if.end59.i424 ], [ 4611686018427387904, %__non_const_wrapper__.21.exit ], [ 4611686018427387904, %__non_const_wrapper__.20.exit ], [ 4611686018427387904, %csroa.if.end49.i428.fold.split ]
  br label %csroa.if.end39.i432

csroa.if.end39.i432:                              ; preds = %__non_const_wrapper__.21.exit, %__non_const_wrapper__.21.exit, %__non_const_wrapper__.20.exit, %__non_const_wrapper__.22.exit.thread653, %csroa.if.end49.i428
  %.phi40.i324655 = phi i64 [ %.phi50.i320659, %csroa.if.end49.i428 ], [ 0, %__non_const_wrapper__.22.exit.thread653 ], [ -9223372036854775808, %__non_const_wrapper__.20.exit ], [ -4616189618054758400, %__non_const_wrapper__.21.exit ], [ -4616189618054758400, %__non_const_wrapper__.21.exit ]
  %.phi40.i216595654 = phi i64 [ %.phi50.i212599658, %csroa.if.end49.i428 ], [ 0, %__non_const_wrapper__.22.exit.thread653 ], [ -9223372036854775808, %__non_const_wrapper__.20.exit ], [ %.phi55.i210, %__non_const_wrapper__.21.exit ], [ %.phi55.i210, %__non_const_wrapper__.21.exit ]
  %.phi40.i431 = phi i64 [ %.phi50.i427, %csroa.if.end49.i428 ], [ 4607182418800017408, %__non_const_wrapper__.22.exit.thread653 ], [ 4607182418800017408, %__non_const_wrapper__.20.exit ], [ 4607182418800017408, %__non_const_wrapper__.21.exit ], [ 4607182418800017408, %__non_const_wrapper__.21.exit ]
  br label %__non_const_wrapper__.23.exit

__non_const_wrapper__.23.exit:                    ; preds = %__non_const_wrapper__.21.exit, %__non_const_wrapper__.21.exit, %csroa.if.end39.i432
  %.phi20.i332651 = phi i64 [ %.phi40.i324655, %csroa.if.end39.i432 ], [ -4616189618054758400, %__non_const_wrapper__.21.exit ], [ -4616189618054758400, %__non_const_wrapper__.21.exit ]
  %.phi20.i224587649 = phi i64 [ %.phi40.i216595654, %csroa.if.end39.i432 ], [ %.phi55.i210, %__non_const_wrapper__.21.exit ], [ %.phi55.i210, %__non_const_wrapper__.21.exit ]
  %.phi30.i435 = phi i64 [ %.phi40.i431, %csroa.if.end39.i432 ], [ 0, %__non_const_wrapper__.21.exit ], [ 0, %__non_const_wrapper__.21.exit ]
  switch i32 %i.017, label %csroa.if.end104.i514 [
    i32 15, label %csroa.if.end74.i526
    i32 16, label %csroa.if.end74.i526
    i32 17, label %csroa.if.end84.i522
    i32 18, label %csroa.if.end89.i520
    i32 19, label %csroa.if.end94.i518
    i32 20, label %csroa.if.end94.i518
    i32 6, label %csroa.if.end24.i546
    i32 7, label %csroa.if.end34.i542
    i32 8, label %csroa.if.end39.i540
    i32 9, label %csroa.if.end44.i538
    i32 10, label %csroa.if.end49.i536
    i32 11, label %csroa.if.end54.i534
    i32 12, label %csroa.if.end54.i534
    i32 13, label %csroa.if.end64.i530
    i32 14, label %csroa.if.end69.i528
  ]

csroa.if.end104.i514:                             ; preds = %__non_const_wrapper__.23.exit
  br label %csroa.if.end94.i518

csroa.if.end94.i518:                              ; preds = %__non_const_wrapper__.23.exit, %__non_const_wrapper__.23.exit, %csroa.if.end104.i514
  %.phi95.i517 = phi i64 [ -4619192017806338731, %__non_const_wrapper__.23.exit ], [ 4604180019048437077, %csroa.if.end104.i514 ], [ -4619192017806338731, %__non_const_wrapper__.23.exit ]
  br label %csroa.if.end89.i520

csroa.if.end89.i520:                              ; preds = %__non_const_wrapper__.23.exit, %csroa.if.end94.i518
  %.phi90.i519 = phi i64 [ %.phi95.i517, %csroa.if.end94.i518 ], [ 4604180019048437077, %__non_const_wrapper__.23.exit ]
  br label %csroa.if.end84.i522

csroa.if.end84.i522:                              ; preds = %__non_const_wrapper__.23.exit, %csroa.if.end89.i520
  %.phi85.i521 = phi i64 [ %.phi90.i519, %csroa.if.end89.i520 ], [ 4602678819172646912, %__non_const_wrapper__.23.exit ]
  br label %csroa.if.end74.i526

csroa.if.end74.i526:                              ; preds = %__non_const_wrapper__.23.exit, %__non_const_wrapper__.23.exit, %csroa.if.end84.i522
  %.phi75.i525 = phi i64 [ -4620693217682128896, %__non_const_wrapper__.23.exit ], [ %.phi85.i521, %csroa.if.end84.i522 ], [ -4620693217682128896, %__non_const_wrapper__.23.exit ]
  br label %csroa.if.end69.i528

csroa.if.end69.i528:                              ; preds = %__non_const_wrapper__.23.exit, %csroa.if.end74.i526
  %.phi70.i527 = phi i64 [ %.phi75.i525, %csroa.if.end74.i526 ], [ 4602678819172646912, %__non_const_wrapper__.23.exit ]
  br label %csroa.if.end64.i530

csroa.if.end64.i530:                              ; preds = %__non_const_wrapper__.23.exit, %csroa.if.end69.i528
  %.phi65.i529 = phi i64 [ %.phi70.i527, %csroa.if.end69.i528 ], [ 4609434218613702656, %__non_const_wrapper__.23.exit ]
  br label %csroa.if.end54.i534

csroa.if.end54.i534:                              ; preds = %csroa.if.end64.i530, %__non_const_wrapper__.23.exit, %__non_const_wrapper__.23.exit
  %.phi55.i533 = phi i64 [ -4613937818241073152, %__non_const_wrapper__.23.exit ], [ %.phi65.i529, %csroa.if.end64.i530 ], [ -4613937818241073152, %__non_const_wrapper__.23.exit ]
  br label %csroa.if.end49.i536

csroa.if.end49.i536:                              ; preds = %__non_const_wrapper__.23.exit, %csroa.if.end54.i534
  %.phi50.i535 = phi i64 [ %.phi55.i533, %csroa.if.end54.i534 ], [ 4609434218613702656, %__non_const_wrapper__.23.exit ]
  br label %csroa.if.end44.i538

csroa.if.end44.i538:                              ; preds = %__non_const_wrapper__.23.exit, %csroa.if.end49.i536
  %.phi45.i537 = phi i64 [ %.phi50.i535, %csroa.if.end49.i536 ], [ -9223372036854775808, %__non_const_wrapper__.23.exit ]
  br label %csroa.if.end39.i540

csroa.if.end39.i540:                              ; preds = %__non_const_wrapper__.23.exit, %csroa.if.end44.i538
  %.phi40.i539 = phi i64 [ %.phi45.i537, %csroa.if.end44.i538 ], [ 0, %__non_const_wrapper__.23.exit ]
  br label %csroa.if.end34.i542

csroa.if.end34.i542:                              ; preds = %__non_const_wrapper__.20.exit, %__non_const_wrapper__.23.exit, %csroa.if.end39.i540
  %.phi30.i435678 = phi i64 [ %.phi30.i435, %csroa.if.end39.i540 ], [ %.phi30.i435, %__non_const_wrapper__.23.exit ], [ 0, %__non_const_wrapper__.20.exit ]
  %.phi20.i224587649677 = phi i64 [ %.phi20.i224587649, %csroa.if.end39.i540 ], [ %.phi20.i224587649, %__non_const_wrapper__.23.exit ], [ 9218868437227405312, %__non_const_wrapper__.20.exit ]
  %.phi20.i332651675 = phi i64 [ %.phi20.i332651, %csroa.if.end39.i540 ], [ %.phi20.i332651, %__non_const_wrapper__.23.exit ], [ 4607182418800017408, %__non_const_wrapper__.20.exit ]
  %.phi35.i541 = phi i64 [ %.phi40.i539, %csroa.if.end39.i540 ], [ 9218868437227405312, %__non_const_wrapper__.23.exit ], [ 9218868437227405312, %__non_const_wrapper__.20.exit ]
  br label %csroa.if.end24.i546

csroa.if.end24.i546:                              ; preds = %__non_const_wrapper__.21.exit, %__non_const_wrapper__.20.exit, %__non_const_wrapper__.22.exit.thread644, %csroa.if.end34.i542, %__non_const_wrapper__.23.exit
  %.phi20.i332647 = phi i64 [ %.phi20.i332651, %__non_const_wrapper__.23.exit ], [ %.phi20.i332651675, %csroa.if.end34.i542 ], [ 4607182418800017408, %__non_const_wrapper__.22.exit.thread644 ], [ 0, %__non_const_wrapper__.20.exit ], [ -4616189618054758400, %__non_const_wrapper__.21.exit ]
  %call.c.c570586646 = phi i64 [ %call.c.c, %__non_const_wrapper__.23.exit ], [ %call.c.c, %csroa.if.end34.i542 ], [ %call.c.c572, %__non_const_wrapper__.22.exit.thread644 ], [ %call.c.c, %__non_const_wrapper__.20.exit ], [ %call.c.c, %__non_const_wrapper__.21.exit ]
  %.phi20.i224587645 = phi i64 [ %.phi20.i224587649, %__non_const_wrapper__.23.exit ], [ %.phi20.i224587649677, %csroa.if.end34.i542 ], [ 0, %__non_const_wrapper__.22.exit.thread644 ], [ 9223372036854775807, %__non_const_wrapper__.20.exit ], [ %.phi55.i210, %__non_const_wrapper__.21.exit ]
  %.phi25.i437640 = phi i64 [ %.phi30.i435, %__non_const_wrapper__.23.exit ], [ %.phi30.i435678, %csroa.if.end34.i542 ], [ 9218868437227405312, %__non_const_wrapper__.22.exit.thread644 ], [ 0, %__non_const_wrapper__.20.exit ], [ 9218868437227405312, %__non_const_wrapper__.21.exit ]
  %.phi25.i545 = phi i64 [ 9223372036854775807, %__non_const_wrapper__.23.exit ], [ %.phi35.i541, %csroa.if.end34.i542 ], [ 0, %__non_const_wrapper__.22.exit.thread644 ], [ 9223372036854775807, %__non_const_wrapper__.20.exit ], [ 0, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end19.i548

csroa.if.end19.i548:                              ; preds = %__non_const_wrapper__.21.exit, %__non_const_wrapper__.22.exit.thread, %csroa.if.end24.i546
  %.phi20.i332643 = phi i64 [ %.phi20.i332647, %csroa.if.end24.i546 ], [ 4607182418800017408, %__non_const_wrapper__.22.exit.thread ], [ -4616189618054758400, %__non_const_wrapper__.21.exit ]
  %call.c.c570586642 = phi i64 [ %call.c.c570586646, %csroa.if.end24.i546 ], [ %call.c.c569, %__non_const_wrapper__.22.exit.thread ], [ %call.c.c, %__non_const_wrapper__.21.exit ]
  %.phi20.i224587641 = phi i64 [ %.phi20.i224587645, %csroa.if.end24.i546 ], [ 9221120237041090560, %__non_const_wrapper__.22.exit.thread ], [ %.phi55.i210, %__non_const_wrapper__.21.exit ]
  %.phi20.i439638 = phi i64 [ %.phi25.i437640, %csroa.if.end24.i546 ], [ 9221120237041090560, %__non_const_wrapper__.22.exit.thread ], [ 9221120237041090560, %__non_const_wrapper__.21.exit ]
  %.phi20.i547 = phi i64 [ %.phi25.i545, %csroa.if.end24.i546 ], [ 9221120237041090560, %__non_const_wrapper__.22.exit.thread ], [ 9221120237041090560, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end14.i550

csroa.if.end14.i550:                              ; preds = %__non_const_wrapper__.21.exit, %__non_const_wrapper__.20.exit.thread565, %csroa.if.end19.i548
  %.phi15.i441636 = phi i64 [ %.phi20.i439638, %csroa.if.end19.i548 ], [ 4607182418800017408, %__non_const_wrapper__.20.exit.thread565 ], [ 4607182418800017408, %__non_const_wrapper__.21.exit ]
  %.phi5.i230579612635 = phi i64 [ %.phi20.i224587641, %csroa.if.end19.i548 ], [ 9218868437227405312, %__non_const_wrapper__.20.exit.thread565 ], [ %.phi55.i210, %__non_const_wrapper__.21.exit ]
  %call.c.c561578613634 = phi i64 [ %call.c.c570586642, %csroa.if.end19.i548 ], [ %call.c.c566, %__non_const_wrapper__.20.exit.thread565 ], [ %call.c.c, %__non_const_wrapper__.21.exit ]
  %.phi5.i338614633 = phi i64 [ %.phi20.i332643, %csroa.if.end19.i548 ], [ 9218868437227405312, %__non_const_wrapper__.20.exit.thread565 ], [ -4616189618054758400, %__non_const_wrapper__.21.exit ]
  %.phi15.i549 = phi i64 [ %.phi20.i547, %csroa.if.end19.i548 ], [ 9218868437227405312, %__non_const_wrapper__.20.exit.thread565 ], [ 9218868437227405312, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end9.i552

csroa.if.end9.i552:                               ; preds = %__non_const_wrapper__.21.exit, %__non_const_wrapper__.20.exit.thread562, %csroa.if.end14.i550
  %.phi10.i443630 = phi i64 [ %.phi15.i441636, %csroa.if.end14.i550 ], [ 9218868437227405312, %__non_const_wrapper__.20.exit.thread562 ], [ 9218868437227405312, %__non_const_wrapper__.21.exit ]
  %.phi5.i230579608629 = phi i64 [ %.phi5.i230579612635, %csroa.if.end14.i550 ], [ 9223372036854775807, %__non_const_wrapper__.20.exit.thread562 ], [ %.phi55.i210, %__non_const_wrapper__.21.exit ]
  %call.c.c561578609628 = phi i64 [ %call.c.c561578613634, %csroa.if.end14.i550 ], [ %call.c.c563, %__non_const_wrapper__.20.exit.thread562 ], [ %call.c.c, %__non_const_wrapper__.21.exit ]
  %.phi5.i338610627 = phi i64 [ %.phi5.i338614633, %csroa.if.end14.i550 ], [ 9218868437227405312, %__non_const_wrapper__.20.exit.thread562 ], [ -4616189618054758400, %__non_const_wrapper__.21.exit ]
  %.phi10.i551 = phi i64 [ %.phi15.i549, %csroa.if.end14.i550 ], [ 9223372036854775807, %__non_const_wrapper__.20.exit.thread562 ], [ 9223372036854775807, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end4.i554

csroa.if.end4.i554:                               ; preds = %__non_const_wrapper__.21.exit, %__non_const_wrapper__.20.exit.thread559, %csroa.if.end9.i552
  %.phi5.i445624 = phi i64 [ %.phi10.i443630, %csroa.if.end9.i552 ], [ 9221120237041090560, %__non_const_wrapper__.20.exit.thread559 ], [ 9221120237041090560, %__non_const_wrapper__.21.exit ]
  %.phi5.i230579604623 = phi i64 [ %.phi5.i230579608629, %csroa.if.end9.i552 ], [ 9221120237041090560, %__non_const_wrapper__.20.exit.thread559 ], [ %.phi55.i210, %__non_const_wrapper__.21.exit ]
  %call.c.c561578605622 = phi i64 [ %call.c.c561578609628, %csroa.if.end9.i552 ], [ %call.c.c560, %__non_const_wrapper__.20.exit.thread559 ], [ %call.c.c, %__non_const_wrapper__.21.exit ]
  %.phi5.i338606621 = phi i64 [ %.phi5.i338610627, %csroa.if.end9.i552 ], [ 9218868437227405312, %__non_const_wrapper__.20.exit.thread559 ], [ -4616189618054758400, %__non_const_wrapper__.21.exit ]
  %.phi5.i553 = phi i64 [ %.phi10.i551, %csroa.if.end9.i552 ], [ 9221120237041090560, %__non_const_wrapper__.20.exit.thread559 ], [ 9221120237041090560, %__non_const_wrapper__.21.exit ]
  br label %__non_const_wrapper__.24.exit

__non_const_wrapper__.24.exit:                    ; preds = %__non_const_wrapper__.21.exit, %__non_const_wrapper__.20.exit.thread, %csroa.if.end4.i554
  %.phi.i447618 = phi i64 [ %.phi5.i445624, %csroa.if.end4.i554 ], [ 4607182418800017408, %__non_const_wrapper__.20.exit.thread ], [ 4607182418800017408, %__non_const_wrapper__.21.exit ]
  %.phi.i232575600617 = phi i64 [ %.phi5.i230579604623, %csroa.if.end4.i554 ], [ 9223090561878065152, %__non_const_wrapper__.20.exit.thread ], [ %.phi55.i210, %__non_const_wrapper__.21.exit ]
  %call.c.c558574601616 = phi i64 [ %call.c.c561578605622, %csroa.if.end4.i554 ], [ %call.c.c557, %__non_const_wrapper__.20.exit.thread ], [ %call.c.c, %__non_const_wrapper__.21.exit ]
  %.phi.i340602615 = phi i64 [ %.phi5.i338606621, %csroa.if.end4.i554 ], [ 9223090561878065152, %__non_const_wrapper__.20.exit.thread ], [ -4616189618054758400, %__non_const_wrapper__.21.exit ]
  %.phi.i555 = phi i64 [ %.phi5.i553, %csroa.if.end4.i554 ], [ 9223090561878065152, %__non_const_wrapper__.20.exit.thread ], [ 9223090561878065152, %__non_const_wrapper__.21.exit ]
  %.cast.i = bitcast i64 %call.c.c558574601616 to double
  %call8 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i32 0, i32 0), i64 %.phi.i340602615, i64 %.phi.i447618, i64 %.phi.i555, i64 %call.c.c558574601616, double %.cast.i)
  %cmp3 = icmp ne i64 %call.c.c558574601616, %.phi.i232575600617
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
define i64 @float64_div.v0.C.c.c(i64 %a, i64 %b) local_unnamed_addr #2 {
entry:
  %and.i = and i64 %a, 4503599627370495
  %shr.i = lshr i64 %a, 52
  %0 = trunc i64 %shr.i to i32
  %conv.i = and i32 %0, 2047
  %and.i7 = and i64 %b, 4503599627370495
  %shr.i8 = lshr i64 %b, 52
  %1 = trunc i64 %shr.i8 to i32
  %conv.i9 = and i32 %1, 2047
  %shr.i103 = xor i64 %b, %a
  %xor1 = lshr i64 %shr.i103, 63
  %xor = trunc i64 %xor1 to i32
  %cmp = icmp eq i32 %conv.i, 2047
  br i1 %cmp, label %if.then, label %if.end16

if.then:                                          ; preds = %entry
  %tobool = icmp eq i64 %and.i, 0
  br i1 %tobool, label %if.end, label %if.then6

if.then6:                                         ; preds = %if.then
  %and.i12 = and i64 %a, 9221120237041090560
  %cmp.i = icmp eq i64 %and.i12, 9218868437227405312
  %and1.i = and i64 %a, 2251799813685247
  %tobool.i13 = icmp ne i64 %and1.i, 0
  %2 = and i1 %cmp.i, %tobool.i13
  %shl.i = shl i64 %b, 1
  %cmp.i14 = icmp ugt i64 %shl.i, -9007199254740992
  %and.i16 = and i64 %b, 9221120237041090560
  %cmp.i17 = icmp eq i64 %and.i16, 9218868437227405312
  %and1.i18 = and i64 %b, 2251799813685247
  %tobool.i19 = icmp ne i64 %and1.i18, 0
  %3 = and i1 %cmp.i17, %tobool.i19
  %or.i = or i64 %a, 2251799813685248
  %or4.i = or i64 %b, 2251799813685248
  %or5.i6 = or i1 %2, %3
  br i1 %or5.i6, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then6
  tail call void @float_raise.v0.C.c.c(i32 16)
  br label %if.end.i

if.end.i:                                         ; preds = %if.then6, %if.then.i
  br i1 %3, label %return, label %cond.false.i

cond.false.i:                                     ; preds = %if.end.i
  %tobool7.i.demorgan = and i1 %cmp.i, %tobool.i13
  %tobool7.i = xor i1 %tobool7.i.demorgan, true
  %4 = and i1 %cmp.i14, %tobool7.i
  %cond14.i = select i1 %4, i64 %or4.i, i64 %or.i
  br label %return

if.end:                                           ; preds = %if.then
  %cmp8 = icmp eq i32 %conv.i9, 2047
  br i1 %cmp8, label %if.then9, label %if.end14

if.then9:                                         ; preds = %if.end
  %tobool10 = icmp eq i64 %and.i7, 0
  br i1 %tobool10, label %if.end13, label %if.then11

if.then11:                                        ; preds = %if.then9
  %and.i35 = and i64 %a, 9221120237041090560
  %cmp.i36 = icmp eq i64 %and.i35, 9218868437227405312
  %and1.i37 = and i64 %a, 2251799813685247
  %tobool.i38 = icmp ne i64 %and1.i37, 0
  %5 = and i1 %cmp.i36, %tobool.i38
  %shl.i40 = shl i64 %b, 1
  %cmp.i41 = icmp ugt i64 %shl.i40, -9007199254740992
  %and.i43 = and i64 %b, 9221120237041090560
  %cmp.i44 = icmp eq i64 %and.i43, 9218868437227405312
  %and1.i45 = and i64 %b, 2251799813685247
  %tobool.i46 = icmp ne i64 %and1.i45, 0
  %6 = and i1 %cmp.i44, %tobool.i46
  %or.i21 = or i64 %a, 2251799813685248
  %or4.i22 = or i64 %b, 2251799813685248
  %or5.i237 = or i1 %5, %6
  br i1 %or5.i237, label %if.then.i25, label %if.end.i27

if.then.i25:                                      ; preds = %if.then11
  tail call void @float_raise.v0.C.c.c(i32 16)
  br label %if.end.i27

if.end.i27:                                       ; preds = %if.then11, %if.then.i25
  br i1 %6, label %return, label %cond.false.i32

cond.false.i32:                                   ; preds = %if.end.i27
  %tobool7.i28.demorgan = and i1 %cmp.i36, %tobool.i38
  %tobool7.i28 = xor i1 %tobool7.i28.demorgan, true
  %7 = and i1 %cmp.i41, %tobool7.i28
  %cond14.i31 = select i1 %7, i64 %or4.i22, i64 %or.i21
  br label %return

if.end13:                                         ; preds = %if.then9
  tail call void @float_raise.v0.C.c.c(i32 16)
  br label %return

if.end14:                                         ; preds = %if.end
  %call15.c.c = tail call i64 @packFloat64.v0.C.c.c(i32 %xor, i32 2047, i64 0)
  br label %return

if.end16:                                         ; preds = %entry
  %trunc = trunc i64 %shr.i8 to i11
  switch i11 %trunc, label %if.end35 [
    i11 -1, label %if.then18
    i11 0, label %if.then26
  ]

if.then18:                                        ; preds = %if.end16
  %tobool19 = icmp eq i64 %and.i7, 0
  br i1 %tobool19, label %if.end22, label %if.then20

if.then20:                                        ; preds = %if.then18
  %and.i62 = and i64 %a, 9221120237041090560
  %cmp.i63 = icmp eq i64 %and.i62, 9218868437227405312
  %and1.i64 = and i64 %a, 2251799813685247
  %tobool.i65 = icmp ne i64 %and1.i64, 0
  %8 = and i1 %cmp.i63, %tobool.i65
  %shl.i67 = shl i64 %b, 1
  %cmp.i68 = icmp ugt i64 %shl.i67, -9007199254740992
  %and.i70 = and i64 %b, 9221120237041090560
  %cmp.i71 = icmp eq i64 %and.i70, 9218868437227405312
  %and1.i72 = and i64 %b, 2251799813685247
  %tobool.i73 = icmp ne i64 %and1.i72, 0
  %9 = and i1 %cmp.i71, %tobool.i73
  %or.i48 = or i64 %a, 2251799813685248
  %or4.i49 = or i64 %b, 2251799813685248
  %or5.i505 = or i1 %8, %9
  br i1 %or5.i505, label %if.then.i52, label %if.end.i54

if.then.i52:                                      ; preds = %if.then20
  tail call void @float_raise.v0.C.c.c(i32 16)
  br label %if.end.i54

if.end.i54:                                       ; preds = %if.then20, %if.then.i52
  br i1 %9, label %return, label %cond.false.i59

cond.false.i59:                                   ; preds = %if.end.i54
  %tobool7.i55.demorgan = and i1 %cmp.i63, %tobool.i65
  %tobool7.i55 = xor i1 %tobool7.i55.demorgan, true
  %10 = and i1 %cmp.i68, %tobool7.i55
  %cond14.i58 = select i1 %10, i64 %or4.i49, i64 %or.i48
  br label %return

if.end22:                                         ; preds = %if.then18
  %call23.c.c = tail call i64 @packFloat64.v0.C.c.c(i32 %xor, i32 0, i64 0)
  br label %return

if.then26:                                        ; preds = %if.end16
  %cmp27 = icmp eq i64 %and.i7, 0
  br i1 %cmp27, label %if.then28, label %if.end34

if.then28:                                        ; preds = %if.then26
  %conv4 = zext i32 %conv.i to i64
  %or = or i64 %conv4, %and.i
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
  %cmp.i76 = icmp ult i64 %and.i7, 4294967296
  %shr.i77 = lshr i64 %and.i7, 32
  %shr.sink.i = select i1 %cmp.i76, i64 %b, i64 %shr.i77
  %shiftCount.0.i = select i1 %cmp.i76, i32 32, i32 0
  %extract.t1.i = trunc i64 %shr.sink.i to i32
  %cmp.i79 = icmp ult i32 %extract.t1.i, 65536
  %shl.i80 = shl i32 %extract.t1.i, 16
  %..i = select i1 %cmp.i79, i32 16, i32 0
  %shl.a.i = select i1 %cmp.i79, i32 %shl.i80, i32 %extract.t1.i
  %cmp1.i = icmp ult i32 %shl.a.i, 16777216
  %add3.i = or i32 %..i, 8
  %shl4.i = shl i32 %shl.a.i, 8
  %shiftCount.1.i = select i1 %cmp1.i, i32 %add3.i, i32 %..i
  %a.addr.1.i = select i1 %cmp1.i, i32 %shl4.i, i32 %shl.a.i
  %shr.i81 = lshr i32 %a.addr.1.i, 24
  %arrayidx.i = getelementptr inbounds [256 x i32], [256 x i32]* @countLeadingZeros32.countLeadingZerosHigh, i32 0, i32 %shr.i81
  %11 = load i32, i32* %arrayidx.i, align 4
  %add6.i = or i32 %shiftCount.1.i, %shiftCount.0.i
  %add1.i = add i32 %add6.i, %11
  %sub.i = add nsw i32 %add1.i, -11
  %sh_prom.i = zext i32 %sub.i to i64
  %shl.i75 = shl i64 %and.i7, %sh_prom.i
  %sub1.i = sub i32 12, %add1.i
  br label %if.end35

if.end35:                                         ; preds = %if.end16, %if.end34
  %bExp.0 = phi i32 [ %conv.i9, %if.end16 ], [ %sub1.i, %if.end34 ]
  %bSig.0 = phi i64 [ %and.i7, %if.end16 ], [ %shl.i75, %if.end34 ]
  %cmp36 = icmp eq i32 %conv.i, 0
  br i1 %cmp36, label %if.then38, label %if.end44

if.then38:                                        ; preds = %if.end35
  %cmp39 = icmp eq i64 %and.i, 0
  br i1 %cmp39, label %if.then41, label %if.end43

if.then41:                                        ; preds = %if.then38
  %call42.c.c = tail call i64 @packFloat64.v0.C.c.c(i32 %xor, i32 0, i64 0)
  br label %return

if.end43:                                         ; preds = %if.then38
  %cmp.i86 = icmp ult i64 %and.i, 4294967296
  %shr.i87 = lshr i64 %and.i, 32
  %shr.sink.i88 = select i1 %cmp.i86, i64 %a, i64 %shr.i87
  %shiftCount.0.i89 = select i1 %cmp.i86, i32 32, i32 0
  %extract.t1.i90 = trunc i64 %shr.sink.i88 to i32
  %cmp.i93 = icmp ult i32 %extract.t1.i90, 65536
  %shl.i94 = shl i32 %extract.t1.i90, 16
  %..i95 = select i1 %cmp.i93, i32 16, i32 0
  %shl.a.i96 = select i1 %cmp.i93, i32 %shl.i94, i32 %extract.t1.i90
  %cmp1.i97 = icmp ult i32 %shl.a.i96, 16777216
  %add3.i98 = or i32 %..i95, 8
  %shl4.i99 = shl i32 %shl.a.i96, 8
  %shiftCount.1.i100 = select i1 %cmp1.i97, i32 %add3.i98, i32 %..i95
  %a.addr.1.i101 = select i1 %cmp1.i97, i32 %shl4.i99, i32 %shl.a.i96
  %shr.i102 = lshr i32 %a.addr.1.i101, 24
  %arrayidx.i103 = getelementptr inbounds [256 x i32], [256 x i32]* @countLeadingZeros32.countLeadingZerosHigh, i32 0, i32 %shr.i102
  %12 = load i32, i32* %arrayidx.i103, align 4
  %add6.i104 = or i32 %shiftCount.1.i100, %shiftCount.0.i89
  %add1.i92 = add i32 %add6.i104, %12
  %sub.i82 = add nsw i32 %add1.i92, -11
  %sh_prom.i83 = zext i32 %sub.i82 to i64
  %shl.i84 = shl i64 %and.i, %sh_prom.i83
  %sub1.i85 = sub i32 12, %add1.i92
  br label %if.end44

if.end44:                                         ; preds = %if.end43, %if.end35
  %13 = phi i32 [ %sub1.i85, %if.end43 ], [ %conv.i, %if.end35 ]
  %aSig.0 = phi i64 [ %shl.i84, %if.end43 ], [ %and.i, %if.end35 ]
  %sub = sub i32 %13, %bExp.0
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
  %zExp.0 = add i32 %zExp.0.v, %sub
  %cmp.i105 = icmp ugt i64 %shl47, %aSig.1
  br i1 %cmp.i105, label %if.end.i109, label %if.end63

if.end.i109:                                      ; preds = %if.end44
  %shr.i106 = lshr i64 %shl47, 32
  %shl.i107 = shl nuw i64 %shr.i106, 32
  %cmp1.i108 = icmp ugt i64 %shl.i107, %aSig.1
  br i1 %cmp1.i108, label %cond.false.i110, label %cond.end.i

cond.false.i110:                                  ; preds = %if.end.i109
  %div.i = udiv i64 %aSig.1, %shr.i106
  %shl2.i = shl i64 %div.i, 32
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i110, %if.end.i109
  %cond.i = phi i64 [ %shl2.i, %cond.false.i110 ], [ -4294967296, %if.end.i109 ]
  %shr3.i = lshr exact i64 %cond.i, 32
  %conv5.i = and i64 %or46, 4294965248
  %mul9.i = mul nuw i64 %shr3.i, %conv5.i
  %mul15.i = mul nuw i64 %shr3.i, %shr.i106
  %shr18.i = lshr i64 %mul9.i, 32
  %shl21.i = shl i64 %mul9.i, 32
  %sub.i115 = sub i64 0, %shl21.i
  %cmp.i117 = icmp ne i64 %shl21.i, 0
  %conv2.neg.i = sext i1 %cmp.i117 to i64
  %add20.i.neg = sub i64 %aSig.1, %mul15.i
  %sub1.i116 = sub i64 %add20.i.neg, %shr18.i
  %sub3.i = add i64 %sub1.i116, %conv2.neg.i
  %cmp31.i = icmp slt i64 %sub3.i, 0
  br i1 %cmp31.i, label %while.body.lr.ph.i, label %while.end.i

while.body.lr.ph.i:                               ; preds = %cond.end.i
  %shl4.i111 = shl i64 %bSig.0, 43
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i, %while.body.lr.ph.i
  %14 = phi i64 [ %sub3.i, %while.body.lr.ph.i ], [ %add3.i120, %while.body.i ]
  %z.03.i = phi i64 [ %cond.i, %while.body.lr.ph.i ], [ %sub.i112, %while.body.i ]
  %rem1.02.i = phi i64 [ %sub.i115, %while.body.lr.ph.i ], [ %add.i, %while.body.i ]
  %sub.i112 = add i64 %z.03.i, -4294967296
  %add.i = add i64 %rem1.02.i, %shl4.i111
  %add1.i118 = add i64 %14, %shr.i106
  %cmp.i119 = icmp ult i64 %add.i, %rem1.02.i
  %conv2.i = zext i1 %cmp.i119 to i64
  %add3.i120 = add i64 %add1.i118, %conv2.i
  %cmp3.i = icmp slt i64 %add3.i120, 0
  br i1 %cmp3.i, label %while.body.i, label %while.end.i.loopexit

while.end.i.loopexit:                             ; preds = %while.body.i
  br label %while.end.i

while.end.i:                                      ; preds = %while.end.i.loopexit, %cond.end.i
  %rem1.0.lcssa.i = phi i64 [ %sub.i115, %cond.end.i ], [ %add.i, %while.end.i.loopexit ]
  %z.0.lcssa.i = phi i64 [ %cond.i, %cond.end.i ], [ %sub.i112, %while.end.i.loopexit ]
  %.lcssa.i = phi i64 [ %sub3.i, %cond.end.i ], [ %add3.i120, %while.end.i.loopexit ]
  %shl5.i = shl i64 %.lcssa.i, 32
  %shr6.i = lshr i64 %rem1.0.lcssa.i, 32
  %or.i113 = or i64 %shl5.i, %shr6.i
  %cmp8.i = icmp ugt i64 %shl.i107, %or.i113
  br i1 %cmp8.i, label %cond.false10.i, label %estimateDiv128To64.v0.C.c.exit

cond.false10.i:                                   ; preds = %while.end.i
  %div11.i = udiv i64 %or.i113, %shr.i106
  br label %estimateDiv128To64.v0.C.c.exit

estimateDiv128To64.v0.C.c.exit:                   ; preds = %while.end.i, %cond.false10.i
  %cond13.i = phi i64 [ %div11.i, %cond.false10.i ], [ 4294967295, %while.end.i ]
  %or14.i = or i64 %cond13.i, %z.0.lcssa.i
  %and = and i64 %or14.i, 511
  %cmp54 = icmp ult i64 %and, 3
  br i1 %cmp54, label %if.then56, label %if.end63

if.then56:                                        ; preds = %estimateDiv128To64.v0.C.c.exit
  %shr3.i122 = lshr i64 %or14.i, 32
  %conv6.i = and i64 %or14.i, 4294967295
  %mul.i = mul nuw i64 %conv6.i, %conv5.i
  %mul9.i124 = mul nuw i64 %shr3.i122, %conv5.i
  %mul12.i = mul nuw i64 %conv6.i, %shr.i106
  %mul15.i125 = mul nuw i64 %shr3.i122, %shr.i106
  %add.i126 = add i64 %mul9.i124, %mul12.i
  %cmp.i127 = icmp ult i64 %add.i126, %mul12.i
  %conv17.i = zext i1 %cmp.i127 to i64
  %shl.i128 = shl nuw nsw i64 %conv17.i, 32
  %shr18.i129 = lshr i64 %add.i126, 32
  %add19.i = or i64 %shl.i128, %shr18.i129
  %shl21.i131 = shl i64 %add.i126, 32
  %add22.i = add i64 %shl21.i131, %mul.i
  %cmp23.i = icmp ult i64 %add22.i, %shl21.i131
  %sub.i132 = sub i64 0, %add22.i
  %conv25.i.neg = sext i1 %cmp23.i to i64
  %cmp.i134 = icmp ne i64 %add22.i, 0
  %conv2.neg.i135 = sext i1 %cmp.i134 to i64
  %add20.i130.neg = sub i64 %aSig.1, %mul15.i125
  %add26.i.neg = sub i64 %add20.i130.neg, %add19.i
  %sub1.i133 = add i64 %add26.i.neg, %conv25.i.neg
  %sub3.i136 = add i64 %sub1.i133, %conv2.neg.i135
  %cmp571 = icmp slt i64 %sub3.i136, 0
  br i1 %cmp571, label %while.body.preheader, label %while.end

while.body.preheader:                             ; preds = %if.then56
  br label %while.body

while.body:                                       ; preds = %while.body.preheader, %while.body
  %15 = phi i64 [ %add3.i140, %while.body ], [ %sub3.i136, %while.body.preheader ]
  %zSig.03 = phi i64 [ %dec, %while.body ], [ %or14.i, %while.body.preheader ]
  %rem1.02 = phi i64 [ %add.i137, %while.body ], [ %sub.i132, %while.body.preheader ]
  %dec = add i64 %zSig.03, -1
  %add.i137 = add i64 %rem1.02, %shl47
  %cmp.i138 = icmp ult i64 %add.i137, %rem1.02
  %conv2.i139 = zext i1 %cmp.i138 to i64
  %add3.i140 = add i64 %conv2.i139, %15
  %cmp57 = icmp slt i64 %add3.i140, 0
  br i1 %cmp57, label %while.body, label %while.end.loopexit

while.end.loopexit:                               ; preds = %while.body
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %if.then56
  %rem1.0.lcssa = phi i64 [ %sub.i132, %if.then56 ], [ %add.i137, %while.end.loopexit ]
  %zSig.0.lcssa = phi i64 [ %or14.i, %if.then56 ], [ %dec, %while.end.loopexit ]
  %cmp59 = icmp ne i64 %rem1.0.lcssa, 0
  %conv61 = zext i1 %cmp59 to i64
  %or62 = or i64 %conv61, %zSig.0.lcssa
  br label %if.end63

if.end63:                                         ; preds = %if.end44, %while.end, %estimateDiv128To64.v0.C.c.exit
  %zSig.1 = phi i64 [ %or62, %while.end ], [ %or14.i, %estimateDiv128To64.v0.C.c.exit ], [ -1, %if.end44 ]
  %16 = trunc i64 %zSig.1 to i32
  %conv17.i141 = and i32 %16, 1023
  %conv19.i = and i32 %zExp.0, 65535
  %cmp20.i = icmp ugt i32 %conv19.i, 2044
  br i1 %cmp20.i, label %if.then22.i, label %if.end47.i

if.then22.i:                                      ; preds = %if.end63
  %cmp23.i142 = icmp sgt i32 %zExp.0, 2045
  br i1 %cmp23.i142, label %if.then30.i, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %if.then22.i
  %cmp25.i = icmp eq i32 %zExp.0, 2045
  br i1 %cmp25.i, label %land.lhs.true.i, label %if.end34.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %add.i143 = add i64 %zSig.1, 512
  %cmp28.i = icmp slt i64 %add.i143, 0
  br i1 %cmp28.i, label %if.then30.i, label %if.end47.i

if.then30.i:                                      ; preds = %land.lhs.true.i, %if.then22.i
  tail call void @float_raise.v0.C.c.c(i32 9)
  %call.c.i.c = tail call i64 @packFloat64.v0.C.c.c(i32 %xor, i32 2047, i64 0)
  br label %return

if.end34.i:                                       ; preds = %lor.lhs.false.i
  %cmp35.i = icmp slt i32 %zExp.0, 0
  br i1 %cmp35.i, label %if.then37.i, label %if.end47.i

if.then37.i:                                      ; preds = %if.end34.i
  %cmp1.i148 = icmp sgt i32 %zExp.0, -64
  br i1 %cmp1.i148, label %if.then2.i, label %if.else6.i

if.then2.i:                                       ; preds = %if.then37.i
  %sub38.i = sub nsw i32 0, %zExp.0
  %sh_prom.i149 = zext i32 %sub38.i to i64
  %shr.i150 = lshr i64 %zSig.1, %sh_prom.i149
  %and.i151 = and i32 %zExp.0, 63
  %sh_prom3.i = zext i32 %and.i151 to i64
  %shl.i152 = shl i64 %zSig.1, %sh_prom3.i
  %cmp4.i = icmp ne i64 %shl.i152, 0
  %conv5.i153 = zext i1 %cmp4.i to i64
  %or.i154 = or i64 %conv5.i153, %shr.i150
  br label %shift64RightJamming.v0.C.c.exit

if.else6.i:                                       ; preds = %if.then37.i
  %cmp7.i = icmp ne i64 %zSig.1, 0
  %conv9.i = zext i1 %cmp7.i to i64
  br label %shift64RightJamming.v0.C.c.exit

shift64RightJamming.v0.C.c.exit:                  ; preds = %if.then2.i, %if.else6.i
  %z.1.i = phi i64 [ %or.i154, %if.then2.i ], [ %conv9.i, %if.else6.i ]
  %17 = trunc i64 %z.1.i to i32
  %conv40.i = and i32 %17, 1023
  %tobool43.i = icmp eq i32 %conv40.i, 0
  br i1 %tobool43.i, label %if.end50.i, label %if.end47.thread5.i

if.end47.thread5.i:                               ; preds = %shift64RightJamming.v0.C.c.exit
  tail call void @float_raise.v0.C.c.c(i32 4)
  br label %if.then49.i

if.end47.i:                                       ; preds = %if.end34.i, %land.lhs.true.i, %if.end63
  %zExp.addr.1.i = phi i32 [ %zExp.0, %if.end63 ], [ %zExp.0, %if.end34.i ], [ 2045, %land.lhs.true.i ]
  %tobool48.i = icmp eq i32 %conv17.i141, 0
  br i1 %tobool48.i, label %if.end50.i, label %if.then49.i

if.then49.i:                                      ; preds = %if.end47.i, %if.end47.thread5.i
  %18 = phi i64 [ %z.1.i, %if.end47.thread5.i ], [ %zSig.1, %if.end47.i ]
  %roundBits.18.i = phi i32 [ %conv40.i, %if.end47.thread5.i ], [ %conv17.i141, %if.end47.i ]
  %zExp.addr.17.i = phi i32 [ 0, %if.end47.thread5.i ], [ %zExp.addr.1.i, %if.end47.i ]
  %19 = load i32, i32* @float_exception_flags, align 4
  %or.i144 = or i32 %19, 1
  store i32 %or.i144, i32* @float_exception_flags, align 4
  br label %if.end50.i

if.end50.i:                                       ; preds = %if.then49.i, %if.end47.i, %shift64RightJamming.v0.C.c.exit
  %20 = phi i64 [ %zSig.1, %if.end47.i ], [ %18, %if.then49.i ], [ %z.1.i, %shift64RightJamming.v0.C.c.exit ]
  %roundBits.14.i = phi i32 [ 0, %if.end47.i ], [ %roundBits.18.i, %if.then49.i ], [ 0, %shift64RightJamming.v0.C.c.exit ]
  %zExp.addr.13.i = phi i32 [ %zExp.addr.1.i, %if.end47.i ], [ %zExp.addr.17.i, %if.then49.i ], [ 0, %shift64RightJamming.v0.C.c.exit ]
  %add52.i = add i64 %20, 512
  %shr.i145 = lshr i64 %add52.i, 10
  %cmp53.i = icmp eq i32 %roundBits.14.i, 512
  %conv54.i = zext i1 %cmp53.i to i32
  %neg.i = xor i32 %conv54.i, -1
  %conv56.i = sext i32 %neg.i to i64
  %and57.i = and i64 %conv56.i, %shr.i145
  %cmp58.i = icmp eq i64 %and57.i, 0
  %.zExp.addr.1.i = select i1 %cmp58.i, i32 0, i32 %zExp.addr.13.i
  %call62.c.i.c = tail call i64 @packFloat64.v0.C.c.c(i32 %xor, i32 %.zExp.addr.1.i, i64 %and57.i)
  br label %return

return:                                           ; preds = %if.end50.i, %if.then30.i, %if.end.i27, %if.end.i, %if.end.i54, %cond.false.i59, %cond.false.i32, %cond.false.i, %if.then41, %if.end32, %if.then31, %if.end22, %if.end14, %if.end13
  %retval.0 = phi i64 [ 9223372036854775807, %if.end13 ], [ %call15.c.c, %if.end14 ], [ %call23.c.c, %if.end22 ], [ 9223372036854775807, %if.then31 ], [ %call33.c.c, %if.end32 ], [ %call42.c.c, %if.then41 ], [ %or4.i, %if.end.i ], [ %cond14.i, %cond.false.i ], [ %or4.i22, %if.end.i27 ], [ %cond14.i31, %cond.false.i32 ], [ %or4.i49, %if.end.i54 ], [ %cond14.i58, %cond.false.i59 ], [ %call.c.i.c, %if.then30.i ], [ %call62.c.i.c, %if.end50.i ]
  ret i64 %retval.0
}

; Function Attrs: noinline norecurse nounwind
define void @float_raise.v0.C.c.c(i32 %flags) local_unnamed_addr #2 {
entry:
  %0 = load i32, i32* @float_exception_flags, align 4
  %or = or i32 %0, %flags
  store i32 %or, i32* @float_exception_flags, align 4
  ret void
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
