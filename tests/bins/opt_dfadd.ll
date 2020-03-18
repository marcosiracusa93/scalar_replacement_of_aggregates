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
  %zSig.addr.i = alloca i64, align 8
  %aSig.i = alloca i64, align 8
  %bSig.i = alloca i64, align 8
  %0 = bitcast i64* %aSig.i to i8*
  %1 = bitcast i64* %bSig.i to i8*
  %2 = bitcast i64* %zSig.addr.i to i8*
  br label %for.body

for.body:                                         ; preds = %__non_const_wrapper__.22.exit, %entry
  %i.017 = phi i32 [ 0, %entry ], [ %inc, %__non_const_wrapper__.22.exit ]
  %main_result.016 = phi i32 [ 0, %entry ], [ %add, %__non_const_wrapper__.22.exit ]
  switch i32 %i.017, label %csroa.if.end224.i [
    i32 0, label %__non_const_wrapper__.exit.thread
    i32 1, label %__non_const_wrapper__.18.exit
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

__non_const_wrapper__.exit.thread:                ; preds = %for.body
  br label %__non_const_wrapper__.18.exit

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
    i32 2, label %__non_const_wrapper__.18.exit
    i32 3, label %csroa.if.end14.i240
    i32 4, label %csroa.if.end19.i238
    i32 5, label %csroa.if.end24.i236
    i32 6, label %csroa.if.end29.i234
    i32 7, label %csroa.if.end29.i234
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
  br label %csroa.if.end29.i234

csroa.if.end29.i234:                              ; preds = %csroa.if.end39.i230, %__non_const_wrapper__.exit, %__non_const_wrapper__.exit
  %.phi30.i233 = phi i64 [ 4611686018427387904, %__non_const_wrapper__.exit ], [ %.phi40.i229, %csroa.if.end39.i230 ], [ 4611686018427387904, %__non_const_wrapper__.exit ]
  br label %csroa.if.end24.i236

csroa.if.end24.i236:                              ; preds = %__non_const_wrapper__.exit, %csroa.if.end29.i234
  %.phi25.i235 = phi i64 [ %.phi30.i233, %csroa.if.end29.i234 ], [ 9218868437227405312, %__non_const_wrapper__.exit ]
  br label %csroa.if.end19.i238

csroa.if.end19.i238:                              ; preds = %__non_const_wrapper__.exit, %csroa.if.end24.i236
  %.phi20.i237 = phi i64 [ %.phi25.i235, %csroa.if.end24.i236 ], [ 9221120237041090560, %__non_const_wrapper__.exit ]
  br label %csroa.if.end14.i240

csroa.if.end14.i240:                              ; preds = %__non_const_wrapper__.exit, %csroa.if.end19.i238
  %.phi15.i239 = phi i64 [ %.phi20.i237, %csroa.if.end19.i238 ], [ 4609434218613702656, %__non_const_wrapper__.exit ]
  br label %__non_const_wrapper__.18.exit

__non_const_wrapper__.18.exit:                    ; preds = %csroa.if.end14.i240, %__non_const_wrapper__.exit, %for.body, %__non_const_wrapper__.exit.thread
  %.phi.i1172 = phi i64 [ 9221120237041090560, %__non_const_wrapper__.exit.thread ], [ 9218868437227405312, %for.body ], [ %.phi10.i, %__non_const_wrapper__.exit ], [ %.phi10.i, %csroa.if.end14.i240 ]
  %.phi.i245 = phi i64 [ 4607182418800017408, %__non_const_wrapper__.exit.thread ], [ 4607182418800017408, %for.body ], [ 0, %__non_const_wrapper__.exit ], [ %.phi15.i239, %csroa.if.end14.i240 ]
  %shr.i = lshr i64 %.phi.i1172, 63
  %conv.i = trunc i64 %shr.i to i32
  %shr.i246 = lshr i64 %.phi.i245, 63
  %conv.i247 = trunc i64 %shr.i246 to i32
  %cmp.i = icmp eq i32 %conv.i, %conv.i247
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %__non_const_wrapper__.18.exit
  call void @llvm.lifetime.start(i64 8, i8* nonnull %0)
  call void @llvm.lifetime.start(i64 8, i8* nonnull %1)
  %call.c.i.c = tail call i64 @extractFloat64Frac.v0.C.c.c(i64 %.phi.i1172) #6
  %call1.c.i.c = tail call i32 @extractFloat64Exp.v0.C.c.c(i64 %.phi.i1172) #6
  %call2.c.i248.c = tail call i64 @extractFloat64Frac.v0.C.c.c(i64 %.phi.i245) #6
  %call3.c.i249.c = tail call i32 @extractFloat64Exp.v0.C.c.c(i64 %.phi.i245) #6
  %sub.i = sub nsw i32 %call1.c.i.c, %call3.c.i249.c
  %shl.i = shl i64 %call.c.i.c, 9
  store i64 %shl.i, i64* %aSig.i, align 8
  %shl4.i = shl i64 %call2.c.i248.c, 9
  store i64 %shl4.i, i64* %bSig.i, align 8
  %cmp.i250 = icmp sgt i32 %sub.i, 0
  br i1 %cmp.i250, label %if.then.i251, label %if.else13.i

if.then.i251:                                     ; preds = %if.then.i
  %cmp5.i = icmp eq i32 %call1.c.i.c, 2047
  br i1 %cmp5.i, label %if.then6.i, label %if.end9.i

if.then6.i:                                       ; preds = %if.then.i251
  %tobool.i = icmp eq i64 %shl.i, 0
  br i1 %tobool.i, label %addFloat64Sigs.v0.C.c.exit, label %if.then7.i

if.then7.i:                                       ; preds = %if.then6.i
  %call8.c.i.c = tail call fastcc i64 @propagateFloat64NaN.v0.C.c.c(i64 %.phi.i1172, i64 %.phi.i245) #6
  br label %addFloat64Sigs.v0.C.c.exit

if.end9.i:                                        ; preds = %if.then.i251
  %cmp10.i = icmp eq i32 %call3.c.i249.c, 0
  br i1 %cmp10.i, label %if.then11.i, label %if.else.i252

if.then11.i:                                      ; preds = %if.end9.i
  %dec.i = add nsw i32 %sub.i, -1
  br label %if.end12.i

if.else.i252:                                     ; preds = %if.end9.i
  %or.i = or i64 %shl4.i, 2305843009213693952
  store i64 %or.i, i64* %bSig.i, align 8
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.else.i252, %if.then11.i
  %3 = phi i64 [ %shl4.i, %if.then11.i ], [ %or.i, %if.else.i252 ]
  %expDiff.0.i = phi i32 [ %dec.i, %if.then11.i ], [ %sub.i, %if.else.i252 ]
  call void @shift64RightJamming.v0.C.c.c(i64 %3, i32 %expDiff.0.i, i64* nonnull %bSig.i) #6
  %.pre1.i = load i64, i64* %bSig.i, align 8
  br label %if.end46.i

if.else13.i:                                      ; preds = %if.then.i
  %cmp14.i = icmp slt i32 %sub.i, 0
  br i1 %cmp14.i, label %if.then15.i, label %if.else30.i

if.then15.i:                                      ; preds = %if.else13.i
  %cmp16.i = icmp eq i32 %call3.c.i249.c, 2047
  br i1 %cmp16.i, label %if.then17.i, label %if.end23.i

if.then17.i:                                      ; preds = %if.then15.i
  %tobool18.i = icmp eq i64 %shl4.i, 0
  br i1 %tobool18.i, label %if.end21.i, label %if.then19.i

if.then19.i:                                      ; preds = %if.then17.i
  %call20.c.i.c = tail call fastcc i64 @propagateFloat64NaN.v0.C.c.c(i64 %.phi.i1172, i64 %.phi.i245) #6
  br label %addFloat64Sigs.v0.C.c.exit

if.end21.i:                                       ; preds = %if.then17.i
  %call22.c.i.c = tail call i64 @packFloat64.v0.C.c.c(i32 %conv.i, i32 2047, i64 0) #6
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
  %4 = phi i64 [ %shl.i, %if.then25.i ], [ %or27.i, %if.else26.i ]
  %expDiff.1.i = phi i32 [ %inc.i, %if.then25.i ], [ %sub.i, %if.else26.i ]
  %sub29.i = sub nsw i32 0, %expDiff.1.i
  call void @shift64RightJamming.v0.C.c.c(i64 %4, i32 %sub29.i, i64* nonnull %aSig.i) #6
  %.pre.i = load i64, i64* %aSig.i, align 8
  br label %if.end46.i

if.else30.i:                                      ; preds = %if.else13.i
  switch i32 %call1.c.i.c, label %if.end42.i [
    i32 2047, label %if.then32.i
    i32 0, label %if.then40.i
  ]

if.then32.i:                                      ; preds = %if.else30.i
  %or33.i = or i64 %shl4.i, %shl.i
  %tobool34.i = icmp eq i64 %or33.i, 0
  br i1 %tobool34.i, label %addFloat64Sigs.v0.C.c.exit, label %if.then35.i

if.then35.i:                                      ; preds = %if.then32.i
  %call36.c.i.c = tail call fastcc i64 @propagateFloat64NaN.v0.C.c.c(i64 %.phi.i1172, i64 %.phi.i245) #6
  br label %addFloat64Sigs.v0.C.c.exit

if.then40.i:                                      ; preds = %if.else30.i
  %add.i = add i64 %shl4.i, %shl.i
  %shr.i253 = lshr exact i64 %add.i, 9
  %call41.c.i.c = tail call i64 @packFloat64.v0.C.c.c(i32 %conv.i, i32 0, i64 %shr.i253) #6
  br label %addFloat64Sigs.v0.C.c.exit

if.end42.i:                                       ; preds = %if.else30.i
  %add43.i = add i64 %shl.i, 4611686018427387904
  %add44.i = add i64 %add43.i, %shl4.i
  br label %roundAndPack.i

if.end46.i:                                       ; preds = %if.end28.i, %if.end12.i
  %5 = phi i64 [ %.pre1.i, %if.end12.i ], [ %shl4.i, %if.end28.i ]
  %6 = phi i64 [ %shl.i, %if.end12.i ], [ %.pre.i, %if.end28.i ]
  %zExp.0.i = phi i32 [ %call1.c.i.c, %if.end12.i ], [ %call3.c.i249.c, %if.end28.i ]
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
  %zExp.2.i = phi i32 [ %call1.c.i.c, %if.end42.i ], [ %zExp.0.dec50.i, %if.end46.i ]
  %zSig.1.i = phi i64 [ %add44.i, %if.end42.i ], [ %add48.shl49.i, %if.end46.i ]
  call void @llvm.lifetime.start(i64 8, i8* nonnull %2)
  store i64 %zSig.1.i, i64* %zSig.addr.i, align 8
  %7 = trunc i64 %zSig.1.i to i32
  %conv17.i = and i32 %7, 1023
  %conv19.i = and i32 %zExp.2.i, 65535
  %cmp20.i = icmp ugt i32 %conv19.i, 2044
  br i1 %cmp20.i, label %if.then22.i, label %if.end47.i

if.then22.i:                                      ; preds = %roundAndPack.i
  %cmp23.i = icmp sgt i32 %zExp.2.i, 2045
  br i1 %cmp23.i, label %if.then30.i, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %if.then22.i
  %cmp25.i = icmp eq i32 %zExp.2.i, 2045
  br i1 %cmp25.i, label %land.lhs.true.i, label %if.end34.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %add.i255 = add i64 %zSig.1.i, 512
  %cmp28.i = icmp slt i64 %add.i255, 0
  br i1 %cmp28.i, label %if.then30.i, label %if.end47.i

if.then30.i:                                      ; preds = %land.lhs.true.i, %if.then22.i
  tail call void @float_raise.v0.C.c.c(i32 9) #6
  %call.c.i256.c = tail call i64 @packFloat64.v0.C.c.c(i32 %conv.i, i32 2047, i64 0) #6
  br label %roundAndPackFloat64.v0.C.c.exit

if.end34.i:                                       ; preds = %lor.lhs.false.i
  %cmp35.i = icmp slt i32 %zExp.2.i, 0
  br i1 %cmp35.i, label %if.then37.i, label %if.end47.i

if.then37.i:                                      ; preds = %if.end34.i
  %sub38.i = sub nsw i32 0, %zExp.2.i
  call void @shift64RightJamming.v0.C.c.c(i64 %zSig.1.i, i32 %sub38.i, i64* nonnull %zSig.addr.i) #6
  %8 = load i64, i64* %zSig.addr.i, align 8
  %9 = trunc i64 %8 to i32
  %conv40.i = and i32 %9, 1023
  %tobool43.i = icmp eq i32 %conv40.i, 0
  br i1 %tobool43.i, label %if.end50.i, label %if.end47.thread5.i

if.end47.thread5.i:                               ; preds = %if.then37.i
  tail call void @float_raise.v0.C.c.c(i32 4) #6
  br label %if.then49.i

if.end47.i:                                       ; preds = %if.end34.i, %land.lhs.true.i, %roundAndPack.i
  %zExp.addr.1.i = phi i32 [ %zExp.2.i, %roundAndPack.i ], [ %zExp.2.i, %if.end34.i ], [ 2045, %land.lhs.true.i ]
  %tobool48.i = icmp eq i32 %conv17.i, 0
  br i1 %tobool48.i, label %if.end50.i, label %if.then49.i

if.then49.i:                                      ; preds = %if.end47.i, %if.end47.thread5.i
  %10 = phi i64 [ %8, %if.end47.thread5.i ], [ %zSig.1.i, %if.end47.i ]
  %roundBits.18.i = phi i32 [ %conv40.i, %if.end47.thread5.i ], [ %conv17.i, %if.end47.i ]
  %zExp.addr.17.i = phi i32 [ 0, %if.end47.thread5.i ], [ %zExp.addr.1.i, %if.end47.i ]
  %11 = load i32, i32* @float_exception_flags, align 4
  %or.i257 = or i32 %11, 1
  store i32 %or.i257, i32* @float_exception_flags, align 4
  br label %if.end50.i

if.end50.i:                                       ; preds = %if.then49.i, %if.end47.i, %if.then37.i
  %12 = phi i64 [ %zSig.1.i, %if.end47.i ], [ %10, %if.then49.i ], [ %8, %if.then37.i ]
  %roundBits.14.i = phi i32 [ 0, %if.end47.i ], [ %roundBits.18.i, %if.then49.i ], [ 0, %if.then37.i ]
  %zExp.addr.13.i = phi i32 [ %zExp.addr.1.i, %if.end47.i ], [ %zExp.addr.17.i, %if.then49.i ], [ 0, %if.then37.i ]
  %add52.i = add i64 %12, 512
  %shr.i258 = lshr i64 %add52.i, 10
  %cmp53.i = icmp eq i32 %roundBits.14.i, 512
  %conv54.i = zext i1 %cmp53.i to i32
  %neg.i = xor i32 %conv54.i, -1
  %conv56.i = sext i32 %neg.i to i64
  %and57.i = and i64 %conv56.i, %shr.i258
  store i64 %and57.i, i64* %zSig.addr.i, align 8
  %cmp58.i = icmp eq i64 %and57.i, 0
  %.zExp.addr.1.i = select i1 %cmp58.i, i32 0, i32 %zExp.addr.13.i
  %call62.c.i.c = tail call i64 @packFloat64.v0.C.c.c(i32 %conv.i, i32 %.zExp.addr.1.i, i64 %and57.i) #6
  br label %roundAndPackFloat64.v0.C.c.exit

roundAndPackFloat64.v0.C.c.exit:                  ; preds = %if.then30.i, %if.end50.i
  %retval.0.i259 = phi i64 [ %call.c.i256.c, %if.then30.i ], [ %call62.c.i.c, %if.end50.i ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %2)
  br label %addFloat64Sigs.v0.C.c.exit

addFloat64Sigs.v0.C.c.exit:                       ; preds = %if.then6.i, %if.then7.i, %if.then19.i, %if.end21.i, %if.then32.i, %if.then35.i, %if.then40.i, %roundAndPackFloat64.v0.C.c.exit
  %retval.0.i254 = phi i64 [ %call8.c.i.c, %if.then7.i ], [ %retval.0.i259, %roundAndPackFloat64.v0.C.c.exit ], [ %call20.c.i.c, %if.then19.i ], [ %call22.c.i.c, %if.end21.i ], [ %call36.c.i.c, %if.then35.i ], [ %call41.c.i.c, %if.then40.i ], [ %.phi.i1172, %if.then6.i ], [ %.phi.i1172, %if.then32.i ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %0)
  call void @llvm.lifetime.end(i64 8, i8* nonnull %1)
  br label %float64_add.v0.C.c.exit

if.else.i:                                        ; preds = %__non_const_wrapper__.18.exit
  %call3.c.i.c = tail call fastcc i64 @subFloat64Sigs.v0.C.c.c(i64 %.phi.i1172, i64 %.phi.i245, i32 %conv.i) #6
  br label %float64_add.v0.C.c.exit

float64_add.v0.C.c.exit:                          ; preds = %addFloat64Sigs.v0.C.c.exit, %if.else.i
  %retval.0.i = phi i64 [ %retval.0.i254, %addFloat64Sigs.v0.C.c.exit ], [ %call3.c.i.c, %if.else.i ]
  switch i32 %i.017, label %csroa.if.end224.i854 [
    i32 0, label %__non_const_wrapper__.22.exit
    i32 1, label %csroa.if.end4.i1170
    i32 2, label %__non_const_wrapper__.21.exit
    i32 3, label %csroa.if.end14.i938
    i32 4, label %csroa.if.end19.i936
    i32 5, label %csroa.if.end24.i934
    i32 6, label %__non_const_wrapper__.20.exit.thread1276
    i32 7, label %csroa.if.end29.i932
    i32 8, label %__non_const_wrapper__.20.exit.thread1280
    i32 9, label %csroa.if.end39.i928
    i32 10, label %csroa.if.end49.i924
    i32 11, label %csroa.if.end54.i922
    i32 12, label %__non_const_wrapper__.20.exit.thread1290
    i32 13, label %csroa.if.end59.i920
    i32 14, label %csroa.if.end69.i916
    i32 15, label %csroa.if.end74.i914
    i32 16, label %csroa.if.end79.i912
    i32 17, label %csroa.if.end84.i910
    i32 18, label %__non_const_wrapper__.20.exit.thread1306
    i32 19, label %csroa.if.end89.i908
    i32 20, label %__non_const_wrapper__.20.exit.thread1310
    i32 21, label %csroa.if.end99.i904
    i32 22, label %csroa.if.end109.i900
    i32 23, label %csroa.if.end114.i898
    i32 24, label %__non_const_wrapper__.20.exit.thread1320
    i32 25, label %csroa.if.end119.i896
    i32 26, label %csroa.if.end129.i892
    i32 27, label %csroa.if.end134.i890
    i32 28, label %csroa.if.end139.i888
    i32 29, label %csroa.if.end144.i886
    i32 30, label %csroa.if.end149.i884
    i32 31, label %__non_const_wrapper__.20.exit.thread1339
    i32 32, label %csroa.if.end154.i882
    i32 33, label %csroa.if.end164.i878
    i32 34, label %csroa.if.end169.i876
    i32 35, label %csroa.if.end174.i874
    i32 36, label %csroa.if.end179.i872
    i32 37, label %csroa.if.end184.i870
    i32 38, label %csroa.if.end189.i868
    i32 39, label %csroa.if.end194.i866
    i32 40, label %csroa.if.end199.i864
    i32 41, label %csroa.if.end204.i862
    i32 42, label %__non_const_wrapper__.20.exit.thread1370
    i32 43, label %csroa.if.end209.i860
    i32 44, label %csroa.if.end219.i856
  ]

__non_const_wrapper__.20.exit.thread1370:         ; preds = %float64_add.v0.C.c.exit
  br label %csroa.if.end209.i860

__non_const_wrapper__.20.exit.thread1339:         ; preds = %float64_add.v0.C.c.exit
  br label %csroa.if.end154.i882

__non_const_wrapper__.20.exit.thread1320:         ; preds = %float64_add.v0.C.c.exit
  br label %csroa.if.end119.i896

__non_const_wrapper__.20.exit.thread1310:         ; preds = %float64_add.v0.C.c.exit
  br label %csroa.if.end99.i904

__non_const_wrapper__.20.exit.thread1306:         ; preds = %float64_add.v0.C.c.exit
  br label %csroa.if.end89.i908

__non_const_wrapper__.20.exit.thread1290:         ; preds = %float64_add.v0.C.c.exit
  br label %csroa.if.end59.i920

__non_const_wrapper__.20.exit.thread1280:         ; preds = %float64_add.v0.C.c.exit
  br label %csroa.if.end39.i928

__non_const_wrapper__.20.exit.thread1276:         ; preds = %float64_add.v0.C.c.exit
  br label %csroa.if.end29.i932

csroa.if.end224.i854:                             ; preds = %float64_add.v0.C.c.exit
  br label %csroa.if.end219.i856

csroa.if.end219.i856:                             ; preds = %float64_add.v0.C.c.exit, %csroa.if.end224.i854
  %.phi220.i6271376 = phi i64 [ -4611686018427387904, %csroa.if.end224.i854 ], [ -4616189618054758400, %float64_add.v0.C.c.exit ]
  %.phi220.i39912531375 = phi i64 [ -4620693217682128896, %csroa.if.end224.i854 ], [ -4616189618054758400, %float64_add.v0.C.c.exit ]
  %.phi220.i855 = phi i64 [ 4609434218613702656, %csroa.if.end224.i854 ], [ 0, %float64_add.v0.C.c.exit ]
  br label %csroa.if.end209.i860

csroa.if.end209.i860:                             ; preds = %float64_add.v0.C.c.exit, %__non_const_wrapper__.20.exit.thread1370, %csroa.if.end219.i856
  %.phi210.i6311372 = phi i64 [ %.phi220.i6271376, %csroa.if.end219.i856 ], [ -2251799813685248, %__non_const_wrapper__.20.exit.thread1370 ], [ -4503599627370496, %float64_add.v0.C.c.exit ]
  %.phi210.i40312491371 = phi i64 [ %.phi220.i39912531375, %csroa.if.end219.i856 ], [ -2251799813685248, %__non_const_wrapper__.20.exit.thread1370 ], [ -4503599627370496, %float64_add.v0.C.c.exit ]
  %.phi210.i859 = phi i64 [ %.phi220.i855, %csroa.if.end219.i856 ], [ 4607182418800017408, %__non_const_wrapper__.20.exit.thread1370 ], [ 4607182418800017408, %float64_add.v0.C.c.exit ]
  br label %csroa.if.end204.i862

csroa.if.end204.i862:                             ; preds = %float64_add.v0.C.c.exit, %csroa.if.end209.i860
  %.phi205.i6331369 = phi i64 [ %.phi210.i6311372, %csroa.if.end209.i860 ], [ -4613937818241073152, %float64_add.v0.C.c.exit ]
  %.phi205.i40512471368 = phi i64 [ %.phi210.i40312491371, %csroa.if.end209.i860 ], [ 4602678819172646912, %float64_add.v0.C.c.exit ]
  %.phi205.i861 = phi i64 [ %.phi210.i859, %csroa.if.end209.i860 ], [ 4611686018427387904, %float64_add.v0.C.c.exit ]
  br label %csroa.if.end199.i864

csroa.if.end199.i864:                             ; preds = %float64_add.v0.C.c.exit, %csroa.if.end204.i862
  %.phi200.i6351366 = phi i64 [ %.phi205.i6331369, %csroa.if.end204.i862 ], [ -9223372036854775808, %float64_add.v0.C.c.exit ]
  %.phi200.i40712451365 = phi i64 [ %.phi205.i40512471368, %csroa.if.end204.i862 ], [ 4607182418800017408, %float64_add.v0.C.c.exit ]
  %.phi200.i863 = phi i64 [ %.phi205.i861, %csroa.if.end204.i862 ], [ 4607182418800017408, %float64_add.v0.C.c.exit ]
  br label %csroa.if.end194.i866

csroa.if.end194.i866:                             ; preds = %float64_add.v0.C.c.exit, %csroa.if.end199.i864
  %.phi185.i6411363 = phi i64 [ %.phi200.i6351366, %csroa.if.end199.i864 ], [ -4616189618054758400, %float64_add.v0.C.c.exit ]
  %.phi185.i41312411362 = phi i64 [ %.phi200.i40712451365, %csroa.if.end199.i864 ], [ 9218868437227405312, %float64_add.v0.C.c.exit ]
  %.phi195.i865 = phi i64 [ %.phi200.i863, %csroa.if.end199.i864 ], [ 9218868437227405312, %float64_add.v0.C.c.exit ]
  br label %csroa.if.end189.i868

csroa.if.end189.i868:                             ; preds = %float64_add.v0.C.c.exit, %csroa.if.end194.i866
  %.phi185.i6411360 = phi i64 [ %.phi185.i6411363, %csroa.if.end194.i866 ], [ -4616189618054758400, %float64_add.v0.C.c.exit ]
  %.phi185.i41312411359 = phi i64 [ %.phi185.i41312411362, %csroa.if.end194.i866 ], [ 9221120237041090560, %float64_add.v0.C.c.exit ]
  %.phi190.i867 = phi i64 [ %.phi195.i865, %csroa.if.end194.i866 ], [ 9221120237041090560, %float64_add.v0.C.c.exit ]
  br label %csroa.if.end184.i870

csroa.if.end184.i870:                             ; preds = %float64_add.v0.C.c.exit, %csroa.if.end189.i868
  %.phi185.i6411357 = phi i64 [ %.phi185.i6411360, %csroa.if.end189.i868 ], [ -4616189618054758400, %float64_add.v0.C.c.exit ]
  %.phi185.i41312411356 = phi i64 [ %.phi185.i41312411359, %csroa.if.end189.i868 ], [ 0, %float64_add.v0.C.c.exit ]
  %.phi185.i869 = phi i64 [ %.phi190.i867, %csroa.if.end189.i868 ], [ 4607182418800017408, %float64_add.v0.C.c.exit ]
  br label %csroa.if.end179.i872

csroa.if.end179.i872:                             ; preds = %float64_add.v0.C.c.exit, %csroa.if.end184.i870
  %.phi175.i6451354 = phi i64 [ %.phi185.i6411357, %csroa.if.end184.i870 ], [ -4503599627370496, %float64_add.v0.C.c.exit ]
  %.phi175.i41712381353 = phi i64 [ %.phi185.i41312411356, %csroa.if.end184.i870 ], [ 9223372036854775807, %float64_add.v0.C.c.exit ]
  %.phi180.i871 = phi i64 [ %.phi185.i869, %csroa.if.end184.i870 ], [ 9218868437227405312, %float64_add.v0.C.c.exit ]
  br label %csroa.if.end174.i874

csroa.if.end174.i874:                             ; preds = %float64_add.v0.C.c.exit, %csroa.if.end179.i872
  %.phi175.i6451351 = phi i64 [ %.phi175.i6451354, %csroa.if.end179.i872 ], [ -4503599627370496, %float64_add.v0.C.c.exit ]
  %.phi175.i41712381350 = phi i64 [ %.phi175.i41712381353, %csroa.if.end179.i872 ], [ 9221120237041090560, %float64_add.v0.C.c.exit ]
  %.phi175.i873 = phi i64 [ %.phi180.i871, %csroa.if.end179.i872 ], [ 9221120237041090560, %float64_add.v0.C.c.exit ]
  br label %csroa.if.end169.i876

csroa.if.end169.i876:                             ; preds = %float64_add.v0.C.c.exit, %csroa.if.end174.i874
  %.phi170.i6471348 = phi i64 [ %.phi175.i6451351, %csroa.if.end174.i874 ], [ 4611686018427387904, %float64_add.v0.C.c.exit ]
  %.phi170.i41912361347 = phi i64 [ %.phi175.i41712381350, %csroa.if.end174.i874 ], [ 4602678819172646912, %float64_add.v0.C.c.exit ]
  %.phi170.i875 = phi i64 [ %.phi175.i873, %csroa.if.end174.i874 ], [ -4613937818241073152, %float64_add.v0.C.c.exit ]
  br label %csroa.if.end164.i878

csroa.if.end164.i878:                             ; preds = %float64_add.v0.C.c.exit, %csroa.if.end169.i876
  %.phi165.i6491345 = phi i64 [ %.phi170.i6471348, %csroa.if.end169.i876 ], [ 4607182418800017408, %float64_add.v0.C.c.exit ]
  %.phi165.i42112341344 = phi i64 [ %.phi170.i41912361347, %csroa.if.end169.i876 ], [ 4607182418800017408, %float64_add.v0.C.c.exit ]
  %.phi165.i877 = phi i64 [ %.phi170.i875, %csroa.if.end169.i876 ], [ -9223372036854775808, %float64_add.v0.C.c.exit ]
  br label %csroa.if.end154.i882

csroa.if.end154.i882:                             ; preds = %float64_add.v0.C.c.exit, %__non_const_wrapper__.20.exit.thread1339, %csroa.if.end164.i878
  %.phi155.i6531341 = phi i64 [ %.phi165.i6491345, %csroa.if.end164.i878 ], [ 9221120237041090560, %__non_const_wrapper__.20.exit.thread1339 ], [ 9218868437227405312, %float64_add.v0.C.c.exit ]
  %.phi155.i42512301340 = phi i64 [ %.phi165.i42112341344, %csroa.if.end164.i878 ], [ 9221120237041090560, %__non_const_wrapper__.20.exit.thread1339 ], [ 9218868437227405312, %float64_add.v0.C.c.exit ]
  %.phi155.i881 = phi i64 [ %.phi165.i877, %csroa.if.end164.i878 ], [ -4616189618054758400, %__non_const_wrapper__.20.exit.thread1339 ], [ -4616189618054758400, %float64_add.v0.C.c.exit ]
  br label %csroa.if.end149.i884

csroa.if.end149.i884:                             ; preds = %float64_add.v0.C.c.exit, %csroa.if.end154.i882
  %.phi150.i6551338 = phi i64 [ %.phi155.i6531341, %csroa.if.end154.i882 ], [ 4609434218613702656, %float64_add.v0.C.c.exit ]
  %.phi150.i42712281337 = phi i64 [ %.phi155.i42512301340, %csroa.if.end154.i882 ], [ -4620693217682128896, %float64_add.v0.C.c.exit ]
  %.phi150.i883 = phi i64 [ %.phi155.i881, %csroa.if.end154.i882 ], [ -4611686018427387904, %float64_add.v0.C.c.exit ]
  br label %csroa.if.end144.i886

csroa.if.end144.i886:                             ; preds = %float64_add.v0.C.c.exit, %csroa.if.end149.i884
  %.phi145.i6571335 = phi i64 [ %.phi150.i6551338, %csroa.if.end149.i884 ], [ 0, %float64_add.v0.C.c.exit ]
  %.phi145.i42912261334 = phi i64 [ %.phi150.i42712281337, %csroa.if.end149.i884 ], [ -4616189618054758400, %float64_add.v0.C.c.exit ]
  %.phi145.i885 = phi i64 [ %.phi150.i883, %csroa.if.end149.i884 ], [ -4616189618054758400, %float64_add.v0.C.c.exit ]
  br label %csroa.if.end139.i888

csroa.if.end139.i888:                             ; preds = %float64_add.v0.C.c.exit, %csroa.if.end144.i886
  %.phi130.i6631332 = phi i64 [ %.phi145.i6571335, %csroa.if.end144.i886 ], [ 4607182418800017408, %float64_add.v0.C.c.exit ]
  %.phi130.i43512221331 = phi i64 [ %.phi145.i42912261334, %csroa.if.end144.i886 ], [ -4503599627370496, %float64_add.v0.C.c.exit ]
  %.phi140.i887 = phi i64 [ %.phi145.i885, %csroa.if.end144.i886 ], [ -4503599627370496, %float64_add.v0.C.c.exit ]
  br label %csroa.if.end134.i890

csroa.if.end134.i890:                             ; preds = %float64_add.v0.C.c.exit, %csroa.if.end139.i888
  %.phi130.i6631329 = phi i64 [ %.phi130.i6631332, %csroa.if.end139.i888 ], [ 4607182418800017408, %float64_add.v0.C.c.exit ]
  %.phi130.i43512221328 = phi i64 [ %.phi130.i43512221331, %csroa.if.end139.i888 ], [ -2251799813685248, %float64_add.v0.C.c.exit ]
  %.phi135.i889 = phi i64 [ %.phi140.i887, %csroa.if.end139.i888 ], [ -2251799813685248, %float64_add.v0.C.c.exit ]
  br label %csroa.if.end129.i892

csroa.if.end129.i892:                             ; preds = %float64_add.v0.C.c.exit, %csroa.if.end134.i890
  %.phi130.i6631326 = phi i64 [ %.phi130.i6631329, %csroa.if.end134.i890 ], [ 4607182418800017408, %float64_add.v0.C.c.exit ]
  %.phi130.i43512221325 = phi i64 [ %.phi130.i43512221328, %csroa.if.end134.i890 ], [ 0, %float64_add.v0.C.c.exit ]
  %.phi130.i891 = phi i64 [ %.phi135.i889, %csroa.if.end134.i890 ], [ -4616189618054758400, %float64_add.v0.C.c.exit ]
  br label %csroa.if.end119.i896

csroa.if.end119.i896:                             ; preds = %float64_add.v0.C.c.exit, %__non_const_wrapper__.20.exit.thread1320, %csroa.if.end129.i892
  %.phi120.i6671322 = phi i64 [ %.phi130.i6631326, %csroa.if.end129.i892 ], [ 9221120237041090560, %__non_const_wrapper__.20.exit.thread1320 ], [ 9218868437227405312, %float64_add.v0.C.c.exit ]
  %.phi120.i43912181321 = phi i64 [ %.phi130.i43512221325, %csroa.if.end129.i892 ], [ 9221120237041090560, %__non_const_wrapper__.20.exit.thread1320 ], [ 9223372036854775807, %float64_add.v0.C.c.exit ]
  %.phi120.i895 = phi i64 [ %.phi130.i891, %csroa.if.end129.i892 ], [ -4503599627370496, %__non_const_wrapper__.20.exit.thread1320 ], [ -4503599627370496, %float64_add.v0.C.c.exit ]
  br label %csroa.if.end114.i898

csroa.if.end114.i898:                             ; preds = %float64_add.v0.C.c.exit, %csroa.if.end119.i896
  %.phi115.i6691319 = phi i64 [ %.phi120.i6671322, %csroa.if.end119.i896 ], [ -4613937818241073152, %float64_add.v0.C.c.exit ]
  %.phi115.i44112161318 = phi i64 [ %.phi120.i43912181321, %csroa.if.end119.i896 ], [ -4610560118520545280, %float64_add.v0.C.c.exit ]
  %.phi115.i897 = phi i64 [ %.phi120.i895, %csroa.if.end119.i896 ], [ -4616189618054758400, %float64_add.v0.C.c.exit ]
  br label %csroa.if.end109.i900

csroa.if.end109.i900:                             ; preds = %float64_add.v0.C.c.exit, %csroa.if.end114.i898
  %.phi110.i6711316 = phi i64 [ %.phi115.i6691319, %csroa.if.end114.i898 ], [ -9223372036854775808, %float64_add.v0.C.c.exit ]
  %.phi110.i44312141315 = phi i64 [ %.phi115.i44112161318, %csroa.if.end114.i898 ], [ -9223372036854775808, %float64_add.v0.C.c.exit ]
  %.phi110.i899 = phi i64 [ %.phi115.i897, %csroa.if.end114.i898 ], [ -9223372036854775808, %float64_add.v0.C.c.exit ]
  br label %csroa.if.end99.i904

csroa.if.end99.i904:                              ; preds = %float64_add.v0.C.c.exit, %__non_const_wrapper__.20.exit.thread1310, %csroa.if.end109.i900
  %.phi100.i6751312 = phi i64 [ %.phi110.i6711316, %csroa.if.end109.i900 ], [ -2251799813685248, %__non_const_wrapper__.20.exit.thread1310 ], [ -4503599627370496, %float64_add.v0.C.c.exit ]
  %.phi100.i44712101311 = phi i64 [ %.phi110.i44312141315, %csroa.if.end109.i900 ], [ -2251799813685248, %__non_const_wrapper__.20.exit.thread1310 ], [ -4503599627370496, %float64_add.v0.C.c.exit ]
  %.phi100.i903 = phi i64 [ %.phi110.i899, %csroa.if.end109.i900 ], [ -4503599627370496, %__non_const_wrapper__.20.exit.thread1310 ], [ -4503599627370496, %float64_add.v0.C.c.exit ]
  br label %csroa.if.end89.i908

csroa.if.end89.i908:                              ; preds = %float64_add.v0.C.c.exit, %__non_const_wrapper__.20.exit.thread1306, %csroa.if.end99.i904
  %.phi90.i6791308 = phi i64 [ %.phi100.i6751312, %csroa.if.end99.i904 ], [ -9223372036854775808, %__non_const_wrapper__.20.exit.thread1306 ], [ -4613937818241073152, %float64_add.v0.C.c.exit ]
  %.phi90.i45112061307 = phi i64 [ %.phi100.i44712101311, %csroa.if.end99.i904 ], [ -4611686018427387904, %__non_const_wrapper__.20.exit.thread1306 ], [ -4608308318706860032, %float64_add.v0.C.c.exit ]
  %.phi90.i907 = phi i64 [ %.phi100.i903, %csroa.if.end99.i904 ], [ -4611686018427387904, %__non_const_wrapper__.20.exit.thread1306 ], [ -4611686018427387904, %float64_add.v0.C.c.exit ]
  br label %csroa.if.end84.i910

csroa.if.end84.i910:                              ; preds = %float64_add.v0.C.c.exit, %csroa.if.end89.i908
  %.phi80.i6831305 = phi i64 [ %.phi90.i6791308, %csroa.if.end89.i908 ], [ -4616189618054758400, %float64_add.v0.C.c.exit ]
  %.phi80.i45512031304 = phi i64 [ %.phi90.i45112061307, %csroa.if.end89.i908 ], [ -4503599627370496, %float64_add.v0.C.c.exit ]
  %.phi85.i909 = phi i64 [ %.phi90.i907, %csroa.if.end89.i908 ], [ -4503599627370496, %float64_add.v0.C.c.exit ]
  br label %csroa.if.end79.i912

csroa.if.end79.i912:                              ; preds = %float64_add.v0.C.c.exit, %csroa.if.end84.i910
  %.phi80.i6831302 = phi i64 [ %.phi80.i6831305, %csroa.if.end84.i910 ], [ -4616189618054758400, %float64_add.v0.C.c.exit ]
  %.phi80.i45512031301 = phi i64 [ %.phi80.i45512031304, %csroa.if.end84.i910 ], [ -2251799813685248, %float64_add.v0.C.c.exit ]
  %.phi80.i911 = phi i64 [ %.phi85.i909, %csroa.if.end84.i910 ], [ -2251799813685248, %float64_add.v0.C.c.exit ]
  br label %csroa.if.end74.i914

csroa.if.end74.i914:                              ; preds = %float64_add.v0.C.c.exit, %csroa.if.end79.i912
  %.phi70.i6871299 = phi i64 [ %.phi80.i6831302, %csroa.if.end79.i912 ], [ -4611686018427387904, %float64_add.v0.C.c.exit ]
  %.phi70.i45912001298 = phi i64 [ %.phi80.i45512031301, %csroa.if.end79.i912 ], [ -4608308318706860032, %float64_add.v0.C.c.exit ]
  %.phi75.i913 = phi i64 [ %.phi80.i911, %csroa.if.end79.i912 ], [ -4613937818241073152, %float64_add.v0.C.c.exit ]
  br label %csroa.if.end69.i916

csroa.if.end69.i916:                              ; preds = %float64_add.v0.C.c.exit, %csroa.if.end74.i914
  %.phi70.i6871296 = phi i64 [ %.phi70.i6871299, %csroa.if.end74.i914 ], [ -4611686018427387904, %float64_add.v0.C.c.exit ]
  %.phi70.i45912001295 = phi i64 [ %.phi70.i45912001298, %csroa.if.end74.i914 ], [ -4611686018427387904, %float64_add.v0.C.c.exit ]
  %.phi70.i915 = phi i64 [ %.phi75.i913, %csroa.if.end74.i914 ], [ -9223372036854775808, %float64_add.v0.C.c.exit ]
  br label %csroa.if.end59.i920

csroa.if.end59.i920:                              ; preds = %float64_add.v0.C.c.exit, %__non_const_wrapper__.20.exit.thread1290, %csroa.if.end69.i916
  %.phi60.i6911292 = phi i64 [ %.phi70.i6871296, %csroa.if.end69.i916 ], [ -2251799813685248, %__non_const_wrapper__.20.exit.thread1290 ], [ -4503599627370496, %float64_add.v0.C.c.exit ]
  %.phi60.i46311961291 = phi i64 [ %.phi70.i45912001295, %csroa.if.end69.i916 ], [ -2251799813685248, %__non_const_wrapper__.20.exit.thread1290 ], [ -4503599627370496, %float64_add.v0.C.c.exit ]
  %.phi60.i919 = phi i64 [ %.phi70.i915, %csroa.if.end69.i916 ], [ -4616189618054758400, %__non_const_wrapper__.20.exit.thread1290 ], [ -4616189618054758400, %float64_add.v0.C.c.exit ]
  br label %csroa.if.end54.i922

csroa.if.end54.i922:                              ; preds = %float64_add.v0.C.c.exit, %csroa.if.end59.i920
  %.phi55.i6931289 = phi i64 [ %.phi60.i6911292, %csroa.if.end59.i920 ], [ 4609434218613702656, %float64_add.v0.C.c.exit ]
  %.phi55.i46511941288 = phi i64 [ %.phi60.i46311961291, %csroa.if.end59.i920 ], [ 4612811918334230528, %float64_add.v0.C.c.exit ]
  %.phi55.i921 = phi i64 [ %.phi60.i919, %csroa.if.end59.i920 ], [ 4607182418800017408, %float64_add.v0.C.c.exit ]
  br label %csroa.if.end49.i924

csroa.if.end49.i924:                              ; preds = %float64_add.v0.C.c.exit, %csroa.if.end54.i922
  %.phi50.i6951286 = phi i64 [ %.phi55.i6931289, %csroa.if.end54.i922 ], [ 0, %float64_add.v0.C.c.exit ]
  %.phi50.i46711921285 = phi i64 [ %.phi55.i46511941288, %csroa.if.end54.i922 ], [ 0, %float64_add.v0.C.c.exit ]
  %.phi50.i923 = phi i64 [ %.phi55.i921, %csroa.if.end54.i922 ], [ 0, %float64_add.v0.C.c.exit ]
  br label %csroa.if.end39.i928

csroa.if.end39.i928:                              ; preds = %float64_add.v0.C.c.exit, %__non_const_wrapper__.20.exit.thread1280, %csroa.if.end49.i924
  %.phi40.i6991282 = phi i64 [ %.phi50.i6951286, %csroa.if.end49.i924 ], [ 9221120237041090560, %__non_const_wrapper__.20.exit.thread1280 ], [ 9218868437227405312, %float64_add.v0.C.c.exit ]
  %.phi40.i47111881281 = phi i64 [ %.phi50.i46711921285, %csroa.if.end49.i924 ], [ 9221120237041090560, %__non_const_wrapper__.20.exit.thread1280 ], [ 9218868437227405312, %float64_add.v0.C.c.exit ]
  %.phi40.i927 = phi i64 [ %.phi50.i923, %csroa.if.end49.i924 ], [ 9218868437227405312, %__non_const_wrapper__.20.exit.thread1280 ], [ 9218868437227405312, %float64_add.v0.C.c.exit ]
  br label %csroa.if.end29.i932

csroa.if.end29.i932:                              ; preds = %float64_add.v0.C.c.exit, %__non_const_wrapper__.20.exit.thread1276, %csroa.if.end39.i928
  %.phi30.i7031278 = phi i64 [ %.phi40.i6991282, %csroa.if.end39.i928 ], [ 0, %__non_const_wrapper__.20.exit.thread1276 ], [ 4609434218613702656, %float64_add.v0.C.c.exit ]
  %.phi30.i47511841277 = phi i64 [ %.phi40.i47111881281, %csroa.if.end39.i928 ], [ 4611686018427387904, %__non_const_wrapper__.20.exit.thread1276 ], [ 4615063718147915776, %float64_add.v0.C.c.exit ]
  %.phi30.i931 = phi i64 [ %.phi40.i927, %csroa.if.end39.i928 ], [ 4611686018427387904, %__non_const_wrapper__.20.exit.thread1276 ], [ 4611686018427387904, %float64_add.v0.C.c.exit ]
  br label %csroa.if.end24.i934

csroa.if.end24.i934:                              ; preds = %float64_add.v0.C.c.exit, %csroa.if.end29.i932
  %.phi20.i7071275 = phi i64 [ %.phi30.i7031278, %csroa.if.end29.i932 ], [ 4607182418800017408, %float64_add.v0.C.c.exit ]
  %.phi20.i47911811274 = phi i64 [ %.phi30.i47511841277, %csroa.if.end29.i932 ], [ 9218868437227405312, %float64_add.v0.C.c.exit ]
  %.phi25.i933 = phi i64 [ %.phi30.i931, %csroa.if.end29.i932 ], [ 9218868437227405312, %float64_add.v0.C.c.exit ]
  br label %csroa.if.end19.i936

csroa.if.end19.i936:                              ; preds = %float64_add.v0.C.c.exit, %csroa.if.end24.i934
  %.phi20.i7071272 = phi i64 [ %.phi20.i7071275, %csroa.if.end24.i934 ], [ 4607182418800017408, %float64_add.v0.C.c.exit ]
  %.phi20.i47911811271 = phi i64 [ %.phi20.i47911811274, %csroa.if.end24.i934 ], [ 9221120237041090560, %float64_add.v0.C.c.exit ]
  %.phi20.i935 = phi i64 [ %.phi25.i933, %csroa.if.end24.i934 ], [ 9221120237041090560, %float64_add.v0.C.c.exit ]
  br label %csroa.if.end14.i938

csroa.if.end14.i938:                              ; preds = %float64_add.v0.C.c.exit, %csroa.if.end19.i936
  %.phi10.i7111263 = phi i64 [ %.phi20.i7071272, %csroa.if.end19.i936 ], [ 4611686018427387904, %float64_add.v0.C.c.exit ]
  %.phi10.i48311781262 = phi i64 [ %.phi20.i47911811271, %csroa.if.end19.i936 ], [ 4615063718147915776, %float64_add.v0.C.c.exit ]
  %.phi15.i937 = phi i64 [ %.phi20.i935, %csroa.if.end19.i936 ], [ 4609434218613702656, %float64_add.v0.C.c.exit ]
  br label %__non_const_wrapper__.21.exit

__non_const_wrapper__.21.exit:                    ; preds = %csroa.if.end14.i938, %float64_add.v0.C.c.exit
  %.phi10.i7111260 = phi i64 [ %.phi10.i7111263, %csroa.if.end14.i938 ], [ 4611686018427387904, %float64_add.v0.C.c.exit ]
  %.phi10.i48311781259 = phi i64 [ %.phi10.i48311781262, %csroa.if.end14.i938 ], [ 4611686018427387904, %float64_add.v0.C.c.exit ]
  %.phi10.i939 = phi i64 [ %.phi15.i937, %csroa.if.end14.i938 ], [ 0, %float64_add.v0.C.c.exit ]
  switch i32 %i.017, label %csroa.if.end224.i1082 [
    i32 40, label %csroa.if.end199.i1092
    i32 41, label %csroa.if.end204.i1090
    i32 2, label %csroa.if.end4.i1170
    i32 3, label %csroa.if.end14.i1166
    i32 4, label %csroa.if.end19.i1164
    i32 5, label %csroa.if.end24.i1162
    i32 6, label %csroa.if.end29.i1160
    i32 7, label %csroa.if.end34.i1158
    i32 8, label %csroa.if.end39.i1156
    i32 9, label %csroa.if.end44.i1154
    i32 10, label %csroa.if.end49.i1152
    i32 11, label %csroa.if.end54.i1150
    i32 12, label %csroa.if.end59.i1148
    i32 13, label %csroa.if.end64.i1146
    i32 14, label %csroa.if.end69.i1144
    i32 15, label %csroa.if.end74.i1142
    i32 16, label %csroa.if.end79.i1140
    i32 17, label %csroa.if.end84.i1138
    i32 18, label %csroa.if.end89.i1136
    i32 19, label %csroa.if.end94.i1134
    i32 20, label %csroa.if.end99.i1132
    i32 21, label %csroa.if.end104.i1130
    i32 22, label %csroa.if.end109.i1128
    i32 23, label %csroa.if.end114.i1126
    i32 24, label %csroa.if.end119.i1124
    i32 25, label %csroa.if.end124.i1122
    i32 26, label %csroa.if.end129.i1120
    i32 27, label %csroa.if.end134.i1118
    i32 28, label %csroa.if.end139.i1116
    i32 29, label %csroa.if.end144.i1114
    i32 30, label %csroa.if.end149.i1112
    i32 31, label %csroa.if.end154.i1110
    i32 32, label %csroa.if.end159.i1108
    i32 33, label %csroa.if.end164.i1106
    i32 34, label %csroa.if.end169.i1104
    i32 35, label %csroa.if.end174.i1102
    i32 36, label %csroa.if.end179.i1100
    i32 37, label %csroa.if.end184.i1098
    i32 38, label %csroa.if.end189.i1096
    i32 39, label %csroa.if.end194.i1094
    i32 42, label %csroa.if.end204.i1090.fold.split
    i32 43, label %csroa.if.end214.i1086
    i32 44, label %csroa.if.end219.i1084
  ]

csroa.if.end224.i1082:                            ; preds = %__non_const_wrapper__.21.exit
  br label %csroa.if.end219.i1084

csroa.if.end219.i1084:                            ; preds = %__non_const_wrapper__.21.exit, %csroa.if.end224.i1082
  %.phi220.i1083 = phi i64 [ -4620693217682128896, %csroa.if.end224.i1082 ], [ -4616189618054758400, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end214.i1086

csroa.if.end214.i1086:                            ; preds = %__non_const_wrapper__.21.exit, %csroa.if.end219.i1084
  %.phi215.i1085 = phi i64 [ %.phi220.i1083, %csroa.if.end219.i1084 ], [ -4503599627370496, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end204.i1090

csroa.if.end204.i1090.fold.split:                 ; preds = %__non_const_wrapper__.21.exit
  br label %csroa.if.end204.i1090

csroa.if.end204.i1090:                            ; preds = %__non_const_wrapper__.21.exit, %csroa.if.end204.i1090.fold.split, %csroa.if.end214.i1086
  %.phi205.i1089 = phi i64 [ 4602678819172646912, %__non_const_wrapper__.21.exit ], [ %.phi215.i1085, %csroa.if.end214.i1086 ], [ -2251799813685248, %csroa.if.end204.i1090.fold.split ]
  br label %csroa.if.end199.i1092

csroa.if.end199.i1092:                            ; preds = %__non_const_wrapper__.21.exit, %csroa.if.end204.i1090
  %.phi200.i1091 = phi i64 [ %.phi205.i1089, %csroa.if.end204.i1090 ], [ 4607182418800017408, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end194.i1094

csroa.if.end194.i1094:                            ; preds = %__non_const_wrapper__.21.exit, %csroa.if.end199.i1092
  %.phi195.i1093 = phi i64 [ %.phi200.i1091, %csroa.if.end199.i1092 ], [ 9218868437227405312, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end189.i1096

csroa.if.end189.i1096:                            ; preds = %__non_const_wrapper__.21.exit, %csroa.if.end194.i1094
  %.phi190.i1095 = phi i64 [ %.phi195.i1093, %csroa.if.end194.i1094 ], [ 9221120237041090560, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end184.i1098

csroa.if.end184.i1098:                            ; preds = %__non_const_wrapper__.21.exit, %csroa.if.end189.i1096
  %.phi185.i1097 = phi i64 [ %.phi190.i1095, %csroa.if.end189.i1096 ], [ 0, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end179.i1100

csroa.if.end179.i1100:                            ; preds = %__non_const_wrapper__.21.exit, %csroa.if.end184.i1098
  %.phi180.i1099 = phi i64 [ %.phi185.i1097, %csroa.if.end184.i1098 ], [ 9223372036854775807, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end174.i1102

csroa.if.end174.i1102:                            ; preds = %__non_const_wrapper__.21.exit, %csroa.if.end179.i1100
  %.phi175.i1101 = phi i64 [ %.phi180.i1099, %csroa.if.end179.i1100 ], [ 9221120237041090560, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end169.i1104

csroa.if.end169.i1104:                            ; preds = %__non_const_wrapper__.21.exit, %csroa.if.end174.i1102
  %.phi170.i1103 = phi i64 [ %.phi175.i1101, %csroa.if.end174.i1102 ], [ 4602678819172646912, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end164.i1106

csroa.if.end164.i1106:                            ; preds = %__non_const_wrapper__.21.exit, %csroa.if.end169.i1104
  %.phi165.i1105 = phi i64 [ %.phi170.i1103, %csroa.if.end169.i1104 ], [ 4607182418800017408, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end159.i1108

csroa.if.end159.i1108:                            ; preds = %__non_const_wrapper__.21.exit, %csroa.if.end164.i1106
  %.phi160.i1107 = phi i64 [ %.phi165.i1105, %csroa.if.end164.i1106 ], [ 9218868437227405312, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end154.i1110

csroa.if.end154.i1110:                            ; preds = %__non_const_wrapper__.21.exit, %csroa.if.end159.i1108
  %.phi155.i1109 = phi i64 [ %.phi160.i1107, %csroa.if.end159.i1108 ], [ 9221120237041090560, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end149.i1112

csroa.if.end149.i1112:                            ; preds = %__non_const_wrapper__.21.exit, %csroa.if.end154.i1110
  %.phi150.i1111 = phi i64 [ %.phi155.i1109, %csroa.if.end154.i1110 ], [ -4620693217682128896, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end144.i1114

csroa.if.end144.i1114:                            ; preds = %__non_const_wrapper__.21.exit, %csroa.if.end149.i1112
  %.phi145.i1113 = phi i64 [ %.phi150.i1111, %csroa.if.end149.i1112 ], [ -4616189618054758400, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end139.i1116

csroa.if.end139.i1116:                            ; preds = %__non_const_wrapper__.21.exit, %csroa.if.end144.i1114
  %.phi140.i1115 = phi i64 [ %.phi145.i1113, %csroa.if.end144.i1114 ], [ -4503599627370496, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end134.i1118

csroa.if.end134.i1118:                            ; preds = %__non_const_wrapper__.21.exit, %csroa.if.end139.i1116
  %.phi135.i1117 = phi i64 [ %.phi140.i1115, %csroa.if.end139.i1116 ], [ -2251799813685248, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end129.i1120

csroa.if.end129.i1120:                            ; preds = %__non_const_wrapper__.21.exit, %csroa.if.end134.i1118
  %.phi130.i1119 = phi i64 [ %.phi135.i1117, %csroa.if.end134.i1118 ], [ 0, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end124.i1122

csroa.if.end124.i1122:                            ; preds = %__non_const_wrapper__.21.exit, %csroa.if.end129.i1120
  %.phi125.i1121 = phi i64 [ %.phi130.i1119, %csroa.if.end129.i1120 ], [ 9223372036854775807, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end119.i1124

csroa.if.end119.i1124:                            ; preds = %__non_const_wrapper__.21.exit, %csroa.if.end124.i1122
  %.phi120.i1123 = phi i64 [ %.phi125.i1121, %csroa.if.end124.i1122 ], [ 9221120237041090560, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end114.i1126

csroa.if.end114.i1126:                            ; preds = %__non_const_wrapper__.21.exit, %csroa.if.end119.i1124
  %.phi115.i1125 = phi i64 [ %.phi120.i1123, %csroa.if.end119.i1124 ], [ -4610560118520545280, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end109.i1128

csroa.if.end109.i1128:                            ; preds = %__non_const_wrapper__.21.exit, %csroa.if.end114.i1126
  %.phi110.i1127 = phi i64 [ %.phi115.i1125, %csroa.if.end114.i1126 ], [ -9223372036854775808, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end104.i1130

csroa.if.end104.i1130:                            ; preds = %__non_const_wrapper__.21.exit, %csroa.if.end109.i1128
  %.phi105.i1129 = phi i64 [ %.phi110.i1127, %csroa.if.end109.i1128 ], [ -4503599627370496, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end99.i1132

csroa.if.end99.i1132:                             ; preds = %__non_const_wrapper__.21.exit, %csroa.if.end104.i1130
  %.phi100.i1131 = phi i64 [ %.phi105.i1129, %csroa.if.end104.i1130 ], [ -2251799813685248, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end94.i1134

csroa.if.end94.i1134:                             ; preds = %__non_const_wrapper__.21.exit, %csroa.if.end99.i1132
  %.phi95.i1133 = phi i64 [ %.phi100.i1131, %csroa.if.end99.i1132 ], [ -4608308318706860032, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end89.i1136

csroa.if.end89.i1136:                             ; preds = %__non_const_wrapper__.21.exit, %csroa.if.end94.i1134
  %.phi90.i1135 = phi i64 [ %.phi95.i1133, %csroa.if.end94.i1134 ], [ -4611686018427387904, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end84.i1138

csroa.if.end84.i1138:                             ; preds = %__non_const_wrapper__.21.exit, %csroa.if.end89.i1136
  %.phi85.i1137 = phi i64 [ %.phi90.i1135, %csroa.if.end89.i1136 ], [ -4503599627370496, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end79.i1140

csroa.if.end79.i1140:                             ; preds = %__non_const_wrapper__.21.exit, %csroa.if.end84.i1138
  %.phi80.i1139 = phi i64 [ %.phi85.i1137, %csroa.if.end84.i1138 ], [ -2251799813685248, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end74.i1142

csroa.if.end74.i1142:                             ; preds = %__non_const_wrapper__.21.exit, %csroa.if.end79.i1140
  %.phi75.i1141 = phi i64 [ %.phi80.i1139, %csroa.if.end79.i1140 ], [ -4608308318706860032, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end69.i1144

csroa.if.end69.i1144:                             ; preds = %__non_const_wrapper__.21.exit, %csroa.if.end74.i1142
  %.phi70.i1143 = phi i64 [ %.phi75.i1141, %csroa.if.end74.i1142 ], [ -4611686018427387904, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end64.i1146

csroa.if.end64.i1146:                             ; preds = %__non_const_wrapper__.21.exit, %csroa.if.end69.i1144
  %.phi65.i1145 = phi i64 [ %.phi70.i1143, %csroa.if.end69.i1144 ], [ -4503599627370496, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end59.i1148

csroa.if.end59.i1148:                             ; preds = %__non_const_wrapper__.21.exit, %csroa.if.end64.i1146
  %.phi60.i1147 = phi i64 [ %.phi65.i1145, %csroa.if.end64.i1146 ], [ -2251799813685248, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end54.i1150

csroa.if.end54.i1150:                             ; preds = %__non_const_wrapper__.21.exit, %csroa.if.end59.i1148
  %.phi55.i1149 = phi i64 [ %.phi60.i1147, %csroa.if.end59.i1148 ], [ 4612811918334230528, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end49.i1152

csroa.if.end49.i1152:                             ; preds = %__non_const_wrapper__.21.exit, %csroa.if.end54.i1150
  %.phi50.i1151 = phi i64 [ %.phi55.i1149, %csroa.if.end54.i1150 ], [ 0, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end44.i1154

csroa.if.end44.i1154:                             ; preds = %__non_const_wrapper__.21.exit, %csroa.if.end49.i1152
  %.phi45.i1153 = phi i64 [ %.phi50.i1151, %csroa.if.end49.i1152 ], [ 9218868437227405312, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end39.i1156

csroa.if.end39.i1156:                             ; preds = %__non_const_wrapper__.21.exit, %csroa.if.end44.i1154
  %.phi40.i1155 = phi i64 [ %.phi45.i1153, %csroa.if.end44.i1154 ], [ 9221120237041090560, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end34.i1158

csroa.if.end34.i1158:                             ; preds = %__non_const_wrapper__.21.exit, %csroa.if.end39.i1156
  %.phi35.i1157 = phi i64 [ %.phi40.i1155, %csroa.if.end39.i1156 ], [ 4615063718147915776, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end29.i1160

csroa.if.end29.i1160:                             ; preds = %__non_const_wrapper__.21.exit, %csroa.if.end34.i1158
  %.phi30.i1159 = phi i64 [ %.phi35.i1157, %csroa.if.end34.i1158 ], [ 4611686018427387904, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end24.i1162

csroa.if.end24.i1162:                             ; preds = %__non_const_wrapper__.21.exit, %csroa.if.end29.i1160
  %.phi25.i1161 = phi i64 [ %.phi30.i1159, %csroa.if.end29.i1160 ], [ 9218868437227405312, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end19.i1164

csroa.if.end19.i1164:                             ; preds = %__non_const_wrapper__.21.exit, %csroa.if.end24.i1162
  %.phi20.i1163 = phi i64 [ %.phi25.i1161, %csroa.if.end24.i1162 ], [ 9221120237041090560, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end14.i1166

csroa.if.end14.i1166:                             ; preds = %__non_const_wrapper__.21.exit, %csroa.if.end19.i1164
  %.phi15.i1165 = phi i64 [ %.phi20.i1163, %csroa.if.end19.i1164 ], [ 4615063718147915776, %__non_const_wrapper__.21.exit ]
  br label %csroa.if.end4.i1170

csroa.if.end4.i1170:                              ; preds = %csroa.if.end14.i1166, %__non_const_wrapper__.21.exit, %float64_add.v0.C.c.exit
  %.phi.i9431270 = phi i64 [ 4607182418800017408, %float64_add.v0.C.c.exit ], [ %.phi10.i939, %__non_const_wrapper__.21.exit ], [ %.phi10.i939, %csroa.if.end14.i1166 ]
  %.phi.i487117412541269 = phi i64 [ 9218868437227405312, %float64_add.v0.C.c.exit ], [ %.phi10.i48311781259, %__non_const_wrapper__.21.exit ], [ %.phi10.i48311781259, %csroa.if.end14.i1166 ]
  %.phi.i71512551268 = phi i64 [ 9218868437227405312, %float64_add.v0.C.c.exit ], [ %.phi10.i7111260, %__non_const_wrapper__.21.exit ], [ %.phi10.i7111260, %csroa.if.end14.i1166 ]
  %.phi5.i1169 = phi i64 [ 9218868437227405312, %float64_add.v0.C.c.exit ], [ 4611686018427387904, %__non_const_wrapper__.21.exit ], [ %.phi15.i1165, %csroa.if.end14.i1166 ]
  br label %__non_const_wrapper__.22.exit

__non_const_wrapper__.22.exit:                    ; preds = %float64_add.v0.C.c.exit, %csroa.if.end4.i1170
  %.phi.i9431266 = phi i64 [ %.phi.i9431270, %csroa.if.end4.i1170 ], [ 4607182418800017408, %float64_add.v0.C.c.exit ]
  %.phi.i487117412541265 = phi i64 [ %.phi.i487117412541269, %csroa.if.end4.i1170 ], [ 9221120237041090560, %float64_add.v0.C.c.exit ]
  %.phi.i71512551264 = phi i64 [ %.phi.i71512551268, %csroa.if.end4.i1170 ], [ 9221120237041090560, %float64_add.v0.C.c.exit ]
  %.phi.i1171 = phi i64 [ %.phi5.i1169, %csroa.if.end4.i1170 ], [ 9221120237041090560, %float64_add.v0.C.c.exit ]
  %.cast.i = bitcast i64 %retval.0.i to double
  %call8 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i32 0, i32 0), i64 %.phi.i71512551264, i64 %.phi.i9431266, i64 %.phi.i1171, i64 %retval.0.i, double %.cast.i)
  %cmp3 = icmp ne i64 %retval.0.i, %.phi.i487117412541265
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

; Function Attrs: noinline nounwind
define internal fastcc i64 @subFloat64Sigs.v0.C.c.c(i64 %a, i64 %b, i32 %zSign) unnamed_addr #3 {
entry:
  %zSig.addr.i.i = alloca i64, align 8
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
  %cmp.i.i = icmp ult i64 %zSig.0, 4294967296
  %shr.i.i = lshr i64 %zSig.0, 32
  %shr.sink.i.i = select i1 %cmp.i.i, i64 %zSig.0, i64 %shr.i.i
  %shiftCount.0.i.i = select i1 %cmp.i.i, i32 32, i32 0
  %extract.t1.i.i = trunc i64 %shr.sink.i.i to i32
  %cmp.i1.i = icmp ult i32 %extract.t1.i.i, 65536
  %shl.i.i = shl i32 %extract.t1.i.i, 16
  %..i.i = select i1 %cmp.i1.i, i32 16, i32 0
  %shl.a.i.i = select i1 %cmp.i1.i, i32 %shl.i.i, i32 %extract.t1.i.i
  %cmp1.i.i = icmp ult i32 %shl.a.i.i, 16777216
  %add3.i.i = or i32 %..i.i, 8
  %shl4.i.i = shl i32 %shl.a.i.i, 8
  %shiftCount.1.i.i = select i1 %cmp1.i.i, i32 %add3.i.i, i32 %..i.i
  %a.addr.1.i.i = select i1 %cmp1.i.i, i32 %shl4.i.i, i32 %shl.a.i.i
  %shr.i2.i = lshr i32 %a.addr.1.i.i, 24
  %arrayidx.i.i = getelementptr inbounds [256 x i32], [256 x i32]* @countLeadingZeros32.countLeadingZerosHigh, i32 0, i32 %shr.i2.i
  %6 = load i32, i32* %arrayidx.i.i, align 4
  %add6.i.i = add i32 %6, -1
  %add1.i.i = add i32 %add6.i.i, %shiftCount.0.i.i
  %sub.i = add i32 %add1.i.i, %shiftCount.1.i.i
  %sub1.i = sub i32 %dec59, %sub.i
  %sh_prom.i = zext i32 %sub.i to i64
  %shl.i = shl i64 %zSig.0, %sh_prom.i
  %7 = bitcast i64* %zSig.addr.i.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %7) #6
  store i64 %shl.i, i64* %zSig.addr.i.i, align 8
  %8 = trunc i64 %shl.i to i32
  %conv17.i.i = and i32 %8, 1023
  %conv19.i.i = and i32 %sub1.i, 65535
  %cmp20.i.i = icmp ugt i32 %conv19.i.i, 2044
  br i1 %cmp20.i.i, label %if.then22.i.i, label %if.end47.i.i

if.then22.i.i:                                    ; preds = %normalizeRoundAndPack
  %cmp23.i.i = icmp sgt i32 %sub1.i, 2045
  br i1 %cmp23.i.i, label %if.then30.i.i, label %lor.lhs.false.i.i

lor.lhs.false.i.i:                                ; preds = %if.then22.i.i
  %cmp25.i.i = icmp eq i32 %sub1.i, 2045
  br i1 %cmp25.i.i, label %land.lhs.true.i.i, label %if.end34.i.i

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i.i
  %add.i.i = add i64 %shl.i, 512
  %cmp28.i.i = icmp slt i64 %add.i.i, 0
  br i1 %cmp28.i.i, label %if.then30.i.i, label %if.end47.i.i

if.then30.i.i:                                    ; preds = %land.lhs.true.i.i, %if.then22.i.i
  tail call void @float_raise.v0.C.c.c(i32 9)
  %call.c.i.i.c = tail call i64 @packFloat64.v0.C.c.c(i32 %zSign.addr.0, i32 2047, i64 0)
  br label %normalizeRoundAndPackFloat64.v0.C.c.exit

if.end34.i.i:                                     ; preds = %lor.lhs.false.i.i
  %cmp35.i.i = icmp slt i32 %sub1.i, 0
  br i1 %cmp35.i.i, label %if.then37.i.i, label %if.end47.i.i

if.then37.i.i:                                    ; preds = %if.end34.i.i
  %sub38.i.i = sub nsw i32 0, %sub1.i
  call void @shift64RightJamming.v0.C.c.c(i64 %shl.i, i32 %sub38.i.i, i64* nonnull %zSig.addr.i.i)
  %9 = load i64, i64* %zSig.addr.i.i, align 8
  %10 = trunc i64 %9 to i32
  %conv40.i.i = and i32 %10, 1023
  %tobool43.i.i = icmp eq i32 %conv40.i.i, 0
  br i1 %tobool43.i.i, label %if.end50.i.i, label %if.end47.thread5.i.i

if.end47.thread5.i.i:                             ; preds = %if.then37.i.i
  tail call void @float_raise.v0.C.c.c(i32 4)
  br label %if.then49.i.i

if.end47.i.i:                                     ; preds = %if.end34.i.i, %land.lhs.true.i.i, %normalizeRoundAndPack
  %zExp.addr.1.i.i = phi i32 [ %sub1.i, %normalizeRoundAndPack ], [ %sub1.i, %if.end34.i.i ], [ 2045, %land.lhs.true.i.i ]
  %tobool48.i.i = icmp eq i32 %conv17.i.i, 0
  br i1 %tobool48.i.i, label %if.end50.i.i, label %if.then49.i.i

if.then49.i.i:                                    ; preds = %if.end47.i.i, %if.end47.thread5.i.i
  %11 = phi i64 [ %9, %if.end47.thread5.i.i ], [ %shl.i, %if.end47.i.i ]
  %roundBits.18.i.i = phi i32 [ %conv40.i.i, %if.end47.thread5.i.i ], [ %conv17.i.i, %if.end47.i.i ]
  %zExp.addr.17.i.i = phi i32 [ 0, %if.end47.thread5.i.i ], [ %zExp.addr.1.i.i, %if.end47.i.i ]
  %12 = load i32, i32* @float_exception_flags, align 4
  %or.i.i = or i32 %12, 1
  store i32 %or.i.i, i32* @float_exception_flags, align 4
  br label %if.end50.i.i

if.end50.i.i:                                     ; preds = %if.then49.i.i, %if.end47.i.i, %if.then37.i.i
  %13 = phi i64 [ %shl.i, %if.end47.i.i ], [ %11, %if.then49.i.i ], [ %9, %if.then37.i.i ]
  %roundBits.14.i.i = phi i32 [ 0, %if.end47.i.i ], [ %roundBits.18.i.i, %if.then49.i.i ], [ 0, %if.then37.i.i ]
  %zExp.addr.13.i.i = phi i32 [ %zExp.addr.1.i.i, %if.end47.i.i ], [ %zExp.addr.17.i.i, %if.then49.i.i ], [ 0, %if.then37.i.i ]
  %add52.i.i = add i64 %13, 512
  %shr.i3.i = lshr i64 %add52.i.i, 10
  %cmp53.i.i = icmp eq i32 %roundBits.14.i.i, 512
  %conv54.i.i = zext i1 %cmp53.i.i to i32
  %neg.i.i = xor i32 %conv54.i.i, -1
  %conv56.i.i = sext i32 %neg.i.i to i64
  %and57.i.i = and i64 %conv56.i.i, %shr.i3.i
  store i64 %and57.i.i, i64* %zSig.addr.i.i, align 8
  %cmp58.i.i = icmp eq i64 %and57.i.i, 0
  %.zExp.addr.1.i.i = select i1 %cmp58.i.i, i32 0, i32 %zExp.addr.13.i.i
  %call62.c.i.i.c = tail call i64 @packFloat64.v0.C.c.c(i32 %zSign.addr.0, i32 %.zExp.addr.1.i.i, i64 %and57.i.i)
  br label %normalizeRoundAndPackFloat64.v0.C.c.exit

normalizeRoundAndPackFloat64.v0.C.c.exit:         ; preds = %if.then30.i.i, %if.end50.i.i
  %retval.0.i.i = phi i64 [ %call.c.i.i.c, %if.then30.i.i ], [ %call62.c.i.i.c, %if.end50.i.i ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %7) #6
  br label %return

return:                                           ; preds = %if.then45, %normalizeRoundAndPackFloat64.v0.C.c.exit, %if.then47, %if.end31, %if.then29, %if.end22, %if.end12, %if.then10
  %retval.0 = phi i64 [ %call48.c.c, %if.then47 ], [ %retval.0.i.i, %normalizeRoundAndPackFloat64.v0.C.c.exit ], [ %call30.c.c, %if.then29 ], [ %call32.c.c, %if.end31 ], [ %call11.c.c, %if.then10 ], [ 9223372036854775807, %if.end12 ], [ %call24.c.c, %if.end22 ], [ %a, %if.then45 ]
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

; Function Attrs: noinline norecurse nounwind
define void @float_raise.v0.C.c.c(i32 %flags) local_unnamed_addr #5 {
entry:
  %0 = load i32, i32* @float_exception_flags, align 4
  %or = or i32 %0, %flags
  store i32 %or, i32* @float_exception_flags, align 4
  ret void
}

; Function Attrs: noinline norecurse nounwind
define internal fastcc i64 @propagateFloat64NaN.v0.C.c.c(i64 %a, i64 %b) unnamed_addr #5 {
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

; Function Attrs: noinline norecurse nounwind
define void @shift64RightJamming.v0.C.c.c(i64 %a, i32 %count, i64* nocapture %zPtr) local_unnamed_addr #5 {
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

attributes #0 = { noinline nounwind ssp "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noinline nounwind }
attributes #4 = { noinline norecurse nounwind readnone }
attributes #5 = { noinline norecurse nounwind }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
