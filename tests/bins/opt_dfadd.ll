; ModuleID = './../tests/test_cases/dfadd.ll'
source_filename = "dfadd.c"
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

for.body:                                         ; preds = %__non_const_wrapper__.22.exit, %entry
  %i.017 = phi i32 [ 0, %entry ], [ %inc, %__non_const_wrapper__.22.exit ]
  %main_result.016 = phi i32 [ 0, %entry ], [ %add, %__non_const_wrapper__.22.exit ]
  switch i32 %i.017, label %csroa.if.end224.i [
    i32 0, label %__non_const_wrapper__.18.exit.thread
    i32 1, label %__non_const_wrapper__.18.exit.thread1162
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
    i32 15, label %csroa.if.end69.i
    i32 16, label %csroa.if.end79.i
    i32 17, label %csroa.if.end79.i
    i32 18, label %csroa.if.end89.i
    i32 19, label %csroa.if.end94.i
    i32 20, label %csroa.if.end99.i
    i32 21, label %csroa.if.end104.i
    i32 22, label %csroa.if.end109.i
    i32 23, label %csroa.if.end114.i
    i32 24, label %csroa.if.end119.i
    i32 25, label %csroa.if.end124.i
    i32 26, label %csroa.if.end129.i
    i32 27, label %csroa.if.end129.i
    i32 28, label %csroa.if.end129.i
    i32 29, label %csroa.if.end144.i
    i32 30, label %csroa.if.end149.i
    i32 31, label %csroa.if.end154.i
    i32 32, label %csroa.if.end159.i
    i32 33, label %csroa.if.end164.i
    i32 34, label %csroa.if.end169.i
    i32 35, label %csroa.if.end174.i
    i32 36, label %csroa.if.end174.i
    i32 37, label %csroa.if.end184.i
    i32 38, label %csroa.if.end184.i
    i32 39, label %csroa.if.end184.i
    i32 40, label %csroa.if.end199.i
    i32 41, label %csroa.if.end204.i
    i32 42, label %csroa.if.end209.i
    i32 43, label %csroa.if.end214.i
    i32 44, label %csroa.if.end219.i
  ]

__non_const_wrapper__.18.exit.thread1162:         ; preds = %for.body
  %call.c.c1163 = tail call i64 @float64_add.v0.C.c.c(i64 9218868437227405312, i64 4607182418800017408) #6
  br label %csroa.if.end4.i1156

__non_const_wrapper__.18.exit.thread:             ; preds = %for.body
  %call.c.c1160 = tail call i64 @float64_add.v0.C.c.c(i64 9221120237041090560, i64 4607182418800017408) #6
  br label %__non_const_wrapper__.22.exit

csroa.if.end224.i:                                ; preds = %for.body
  br label %csroa.if.end219.i

csroa.if.end219.i:                                ; preds = %for.body, %csroa.if.end224.i
  %.phi220.i = phi i64 [ -4611686018427387904, %csroa.if.end224.i ], [ -4616189618054758400, %for.body ]
  br label %csroa.if.end214.i

csroa.if.end214.i:                                ; preds = %for.body, %csroa.if.end219.i
  %.phi215.i = phi i64 [ %.phi220.i, %csroa.if.end219.i ], [ -4503599627370496, %for.body ]
  br label %csroa.if.end209.i

csroa.if.end209.i:                                ; preds = %for.body, %csroa.if.end214.i
  %.phi210.i = phi i64 [ %.phi215.i, %csroa.if.end214.i ], [ -2251799813685248, %for.body ]
  br label %csroa.if.end204.i

csroa.if.end204.i:                                ; preds = %for.body, %csroa.if.end209.i
  %.phi205.i = phi i64 [ %.phi210.i, %csroa.if.end209.i ], [ -4613937818241073152, %for.body ]
  br label %csroa.if.end199.i

csroa.if.end199.i:                                ; preds = %for.body, %csroa.if.end204.i
  %.phi200.i = phi i64 [ %.phi205.i, %csroa.if.end204.i ], [ -9223372036854775808, %for.body ]
  br label %csroa.if.end184.i

csroa.if.end184.i:                                ; preds = %for.body, %for.body, %csroa.if.end199.i, %for.body
  %.phi185.i = phi i64 [ -4616189618054758400, %for.body ], [ -4616189618054758400, %for.body ], [ %.phi200.i, %csroa.if.end199.i ], [ -4616189618054758400, %for.body ]
  br label %csroa.if.end174.i

csroa.if.end174.i:                                ; preds = %csroa.if.end184.i, %for.body, %for.body
  %.phi175.i = phi i64 [ -4503599627370496, %for.body ], [ %.phi185.i, %csroa.if.end184.i ], [ -4503599627370496, %for.body ]
  br label %csroa.if.end169.i

csroa.if.end169.i:                                ; preds = %for.body, %csroa.if.end174.i
  %.phi170.i = phi i64 [ %.phi175.i, %csroa.if.end174.i ], [ 4611686018427387904, %for.body ]
  br label %csroa.if.end164.i

csroa.if.end164.i:                                ; preds = %for.body, %csroa.if.end169.i
  %.phi165.i = phi i64 [ %.phi170.i, %csroa.if.end169.i ], [ 4607182418800017408, %for.body ]
  br label %csroa.if.end159.i

csroa.if.end159.i:                                ; preds = %for.body, %csroa.if.end164.i
  %.phi160.i = phi i64 [ %.phi165.i, %csroa.if.end164.i ], [ 9218868437227405312, %for.body ]
  br label %csroa.if.end154.i

csroa.if.end154.i:                                ; preds = %for.body, %csroa.if.end159.i
  %.phi155.i = phi i64 [ %.phi160.i, %csroa.if.end159.i ], [ 9221120237041090560, %for.body ]
  br label %csroa.if.end149.i

csroa.if.end149.i:                                ; preds = %for.body, %csroa.if.end154.i
  %.phi150.i = phi i64 [ %.phi155.i, %csroa.if.end154.i ], [ 4609434218613702656, %for.body ]
  br label %csroa.if.end144.i

csroa.if.end144.i:                                ; preds = %for.body, %csroa.if.end149.i
  %.phi145.i = phi i64 [ %.phi150.i, %csroa.if.end149.i ], [ 0, %for.body ]
  br label %csroa.if.end129.i

csroa.if.end129.i:                                ; preds = %for.body, %for.body, %csroa.if.end144.i, %for.body
  %.phi130.i = phi i64 [ 4607182418800017408, %for.body ], [ 4607182418800017408, %for.body ], [ %.phi145.i, %csroa.if.end144.i ], [ 4607182418800017408, %for.body ]
  br label %csroa.if.end124.i

csroa.if.end124.i:                                ; preds = %for.body, %csroa.if.end129.i
  %.phi125.i = phi i64 [ %.phi130.i, %csroa.if.end129.i ], [ 9218868437227405312, %for.body ]
  br label %csroa.if.end119.i

csroa.if.end119.i:                                ; preds = %for.body, %csroa.if.end124.i
  %.phi120.i = phi i64 [ %.phi125.i, %csroa.if.end124.i ], [ 9221120237041090560, %for.body ]
  br label %csroa.if.end114.i

csroa.if.end114.i:                                ; preds = %for.body, %csroa.if.end119.i
  %.phi115.i = phi i64 [ %.phi120.i, %csroa.if.end119.i ], [ -4613937818241073152, %for.body ]
  br label %csroa.if.end109.i

csroa.if.end109.i:                                ; preds = %for.body, %csroa.if.end114.i
  %.phi110.i = phi i64 [ %.phi115.i, %csroa.if.end114.i ], [ -9223372036854775808, %for.body ]
  br label %csroa.if.end104.i

csroa.if.end104.i:                                ; preds = %for.body, %csroa.if.end109.i
  %.phi105.i = phi i64 [ %.phi110.i, %csroa.if.end109.i ], [ -4503599627370496, %for.body ]
  br label %csroa.if.end99.i

csroa.if.end99.i:                                 ; preds = %for.body, %csroa.if.end104.i
  %.phi100.i = phi i64 [ %.phi105.i, %csroa.if.end104.i ], [ -2251799813685248, %for.body ]
  br label %csroa.if.end94.i

csroa.if.end94.i:                                 ; preds = %for.body, %csroa.if.end99.i
  %.phi95.i = phi i64 [ %.phi100.i, %csroa.if.end99.i ], [ -4613937818241073152, %for.body ]
  br label %csroa.if.end89.i

csroa.if.end89.i:                                 ; preds = %for.body, %csroa.if.end94.i
  %.phi90.i = phi i64 [ %.phi95.i, %csroa.if.end94.i ], [ -9223372036854775808, %for.body ]
  br label %csroa.if.end79.i

csroa.if.end79.i:                                 ; preds = %csroa.if.end89.i, %for.body, %for.body
  %.phi80.i = phi i64 [ -4616189618054758400, %for.body ], [ %.phi90.i, %csroa.if.end89.i ], [ -4616189618054758400, %for.body ]
  br label %csroa.if.end69.i

csroa.if.end69.i:                                 ; preds = %csroa.if.end79.i, %for.body, %for.body
  %.phi70.i = phi i64 [ -4611686018427387904, %for.body ], [ %.phi80.i, %csroa.if.end79.i ], [ -4611686018427387904, %for.body ]
  br label %csroa.if.end64.i

csroa.if.end64.i:                                 ; preds = %for.body, %csroa.if.end69.i
  %.phi65.i = phi i64 [ %.phi70.i, %csroa.if.end69.i ], [ -4503599627370496, %for.body ]
  br label %csroa.if.end59.i

csroa.if.end59.i:                                 ; preds = %for.body, %csroa.if.end64.i
  %.phi60.i = phi i64 [ %.phi65.i, %csroa.if.end64.i ], [ -2251799813685248, %for.body ]
  br label %csroa.if.end54.i

csroa.if.end54.i:                                 ; preds = %for.body, %csroa.if.end59.i
  %.phi55.i = phi i64 [ %.phi60.i, %csroa.if.end59.i ], [ 4609434218613702656, %for.body ]
  br label %csroa.if.end49.i

csroa.if.end49.i:                                 ; preds = %for.body, %csroa.if.end54.i
  %.phi50.i = phi i64 [ %.phi55.i, %csroa.if.end54.i ], [ 0, %for.body ]
  br label %csroa.if.end44.i

csroa.if.end44.i:                                 ; preds = %for.body, %csroa.if.end49.i
  %.phi45.i = phi i64 [ %.phi50.i, %csroa.if.end49.i ], [ 9218868437227405312, %for.body ]
  br label %csroa.if.end39.i

csroa.if.end39.i:                                 ; preds = %for.body, %csroa.if.end44.i
  %.phi40.i = phi i64 [ %.phi45.i, %csroa.if.end44.i ], [ 9221120237041090560, %for.body ]
  br label %csroa.if.end34.i

csroa.if.end34.i:                                 ; preds = %for.body, %csroa.if.end39.i
  %.phi35.i = phi i64 [ %.phi40.i, %csroa.if.end39.i ], [ 4609434218613702656, %for.body ]
  br label %csroa.if.end29.i

csroa.if.end29.i:                                 ; preds = %for.body, %csroa.if.end34.i
  %.phi30.i = phi i64 [ %.phi35.i, %csroa.if.end34.i ], [ 0, %for.body ]
  br label %csroa.if.end19.i

csroa.if.end19.i:                                 ; preds = %csroa.if.end29.i, %for.body, %for.body
  %.phi20.i = phi i64 [ 4607182418800017408, %for.body ], [ %.phi30.i, %csroa.if.end29.i ], [ 4607182418800017408, %for.body ]
  br label %__non_const_wrapper__.exit

__non_const_wrapper__.exit:                       ; preds = %for.body, %for.body, %csroa.if.end19.i
  %.phi10.i = phi i64 [ 4611686018427387904, %for.body ], [ %.phi20.i, %csroa.if.end19.i ], [ 4611686018427387904, %for.body ]
  switch i32 %i.017, label %csroa.if.end224.i156 [
    i32 43, label %csroa.if.end209.i162
    i32 44, label %csroa.if.end219.i158
    i32 2, label %__non_const_wrapper__.18.exit.thread1268
    i32 3, label %__non_const_wrapper__.18.exit.thread1272
    i32 4, label %__non_const_wrapper__.18.exit.thread1275
    i32 5, label %__non_const_wrapper__.18.exit.thread1279
    i32 6, label %__non_const_wrapper__.18.exit
    i32 7, label %__non_const_wrapper__.18.exit
    i32 8, label %csroa.if.end39.i230
    i32 9, label %csroa.if.end39.i230
    i32 10, label %csroa.if.end49.i226
    i32 11, label %csroa.if.end54.i224
    i32 12, label %csroa.if.end59.i222
    i32 13, label %csroa.if.end59.i222
    i32 14, label %csroa.if.end69.i218
    i32 15, label %csroa.if.end74.i216
    i32 16, label %csroa.if.end79.i214
    i32 17, label %csroa.if.end84.i212
    i32 18, label %csroa.if.end89.i210
    i32 19, label %csroa.if.end89.i210
    i32 20, label %csroa.if.end99.i206
    i32 21, label %csroa.if.end99.i206
    i32 22, label %csroa.if.end109.i202
    i32 23, label %csroa.if.end114.i200
    i32 24, label %csroa.if.end119.i198
    i32 25, label %csroa.if.end119.i198
    i32 26, label %csroa.if.end129.i194
    i32 27, label %csroa.if.end134.i192
    i32 28, label %csroa.if.end139.i190
    i32 29, label %csroa.if.end144.i188
    i32 30, label %csroa.if.end149.i186
    i32 31, label %csroa.if.end154.i184
    i32 32, label %csroa.if.end154.i184
    i32 33, label %csroa.if.end164.i180
    i32 34, label %csroa.if.end169.i178
    i32 35, label %csroa.if.end174.i176
    i32 36, label %csroa.if.end179.i174
    i32 37, label %csroa.if.end184.i172
    i32 38, label %csroa.if.end189.i170
    i32 39, label %csroa.if.end194.i168
    i32 40, label %csroa.if.end199.i166
    i32 41, label %csroa.if.end204.i164
    i32 42, label %csroa.if.end209.i162
  ]

__non_const_wrapper__.18.exit.thread1279:         ; preds = %__non_const_wrapper__.exit
  %call.c.c1280 = tail call i64 @float64_add.v0.C.c.c(i64 %.phi10.i, i64 9218868437227405312) #6
  br label %csroa.if.end24.i920

__non_const_wrapper__.18.exit.thread1275:         ; preds = %__non_const_wrapper__.exit
  %call.c.c1276 = tail call i64 @float64_add.v0.C.c.c(i64 %.phi10.i, i64 9221120237041090560) #6
  br label %csroa.if.end19.i922

__non_const_wrapper__.18.exit.thread1272:         ; preds = %__non_const_wrapper__.exit
  %call.c.c1273 = tail call i64 @float64_add.v0.C.c.c(i64 %.phi10.i, i64 4609434218613702656) #6
  br label %csroa.if.end14.i924

__non_const_wrapper__.18.exit.thread1268:         ; preds = %__non_const_wrapper__.exit
  %call.c.c1269 = tail call i64 @float64_add.v0.C.c.c(i64 %.phi10.i, i64 0) #6
  br label %csroa.if.end9.i926

csroa.if.end224.i156:                             ; preds = %__non_const_wrapper__.exit
  br label %csroa.if.end219.i158

csroa.if.end219.i158:                             ; preds = %__non_const_wrapper__.exit, %csroa.if.end224.i156
  %.phi220.i157 = phi i64 [ 4609434218613702656, %csroa.if.end224.i156 ], [ 0, %__non_const_wrapper__.exit ]
  br label %csroa.if.end209.i162

csroa.if.end209.i162:                             ; preds = %__non_const_wrapper__.exit, %csroa.if.end219.i158, %__non_const_wrapper__.exit
  %.phi210.i161 = phi i64 [ 4607182418800017408, %__non_const_wrapper__.exit ], [ %.phi220.i157, %csroa.if.end219.i158 ], [ 4607182418800017408, %__non_const_wrapper__.exit ]
  br label %csroa.if.end204.i164

csroa.if.end204.i164:                             ; preds = %__non_const_wrapper__.exit, %csroa.if.end209.i162
  %.phi205.i163 = phi i64 [ %.phi210.i161, %csroa.if.end209.i162 ], [ 4611686018427387904, %__non_const_wrapper__.exit ]
  br label %csroa.if.end199.i166

csroa.if.end199.i166:                             ; preds = %__non_const_wrapper__.exit, %csroa.if.end204.i164
  %.phi200.i165 = phi i64 [ %.phi205.i163, %csroa.if.end204.i164 ], [ 4607182418800017408, %__non_const_wrapper__.exit ]
  br label %csroa.if.end194.i168

csroa.if.end194.i168:                             ; preds = %__non_const_wrapper__.exit, %csroa.if.end199.i166
  %.phi195.i167 = phi i64 [ %.phi200.i165, %csroa.if.end199.i166 ], [ 9218868437227405312, %__non_const_wrapper__.exit ]
  br label %csroa.if.end189.i170

csroa.if.end189.i170:                             ; preds = %__non_const_wrapper__.exit, %csroa.if.end194.i168
  %.phi190.i169 = phi i64 [ %.phi195.i167, %csroa.if.end194.i168 ], [ 9221120237041090560, %__non_const_wrapper__.exit ]
  br label %csroa.if.end184.i172

csroa.if.end184.i172:                             ; preds = %__non_const_wrapper__.exit, %csroa.if.end189.i170
  %.phi185.i171 = phi i64 [ %.phi190.i169, %csroa.if.end189.i170 ], [ 4607182418800017408, %__non_const_wrapper__.exit ]
  br label %csroa.if.end179.i174

csroa.if.end179.i174:                             ; preds = %__non_const_wrapper__.exit, %csroa.if.end184.i172
  %.phi180.i173 = phi i64 [ %.phi185.i171, %csroa.if.end184.i172 ], [ 9218868437227405312, %__non_const_wrapper__.exit ]
  br label %csroa.if.end174.i176

csroa.if.end174.i176:                             ; preds = %__non_const_wrapper__.exit, %csroa.if.end179.i174
  %.phi175.i175 = phi i64 [ %.phi180.i173, %csroa.if.end179.i174 ], [ 9221120237041090560, %__non_const_wrapper__.exit ]
  br label %csroa.if.end169.i178

csroa.if.end169.i178:                             ; preds = %__non_const_wrapper__.exit, %csroa.if.end174.i176
  %.phi170.i177 = phi i64 [ %.phi175.i175, %csroa.if.end174.i176 ], [ -4613937818241073152, %__non_const_wrapper__.exit ]
  br label %csroa.if.end164.i180

csroa.if.end164.i180:                             ; preds = %__non_const_wrapper__.exit, %csroa.if.end169.i178
  %.phi165.i179 = phi i64 [ %.phi170.i177, %csroa.if.end169.i178 ], [ -9223372036854775808, %__non_const_wrapper__.exit ]
  br label %csroa.if.end154.i184

csroa.if.end154.i184:                             ; preds = %csroa.if.end164.i180, %__non_const_wrapper__.exit, %__non_const_wrapper__.exit
  %.phi155.i183 = phi i64 [ -4616189618054758400, %__non_const_wrapper__.exit ], [ %.phi165.i179, %csroa.if.end164.i180 ], [ -4616189618054758400, %__non_const_wrapper__.exit ]
  br label %csroa.if.end149.i186

csroa.if.end149.i186:                             ; preds = %__non_const_wrapper__.exit, %csroa.if.end154.i184
  %.phi150.i185 = phi i64 [ %.phi155.i183, %csroa.if.end154.i184 ], [ -4611686018427387904, %__non_const_wrapper__.exit ]
  br label %csroa.if.end144.i188

csroa.if.end144.i188:                             ; preds = %__non_const_wrapper__.exit, %csroa.if.end149.i186
  %.phi145.i187 = phi i64 [ %.phi150.i185, %csroa.if.end149.i186 ], [ -4616189618054758400, %__non_const_wrapper__.exit ]
  br label %csroa.if.end139.i190

csroa.if.end139.i190:                             ; preds = %__non_const_wrapper__.exit, %csroa.if.end144.i188
  %.phi140.i189 = phi i64 [ %.phi145.i187, %csroa.if.end144.i188 ], [ -4503599627370496, %__non_const_wrapper__.exit ]
  br label %csroa.if.end134.i192

csroa.if.end134.i192:                             ; preds = %__non_const_wrapper__.exit, %csroa.if.end139.i190
  %.phi135.i191 = phi i64 [ %.phi140.i189, %csroa.if.end139.i190 ], [ -2251799813685248, %__non_const_wrapper__.exit ]
  br label %csroa.if.end129.i194

csroa.if.end129.i194:                             ; preds = %__non_const_wrapper__.exit, %csroa.if.end134.i192
  %.phi130.i193 = phi i64 [ %.phi135.i191, %csroa.if.end134.i192 ], [ -4616189618054758400, %__non_const_wrapper__.exit ]
  br label %csroa.if.end119.i198

csroa.if.end119.i198:                             ; preds = %csroa.if.end129.i194, %__non_const_wrapper__.exit, %__non_const_wrapper__.exit
  %.phi120.i197 = phi i64 [ -4503599627370496, %__non_const_wrapper__.exit ], [ %.phi130.i193, %csroa.if.end129.i194 ], [ -4503599627370496, %__non_const_wrapper__.exit ]
  br label %csroa.if.end114.i200

csroa.if.end114.i200:                             ; preds = %__non_const_wrapper__.exit, %csroa.if.end119.i198
  %.phi115.i199 = phi i64 [ %.phi120.i197, %csroa.if.end119.i198 ], [ -4616189618054758400, %__non_const_wrapper__.exit ]
  br label %csroa.if.end109.i202

csroa.if.end109.i202:                             ; preds = %__non_const_wrapper__.exit, %csroa.if.end114.i200
  %.phi110.i201 = phi i64 [ %.phi115.i199, %csroa.if.end114.i200 ], [ -9223372036854775808, %__non_const_wrapper__.exit ]
  br label %csroa.if.end99.i206

csroa.if.end99.i206:                              ; preds = %csroa.if.end109.i202, %__non_const_wrapper__.exit, %__non_const_wrapper__.exit
  %.phi100.i205 = phi i64 [ -4503599627370496, %__non_const_wrapper__.exit ], [ %.phi110.i201, %csroa.if.end109.i202 ], [ -4503599627370496, %__non_const_wrapper__.exit ]
  br label %csroa.if.end89.i210

csroa.if.end89.i210:                              ; preds = %csroa.if.end99.i206, %__non_const_wrapper__.exit, %__non_const_wrapper__.exit
  %.phi90.i209 = phi i64 [ -4611686018427387904, %__non_const_wrapper__.exit ], [ %.phi100.i205, %csroa.if.end99.i206 ], [ -4611686018427387904, %__non_const_wrapper__.exit ]
  br label %csroa.if.end84.i212

csroa.if.end84.i212:                              ; preds = %__non_const_wrapper__.exit, %csroa.if.end89.i210
  %.phi85.i211 = phi i64 [ %.phi90.i209, %csroa.if.end89.i210 ], [ -4503599627370496, %__non_const_wrapper__.exit ]
  br label %csroa.if.end79.i214

csroa.if.end79.i214:                              ; preds = %__non_const_wrapper__.exit, %csroa.if.end84.i212
  %.phi80.i213 = phi i64 [ %.phi85.i211, %csroa.if.end84.i212 ], [ -2251799813685248, %__non_const_wrapper__.exit ]
  br label %csroa.if.end74.i216

csroa.if.end74.i216:                              ; preds = %__non_const_wrapper__.exit, %csroa.if.end79.i214
  %.phi75.i215 = phi i64 [ %.phi80.i213, %csroa.if.end79.i214 ], [ -4613937818241073152, %__non_const_wrapper__.exit ]
  br label %csroa.if.end69.i218

csroa.if.end69.i218:                              ; preds = %__non_const_wrapper__.exit, %csroa.if.end74.i216
  %.phi70.i217 = phi i64 [ %.phi75.i215, %csroa.if.end74.i216 ], [ -9223372036854775808, %__non_const_wrapper__.exit ]
  br label %csroa.if.end59.i222

csroa.if.end59.i222:                              ; preds = %csroa.if.end69.i218, %__non_const_wrapper__.exit, %__non_const_wrapper__.exit
  %.phi60.i221 = phi i64 [ -4616189618054758400, %__non_const_wrapper__.exit ], [ %.phi70.i217, %csroa.if.end69.i218 ], [ -4616189618054758400, %__non_const_wrapper__.exit ]
  br label %csroa.if.end54.i224

csroa.if.end54.i224:                              ; preds = %__non_const_wrapper__.exit, %csroa.if.end59.i222
  %.phi55.i223 = phi i64 [ %.phi60.i221, %csroa.if.end59.i222 ], [ 4607182418800017408, %__non_const_wrapper__.exit ]
  br label %csroa.if.end49.i226

csroa.if.end49.i226:                              ; preds = %__non_const_wrapper__.exit, %csroa.if.end54.i224
  %.phi50.i225 = phi i64 [ %.phi55.i223, %csroa.if.end54.i224 ], [ 0, %__non_const_wrapper__.exit ]
  br label %csroa.if.end39.i230

csroa.if.end39.i230:                              ; preds = %csroa.if.end49.i226, %__non_const_wrapper__.exit, %__non_const_wrapper__.exit
  %.phi40.i229 = phi i64 [ 9218868437227405312, %__non_const_wrapper__.exit ], [ %.phi50.i225, %csroa.if.end49.i226 ], [ 9218868437227405312, %__non_const_wrapper__.exit ]
  br label %__non_const_wrapper__.18.exit

__non_const_wrapper__.18.exit:                    ; preds = %__non_const_wrapper__.exit, %__non_const_wrapper__.exit, %csroa.if.end39.i230
  %.phi30.i233 = phi i64 [ 4611686018427387904, %__non_const_wrapper__.exit ], [ %.phi40.i229, %csroa.if.end39.i230 ], [ 4611686018427387904, %__non_const_wrapper__.exit ]
  %call.c.c = tail call i64 @float64_add.v0.C.c.c(i64 %.phi10.i, i64 %.phi30.i233) #6
  switch i32 %i.017, label %__non_const_wrapper__.20.exit [
    i32 40, label %csroa.if.end199.i850
    i32 41, label %csroa.if.end204.i848
    i32 2, label %csroa.if.end9.i926
    i32 3, label %csroa.if.end14.i924
    i32 4, label %csroa.if.end19.i922
    i32 5, label %csroa.if.end24.i920
    i32 6, label %__non_const_wrapper__.20.exit.thread1288
    i32 7, label %csroa.if.end29.i918
    i32 8, label %__non_const_wrapper__.20.exit.thread1292
    i32 9, label %csroa.if.end39.i914
    i32 10, label %csroa.if.end49.i910
    i32 11, label %csroa.if.end54.i908
    i32 12, label %__non_const_wrapper__.20.exit.thread1302
    i32 13, label %csroa.if.end59.i906
    i32 14, label %csroa.if.end69.i902
    i32 15, label %csroa.if.end74.i900
    i32 16, label %csroa.if.end79.i898
    i32 17, label %csroa.if.end84.i896
    i32 18, label %__non_const_wrapper__.20.exit.thread1318
    i32 19, label %csroa.if.end89.i894
    i32 20, label %__non_const_wrapper__.20.exit.thread1322
    i32 21, label %csroa.if.end99.i890
    i32 22, label %csroa.if.end109.i886
    i32 23, label %csroa.if.end114.i884
    i32 24, label %__non_const_wrapper__.20.exit.thread1332
    i32 25, label %csroa.if.end119.i882
    i32 26, label %csroa.if.end129.i878
    i32 27, label %csroa.if.end134.i876
    i32 28, label %csroa.if.end139.i874
    i32 29, label %csroa.if.end144.i872
    i32 30, label %csroa.if.end149.i870
    i32 31, label %__non_const_wrapper__.20.exit.thread1351
    i32 32, label %csroa.if.end154.i868
    i32 33, label %csroa.if.end164.i864
    i32 34, label %csroa.if.end169.i862
    i32 35, label %csroa.if.end174.i860
    i32 36, label %csroa.if.end179.i858
    i32 37, label %csroa.if.end184.i856
    i32 38, label %csroa.if.end189.i854
    i32 39, label %csroa.if.end194.i852
    i32 42, label %__non_const_wrapper__.20.exit.thread1382
    i32 43, label %csroa.if.end209.i846
    i32 44, label %csroa.if.end219.i842
  ]

__non_const_wrapper__.20.exit.thread1382:         ; preds = %__non_const_wrapper__.18.exit
  br label %csroa.if.end209.i846

__non_const_wrapper__.20.exit.thread1351:         ; preds = %__non_const_wrapper__.18.exit
  br label %csroa.if.end154.i868

__non_const_wrapper__.20.exit.thread1332:         ; preds = %__non_const_wrapper__.18.exit
  br label %csroa.if.end119.i882

__non_const_wrapper__.20.exit.thread1322:         ; preds = %__non_const_wrapper__.18.exit
  br label %csroa.if.end99.i890

__non_const_wrapper__.20.exit.thread1318:         ; preds = %__non_const_wrapper__.18.exit
  br label %csroa.if.end89.i894

__non_const_wrapper__.20.exit.thread1302:         ; preds = %__non_const_wrapper__.18.exit
  br label %csroa.if.end59.i906

__non_const_wrapper__.20.exit.thread1292:         ; preds = %__non_const_wrapper__.18.exit
  br label %csroa.if.end39.i914

__non_const_wrapper__.20.exit.thread1288:         ; preds = %__non_const_wrapper__.18.exit
  br label %csroa.if.end29.i918

__non_const_wrapper__.20.exit:                    ; preds = %__non_const_wrapper__.18.exit
  switch i32 %i.017, label %csroa.if.end219.i842 [
    i32 0, label %__non_const_wrapper__.21.exit
    i32 1, label %__non_const_wrapper__.21.exit
    i32 2, label %csroa.if.end9.i926
    i32 3, label %csroa.if.end14.i924
    i32 4, label %csroa.if.end19.i922
    i32 5, label %csroa.if.end24.i920
    i32 6, label %csroa.if.end29.i918
    i32 7, label %csroa.if.end29.i918
    i32 8, label %csroa.if.end39.i914
    i32 9, label %csroa.if.end39.i914
    i32 10, label %csroa.if.end49.i910
    i32 11, label %csroa.if.end54.i908
    i32 12, label %csroa.if.end59.i906
    i32 13, label %csroa.if.end59.i906
    i32 14, label %csroa.if.end69.i902
    i32 15, label %csroa.if.end74.i900
    i32 16, label %csroa.if.end79.i898
    i32 17, label %csroa.if.end84.i896
    i32 18, label %csroa.if.end89.i894
    i32 19, label %csroa.if.end89.i894
    i32 20, label %csroa.if.end99.i890
    i32 21, label %csroa.if.end99.i890
    i32 22, label %csroa.if.end109.i886
    i32 23, label %csroa.if.end114.i884
    i32 24, label %csroa.if.end119.i882
    i32 25, label %csroa.if.end119.i882
    i32 26, label %csroa.if.end129.i878
    i32 27, label %csroa.if.end134.i876
    i32 28, label %csroa.if.end139.i874
    i32 29, label %csroa.if.end144.i872
    i32 30, label %csroa.if.end149.i870
    i32 31, label %csroa.if.end154.i868
    i32 32, label %csroa.if.end154.i868
    i32 33, label %csroa.if.end164.i864
    i32 34, label %csroa.if.end169.i862
    i32 35, label %csroa.if.end174.i860
    i32 36, label %csroa.if.end179.i858
    i32 37, label %csroa.if.end184.i856
    i32 38, label %csroa.if.end189.i854
  ]

csroa.if.end219.i842:                             ; preds = %__non_const_wrapper__.20.exit, %__non_const_wrapper__.18.exit
  %.phi220.i6131388 = phi i64 [ -4616189618054758400, %__non_const_wrapper__.18.exit ], [ -4611686018427387904, %__non_const_wrapper__.20.exit ]
  %.phi220.i38512471387 = phi i64 [ -4616189618054758400, %__non_const_wrapper__.18.exit ], [ -4620693217682128896, %__non_const_wrapper__.20.exit ]
  %.phi220.i841 = phi i64 [ 0, %__non_const_wrapper__.18.exit ], [ 4609434218613702656, %__non_const_wrapper__.20.exit ]
  br label %csroa.if.end209.i846

csroa.if.end209.i846:                             ; preds = %__non_const_wrapper__.18.exit, %__non_const_wrapper__.20.exit.thread1382, %csroa.if.end219.i842
  %.phi210.i6171384 = phi i64 [ %.phi220.i6131388, %csroa.if.end219.i842 ], [ -2251799813685248, %__non_const_wrapper__.20.exit.thread1382 ], [ -4503599627370496, %__non_const_wrapper__.18.exit ]
  %.phi205.i39112431383 = phi i64 [ %.phi220.i38512471387, %csroa.if.end219.i842 ], [ -2251799813685248, %__non_const_wrapper__.20.exit.thread1382 ], [ -4503599627370496, %__non_const_wrapper__.18.exit ]
  %.phi210.i845 = phi i64 [ %.phi220.i841, %csroa.if.end219.i842 ], [ 4607182418800017408, %__non_const_wrapper__.20.exit.thread1382 ], [ 4607182418800017408, %__non_const_wrapper__.18.exit ]
  br label %csroa.if.end204.i848

csroa.if.end204.i848:                             ; preds = %__non_const_wrapper__.18.exit, %csroa.if.end209.i846
  %.phi205.i6191381 = phi i64 [ %.phi210.i6171384, %csroa.if.end209.i846 ], [ -4613937818241073152, %__non_const_wrapper__.18.exit ]
  %.phi205.i39112411380 = phi i64 [ %.phi205.i39112431383, %csroa.if.end209.i846 ], [ 4602678819172646912, %__non_const_wrapper__.18.exit ]
  %.phi205.i847 = phi i64 [ %.phi210.i845, %csroa.if.end209.i846 ], [ 4611686018427387904, %__non_const_wrapper__.18.exit ]
  br label %csroa.if.end199.i850

csroa.if.end199.i850:                             ; preds = %__non_const_wrapper__.18.exit, %csroa.if.end204.i848
  %.phi200.i6211378 = phi i64 [ %.phi205.i6191381, %csroa.if.end204.i848 ], [ -9223372036854775808, %__non_const_wrapper__.18.exit ]
  %.phi200.i39312391377 = phi i64 [ %.phi205.i39112411380, %csroa.if.end204.i848 ], [ 4607182418800017408, %__non_const_wrapper__.18.exit ]
  %.phi200.i849 = phi i64 [ %.phi205.i847, %csroa.if.end204.i848 ], [ 4607182418800017408, %__non_const_wrapper__.18.exit ]
  br label %csroa.if.end194.i852

csroa.if.end194.i852:                             ; preds = %__non_const_wrapper__.18.exit, %csroa.if.end199.i850
  %.phi185.i6271375 = phi i64 [ %.phi200.i6211378, %csroa.if.end199.i850 ], [ -4616189618054758400, %__non_const_wrapper__.18.exit ]
  %.phi185.i39912351374 = phi i64 [ %.phi200.i39312391377, %csroa.if.end199.i850 ], [ 9218868437227405312, %__non_const_wrapper__.18.exit ]
  %.phi195.i851 = phi i64 [ %.phi200.i849, %csroa.if.end199.i850 ], [ 9218868437227405312, %__non_const_wrapper__.18.exit ]
  br label %csroa.if.end189.i854

csroa.if.end189.i854:                             ; preds = %__non_const_wrapper__.18.exit, %__non_const_wrapper__.20.exit, %csroa.if.end194.i852
  %.phi185.i6271372 = phi i64 [ %.phi185.i6271375, %csroa.if.end194.i852 ], [ -4611686018427387904, %__non_const_wrapper__.20.exit ], [ -4616189618054758400, %__non_const_wrapper__.18.exit ]
  %.phi185.i39912351371 = phi i64 [ %.phi185.i39912351374, %csroa.if.end194.i852 ], [ -4620693217682128896, %__non_const_wrapper__.20.exit ], [ 9221120237041090560, %__non_const_wrapper__.18.exit ]
  %.phi190.i853 = phi i64 [ %.phi195.i851, %csroa.if.end194.i852 ], [ 9221120237041090560, %__non_const_wrapper__.20.exit ], [ 9221120237041090560, %__non_const_wrapper__.18.exit ]
  br label %csroa.if.end184.i856

csroa.if.end184.i856:                             ; preds = %__non_const_wrapper__.18.exit, %__non_const_wrapper__.20.exit, %csroa.if.end189.i854
  %.phi185.i6271369 = phi i64 [ %.phi185.i6271372, %csroa.if.end189.i854 ], [ -4611686018427387904, %__non_const_wrapper__.20.exit ], [ -4616189618054758400, %__non_const_wrapper__.18.exit ]
  %.phi185.i39912351368 = phi i64 [ %.phi185.i39912351371, %csroa.if.end189.i854 ], [ -4620693217682128896, %__non_const_wrapper__.20.exit ], [ 0, %__non_const_wrapper__.18.exit ]
  %.phi185.i855 = phi i64 [ %.phi190.i853, %csroa.if.end189.i854 ], [ 4607182418800017408, %__non_const_wrapper__.20.exit ], [ 4607182418800017408, %__non_const_wrapper__.18.exit ]
  br label %csroa.if.end179.i858

csroa.if.end179.i858:                             ; preds = %__non_const_wrapper__.18.exit, %__non_const_wrapper__.20.exit, %csroa.if.end184.i856
  %.phi175.i6311366 = phi i64 [ %.phi185.i6271369, %csroa.if.end184.i856 ], [ -4611686018427387904, %__non_const_wrapper__.20.exit ], [ -4503599627370496, %__non_const_wrapper__.18.exit ]
  %.phi175.i40312321365 = phi i64 [ %.phi185.i39912351368, %csroa.if.end184.i856 ], [ -4620693217682128896, %__non_const_wrapper__.20.exit ], [ 9223372036854775807, %__non_const_wrapper__.18.exit ]
  %.phi180.i857 = phi i64 [ %.phi185.i855, %csroa.if.end184.i856 ], [ 9218868437227405312, %__non_const_wrapper__.20.exit ], [ 9218868437227405312, %__non_const_wrapper__.18.exit ]
  br label %csroa.if.end174.i860

csroa.if.end174.i860:                             ; preds = %__non_const_wrapper__.18.exit, %__non_const_wrapper__.20.exit, %csroa.if.end179.i858
  %.phi175.i6311363 = phi i64 [ %.phi175.i6311366, %csroa.if.end179.i858 ], [ -4611686018427387904, %__non_const_wrapper__.20.exit ], [ -4503599627370496, %__non_const_wrapper__.18.exit ]
  %.phi175.i40312321362 = phi i64 [ %.phi175.i40312321365, %csroa.if.end179.i858 ], [ -4620693217682128896, %__non_const_wrapper__.20.exit ], [ 9221120237041090560, %__non_const_wrapper__.18.exit ]
  %.phi175.i859 = phi i64 [ %.phi180.i857, %csroa.if.end179.i858 ], [ 9221120237041090560, %__non_const_wrapper__.20.exit ], [ 9221120237041090560, %__non_const_wrapper__.18.exit ]
  br label %csroa.if.end169.i862

csroa.if.end169.i862:                             ; preds = %__non_const_wrapper__.18.exit, %__non_const_wrapper__.20.exit, %csroa.if.end174.i860
  %.phi170.i6331360 = phi i64 [ %.phi175.i6311363, %csroa.if.end174.i860 ], [ -4611686018427387904, %__non_const_wrapper__.20.exit ], [ 4611686018427387904, %__non_const_wrapper__.18.exit ]
  %.phi170.i40512301359 = phi i64 [ %.phi175.i40312321362, %csroa.if.end174.i860 ], [ -4620693217682128896, %__non_const_wrapper__.20.exit ], [ 4602678819172646912, %__non_const_wrapper__.18.exit ]
  %.phi170.i861 = phi i64 [ %.phi175.i859, %csroa.if.end174.i860 ], [ -4613937818241073152, %__non_const_wrapper__.20.exit ], [ -4613937818241073152, %__non_const_wrapper__.18.exit ]
  br label %csroa.if.end164.i864

csroa.if.end164.i864:                             ; preds = %__non_const_wrapper__.18.exit, %__non_const_wrapper__.20.exit, %csroa.if.end169.i862
  %.phi165.i6351357 = phi i64 [ %.phi170.i6331360, %csroa.if.end169.i862 ], [ -4611686018427387904, %__non_const_wrapper__.20.exit ], [ 4607182418800017408, %__non_const_wrapper__.18.exit ]
  %.phi165.i40712281356 = phi i64 [ %.phi170.i40512301359, %csroa.if.end169.i862 ], [ -4620693217682128896, %__non_const_wrapper__.20.exit ], [ 4607182418800017408, %__non_const_wrapper__.18.exit ]
  %.phi165.i863 = phi i64 [ %.phi170.i861, %csroa.if.end169.i862 ], [ -9223372036854775808, %__non_const_wrapper__.20.exit ], [ -9223372036854775808, %__non_const_wrapper__.18.exit ]
  br label %csroa.if.end154.i868

csroa.if.end154.i868:                             ; preds = %__non_const_wrapper__.18.exit, %__non_const_wrapper__.20.exit.thread1351, %csroa.if.end164.i864, %__non_const_wrapper__.20.exit, %__non_const_wrapper__.20.exit
  %.phi155.i6391353 = phi i64 [ -4611686018427387904, %__non_const_wrapper__.20.exit ], [ %.phi165.i6351357, %csroa.if.end164.i864 ], [ -4611686018427387904, %__non_const_wrapper__.20.exit ], [ 9221120237041090560, %__non_const_wrapper__.20.exit.thread1351 ], [ 9218868437227405312, %__non_const_wrapper__.18.exit ]
  %.phi155.i41112241352 = phi i64 [ -4620693217682128896, %__non_const_wrapper__.20.exit ], [ %.phi165.i40712281356, %csroa.if.end164.i864 ], [ -4620693217682128896, %__non_const_wrapper__.20.exit ], [ 9221120237041090560, %__non_const_wrapper__.20.exit.thread1351 ], [ 9218868437227405312, %__non_const_wrapper__.18.exit ]
  %.phi155.i867 = phi i64 [ -4616189618054758400, %__non_const_wrapper__.20.exit ], [ %.phi165.i863, %csroa.if.end164.i864 ], [ -4616189618054758400, %__non_const_wrapper__.20.exit ], [ -4616189618054758400, %__non_const_wrapper__.20.exit.thread1351 ], [ -4616189618054758400, %__non_const_wrapper__.18.exit ]
  br label %csroa.if.end149.i870

csroa.if.end149.i870:                             ; preds = %__non_const_wrapper__.18.exit, %__non_const_wrapper__.20.exit, %csroa.if.end154.i868
  %.phi150.i6411350 = phi i64 [ %.phi155.i6391353, %csroa.if.end154.i868 ], [ -4611686018427387904, %__non_const_wrapper__.20.exit ], [ 4609434218613702656, %__non_const_wrapper__.18.exit ]
  %.phi150.i41312221349 = phi i64 [ %.phi155.i41112241352, %csroa.if.end154.i868 ], [ -4620693217682128896, %__non_const_wrapper__.20.exit ], [ -4620693217682128896, %__non_const_wrapper__.18.exit ]
  %.phi150.i869 = phi i64 [ %.phi155.i867, %csroa.if.end154.i868 ], [ -4611686018427387904, %__non_const_wrapper__.20.exit ], [ -4611686018427387904, %__non_const_wrapper__.18.exit ]
  br label %csroa.if.end144.i872

csroa.if.end144.i872:                             ; preds = %__non_const_wrapper__.18.exit, %__non_const_wrapper__.20.exit, %csroa.if.end149.i870
  %.phi145.i6431347 = phi i64 [ %.phi150.i6411350, %csroa.if.end149.i870 ], [ -4611686018427387904, %__non_const_wrapper__.20.exit ], [ 0, %__non_const_wrapper__.18.exit ]
  %.phi145.i41512201346 = phi i64 [ %.phi150.i41312221349, %csroa.if.end149.i870 ], [ -4620693217682128896, %__non_const_wrapper__.20.exit ], [ -4616189618054758400, %__non_const_wrapper__.18.exit ]
  %.phi145.i871 = phi i64 [ %.phi150.i869, %csroa.if.end149.i870 ], [ -4616189618054758400, %__non_const_wrapper__.20.exit ], [ -4616189618054758400, %__non_const_wrapper__.18.exit ]
  br label %csroa.if.end139.i874

csroa.if.end139.i874:                             ; preds = %__non_const_wrapper__.18.exit, %__non_const_wrapper__.20.exit, %csroa.if.end144.i872
  %.phi130.i6491344 = phi i64 [ %.phi145.i6431347, %csroa.if.end144.i872 ], [ -4611686018427387904, %__non_const_wrapper__.20.exit ], [ 4607182418800017408, %__non_const_wrapper__.18.exit ]
  %.phi130.i42112161343 = phi i64 [ %.phi145.i41512201346, %csroa.if.end144.i872 ], [ -4620693217682128896, %__non_const_wrapper__.20.exit ], [ -4503599627370496, %__non_const_wrapper__.18.exit ]
  %.phi140.i873 = phi i64 [ %.phi145.i871, %csroa.if.end144.i872 ], [ -4503599627370496, %__non_const_wrapper__.20.exit ], [ -4503599627370496, %__non_const_wrapper__.18.exit ]
  br label %csroa.if.end134.i876

csroa.if.end134.i876:                             ; preds = %__non_const_wrapper__.18.exit, %__non_const_wrapper__.20.exit, %csroa.if.end139.i874
  %.phi130.i6491341 = phi i64 [ %.phi130.i6491344, %csroa.if.end139.i874 ], [ -4611686018427387904, %__non_const_wrapper__.20.exit ], [ 4607182418800017408, %__non_const_wrapper__.18.exit ]
  %.phi130.i42112161340 = phi i64 [ %.phi130.i42112161343, %csroa.if.end139.i874 ], [ -4620693217682128896, %__non_const_wrapper__.20.exit ], [ -2251799813685248, %__non_const_wrapper__.18.exit ]
  %.phi135.i875 = phi i64 [ %.phi140.i873, %csroa.if.end139.i874 ], [ -2251799813685248, %__non_const_wrapper__.20.exit ], [ -2251799813685248, %__non_const_wrapper__.18.exit ]
  br label %csroa.if.end129.i878

csroa.if.end129.i878:                             ; preds = %__non_const_wrapper__.18.exit, %__non_const_wrapper__.20.exit, %csroa.if.end134.i876
  %.phi130.i6491338 = phi i64 [ %.phi130.i6491341, %csroa.if.end134.i876 ], [ -4611686018427387904, %__non_const_wrapper__.20.exit ], [ 4607182418800017408, %__non_const_wrapper__.18.exit ]
  %.phi130.i42112161337 = phi i64 [ %.phi130.i42112161340, %csroa.if.end134.i876 ], [ -4620693217682128896, %__non_const_wrapper__.20.exit ], [ 0, %__non_const_wrapper__.18.exit ]
  %.phi130.i877 = phi i64 [ %.phi135.i875, %csroa.if.end134.i876 ], [ -4616189618054758400, %__non_const_wrapper__.20.exit ], [ -4616189618054758400, %__non_const_wrapper__.18.exit ]
  br label %csroa.if.end119.i882

csroa.if.end119.i882:                             ; preds = %__non_const_wrapper__.18.exit, %__non_const_wrapper__.20.exit.thread1332, %csroa.if.end129.i878, %__non_const_wrapper__.20.exit, %__non_const_wrapper__.20.exit
  %.phi120.i6531334 = phi i64 [ -4611686018427387904, %__non_const_wrapper__.20.exit ], [ %.phi130.i6491338, %csroa.if.end129.i878 ], [ -4611686018427387904, %__non_const_wrapper__.20.exit ], [ 9221120237041090560, %__non_const_wrapper__.20.exit.thread1332 ], [ 9218868437227405312, %__non_const_wrapper__.18.exit ]
  %.phi120.i42512121333 = phi i64 [ -4620693217682128896, %__non_const_wrapper__.20.exit ], [ %.phi130.i42112161337, %csroa.if.end129.i878 ], [ -4620693217682128896, %__non_const_wrapper__.20.exit ], [ 9221120237041090560, %__non_const_wrapper__.20.exit.thread1332 ], [ 9223372036854775807, %__non_const_wrapper__.18.exit ]
  %.phi120.i881 = phi i64 [ -4503599627370496, %__non_const_wrapper__.20.exit ], [ %.phi130.i877, %csroa.if.end129.i878 ], [ -4503599627370496, %__non_const_wrapper__.20.exit ], [ -4503599627370496, %__non_const_wrapper__.20.exit.thread1332 ], [ -4503599627370496, %__non_const_wrapper__.18.exit ]
  br label %csroa.if.end114.i884

csroa.if.end114.i884:                             ; preds = %__non_const_wrapper__.18.exit, %__non_const_wrapper__.20.exit, %csroa.if.end119.i882
  %.phi115.i6551331 = phi i64 [ %.phi120.i6531334, %csroa.if.end119.i882 ], [ -4611686018427387904, %__non_const_wrapper__.20.exit ], [ -4613937818241073152, %__non_const_wrapper__.18.exit ]
  %.phi115.i42712101330 = phi i64 [ %.phi120.i42512121333, %csroa.if.end119.i882 ], [ -4620693217682128896, %__non_const_wrapper__.20.exit ], [ -4610560118520545280, %__non_const_wrapper__.18.exit ]
  %.phi115.i883 = phi i64 [ %.phi120.i881, %csroa.if.end119.i882 ], [ -4616189618054758400, %__non_const_wrapper__.20.exit ], [ -4616189618054758400, %__non_const_wrapper__.18.exit ]
  br label %csroa.if.end109.i886

csroa.if.end109.i886:                             ; preds = %__non_const_wrapper__.18.exit, %__non_const_wrapper__.20.exit, %csroa.if.end114.i884
  %.phi110.i6571328 = phi i64 [ %.phi115.i6551331, %csroa.if.end114.i884 ], [ -4611686018427387904, %__non_const_wrapper__.20.exit ], [ -9223372036854775808, %__non_const_wrapper__.18.exit ]
  %.phi110.i42912081327 = phi i64 [ %.phi115.i42712101330, %csroa.if.end114.i884 ], [ -4620693217682128896, %__non_const_wrapper__.20.exit ], [ -9223372036854775808, %__non_const_wrapper__.18.exit ]
  %.phi110.i885 = phi i64 [ %.phi115.i883, %csroa.if.end114.i884 ], [ -9223372036854775808, %__non_const_wrapper__.20.exit ], [ -9223372036854775808, %__non_const_wrapper__.18.exit ]
  br label %csroa.if.end99.i890

csroa.if.end99.i890:                              ; preds = %__non_const_wrapper__.18.exit, %__non_const_wrapper__.20.exit.thread1322, %csroa.if.end109.i886, %__non_const_wrapper__.20.exit, %__non_const_wrapper__.20.exit
  %.phi100.i6611324 = phi i64 [ -4611686018427387904, %__non_const_wrapper__.20.exit ], [ %.phi110.i6571328, %csroa.if.end109.i886 ], [ -4611686018427387904, %__non_const_wrapper__.20.exit ], [ -2251799813685248, %__non_const_wrapper__.20.exit.thread1322 ], [ -4503599627370496, %__non_const_wrapper__.18.exit ]
  %.phi100.i43312041323 = phi i64 [ -4620693217682128896, %__non_const_wrapper__.20.exit ], [ %.phi110.i42912081327, %csroa.if.end109.i886 ], [ -4620693217682128896, %__non_const_wrapper__.20.exit ], [ -2251799813685248, %__non_const_wrapper__.20.exit.thread1322 ], [ -4503599627370496, %__non_const_wrapper__.18.exit ]
  %.phi100.i889 = phi i64 [ -4503599627370496, %__non_const_wrapper__.20.exit ], [ %.phi110.i885, %csroa.if.end109.i886 ], [ -4503599627370496, %__non_const_wrapper__.20.exit ], [ -4503599627370496, %__non_const_wrapper__.20.exit.thread1322 ], [ -4503599627370496, %__non_const_wrapper__.18.exit ]
  br label %csroa.if.end89.i894

csroa.if.end89.i894:                              ; preds = %__non_const_wrapper__.18.exit, %__non_const_wrapper__.20.exit.thread1318, %csroa.if.end99.i890, %__non_const_wrapper__.20.exit, %__non_const_wrapper__.20.exit
  %.phi90.i6651320 = phi i64 [ -4611686018427387904, %__non_const_wrapper__.20.exit ], [ %.phi100.i6611324, %csroa.if.end99.i890 ], [ -4611686018427387904, %__non_const_wrapper__.20.exit ], [ -9223372036854775808, %__non_const_wrapper__.20.exit.thread1318 ], [ -4613937818241073152, %__non_const_wrapper__.18.exit ]
  %.phi90.i43712001319 = phi i64 [ -4620693217682128896, %__non_const_wrapper__.20.exit ], [ %.phi100.i43312041323, %csroa.if.end99.i890 ], [ -4620693217682128896, %__non_const_wrapper__.20.exit ], [ -4611686018427387904, %__non_const_wrapper__.20.exit.thread1318 ], [ -4608308318706860032, %__non_const_wrapper__.18.exit ]
  %.phi90.i893 = phi i64 [ -4611686018427387904, %__non_const_wrapper__.20.exit ], [ %.phi100.i889, %csroa.if.end99.i890 ], [ -4611686018427387904, %__non_const_wrapper__.20.exit ], [ -4611686018427387904, %__non_const_wrapper__.20.exit.thread1318 ], [ -4611686018427387904, %__non_const_wrapper__.18.exit ]
  br label %csroa.if.end84.i896

csroa.if.end84.i896:                              ; preds = %__non_const_wrapper__.18.exit, %__non_const_wrapper__.20.exit, %csroa.if.end89.i894
  %.phi80.i6691317 = phi i64 [ %.phi90.i6651320, %csroa.if.end89.i894 ], [ -4611686018427387904, %__non_const_wrapper__.20.exit ], [ -4616189618054758400, %__non_const_wrapper__.18.exit ]
  %.phi80.i44111971316 = phi i64 [ %.phi90.i43712001319, %csroa.if.end89.i894 ], [ -4620693217682128896, %__non_const_wrapper__.20.exit ], [ -4503599627370496, %__non_const_wrapper__.18.exit ]
  %.phi85.i895 = phi i64 [ %.phi90.i893, %csroa.if.end89.i894 ], [ -4503599627370496, %__non_const_wrapper__.20.exit ], [ -4503599627370496, %__non_const_wrapper__.18.exit ]
  br label %csroa.if.end79.i898

csroa.if.end79.i898:                              ; preds = %__non_const_wrapper__.18.exit, %__non_const_wrapper__.20.exit, %csroa.if.end84.i896
  %.phi80.i6691314 = phi i64 [ %.phi80.i6691317, %csroa.if.end84.i896 ], [ -4611686018427387904, %__non_const_wrapper__.20.exit ], [ -4616189618054758400, %__non_const_wrapper__.18.exit ]
  %.phi80.i44111971313 = phi i64 [ %.phi80.i44111971316, %csroa.if.end84.i896 ], [ -4620693217682128896, %__non_const_wrapper__.20.exit ], [ -2251799813685248, %__non_const_wrapper__.18.exit ]
  %.phi80.i897 = phi i64 [ %.phi85.i895, %csroa.if.end84.i896 ], [ -2251799813685248, %__non_const_wrapper__.20.exit ], [ -2251799813685248, %__non_const_wrapper__.18.exit ]
  br label %csroa.if.end74.i900

csroa.if.end74.i900:                              ; preds = %__non_const_wrapper__.18.exit, %__non_const_wrapper__.20.exit, %csroa.if.end79.i898
  %.phi70.i6731311 = phi i64 [ %.phi80.i6691314, %csroa.if.end79.i898 ], [ -4611686018427387904, %__non_const_wrapper__.20.exit ], [ -4611686018427387904, %__non_const_wrapper__.18.exit ]
  %.phi70.i44511941310 = phi i64 [ %.phi80.i44111971313, %csroa.if.end79.i898 ], [ -4620693217682128896, %__non_const_wrapper__.20.exit ], [ -4608308318706860032, %__non_const_wrapper__.18.exit ]
  %.phi75.i899 = phi i64 [ %.phi80.i897, %csroa.if.end79.i898 ], [ -4613937818241073152, %__non_const_wrapper__.20.exit ], [ -4613937818241073152, %__non_const_wrapper__.18.exit ]
  br label %csroa.if.end69.i902

csroa.if.end69.i902:                              ; preds = %__non_const_wrapper__.18.exit, %__non_const_wrapper__.20.exit, %csroa.if.end74.i900
  %.phi70.i6731308 = phi i64 [ %.phi70.i6731311, %csroa.if.end74.i900 ], [ -4611686018427387904, %__non_const_wrapper__.20.exit ], [ -4611686018427387904, %__non_const_wrapper__.18.exit ]
  %.phi70.i44511941307 = phi i64 [ %.phi70.i44511941310, %csroa.if.end74.i900 ], [ -4620693217682128896, %__non_const_wrapper__.20.exit ], [ -4611686018427387904, %__non_const_wrapper__.18.exit ]
  %.phi70.i901 = phi i64 [ %.phi75.i899, %csroa.if.end74.i900 ], [ -9223372036854775808, %__non_const_wrapper__.20.exit ], [ -9223372036854775808, %__non_const_wrapper__.18.exit ]
  br label %csroa.if.end59.i906

csroa.if.end59.i906:                              ; preds = %__non_const_wrapper__.18.exit, %__non_const_wrapper__.20.exit.thread1302, %csroa.if.end69.i902, %__non_const_wrapper__.20.exit, %__non_const_wrapper__.20.exit
  %.phi60.i6771304 = phi i64 [ -4611686018427387904, %__non_const_wrapper__.20.exit ], [ %.phi70.i6731308, %csroa.if.end69.i902 ], [ -4611686018427387904, %__non_const_wrapper__.20.exit ], [ -2251799813685248, %__non_const_wrapper__.20.exit.thread1302 ], [ -4503599627370496, %__non_const_wrapper__.18.exit ]
  %.phi60.i44911901303 = phi i64 [ -4620693217682128896, %__non_const_wrapper__.20.exit ], [ %.phi70.i44511941307, %csroa.if.end69.i902 ], [ -4620693217682128896, %__non_const_wrapper__.20.exit ], [ -2251799813685248, %__non_const_wrapper__.20.exit.thread1302 ], [ -4503599627370496, %__non_const_wrapper__.18.exit ]
  %.phi60.i905 = phi i64 [ -4616189618054758400, %__non_const_wrapper__.20.exit ], [ %.phi70.i901, %csroa.if.end69.i902 ], [ -4616189618054758400, %__non_const_wrapper__.20.exit ], [ -4616189618054758400, %__non_const_wrapper__.20.exit.thread1302 ], [ -4616189618054758400, %__non_const_wrapper__.18.exit ]
  br label %csroa.if.end54.i908

csroa.if.end54.i908:                              ; preds = %__non_const_wrapper__.18.exit, %__non_const_wrapper__.20.exit, %csroa.if.end59.i906
  %.phi55.i6791301 = phi i64 [ %.phi60.i6771304, %csroa.if.end59.i906 ], [ -4611686018427387904, %__non_const_wrapper__.20.exit ], [ 4609434218613702656, %__non_const_wrapper__.18.exit ]
  %.phi55.i45111881300 = phi i64 [ %.phi60.i44911901303, %csroa.if.end59.i906 ], [ -4620693217682128896, %__non_const_wrapper__.20.exit ], [ 4612811918334230528, %__non_const_wrapper__.18.exit ]
  %.phi55.i907 = phi i64 [ %.phi60.i905, %csroa.if.end59.i906 ], [ 4607182418800017408, %__non_const_wrapper__.20.exit ], [ 4607182418800017408, %__non_const_wrapper__.18.exit ]
  br label %csroa.if.end49.i910

csroa.if.end49.i910:                              ; preds = %__non_const_wrapper__.18.exit, %__non_const_wrapper__.20.exit, %csroa.if.end54.i908
  %.phi50.i6811298 = phi i64 [ %.phi55.i6791301, %csroa.if.end54.i908 ], [ -4611686018427387904, %__non_const_wrapper__.20.exit ], [ 0, %__non_const_wrapper__.18.exit ]
  %.phi50.i45311861297 = phi i64 [ %.phi55.i45111881300, %csroa.if.end54.i908 ], [ -4620693217682128896, %__non_const_wrapper__.20.exit ], [ 0, %__non_const_wrapper__.18.exit ]
  %.phi50.i909 = phi i64 [ %.phi55.i907, %csroa.if.end54.i908 ], [ 0, %__non_const_wrapper__.20.exit ], [ 0, %__non_const_wrapper__.18.exit ]
  br label %csroa.if.end39.i914

csroa.if.end39.i914:                              ; preds = %__non_const_wrapper__.18.exit, %__non_const_wrapper__.20.exit.thread1292, %csroa.if.end49.i910, %__non_const_wrapper__.20.exit, %__non_const_wrapper__.20.exit
  %.phi40.i6851294 = phi i64 [ -4611686018427387904, %__non_const_wrapper__.20.exit ], [ %.phi50.i6811298, %csroa.if.end49.i910 ], [ -4611686018427387904, %__non_const_wrapper__.20.exit ], [ 9221120237041090560, %__non_const_wrapper__.20.exit.thread1292 ], [ 9218868437227405312, %__non_const_wrapper__.18.exit ]
  %.phi40.i45711821293 = phi i64 [ -4620693217682128896, %__non_const_wrapper__.20.exit ], [ %.phi50.i45311861297, %csroa.if.end49.i910 ], [ -4620693217682128896, %__non_const_wrapper__.20.exit ], [ 9221120237041090560, %__non_const_wrapper__.20.exit.thread1292 ], [ 9218868437227405312, %__non_const_wrapper__.18.exit ]
  %.phi40.i913 = phi i64 [ 9218868437227405312, %__non_const_wrapper__.20.exit ], [ %.phi50.i909, %csroa.if.end49.i910 ], [ 9218868437227405312, %__non_const_wrapper__.20.exit ], [ 9218868437227405312, %__non_const_wrapper__.20.exit.thread1292 ], [ 9218868437227405312, %__non_const_wrapper__.18.exit ]
  br label %csroa.if.end29.i918

csroa.if.end29.i918:                              ; preds = %__non_const_wrapper__.18.exit, %__non_const_wrapper__.20.exit.thread1288, %csroa.if.end39.i914, %__non_const_wrapper__.20.exit, %__non_const_wrapper__.20.exit
  %.phi30.i6891290 = phi i64 [ -4611686018427387904, %__non_const_wrapper__.20.exit ], [ %.phi40.i6851294, %csroa.if.end39.i914 ], [ -4611686018427387904, %__non_const_wrapper__.20.exit ], [ 0, %__non_const_wrapper__.20.exit.thread1288 ], [ 4609434218613702656, %__non_const_wrapper__.18.exit ]
  %.phi30.i46111781289 = phi i64 [ -4620693217682128896, %__non_const_wrapper__.20.exit ], [ %.phi40.i45711821293, %csroa.if.end39.i914 ], [ -4620693217682128896, %__non_const_wrapper__.20.exit ], [ 4611686018427387904, %__non_const_wrapper__.20.exit.thread1288 ], [ 4615063718147915776, %__non_const_wrapper__.18.exit ]
  %.phi30.i917 = phi i64 [ 4611686018427387904, %__non_const_wrapper__.20.exit ], [ %.phi40.i913, %csroa.if.end39.i914 ], [ 4611686018427387904, %__non_const_wrapper__.20.exit ], [ 4611686018427387904, %__non_const_wrapper__.20.exit.thread1288 ], [ 4611686018427387904, %__non_const_wrapper__.18.exit ]
  br label %csroa.if.end24.i920

csroa.if.end24.i920:                              ; preds = %__non_const_wrapper__.18.exit, %__non_const_wrapper__.18.exit.thread1279, %__non_const_wrapper__.20.exit, %csroa.if.end29.i918
  %.phi20.i6931285 = phi i64 [ %.phi30.i6891290, %csroa.if.end29.i918 ], [ -4611686018427387904, %__non_const_wrapper__.20.exit ], [ 4607182418800017408, %__non_const_wrapper__.18.exit.thread1279 ], [ 4607182418800017408, %__non_const_wrapper__.18.exit ]
  %.phi20.i46511751283 = phi i64 [ %.phi30.i46111781289, %csroa.if.end29.i918 ], [ -4620693217682128896, %__non_const_wrapper__.20.exit ], [ 9218868437227405312, %__non_const_wrapper__.18.exit.thread1279 ], [ 9218868437227405312, %__non_const_wrapper__.18.exit ]
  %call.c.c12771281 = phi i64 [ %call.c.c, %csroa.if.end29.i918 ], [ %call.c.c, %__non_const_wrapper__.20.exit ], [ %call.c.c1280, %__non_const_wrapper__.18.exit.thread1279 ], [ %call.c.c, %__non_const_wrapper__.18.exit ]
  %.phi25.i919 = phi i64 [ %.phi30.i917, %csroa.if.end29.i918 ], [ 9218868437227405312, %__non_const_wrapper__.20.exit ], [ 9218868437227405312, %__non_const_wrapper__.18.exit.thread1279 ], [ 9218868437227405312, %__non_const_wrapper__.18.exit ]
  br label %csroa.if.end19.i922

csroa.if.end19.i922:                              ; preds = %__non_const_wrapper__.18.exit.thread1275, %__non_const_wrapper__.18.exit, %__non_const_wrapper__.20.exit, %csroa.if.end24.i920
  %.phi20.i6931286 = phi i64 [ %.phi20.i6931285, %csroa.if.end24.i920 ], [ -4611686018427387904, %__non_const_wrapper__.20.exit ], [ 4607182418800017408, %__non_const_wrapper__.18.exit ], [ 4607182418800017408, %__non_const_wrapper__.18.exit.thread1275 ]
  %.phi20.i46511751284 = phi i64 [ %.phi20.i46511751283, %csroa.if.end24.i920 ], [ -4620693217682128896, %__non_const_wrapper__.20.exit ], [ 9221120237041090560, %__non_const_wrapper__.18.exit ], [ 9221120237041090560, %__non_const_wrapper__.18.exit.thread1275 ]
  %call.c.c12771282 = phi i64 [ %call.c.c12771281, %csroa.if.end24.i920 ], [ %call.c.c, %__non_const_wrapper__.20.exit ], [ %call.c.c, %__non_const_wrapper__.18.exit ], [ %call.c.c1276, %__non_const_wrapper__.18.exit.thread1275 ]
  %.phi20.i921 = phi i64 [ %.phi25.i919, %csroa.if.end24.i920 ], [ 9221120237041090560, %__non_const_wrapper__.20.exit ], [ 9221120237041090560, %__non_const_wrapper__.18.exit ], [ 9221120237041090560, %__non_const_wrapper__.18.exit.thread1275 ]
  br label %csroa.if.end14.i924

csroa.if.end14.i924:                              ; preds = %__non_const_wrapper__.18.exit.thread1272, %__non_const_wrapper__.18.exit, %__non_const_wrapper__.20.exit, %csroa.if.end19.i922
  %call.c.c1274 = phi i64 [ %call.c.c12771282, %csroa.if.end19.i922 ], [ %call.c.c, %__non_const_wrapper__.20.exit ], [ %call.c.c, %__non_const_wrapper__.18.exit ], [ %call.c.c1273, %__non_const_wrapper__.18.exit.thread1272 ]
  %.phi10.i6971258 = phi i64 [ %.phi20.i6931286, %csroa.if.end19.i922 ], [ -4611686018427387904, %__non_const_wrapper__.20.exit ], [ 4611686018427387904, %__non_const_wrapper__.18.exit ], [ 4611686018427387904, %__non_const_wrapper__.18.exit.thread1272 ]
  %.phi10.i46911721257 = phi i64 [ %.phi20.i46511751284, %csroa.if.end19.i922 ], [ -4620693217682128896, %__non_const_wrapper__.20.exit ], [ 4615063718147915776, %__non_const_wrapper__.18.exit ], [ 4615063718147915776, %__non_const_wrapper__.18.exit.thread1272 ]
  %.phi15.i923 = phi i64 [ %.phi20.i921, %csroa.if.end19.i922 ], [ 4609434218613702656, %__non_const_wrapper__.20.exit ], [ 4609434218613702656, %__non_const_wrapper__.18.exit ], [ 4609434218613702656, %__non_const_wrapper__.18.exit.thread1272 ]
  br label %csroa.if.end9.i926

csroa.if.end9.i926:                               ; preds = %__non_const_wrapper__.18.exit.thread1268, %__non_const_wrapper__.18.exit, %__non_const_wrapper__.20.exit, %csroa.if.end14.i924
  %call.c.c1271 = phi i64 [ %call.c.c1274, %csroa.if.end14.i924 ], [ %call.c.c, %__non_const_wrapper__.20.exit ], [ %call.c.c, %__non_const_wrapper__.18.exit ], [ %call.c.c1269, %__non_const_wrapper__.18.exit.thread1268 ]
  %.phi10.i6971255 = phi i64 [ %.phi10.i6971258, %csroa.if.end14.i924 ], [ -4611686018427387904, %__non_const_wrapper__.20.exit ], [ 4611686018427387904, %__non_const_wrapper__.18.exit ], [ 4611686018427387904, %__non_const_wrapper__.18.exit.thread1268 ]
  %.phi10.i46911721254 = phi i64 [ %.phi10.i46911721257, %csroa.if.end14.i924 ], [ -4620693217682128896, %__non_const_wrapper__.20.exit ], [ 4611686018427387904, %__non_const_wrapper__.18.exit ], [ 4611686018427387904, %__non_const_wrapper__.18.exit.thread1268 ]
  %.phi10.i925 = phi i64 [ %.phi15.i923, %csroa.if.end14.i924 ], [ 0, %__non_const_wrapper__.20.exit ], [ 0, %__non_const_wrapper__.18.exit ], [ 0, %__non_const_wrapper__.18.exit.thread1268 ]
  br label %__non_const_wrapper__.21.exit

__non_const_wrapper__.21.exit:                    ; preds = %csroa.if.end9.i926, %__non_const_wrapper__.20.exit, %__non_const_wrapper__.20.exit
  %call.c.c1270 = phi i64 [ %call.c.c, %__non_const_wrapper__.20.exit ], [ %call.c.c1271, %csroa.if.end9.i926 ], [ %call.c.c, %__non_const_wrapper__.20.exit ]
  %.phi.i7011250 = phi i64 [ -4611686018427387904, %__non_const_wrapper__.20.exit ], [ %.phi10.i6971255, %csroa.if.end9.i926 ], [ -4611686018427387904, %__non_const_wrapper__.20.exit ]
  %.phi.i47311661248 = phi i64 [ -4620693217682128896, %__non_const_wrapper__.20.exit ], [ %.phi10.i46911721254, %csroa.if.end9.i926 ], [ -4620693217682128896, %__non_const_wrapper__.20.exit ]
  %.phi.i929 = phi i64 [ 4607182418800017408, %__non_const_wrapper__.20.exit ], [ %.phi10.i925, %csroa.if.end9.i926 ], [ 4607182418800017408, %__non_const_wrapper__.20.exit ]
  switch i32 %i.017, label %csroa.if.else203.i1056 [
    i32 0, label %__non_const_wrapper__.22.exit
    i32 1, label %csroa.if.end4.i1156
    i32 2, label %csroa.if.end9.i1154
    i32 3, label %csroa.if.end14.i1152
    i32 4, label %csroa.if.end19.i1150
    i32 5, label %csroa.if.end24.i1148
    i32 6, label %csroa.if.end29.i1146
    i32 7, label %csroa.if.end34.i1144
    i32 8, label %csroa.if.end39.i1142
    i32 9, label %csroa.if.end44.i1140
    i32 10, label %csroa.if.end49.i1138
    i32 11, label %csroa.if.end54.i1136
    i32 12, label %csroa.if.end59.i1134
    i32 13, label %csroa.if.end64.i1132
    i32 14, label %csroa.if.end69.i1130
    i32 15, label %csroa.if.end74.i1128
    i32 16, label %csroa.if.end79.i1126
    i32 17, label %csroa.if.end84.i1124
    i32 18, label %csroa.if.end89.i1122
    i32 19, label %csroa.if.end94.i1120
    i32 20, label %csroa.if.end99.i1118
    i32 21, label %csroa.if.end104.i1116
    i32 22, label %csroa.if.end109.i1114
    i32 23, label %csroa.if.end114.i1112
    i32 24, label %csroa.if.end119.i1110
    i32 25, label %csroa.if.end124.i1108
    i32 26, label %csroa.if.end129.i1106
    i32 27, label %csroa.if.end134.i1104
    i32 28, label %csroa.if.end139.i1102
    i32 29, label %csroa.if.end144.i1100
    i32 30, label %csroa.if.end149.i1098
    i32 31, label %csroa.if.end154.i1096
    i32 32, label %csroa.if.end159.i1094
    i32 33, label %csroa.if.end164.i1092
    i32 34, label %csroa.if.end169.i1090
    i32 35, label %csroa.if.end174.i1088
    i32 36, label %csroa.if.end179.i1086
    i32 37, label %csroa.if.end184.i1084
    i32 38, label %csroa.if.end189.i1082
    i32 39, label %csroa.if.end194.i1080
    i32 40, label %csroa.if.end199.i1078
    i32 41, label %csroa.if.end204.i1076
  ]

csroa.if.else203.i1056:                           ; preds = %__non_const_wrapper__.21.exit
  switch i32 %i.017, label %csroa.if.end224.i1068 [
    i32 42, label %csroa.if.end204.i1076
    i32 43, label %csroa.if.end214.i1072
    i32 44, label %csroa.if.end219.i1070
  ]

csroa.if.end224.i1068:                            ; preds = %csroa.if.else203.i1056
  br label %csroa.if.end219.i1070

csroa.if.end219.i1070:                            ; preds = %csroa.if.else203.i1056, %csroa.if.end224.i1068
  %.phi220.i1069 = phi i64 [ -4620693217682128896, %csroa.if.end224.i1068 ], [ -4616189618054758400, %csroa.if.else203.i1056 ]
  br label %csroa.if.end214.i1072

csroa.if.end214.i1072:                            ; preds = %csroa.if.else203.i1056, %csroa.if.end219.i1070
  %.phi215.i1071 = phi i64 [ %.phi220.i1069, %csroa.if.end219.i1070 ], [ -4503599627370496, %csroa.if.else203.i1056 ]
  br label %csroa.if.end204.i1076

csroa.if.end204.i1076:                            ; preds = %csroa.if.end214.i1072, %csroa.if.else203.i1056, %__non_const_wrapper__.21.exit
  %.phi205.i1075 = phi i64 [ 4602678819172646912, %__non_const_wrapper__.21.exit ], [ %.phi215.i1071, %csroa.if.end214.i1072 ], [ -2251799813685248, %csroa.if.else203.i1056 ]
  br label %csroa.if.end199.i1078

csroa.if.end199.i1078:                            ; preds = %__non_const_wrapper__.21.exit, %csroa.if.end204.i1076
  %.phi200.i1077 = phi i64 [ %.phi205.i1075, %csroa.if.end204.i1076 ], [ 4607182418800017408, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end194.i1080

csroa.if.end194.i1080:                            ; preds = %__non_const_wrapper__.21.exit, %csroa.if.end199.i1078
  %.phi195.i1079 = phi i64 [ %.phi200.i1077, %csroa.if.end199.i1078 ], [ 9218868437227405312, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end189.i1082

csroa.if.end189.i1082:                            ; preds = %__non_const_wrapper__.21.exit, %csroa.if.end194.i1080
  %.phi190.i1081 = phi i64 [ %.phi195.i1079, %csroa.if.end194.i1080 ], [ 9221120237041090560, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end184.i1084

csroa.if.end184.i1084:                            ; preds = %__non_const_wrapper__.21.exit, %csroa.if.end189.i1082
  %.phi185.i1083 = phi i64 [ %.phi190.i1081, %csroa.if.end189.i1082 ], [ 0, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end179.i1086

csroa.if.end179.i1086:                            ; preds = %__non_const_wrapper__.21.exit, %csroa.if.end184.i1084
  %.phi180.i1085 = phi i64 [ %.phi185.i1083, %csroa.if.end184.i1084 ], [ 9223372036854775807, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end174.i1088

csroa.if.end174.i1088:                            ; preds = %__non_const_wrapper__.21.exit, %csroa.if.end179.i1086
  %.phi175.i1087 = phi i64 [ %.phi180.i1085, %csroa.if.end179.i1086 ], [ 9221120237041090560, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end169.i1090

csroa.if.end169.i1090:                            ; preds = %__non_const_wrapper__.21.exit, %csroa.if.end174.i1088
  %.phi170.i1089 = phi i64 [ %.phi175.i1087, %csroa.if.end174.i1088 ], [ 4602678819172646912, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end164.i1092

csroa.if.end164.i1092:                            ; preds = %__non_const_wrapper__.21.exit, %csroa.if.end169.i1090
  %.phi165.i1091 = phi i64 [ %.phi170.i1089, %csroa.if.end169.i1090 ], [ 4607182418800017408, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end159.i1094

csroa.if.end159.i1094:                            ; preds = %__non_const_wrapper__.21.exit, %csroa.if.end164.i1092
  %.phi160.i1093 = phi i64 [ %.phi165.i1091, %csroa.if.end164.i1092 ], [ 9218868437227405312, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end154.i1096

csroa.if.end154.i1096:                            ; preds = %__non_const_wrapper__.21.exit, %csroa.if.end159.i1094
  %.phi155.i1095 = phi i64 [ %.phi160.i1093, %csroa.if.end159.i1094 ], [ 9221120237041090560, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end149.i1098

csroa.if.end149.i1098:                            ; preds = %__non_const_wrapper__.21.exit, %csroa.if.end154.i1096
  %.phi150.i1097 = phi i64 [ %.phi155.i1095, %csroa.if.end154.i1096 ], [ -4620693217682128896, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end144.i1100

csroa.if.end144.i1100:                            ; preds = %__non_const_wrapper__.21.exit, %csroa.if.end149.i1098
  %.phi145.i1099 = phi i64 [ %.phi150.i1097, %csroa.if.end149.i1098 ], [ -4616189618054758400, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end139.i1102

csroa.if.end139.i1102:                            ; preds = %__non_const_wrapper__.21.exit, %csroa.if.end144.i1100
  %.phi140.i1101 = phi i64 [ %.phi145.i1099, %csroa.if.end144.i1100 ], [ -4503599627370496, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end134.i1104

csroa.if.end134.i1104:                            ; preds = %__non_const_wrapper__.21.exit, %csroa.if.end139.i1102
  %.phi135.i1103 = phi i64 [ %.phi140.i1101, %csroa.if.end139.i1102 ], [ -2251799813685248, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end129.i1106

csroa.if.end129.i1106:                            ; preds = %__non_const_wrapper__.21.exit, %csroa.if.end134.i1104
  %.phi130.i1105 = phi i64 [ %.phi135.i1103, %csroa.if.end134.i1104 ], [ 0, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end124.i1108

csroa.if.end124.i1108:                            ; preds = %__non_const_wrapper__.21.exit, %csroa.if.end129.i1106
  %.phi125.i1107 = phi i64 [ %.phi130.i1105, %csroa.if.end129.i1106 ], [ 9223372036854775807, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end119.i1110

csroa.if.end119.i1110:                            ; preds = %__non_const_wrapper__.21.exit, %csroa.if.end124.i1108
  %.phi120.i1109 = phi i64 [ %.phi125.i1107, %csroa.if.end124.i1108 ], [ 9221120237041090560, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end114.i1112

csroa.if.end114.i1112:                            ; preds = %__non_const_wrapper__.21.exit, %csroa.if.end119.i1110
  %.phi115.i1111 = phi i64 [ %.phi120.i1109, %csroa.if.end119.i1110 ], [ -4610560118520545280, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end109.i1114

csroa.if.end109.i1114:                            ; preds = %__non_const_wrapper__.21.exit, %csroa.if.end114.i1112
  %.phi110.i1113 = phi i64 [ %.phi115.i1111, %csroa.if.end114.i1112 ], [ -9223372036854775808, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end104.i1116

csroa.if.end104.i1116:                            ; preds = %__non_const_wrapper__.21.exit, %csroa.if.end109.i1114
  %.phi105.i1115 = phi i64 [ %.phi110.i1113, %csroa.if.end109.i1114 ], [ -4503599627370496, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end99.i1118

csroa.if.end99.i1118:                             ; preds = %__non_const_wrapper__.21.exit, %csroa.if.end104.i1116
  %.phi100.i1117 = phi i64 [ %.phi105.i1115, %csroa.if.end104.i1116 ], [ -2251799813685248, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end94.i1120

csroa.if.end94.i1120:                             ; preds = %__non_const_wrapper__.21.exit, %csroa.if.end99.i1118
  %.phi95.i1119 = phi i64 [ %.phi100.i1117, %csroa.if.end99.i1118 ], [ -4608308318706860032, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end89.i1122

csroa.if.end89.i1122:                             ; preds = %__non_const_wrapper__.21.exit, %csroa.if.end94.i1120
  %.phi90.i1121 = phi i64 [ %.phi95.i1119, %csroa.if.end94.i1120 ], [ -4611686018427387904, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end84.i1124

csroa.if.end84.i1124:                             ; preds = %__non_const_wrapper__.21.exit, %csroa.if.end89.i1122
  %.phi85.i1123 = phi i64 [ %.phi90.i1121, %csroa.if.end89.i1122 ], [ -4503599627370496, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end79.i1126

csroa.if.end79.i1126:                             ; preds = %__non_const_wrapper__.21.exit, %csroa.if.end84.i1124
  %.phi80.i1125 = phi i64 [ %.phi85.i1123, %csroa.if.end84.i1124 ], [ -2251799813685248, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end74.i1128

csroa.if.end74.i1128:                             ; preds = %__non_const_wrapper__.21.exit, %csroa.if.end79.i1126
  %.phi75.i1127 = phi i64 [ %.phi80.i1125, %csroa.if.end79.i1126 ], [ -4608308318706860032, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end69.i1130

csroa.if.end69.i1130:                             ; preds = %__non_const_wrapper__.21.exit, %csroa.if.end74.i1128
  %.phi70.i1129 = phi i64 [ %.phi75.i1127, %csroa.if.end74.i1128 ], [ -4611686018427387904, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end64.i1132

csroa.if.end64.i1132:                             ; preds = %__non_const_wrapper__.21.exit, %csroa.if.end69.i1130
  %.phi65.i1131 = phi i64 [ %.phi70.i1129, %csroa.if.end69.i1130 ], [ -4503599627370496, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end59.i1134

csroa.if.end59.i1134:                             ; preds = %__non_const_wrapper__.21.exit, %csroa.if.end64.i1132
  %.phi60.i1133 = phi i64 [ %.phi65.i1131, %csroa.if.end64.i1132 ], [ -2251799813685248, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end54.i1136

csroa.if.end54.i1136:                             ; preds = %__non_const_wrapper__.21.exit, %csroa.if.end59.i1134
  %.phi55.i1135 = phi i64 [ %.phi60.i1133, %csroa.if.end59.i1134 ], [ 4612811918334230528, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end49.i1138

csroa.if.end49.i1138:                             ; preds = %__non_const_wrapper__.21.exit, %csroa.if.end54.i1136
  %.phi50.i1137 = phi i64 [ %.phi55.i1135, %csroa.if.end54.i1136 ], [ 0, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end44.i1140

csroa.if.end44.i1140:                             ; preds = %__non_const_wrapper__.21.exit, %csroa.if.end49.i1138
  %.phi45.i1139 = phi i64 [ %.phi50.i1137, %csroa.if.end49.i1138 ], [ 9218868437227405312, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end39.i1142

csroa.if.end39.i1142:                             ; preds = %__non_const_wrapper__.21.exit, %csroa.if.end44.i1140
  %.phi40.i1141 = phi i64 [ %.phi45.i1139, %csroa.if.end44.i1140 ], [ 9221120237041090560, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end34.i1144

csroa.if.end34.i1144:                             ; preds = %__non_const_wrapper__.21.exit, %csroa.if.end39.i1142
  %.phi35.i1143 = phi i64 [ %.phi40.i1141, %csroa.if.end39.i1142 ], [ 4615063718147915776, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end29.i1146

csroa.if.end29.i1146:                             ; preds = %__non_const_wrapper__.21.exit, %csroa.if.end34.i1144
  %.phi30.i1145 = phi i64 [ %.phi35.i1143, %csroa.if.end34.i1144 ], [ 4611686018427387904, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end24.i1148

csroa.if.end24.i1148:                             ; preds = %__non_const_wrapper__.21.exit, %csroa.if.end29.i1146
  %.phi25.i1147 = phi i64 [ %.phi30.i1145, %csroa.if.end29.i1146 ], [ 9218868437227405312, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end19.i1150

csroa.if.end19.i1150:                             ; preds = %__non_const_wrapper__.21.exit, %csroa.if.end24.i1148
  %.phi20.i1149 = phi i64 [ %.phi25.i1147, %csroa.if.end24.i1148 ], [ 9221120237041090560, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end14.i1152

csroa.if.end14.i1152:                             ; preds = %__non_const_wrapper__.21.exit, %csroa.if.end19.i1150
  %.phi15.i1151 = phi i64 [ %.phi20.i1149, %csroa.if.end19.i1150 ], [ 4615063718147915776, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end9.i1154

csroa.if.end9.i1154:                              ; preds = %__non_const_wrapper__.21.exit, %csroa.if.end14.i1152
  %.phi10.i1153 = phi i64 [ %.phi15.i1151, %csroa.if.end14.i1152 ], [ 4611686018427387904, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end4.i1156

csroa.if.end4.i1156:                              ; preds = %__non_const_wrapper__.18.exit.thread1162, %__non_const_wrapper__.21.exit, %csroa.if.end9.i1154
  %.phi.i9291267 = phi i64 [ %.phi.i929, %csroa.if.end9.i1154 ], [ %.phi.i929, %__non_const_wrapper__.21.exit ], [ 4607182418800017408, %__non_const_wrapper__.18.exit.thread1162 ]
  %.phi.i473116612481266 = phi i64 [ %.phi.i47311661248, %csroa.if.end9.i1154 ], [ %.phi.i47311661248, %__non_const_wrapper__.21.exit ], [ 9218868437227405312, %__non_const_wrapper__.18.exit.thread1162 ]
  %call.c.c1161116512491265 = phi i64 [ %call.c.c1270, %csroa.if.end9.i1154 ], [ %call.c.c1270, %__non_const_wrapper__.21.exit ], [ %call.c.c1163, %__non_const_wrapper__.18.exit.thread1162 ]
  %.phi.i70112501264 = phi i64 [ %.phi.i7011250, %csroa.if.end9.i1154 ], [ %.phi.i7011250, %__non_const_wrapper__.21.exit ], [ 9218868437227405312, %__non_const_wrapper__.18.exit.thread1162 ]
  %.phi5.i1155 = phi i64 [ %.phi10.i1153, %csroa.if.end9.i1154 ], [ 9218868437227405312, %__non_const_wrapper__.21.exit ], [ 9218868437227405312, %__non_const_wrapper__.18.exit.thread1162 ]
  br label %__non_const_wrapper__.22.exit

__non_const_wrapper__.22.exit:                    ; preds = %__non_const_wrapper__.18.exit.thread, %__non_const_wrapper__.21.exit, %csroa.if.end4.i1156
  %.phi.i9291262 = phi i64 [ %.phi.i9291267, %csroa.if.end4.i1156 ], [ %.phi.i929, %__non_const_wrapper__.21.exit ], [ 4607182418800017408, %__non_const_wrapper__.18.exit.thread ]
  %.phi.i473116612481261 = phi i64 [ %.phi.i473116612481266, %csroa.if.end4.i1156 ], [ %.phi.i47311661248, %__non_const_wrapper__.21.exit ], [ 9221120237041090560, %__non_const_wrapper__.18.exit.thread ]
  %call.c.c1161116512491260 = phi i64 [ %call.c.c1161116512491265, %csroa.if.end4.i1156 ], [ %call.c.c1270, %__non_const_wrapper__.21.exit ], [ %call.c.c1160, %__non_const_wrapper__.18.exit.thread ]
  %.phi.i70112501259 = phi i64 [ %.phi.i70112501264, %csroa.if.end4.i1156 ], [ %.phi.i7011250, %__non_const_wrapper__.21.exit ], [ 9221120237041090560, %__non_const_wrapper__.18.exit.thread ]
  %.phi.i1157 = phi i64 [ %.phi5.i1155, %csroa.if.end4.i1156 ], [ 9221120237041090560, %__non_const_wrapper__.21.exit ], [ 9221120237041090560, %__non_const_wrapper__.18.exit.thread ]
  %.cast.i = bitcast i64 %call.c.c1161116512491260 to double
  %call8 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i32 0, i32 0), i64 %.phi.i70112501259, i64 %.phi.i9291262, i64 %.phi.i1157, i64 %call.c.c1161116512491260, double %.cast.i)
  %cmp3 = icmp ne i64 %call.c.c1161116512491260, %.phi.i473116612481261
  %conv = zext i1 %cmp3 to i32
  %add = add nsw i32 %conv, %main_result.016
  %inc = add nuw nsw i32 %i.017, 1
  %exitcond = icmp eq i32 %inc, 46
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %__non_const_wrapper__.22.exit
  %call9 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %add)
  ret i32 %add
}

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

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
  store i64 %z.1, i64* %zPtr, align 4
  ret void
}

; Function Attrs: noinline nounwind
define i64 @float64_add.v0.C.c.c(i64 %a, i64 %b) local_unnamed_addr #4 {
entry:
  %aSig.i9 = alloca i64, align 8
  %bSig.i10 = alloca i64, align 8
  %aSig.i = alloca i64, align 8
  %bSig.i = alloca i64, align 8
  %shr.i = lshr i64 %a, 63
  %conv.i = trunc i64 %shr.i to i32
  %shr.i1 = lshr i64 %b, 63
  %conv.i2 = trunc i64 %shr.i1 to i32
  %cmp = icmp eq i32 %conv.i, %conv.i2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %0 = bitcast i64* %aSig.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %0)
  %1 = bitcast i64* %bSig.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %1)
  %shr.i4 = lshr i64 %a, 52
  %2 = trunc i64 %shr.i4 to i32
  %conv.i5 = and i32 %2, 2047
  %shr.i7 = lshr i64 %b, 52
  %3 = trunc i64 %shr.i7 to i32
  %conv.i8 = and i32 %3, 2047
  %sub.i = sub nsw i32 %conv.i5, %conv.i8
  %and.i = shl i64 %a, 9
  %shl.i = and i64 %and.i, 2305843009213693440
  store i64 %shl.i, i64* %aSig.i, align 8
  %and.i6 = shl i64 %b, 9
  %shl4.i = and i64 %and.i6, 2305843009213693440
  store i64 %shl4.i, i64* %bSig.i, align 8
  %cmp.i = icmp sgt i32 %sub.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.else13.i

if.then.i:                                        ; preds = %if.then
  %cmp5.i = icmp eq i32 %conv.i5, 2047
  br i1 %cmp5.i, label %if.then6.i, label %if.end9.i

if.then6.i:                                       ; preds = %if.then.i
  %tobool.i = icmp eq i64 %shl.i, 0
  br i1 %tobool.i, label %addFloat64Sigs.v0.C.c.exit, label %if.then7.i

if.then7.i:                                       ; preds = %if.then6.i
  %call8.c.i.c = tail call fastcc i64 @propagateFloat64NaN.v0.C.c.c(i64 %a, i64 %b)
  br label %addFloat64Sigs.v0.C.c.exit

if.end9.i:                                        ; preds = %if.then.i
  %cmp10.i = icmp eq i32 %conv.i8, 0
  br i1 %cmp10.i, label %if.then11.i, label %if.else.i

if.then11.i:                                      ; preds = %if.end9.i
  %dec.i = add nsw i32 %sub.i, -1
  br label %if.end12.i

if.else.i:                                        ; preds = %if.end9.i
  %or.i = or i64 %shl4.i, 2305843009213693952
  store i64 %or.i, i64* %bSig.i, align 8
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.else.i, %if.then11.i
  %4 = phi i64 [ %shl4.i, %if.then11.i ], [ %or.i, %if.else.i ]
  %expDiff.0.i = phi i32 [ %dec.i, %if.then11.i ], [ %sub.i, %if.else.i ]
  call void @shift64RightJamming.v0.C.c.c(i64 %4, i32 %expDiff.0.i, i64* nonnull %bSig.i)
  %.pre1.i = load i64, i64* %bSig.i, align 8
  br label %if.end46.i

if.else13.i:                                      ; preds = %if.then
  %cmp14.i = icmp slt i32 %sub.i, 0
  br i1 %cmp14.i, label %if.then15.i, label %if.else30.i

if.then15.i:                                      ; preds = %if.else13.i
  %cmp16.i = icmp eq i32 %conv.i8, 2047
  br i1 %cmp16.i, label %if.then17.i, label %if.end23.i

if.then17.i:                                      ; preds = %if.then15.i
  %tobool18.i = icmp eq i64 %shl4.i, 0
  br i1 %tobool18.i, label %if.end21.i, label %if.then19.i

if.then19.i:                                      ; preds = %if.then17.i
  %call20.c.i.c = tail call fastcc i64 @propagateFloat64NaN.v0.C.c.c(i64 %a, i64 %b)
  br label %addFloat64Sigs.v0.C.c.exit

if.end21.i:                                       ; preds = %if.then17.i
  %call22.c.i.c = tail call i64 @packFloat64.v0.C.c.c(i32 %conv.i, i32 2047, i64 0)
  br label %addFloat64Sigs.v0.C.c.exit

if.end23.i:                                       ; preds = %if.then15.i
  %cmp24.i = icmp eq i32 %conv.i5, 0
  br i1 %cmp24.i, label %if.then25.i, label %if.else26.i

if.then25.i:                                      ; preds = %if.end23.i
  %inc.i = add nsw i32 %sub.i, 1
  br label %if.end28.i

if.else26.i:                                      ; preds = %if.end23.i
  %or27.i = or i64 %shl.i, 2305843009213693952
  store i64 %or27.i, i64* %aSig.i, align 8
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.else26.i, %if.then25.i
  %5 = phi i64 [ %shl.i, %if.then25.i ], [ %or27.i, %if.else26.i ]
  %expDiff.1.i = phi i32 [ %inc.i, %if.then25.i ], [ %sub.i, %if.else26.i ]
  %sub29.i = sub nsw i32 0, %expDiff.1.i
  call void @shift64RightJamming.v0.C.c.c(i64 %5, i32 %sub29.i, i64* nonnull %aSig.i)
  %.pre.i = load i64, i64* %aSig.i, align 8
  br label %if.end46.i

if.else30.i:                                      ; preds = %if.else13.i
  %trunc1 = trunc i64 %shr.i4 to i11
  switch i11 %trunc1, label %if.end42.i [
    i11 -1, label %if.then32.i
    i11 0, label %if.then40.i
  ]

if.then32.i:                                      ; preds = %if.else30.i
  %or33.i = or i64 %shl4.i, %shl.i
  %tobool34.i = icmp eq i64 %or33.i, 0
  br i1 %tobool34.i, label %addFloat64Sigs.v0.C.c.exit, label %if.then35.i

if.then35.i:                                      ; preds = %if.then32.i
  %call36.c.i.c = tail call fastcc i64 @propagateFloat64NaN.v0.C.c.c(i64 %a, i64 %b)
  br label %addFloat64Sigs.v0.C.c.exit

if.then40.i:                                      ; preds = %if.else30.i
  %add.i = add nuw nsw i64 %shl4.i, %shl.i
  %shr.i3 = lshr exact i64 %add.i, 9
  %call41.c.i.c = tail call i64 @packFloat64.v0.C.c.c(i32 %conv.i, i32 0, i64 %shr.i3)
  br label %addFloat64Sigs.v0.C.c.exit

if.end42.i:                                       ; preds = %if.else30.i
  %add43.i = or i64 %shl4.i, 4611686018427387904
  %add44.i = add nuw i64 %add43.i, %shl.i
  br label %roundAndPack.i

if.end46.i:                                       ; preds = %if.end28.i, %if.end12.i
  %6 = phi i64 [ %.pre1.i, %if.end12.i ], [ %shl4.i, %if.end28.i ]
  %7 = phi i64 [ %shl.i, %if.end12.i ], [ %.pre.i, %if.end28.i ]
  %zExp.0.i = phi i32 [ %conv.i5, %if.end12.i ], [ %conv.i8, %if.end28.i ]
  %or47.i = or i64 %7, 2305843009213693952
  store i64 %or47.i, i64* %aSig.i, align 8
  %add48.i = add i64 %or47.i, %6
  %shl49.i = shl i64 %add48.i, 1
  %cmp51.i = icmp slt i64 %shl49.i, 0
  %not.cmp51.i = xor i1 %cmp51.i, true
  %dec50.i = sext i1 %not.cmp51.i to i32
  %zExp.0.dec50.i = add nsw i32 %dec50.i, %zExp.0.i
  %add48.shl49.i = select i1 %cmp51.i, i64 %add48.i, i64 %shl49.i
  br label %roundAndPack.i

roundAndPack.i:                                   ; preds = %if.end46.i, %if.end42.i
  %zExp.2.i = phi i32 [ %conv.i5, %if.end42.i ], [ %zExp.0.dec50.i, %if.end46.i ]
  %zSig.1.i = phi i64 [ %add44.i, %if.end42.i ], [ %add48.shl49.i, %if.end46.i ]
  %call56.c.i.c = tail call fastcc i64 @roundAndPackFloat64.v0.C.c.c(i32 %conv.i, i32 %zExp.2.i, i64 %zSig.1.i)
  br label %addFloat64Sigs.v0.C.c.exit

addFloat64Sigs.v0.C.c.exit:                       ; preds = %if.then6.i, %if.then7.i, %if.then19.i, %if.end21.i, %if.then32.i, %if.then35.i, %if.then40.i, %roundAndPack.i
  %retval.0.i = phi i64 [ %call8.c.i.c, %if.then7.i ], [ %call56.c.i.c, %roundAndPack.i ], [ %call20.c.i.c, %if.then19.i ], [ %call22.c.i.c, %if.end21.i ], [ %call36.c.i.c, %if.then35.i ], [ %call41.c.i.c, %if.then40.i ], [ %a, %if.then6.i ], [ %a, %if.then32.i ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %0)
  call void @llvm.lifetime.end(i64 8, i8* nonnull %1)
  br label %return

if.else:                                          ; preds = %entry
  %8 = bitcast i64* %aSig.i9 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %8)
  %9 = bitcast i64* %bSig.i10 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %9)
  %shr.i.i = lshr i64 %a, 52
  %10 = trunc i64 %shr.i.i to i32
  %conv.i.i = and i32 %10, 2047
  %shr.i3.i = lshr i64 %b, 52
  %11 = trunc i64 %shr.i3.i to i32
  %conv.i4.i = and i32 %11, 2047
  %sub.i11 = sub nsw i32 %conv.i.i, %conv.i4.i
  %and.i.i = shl i64 %a, 10
  %shl.i12 = and i64 %and.i.i, 4611686018427386880
  store i64 %shl.i12, i64* %aSig.i9, align 8
  %and.i2.i = shl i64 %b, 10
  %shl4.i13 = and i64 %and.i2.i, 4611686018427386880
  store i64 %shl4.i13, i64* %bSig.i10, align 8
  %cmp.i14 = icmp sgt i32 %sub.i11, 0
  br i1 %cmp.i14, label %aExpBigger.i, label %if.end.i

if.end.i:                                         ; preds = %if.else
  %cmp5.i15 = icmp slt i32 %sub.i11, 0
  br i1 %cmp5.i15, label %bExpBigger.i, label %if.end7.i

if.end7.i:                                        ; preds = %if.end.i
  %trunc = trunc i64 %shr.i.i to i11
  switch i11 %trunc, label %if.end16.i [
    i11 -1, label %if.then9.i
    i11 0, label %if.then15.i19
  ]

if.then9.i:                                       ; preds = %if.end7.i
  %or.i16 = or i64 %shl4.i13, %shl.i12
  %tobool.i17 = icmp eq i64 %or.i16, 0
  br i1 %tobool.i17, label %if.end12.i18, label %if.then10.i

if.then10.i:                                      ; preds = %if.then9.i
  %call11.c.i.c = tail call fastcc i64 @propagateFloat64NaN.v0.C.c.c(i64 %a, i64 %b)
  br label %subFloat64Sigs.v0.C.c.exit

if.end12.i18:                                     ; preds = %if.then9.i
  %12 = load i32, i32* @float_exception_flags, align 4
  %or.i.i = or i32 %12, 16
  store i32 %or.i.i, i32* @float_exception_flags, align 4
  br label %subFloat64Sigs.v0.C.c.exit

if.then15.i19:                                    ; preds = %if.end7.i
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then15.i19, %if.end7.i
  %bExp.0.i = phi i32 [ 1, %if.then15.i19 ], [ %conv.i4.i, %if.end7.i ]
  %aExp.0.i = phi i32 [ 1, %if.then15.i19 ], [ %conv.i.i, %if.end7.i ]
  %cmp17.i = icmp ult i64 %shl4.i13, %shl.i12
  br i1 %cmp17.i, label %aBigger.i, label %if.end19.i

if.end19.i:                                       ; preds = %if.end16.i
  %cmp20.i = icmp ult i64 %shl.i12, %shl4.i13
  br i1 %cmp20.i, label %bBigger.i, label %if.end22.i

if.end22.i:                                       ; preds = %if.end19.i
  %call24.c.i.c = tail call i64 @packFloat64.v0.C.c.c(i32 0, i32 0, i64 0)
  br label %subFloat64Sigs.v0.C.c.exit

bExpBigger.i:                                     ; preds = %if.end.i
  %cmp25.i = icmp eq i32 %conv.i4.i, 2047
  br i1 %cmp25.i, label %if.then27.i, label %if.end33.i

if.then27.i:                                      ; preds = %bExpBigger.i
  %tobool28.i = icmp eq i64 %shl4.i13, 0
  br i1 %tobool28.i, label %if.end31.i, label %if.then29.i

if.then29.i:                                      ; preds = %if.then27.i
  %call30.c.i.c = tail call fastcc i64 @propagateFloat64NaN.v0.C.c.c(i64 %a, i64 %b)
  br label %subFloat64Sigs.v0.C.c.exit

if.end31.i:                                       ; preds = %if.then27.i
  %xor.i = xor i32 %conv.i, 1
  %call32.c.i.c = tail call i64 @packFloat64.v0.C.c.c(i32 %xor.i, i32 2047, i64 0)
  br label %subFloat64Sigs.v0.C.c.exit

if.end33.i:                                       ; preds = %bExpBigger.i
  %cmp34.i = icmp eq i32 %conv.i.i, 0
  br i1 %cmp34.i, label %if.then36.i, label %if.else.i21

if.then36.i:                                      ; preds = %if.end33.i
  %inc.i20 = add nsw i32 %sub.i11, 1
  br label %if.end38.i

if.else.i21:                                      ; preds = %if.end33.i
  %or37.i = or i64 %shl.i12, 4611686018427387904
  store i64 %or37.i, i64* %aSig.i9, align 8
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.else.i21, %if.then36.i
  %13 = phi i64 [ %shl.i12, %if.then36.i ], [ %or37.i, %if.else.i21 ]
  %expDiff.0.i22 = phi i32 [ %inc.i20, %if.then36.i ], [ %sub.i11, %if.else.i21 ]
  %sub39.i = sub nsw i32 0, %expDiff.0.i22
  call void @shift64RightJamming.v0.C.c.c(i64 %13, i32 %sub39.i, i64* nonnull %aSig.i9)
  %or40.i = or i64 %shl4.i13, 4611686018427387904
  store i64 %or40.i, i64* %bSig.i10, align 8
  %.pre.i23 = load i64, i64* %aSig.i9, align 8
  br label %bBigger.i

bBigger.i:                                        ; preds = %if.end38.i, %if.end19.i
  %14 = phi i64 [ %.pre.i23, %if.end38.i ], [ %shl.i12, %if.end19.i ]
  %15 = phi i64 [ %or40.i, %if.end38.i ], [ %shl4.i13, %if.end19.i ]
  %bExp.1.i = phi i32 [ %conv.i4.i, %if.end38.i ], [ %bExp.0.i, %if.end19.i ]
  %sub41.i = sub i64 %15, %14
  %xor42.i = xor i32 %conv.i, 1
  br label %normalizeRoundAndPack.i

aExpBigger.i:                                     ; preds = %if.else
  %cmp43.i = icmp eq i32 %conv.i.i, 2047
  br i1 %cmp43.i, label %if.then45.i, label %if.end50.i

if.then45.i:                                      ; preds = %aExpBigger.i
  %tobool46.i = icmp eq i64 %shl.i12, 0
  br i1 %tobool46.i, label %subFloat64Sigs.v0.C.c.exit, label %if.then47.i

if.then47.i:                                      ; preds = %if.then45.i
  %call48.c.i.c = tail call fastcc i64 @propagateFloat64NaN.v0.C.c.c(i64 %a, i64 %b)
  br label %subFloat64Sigs.v0.C.c.exit

if.end50.i:                                       ; preds = %aExpBigger.i
  %cmp51.i24 = icmp eq i32 %conv.i4.i, 0
  br i1 %cmp51.i24, label %if.then53.i, label %if.else54.i

if.then53.i:                                      ; preds = %if.end50.i
  %dec.i25 = add nsw i32 %sub.i11, -1
  br label %if.end56.i

if.else54.i:                                      ; preds = %if.end50.i
  %or55.i = or i64 %shl4.i13, 4611686018427387904
  store i64 %or55.i, i64* %bSig.i10, align 8
  br label %if.end56.i

if.end56.i:                                       ; preds = %if.else54.i, %if.then53.i
  %16 = phi i64 [ %shl4.i13, %if.then53.i ], [ %or55.i, %if.else54.i ]
  %expDiff.1.i26 = phi i32 [ %dec.i25, %if.then53.i ], [ %sub.i11, %if.else54.i ]
  call void @shift64RightJamming.v0.C.c.c(i64 %16, i32 %expDiff.1.i26, i64* nonnull %bSig.i10)
  %or57.i = or i64 %shl.i12, 4611686018427387904
  store i64 %or57.i, i64* %aSig.i9, align 8
  %.pre1.i27 = load i64, i64* %bSig.i10, align 8
  br label %aBigger.i

aBigger.i:                                        ; preds = %if.end56.i, %if.end16.i
  %17 = phi i64 [ %.pre1.i27, %if.end56.i ], [ %shl4.i13, %if.end16.i ]
  %18 = phi i64 [ %or57.i, %if.end56.i ], [ %shl.i12, %if.end16.i ]
  %aExp.1.i = phi i32 [ %conv.i.i, %if.end56.i ], [ %aExp.0.i, %if.end16.i ]
  %sub58.i = sub i64 %18, %17
  br label %normalizeRoundAndPack.i

normalizeRoundAndPack.i:                          ; preds = %aBigger.i, %bBigger.i
  %zExp.0.i28 = phi i32 [ %aExp.1.i, %aBigger.i ], [ %bExp.1.i, %bBigger.i ]
  %zSign.addr.0.i = phi i32 [ %conv.i, %aBigger.i ], [ %xor42.i, %bBigger.i ]
  %zSig.0.i = phi i64 [ %sub58.i, %aBigger.i ], [ %sub41.i, %bBigger.i ]
  %dec59.i = add nsw i32 %zExp.0.i28, -1
  %cmp.i.i = icmp ult i64 %zSig.0.i, 4294967296
  %shr.i5.i = lshr i64 %zSig.0.i, 32
  %shr.sink.i.i = select i1 %cmp.i.i, i64 %zSig.0.i, i64 %shr.i5.i
  %shiftCount.0.i.i = select i1 %cmp.i.i, i32 32, i32 0
  %extract.t1.i.i = trunc i64 %shr.sink.i.i to i32
  %cmp.i.i.i = icmp ult i32 %extract.t1.i.i, 65536
  %shl.i.i.i = shl i32 %extract.t1.i.i, 16
  %..i.i.i = select i1 %cmp.i.i.i, i32 16, i32 0
  %shl.a.i.i.i = select i1 %cmp.i.i.i, i32 %shl.i.i.i, i32 %extract.t1.i.i
  %cmp1.i.i.i = icmp ult i32 %shl.a.i.i.i, 16777216
  %add3.i.i.i = or i32 %..i.i.i, 8
  %shl4.i.i.i = shl i32 %shl.a.i.i.i, 8
  %shiftCount.1.i.i.i = select i1 %cmp1.i.i.i, i32 %add3.i.i.i, i32 %..i.i.i
  %a.addr.1.i.i.i = select i1 %cmp1.i.i.i, i32 %shl4.i.i.i, i32 %shl.a.i.i.i
  %shr.i.i.i = lshr i32 %a.addr.1.i.i.i, 24
  %arrayidx.i.i.i = getelementptr inbounds [256 x i32], [256 x i32]* @countLeadingZeros32.countLeadingZerosHigh, i32 0, i32 %shr.i.i.i
  %19 = load i32, i32* %arrayidx.i.i.i, align 4
  %add6.i.i.i = add i32 %19, -1
  %add1.i.i = add i32 %add6.i.i.i, %shiftCount.0.i.i
  %sub.i.i = add i32 %add1.i.i, %shiftCount.1.i.i.i
  %sub1.i.i = sub i32 %dec59.i, %sub.i.i
  %sh_prom.i.i = zext i32 %sub.i.i to i64
  %shl.i.i = shl i64 %zSig.0.i, %sh_prom.i.i
  %call2.c.i.i.c = tail call fastcc i64 @roundAndPackFloat64.v0.C.c.c(i32 %zSign.addr.0.i, i32 %sub1.i.i, i64 %shl.i.i)
  br label %subFloat64Sigs.v0.C.c.exit

subFloat64Sigs.v0.C.c.exit:                       ; preds = %if.then10.i, %if.end12.i18, %if.end22.i, %if.then29.i, %if.end31.i, %if.then45.i, %if.then47.i, %normalizeRoundAndPack.i
  %retval.0.i29 = phi i64 [ %call48.c.i.c, %if.then47.i ], [ %call2.c.i.i.c, %normalizeRoundAndPack.i ], [ %call30.c.i.c, %if.then29.i ], [ %call32.c.i.c, %if.end31.i ], [ %call11.c.i.c, %if.then10.i ], [ 9223372036854775807, %if.end12.i18 ], [ %call24.c.i.c, %if.end22.i ], [ %a, %if.then45.i ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %8)
  call void @llvm.lifetime.end(i64 8, i8* nonnull %9)
  br label %return

return:                                           ; preds = %subFloat64Sigs.v0.C.c.exit, %addFloat64Sigs.v0.C.c.exit
  %retval.0 = phi i64 [ %retval.0.i, %addFloat64Sigs.v0.C.c.exit ], [ %retval.0.i29, %subFloat64Sigs.v0.C.c.exit ]
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
  %1 = load i32, i32* @float_exception_flags, align 4
  %or.i = or i32 %1, 9
  store i32 %or.i, i32* @float_exception_flags, align 4
  %call.c.c = tail call i64 @packFloat64.v0.C.c.c(i32 %zSign, i32 2047, i64 0)
  br label %return

if.end34:                                         ; preds = %lor.lhs.false
  %cmp35 = icmp slt i32 %zExp, 0
  br i1 %cmp35, label %if.then37, label %if.end47

if.then37:                                        ; preds = %if.end34
  %sub38 = sub nsw i32 0, %zExp
  call void @shift64RightJamming.v0.C.c.c(i64 %zSig, i32 %sub38, i64* nonnull %zSig.addr)
  %2 = load i64, i64* %zSig.addr, align 8
  %3 = trunc i64 %2 to i32
  %conv40 = and i32 %3, 1023
  %tobool43 = icmp eq i32 %conv40, 0
  br i1 %tobool43, label %if.end50, label %if.end47.thread5

if.end47.thread5:                                 ; preds = %if.then37
  %4 = load i32, i32* @float_exception_flags, align 4
  %or.i9 = or i32 %4, 4
  store i32 %or.i9, i32* @float_exception_flags, align 4
  br label %if.then49

if.end47:                                         ; preds = %land.lhs.true, %if.end34, %entry
  %zExp.addr.1 = phi i32 [ %zExp, %entry ], [ %zExp, %if.end34 ], [ 2045, %land.lhs.true ]
  %tobool48 = icmp eq i32 %conv17, 0
  br i1 %tobool48, label %if.end50, label %if.end47.if.then49_crit_edge

if.end47.if.then49_crit_edge:                     ; preds = %if.end47
  %.pre = load i32, i32* @float_exception_flags, align 4
  br label %if.then49

if.then49:                                        ; preds = %if.end47.if.then49_crit_edge, %if.end47.thread5
  %5 = phi i32 [ %or.i9, %if.end47.thread5 ], [ %.pre, %if.end47.if.then49_crit_edge ]
  %6 = phi i64 [ %2, %if.end47.thread5 ], [ %zSig, %if.end47.if.then49_crit_edge ]
  %roundBits.18 = phi i32 [ %conv40, %if.end47.thread5 ], [ %conv17, %if.end47.if.then49_crit_edge ]
  %zExp.addr.17 = phi i32 [ 0, %if.end47.thread5 ], [ %zExp.addr.1, %if.end47.if.then49_crit_edge ]
  %or = or i32 %5, 1
  store i32 %or, i32* @float_exception_flags, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.then37, %if.end47, %if.then49
  %7 = phi i64 [ %zSig, %if.end47 ], [ %6, %if.then49 ], [ %2, %if.then37 ]
  %roundBits.14 = phi i32 [ 0, %if.end47 ], [ %roundBits.18, %if.then49 ], [ 0, %if.then37 ]
  %zExp.addr.13 = phi i32 [ %zExp.addr.1, %if.end47 ], [ %zExp.addr.17, %if.then49 ], [ 0, %if.then37 ]
  %add52 = add i64 %7, 512
  %shr = lshr i64 %add52, 10
  %cmp53 = icmp eq i32 %roundBits.14, 512
  %conv54 = zext i1 %cmp53 to i32
  %neg = xor i32 %conv54, -1
  %conv56 = sext i32 %neg to i64
  %and57 = and i64 %conv56, %shr
  store i64 %and57, i64* %zSig.addr, align 8
  %cmp58 = icmp eq i64 %and57, 0
  %.zExp.addr.1 = select i1 %cmp58, i32 0, i32 %zExp.addr.13
  %call62.c.c = tail call i64 @packFloat64.v0.C.c.c(i32 %zSign, i32 %.zExp.addr.1, i64 %and57)
  br label %return

return:                                           ; preds = %if.end50, %if.then30
  %retval.0 = phi i64 [ %call.c.c, %if.then30 ], [ %call62.c.c, %if.end50 ]
  ret i64 %retval.0
}

; Function Attrs: noinline norecurse nounwind readnone
define i64 @packFloat64.v0.C.c.c(i32 %zSign, i32 %zExp, i64 %zSig) local_unnamed_addr #5 {
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
define internal fastcc i64 @propagateFloat64NaN.v0.C.c.c(i64 %a, i64 %b) unnamed_addr #3 {
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
  %2 = load i32, i32* @float_exception_flags, align 4
  %or.i = or i32 %2, 16
  store i32 %or.i, i32* @float_exception_flags, align 4
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  br i1 %1, label %cond.end15, label %cond.false

cond.false:                                       ; preds = %if.end
  %tobool7.demorgan = and i1 %cmp.i, %tobool.i
  %tobool7 = xor i1 %tobool7.demorgan, true
  %3 = and i1 %cmp.i1, %tobool7
  %cond14 = select i1 %3, i64 %or4, i64 %or
  br label %cond.end15

cond.end15:                                       ; preds = %if.end, %cond.false
  %cond16 = phi i64 [ %or4, %if.end ], [ %cond14, %cond.false ]
  ret i64 %cond16
}

attributes #0 = { noinline nounwind ssp "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noinline norecurse nounwind }
attributes #4 = { noinline nounwind }
attributes #5 = { noinline norecurse nounwind readnone }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
