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
  %i.01404 = phi i32 [ 0, %entry ], [ %inc, %__non_const_wrapper__.22.exit ]
  %main_result.01401 = phi i32 [ 0, %entry ], [ %add116713811394, %__non_const_wrapper__.22.exit ]
  switch i32 %i.01404, label %csroa.if.end224.i [
    i32 0, label %__non_const_wrapper__.18.exit.thread
    i32 1, label %__non_const_wrapper__.18.exit.thread1160
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

__non_const_wrapper__.18.exit.thread1160:         ; preds = %for.body
  %call.c.c1161 = tail call i64 @float64_add.v0.C.c.c(i64 9218868437227405312, i64 4607182418800017408) #6
  %cmp31170 = icmp ne i64 %call.c.c1161, 9218868437227405312
  %conv1171 = zext i1 %cmp31170 to i32
  %add1172 = add nsw i32 %conv1171, %main_result.01401
  br label %csroa.if.end4.i1154

__non_const_wrapper__.18.exit.thread:             ; preds = %for.body
  %call.c.c1158 = tail call i64 @float64_add.v0.C.c.c(i64 9221120237041090560, i64 4607182418800017408) #6
  %cmp31163 = icmp ne i64 %call.c.c1158, 9221120237041090560
  %conv1164 = zext i1 %cmp31163 to i32
  %add1165 = add nsw i32 %conv1164, %main_result.01401
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
  switch i32 %i.01404, label %csroa.if.end224.i154 [
    i32 43, label %csroa.if.end209.i160
    i32 44, label %csroa.if.end219.i156
    i32 2, label %__non_const_wrapper__.18.exit
    i32 3, label %csroa.if.end14.i238
    i32 4, label %csroa.if.end19.i236
    i32 5, label %csroa.if.end24.i234
    i32 6, label %csroa.if.end29.i232
    i32 7, label %csroa.if.end29.i232
    i32 8, label %csroa.if.end39.i228
    i32 9, label %csroa.if.end39.i228
    i32 10, label %csroa.if.end49.i224
    i32 11, label %csroa.if.end54.i222
    i32 12, label %csroa.if.end59.i220
    i32 13, label %csroa.if.end59.i220
    i32 14, label %csroa.if.end69.i216
    i32 15, label %csroa.if.end74.i214
    i32 16, label %csroa.if.end79.i212
    i32 17, label %csroa.if.end84.i210
    i32 18, label %csroa.if.end89.i208
    i32 19, label %csroa.if.end89.i208
    i32 20, label %csroa.if.end99.i204
    i32 21, label %csroa.if.end99.i204
    i32 22, label %csroa.if.end109.i200
    i32 23, label %csroa.if.end114.i198
    i32 24, label %csroa.if.end119.i196
    i32 25, label %csroa.if.end119.i196
    i32 26, label %csroa.if.end129.i192
    i32 27, label %csroa.if.end134.i190
    i32 28, label %csroa.if.end139.i188
    i32 29, label %csroa.if.end144.i186
    i32 30, label %csroa.if.end149.i184
    i32 31, label %csroa.if.end154.i182
    i32 32, label %csroa.if.end154.i182
    i32 33, label %csroa.if.end164.i178
    i32 34, label %csroa.if.end169.i176
    i32 35, label %csroa.if.end174.i174
    i32 36, label %csroa.if.end179.i172
    i32 37, label %csroa.if.end184.i170
    i32 38, label %csroa.if.end189.i168
    i32 39, label %csroa.if.end194.i166
    i32 40, label %csroa.if.end199.i164
    i32 41, label %csroa.if.end204.i162
    i32 42, label %csroa.if.end209.i160
  ]

csroa.if.end224.i154:                             ; preds = %__non_const_wrapper__.exit
  br label %csroa.if.end219.i156

csroa.if.end219.i156:                             ; preds = %__non_const_wrapper__.exit, %csroa.if.end224.i154
  %.phi220.i155 = phi i64 [ 4609434218613702656, %csroa.if.end224.i154 ], [ 0, %__non_const_wrapper__.exit ]
  br label %csroa.if.end209.i160

csroa.if.end209.i160:                             ; preds = %__non_const_wrapper__.exit, %csroa.if.end219.i156, %__non_const_wrapper__.exit
  %.phi210.i159 = phi i64 [ 4607182418800017408, %__non_const_wrapper__.exit ], [ %.phi220.i155, %csroa.if.end219.i156 ], [ 4607182418800017408, %__non_const_wrapper__.exit ]
  br label %csroa.if.end204.i162

csroa.if.end204.i162:                             ; preds = %__non_const_wrapper__.exit, %csroa.if.end209.i160
  %.phi205.i161 = phi i64 [ %.phi210.i159, %csroa.if.end209.i160 ], [ 4611686018427387904, %__non_const_wrapper__.exit ]
  br label %csroa.if.end199.i164

csroa.if.end199.i164:                             ; preds = %__non_const_wrapper__.exit, %csroa.if.end204.i162
  %.phi200.i163 = phi i64 [ %.phi205.i161, %csroa.if.end204.i162 ], [ 4607182418800017408, %__non_const_wrapper__.exit ]
  br label %csroa.if.end194.i166

csroa.if.end194.i166:                             ; preds = %__non_const_wrapper__.exit, %csroa.if.end199.i164
  %.phi195.i165 = phi i64 [ %.phi200.i163, %csroa.if.end199.i164 ], [ 9218868437227405312, %__non_const_wrapper__.exit ]
  br label %csroa.if.end189.i168

csroa.if.end189.i168:                             ; preds = %__non_const_wrapper__.exit, %csroa.if.end194.i166
  %.phi190.i167 = phi i64 [ %.phi195.i165, %csroa.if.end194.i166 ], [ 9221120237041090560, %__non_const_wrapper__.exit ]
  br label %csroa.if.end184.i170

csroa.if.end184.i170:                             ; preds = %__non_const_wrapper__.exit, %csroa.if.end189.i168
  %.phi185.i169 = phi i64 [ %.phi190.i167, %csroa.if.end189.i168 ], [ 4607182418800017408, %__non_const_wrapper__.exit ]
  br label %csroa.if.end179.i172

csroa.if.end179.i172:                             ; preds = %__non_const_wrapper__.exit, %csroa.if.end184.i170
  %.phi180.i171 = phi i64 [ %.phi185.i169, %csroa.if.end184.i170 ], [ 9218868437227405312, %__non_const_wrapper__.exit ]
  br label %csroa.if.end174.i174

csroa.if.end174.i174:                             ; preds = %__non_const_wrapper__.exit, %csroa.if.end179.i172
  %.phi175.i173 = phi i64 [ %.phi180.i171, %csroa.if.end179.i172 ], [ 9221120237041090560, %__non_const_wrapper__.exit ]
  br label %csroa.if.end169.i176

csroa.if.end169.i176:                             ; preds = %__non_const_wrapper__.exit, %csroa.if.end174.i174
  %.phi170.i175 = phi i64 [ %.phi175.i173, %csroa.if.end174.i174 ], [ -4613937818241073152, %__non_const_wrapper__.exit ]
  br label %csroa.if.end164.i178

csroa.if.end164.i178:                             ; preds = %__non_const_wrapper__.exit, %csroa.if.end169.i176
  %.phi165.i177 = phi i64 [ %.phi170.i175, %csroa.if.end169.i176 ], [ -9223372036854775808, %__non_const_wrapper__.exit ]
  br label %csroa.if.end154.i182

csroa.if.end154.i182:                             ; preds = %csroa.if.end164.i178, %__non_const_wrapper__.exit, %__non_const_wrapper__.exit
  %.phi155.i181 = phi i64 [ -4616189618054758400, %__non_const_wrapper__.exit ], [ %.phi165.i177, %csroa.if.end164.i178 ], [ -4616189618054758400, %__non_const_wrapper__.exit ]
  br label %csroa.if.end149.i184

csroa.if.end149.i184:                             ; preds = %__non_const_wrapper__.exit, %csroa.if.end154.i182
  %.phi150.i183 = phi i64 [ %.phi155.i181, %csroa.if.end154.i182 ], [ -4611686018427387904, %__non_const_wrapper__.exit ]
  br label %csroa.if.end144.i186

csroa.if.end144.i186:                             ; preds = %__non_const_wrapper__.exit, %csroa.if.end149.i184
  %.phi145.i185 = phi i64 [ %.phi150.i183, %csroa.if.end149.i184 ], [ -4616189618054758400, %__non_const_wrapper__.exit ]
  br label %csroa.if.end139.i188

csroa.if.end139.i188:                             ; preds = %__non_const_wrapper__.exit, %csroa.if.end144.i186
  %.phi140.i187 = phi i64 [ %.phi145.i185, %csroa.if.end144.i186 ], [ -4503599627370496, %__non_const_wrapper__.exit ]
  br label %csroa.if.end134.i190

csroa.if.end134.i190:                             ; preds = %__non_const_wrapper__.exit, %csroa.if.end139.i188
  %.phi135.i189 = phi i64 [ %.phi140.i187, %csroa.if.end139.i188 ], [ -2251799813685248, %__non_const_wrapper__.exit ]
  br label %csroa.if.end129.i192

csroa.if.end129.i192:                             ; preds = %__non_const_wrapper__.exit, %csroa.if.end134.i190
  %.phi130.i191 = phi i64 [ %.phi135.i189, %csroa.if.end134.i190 ], [ -4616189618054758400, %__non_const_wrapper__.exit ]
  br label %csroa.if.end119.i196

csroa.if.end119.i196:                             ; preds = %csroa.if.end129.i192, %__non_const_wrapper__.exit, %__non_const_wrapper__.exit
  %.phi120.i195 = phi i64 [ -4503599627370496, %__non_const_wrapper__.exit ], [ %.phi130.i191, %csroa.if.end129.i192 ], [ -4503599627370496, %__non_const_wrapper__.exit ]
  br label %csroa.if.end114.i198

csroa.if.end114.i198:                             ; preds = %__non_const_wrapper__.exit, %csroa.if.end119.i196
  %.phi115.i197 = phi i64 [ %.phi120.i195, %csroa.if.end119.i196 ], [ -4616189618054758400, %__non_const_wrapper__.exit ]
  br label %csroa.if.end109.i200

csroa.if.end109.i200:                             ; preds = %__non_const_wrapper__.exit, %csroa.if.end114.i198
  %.phi110.i199 = phi i64 [ %.phi115.i197, %csroa.if.end114.i198 ], [ -9223372036854775808, %__non_const_wrapper__.exit ]
  br label %csroa.if.end99.i204

csroa.if.end99.i204:                              ; preds = %csroa.if.end109.i200, %__non_const_wrapper__.exit, %__non_const_wrapper__.exit
  %.phi100.i203 = phi i64 [ -4503599627370496, %__non_const_wrapper__.exit ], [ %.phi110.i199, %csroa.if.end109.i200 ], [ -4503599627370496, %__non_const_wrapper__.exit ]
  br label %csroa.if.end89.i208

csroa.if.end89.i208:                              ; preds = %csroa.if.end99.i204, %__non_const_wrapper__.exit, %__non_const_wrapper__.exit
  %.phi90.i207 = phi i64 [ -4611686018427387904, %__non_const_wrapper__.exit ], [ %.phi100.i203, %csroa.if.end99.i204 ], [ -4611686018427387904, %__non_const_wrapper__.exit ]
  br label %csroa.if.end84.i210

csroa.if.end84.i210:                              ; preds = %__non_const_wrapper__.exit, %csroa.if.end89.i208
  %.phi85.i209 = phi i64 [ %.phi90.i207, %csroa.if.end89.i208 ], [ -4503599627370496, %__non_const_wrapper__.exit ]
  br label %csroa.if.end79.i212

csroa.if.end79.i212:                              ; preds = %__non_const_wrapper__.exit, %csroa.if.end84.i210
  %.phi80.i211 = phi i64 [ %.phi85.i209, %csroa.if.end84.i210 ], [ -2251799813685248, %__non_const_wrapper__.exit ]
  br label %csroa.if.end74.i214

csroa.if.end74.i214:                              ; preds = %__non_const_wrapper__.exit, %csroa.if.end79.i212
  %.phi75.i213 = phi i64 [ %.phi80.i211, %csroa.if.end79.i212 ], [ -4613937818241073152, %__non_const_wrapper__.exit ]
  br label %csroa.if.end69.i216

csroa.if.end69.i216:                              ; preds = %__non_const_wrapper__.exit, %csroa.if.end74.i214
  %.phi70.i215 = phi i64 [ %.phi75.i213, %csroa.if.end74.i214 ], [ -9223372036854775808, %__non_const_wrapper__.exit ]
  br label %csroa.if.end59.i220

csroa.if.end59.i220:                              ; preds = %csroa.if.end69.i216, %__non_const_wrapper__.exit, %__non_const_wrapper__.exit
  %.phi60.i219 = phi i64 [ -4616189618054758400, %__non_const_wrapper__.exit ], [ %.phi70.i215, %csroa.if.end69.i216 ], [ -4616189618054758400, %__non_const_wrapper__.exit ]
  br label %csroa.if.end54.i222

csroa.if.end54.i222:                              ; preds = %__non_const_wrapper__.exit, %csroa.if.end59.i220
  %.phi55.i221 = phi i64 [ %.phi60.i219, %csroa.if.end59.i220 ], [ 4607182418800017408, %__non_const_wrapper__.exit ]
  br label %csroa.if.end49.i224

csroa.if.end49.i224:                              ; preds = %__non_const_wrapper__.exit, %csroa.if.end54.i222
  %.phi50.i223 = phi i64 [ %.phi55.i221, %csroa.if.end54.i222 ], [ 0, %__non_const_wrapper__.exit ]
  br label %csroa.if.end39.i228

csroa.if.end39.i228:                              ; preds = %csroa.if.end49.i224, %__non_const_wrapper__.exit, %__non_const_wrapper__.exit
  %.phi40.i227 = phi i64 [ 9218868437227405312, %__non_const_wrapper__.exit ], [ %.phi50.i223, %csroa.if.end49.i224 ], [ 9218868437227405312, %__non_const_wrapper__.exit ]
  br label %csroa.if.end29.i232

csroa.if.end29.i232:                              ; preds = %csroa.if.end39.i228, %__non_const_wrapper__.exit, %__non_const_wrapper__.exit
  %.phi30.i231 = phi i64 [ 4611686018427387904, %__non_const_wrapper__.exit ], [ %.phi40.i227, %csroa.if.end39.i228 ], [ 4611686018427387904, %__non_const_wrapper__.exit ]
  br label %csroa.if.end24.i234

csroa.if.end24.i234:                              ; preds = %__non_const_wrapper__.exit, %csroa.if.end29.i232
  %.phi25.i233 = phi i64 [ %.phi30.i231, %csroa.if.end29.i232 ], [ 9218868437227405312, %__non_const_wrapper__.exit ]
  br label %csroa.if.end19.i236

csroa.if.end19.i236:                              ; preds = %__non_const_wrapper__.exit, %csroa.if.end24.i234
  %.phi20.i235 = phi i64 [ %.phi25.i233, %csroa.if.end24.i234 ], [ 9221120237041090560, %__non_const_wrapper__.exit ]
  br label %csroa.if.end14.i238

csroa.if.end14.i238:                              ; preds = %__non_const_wrapper__.exit, %csroa.if.end19.i236
  %.phi15.i237 = phi i64 [ %.phi20.i235, %csroa.if.end19.i236 ], [ 4609434218613702656, %__non_const_wrapper__.exit ]
  br label %__non_const_wrapper__.18.exit

__non_const_wrapper__.18.exit:                    ; preds = %csroa.if.end14.i238, %__non_const_wrapper__.exit
  %.phi10.i239 = phi i64 [ %.phi15.i237, %csroa.if.end14.i238 ], [ 0, %__non_const_wrapper__.exit ]
  %call.c.c = tail call i64 @float64_add.v0.C.c.c(i64 %.phi10.i, i64 %.phi10.i239) #6
  switch i32 %i.01404, label %__non_const_wrapper__.19.exit [
    i32 40, label %csroa.if.end199.i620
    i32 41, label %csroa.if.end204.i618
    i32 2, label %__non_const_wrapper__.20.exit.thread1386
    i32 3, label %__non_const_wrapper__.20.exit.thread1389
    i32 4, label %__non_const_wrapper__.19.exit.thread1184
    i32 5, label %csroa.if.end19.i692
    i32 6, label %csroa.if.end29.i688
    i32 7, label %csroa.if.end34.i686
    i32 8, label %csroa.if.end39.i684
    i32 9, label %csroa.if.end44.i682
    i32 10, label %csroa.if.end49.i680
    i32 11, label %csroa.if.end54.i678
    i32 12, label %csroa.if.end59.i676
    i32 13, label %csroa.if.end64.i674
    i32 14, label %__non_const_wrapper__.19.exit.thread1233
    i32 15, label %csroa.if.end69.i672
    i32 16, label %__non_const_wrapper__.19.exit.thread1242
    i32 17, label %csroa.if.end79.i668
    i32 18, label %csroa.if.end89.i664
    i32 19, label %csroa.if.end94.i662
    i32 20, label %csroa.if.end99.i660
    i32 21, label %csroa.if.end104.i658
    i32 22, label %csroa.if.end109.i656
    i32 23, label %csroa.if.end114.i654
    i32 24, label %csroa.if.end119.i652
    i32 25, label %csroa.if.end124.i650
    i32 26, label %__non_const_wrapper__.19.exit.thread1291
    i32 27, label %__non_const_wrapper__.19.exit.thread1296
    i32 28, label %csroa.if.end129.i648
    i32 29, label %csroa.if.end144.i642
    i32 30, label %csroa.if.end149.i640
    i32 31, label %csroa.if.end154.i638
    i32 32, label %csroa.if.end159.i636
    i32 33, label %csroa.if.end164.i634
    i32 34, label %csroa.if.end169.i632
    i32 35, label %__non_const_wrapper__.19.exit.thread1334
    i32 36, label %csroa.if.end174.i630
    i32 37, label %__non_const_wrapper__.19.exit.thread1343
    i32 38, label %__non_const_wrapper__.19.exit.thread1348
    i32 39, label %csroa.if.end184.i626
    i32 42, label %__non_const_wrapper__.19.exit.thread1366
    i32 43, label %csroa.if.end209.i616
    i32 44, label %__non_const_wrapper__.19.exit.thread1376
  ]

__non_const_wrapper__.19.exit.thread1348:         ; preds = %__non_const_wrapper__.18.exit
  br label %csroa.if.end184.i626

__non_const_wrapper__.19.exit.thread1343:         ; preds = %__non_const_wrapper__.18.exit
  br label %csroa.if.end184.i626

__non_const_wrapper__.19.exit.thread1334:         ; preds = %__non_const_wrapper__.18.exit
  br label %csroa.if.end174.i630

__non_const_wrapper__.19.exit.thread1296:         ; preds = %__non_const_wrapper__.18.exit
  br label %csroa.if.end129.i648

__non_const_wrapper__.19.exit.thread1291:         ; preds = %__non_const_wrapper__.18.exit
  br label %csroa.if.end129.i648

__non_const_wrapper__.19.exit.thread1242:         ; preds = %__non_const_wrapper__.18.exit
  br label %csroa.if.end79.i668

__non_const_wrapper__.19.exit.thread1233:         ; preds = %__non_const_wrapper__.18.exit
  br label %csroa.if.end69.i672

__non_const_wrapper__.19.exit.thread1184:         ; preds = %__non_const_wrapper__.18.exit
  br label %csroa.if.end19.i692

__non_const_wrapper__.20.exit.thread1389:         ; preds = %__non_const_wrapper__.18.exit
  %cmp31181 = icmp ne i64 %call.c.c, 4615063718147915776
  %conv1182 = zext i1 %cmp31181 to i32
  %add1183 = add nsw i32 %conv1182, %main_result.01401
  br label %csroa.if.end14.i922

__non_const_wrapper__.20.exit.thread1386:         ; preds = %__non_const_wrapper__.18.exit
  %cmp31176 = icmp ne i64 %call.c.c, 4611686018427387904
  %conv1177 = zext i1 %cmp31176 to i32
  %add1178 = add nsw i32 %conv1177, %main_result.01401
  br label %csroa.if.end9.i924

__non_const_wrapper__.19.exit.thread1376:         ; preds = %__non_const_wrapper__.18.exit
  br label %csroa.if.end209.i616

__non_const_wrapper__.19.exit.thread1366:         ; preds = %__non_const_wrapper__.18.exit
  br label %csroa.if.end209.i616

__non_const_wrapper__.19.exit:                    ; preds = %__non_const_wrapper__.18.exit
  br label %csroa.if.end209.i616

csroa.if.end209.i616:                             ; preds = %__non_const_wrapper__.18.exit, %__non_const_wrapper__.19.exit, %__non_const_wrapper__.19.exit.thread1376, %__non_const_wrapper__.19.exit.thread1366
  %.sink = phi i64 [ -4620693217682128896, %__non_const_wrapper__.19.exit ], [ -4616189618054758400, %__non_const_wrapper__.19.exit.thread1376 ], [ -2251799813685248, %__non_const_wrapper__.19.exit.thread1366 ], [ -4503599627370496, %__non_const_wrapper__.18.exit ]
  %.phi210.i615 = phi i64 [ -4611686018427387904, %__non_const_wrapper__.19.exit ], [ -4616189618054758400, %__non_const_wrapper__.19.exit.thread1376 ], [ -2251799813685248, %__non_const_wrapper__.19.exit.thread1366 ], [ -4503599627370496, %__non_const_wrapper__.18.exit ]
  br label %csroa.if.end204.i618

csroa.if.end204.i618:                             ; preds = %__non_const_wrapper__.18.exit, %csroa.if.end209.i616
  %.sink1409 = phi i64 [ %.sink, %csroa.if.end209.i616 ], [ 4602678819172646912, %__non_const_wrapper__.18.exit ]
  %.phi205.i617 = phi i64 [ %.phi210.i615, %csroa.if.end209.i616 ], [ -4613937818241073152, %__non_const_wrapper__.18.exit ]
  br label %csroa.if.end199.i620

csroa.if.end199.i620:                             ; preds = %__non_const_wrapper__.18.exit, %csroa.if.end204.i618
  %.sink1410 = phi i64 [ %.sink1409, %csroa.if.end204.i618 ], [ 4607182418800017408, %__non_const_wrapper__.18.exit ]
  %.phi200.i619 = phi i64 [ %.phi205.i617, %csroa.if.end204.i618 ], [ -9223372036854775808, %__non_const_wrapper__.18.exit ]
  br label %csroa.if.end184.i626

csroa.if.end184.i626:                             ; preds = %__non_const_wrapper__.18.exit, %__non_const_wrapper__.19.exit.thread1348, %__non_const_wrapper__.19.exit.thread1343, %csroa.if.end199.i620
  %.sink1411 = phi i64 [ 9221120237041090560, %__non_const_wrapper__.19.exit.thread1348 ], [ 0, %__non_const_wrapper__.19.exit.thread1343 ], [ %.sink1410, %csroa.if.end199.i620 ], [ 9218868437227405312, %__non_const_wrapper__.18.exit ]
  %.phi185.i625 = phi i64 [ -4616189618054758400, %__non_const_wrapper__.19.exit.thread1348 ], [ -4616189618054758400, %__non_const_wrapper__.19.exit.thread1343 ], [ %.phi200.i619, %csroa.if.end199.i620 ], [ -4616189618054758400, %__non_const_wrapper__.18.exit ]
  br label %csroa.if.end174.i630

csroa.if.end174.i630:                             ; preds = %__non_const_wrapper__.18.exit, %__non_const_wrapper__.19.exit.thread1334, %csroa.if.end184.i626
  %.sink1412 = phi i64 [ 9221120237041090560, %__non_const_wrapper__.19.exit.thread1334 ], [ %.sink1411, %csroa.if.end184.i626 ], [ 9223372036854775807, %__non_const_wrapper__.18.exit ]
  %.phi175.i629 = phi i64 [ -4503599627370496, %__non_const_wrapper__.19.exit.thread1334 ], [ %.phi185.i625, %csroa.if.end184.i626 ], [ -4503599627370496, %__non_const_wrapper__.18.exit ]
  br label %csroa.if.end169.i632

csroa.if.end169.i632:                             ; preds = %__non_const_wrapper__.18.exit, %csroa.if.end174.i630
  %.sink1413 = phi i64 [ %.sink1412, %csroa.if.end174.i630 ], [ 4602678819172646912, %__non_const_wrapper__.18.exit ]
  %.phi170.i631 = phi i64 [ %.phi175.i629, %csroa.if.end174.i630 ], [ 4611686018427387904, %__non_const_wrapper__.18.exit ]
  br label %csroa.if.end164.i634

csroa.if.end164.i634:                             ; preds = %__non_const_wrapper__.18.exit, %csroa.if.end169.i632
  %.sink1414 = phi i64 [ %.sink1413, %csroa.if.end169.i632 ], [ 4607182418800017408, %__non_const_wrapper__.18.exit ]
  %.phi165.i633 = phi i64 [ %.phi170.i631, %csroa.if.end169.i632 ], [ 4607182418800017408, %__non_const_wrapper__.18.exit ]
  br label %csroa.if.end159.i636

csroa.if.end159.i636:                             ; preds = %__non_const_wrapper__.18.exit, %csroa.if.end164.i634
  %.sink1415 = phi i64 [ %.sink1414, %csroa.if.end164.i634 ], [ 9218868437227405312, %__non_const_wrapper__.18.exit ]
  %.phi160.i635 = phi i64 [ %.phi165.i633, %csroa.if.end164.i634 ], [ 9218868437227405312, %__non_const_wrapper__.18.exit ]
  br label %csroa.if.end154.i638

csroa.if.end154.i638:                             ; preds = %__non_const_wrapper__.18.exit, %csroa.if.end159.i636
  %.sink1416 = phi i64 [ %.sink1415, %csroa.if.end159.i636 ], [ 9221120237041090560, %__non_const_wrapper__.18.exit ]
  %.phi155.i637 = phi i64 [ %.phi160.i635, %csroa.if.end159.i636 ], [ 9221120237041090560, %__non_const_wrapper__.18.exit ]
  br label %csroa.if.end149.i640

csroa.if.end149.i640:                             ; preds = %__non_const_wrapper__.18.exit, %csroa.if.end154.i638
  %.sink1417 = phi i64 [ %.sink1416, %csroa.if.end154.i638 ], [ -4620693217682128896, %__non_const_wrapper__.18.exit ]
  %.phi150.i639 = phi i64 [ %.phi155.i637, %csroa.if.end154.i638 ], [ 4609434218613702656, %__non_const_wrapper__.18.exit ]
  br label %csroa.if.end144.i642

csroa.if.end144.i642:                             ; preds = %__non_const_wrapper__.18.exit, %csroa.if.end149.i640
  %.sink1418 = phi i64 [ %.sink1417, %csroa.if.end149.i640 ], [ -4616189618054758400, %__non_const_wrapper__.18.exit ]
  %.phi145.i641 = phi i64 [ %.phi150.i639, %csroa.if.end149.i640 ], [ 0, %__non_const_wrapper__.18.exit ]
  br label %csroa.if.end129.i648

csroa.if.end129.i648:                             ; preds = %__non_const_wrapper__.18.exit, %__non_const_wrapper__.19.exit.thread1296, %__non_const_wrapper__.19.exit.thread1291, %csroa.if.end144.i642
  %.sink1419 = phi i64 [ -2251799813685248, %__non_const_wrapper__.19.exit.thread1296 ], [ 0, %__non_const_wrapper__.19.exit.thread1291 ], [ %.sink1418, %csroa.if.end144.i642 ], [ -4503599627370496, %__non_const_wrapper__.18.exit ]
  %.phi130.i647 = phi i64 [ 4607182418800017408, %__non_const_wrapper__.19.exit.thread1296 ], [ 4607182418800017408, %__non_const_wrapper__.19.exit.thread1291 ], [ %.phi145.i641, %csroa.if.end144.i642 ], [ 4607182418800017408, %__non_const_wrapper__.18.exit ]
  br label %csroa.if.end124.i650

csroa.if.end124.i650:                             ; preds = %__non_const_wrapper__.18.exit, %csroa.if.end129.i648
  %.sink1420 = phi i64 [ %.sink1419, %csroa.if.end129.i648 ], [ 9223372036854775807, %__non_const_wrapper__.18.exit ]
  %.phi125.i649 = phi i64 [ %.phi130.i647, %csroa.if.end129.i648 ], [ 9218868437227405312, %__non_const_wrapper__.18.exit ]
  br label %csroa.if.end119.i652

csroa.if.end119.i652:                             ; preds = %__non_const_wrapper__.18.exit, %csroa.if.end124.i650
  %.sink1421 = phi i64 [ %.sink1420, %csroa.if.end124.i650 ], [ 9221120237041090560, %__non_const_wrapper__.18.exit ]
  %.phi120.i651 = phi i64 [ %.phi125.i649, %csroa.if.end124.i650 ], [ 9221120237041090560, %__non_const_wrapper__.18.exit ]
  br label %csroa.if.end114.i654

csroa.if.end114.i654:                             ; preds = %__non_const_wrapper__.18.exit, %csroa.if.end119.i652
  %.sink1422 = phi i64 [ %.sink1421, %csroa.if.end119.i652 ], [ -4610560118520545280, %__non_const_wrapper__.18.exit ]
  %.phi115.i653 = phi i64 [ %.phi120.i651, %csroa.if.end119.i652 ], [ -4613937818241073152, %__non_const_wrapper__.18.exit ]
  br label %csroa.if.end109.i656

csroa.if.end109.i656:                             ; preds = %__non_const_wrapper__.18.exit, %csroa.if.end114.i654
  %.sink1423 = phi i64 [ %.sink1422, %csroa.if.end114.i654 ], [ -9223372036854775808, %__non_const_wrapper__.18.exit ]
  %.phi110.i655 = phi i64 [ %.phi115.i653, %csroa.if.end114.i654 ], [ -9223372036854775808, %__non_const_wrapper__.18.exit ]
  br label %csroa.if.end104.i658

csroa.if.end104.i658:                             ; preds = %__non_const_wrapper__.18.exit, %csroa.if.end109.i656
  %.sink1424 = phi i64 [ %.sink1423, %csroa.if.end109.i656 ], [ -4503599627370496, %__non_const_wrapper__.18.exit ]
  %.phi105.i657 = phi i64 [ %.phi110.i655, %csroa.if.end109.i656 ], [ -4503599627370496, %__non_const_wrapper__.18.exit ]
  br label %csroa.if.end99.i660

csroa.if.end99.i660:                              ; preds = %__non_const_wrapper__.18.exit, %csroa.if.end104.i658
  %.sink1425 = phi i64 [ %.sink1424, %csroa.if.end104.i658 ], [ -2251799813685248, %__non_const_wrapper__.18.exit ]
  %.phi100.i659 = phi i64 [ %.phi105.i657, %csroa.if.end104.i658 ], [ -2251799813685248, %__non_const_wrapper__.18.exit ]
  br label %csroa.if.end94.i662

csroa.if.end94.i662:                              ; preds = %__non_const_wrapper__.18.exit, %csroa.if.end99.i660
  %.sink1426 = phi i64 [ %.sink1425, %csroa.if.end99.i660 ], [ -4608308318706860032, %__non_const_wrapper__.18.exit ]
  %.phi95.i661 = phi i64 [ %.phi100.i659, %csroa.if.end99.i660 ], [ -4613937818241073152, %__non_const_wrapper__.18.exit ]
  br label %csroa.if.end89.i664

csroa.if.end89.i664:                              ; preds = %__non_const_wrapper__.18.exit, %csroa.if.end94.i662
  %.sink1427 = phi i64 [ %.sink1426, %csroa.if.end94.i662 ], [ -4611686018427387904, %__non_const_wrapper__.18.exit ]
  %.phi90.i663 = phi i64 [ %.phi95.i661, %csroa.if.end94.i662 ], [ -9223372036854775808, %__non_const_wrapper__.18.exit ]
  br label %csroa.if.end79.i668

csroa.if.end79.i668:                              ; preds = %__non_const_wrapper__.18.exit, %__non_const_wrapper__.19.exit.thread1242, %csroa.if.end89.i664
  %.sink1428 = phi i64 [ -2251799813685248, %__non_const_wrapper__.19.exit.thread1242 ], [ %.sink1427, %csroa.if.end89.i664 ], [ -4503599627370496, %__non_const_wrapper__.18.exit ]
  %.phi80.i667 = phi i64 [ -4616189618054758400, %__non_const_wrapper__.19.exit.thread1242 ], [ %.phi90.i663, %csroa.if.end89.i664 ], [ -4616189618054758400, %__non_const_wrapper__.18.exit ]
  br label %csroa.if.end69.i672

csroa.if.end69.i672:                              ; preds = %__non_const_wrapper__.18.exit, %__non_const_wrapper__.19.exit.thread1233, %csroa.if.end79.i668
  %.sink1429 = phi i64 [ -4611686018427387904, %__non_const_wrapper__.19.exit.thread1233 ], [ %.sink1428, %csroa.if.end79.i668 ], [ -4608308318706860032, %__non_const_wrapper__.18.exit ]
  %.phi70.i671 = phi i64 [ -4611686018427387904, %__non_const_wrapper__.19.exit.thread1233 ], [ %.phi80.i667, %csroa.if.end79.i668 ], [ -4611686018427387904, %__non_const_wrapper__.18.exit ]
  br label %csroa.if.end64.i674

csroa.if.end64.i674:                              ; preds = %__non_const_wrapper__.18.exit, %csroa.if.end69.i672
  %.sink1430 = phi i64 [ %.sink1429, %csroa.if.end69.i672 ], [ -4503599627370496, %__non_const_wrapper__.18.exit ]
  %.phi65.i673 = phi i64 [ %.phi70.i671, %csroa.if.end69.i672 ], [ -4503599627370496, %__non_const_wrapper__.18.exit ]
  br label %csroa.if.end59.i676

csroa.if.end59.i676:                              ; preds = %__non_const_wrapper__.18.exit, %csroa.if.end64.i674
  %.sink1431 = phi i64 [ %.sink1430, %csroa.if.end64.i674 ], [ -2251799813685248, %__non_const_wrapper__.18.exit ]
  %.phi60.i675 = phi i64 [ %.phi65.i673, %csroa.if.end64.i674 ], [ -2251799813685248, %__non_const_wrapper__.18.exit ]
  br label %csroa.if.end54.i678

csroa.if.end54.i678:                              ; preds = %__non_const_wrapper__.18.exit, %csroa.if.end59.i676
  %.sink1432 = phi i64 [ %.sink1431, %csroa.if.end59.i676 ], [ 4612811918334230528, %__non_const_wrapper__.18.exit ]
  %.phi55.i677 = phi i64 [ %.phi60.i675, %csroa.if.end59.i676 ], [ 4609434218613702656, %__non_const_wrapper__.18.exit ]
  br label %csroa.if.end49.i680

csroa.if.end49.i680:                              ; preds = %__non_const_wrapper__.18.exit, %csroa.if.end54.i678
  %.sink1433 = phi i64 [ %.sink1432, %csroa.if.end54.i678 ], [ 0, %__non_const_wrapper__.18.exit ]
  %.phi50.i679 = phi i64 [ %.phi55.i677, %csroa.if.end54.i678 ], [ 0, %__non_const_wrapper__.18.exit ]
  br label %csroa.if.end44.i682

csroa.if.end44.i682:                              ; preds = %__non_const_wrapper__.18.exit, %csroa.if.end49.i680
  %.sink1434 = phi i64 [ %.sink1433, %csroa.if.end49.i680 ], [ 9218868437227405312, %__non_const_wrapper__.18.exit ]
  %.phi45.i681 = phi i64 [ %.phi50.i679, %csroa.if.end49.i680 ], [ 9218868437227405312, %__non_const_wrapper__.18.exit ]
  br label %csroa.if.end39.i684

csroa.if.end39.i684:                              ; preds = %__non_const_wrapper__.18.exit, %csroa.if.end44.i682
  %.sink1435 = phi i64 [ %.sink1434, %csroa.if.end44.i682 ], [ 9221120237041090560, %__non_const_wrapper__.18.exit ]
  %.phi40.i683 = phi i64 [ %.phi45.i681, %csroa.if.end44.i682 ], [ 9221120237041090560, %__non_const_wrapper__.18.exit ]
  br label %csroa.if.end34.i686

csroa.if.end34.i686:                              ; preds = %__non_const_wrapper__.18.exit, %csroa.if.end39.i684
  %.sink1436 = phi i64 [ %.sink1435, %csroa.if.end39.i684 ], [ 4615063718147915776, %__non_const_wrapper__.18.exit ]
  %.phi35.i685 = phi i64 [ %.phi40.i683, %csroa.if.end39.i684 ], [ 4609434218613702656, %__non_const_wrapper__.18.exit ]
  br label %csroa.if.end29.i688

csroa.if.end29.i688:                              ; preds = %__non_const_wrapper__.18.exit, %csroa.if.end34.i686
  %.sink1437 = phi i64 [ %.sink1436, %csroa.if.end34.i686 ], [ 4611686018427387904, %__non_const_wrapper__.18.exit ]
  %.phi30.i687 = phi i64 [ %.phi35.i685, %csroa.if.end34.i686 ], [ 0, %__non_const_wrapper__.18.exit ]
  br label %csroa.if.end19.i692

csroa.if.end19.i692:                              ; preds = %__non_const_wrapper__.18.exit, %__non_const_wrapper__.19.exit.thread1184, %csroa.if.end29.i688
  %.sink1438 = phi i64 [ 9221120237041090560, %__non_const_wrapper__.19.exit.thread1184 ], [ %.sink1437, %csroa.if.end29.i688 ], [ 9218868437227405312, %__non_const_wrapper__.18.exit ]
  %.phi20.i691 = phi i64 [ 4607182418800017408, %__non_const_wrapper__.19.exit.thread1184 ], [ %.phi30.i687, %csroa.if.end29.i688 ], [ 4607182418800017408, %__non_const_wrapper__.18.exit ]
  %cmp31190 = icmp ne i64 %call.c.c, %.sink1438
  %conv1191 = zext i1 %cmp31190 to i32
  %add1192 = add nsw i32 %conv1191, %main_result.01401
  switch i32 %i.01404, label %csroa.if.end224.i838 [
    i32 0, label %__non_const_wrapper__.21.exit
    i32 1, label %__non_const_wrapper__.21.exit
    i32 2, label %csroa.if.end9.i924
    i32 3, label %csroa.if.end14.i922
    i32 4, label %csroa.if.end19.i920
    i32 5, label %csroa.if.end24.i918
    i32 6, label %csroa.if.end29.i916
    i32 7, label %csroa.if.end29.i916
    i32 8, label %csroa.if.end39.i912
    i32 9, label %csroa.if.end39.i912
    i32 10, label %csroa.if.end49.i908
    i32 11, label %csroa.if.end54.i906
    i32 12, label %csroa.if.end59.i904
    i32 13, label %csroa.if.end59.i904
    i32 14, label %csroa.if.end69.i900
    i32 15, label %csroa.if.end74.i898
    i32 16, label %csroa.if.end79.i896
    i32 17, label %csroa.if.end84.i894
    i32 18, label %csroa.if.end89.i892
    i32 19, label %csroa.if.end89.i892
    i32 20, label %csroa.if.end99.i888
    i32 21, label %csroa.if.end99.i888
    i32 22, label %csroa.if.end109.i884
    i32 23, label %csroa.if.end114.i882
    i32 24, label %csroa.if.end119.i880
    i32 25, label %csroa.if.end119.i880
    i32 26, label %csroa.if.end129.i876
    i32 27, label %csroa.if.end134.i874
    i32 28, label %csroa.if.end139.i872
    i32 29, label %csroa.if.end144.i870
    i32 30, label %csroa.if.end149.i868
    i32 31, label %csroa.if.end154.i866
    i32 32, label %csroa.if.end154.i866
    i32 33, label %csroa.if.end164.i862
    i32 34, label %csroa.if.end169.i860
    i32 35, label %csroa.if.end174.i858
    i32 36, label %csroa.if.end179.i856
    i32 37, label %csroa.if.end184.i854
    i32 38, label %csroa.if.end189.i852
    i32 39, label %csroa.if.end194.i850
    i32 40, label %csroa.if.end199.i848
    i32 41, label %csroa.if.end204.i846
    i32 42, label %csroa.if.end209.i844
    i32 43, label %csroa.if.end209.i844
    i32 44, label %csroa.if.end219.i840
  ]

csroa.if.end224.i838:                             ; preds = %csroa.if.end19.i692
  br label %csroa.if.end219.i840

csroa.if.end219.i840:                             ; preds = %csroa.if.end19.i692, %csroa.if.end224.i838
  %.phi220.i839 = phi i64 [ 4609434218613702656, %csroa.if.end224.i838 ], [ 0, %csroa.if.end19.i692 ]
  br label %csroa.if.end209.i844

csroa.if.end209.i844:                             ; preds = %csroa.if.end219.i840, %csroa.if.end19.i692, %csroa.if.end19.i692
  %.phi210.i843 = phi i64 [ 4607182418800017408, %csroa.if.end19.i692 ], [ %.phi220.i839, %csroa.if.end219.i840 ], [ 4607182418800017408, %csroa.if.end19.i692 ]
  br label %csroa.if.end204.i846

csroa.if.end204.i846:                             ; preds = %csroa.if.end19.i692, %csroa.if.end209.i844
  %.phi205.i845 = phi i64 [ %.phi210.i843, %csroa.if.end209.i844 ], [ 4611686018427387904, %csroa.if.end19.i692 ]
  br label %csroa.if.end199.i848

csroa.if.end199.i848:                             ; preds = %csroa.if.end19.i692, %csroa.if.end204.i846
  %.phi200.i847 = phi i64 [ %.phi205.i845, %csroa.if.end204.i846 ], [ 4607182418800017408, %csroa.if.end19.i692 ]
  br label %csroa.if.end194.i850

csroa.if.end194.i850:                             ; preds = %csroa.if.end19.i692, %csroa.if.end199.i848
  %.phi195.i849 = phi i64 [ %.phi200.i847, %csroa.if.end199.i848 ], [ 9218868437227405312, %csroa.if.end19.i692 ]
  br label %csroa.if.end189.i852

csroa.if.end189.i852:                             ; preds = %csroa.if.end19.i692, %csroa.if.end194.i850
  %.phi190.i851 = phi i64 [ %.phi195.i849, %csroa.if.end194.i850 ], [ 9221120237041090560, %csroa.if.end19.i692 ]
  br label %csroa.if.end184.i854

csroa.if.end184.i854:                             ; preds = %csroa.if.end19.i692, %csroa.if.end189.i852
  %.phi185.i853 = phi i64 [ %.phi190.i851, %csroa.if.end189.i852 ], [ 4607182418800017408, %csroa.if.end19.i692 ]
  br label %csroa.if.end179.i856

csroa.if.end179.i856:                             ; preds = %csroa.if.end19.i692, %csroa.if.end184.i854
  %.phi180.i855 = phi i64 [ %.phi185.i853, %csroa.if.end184.i854 ], [ 9218868437227405312, %csroa.if.end19.i692 ]
  br label %csroa.if.end174.i858

csroa.if.end174.i858:                             ; preds = %csroa.if.end19.i692, %csroa.if.end179.i856
  %.phi175.i857 = phi i64 [ %.phi180.i855, %csroa.if.end179.i856 ], [ 9221120237041090560, %csroa.if.end19.i692 ]
  br label %csroa.if.end169.i860

csroa.if.end169.i860:                             ; preds = %csroa.if.end19.i692, %csroa.if.end174.i858
  %.phi170.i859 = phi i64 [ %.phi175.i857, %csroa.if.end174.i858 ], [ -4613937818241073152, %csroa.if.end19.i692 ]
  br label %csroa.if.end164.i862

csroa.if.end164.i862:                             ; preds = %csroa.if.end19.i692, %csroa.if.end169.i860
  %.phi165.i861 = phi i64 [ %.phi170.i859, %csroa.if.end169.i860 ], [ -9223372036854775808, %csroa.if.end19.i692 ]
  br label %csroa.if.end154.i866

csroa.if.end154.i866:                             ; preds = %csroa.if.end164.i862, %csroa.if.end19.i692, %csroa.if.end19.i692
  %.phi155.i865 = phi i64 [ -4616189618054758400, %csroa.if.end19.i692 ], [ %.phi165.i861, %csroa.if.end164.i862 ], [ -4616189618054758400, %csroa.if.end19.i692 ]
  br label %csroa.if.end149.i868

csroa.if.end149.i868:                             ; preds = %csroa.if.end19.i692, %csroa.if.end154.i866
  %.phi150.i867 = phi i64 [ %.phi155.i865, %csroa.if.end154.i866 ], [ -4611686018427387904, %csroa.if.end19.i692 ]
  br label %csroa.if.end144.i870

csroa.if.end144.i870:                             ; preds = %csroa.if.end19.i692, %csroa.if.end149.i868
  %.phi145.i869 = phi i64 [ %.phi150.i867, %csroa.if.end149.i868 ], [ -4616189618054758400, %csroa.if.end19.i692 ]
  br label %csroa.if.end139.i872

csroa.if.end139.i872:                             ; preds = %csroa.if.end19.i692, %csroa.if.end144.i870
  %.phi140.i871 = phi i64 [ %.phi145.i869, %csroa.if.end144.i870 ], [ -4503599627370496, %csroa.if.end19.i692 ]
  br label %csroa.if.end134.i874

csroa.if.end134.i874:                             ; preds = %csroa.if.end19.i692, %csroa.if.end139.i872
  %.phi135.i873 = phi i64 [ %.phi140.i871, %csroa.if.end139.i872 ], [ -2251799813685248, %csroa.if.end19.i692 ]
  br label %csroa.if.end129.i876

csroa.if.end129.i876:                             ; preds = %csroa.if.end19.i692, %csroa.if.end134.i874
  %.phi130.i875 = phi i64 [ %.phi135.i873, %csroa.if.end134.i874 ], [ -4616189618054758400, %csroa.if.end19.i692 ]
  br label %csroa.if.end119.i880

csroa.if.end119.i880:                             ; preds = %csroa.if.end129.i876, %csroa.if.end19.i692, %csroa.if.end19.i692
  %.phi120.i879 = phi i64 [ -4503599627370496, %csroa.if.end19.i692 ], [ %.phi130.i875, %csroa.if.end129.i876 ], [ -4503599627370496, %csroa.if.end19.i692 ]
  br label %csroa.if.end114.i882

csroa.if.end114.i882:                             ; preds = %csroa.if.end19.i692, %csroa.if.end119.i880
  %.phi115.i881 = phi i64 [ %.phi120.i879, %csroa.if.end119.i880 ], [ -4616189618054758400, %csroa.if.end19.i692 ]
  br label %csroa.if.end109.i884

csroa.if.end109.i884:                             ; preds = %csroa.if.end19.i692, %csroa.if.end114.i882
  %.phi110.i883 = phi i64 [ %.phi115.i881, %csroa.if.end114.i882 ], [ -9223372036854775808, %csroa.if.end19.i692 ]
  br label %csroa.if.end99.i888

csroa.if.end99.i888:                              ; preds = %csroa.if.end109.i884, %csroa.if.end19.i692, %csroa.if.end19.i692
  %.phi100.i887 = phi i64 [ -4503599627370496, %csroa.if.end19.i692 ], [ %.phi110.i883, %csroa.if.end109.i884 ], [ -4503599627370496, %csroa.if.end19.i692 ]
  br label %csroa.if.end89.i892

csroa.if.end89.i892:                              ; preds = %csroa.if.end99.i888, %csroa.if.end19.i692, %csroa.if.end19.i692
  %.phi90.i891 = phi i64 [ -4611686018427387904, %csroa.if.end19.i692 ], [ %.phi100.i887, %csroa.if.end99.i888 ], [ -4611686018427387904, %csroa.if.end19.i692 ]
  br label %csroa.if.end84.i894

csroa.if.end84.i894:                              ; preds = %csroa.if.end19.i692, %csroa.if.end89.i892
  %.phi85.i893 = phi i64 [ %.phi90.i891, %csroa.if.end89.i892 ], [ -4503599627370496, %csroa.if.end19.i692 ]
  br label %csroa.if.end79.i896

csroa.if.end79.i896:                              ; preds = %csroa.if.end19.i692, %csroa.if.end84.i894
  %.phi80.i895 = phi i64 [ %.phi85.i893, %csroa.if.end84.i894 ], [ -2251799813685248, %csroa.if.end19.i692 ]
  br label %csroa.if.end74.i898

csroa.if.end74.i898:                              ; preds = %csroa.if.end19.i692, %csroa.if.end79.i896
  %.phi75.i897 = phi i64 [ %.phi80.i895, %csroa.if.end79.i896 ], [ -4613937818241073152, %csroa.if.end19.i692 ]
  br label %csroa.if.end69.i900

csroa.if.end69.i900:                              ; preds = %csroa.if.end19.i692, %csroa.if.end74.i898
  %.phi70.i899 = phi i64 [ %.phi75.i897, %csroa.if.end74.i898 ], [ -9223372036854775808, %csroa.if.end19.i692 ]
  br label %csroa.if.end59.i904

csroa.if.end59.i904:                              ; preds = %csroa.if.end69.i900, %csroa.if.end19.i692, %csroa.if.end19.i692
  %.phi60.i903 = phi i64 [ -4616189618054758400, %csroa.if.end19.i692 ], [ %.phi70.i899, %csroa.if.end69.i900 ], [ -4616189618054758400, %csroa.if.end19.i692 ]
  br label %csroa.if.end54.i906

csroa.if.end54.i906:                              ; preds = %csroa.if.end19.i692, %csroa.if.end59.i904
  %.phi55.i905 = phi i64 [ %.phi60.i903, %csroa.if.end59.i904 ], [ 4607182418800017408, %csroa.if.end19.i692 ]
  br label %csroa.if.end49.i908

csroa.if.end49.i908:                              ; preds = %csroa.if.end19.i692, %csroa.if.end54.i906
  %.phi50.i907 = phi i64 [ %.phi55.i905, %csroa.if.end54.i906 ], [ 0, %csroa.if.end19.i692 ]
  br label %csroa.if.end39.i912

csroa.if.end39.i912:                              ; preds = %csroa.if.end49.i908, %csroa.if.end19.i692, %csroa.if.end19.i692
  %.phi40.i911 = phi i64 [ 9218868437227405312, %csroa.if.end19.i692 ], [ %.phi50.i907, %csroa.if.end49.i908 ], [ 9218868437227405312, %csroa.if.end19.i692 ]
  br label %csroa.if.end29.i916

csroa.if.end29.i916:                              ; preds = %csroa.if.end39.i912, %csroa.if.end19.i692, %csroa.if.end19.i692
  %.phi30.i915 = phi i64 [ 4611686018427387904, %csroa.if.end19.i692 ], [ %.phi40.i911, %csroa.if.end39.i912 ], [ 4611686018427387904, %csroa.if.end19.i692 ]
  br label %csroa.if.end24.i918

csroa.if.end24.i918:                              ; preds = %csroa.if.end19.i692, %csroa.if.end29.i916
  %.phi25.i917 = phi i64 [ %.phi30.i915, %csroa.if.end29.i916 ], [ 9218868437227405312, %csroa.if.end19.i692 ]
  br label %csroa.if.end19.i920

csroa.if.end19.i920:                              ; preds = %csroa.if.end19.i692, %csroa.if.end24.i918
  %.phi20.i919 = phi i64 [ %.phi25.i917, %csroa.if.end24.i918 ], [ 9221120237041090560, %csroa.if.end19.i692 ]
  br label %csroa.if.end14.i922

csroa.if.end14.i922:                              ; preds = %__non_const_wrapper__.20.exit.thread1389, %csroa.if.end19.i692, %csroa.if.end19.i920
  %.phi10.i6951391 = phi i64 [ %.phi20.i691, %csroa.if.end19.i920 ], [ %.phi20.i691, %csroa.if.end19.i692 ], [ 4611686018427387904, %__non_const_wrapper__.20.exit.thread1389 ]
  %add11791390 = phi i32 [ %add1192, %csroa.if.end19.i920 ], [ %add1192, %csroa.if.end19.i692 ], [ %add1183, %__non_const_wrapper__.20.exit.thread1389 ]
  %.phi15.i921 = phi i64 [ %.phi20.i919, %csroa.if.end19.i920 ], [ 4609434218613702656, %csroa.if.end19.i692 ], [ 4609434218613702656, %__non_const_wrapper__.20.exit.thread1389 ]
  br label %csroa.if.end9.i924

csroa.if.end9.i924:                               ; preds = %__non_const_wrapper__.20.exit.thread1386, %csroa.if.end19.i692, %csroa.if.end14.i922
  %.phi10.i6951388 = phi i64 [ %.phi10.i6951391, %csroa.if.end14.i922 ], [ %.phi20.i691, %csroa.if.end19.i692 ], [ 4611686018427387904, %__non_const_wrapper__.20.exit.thread1386 ]
  %add11791387 = phi i32 [ %add11791390, %csroa.if.end14.i922 ], [ %add1192, %csroa.if.end19.i692 ], [ %add1178, %__non_const_wrapper__.20.exit.thread1386 ]
  %.phi10.i923 = phi i64 [ %.phi15.i921, %csroa.if.end14.i922 ], [ 0, %csroa.if.end19.i692 ], [ 0, %__non_const_wrapper__.20.exit.thread1386 ]
  br label %__non_const_wrapper__.21.exit

__non_const_wrapper__.21.exit:                    ; preds = %csroa.if.end9.i924, %csroa.if.end19.i692, %csroa.if.end19.i692
  %.phi.i6991383 = phi i64 [ %.phi20.i691, %csroa.if.end19.i692 ], [ %.phi10.i6951388, %csroa.if.end9.i924 ], [ %.phi20.i691, %csroa.if.end19.i692 ]
  %add11671381 = phi i32 [ %add1192, %csroa.if.end19.i692 ], [ %add11791387, %csroa.if.end9.i924 ], [ %add1192, %csroa.if.end19.i692 ]
  %.phi.i927 = phi i64 [ 4607182418800017408, %csroa.if.end19.i692 ], [ %.phi10.i923, %csroa.if.end9.i924 ], [ 4607182418800017408, %csroa.if.end19.i692 ]
  switch i32 %i.01404, label %csroa.if.else203.i1054 [
    i32 0, label %__non_const_wrapper__.22.exit
    i32 1, label %csroa.if.end4.i1154
    i32 2, label %csroa.if.end9.i1152
    i32 3, label %csroa.if.end14.i1150
    i32 4, label %csroa.if.end19.i1148
    i32 5, label %csroa.if.end24.i1146
    i32 6, label %csroa.if.end29.i1144
    i32 7, label %csroa.if.end34.i1142
    i32 8, label %csroa.if.end39.i1140
    i32 9, label %csroa.if.end44.i1138
    i32 10, label %csroa.if.end49.i1136
    i32 11, label %csroa.if.end54.i1134
    i32 12, label %csroa.if.end59.i1132
    i32 13, label %csroa.if.end64.i1130
    i32 14, label %csroa.if.end69.i1128
    i32 15, label %csroa.if.end74.i1126
    i32 16, label %csroa.if.end79.i1124
    i32 17, label %csroa.if.end84.i1122
    i32 18, label %csroa.if.end89.i1120
    i32 19, label %csroa.if.end94.i1118
    i32 20, label %csroa.if.end99.i1116
    i32 21, label %csroa.if.end104.i1114
    i32 22, label %csroa.if.end109.i1112
    i32 23, label %csroa.if.end114.i1110
    i32 24, label %csroa.if.end119.i1108
    i32 25, label %csroa.if.end124.i1106
    i32 26, label %csroa.if.end129.i1104
    i32 27, label %csroa.if.end134.i1102
    i32 28, label %csroa.if.end139.i1100
    i32 29, label %csroa.if.end144.i1098
    i32 30, label %csroa.if.end149.i1096
    i32 31, label %csroa.if.end154.i1094
    i32 32, label %csroa.if.end159.i1092
    i32 33, label %csroa.if.end164.i1090
    i32 34, label %csroa.if.end169.i1088
    i32 35, label %csroa.if.end174.i1086
    i32 36, label %csroa.if.end179.i1084
    i32 37, label %csroa.if.end184.i1082
    i32 38, label %csroa.if.end189.i1080
    i32 39, label %csroa.if.end194.i1078
    i32 40, label %csroa.if.end199.i1076
    i32 41, label %csroa.if.end204.i1074
  ]

csroa.if.else203.i1054:                           ; preds = %__non_const_wrapper__.21.exit
  switch i32 %i.01404, label %csroa.if.end224.i1066 [
    i32 42, label %csroa.if.end204.i1074
    i32 43, label %csroa.if.end214.i1070
    i32 44, label %csroa.if.end219.i1068
  ]

csroa.if.end224.i1066:                            ; preds = %csroa.if.else203.i1054
  br label %csroa.if.end219.i1068

csroa.if.end219.i1068:                            ; preds = %csroa.if.else203.i1054, %csroa.if.end224.i1066
  %.phi220.i1067 = phi i64 [ -4620693217682128896, %csroa.if.end224.i1066 ], [ -4616189618054758400, %csroa.if.else203.i1054 ]
  br label %csroa.if.end214.i1070

csroa.if.end214.i1070:                            ; preds = %csroa.if.else203.i1054, %csroa.if.end219.i1068
  %.phi215.i1069 = phi i64 [ %.phi220.i1067, %csroa.if.end219.i1068 ], [ -4503599627370496, %csroa.if.else203.i1054 ]
  br label %csroa.if.end204.i1074

csroa.if.end204.i1074:                            ; preds = %csroa.if.end214.i1070, %csroa.if.else203.i1054, %__non_const_wrapper__.21.exit
  %.phi205.i1073 = phi i64 [ 4602678819172646912, %__non_const_wrapper__.21.exit ], [ %.phi215.i1069, %csroa.if.end214.i1070 ], [ -2251799813685248, %csroa.if.else203.i1054 ]
  br label %csroa.if.end199.i1076

csroa.if.end199.i1076:                            ; preds = %__non_const_wrapper__.21.exit, %csroa.if.end204.i1074
  %.phi200.i1075 = phi i64 [ %.phi205.i1073, %csroa.if.end204.i1074 ], [ 4607182418800017408, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end194.i1078

csroa.if.end194.i1078:                            ; preds = %__non_const_wrapper__.21.exit, %csroa.if.end199.i1076
  %.phi195.i1077 = phi i64 [ %.phi200.i1075, %csroa.if.end199.i1076 ], [ 9218868437227405312, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end189.i1080

csroa.if.end189.i1080:                            ; preds = %__non_const_wrapper__.21.exit, %csroa.if.end194.i1078
  %.phi190.i1079 = phi i64 [ %.phi195.i1077, %csroa.if.end194.i1078 ], [ 9221120237041090560, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end184.i1082

csroa.if.end184.i1082:                            ; preds = %__non_const_wrapper__.21.exit, %csroa.if.end189.i1080
  %.phi185.i1081 = phi i64 [ %.phi190.i1079, %csroa.if.end189.i1080 ], [ 0, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end179.i1084

csroa.if.end179.i1084:                            ; preds = %__non_const_wrapper__.21.exit, %csroa.if.end184.i1082
  %.phi180.i1083 = phi i64 [ %.phi185.i1081, %csroa.if.end184.i1082 ], [ 9223372036854775807, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end174.i1086

csroa.if.end174.i1086:                            ; preds = %__non_const_wrapper__.21.exit, %csroa.if.end179.i1084
  %.phi175.i1085 = phi i64 [ %.phi180.i1083, %csroa.if.end179.i1084 ], [ 9221120237041090560, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end169.i1088

csroa.if.end169.i1088:                            ; preds = %__non_const_wrapper__.21.exit, %csroa.if.end174.i1086
  %.phi170.i1087 = phi i64 [ %.phi175.i1085, %csroa.if.end174.i1086 ], [ 4602678819172646912, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end164.i1090

csroa.if.end164.i1090:                            ; preds = %__non_const_wrapper__.21.exit, %csroa.if.end169.i1088
  %.phi165.i1089 = phi i64 [ %.phi170.i1087, %csroa.if.end169.i1088 ], [ 4607182418800017408, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end159.i1092

csroa.if.end159.i1092:                            ; preds = %__non_const_wrapper__.21.exit, %csroa.if.end164.i1090
  %.phi160.i1091 = phi i64 [ %.phi165.i1089, %csroa.if.end164.i1090 ], [ 9218868437227405312, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end154.i1094

csroa.if.end154.i1094:                            ; preds = %__non_const_wrapper__.21.exit, %csroa.if.end159.i1092
  %.phi155.i1093 = phi i64 [ %.phi160.i1091, %csroa.if.end159.i1092 ], [ 9221120237041090560, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end149.i1096

csroa.if.end149.i1096:                            ; preds = %__non_const_wrapper__.21.exit, %csroa.if.end154.i1094
  %.phi150.i1095 = phi i64 [ %.phi155.i1093, %csroa.if.end154.i1094 ], [ -4620693217682128896, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end144.i1098

csroa.if.end144.i1098:                            ; preds = %__non_const_wrapper__.21.exit, %csroa.if.end149.i1096
  %.phi145.i1097 = phi i64 [ %.phi150.i1095, %csroa.if.end149.i1096 ], [ -4616189618054758400, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end139.i1100

csroa.if.end139.i1100:                            ; preds = %__non_const_wrapper__.21.exit, %csroa.if.end144.i1098
  %.phi140.i1099 = phi i64 [ %.phi145.i1097, %csroa.if.end144.i1098 ], [ -4503599627370496, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end134.i1102

csroa.if.end134.i1102:                            ; preds = %__non_const_wrapper__.21.exit, %csroa.if.end139.i1100
  %.phi135.i1101 = phi i64 [ %.phi140.i1099, %csroa.if.end139.i1100 ], [ -2251799813685248, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end129.i1104

csroa.if.end129.i1104:                            ; preds = %__non_const_wrapper__.21.exit, %csroa.if.end134.i1102
  %.phi130.i1103 = phi i64 [ %.phi135.i1101, %csroa.if.end134.i1102 ], [ 0, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end124.i1106

csroa.if.end124.i1106:                            ; preds = %__non_const_wrapper__.21.exit, %csroa.if.end129.i1104
  %.phi125.i1105 = phi i64 [ %.phi130.i1103, %csroa.if.end129.i1104 ], [ 9223372036854775807, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end119.i1108

csroa.if.end119.i1108:                            ; preds = %__non_const_wrapper__.21.exit, %csroa.if.end124.i1106
  %.phi120.i1107 = phi i64 [ %.phi125.i1105, %csroa.if.end124.i1106 ], [ 9221120237041090560, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end114.i1110

csroa.if.end114.i1110:                            ; preds = %__non_const_wrapper__.21.exit, %csroa.if.end119.i1108
  %.phi115.i1109 = phi i64 [ %.phi120.i1107, %csroa.if.end119.i1108 ], [ -4610560118520545280, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end109.i1112

csroa.if.end109.i1112:                            ; preds = %__non_const_wrapper__.21.exit, %csroa.if.end114.i1110
  %.phi110.i1111 = phi i64 [ %.phi115.i1109, %csroa.if.end114.i1110 ], [ -9223372036854775808, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end104.i1114

csroa.if.end104.i1114:                            ; preds = %__non_const_wrapper__.21.exit, %csroa.if.end109.i1112
  %.phi105.i1113 = phi i64 [ %.phi110.i1111, %csroa.if.end109.i1112 ], [ -4503599627370496, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end99.i1116

csroa.if.end99.i1116:                             ; preds = %__non_const_wrapper__.21.exit, %csroa.if.end104.i1114
  %.phi100.i1115 = phi i64 [ %.phi105.i1113, %csroa.if.end104.i1114 ], [ -2251799813685248, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end94.i1118

csroa.if.end94.i1118:                             ; preds = %__non_const_wrapper__.21.exit, %csroa.if.end99.i1116
  %.phi95.i1117 = phi i64 [ %.phi100.i1115, %csroa.if.end99.i1116 ], [ -4608308318706860032, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end89.i1120

csroa.if.end89.i1120:                             ; preds = %__non_const_wrapper__.21.exit, %csroa.if.end94.i1118
  %.phi90.i1119 = phi i64 [ %.phi95.i1117, %csroa.if.end94.i1118 ], [ -4611686018427387904, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end84.i1122

csroa.if.end84.i1122:                             ; preds = %__non_const_wrapper__.21.exit, %csroa.if.end89.i1120
  %.phi85.i1121 = phi i64 [ %.phi90.i1119, %csroa.if.end89.i1120 ], [ -4503599627370496, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end79.i1124

csroa.if.end79.i1124:                             ; preds = %__non_const_wrapper__.21.exit, %csroa.if.end84.i1122
  %.phi80.i1123 = phi i64 [ %.phi85.i1121, %csroa.if.end84.i1122 ], [ -2251799813685248, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end74.i1126

csroa.if.end74.i1126:                             ; preds = %__non_const_wrapper__.21.exit, %csroa.if.end79.i1124
  %.phi75.i1125 = phi i64 [ %.phi80.i1123, %csroa.if.end79.i1124 ], [ -4608308318706860032, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end69.i1128

csroa.if.end69.i1128:                             ; preds = %__non_const_wrapper__.21.exit, %csroa.if.end74.i1126
  %.phi70.i1127 = phi i64 [ %.phi75.i1125, %csroa.if.end74.i1126 ], [ -4611686018427387904, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end64.i1130

csroa.if.end64.i1130:                             ; preds = %__non_const_wrapper__.21.exit, %csroa.if.end69.i1128
  %.phi65.i1129 = phi i64 [ %.phi70.i1127, %csroa.if.end69.i1128 ], [ -4503599627370496, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end59.i1132

csroa.if.end59.i1132:                             ; preds = %__non_const_wrapper__.21.exit, %csroa.if.end64.i1130
  %.phi60.i1131 = phi i64 [ %.phi65.i1129, %csroa.if.end64.i1130 ], [ -2251799813685248, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end54.i1134

csroa.if.end54.i1134:                             ; preds = %__non_const_wrapper__.21.exit, %csroa.if.end59.i1132
  %.phi55.i1133 = phi i64 [ %.phi60.i1131, %csroa.if.end59.i1132 ], [ 4612811918334230528, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end49.i1136

csroa.if.end49.i1136:                             ; preds = %__non_const_wrapper__.21.exit, %csroa.if.end54.i1134
  %.phi50.i1135 = phi i64 [ %.phi55.i1133, %csroa.if.end54.i1134 ], [ 0, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end44.i1138

csroa.if.end44.i1138:                             ; preds = %__non_const_wrapper__.21.exit, %csroa.if.end49.i1136
  %.phi45.i1137 = phi i64 [ %.phi50.i1135, %csroa.if.end49.i1136 ], [ 9218868437227405312, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end39.i1140

csroa.if.end39.i1140:                             ; preds = %__non_const_wrapper__.21.exit, %csroa.if.end44.i1138
  %.phi40.i1139 = phi i64 [ %.phi45.i1137, %csroa.if.end44.i1138 ], [ 9221120237041090560, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end34.i1142

csroa.if.end34.i1142:                             ; preds = %__non_const_wrapper__.21.exit, %csroa.if.end39.i1140
  %.phi35.i1141 = phi i64 [ %.phi40.i1139, %csroa.if.end39.i1140 ], [ 4615063718147915776, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end29.i1144

csroa.if.end29.i1144:                             ; preds = %__non_const_wrapper__.21.exit, %csroa.if.end34.i1142
  %.phi30.i1143 = phi i64 [ %.phi35.i1141, %csroa.if.end34.i1142 ], [ 4611686018427387904, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end24.i1146

csroa.if.end24.i1146:                             ; preds = %__non_const_wrapper__.21.exit, %csroa.if.end29.i1144
  %.phi25.i1145 = phi i64 [ %.phi30.i1143, %csroa.if.end29.i1144 ], [ 9218868437227405312, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end19.i1148

csroa.if.end19.i1148:                             ; preds = %__non_const_wrapper__.21.exit, %csroa.if.end24.i1146
  %.phi20.i1147 = phi i64 [ %.phi25.i1145, %csroa.if.end24.i1146 ], [ 9221120237041090560, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end14.i1150

csroa.if.end14.i1150:                             ; preds = %__non_const_wrapper__.21.exit, %csroa.if.end19.i1148
  %.phi15.i1149 = phi i64 [ %.phi20.i1147, %csroa.if.end19.i1148 ], [ 4615063718147915776, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end9.i1152

csroa.if.end9.i1152:                              ; preds = %__non_const_wrapper__.21.exit, %csroa.if.end14.i1150
  %.phi10.i1151 = phi i64 [ %.phi15.i1149, %csroa.if.end14.i1150 ], [ 4611686018427387904, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end4.i1154

csroa.if.end4.i1154:                              ; preds = %__non_const_wrapper__.18.exit.thread1160, %__non_const_wrapper__.21.exit, %csroa.if.end9.i1152
  %.phi.i9271400 = phi i64 [ %.phi.i927, %csroa.if.end9.i1152 ], [ %.phi.i927, %__non_const_wrapper__.21.exit ], [ 4607182418800017408, %__non_const_wrapper__.18.exit.thread1160 ]
  %add116713811399 = phi i32 [ %add11671381, %csroa.if.end9.i1152 ], [ %add11671381, %__non_const_wrapper__.21.exit ], [ %add1172, %__non_const_wrapper__.18.exit.thread1160 ]
  %call.c.c1159116613821398 = phi i64 [ %call.c.c, %csroa.if.end9.i1152 ], [ %call.c.c, %__non_const_wrapper__.21.exit ], [ %call.c.c1161, %__non_const_wrapper__.18.exit.thread1160 ]
  %.phi.i69913831397 = phi i64 [ %.phi.i6991383, %csroa.if.end9.i1152 ], [ %.phi.i6991383, %__non_const_wrapper__.21.exit ], [ 9218868437227405312, %__non_const_wrapper__.18.exit.thread1160 ]
  %.phi5.i1153 = phi i64 [ %.phi10.i1151, %csroa.if.end9.i1152 ], [ 9218868437227405312, %__non_const_wrapper__.21.exit ], [ 9218868437227405312, %__non_const_wrapper__.18.exit.thread1160 ]
  br label %__non_const_wrapper__.22.exit

__non_const_wrapper__.22.exit:                    ; preds = %__non_const_wrapper__.18.exit.thread, %__non_const_wrapper__.21.exit, %csroa.if.end4.i1154
  %.phi.i9271395 = phi i64 [ %.phi.i9271400, %csroa.if.end4.i1154 ], [ %.phi.i927, %__non_const_wrapper__.21.exit ], [ 4607182418800017408, %__non_const_wrapper__.18.exit.thread ]
  %add116713811394 = phi i32 [ %add116713811399, %csroa.if.end4.i1154 ], [ %add11671381, %__non_const_wrapper__.21.exit ], [ %add1165, %__non_const_wrapper__.18.exit.thread ]
  %call.c.c1159116613821393 = phi i64 [ %call.c.c1159116613821398, %csroa.if.end4.i1154 ], [ %call.c.c, %__non_const_wrapper__.21.exit ], [ %call.c.c1158, %__non_const_wrapper__.18.exit.thread ]
  %.phi.i69913831392 = phi i64 [ %.phi.i69913831397, %csroa.if.end4.i1154 ], [ %.phi.i6991383, %__non_const_wrapper__.21.exit ], [ 9221120237041090560, %__non_const_wrapper__.18.exit.thread ]
  %.phi.i1155 = phi i64 [ %.phi5.i1153, %csroa.if.end4.i1154 ], [ 9221120237041090560, %__non_const_wrapper__.21.exit ], [ 9221120237041090560, %__non_const_wrapper__.18.exit.thread ]
  %.cast = bitcast i64 %call.c.c1159116613821393 to double
  %call8 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i32 0, i32 0), i64 %.phi.i69913831392, i64 %.phi.i9271395, i64 %.phi.i1155, i64 %call.c.c1159116613821393, double %.cast)
  %inc = add nuw nsw i32 %i.01404, 1
  %exitcond = icmp eq i32 %inc, 46
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %__non_const_wrapper__.22.exit
  %call9 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %add116713811394)
  ret i32 %add116713811394
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

; Function Attrs: noinline nounwind
define i64 @float64_add.v0.C.c.c(i64 %a, i64 %b) local_unnamed_addr #5 {
entry:
  %aSig.i4 = alloca i64, align 8
  %bSig.i5 = alloca i64, align 8
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
  %call.c.i.c = tail call i64 @extractFloat64Frac.v0.C.c.c(i64 %a)
  %call1.c.i.c = tail call i32 @extractFloat64Exp.v0.C.c.c(i64 %a)
  %call2.c.i.c = tail call i64 @extractFloat64Frac.v0.C.c.c(i64 %b)
  %call3.c.i.c = tail call i32 @extractFloat64Exp.v0.C.c.c(i64 %b)
  %sub.i = sub nsw i32 %call1.c.i.c, %call3.c.i.c
  %shl.i = shl i64 %call.c.i.c, 9
  store i64 %shl.i, i64* %aSig.i, align 8
  %shl4.i = shl i64 %call2.c.i.c, 9
  store i64 %shl4.i, i64* %bSig.i, align 8
  %cmp.i = icmp sgt i32 %sub.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.else13.i

if.then.i:                                        ; preds = %if.then
  %cmp5.i = icmp eq i32 %call1.c.i.c, 2047
  br i1 %cmp5.i, label %if.then6.i, label %if.end9.i

if.then6.i:                                       ; preds = %if.then.i
  %tobool.i = icmp eq i64 %shl.i, 0
  br i1 %tobool.i, label %addFloat64Sigs.v0.C.c.exit, label %if.then7.i

if.then7.i:                                       ; preds = %if.then6.i
  %call8.c.i.c = tail call fastcc i64 @propagateFloat64NaN.v0.C.c.c(i64 %a, i64 %b)
  br label %addFloat64Sigs.v0.C.c.exit

if.end9.i:                                        ; preds = %if.then.i
  %cmp10.i = icmp eq i32 %call3.c.i.c, 0
  br i1 %cmp10.i, label %if.then11.i, label %if.else.i

if.then11.i:                                      ; preds = %if.end9.i
  %dec.i = add nsw i32 %sub.i, -1
  br label %if.end12.i

if.else.i:                                        ; preds = %if.end9.i
  %or.i = or i64 %shl4.i, 2305843009213693952
  store i64 %or.i, i64* %bSig.i, align 8
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.else.i, %if.then11.i
  %2 = phi i64 [ %shl4.i, %if.then11.i ], [ %or.i, %if.else.i ]
  %expDiff.0.i = phi i32 [ %dec.i, %if.then11.i ], [ %sub.i, %if.else.i ]
  call void @shift64RightJamming.v0.C.c.c(i64 %2, i32 %expDiff.0.i, i64* nonnull %bSig.i)
  %.pre3 = load i64, i64* %bSig.i, align 8
  br label %if.end46.i

if.else13.i:                                      ; preds = %if.then
  %cmp14.i = icmp slt i32 %sub.i, 0
  br i1 %cmp14.i, label %if.then15.i, label %if.else30.i

if.then15.i:                                      ; preds = %if.else13.i
  %cmp16.i = icmp eq i32 %call3.c.i.c, 2047
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
  %cmp24.i = icmp eq i32 %call1.c.i.c, 0
  br i1 %cmp24.i, label %if.then25.i, label %if.else26.i

if.then25.i:                                      ; preds = %if.end23.i
  %inc.i = add nsw i32 %sub.i, 1
  br label %if.end28.i

if.else26.i:                                      ; preds = %if.end23.i
  %or27.i = or i64 %shl.i, 2305843009213693952
  store i64 %or27.i, i64* %aSig.i, align 8
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.else26.i, %if.then25.i
  %3 = phi i64 [ %shl.i, %if.then25.i ], [ %or27.i, %if.else26.i ]
  %expDiff.1.i = phi i32 [ %inc.i, %if.then25.i ], [ %sub.i, %if.else26.i ]
  %sub29.i = sub nsw i32 0, %expDiff.1.i
  call void @shift64RightJamming.v0.C.c.c(i64 %3, i32 %sub29.i, i64* nonnull %aSig.i)
  %.pre2 = load i64, i64* %aSig.i, align 8
  br label %if.end46.i

if.else30.i:                                      ; preds = %if.else13.i
  switch i32 %call1.c.i.c, label %if.end42.i [
    i32 2047, label %if.then32.i
    i32 0, label %if.then40.i
  ]

if.then32.i:                                      ; preds = %if.else30.i
  %or33.i = or i64 %shl.i, %shl4.i
  %tobool34.i = icmp eq i64 %or33.i, 0
  br i1 %tobool34.i, label %addFloat64Sigs.v0.C.c.exit, label %if.then35.i

if.then35.i:                                      ; preds = %if.then32.i
  %call36.c.i.c = tail call fastcc i64 @propagateFloat64NaN.v0.C.c.c(i64 %a, i64 %b)
  br label %addFloat64Sigs.v0.C.c.exit

if.then40.i:                                      ; preds = %if.else30.i
  %add.i = add i64 %shl.i, %shl4.i
  %shr.i3 = lshr exact i64 %add.i, 9
  %call41.c.i.c = tail call i64 @packFloat64.v0.C.c.c(i32 %conv.i, i32 0, i64 %shr.i3)
  br label %addFloat64Sigs.v0.C.c.exit

if.end42.i:                                       ; preds = %if.else30.i
  %add43.i = add i64 %shl4.i, 4611686018427387904
  %add44.i = add i64 %add43.i, %shl.i
  br label %roundAndPack.i

if.end46.i:                                       ; preds = %if.end28.i, %if.end12.i
  %4 = phi i64 [ %.pre3, %if.end12.i ], [ %shl4.i, %if.end28.i ]
  %5 = phi i64 [ %shl.i, %if.end12.i ], [ %.pre2, %if.end28.i ]
  %zExp.0.i = phi i32 [ %call1.c.i.c, %if.end12.i ], [ %call3.c.i.c, %if.end28.i ]
  %or47.i = or i64 %5, 2305843009213693952
  store i64 %or47.i, i64* %aSig.i, align 8
  %add48.i = add i64 %4, %or47.i
  %shl49.i = shl i64 %add48.i, 1
  %cmp51.i = icmp slt i64 %shl49.i, 0
  %not.cmp51.i = xor i1 %cmp51.i, true
  %dec50.i = sext i1 %not.cmp51.i to i32
  %zExp.0.i.dec50.i = add nsw i32 %dec50.i, %zExp.0.i
  %add48.i.shl49.i = select i1 %cmp51.i, i64 %add48.i, i64 %shl49.i
  br label %roundAndPack.i

roundAndPack.i:                                   ; preds = %if.end46.i, %if.end42.i
  %zExp.2.i = phi i32 [ %call1.c.i.c, %if.end42.i ], [ %zExp.0.i.dec50.i, %if.end46.i ]
  %zSig.1.i = phi i64 [ %add44.i, %if.end42.i ], [ %add48.i.shl49.i, %if.end46.i ]
  %call56.c.i.c = tail call fastcc i64 @roundAndPackFloat64.v0.C.c.c(i32 %conv.i, i32 %zExp.2.i, i64 %zSig.1.i)
  br label %addFloat64Sigs.v0.C.c.exit

addFloat64Sigs.v0.C.c.exit:                       ; preds = %if.then6.i, %if.then32.i, %if.then7.i, %if.then19.i, %if.end21.i, %if.then35.i, %if.then40.i, %roundAndPack.i
  %retval.0.i = phi i64 [ %call8.c.i.c, %if.then7.i ], [ %call56.c.i.c, %roundAndPack.i ], [ %call20.c.i.c, %if.then19.i ], [ %call22.c.i.c, %if.end21.i ], [ %call36.c.i.c, %if.then35.i ], [ %call41.c.i.c, %if.then40.i ], [ %a, %if.then6.i ], [ %a, %if.then32.i ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %0)
  call void @llvm.lifetime.end(i64 8, i8* nonnull %1)
  br label %return

if.else:                                          ; preds = %entry
  %6 = bitcast i64* %aSig.i4 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %6)
  %7 = bitcast i64* %bSig.i5 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %7)
  %call.c.i6.c = tail call i64 @extractFloat64Frac.v0.C.c.c(i64 %a)
  %call1.c.i7.c = tail call i32 @extractFloat64Exp.v0.C.c.c(i64 %a)
  %call2.c.i8.c = tail call i64 @extractFloat64Frac.v0.C.c.c(i64 %b)
  %call3.c.i9.c = tail call i32 @extractFloat64Exp.v0.C.c.c(i64 %b)
  %sub.i10 = sub nsw i32 %call1.c.i7.c, %call3.c.i9.c
  %shl.i11 = shl i64 %call.c.i6.c, 10
  store i64 %shl.i11, i64* %aSig.i4, align 8
  %shl4.i12 = shl i64 %call2.c.i8.c, 10
  store i64 %shl4.i12, i64* %bSig.i5, align 8
  %cmp.i13 = icmp sgt i32 %sub.i10, 0
  br i1 %cmp.i13, label %if.then.i14, label %if.end.i16

if.then.i14:                                      ; preds = %if.else
  %cmp43.i = icmp eq i32 %call1.c.i7.c, 2047
  br i1 %cmp43.i, label %if.then45.i, label %if.end50.i

if.end.i16:                                       ; preds = %if.else
  %cmp5.i15 = icmp slt i32 %sub.i10, 0
  br i1 %cmp5.i15, label %if.then6.i17, label %if.end7.i

if.then6.i17:                                     ; preds = %if.end.i16
  %cmp25.i = icmp eq i32 %call3.c.i9.c, 2047
  br i1 %cmp25.i, label %if.then27.i, label %if.end33.i

if.end7.i:                                        ; preds = %if.end.i16
  switch i32 %call1.c.i7.c, label %if.end16.i [
    i32 2047, label %if.then9.i
    i32 0, label %if.then15.i22
  ]

if.then9.i:                                       ; preds = %if.end7.i
  %or.i18 = or i64 %shl.i11, %shl4.i12
  %tobool.i19 = icmp eq i64 %or.i18, 0
  br i1 %tobool.i19, label %if.end12.i20, label %if.then10.i

if.then10.i:                                      ; preds = %if.then9.i
  %call11.c.i.c = tail call fastcc i64 @propagateFloat64NaN.v0.C.c.c(i64 %a, i64 %b)
  br label %subFloat64Sigs.v0.C.c.exit

if.end12.i20:                                     ; preds = %if.then9.i
  tail call void @float_raise.v0.C.c.c(i32 16)
  br label %subFloat64Sigs.v0.C.c.exit

if.then15.i22:                                    ; preds = %if.end7.i
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.end7.i, %if.then15.i22
  %bExp.0.i = phi i32 [ 1, %if.then15.i22 ], [ %call3.c.i9.c, %if.end7.i ]
  %aExp.0.i = phi i32 [ 1, %if.then15.i22 ], [ %call1.c.i7.c, %if.end7.i ]
  %cmp17.i = icmp ult i64 %shl4.i12, %shl.i11
  br i1 %cmp17.i, label %aBigger.i, label %if.end19.i

if.end19.i:                                       ; preds = %if.end16.i
  %cmp20.i = icmp ult i64 %shl.i11, %shl4.i12
  br i1 %cmp20.i, label %bBigger.i, label %if.end22.i

if.end22.i:                                       ; preds = %if.end19.i
  %call24.c.i.c = tail call i64 @packFloat64.v0.C.c.c(i32 0, i32 0, i64 0)
  br label %subFloat64Sigs.v0.C.c.exit

if.then27.i:                                      ; preds = %if.then6.i17
  %tobool28.i = icmp eq i64 %shl4.i12, 0
  br i1 %tobool28.i, label %if.end31.i, label %if.then29.i

if.then29.i:                                      ; preds = %if.then27.i
  %call30.c.i.c = tail call fastcc i64 @propagateFloat64NaN.v0.C.c.c(i64 %a, i64 %b)
  br label %subFloat64Sigs.v0.C.c.exit

if.end31.i:                                       ; preds = %if.then27.i
  %xor.i = xor i32 %conv.i, 1
  %call32.c.i.c = tail call i64 @packFloat64.v0.C.c.c(i32 %xor.i, i32 2047, i64 0)
  br label %subFloat64Sigs.v0.C.c.exit

if.end33.i:                                       ; preds = %if.then6.i17
  %cmp34.i = icmp eq i32 %call1.c.i7.c, 0
  br i1 %cmp34.i, label %if.then36.i, label %if.else.i24

if.then36.i:                                      ; preds = %if.end33.i
  %inc.i23 = add nsw i32 %sub.i10, 1
  br label %if.end38.i26

if.else.i24:                                      ; preds = %if.end33.i
  %or37.i = or i64 %shl.i11, 4611686018427387904
  store i64 %or37.i, i64* %aSig.i4, align 8
  br label %if.end38.i26

if.end38.i26:                                     ; preds = %if.else.i24, %if.then36.i
  %8 = phi i64 [ %shl.i11, %if.then36.i ], [ %or37.i, %if.else.i24 ]
  %expDiff.0.i25 = phi i32 [ %inc.i23, %if.then36.i ], [ %sub.i10, %if.else.i24 ]
  %sub39.i = sub nsw i32 0, %expDiff.0.i25
  call void @shift64RightJamming.v0.C.c.c(i64 %8, i32 %sub39.i, i64* nonnull %aSig.i4)
  %or40.i = or i64 %shl4.i12, 4611686018427387904
  store i64 %or40.i, i64* %bSig.i5, align 8
  %.pre = load i64, i64* %aSig.i4, align 8
  br label %bBigger.i

bBigger.i:                                        ; preds = %if.end19.i, %if.end38.i26
  %9 = phi i64 [ %.pre, %if.end38.i26 ], [ %shl.i11, %if.end19.i ]
  %10 = phi i64 [ %or40.i, %if.end38.i26 ], [ %shl4.i12, %if.end19.i ]
  %bExp.1.i = phi i32 [ %call3.c.i9.c, %if.end38.i26 ], [ %bExp.0.i, %if.end19.i ]
  %sub41.i = sub i64 %10, %9
  %xor42.i = xor i32 %conv.i, 1
  br label %normalizeRoundAndPack.i

if.then45.i:                                      ; preds = %if.then.i14
  %tobool46.i = icmp eq i64 %shl.i11, 0
  br i1 %tobool46.i, label %subFloat64Sigs.v0.C.c.exit, label %if.then47.i

if.then47.i:                                      ; preds = %if.then45.i
  %call48.c.i.c = tail call fastcc i64 @propagateFloat64NaN.v0.C.c.c(i64 %a, i64 %b)
  br label %subFloat64Sigs.v0.C.c.exit

if.end50.i:                                       ; preds = %if.then.i14
  %cmp51.i27 = icmp eq i32 %call3.c.i9.c, 0
  br i1 %cmp51.i27, label %if.then53.i, label %if.else54.i

if.then53.i:                                      ; preds = %if.end50.i
  %dec.i28 = add nsw i32 %sub.i10, -1
  br label %if.end56.i

if.else54.i:                                      ; preds = %if.end50.i
  %or55.i = or i64 %shl4.i12, 4611686018427387904
  store i64 %or55.i, i64* %bSig.i5, align 8
  br label %if.end56.i

if.end56.i:                                       ; preds = %if.else54.i, %if.then53.i
  %11 = phi i64 [ %shl4.i12, %if.then53.i ], [ %or55.i, %if.else54.i ]
  %expDiff.1.i29 = phi i32 [ %dec.i28, %if.then53.i ], [ %sub.i10, %if.else54.i ]
  call void @shift64RightJamming.v0.C.c.c(i64 %11, i32 %expDiff.1.i29, i64* nonnull %bSig.i5)
  %or57.i = or i64 %shl.i11, 4611686018427387904
  store i64 %or57.i, i64* %aSig.i4, align 8
  %.pre1 = load i64, i64* %bSig.i5, align 8
  br label %aBigger.i

aBigger.i:                                        ; preds = %if.end16.i, %if.end56.i
  %12 = phi i64 [ %.pre1, %if.end56.i ], [ %shl4.i12, %if.end16.i ]
  %13 = phi i64 [ %or57.i, %if.end56.i ], [ %shl.i11, %if.end16.i ]
  %aExp.1.i = phi i32 [ %call1.c.i7.c, %if.end56.i ], [ %aExp.0.i, %if.end16.i ]
  %sub58.i = sub i64 %13, %12
  br label %normalizeRoundAndPack.i

normalizeRoundAndPack.i:                          ; preds = %aBigger.i, %bBigger.i
  %zExp.0.i30 = phi i32 [ %aExp.1.i, %aBigger.i ], [ %bExp.1.i, %bBigger.i ]
  %zSign.addr.0.i = phi i32 [ %conv.i, %aBigger.i ], [ %xor42.i, %bBigger.i ]
  %zSig.0.i31 = phi i64 [ %sub58.i, %aBigger.i ], [ %sub41.i, %bBigger.i ]
  %dec59.i = add nsw i32 %zExp.0.i30, -1
  %cmp.i37 = icmp ult i64 %zSig.0.i31, 4294967296
  %shiftCount.0.i = select i1 %cmp.i37, i32 32, i32 0
  %shr.i39 = lshr i64 %zSig.0.i31, 32
  %a.addr.0.i = select i1 %cmp.i37, i64 %zSig.0.i31, i64 %shr.i39
  %conv.i41 = trunc i64 %a.addr.0.i to i32
  %cmp.i44 = icmp ult i32 %conv.i41, 65536
  %shl.i45 = shl i32 %conv.i41, 16
  %. = select i1 %cmp.i44, i32 16, i32 0
  %shl.i45.conv.i41 = select i1 %cmp.i44, i32 %shl.i45, i32 %conv.i41
  %cmp1.i = icmp ult i32 %shl.i45.conv.i41, 16777216
  %shl4.i50 = shl i32 %shl.i45.conv.i41, 8
  %a.addr.1.i = select i1 %cmp1.i, i32 %shl4.i50, i32 %shl.i45.conv.i41
  %add3.i = or i32 %., 8
  %shiftCount.1.i = select i1 %cmp1.i, i32 %add3.i, i32 %.
  %shr.i51 = lshr i32 %a.addr.1.i, 24
  %arrayidx.i = getelementptr inbounds [256 x i32], [256 x i32]* @countLeadingZeros32.countLeadingZerosHigh, i32 0, i32 %shr.i51
  %14 = load i32, i32* %arrayidx.i, align 4
  %add6.i = add i32 %14, -1
  %add1.i = add i32 %add6.i, %shiftCount.0.i
  %sub.i34 = add i32 %add1.i, %shiftCount.1.i
  %sub1.i = sub i32 %dec59.i, %sub.i34
  %sh_prom.i = zext i32 %sub.i34 to i64
  %shl.i35 = shl i64 %zSig.0.i31, %sh_prom.i
  %call2.c.i36.c = tail call fastcc i64 @roundAndPackFloat64.v0.C.c.c(i32 %zSign.addr.0.i, i32 %sub1.i, i64 %shl.i35)
  br label %subFloat64Sigs.v0.C.c.exit

subFloat64Sigs.v0.C.c.exit:                       ; preds = %if.then45.i, %if.then10.i, %if.end12.i20, %if.end22.i, %if.then29.i, %if.end31.i, %if.then47.i, %normalizeRoundAndPack.i
  %retval.0.i32 = phi i64 [ %call48.c.i.c, %if.then47.i ], [ %call2.c.i36.c, %normalizeRoundAndPack.i ], [ %call30.c.i.c, %if.then29.i ], [ %call32.c.i.c, %if.end31.i ], [ %call11.c.i.c, %if.then10.i ], [ 9223372036854775807, %if.end12.i20 ], [ %call24.c.i.c, %if.end22.i ], [ %a, %if.then45.i ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %6)
  call void @llvm.lifetime.end(i64 8, i8* nonnull %7)
  br label %return

return:                                           ; preds = %subFloat64Sigs.v0.C.c.exit, %addFloat64Sigs.v0.C.c.exit
  %retval.0 = phi i64 [ %retval.0.i, %addFloat64Sigs.v0.C.c.exit ], [ %retval.0.i32, %subFloat64Sigs.v0.C.c.exit ]
  ret i64 %retval.0
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
  %conv54 = zext i1 %cmp53 to i32
  %neg = xor i32 %conv54, -1
  %conv56 = sext i32 %neg to i64
  %and57 = and i64 %shr, %conv56
  store i64 %and57, i64* %zSig.addr, align 8
  %cmp58 = icmp eq i64 %and57, 0
  %.zExp.addr.1 = select i1 %cmp58, i32 0, i32 %zExp.addr.13
  %call62.c.c = tail call i64 @packFloat64.v0.C.c.c(i32 %zSign, i32 %.zExp.addr.1, i64 %and57)
  br label %return

return:                                           ; preds = %if.end50, %if.then30
  %retval.0 = phi i64 [ %call.c.c, %if.then30 ], [ %call62.c.c, %if.end50 ]
  ret i64 %retval.0
}

attributes #0 = { noinline nounwind ssp "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noinline norecurse nounwind }
attributes #4 = { noinline norecurse nounwind readnone }
attributes #5 = { noinline nounwind }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
