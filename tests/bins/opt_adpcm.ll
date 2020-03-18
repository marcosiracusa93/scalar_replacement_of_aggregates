; ModuleID = './../tests/test_cases/adpcm.ll'
source_filename = "adpcm.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

@h = local_unnamed_addr constant [24 x i32] [i32 12, i32 -44, i32 -44, i32 212, i32 48, i32 -624, i32 128, i32 1448, i32 -840, i32 -3220, i32 3804, i32 15504, i32 15504, i32 3804, i32 -3220, i32 -840, i32 1448, i32 128, i32 -624, i32 48, i32 212, i32 -44, i32 -44, i32 12], align 16
@tqmf = common local_unnamed_addr global [24 x i32] zeroinitializer, align 16
@xl = common local_unnamed_addr global i32 0, align 4
@xh = common local_unnamed_addr global i32 0, align 4
@delay_bpl = common global [6 x i32] zeroinitializer, align 16
@delay_dltx = common global [6 x i32] zeroinitializer, align 16
@szl = common local_unnamed_addr global i32 0, align 4
@rlt1 = common local_unnamed_addr global i32 0, align 4
@al1 = common local_unnamed_addr global i32 0, align 4
@rlt2 = common local_unnamed_addr global i32 0, align 4
@al2 = common local_unnamed_addr global i32 0, align 4
@spl = common local_unnamed_addr global i32 0, align 4
@sl = common local_unnamed_addr global i32 0, align 4
@el = common local_unnamed_addr global i32 0, align 4
@detl = common local_unnamed_addr global i32 0, align 4
@il = common local_unnamed_addr global i32 0, align 4
@dlt = common local_unnamed_addr global i32 0, align 4
@nbl = common local_unnamed_addr global i32 0, align 4
@plt = common local_unnamed_addr global i32 0, align 4
@plt1 = common local_unnamed_addr global i32 0, align 4
@plt2 = common local_unnamed_addr global i32 0, align 4
@rlt = common local_unnamed_addr global i32 0, align 4
@delay_bph = common global [6 x i32] zeroinitializer, align 16
@delay_dhx = common global [6 x i32] zeroinitializer, align 16
@szh = common local_unnamed_addr global i32 0, align 4
@rh1 = common local_unnamed_addr global i32 0, align 4
@ah1 = common local_unnamed_addr global i32 0, align 4
@rh2 = common local_unnamed_addr global i32 0, align 4
@ah2 = common local_unnamed_addr global i32 0, align 4
@sph = common local_unnamed_addr global i32 0, align 4
@sh = common local_unnamed_addr global i32 0, align 4
@eh = common local_unnamed_addr global i32 0, align 4
@ih = common local_unnamed_addr global i32 0, align 4
@deth = common local_unnamed_addr global i32 0, align 4
@dh = common local_unnamed_addr global i32 0, align 4
@nbh = common local_unnamed_addr global i32 0, align 4
@ph = common local_unnamed_addr global i32 0, align 4
@ph1 = common local_unnamed_addr global i32 0, align 4
@ph2 = common local_unnamed_addr global i32 0, align 4
@yh = common local_unnamed_addr global i32 0, align 4
@ilr = common local_unnamed_addr global i32 0, align 4
@dec_del_bpl = common global [6 x i32] zeroinitializer, align 16
@dec_del_dltx = common global [6 x i32] zeroinitializer, align 16
@dec_szl = common local_unnamed_addr global i32 0, align 4
@dec_rlt1 = common local_unnamed_addr global i32 0, align 4
@dec_al1 = common local_unnamed_addr global i32 0, align 4
@dec_rlt2 = common local_unnamed_addr global i32 0, align 4
@dec_al2 = common local_unnamed_addr global i32 0, align 4
@dec_spl = common local_unnamed_addr global i32 0, align 4
@dec_sl = common local_unnamed_addr global i32 0, align 4
@dec_detl = common local_unnamed_addr global i32 0, align 4
@dec_dlt = common local_unnamed_addr global i32 0, align 4
@dl = common local_unnamed_addr global i32 0, align 4
@rl = common local_unnamed_addr global i32 0, align 4
@dec_nbl = common local_unnamed_addr global i32 0, align 4
@dec_plt = common local_unnamed_addr global i32 0, align 4
@dec_plt1 = common local_unnamed_addr global i32 0, align 4
@dec_plt2 = common local_unnamed_addr global i32 0, align 4
@dec_rlt = common local_unnamed_addr global i32 0, align 4
@dec_del_bph = common global [6 x i32] zeroinitializer, align 16
@dec_del_dhx = common global [6 x i32] zeroinitializer, align 16
@dec_szh = common local_unnamed_addr global i32 0, align 4
@dec_rh1 = common local_unnamed_addr global i32 0, align 4
@dec_ah1 = common local_unnamed_addr global i32 0, align 4
@dec_rh2 = common local_unnamed_addr global i32 0, align 4
@dec_ah2 = common local_unnamed_addr global i32 0, align 4
@dec_sph = common local_unnamed_addr global i32 0, align 4
@dec_sh = common local_unnamed_addr global i32 0, align 4
@dec_deth = common local_unnamed_addr global i32 0, align 4
@dec_dh = common local_unnamed_addr global i32 0, align 4
@dec_nbh = common local_unnamed_addr global i32 0, align 4
@dec_ph = common local_unnamed_addr global i32 0, align 4
@dec_ph1 = common local_unnamed_addr global i32 0, align 4
@dec_ph2 = common local_unnamed_addr global i32 0, align 4
@rh = common local_unnamed_addr global i32 0, align 4
@xd = common local_unnamed_addr global i32 0, align 4
@xs = common local_unnamed_addr global i32 0, align 4
@accumc = common local_unnamed_addr global [11 x i32] zeroinitializer, align 16
@accumd = common local_unnamed_addr global [11 x i32] zeroinitializer, align 16
@xout1 = common local_unnamed_addr global i32 0, align 4
@xout2 = common local_unnamed_addr global i32 0, align 4
@compressed.0 = common local_unnamed_addr global i32 0, align 16
@compressed.1 = common local_unnamed_addr global i32 0, align 16
@compressed.2 = common local_unnamed_addr global i32 0, align 16
@compressed.3 = common local_unnamed_addr global i32 0, align 16
@compressed.4 = common local_unnamed_addr global i32 0, align 16
@compressed.5 = common local_unnamed_addr global i32 0, align 16
@compressed.6 = common local_unnamed_addr global i32 0, align 16
@compressed.7 = common local_unnamed_addr global i32 0, align 16
@compressed.8 = common local_unnamed_addr global i32 0, align 16
@compressed.9 = common local_unnamed_addr global i32 0, align 16
@compressed.10 = common local_unnamed_addr global i32 0, align 16
@compressed.11 = common local_unnamed_addr global i32 0, align 16
@compressed.12 = common local_unnamed_addr global i32 0, align 16
@compressed.13 = common local_unnamed_addr global i32 0, align 16
@compressed.14 = common local_unnamed_addr global i32 0, align 16
@compressed.15 = common local_unnamed_addr global i32 0, align 16
@compressed.16 = common local_unnamed_addr global i32 0, align 16
@compressed.17 = common local_unnamed_addr global i32 0, align 16
@compressed.18 = common local_unnamed_addr global i32 0, align 16
@compressed.19 = common local_unnamed_addr global i32 0, align 16
@compressed.20 = common local_unnamed_addr global i32 0, align 16
@compressed.21 = common local_unnamed_addr global i32 0, align 16
@compressed.22 = common local_unnamed_addr global i32 0, align 16
@compressed.23 = common local_unnamed_addr global i32 0, align 16
@compressed.24 = common local_unnamed_addr global i32 0, align 16
@compressed.25 = common local_unnamed_addr global i32 0, align 16
@compressed.26 = common local_unnamed_addr global i32 0, align 16
@compressed.27 = common local_unnamed_addr global i32 0, align 16
@compressed.28 = common local_unnamed_addr global i32 0, align 16
@compressed.29 = common local_unnamed_addr global i32 0, align 16
@compressed.30 = common local_unnamed_addr global i32 0, align 16
@compressed.31 = common local_unnamed_addr global i32 0, align 16
@compressed.32 = common local_unnamed_addr global i32 0, align 16
@compressed.33 = common local_unnamed_addr global i32 0, align 16
@compressed.34 = common local_unnamed_addr global i32 0, align 16
@compressed.35 = common local_unnamed_addr global i32 0, align 16
@compressed.36 = common local_unnamed_addr global i32 0, align 16
@compressed.37 = common local_unnamed_addr global i32 0, align 16
@compressed.38 = common local_unnamed_addr global i32 0, align 16
@compressed.39 = common local_unnamed_addr global i32 0, align 16
@compressed.40 = common local_unnamed_addr global i32 0, align 16
@compressed.41 = common local_unnamed_addr global i32 0, align 16
@compressed.42 = common local_unnamed_addr global i32 0, align 16
@compressed.43 = common local_unnamed_addr global i32 0, align 16
@compressed.44 = common local_unnamed_addr global i32 0, align 16
@compressed.45 = common local_unnamed_addr global i32 0, align 16
@compressed.46 = common local_unnamed_addr global i32 0, align 16
@compressed.47 = common local_unnamed_addr global i32 0, align 16
@compressed.48 = common local_unnamed_addr global i32 0, align 16
@compressed.49 = common local_unnamed_addr global i32 0, align 16
@compressed.50 = common local_unnamed_addr global i32 0, align 16
@compressed.51 = common local_unnamed_addr global i32 0, align 16
@compressed.52 = common local_unnamed_addr global i32 0, align 16
@compressed.53 = common local_unnamed_addr global i32 0, align 16
@compressed.54 = common local_unnamed_addr global i32 0, align 16
@compressed.55 = common local_unnamed_addr global i32 0, align 16
@compressed.56 = common local_unnamed_addr global i32 0, align 16
@compressed.57 = common local_unnamed_addr global i32 0, align 16
@compressed.58 = common local_unnamed_addr global i32 0, align 16
@compressed.59 = common local_unnamed_addr global i32 0, align 16
@compressed.60 = common local_unnamed_addr global i32 0, align 16
@compressed.61 = common local_unnamed_addr global i32 0, align 16
@compressed.62 = common local_unnamed_addr global i32 0, align 16
@compressed.63 = common local_unnamed_addr global i32 0, align 16
@compressed.64 = common local_unnamed_addr global i32 0, align 16
@compressed.65 = common local_unnamed_addr global i32 0, align 16
@compressed.66 = common local_unnamed_addr global i32 0, align 16
@compressed.67 = common local_unnamed_addr global i32 0, align 16
@compressed.68 = common local_unnamed_addr global i32 0, align 16
@compressed.69 = common local_unnamed_addr global i32 0, align 16
@compressed.70 = common local_unnamed_addr global i32 0, align 16
@compressed.71 = common local_unnamed_addr global i32 0, align 16
@compressed.72 = common local_unnamed_addr global i32 0, align 16
@compressed.73 = common local_unnamed_addr global i32 0, align 16
@compressed.74 = common local_unnamed_addr global i32 0, align 16
@compressed.75 = common local_unnamed_addr global i32 0, align 16
@compressed.76 = common local_unnamed_addr global i32 0, align 16
@compressed.77 = common local_unnamed_addr global i32 0, align 16
@compressed.78 = common local_unnamed_addr global i32 0, align 16
@compressed.79 = common local_unnamed_addr global i32 0, align 16
@compressed.80 = common local_unnamed_addr global i32 0, align 16
@compressed.81 = common local_unnamed_addr global i32 0, align 16
@compressed.82 = common local_unnamed_addr global i32 0, align 16
@compressed.83 = common local_unnamed_addr global i32 0, align 16
@compressed.84 = common local_unnamed_addr global i32 0, align 16
@compressed.85 = common local_unnamed_addr global i32 0, align 16
@compressed.86 = common local_unnamed_addr global i32 0, align 16
@compressed.87 = common local_unnamed_addr global i32 0, align 16
@compressed.88 = common local_unnamed_addr global i32 0, align 16
@compressed.89 = common local_unnamed_addr global i32 0, align 16
@compressed.90 = common local_unnamed_addr global i32 0, align 16
@compressed.91 = common local_unnamed_addr global i32 0, align 16
@compressed.92 = common local_unnamed_addr global i32 0, align 16
@compressed.93 = common local_unnamed_addr global i32 0, align 16
@compressed.94 = common local_unnamed_addr global i32 0, align 16
@compressed.95 = common local_unnamed_addr global i32 0, align 16
@compressed.96 = common local_unnamed_addr global i32 0, align 16
@compressed.97 = common local_unnamed_addr global i32 0, align 16
@compressed.98 = common local_unnamed_addr global i32 0, align 16
@compressed.99 = common local_unnamed_addr global i32 0, align 16
@result.0 = common local_unnamed_addr global i32 0, align 16
@result.1 = common local_unnamed_addr global i32 0, align 16
@result.2 = common local_unnamed_addr global i32 0, align 16
@result.3 = common local_unnamed_addr global i32 0, align 16
@result.4 = common local_unnamed_addr global i32 0, align 16
@result.5 = common local_unnamed_addr global i32 0, align 16
@result.6 = common local_unnamed_addr global i32 0, align 16
@result.7 = common local_unnamed_addr global i32 0, align 16
@result.8 = common local_unnamed_addr global i32 0, align 16
@result.9 = common local_unnamed_addr global i32 0, align 16
@result.10 = common local_unnamed_addr global i32 0, align 16
@result.11 = common local_unnamed_addr global i32 0, align 16
@result.12 = common local_unnamed_addr global i32 0, align 16
@result.13 = common local_unnamed_addr global i32 0, align 16
@result.14 = common local_unnamed_addr global i32 0, align 16
@result.15 = common local_unnamed_addr global i32 0, align 16
@result.16 = common local_unnamed_addr global i32 0, align 16
@result.17 = common local_unnamed_addr global i32 0, align 16
@result.18 = common local_unnamed_addr global i32 0, align 16
@result.19 = common local_unnamed_addr global i32 0, align 16
@result.20 = common local_unnamed_addr global i32 0, align 16
@result.21 = common local_unnamed_addr global i32 0, align 16
@result.22 = common local_unnamed_addr global i32 0, align 16
@result.23 = common local_unnamed_addr global i32 0, align 16
@result.24 = common local_unnamed_addr global i32 0, align 16
@result.25 = common local_unnamed_addr global i32 0, align 16
@result.26 = common local_unnamed_addr global i32 0, align 16
@result.27 = common local_unnamed_addr global i32 0, align 16
@result.28 = common local_unnamed_addr global i32 0, align 16
@result.29 = common local_unnamed_addr global i32 0, align 16
@result.30 = common local_unnamed_addr global i32 0, align 16
@result.31 = common local_unnamed_addr global i32 0, align 16
@result.32 = common local_unnamed_addr global i32 0, align 16
@result.33 = common local_unnamed_addr global i32 0, align 16
@result.34 = common local_unnamed_addr global i32 0, align 16
@result.35 = common local_unnamed_addr global i32 0, align 16
@result.36 = common local_unnamed_addr global i32 0, align 16
@result.37 = common local_unnamed_addr global i32 0, align 16
@result.38 = common local_unnamed_addr global i32 0, align 16
@result.39 = common local_unnamed_addr global i32 0, align 16
@result.40 = common local_unnamed_addr global i32 0, align 16
@result.41 = common local_unnamed_addr global i32 0, align 16
@result.42 = common local_unnamed_addr global i32 0, align 16
@result.43 = common local_unnamed_addr global i32 0, align 16
@result.44 = common local_unnamed_addr global i32 0, align 16
@result.45 = common local_unnamed_addr global i32 0, align 16
@result.46 = common local_unnamed_addr global i32 0, align 16
@result.47 = common local_unnamed_addr global i32 0, align 16
@result.48 = common local_unnamed_addr global i32 0, align 16
@result.49 = common local_unnamed_addr global i32 0, align 16
@result.50 = common local_unnamed_addr global i32 0, align 16
@result.51 = common local_unnamed_addr global i32 0, align 16
@result.52 = common local_unnamed_addr global i32 0, align 16
@result.53 = common local_unnamed_addr global i32 0, align 16
@result.54 = common local_unnamed_addr global i32 0, align 16
@result.55 = common local_unnamed_addr global i32 0, align 16
@result.56 = common local_unnamed_addr global i32 0, align 16
@result.57 = common local_unnamed_addr global i32 0, align 16
@result.58 = common local_unnamed_addr global i32 0, align 16
@result.59 = common local_unnamed_addr global i32 0, align 16
@result.60 = common local_unnamed_addr global i32 0, align 16
@result.61 = common local_unnamed_addr global i32 0, align 16
@result.62 = common local_unnamed_addr global i32 0, align 16
@result.63 = common local_unnamed_addr global i32 0, align 16
@result.64 = common local_unnamed_addr global i32 0, align 16
@result.65 = common local_unnamed_addr global i32 0, align 16
@result.66 = common local_unnamed_addr global i32 0, align 16
@result.67 = common local_unnamed_addr global i32 0, align 16
@result.68 = common local_unnamed_addr global i32 0, align 16
@result.69 = common local_unnamed_addr global i32 0, align 16
@result.70 = common local_unnamed_addr global i32 0, align 16
@result.71 = common local_unnamed_addr global i32 0, align 16
@result.72 = common local_unnamed_addr global i32 0, align 16
@result.73 = common local_unnamed_addr global i32 0, align 16
@result.74 = common local_unnamed_addr global i32 0, align 16
@result.75 = common local_unnamed_addr global i32 0, align 16
@result.76 = common local_unnamed_addr global i32 0, align 16
@result.77 = common local_unnamed_addr global i32 0, align 16
@result.78 = common local_unnamed_addr global i32 0, align 16
@result.79 = common local_unnamed_addr global i32 0, align 16
@result.80 = common local_unnamed_addr global i32 0, align 16
@result.81 = common local_unnamed_addr global i32 0, align 16
@result.82 = common local_unnamed_addr global i32 0, align 16
@result.83 = common local_unnamed_addr global i32 0, align 16
@result.84 = common local_unnamed_addr global i32 0, align 16
@result.85 = common local_unnamed_addr global i32 0, align 16
@result.86 = common local_unnamed_addr global i32 0, align 16
@result.87 = common local_unnamed_addr global i32 0, align 16
@result.88 = common local_unnamed_addr global i32 0, align 16
@result.89 = common local_unnamed_addr global i32 0, align 16
@result.90 = common local_unnamed_addr global i32 0, align 16
@result.91 = common local_unnamed_addr global i32 0, align 16
@result.92 = common local_unnamed_addr global i32 0, align 16
@result.93 = common local_unnamed_addr global i32 0, align 16
@result.94 = common local_unnamed_addr global i32 0, align 16
@result.95 = common local_unnamed_addr global i32 0, align 16
@result.96 = common local_unnamed_addr global i32 0, align 16
@result.97 = common local_unnamed_addr global i32 0, align 16
@result.98 = common local_unnamed_addr global i32 0, align 16
@result.99 = common local_unnamed_addr global i32 0, align 16
@.str = private unnamed_addr constant [12 x i8] c"Result: %d\0A\00", align 1

; Function Attrs: noinline nounwind ssp uwtable
define i32 @main() local_unnamed_addr #0 {
entry:
  store i32 32, i32* @dec_detl, align 4
  store i32 32, i32* @detl, align 4
  store i32 8, i32* @dec_deth, align 4
  store i32 8, i32* @deth, align 4
  store i32 0, i32* @rlt2, align 4
  store i32 0, i32* @rlt1, align 4
  store i32 0, i32* @plt2, align 4
  store i32 0, i32* @plt1, align 4
  store i32 0, i32* @al2, align 4
  store i32 0, i32* @al1, align 4
  store i32 0, i32* @nbl, align 4
  store i32 0, i32* @rh2, align 4
  store i32 0, i32* @rh1, align 4
  store i32 0, i32* @ph2, align 4
  store i32 0, i32* @ph1, align 4
  store i32 0, i32* @ah2, align 4
  store i32 0, i32* @ah1, align 4
  store i32 0, i32* @nbh, align 4
  store i32 0, i32* @dec_rlt2, align 4
  store i32 0, i32* @dec_rlt1, align 4
  store i32 0, i32* @dec_plt2, align 4
  store i32 0, i32* @dec_plt1, align 4
  store i32 0, i32* @dec_al2, align 4
  store i32 0, i32* @dec_al1, align 4
  store i32 0, i32* @dec_nbl, align 4
  store i32 0, i32* @dec_rh2, align 4
  store i32 0, i32* @dec_rh1, align 4
  store i32 0, i32* @dec_ph2, align 4
  store i32 0, i32* @dec_ph1, align 4
  store i32 0, i32* @dec_ah2, align 4
  store i32 0, i32* @dec_ah1, align 4
  store i32 0, i32* @dec_nbh, align 4
  tail call void @llvm.memset.p0i8.i64(i8* bitcast ([6 x i32]* @delay_dltx to i8*), i8 0, i64 24, i32 16, i1 false) #6
  tail call void @llvm.memset.p0i8.i64(i8* bitcast ([6 x i32]* @delay_dhx to i8*), i8 0, i64 24, i32 16, i1 false) #6
  tail call void @llvm.memset.p0i8.i64(i8* bitcast ([6 x i32]* @dec_del_dltx to i8*), i8 0, i64 24, i32 16, i1 false) #6
  tail call void @llvm.memset.p0i8.i64(i8* bitcast ([6 x i32]* @dec_del_dhx to i8*), i8 0, i64 24, i32 16, i1 false) #6
  tail call void @llvm.memset.p0i8.i64(i8* bitcast ([6 x i32]* @delay_bpl to i8*), i8 0, i64 24, i32 16, i1 false) #6
  tail call void @llvm.memset.p0i8.i64(i8* bitcast ([6 x i32]* @delay_bph to i8*), i8 0, i64 24, i32 16, i1 false) #6
  tail call void @llvm.memset.p0i8.i64(i8* bitcast ([6 x i32]* @dec_del_bpl to i8*), i8 0, i64 24, i32 16, i1 false) #6
  tail call void @llvm.memset.p0i8.i64(i8* bitcast ([6 x i32]* @dec_del_bph to i8*), i8 0, i64 24, i32 16, i1 false) #6
  tail call void @llvm.memset.p0i8.i64(i8* bitcast ([24 x i32]* @tqmf to i8*), i8 0, i64 96, i32 16, i1 false) #6
  tail call void @llvm.memset.p0i8.i64(i8* bitcast ([11 x i32]* @accumc to i8*), i8 0, i64 44, i32 16, i1 false) #6
  tail call void @llvm.memset.p0i8.i64(i8* bitcast ([11 x i32]* @accumd to i8*), i8 0, i64 44, i32 16, i1 false) #6
  br label %for.body.i

for.body.i:                                       ; preds = %__non_const_wrapper__.30.exit, %entry
  %i.02.i = phi i32 [ 0, %entry ], [ %add5.i, %__non_const_wrapper__.30.exit ]
  switch i32 %i.02.i, label %csroa.if.end459.i [
    i32 0, label %__non_const_wrapper__.28.exit
    i32 2, label %__non_const_wrapper__.28.exit
    i32 4, label %__non_const_wrapper__.28.exit
    i32 6, label %__non_const_wrapper__.28.exit
    i32 8, label %__non_const_wrapper__.28.exit
    i32 10, label %__non_const_wrapper__.28.exit
    i32 12, label %__non_const_wrapper__.28.exit
    i32 14, label %__non_const_wrapper__.28.exit
    i32 16, label %__non_const_wrapper__.28.exit
    i32 18, label %csroa.if.end89.i
    i32 20, label %csroa.if.end89.i
    i32 22, label %csroa.if.end89.i
    i32 24, label %csroa.if.end119.i
    i32 26, label %csroa.if.end119.i
    i32 28, label %csroa.if.end119.i
    i32 30, label %csroa.if.end149.i
    i32 32, label %csroa.if.end149.i
    i32 34, label %csroa.if.end149.i
    i32 36, label %csroa.if.end179.i
    i32 38, label %csroa.if.end179.i
    i32 40, label %csroa.if.end179.i
    i32 42, label %csroa.if.end179.i
    i32 44, label %csroa.if.end219.i
    i32 46, label %csroa.if.end219.i
    i32 48, label %csroa.if.end239.i
    i32 50, label %csroa.if.end239.i
    i32 52, label %csroa.if.end239.i
    i32 54, label %csroa.if.end269.i
    i32 56, label %csroa.if.end269.i
    i32 58, label %csroa.if.end269.i
    i32 60, label %csroa.if.end299.i
    i32 62, label %csroa.if.end299.i
    i32 64, label %csroa.if.end299.i
    i32 66, label %csroa.if.end299.i
    i32 68, label %csroa.if.end299.i
    i32 70, label %csroa.if.end349.i
    i32 72, label %csroa.if.end349.i
    i32 74, label %csroa.if.end349.i
    i32 76, label %csroa.if.end349.i
    i32 78, label %csroa.if.end349.i
    i32 80, label %csroa.if.end349.i
    i32 82, label %csroa.if.end349.i
    i32 84, label %csroa.if.end349.i
    i32 86, label %csroa.if.end349.i
    i32 88, label %csroa.if.end349.i
    i32 90, label %csroa.if.end349.i
  ]

csroa.if.end459.i:                                ; preds = %for.body.i
  br label %csroa.if.end349.i

csroa.if.end349.i:                                ; preds = %for.body.i, %for.body.i, %for.body.i, %for.body.i, %for.body.i, %for.body.i, %csroa.if.end459.i, %for.body.i, %for.body.i, %for.body.i, %for.body.i, %for.body.i
  %.phi350.i = phi i32 [ 59, %for.body.i ], [ 59, %for.body.i ], [ 59, %for.body.i ], [ 59, %for.body.i ], [ 59, %for.body.i ], [ 59, %for.body.i ], [ 59, %for.body.i ], [ 59, %for.body.i ], [ 59, %for.body.i ], [ 59, %for.body.i ], [ 60, %csroa.if.end459.i ], [ 59, %for.body.i ]
  br label %csroa.if.end299.i

csroa.if.end299.i:                                ; preds = %for.body.i, %for.body.i, %for.body.i, %csroa.if.end349.i, %for.body.i, %for.body.i
  %.phi300.i = phi i32 [ 60, %for.body.i ], [ 60, %for.body.i ], [ 60, %for.body.i ], [ 60, %for.body.i ], [ %.phi350.i, %csroa.if.end349.i ], [ 60, %for.body.i ]
  br label %csroa.if.end269.i

csroa.if.end269.i:                                ; preds = %for.body.i, %for.body.i, %csroa.if.end299.i, %for.body.i
  %.phi270.i = phi i32 [ 61, %for.body.i ], [ 61, %for.body.i ], [ %.phi300.i, %csroa.if.end299.i ], [ 61, %for.body.i ]
  br label %csroa.if.end239.i

csroa.if.end239.i:                                ; preds = %for.body.i, %for.body.i, %csroa.if.end269.i, %for.body.i
  %.phi240.i = phi i32 [ 62, %for.body.i ], [ 62, %for.body.i ], [ %.phi270.i, %csroa.if.end269.i ], [ 62, %for.body.i ]
  br label %csroa.if.end219.i

csroa.if.end219.i:                                ; preds = %csroa.if.end239.i, %for.body.i, %for.body.i
  %.phi220.i = phi i32 [ 63, %for.body.i ], [ %.phi240.i, %csroa.if.end239.i ], [ 63, %for.body.i ]
  br label %csroa.if.end179.i

csroa.if.end179.i:                                ; preds = %for.body.i, %csroa.if.end219.i, %for.body.i, %for.body.i, %for.body.i
  %.phi180.i = phi i32 [ 64, %for.body.i ], [ 64, %for.body.i ], [ 64, %for.body.i ], [ %.phi220.i, %csroa.if.end219.i ], [ 64, %for.body.i ]
  br label %csroa.if.end149.i

csroa.if.end149.i:                                ; preds = %for.body.i, %for.body.i, %csroa.if.end179.i, %for.body.i
  %.phi150.i = phi i32 [ 65, %for.body.i ], [ 65, %for.body.i ], [ %.phi180.i, %csroa.if.end179.i ], [ 65, %for.body.i ]
  br label %csroa.if.end119.i

csroa.if.end119.i:                                ; preds = %for.body.i, %for.body.i, %csroa.if.end149.i, %for.body.i
  %.phi120.i = phi i32 [ 66, %for.body.i ], [ 66, %for.body.i ], [ %.phi150.i, %csroa.if.end149.i ], [ 66, %for.body.i ]
  br label %csroa.if.end89.i

csroa.if.end89.i:                                 ; preds = %for.body.i, %for.body.i, %csroa.if.end119.i, %for.body.i
  %.phi90.i = phi i32 [ 67, %for.body.i ], [ 67, %for.body.i ], [ %.phi120.i, %csroa.if.end119.i ], [ 67, %for.body.i ]
  br label %__non_const_wrapper__.28.exit

__non_const_wrapper__.28.exit:                    ; preds = %for.body.i, %for.body.i, %for.body.i, %for.body.i, %for.body.i, %csroa.if.end89.i, %for.body.i, %for.body.i, %for.body.i, %for.body.i
  %.phi.i = phi i32 [ 68, %for.body.i ], [ 68, %for.body.i ], [ 68, %for.body.i ], [ 68, %for.body.i ], [ 68, %for.body.i ], [ 68, %for.body.i ], [ 68, %for.body.i ], [ 68, %for.body.i ], [ %.phi90.i, %csroa.if.end89.i ], [ 68, %for.body.i ]
  %add.i = or i32 %i.02.i, 1
  switch i32 %add.i, label %csroa.if.else113.i [
    i32 1, label %__non_const_wrapper__.29.exit
    i32 3, label %__non_const_wrapper__.29.exit
    i32 5, label %__non_const_wrapper__.29.exit
    i32 7, label %__non_const_wrapper__.29.exit
    i32 9, label %__non_const_wrapper__.29.exit
    i32 11, label %__non_const_wrapper__.29.exit
    i32 13, label %__non_const_wrapper__.29.exit
    i32 15, label %__non_const_wrapper__.29.exit
    i32 17, label %csroa.if.end84.i
    i32 19, label %csroa.if.end84.i
    i32 21, label %csroa.if.end84.i
    i32 23, label %csroa.if.end84.i
  ]

csroa.if.else113.i:                               ; preds = %__non_const_wrapper__.28.exit
  switch i32 %add.i, label %csroa.if.end464.i [
    i32 25, label %csroa.if.end84.i
    i32 27, label %csroa.if.end84.i
    i32 29, label %csroa.if.end84.i
    i32 31, label %csroa.if.end154.i
    i32 33, label %csroa.if.end154.i
    i32 35, label %csroa.if.end174.i
    i32 37, label %csroa.if.end174.i
    i32 39, label %csroa.if.end174.i
    i32 41, label %csroa.if.end174.i
    i32 43, label %csroa.if.end214.i
    i32 45, label %csroa.if.end214.i
    i32 47, label %csroa.if.end214.i
    i32 49, label %csroa.if.end244.i
    i32 51, label %csroa.if.end244.i
    i32 53, label %csroa.if.end244.i
    i32 55, label %csroa.if.end274.i
    i32 57, label %csroa.if.end274.i
    i32 59, label %csroa.if.end274.i
    i32 61, label %csroa.if.end304.i
    i32 63, label %csroa.if.end304.i
    i32 65, label %csroa.if.end304.i
    i32 67, label %csroa.if.end304.i
    i32 69, label %csroa.if.end344.i
    i32 71, label %csroa.if.end344.i
    i32 73, label %csroa.if.end344.i
    i32 75, label %csroa.if.end344.i
    i32 77, label %csroa.if.end344.i
    i32 79, label %csroa.if.end344.i
    i32 81, label %csroa.if.end344.i
    i32 83, label %csroa.if.end344.i
    i32 85, label %csroa.if.end344.i
    i32 87, label %csroa.if.end344.i
    i32 89, label %csroa.if.end344.i
    i32 91, label %csroa.if.end344.i
  ]

csroa.if.end464.i:                                ; preds = %csroa.if.else113.i
  br label %csroa.if.end344.i

csroa.if.end344.i:                                ; preds = %csroa.if.else113.i, %csroa.if.else113.i, %csroa.if.else113.i, %csroa.if.else113.i, %csroa.if.else113.i, %csroa.if.end464.i, %csroa.if.else113.i, %csroa.if.else113.i, %csroa.if.else113.i, %csroa.if.else113.i, %csroa.if.else113.i, %csroa.if.else113.i, %csroa.if.else113.i
  %.phi345.i = phi i32 [ 59, %csroa.if.else113.i ], [ 59, %csroa.if.else113.i ], [ 59, %csroa.if.else113.i ], [ 59, %csroa.if.else113.i ], [ 59, %csroa.if.else113.i ], [ 59, %csroa.if.else113.i ], [ 59, %csroa.if.else113.i ], [ 59, %csroa.if.else113.i ], [ 59, %csroa.if.else113.i ], [ 59, %csroa.if.else113.i ], [ 59, %csroa.if.else113.i ], [ 60, %csroa.if.end464.i ], [ 59, %csroa.if.else113.i ]
  br label %csroa.if.end304.i

csroa.if.end304.i:                                ; preds = %csroa.if.else113.i, %csroa.if.end344.i, %csroa.if.else113.i, %csroa.if.else113.i, %csroa.if.else113.i
  %.phi305.i = phi i32 [ 60, %csroa.if.else113.i ], [ 60, %csroa.if.else113.i ], [ 60, %csroa.if.else113.i ], [ %.phi345.i, %csroa.if.end344.i ], [ 60, %csroa.if.else113.i ]
  br label %csroa.if.end274.i

csroa.if.end274.i:                                ; preds = %csroa.if.else113.i, %csroa.if.else113.i, %csroa.if.end304.i, %csroa.if.else113.i
  %.phi275.i = phi i32 [ 61, %csroa.if.else113.i ], [ 61, %csroa.if.else113.i ], [ %.phi305.i, %csroa.if.end304.i ], [ 61, %csroa.if.else113.i ]
  br label %csroa.if.end244.i

csroa.if.end244.i:                                ; preds = %csroa.if.else113.i, %csroa.if.else113.i, %csroa.if.end274.i, %csroa.if.else113.i
  %.phi245.i = phi i32 [ 62, %csroa.if.else113.i ], [ 62, %csroa.if.else113.i ], [ %.phi275.i, %csroa.if.end274.i ], [ 62, %csroa.if.else113.i ]
  br label %csroa.if.end214.i

csroa.if.end214.i:                                ; preds = %csroa.if.else113.i, %csroa.if.else113.i, %csroa.if.end244.i, %csroa.if.else113.i
  %.phi215.i = phi i32 [ 63, %csroa.if.else113.i ], [ 63, %csroa.if.else113.i ], [ %.phi245.i, %csroa.if.end244.i ], [ 63, %csroa.if.else113.i ]
  br label %csroa.if.end174.i

csroa.if.end174.i:                                ; preds = %csroa.if.else113.i, %csroa.if.end214.i, %csroa.if.else113.i, %csroa.if.else113.i, %csroa.if.else113.i
  %.phi175.i = phi i32 [ 64, %csroa.if.else113.i ], [ 64, %csroa.if.else113.i ], [ 64, %csroa.if.else113.i ], [ %.phi215.i, %csroa.if.end214.i ], [ 64, %csroa.if.else113.i ]
  br label %csroa.if.end154.i

csroa.if.end154.i:                                ; preds = %csroa.if.end174.i, %csroa.if.else113.i, %csroa.if.else113.i
  %.phi155.i = phi i32 [ 65, %csroa.if.else113.i ], [ %.phi175.i, %csroa.if.end174.i ], [ 65, %csroa.if.else113.i ]
  br label %csroa.if.end84.i

csroa.if.end84.i:                                 ; preds = %__non_const_wrapper__.28.exit, %__non_const_wrapper__.28.exit, %csroa.if.else113.i, %csroa.if.else113.i, %csroa.if.end154.i, %csroa.if.else113.i, %__non_const_wrapper__.28.exit, %__non_const_wrapper__.28.exit
  %.phi85.i = phi i32 [ 67, %__non_const_wrapper__.28.exit ], [ 67, %__non_const_wrapper__.28.exit ], [ 67, %__non_const_wrapper__.28.exit ], [ 67, %__non_const_wrapper__.28.exit ], [ 66, %csroa.if.else113.i ], [ 66, %csroa.if.else113.i ], [ %.phi155.i, %csroa.if.end154.i ], [ 66, %csroa.if.else113.i ]
  br label %__non_const_wrapper__.29.exit

__non_const_wrapper__.29.exit:                    ; preds = %__non_const_wrapper__.28.exit, %__non_const_wrapper__.28.exit, %__non_const_wrapper__.28.exit, %csroa.if.end84.i, %__non_const_wrapper__.28.exit, %__non_const_wrapper__.28.exit, %__non_const_wrapper__.28.exit, %__non_const_wrapper__.28.exit, %__non_const_wrapper__.28.exit
  %.phi5.i = phi i32 [ 68, %__non_const_wrapper__.28.exit ], [ 68, %__non_const_wrapper__.28.exit ], [ 68, %__non_const_wrapper__.28.exit ], [ 68, %__non_const_wrapper__.28.exit ], [ 68, %__non_const_wrapper__.28.exit ], [ 68, %__non_const_wrapper__.28.exit ], [ 68, %__non_const_wrapper__.28.exit ], [ %.phi85.i, %csroa.if.end84.i ], [ 68, %__non_const_wrapper__.28.exit ]
  %call.c.i.c = tail call i32 @encode.v0.C.c.c(i32 %.phi.i, i32 %.phi5.i) #6
  %div.i = sdiv i32 %i.02.i, 2
  switch i32 %div.i, label %csroa.if.else51.i [
    i32 0, label %csroa.if.then.i164
    i32 1, label %__non_const_wrapper__.30.exit.sink.split
    i32 2, label %csroa.if.then6.i
    i32 3, label %csroa.if.then10.i
    i32 4, label %csroa.if.then14.i
    i32 5, label %csroa.if.then18.i
    i32 6, label %csroa.if.then22.i170
    i32 7, label %csroa.if.then26.i
    i32 8, label %csroa.if.then30.i
    i32 9, label %csroa.if.then34.i
    i32 10, label %csroa.if.then38.i
    i32 11, label %csroa.if.then42.i173
    i32 12, label %csroa.if.then46.i
    i32 13, label %csroa.if.then50.i
  ]

csroa.if.then.i164:                               ; preds = %__non_const_wrapper__.29.exit
  br label %__non_const_wrapper__.30.exit.sink.split

csroa.if.then6.i:                                 ; preds = %__non_const_wrapper__.29.exit
  br label %__non_const_wrapper__.30.exit.sink.split

csroa.if.then10.i:                                ; preds = %__non_const_wrapper__.29.exit
  br label %__non_const_wrapper__.30.exit.sink.split

csroa.if.then14.i:                                ; preds = %__non_const_wrapper__.29.exit
  br label %__non_const_wrapper__.30.exit.sink.split

csroa.if.then18.i:                                ; preds = %__non_const_wrapper__.29.exit
  br label %__non_const_wrapper__.30.exit.sink.split

csroa.if.then22.i170:                             ; preds = %__non_const_wrapper__.29.exit
  br label %__non_const_wrapper__.30.exit.sink.split

csroa.if.then26.i:                                ; preds = %__non_const_wrapper__.29.exit
  br label %__non_const_wrapper__.30.exit.sink.split

csroa.if.then30.i:                                ; preds = %__non_const_wrapper__.29.exit
  br label %__non_const_wrapper__.30.exit.sink.split

csroa.if.then34.i:                                ; preds = %__non_const_wrapper__.29.exit
  br label %__non_const_wrapper__.30.exit.sink.split

csroa.if.then38.i:                                ; preds = %__non_const_wrapper__.29.exit
  br label %__non_const_wrapper__.30.exit.sink.split

csroa.if.then42.i173:                             ; preds = %__non_const_wrapper__.29.exit
  br label %__non_const_wrapper__.30.exit.sink.split

csroa.if.then46.i:                                ; preds = %__non_const_wrapper__.29.exit
  br label %__non_const_wrapper__.30.exit.sink.split

csroa.if.then50.i:                                ; preds = %__non_const_wrapper__.29.exit
  br label %__non_const_wrapper__.30.exit.sink.split

csroa.if.else51.i:                                ; preds = %__non_const_wrapper__.29.exit
  switch i32 %div.i, label %__non_const_wrapper__.30.exit [
    i32 14, label %__non_const_wrapper__.30.exit.sink.split
    i32 15, label %csroa.if.then58.i
    i32 16, label %csroa.if.then62.i176
    i32 17, label %csroa.if.then66.i
    i32 18, label %csroa.if.then70.i
    i32 19, label %csroa.if.then74.i
    i32 20, label %csroa.if.then78.i
    i32 21, label %csroa.if.then82.i179
    i32 22, label %csroa.if.then86.i
    i32 23, label %csroa.if.then90.i
    i32 24, label %csroa.if.then94.i
    i32 25, label %csroa.if.then98.i
    i32 26, label %csroa.if.then102.i182
    i32 27, label %csroa.if.then106.i
    i32 28, label %csroa.if.then110.i
    i32 29, label %csroa.if.then114.i
    i32 30, label %csroa.if.then118.i
    i32 31, label %csroa.if.then122.i185
    i32 32, label %csroa.if.then126.i
    i32 33, label %csroa.if.then130.i
    i32 34, label %csroa.if.then134.i
    i32 35, label %csroa.if.then138.i
    i32 36, label %csroa.if.then142.i188
    i32 37, label %csroa.if.then146.i
    i32 38, label %csroa.if.then150.i
    i32 39, label %csroa.if.then154.i
    i32 40, label %csroa.if.then158.i
    i32 41, label %csroa.if.then162.i191
    i32 42, label %csroa.if.then166.i
    i32 43, label %csroa.if.then170.i
    i32 44, label %csroa.if.then174.i
    i32 45, label %csroa.if.then178.i
    i32 46, label %csroa.if.then182.i194
    i32 47, label %csroa.if.then186.i
    i32 48, label %csroa.if.then190.i
    i32 49, label %csroa.if.then194.i
    i32 50, label %csroa.if.then198.i
    i32 51, label %csroa.if.then202.i197
    i32 52, label %csroa.if.then206.i
    i32 53, label %csroa.if.then210.i
    i32 54, label %csroa.if.then214.i
    i32 55, label %csroa.if.then218.i
    i32 56, label %csroa.if.then222.i200
    i32 57, label %csroa.if.then226.i
    i32 58, label %csroa.if.then230.i
    i32 59, label %csroa.if.then234.i
    i32 60, label %csroa.if.then238.i
    i32 61, label %csroa.if.then242.i203
    i32 62, label %csroa.if.then246.i
    i32 63, label %csroa.if.then250.i
    i32 64, label %csroa.if.then254.i
    i32 65, label %csroa.if.then258.i
    i32 66, label %csroa.if.then262.i206
    i32 67, label %csroa.if.then266.i
    i32 68, label %csroa.if.then270.i
    i32 69, label %csroa.if.then274.i
    i32 70, label %csroa.if.then278.i
    i32 71, label %csroa.if.then282.i209
    i32 72, label %csroa.if.then286.i
    i32 73, label %csroa.if.then290.i
    i32 74, label %csroa.if.then294.i
    i32 75, label %csroa.if.then298.i
    i32 76, label %csroa.if.then302.i212
    i32 77, label %csroa.if.then306.i
    i32 78, label %csroa.if.then310.i
    i32 79, label %csroa.if.then314.i
    i32 80, label %csroa.if.then318.i
    i32 81, label %csroa.if.then322.i215
    i32 82, label %csroa.if.then326.i
    i32 83, label %csroa.if.then330.i
    i32 84, label %csroa.if.then334.i
    i32 85, label %csroa.if.then338.i
    i32 86, label %csroa.if.then342.i218
    i32 87, label %csroa.if.then346.i
    i32 88, label %csroa.if.then350.i
    i32 89, label %csroa.if.then354.i
    i32 90, label %csroa.if.then358.i
    i32 91, label %csroa.if.then362.i221
    i32 92, label %csroa.if.then366.i
    i32 93, label %csroa.if.then370.i
    i32 94, label %csroa.if.then374.i
    i32 95, label %csroa.if.then378.i
    i32 96, label %csroa.if.then382.i224
    i32 97, label %csroa.if.then386.i
    i32 98, label %csroa.if.then390.i
    i32 99, label %csroa.if.then394.i
  ]

csroa.if.then58.i:                                ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.30.exit.sink.split

csroa.if.then62.i176:                             ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.30.exit.sink.split

csroa.if.then66.i:                                ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.30.exit.sink.split

csroa.if.then70.i:                                ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.30.exit.sink.split

csroa.if.then74.i:                                ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.30.exit.sink.split

csroa.if.then78.i:                                ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.30.exit.sink.split

csroa.if.then82.i179:                             ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.30.exit.sink.split

csroa.if.then86.i:                                ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.30.exit.sink.split

csroa.if.then90.i:                                ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.30.exit.sink.split

csroa.if.then94.i:                                ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.30.exit.sink.split

csroa.if.then98.i:                                ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.30.exit.sink.split

csroa.if.then102.i182:                            ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.30.exit.sink.split

csroa.if.then106.i:                               ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.30.exit.sink.split

csroa.if.then110.i:                               ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.30.exit.sink.split

csroa.if.then114.i:                               ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.30.exit.sink.split

csroa.if.then118.i:                               ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.30.exit.sink.split

csroa.if.then122.i185:                            ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.30.exit.sink.split

csroa.if.then126.i:                               ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.30.exit.sink.split

csroa.if.then130.i:                               ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.30.exit.sink.split

csroa.if.then134.i:                               ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.30.exit.sink.split

csroa.if.then138.i:                               ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.30.exit.sink.split

csroa.if.then142.i188:                            ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.30.exit.sink.split

csroa.if.then146.i:                               ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.30.exit.sink.split

csroa.if.then150.i:                               ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.30.exit.sink.split

csroa.if.then154.i:                               ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.30.exit.sink.split

csroa.if.then158.i:                               ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.30.exit.sink.split

csroa.if.then162.i191:                            ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.30.exit.sink.split

csroa.if.then166.i:                               ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.30.exit.sink.split

csroa.if.then170.i:                               ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.30.exit.sink.split

csroa.if.then174.i:                               ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.30.exit.sink.split

csroa.if.then178.i:                               ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.30.exit.sink.split

csroa.if.then182.i194:                            ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.30.exit.sink.split

csroa.if.then186.i:                               ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.30.exit.sink.split

csroa.if.then190.i:                               ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.30.exit.sink.split

csroa.if.then194.i:                               ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.30.exit.sink.split

csroa.if.then198.i:                               ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.30.exit.sink.split

csroa.if.then202.i197:                            ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.30.exit.sink.split

csroa.if.then206.i:                               ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.30.exit.sink.split

csroa.if.then210.i:                               ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.30.exit.sink.split

csroa.if.then214.i:                               ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.30.exit.sink.split

csroa.if.then218.i:                               ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.30.exit.sink.split

csroa.if.then222.i200:                            ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.30.exit.sink.split

csroa.if.then226.i:                               ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.30.exit.sink.split

csroa.if.then230.i:                               ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.30.exit.sink.split

csroa.if.then234.i:                               ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.30.exit.sink.split

csroa.if.then238.i:                               ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.30.exit.sink.split

csroa.if.then242.i203:                            ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.30.exit.sink.split

csroa.if.then246.i:                               ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.30.exit.sink.split

csroa.if.then250.i:                               ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.30.exit.sink.split

csroa.if.then254.i:                               ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.30.exit.sink.split

csroa.if.then258.i:                               ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.30.exit.sink.split

csroa.if.then262.i206:                            ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.30.exit.sink.split

csroa.if.then266.i:                               ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.30.exit.sink.split

csroa.if.then270.i:                               ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.30.exit.sink.split

csroa.if.then274.i:                               ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.30.exit.sink.split

csroa.if.then278.i:                               ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.30.exit.sink.split

csroa.if.then282.i209:                            ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.30.exit.sink.split

csroa.if.then286.i:                               ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.30.exit.sink.split

csroa.if.then290.i:                               ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.30.exit.sink.split

csroa.if.then294.i:                               ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.30.exit.sink.split

csroa.if.then298.i:                               ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.30.exit.sink.split

csroa.if.then302.i212:                            ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.30.exit.sink.split

csroa.if.then306.i:                               ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.30.exit.sink.split

csroa.if.then310.i:                               ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.30.exit.sink.split

csroa.if.then314.i:                               ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.30.exit.sink.split

csroa.if.then318.i:                               ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.30.exit.sink.split

csroa.if.then322.i215:                            ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.30.exit.sink.split

csroa.if.then326.i:                               ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.30.exit.sink.split

csroa.if.then330.i:                               ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.30.exit.sink.split

csroa.if.then334.i:                               ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.30.exit.sink.split

csroa.if.then338.i:                               ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.30.exit.sink.split

csroa.if.then342.i218:                            ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.30.exit.sink.split

csroa.if.then346.i:                               ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.30.exit.sink.split

csroa.if.then350.i:                               ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.30.exit.sink.split

csroa.if.then354.i:                               ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.30.exit.sink.split

csroa.if.then358.i:                               ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.30.exit.sink.split

csroa.if.then362.i221:                            ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.30.exit.sink.split

csroa.if.then366.i:                               ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.30.exit.sink.split

csroa.if.then370.i:                               ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.30.exit.sink.split

csroa.if.then374.i:                               ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.30.exit.sink.split

csroa.if.then378.i:                               ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.30.exit.sink.split

csroa.if.then382.i224:                            ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.30.exit.sink.split

csroa.if.then386.i:                               ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.30.exit.sink.split

csroa.if.then390.i:                               ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.30.exit.sink.split

csroa.if.then394.i:                               ; preds = %csroa.if.else51.i
  br label %__non_const_wrapper__.30.exit.sink.split

__non_const_wrapper__.30.exit.sink.split:         ; preds = %csroa.if.else51.i, %__non_const_wrapper__.29.exit, %csroa.if.then.i164, %csroa.if.then6.i, %csroa.if.then14.i, %csroa.if.then22.i170, %csroa.if.then30.i, %csroa.if.then38.i, %csroa.if.then46.i, %csroa.if.then62.i176, %csroa.if.then70.i, %csroa.if.then78.i, %csroa.if.then86.i, %csroa.if.then94.i, %csroa.if.then102.i182, %csroa.if.then110.i, %csroa.if.then118.i, %csroa.if.then126.i, %csroa.if.then134.i, %csroa.if.then142.i188, %csroa.if.then150.i, %csroa.if.then158.i, %csroa.if.then166.i, %csroa.if.then174.i, %csroa.if.then182.i194, %csroa.if.then190.i, %csroa.if.then198.i, %csroa.if.then206.i, %csroa.if.then214.i, %csroa.if.then222.i200, %csroa.if.then230.i, %csroa.if.then238.i, %csroa.if.then246.i, %csroa.if.then254.i, %csroa.if.then262.i206, %csroa.if.then270.i, %csroa.if.then278.i, %csroa.if.then286.i, %csroa.if.then294.i, %csroa.if.then302.i212, %csroa.if.then310.i, %csroa.if.then318.i, %csroa.if.then326.i, %csroa.if.then334.i, %csroa.if.then342.i218, %csroa.if.then350.i, %csroa.if.then358.i, %csroa.if.then366.i, %csroa.if.then374.i, %csroa.if.then382.i224, %csroa.if.then390.i, %csroa.if.then394.i, %csroa.if.then386.i, %csroa.if.then378.i, %csroa.if.then370.i, %csroa.if.then362.i221, %csroa.if.then354.i, %csroa.if.then346.i, %csroa.if.then338.i, %csroa.if.then330.i, %csroa.if.then322.i215, %csroa.if.then314.i, %csroa.if.then306.i, %csroa.if.then298.i, %csroa.if.then290.i, %csroa.if.then282.i209, %csroa.if.then274.i, %csroa.if.then266.i, %csroa.if.then258.i, %csroa.if.then250.i, %csroa.if.then242.i203, %csroa.if.then234.i, %csroa.if.then226.i, %csroa.if.then218.i, %csroa.if.then210.i, %csroa.if.then202.i197, %csroa.if.then194.i, %csroa.if.then186.i, %csroa.if.then178.i, %csroa.if.then170.i, %csroa.if.then162.i191, %csroa.if.then154.i, %csroa.if.then146.i, %csroa.if.then138.i, %csroa.if.then130.i, %csroa.if.then122.i185, %csroa.if.then114.i, %csroa.if.then106.i, %csroa.if.then98.i, %csroa.if.then90.i, %csroa.if.then82.i179, %csroa.if.then74.i, %csroa.if.then66.i, %csroa.if.then58.i, %csroa.if.then50.i, %csroa.if.then42.i173, %csroa.if.then34.i, %csroa.if.then26.i, %csroa.if.then18.i, %csroa.if.then10.i
  %compressed.1.sink = phi i32* [ @compressed.3, %csroa.if.then10.i ], [ @compressed.5, %csroa.if.then18.i ], [ @compressed.7, %csroa.if.then26.i ], [ @compressed.9, %csroa.if.then34.i ], [ @compressed.11, %csroa.if.then42.i173 ], [ @compressed.13, %csroa.if.then50.i ], [ @compressed.15, %csroa.if.then58.i ], [ @compressed.17, %csroa.if.then66.i ], [ @compressed.19, %csroa.if.then74.i ], [ @compressed.21, %csroa.if.then82.i179 ], [ @compressed.23, %csroa.if.then90.i ], [ @compressed.25, %csroa.if.then98.i ], [ @compressed.27, %csroa.if.then106.i ], [ @compressed.29, %csroa.if.then114.i ], [ @compressed.31, %csroa.if.then122.i185 ], [ @compressed.33, %csroa.if.then130.i ], [ @compressed.35, %csroa.if.then138.i ], [ @compressed.37, %csroa.if.then146.i ], [ @compressed.39, %csroa.if.then154.i ], [ @compressed.41, %csroa.if.then162.i191 ], [ @compressed.43, %csroa.if.then170.i ], [ @compressed.45, %csroa.if.then178.i ], [ @compressed.47, %csroa.if.then186.i ], [ @compressed.49, %csroa.if.then194.i ], [ @compressed.51, %csroa.if.then202.i197 ], [ @compressed.53, %csroa.if.then210.i ], [ @compressed.55, %csroa.if.then218.i ], [ @compressed.57, %csroa.if.then226.i ], [ @compressed.59, %csroa.if.then234.i ], [ @compressed.61, %csroa.if.then242.i203 ], [ @compressed.63, %csroa.if.then250.i ], [ @compressed.65, %csroa.if.then258.i ], [ @compressed.67, %csroa.if.then266.i ], [ @compressed.69, %csroa.if.then274.i ], [ @compressed.71, %csroa.if.then282.i209 ], [ @compressed.73, %csroa.if.then290.i ], [ @compressed.75, %csroa.if.then298.i ], [ @compressed.77, %csroa.if.then306.i ], [ @compressed.79, %csroa.if.then314.i ], [ @compressed.81, %csroa.if.then322.i215 ], [ @compressed.83, %csroa.if.then330.i ], [ @compressed.85, %csroa.if.then338.i ], [ @compressed.87, %csroa.if.then346.i ], [ @compressed.89, %csroa.if.then354.i ], [ @compressed.91, %csroa.if.then362.i221 ], [ @compressed.93, %csroa.if.then370.i ], [ @compressed.95, %csroa.if.then378.i ], [ @compressed.97, %csroa.if.then386.i ], [ @compressed.99, %csroa.if.then394.i ], [ @compressed.98, %csroa.if.then390.i ], [ @compressed.96, %csroa.if.then382.i224 ], [ @compressed.94, %csroa.if.then374.i ], [ @compressed.92, %csroa.if.then366.i ], [ @compressed.90, %csroa.if.then358.i ], [ @compressed.88, %csroa.if.then350.i ], [ @compressed.86, %csroa.if.then342.i218 ], [ @compressed.84, %csroa.if.then334.i ], [ @compressed.82, %csroa.if.then326.i ], [ @compressed.80, %csroa.if.then318.i ], [ @compressed.78, %csroa.if.then310.i ], [ @compressed.76, %csroa.if.then302.i212 ], [ @compressed.74, %csroa.if.then294.i ], [ @compressed.72, %csroa.if.then286.i ], [ @compressed.70, %csroa.if.then278.i ], [ @compressed.68, %csroa.if.then270.i ], [ @compressed.66, %csroa.if.then262.i206 ], [ @compressed.64, %csroa.if.then254.i ], [ @compressed.62, %csroa.if.then246.i ], [ @compressed.60, %csroa.if.then238.i ], [ @compressed.58, %csroa.if.then230.i ], [ @compressed.56, %csroa.if.then222.i200 ], [ @compressed.54, %csroa.if.then214.i ], [ @compressed.52, %csroa.if.then206.i ], [ @compressed.50, %csroa.if.then198.i ], [ @compressed.48, %csroa.if.then190.i ], [ @compressed.46, %csroa.if.then182.i194 ], [ @compressed.44, %csroa.if.then174.i ], [ @compressed.42, %csroa.if.then166.i ], [ @compressed.40, %csroa.if.then158.i ], [ @compressed.38, %csroa.if.then150.i ], [ @compressed.36, %csroa.if.then142.i188 ], [ @compressed.34, %csroa.if.then134.i ], [ @compressed.32, %csroa.if.then126.i ], [ @compressed.30, %csroa.if.then118.i ], [ @compressed.28, %csroa.if.then110.i ], [ @compressed.26, %csroa.if.then102.i182 ], [ @compressed.24, %csroa.if.then94.i ], [ @compressed.22, %csroa.if.then86.i ], [ @compressed.20, %csroa.if.then78.i ], [ @compressed.18, %csroa.if.then70.i ], [ @compressed.16, %csroa.if.then62.i176 ], [ @compressed.12, %csroa.if.then46.i ], [ @compressed.10, %csroa.if.then38.i ], [ @compressed.8, %csroa.if.then30.i ], [ @compressed.6, %csroa.if.then22.i170 ], [ @compressed.4, %csroa.if.then14.i ], [ @compressed.2, %csroa.if.then6.i ], [ @compressed.0, %csroa.if.then.i164 ], [ @compressed.1, %__non_const_wrapper__.29.exit ], [ @compressed.14, %csroa.if.else51.i ]
  store i32 %call.c.i.c, i32* %compressed.1.sink, align 16
  br label %__non_const_wrapper__.30.exit

__non_const_wrapper__.30.exit:                    ; preds = %__non_const_wrapper__.30.exit.sink.split, %csroa.if.else51.i
  %add5.i = add nuw nsw i32 %i.02.i, 2
  %cmp.i = icmp slt i32 %add5.i, 100
  br i1 %cmp.i, label %for.body.i, label %for.body8.i.preheader

for.body8.i.preheader:                            ; preds = %__non_const_wrapper__.30.exit
  br label %for.body8.i

for.body8.i:                                      ; preds = %for.body8.i.preheader, %__non_const_wrapper__.33.exit
  %i.11.i = phi i32 [ %add18.i, %__non_const_wrapper__.33.exit ], [ 0, %for.body8.i.preheader ]
  %div9.i = sdiv i32 %i.11.i, 2
  switch i32 %div9.i, label %csroa.if.else313.i437 [
    i32 0, label %csroa.if.then.i246
    i32 1, label %csroa.if.then2.i249
    i32 2, label %csroa.if.then7.i252
    i32 3, label %csroa.if.then12.i255
    i32 4, label %csroa.if.then17.i258
    i32 5, label %csroa.if.then22.i261
    i32 6, label %csroa.if.then27.i264
    i32 7, label %csroa.if.then32.i267
    i32 8, label %csroa.if.then37.i270
    i32 9, label %csroa.if.then42.i273
    i32 10, label %csroa.if.then47.i276
    i32 11, label %csroa.if.then52.i279
    i32 12, label %csroa.if.then57.i282
    i32 13, label %csroa.if.then62.i285
    i32 14, label %csroa.if.then67.i288
    i32 15, label %csroa.if.then72.i291
    i32 16, label %csroa.if.then77.i294
    i32 17, label %csroa.if.then82.i297
    i32 18, label %csroa.if.then87.i300
    i32 19, label %csroa.if.then92.i303
    i32 20, label %csroa.if.then97.i306
    i32 21, label %csroa.if.then102.i309
    i32 22, label %csroa.if.then107.i312
    i32 23, label %csroa.if.then112.i315
    i32 24, label %csroa.if.then117.i318
    i32 25, label %csroa.if.then122.i321
    i32 26, label %csroa.if.then127.i324
    i32 27, label %csroa.if.then132.i327
    i32 28, label %csroa.if.then137.i330
    i32 29, label %csroa.if.then142.i333
    i32 30, label %csroa.if.then147.i336
    i32 31, label %csroa.if.then152.i339
    i32 32, label %csroa.if.then157.i342
    i32 33, label %csroa.if.then162.i345
    i32 34, label %csroa.if.then167.i348
    i32 35, label %csroa.if.then172.i351
    i32 36, label %csroa.if.then177.i354
    i32 37, label %csroa.if.then182.i357
    i32 38, label %csroa.if.then187.i360
    i32 39, label %csroa.if.then192.i363
    i32 40, label %csroa.if.then197.i366
    i32 41, label %csroa.if.then202.i369
    i32 42, label %csroa.if.then207.i372
    i32 43, label %csroa.if.then212.i375
    i32 44, label %csroa.if.then217.i378
    i32 45, label %csroa.if.then222.i381
    i32 46, label %csroa.if.then227.i384
    i32 47, label %csroa.if.then232.i387
    i32 48, label %csroa.if.then237.i390
    i32 49, label %csroa.if.then242.i393
    i32 50, label %csroa.if.then247.i396
    i32 51, label %csroa.if.then252.i399
    i32 52, label %csroa.if.then257.i402
    i32 53, label %csroa.if.then262.i405
    i32 54, label %csroa.if.then267.i408
    i32 55, label %csroa.if.then272.i411
    i32 56, label %csroa.if.then277.i414
    i32 57, label %csroa.if.then282.i417
    i32 58, label %csroa.if.then287.i420
    i32 59, label %csroa.if.then292.i423
    i32 60, label %csroa.if.then297.i426
    i32 61, label %csroa.if.then302.i429
    i32 62, label %csroa.if.then307.i432
    i32 63, label %csroa.if.then312.i435
  ]

csroa.if.then.i246:                               ; preds = %for.body8.i
  %0 = load i32, i32* @compressed.0, align 16
  br label %__non_const_wrapper__.31.exit

csroa.if.then2.i249:                              ; preds = %for.body8.i
  %1 = load i32, i32* @compressed.1, align 16
  br label %__non_const_wrapper__.31.exit

csroa.if.then7.i252:                              ; preds = %for.body8.i
  %2 = load i32, i32* @compressed.2, align 16
  br label %__non_const_wrapper__.31.exit

csroa.if.then12.i255:                             ; preds = %for.body8.i
  %3 = load i32, i32* @compressed.3, align 16
  br label %__non_const_wrapper__.31.exit

csroa.if.then17.i258:                             ; preds = %for.body8.i
  %4 = load i32, i32* @compressed.4, align 16
  br label %__non_const_wrapper__.31.exit

csroa.if.then22.i261:                             ; preds = %for.body8.i
  %5 = load i32, i32* @compressed.5, align 16
  br label %__non_const_wrapper__.31.exit

csroa.if.then27.i264:                             ; preds = %for.body8.i
  %6 = load i32, i32* @compressed.6, align 16
  br label %__non_const_wrapper__.31.exit

csroa.if.then32.i267:                             ; preds = %for.body8.i
  %7 = load i32, i32* @compressed.7, align 16
  br label %__non_const_wrapper__.31.exit

csroa.if.then37.i270:                             ; preds = %for.body8.i
  %8 = load i32, i32* @compressed.8, align 16
  br label %__non_const_wrapper__.31.exit

csroa.if.then42.i273:                             ; preds = %for.body8.i
  %9 = load i32, i32* @compressed.9, align 16
  br label %__non_const_wrapper__.31.exit

csroa.if.then47.i276:                             ; preds = %for.body8.i
  %10 = load i32, i32* @compressed.10, align 16
  br label %__non_const_wrapper__.31.exit

csroa.if.then52.i279:                             ; preds = %for.body8.i
  %11 = load i32, i32* @compressed.11, align 16
  br label %__non_const_wrapper__.31.exit

csroa.if.then57.i282:                             ; preds = %for.body8.i
  %12 = load i32, i32* @compressed.12, align 16
  br label %__non_const_wrapper__.31.exit

csroa.if.then62.i285:                             ; preds = %for.body8.i
  %13 = load i32, i32* @compressed.13, align 16
  br label %__non_const_wrapper__.31.exit

csroa.if.then67.i288:                             ; preds = %for.body8.i
  %14 = load i32, i32* @compressed.14, align 16
  br label %__non_const_wrapper__.31.exit

csroa.if.then72.i291:                             ; preds = %for.body8.i
  %15 = load i32, i32* @compressed.15, align 16
  br label %__non_const_wrapper__.31.exit

csroa.if.then77.i294:                             ; preds = %for.body8.i
  %16 = load i32, i32* @compressed.16, align 16
  br label %__non_const_wrapper__.31.exit

csroa.if.then82.i297:                             ; preds = %for.body8.i
  %17 = load i32, i32* @compressed.17, align 16
  br label %__non_const_wrapper__.31.exit

csroa.if.then87.i300:                             ; preds = %for.body8.i
  %18 = load i32, i32* @compressed.18, align 16
  br label %__non_const_wrapper__.31.exit

csroa.if.then92.i303:                             ; preds = %for.body8.i
  %19 = load i32, i32* @compressed.19, align 16
  br label %__non_const_wrapper__.31.exit

csroa.if.then97.i306:                             ; preds = %for.body8.i
  %20 = load i32, i32* @compressed.20, align 16
  br label %__non_const_wrapper__.31.exit

csroa.if.then102.i309:                            ; preds = %for.body8.i
  %21 = load i32, i32* @compressed.21, align 16
  br label %__non_const_wrapper__.31.exit

csroa.if.then107.i312:                            ; preds = %for.body8.i
  %22 = load i32, i32* @compressed.22, align 16
  br label %__non_const_wrapper__.31.exit

csroa.if.then112.i315:                            ; preds = %for.body8.i
  %23 = load i32, i32* @compressed.23, align 16
  br label %__non_const_wrapper__.31.exit

csroa.if.then117.i318:                            ; preds = %for.body8.i
  %24 = load i32, i32* @compressed.24, align 16
  br label %__non_const_wrapper__.31.exit

csroa.if.then122.i321:                            ; preds = %for.body8.i
  %25 = load i32, i32* @compressed.25, align 16
  br label %__non_const_wrapper__.31.exit

csroa.if.then127.i324:                            ; preds = %for.body8.i
  %26 = load i32, i32* @compressed.26, align 16
  br label %__non_const_wrapper__.31.exit

csroa.if.then132.i327:                            ; preds = %for.body8.i
  %27 = load i32, i32* @compressed.27, align 16
  br label %__non_const_wrapper__.31.exit

csroa.if.then137.i330:                            ; preds = %for.body8.i
  %28 = load i32, i32* @compressed.28, align 16
  br label %__non_const_wrapper__.31.exit

csroa.if.then142.i333:                            ; preds = %for.body8.i
  %29 = load i32, i32* @compressed.29, align 16
  br label %__non_const_wrapper__.31.exit

csroa.if.then147.i336:                            ; preds = %for.body8.i
  %30 = load i32, i32* @compressed.30, align 16
  br label %__non_const_wrapper__.31.exit

csroa.if.then152.i339:                            ; preds = %for.body8.i
  %31 = load i32, i32* @compressed.31, align 16
  br label %__non_const_wrapper__.31.exit

csroa.if.then157.i342:                            ; preds = %for.body8.i
  %32 = load i32, i32* @compressed.32, align 16
  br label %__non_const_wrapper__.31.exit

csroa.if.then162.i345:                            ; preds = %for.body8.i
  %33 = load i32, i32* @compressed.33, align 16
  br label %__non_const_wrapper__.31.exit

csroa.if.then167.i348:                            ; preds = %for.body8.i
  %34 = load i32, i32* @compressed.34, align 16
  br label %__non_const_wrapper__.31.exit

csroa.if.then172.i351:                            ; preds = %for.body8.i
  %35 = load i32, i32* @compressed.35, align 16
  br label %__non_const_wrapper__.31.exit

csroa.if.then177.i354:                            ; preds = %for.body8.i
  %36 = load i32, i32* @compressed.36, align 16
  br label %__non_const_wrapper__.31.exit

csroa.if.then182.i357:                            ; preds = %for.body8.i
  %37 = load i32, i32* @compressed.37, align 16
  br label %__non_const_wrapper__.31.exit

csroa.if.then187.i360:                            ; preds = %for.body8.i
  %38 = load i32, i32* @compressed.38, align 16
  br label %__non_const_wrapper__.31.exit

csroa.if.then192.i363:                            ; preds = %for.body8.i
  %39 = load i32, i32* @compressed.39, align 16
  br label %__non_const_wrapper__.31.exit

csroa.if.then197.i366:                            ; preds = %for.body8.i
  %40 = load i32, i32* @compressed.40, align 16
  br label %__non_const_wrapper__.31.exit

csroa.if.then202.i369:                            ; preds = %for.body8.i
  %41 = load i32, i32* @compressed.41, align 16
  br label %__non_const_wrapper__.31.exit

csroa.if.then207.i372:                            ; preds = %for.body8.i
  %42 = load i32, i32* @compressed.42, align 16
  br label %__non_const_wrapper__.31.exit

csroa.if.then212.i375:                            ; preds = %for.body8.i
  %43 = load i32, i32* @compressed.43, align 16
  br label %__non_const_wrapper__.31.exit

csroa.if.then217.i378:                            ; preds = %for.body8.i
  %44 = load i32, i32* @compressed.44, align 16
  br label %__non_const_wrapper__.31.exit

csroa.if.then222.i381:                            ; preds = %for.body8.i
  %45 = load i32, i32* @compressed.45, align 16
  br label %__non_const_wrapper__.31.exit

csroa.if.then227.i384:                            ; preds = %for.body8.i
  %46 = load i32, i32* @compressed.46, align 16
  br label %__non_const_wrapper__.31.exit

csroa.if.then232.i387:                            ; preds = %for.body8.i
  %47 = load i32, i32* @compressed.47, align 16
  br label %__non_const_wrapper__.31.exit

csroa.if.then237.i390:                            ; preds = %for.body8.i
  %48 = load i32, i32* @compressed.48, align 16
  br label %__non_const_wrapper__.31.exit

csroa.if.then242.i393:                            ; preds = %for.body8.i
  %49 = load i32, i32* @compressed.49, align 16
  br label %__non_const_wrapper__.31.exit

csroa.if.then247.i396:                            ; preds = %for.body8.i
  %50 = load i32, i32* @compressed.50, align 16
  br label %__non_const_wrapper__.31.exit

csroa.if.then252.i399:                            ; preds = %for.body8.i
  %51 = load i32, i32* @compressed.51, align 16
  br label %__non_const_wrapper__.31.exit

csroa.if.then257.i402:                            ; preds = %for.body8.i
  %52 = load i32, i32* @compressed.52, align 16
  br label %__non_const_wrapper__.31.exit

csroa.if.then262.i405:                            ; preds = %for.body8.i
  %53 = load i32, i32* @compressed.53, align 16
  br label %__non_const_wrapper__.31.exit

csroa.if.then267.i408:                            ; preds = %for.body8.i
  %54 = load i32, i32* @compressed.54, align 16
  br label %__non_const_wrapper__.31.exit

csroa.if.then272.i411:                            ; preds = %for.body8.i
  %55 = load i32, i32* @compressed.55, align 16
  br label %__non_const_wrapper__.31.exit

csroa.if.then277.i414:                            ; preds = %for.body8.i
  %56 = load i32, i32* @compressed.56, align 16
  br label %__non_const_wrapper__.31.exit

csroa.if.then282.i417:                            ; preds = %for.body8.i
  %57 = load i32, i32* @compressed.57, align 16
  br label %__non_const_wrapper__.31.exit

csroa.if.then287.i420:                            ; preds = %for.body8.i
  %58 = load i32, i32* @compressed.58, align 16
  br label %__non_const_wrapper__.31.exit

csroa.if.then292.i423:                            ; preds = %for.body8.i
  %59 = load i32, i32* @compressed.59, align 16
  br label %__non_const_wrapper__.31.exit

csroa.if.then297.i426:                            ; preds = %for.body8.i
  %60 = load i32, i32* @compressed.60, align 16
  br label %__non_const_wrapper__.31.exit

csroa.if.then302.i429:                            ; preds = %for.body8.i
  %61 = load i32, i32* @compressed.61, align 16
  br label %__non_const_wrapper__.31.exit

csroa.if.then307.i432:                            ; preds = %for.body8.i
  %62 = load i32, i32* @compressed.62, align 16
  br label %__non_const_wrapper__.31.exit

csroa.if.then312.i435:                            ; preds = %for.body8.i
  %63 = load i32, i32* @compressed.63, align 16
  br label %__non_const_wrapper__.31.exit

csroa.if.else313.i437:                            ; preds = %for.body8.i
  switch i32 %div9.i, label %__non_const_wrapper__.31.exit [
    i32 64, label %csroa.if.then317.i438
    i32 65, label %csroa.if.then322.i441
    i32 66, label %csroa.if.then327.i444
    i32 67, label %csroa.if.then332.i447
    i32 68, label %csroa.if.then337.i450
    i32 69, label %csroa.if.then342.i453
    i32 70, label %csroa.if.then347.i456
    i32 71, label %csroa.if.then352.i459
    i32 72, label %csroa.if.then357.i462
    i32 73, label %csroa.if.then362.i465
    i32 74, label %csroa.if.then367.i468
    i32 75, label %csroa.if.then372.i471
    i32 76, label %csroa.if.then377.i474
    i32 77, label %csroa.if.then382.i477
    i32 78, label %csroa.if.then387.i480
    i32 79, label %csroa.if.then392.i483
    i32 80, label %csroa.if.then397.i486
    i32 81, label %csroa.if.then402.i489
    i32 82, label %csroa.if.then407.i492
    i32 83, label %csroa.if.then412.i495
    i32 84, label %csroa.if.then417.i498
    i32 85, label %csroa.if.then422.i501
    i32 86, label %csroa.if.then427.i504
    i32 87, label %csroa.if.then432.i507
    i32 88, label %csroa.if.then437.i510
    i32 89, label %csroa.if.then442.i513
    i32 90, label %csroa.if.then447.i516
    i32 91, label %csroa.if.then452.i519
    i32 92, label %csroa.if.then457.i522
    i32 93, label %csroa.if.then462.i525
    i32 94, label %csroa.if.then467.i528
    i32 95, label %csroa.if.then472.i531
    i32 96, label %csroa.if.then477.i534
    i32 97, label %csroa.if.then482.i537
    i32 98, label %csroa.if.then487.i540
    i32 99, label %csroa.if.then492.i543
  ]

csroa.if.then317.i438:                            ; preds = %csroa.if.else313.i437
  %64 = load i32, i32* @compressed.64, align 16
  br label %__non_const_wrapper__.31.exit

csroa.if.then322.i441:                            ; preds = %csroa.if.else313.i437
  %65 = load i32, i32* @compressed.65, align 16
  br label %__non_const_wrapper__.31.exit

csroa.if.then327.i444:                            ; preds = %csroa.if.else313.i437
  %66 = load i32, i32* @compressed.66, align 16
  br label %__non_const_wrapper__.31.exit

csroa.if.then332.i447:                            ; preds = %csroa.if.else313.i437
  %67 = load i32, i32* @compressed.67, align 16
  br label %__non_const_wrapper__.31.exit

csroa.if.then337.i450:                            ; preds = %csroa.if.else313.i437
  %68 = load i32, i32* @compressed.68, align 16
  br label %__non_const_wrapper__.31.exit

csroa.if.then342.i453:                            ; preds = %csroa.if.else313.i437
  %69 = load i32, i32* @compressed.69, align 16
  br label %__non_const_wrapper__.31.exit

csroa.if.then347.i456:                            ; preds = %csroa.if.else313.i437
  %70 = load i32, i32* @compressed.70, align 16
  br label %__non_const_wrapper__.31.exit

csroa.if.then352.i459:                            ; preds = %csroa.if.else313.i437
  %71 = load i32, i32* @compressed.71, align 16
  br label %__non_const_wrapper__.31.exit

csroa.if.then357.i462:                            ; preds = %csroa.if.else313.i437
  %72 = load i32, i32* @compressed.72, align 16
  br label %__non_const_wrapper__.31.exit

csroa.if.then362.i465:                            ; preds = %csroa.if.else313.i437
  %73 = load i32, i32* @compressed.73, align 16
  br label %__non_const_wrapper__.31.exit

csroa.if.then367.i468:                            ; preds = %csroa.if.else313.i437
  %74 = load i32, i32* @compressed.74, align 16
  br label %__non_const_wrapper__.31.exit

csroa.if.then372.i471:                            ; preds = %csroa.if.else313.i437
  %75 = load i32, i32* @compressed.75, align 16
  br label %__non_const_wrapper__.31.exit

csroa.if.then377.i474:                            ; preds = %csroa.if.else313.i437
  %76 = load i32, i32* @compressed.76, align 16
  br label %__non_const_wrapper__.31.exit

csroa.if.then382.i477:                            ; preds = %csroa.if.else313.i437
  %77 = load i32, i32* @compressed.77, align 16
  br label %__non_const_wrapper__.31.exit

csroa.if.then387.i480:                            ; preds = %csroa.if.else313.i437
  %78 = load i32, i32* @compressed.78, align 16
  br label %__non_const_wrapper__.31.exit

csroa.if.then392.i483:                            ; preds = %csroa.if.else313.i437
  %79 = load i32, i32* @compressed.79, align 16
  br label %__non_const_wrapper__.31.exit

csroa.if.then397.i486:                            ; preds = %csroa.if.else313.i437
  %80 = load i32, i32* @compressed.80, align 16
  br label %__non_const_wrapper__.31.exit

csroa.if.then402.i489:                            ; preds = %csroa.if.else313.i437
  %81 = load i32, i32* @compressed.81, align 16
  br label %__non_const_wrapper__.31.exit

csroa.if.then407.i492:                            ; preds = %csroa.if.else313.i437
  %82 = load i32, i32* @compressed.82, align 16
  br label %__non_const_wrapper__.31.exit

csroa.if.then412.i495:                            ; preds = %csroa.if.else313.i437
  %83 = load i32, i32* @compressed.83, align 16
  br label %__non_const_wrapper__.31.exit

csroa.if.then417.i498:                            ; preds = %csroa.if.else313.i437
  %84 = load i32, i32* @compressed.84, align 16
  br label %__non_const_wrapper__.31.exit

csroa.if.then422.i501:                            ; preds = %csroa.if.else313.i437
  %85 = load i32, i32* @compressed.85, align 16
  br label %__non_const_wrapper__.31.exit

csroa.if.then427.i504:                            ; preds = %csroa.if.else313.i437
  %86 = load i32, i32* @compressed.86, align 16
  br label %__non_const_wrapper__.31.exit

csroa.if.then432.i507:                            ; preds = %csroa.if.else313.i437
  %87 = load i32, i32* @compressed.87, align 16
  br label %__non_const_wrapper__.31.exit

csroa.if.then437.i510:                            ; preds = %csroa.if.else313.i437
  %88 = load i32, i32* @compressed.88, align 16
  br label %__non_const_wrapper__.31.exit

csroa.if.then442.i513:                            ; preds = %csroa.if.else313.i437
  %89 = load i32, i32* @compressed.89, align 16
  br label %__non_const_wrapper__.31.exit

csroa.if.then447.i516:                            ; preds = %csroa.if.else313.i437
  %90 = load i32, i32* @compressed.90, align 16
  br label %__non_const_wrapper__.31.exit

csroa.if.then452.i519:                            ; preds = %csroa.if.else313.i437
  %91 = load i32, i32* @compressed.91, align 16
  br label %__non_const_wrapper__.31.exit

csroa.if.then457.i522:                            ; preds = %csroa.if.else313.i437
  %92 = load i32, i32* @compressed.92, align 16
  br label %__non_const_wrapper__.31.exit

csroa.if.then462.i525:                            ; preds = %csroa.if.else313.i437
  %93 = load i32, i32* @compressed.93, align 16
  br label %__non_const_wrapper__.31.exit

csroa.if.then467.i528:                            ; preds = %csroa.if.else313.i437
  %94 = load i32, i32* @compressed.94, align 16
  br label %__non_const_wrapper__.31.exit

csroa.if.then472.i531:                            ; preds = %csroa.if.else313.i437
  %95 = load i32, i32* @compressed.95, align 16
  br label %__non_const_wrapper__.31.exit

csroa.if.then477.i534:                            ; preds = %csroa.if.else313.i437
  %96 = load i32, i32* @compressed.96, align 16
  br label %__non_const_wrapper__.31.exit

csroa.if.then482.i537:                            ; preds = %csroa.if.else313.i437
  %97 = load i32, i32* @compressed.97, align 16
  br label %__non_const_wrapper__.31.exit

csroa.if.then487.i540:                            ; preds = %csroa.if.else313.i437
  %98 = load i32, i32* @compressed.98, align 16
  br label %__non_const_wrapper__.31.exit

csroa.if.then492.i543:                            ; preds = %csroa.if.else313.i437
  %99 = load i32, i32* @compressed.99, align 16
  br label %__non_const_wrapper__.31.exit

__non_const_wrapper__.31.exit:                    ; preds = %csroa.if.then2.i249, %csroa.if.then12.i255, %csroa.if.then22.i261, %csroa.if.then32.i267, %csroa.if.then42.i273, %csroa.if.then52.i279, %csroa.if.then62.i285, %csroa.if.then72.i291, %csroa.if.then82.i297, %csroa.if.then92.i303, %csroa.if.then102.i309, %csroa.if.then112.i315, %csroa.if.then122.i321, %csroa.if.then132.i327, %csroa.if.then142.i333, %csroa.if.then152.i339, %csroa.if.then162.i345, %csroa.if.then172.i351, %csroa.if.then182.i357, %csroa.if.then192.i363, %csroa.if.then202.i369, %csroa.if.then212.i375, %csroa.if.then222.i381, %csroa.if.then232.i387, %csroa.if.then242.i393, %csroa.if.then252.i399, %csroa.if.then262.i405, %csroa.if.then272.i411, %csroa.if.then282.i417, %csroa.if.then292.i423, %csroa.if.then302.i429, %csroa.if.then312.i435, %csroa.if.then322.i441, %csroa.if.then332.i447, %csroa.if.then342.i453, %csroa.if.then352.i459, %csroa.if.then362.i465, %csroa.if.then372.i471, %csroa.if.then382.i477, %csroa.if.then392.i483, %csroa.if.then402.i489, %csroa.if.then412.i495, %csroa.if.then422.i501, %csroa.if.then432.i507, %csroa.if.then442.i513, %csroa.if.then452.i519, %csroa.if.then462.i525, %csroa.if.then472.i531, %csroa.if.then482.i537, %csroa.if.then492.i543, %csroa.if.else313.i437, %csroa.if.then487.i540, %csroa.if.then477.i534, %csroa.if.then467.i528, %csroa.if.then457.i522, %csroa.if.then447.i516, %csroa.if.then437.i510, %csroa.if.then427.i504, %csroa.if.then417.i498, %csroa.if.then407.i492, %csroa.if.then397.i486, %csroa.if.then387.i480, %csroa.if.then377.i474, %csroa.if.then367.i468, %csroa.if.then357.i462, %csroa.if.then347.i456, %csroa.if.then337.i450, %csroa.if.then327.i444, %csroa.if.then317.i438, %csroa.if.then307.i432, %csroa.if.then297.i426, %csroa.if.then287.i420, %csroa.if.then277.i414, %csroa.if.then267.i408, %csroa.if.then257.i402, %csroa.if.then247.i396, %csroa.if.then237.i390, %csroa.if.then227.i384, %csroa.if.then217.i378, %csroa.if.then207.i372, %csroa.if.then197.i366, %csroa.if.then187.i360, %csroa.if.then177.i354, %csroa.if.then167.i348, %csroa.if.then157.i342, %csroa.if.then147.i336, %csroa.if.then137.i330, %csroa.if.then127.i324, %csroa.if.then117.i318, %csroa.if.then107.i312, %csroa.if.then97.i306, %csroa.if.then87.i300, %csroa.if.then77.i294, %csroa.if.then67.i288, %csroa.if.then57.i282, %csroa.if.then47.i276, %csroa.if.then37.i270, %csroa.if.then27.i264, %csroa.if.then17.i258, %csroa.if.then7.i252, %csroa.if.then.i246
  %.phi.i735 = phi i32 [ %0, %csroa.if.then.i246 ], [ %1, %csroa.if.then2.i249 ], [ %2, %csroa.if.then7.i252 ], [ %3, %csroa.if.then12.i255 ], [ %4, %csroa.if.then17.i258 ], [ %5, %csroa.if.then22.i261 ], [ %6, %csroa.if.then27.i264 ], [ %7, %csroa.if.then32.i267 ], [ %8, %csroa.if.then37.i270 ], [ %9, %csroa.if.then42.i273 ], [ %10, %csroa.if.then47.i276 ], [ %11, %csroa.if.then52.i279 ], [ %12, %csroa.if.then57.i282 ], [ %13, %csroa.if.then62.i285 ], [ %14, %csroa.if.then67.i288 ], [ %15, %csroa.if.then72.i291 ], [ %16, %csroa.if.then77.i294 ], [ %17, %csroa.if.then82.i297 ], [ %18, %csroa.if.then87.i300 ], [ %19, %csroa.if.then92.i303 ], [ %20, %csroa.if.then97.i306 ], [ %21, %csroa.if.then102.i309 ], [ %22, %csroa.if.then107.i312 ], [ %23, %csroa.if.then112.i315 ], [ %24, %csroa.if.then117.i318 ], [ %25, %csroa.if.then122.i321 ], [ %26, %csroa.if.then127.i324 ], [ %27, %csroa.if.then132.i327 ], [ %28, %csroa.if.then137.i330 ], [ %29, %csroa.if.then142.i333 ], [ %30, %csroa.if.then147.i336 ], [ %31, %csroa.if.then152.i339 ], [ %32, %csroa.if.then157.i342 ], [ %33, %csroa.if.then162.i345 ], [ %34, %csroa.if.then167.i348 ], [ %35, %csroa.if.then172.i351 ], [ %36, %csroa.if.then177.i354 ], [ %37, %csroa.if.then182.i357 ], [ %38, %csroa.if.then187.i360 ], [ %39, %csroa.if.then192.i363 ], [ %40, %csroa.if.then197.i366 ], [ %41, %csroa.if.then202.i369 ], [ %42, %csroa.if.then207.i372 ], [ %43, %csroa.if.then212.i375 ], [ %44, %csroa.if.then217.i378 ], [ %45, %csroa.if.then222.i381 ], [ %46, %csroa.if.then227.i384 ], [ %47, %csroa.if.then232.i387 ], [ %48, %csroa.if.then237.i390 ], [ %49, %csroa.if.then242.i393 ], [ %50, %csroa.if.then247.i396 ], [ %51, %csroa.if.then252.i399 ], [ %52, %csroa.if.then257.i402 ], [ %53, %csroa.if.then262.i405 ], [ %54, %csroa.if.then267.i408 ], [ %55, %csroa.if.then272.i411 ], [ %56, %csroa.if.then277.i414 ], [ %57, %csroa.if.then282.i417 ], [ %58, %csroa.if.then287.i420 ], [ %59, %csroa.if.then292.i423 ], [ %60, %csroa.if.then297.i426 ], [ %61, %csroa.if.then302.i429 ], [ %62, %csroa.if.then307.i432 ], [ %63, %csroa.if.then312.i435 ], [ %64, %csroa.if.then317.i438 ], [ %65, %csroa.if.then322.i441 ], [ %66, %csroa.if.then327.i444 ], [ %67, %csroa.if.then332.i447 ], [ %68, %csroa.if.then337.i450 ], [ %69, %csroa.if.then342.i453 ], [ %70, %csroa.if.then347.i456 ], [ %71, %csroa.if.then352.i459 ], [ %72, %csroa.if.then357.i462 ], [ %73, %csroa.if.then362.i465 ], [ %74, %csroa.if.then367.i468 ], [ %75, %csroa.if.then372.i471 ], [ %76, %csroa.if.then377.i474 ], [ %77, %csroa.if.then382.i477 ], [ %78, %csroa.if.then387.i480 ], [ %79, %csroa.if.then392.i483 ], [ %80, %csroa.if.then397.i486 ], [ %81, %csroa.if.then402.i489 ], [ %82, %csroa.if.then407.i492 ], [ %83, %csroa.if.then412.i495 ], [ %84, %csroa.if.then417.i498 ], [ %85, %csroa.if.then422.i501 ], [ %86, %csroa.if.then427.i504 ], [ %87, %csroa.if.then432.i507 ], [ %88, %csroa.if.then437.i510 ], [ %89, %csroa.if.then442.i513 ], [ %90, %csroa.if.then447.i516 ], [ %91, %csroa.if.then452.i519 ], [ %92, %csroa.if.then457.i522 ], [ %93, %csroa.if.then462.i525 ], [ %94, %csroa.if.then467.i528 ], [ %95, %csroa.if.then472.i531 ], [ %96, %csroa.if.then477.i534 ], [ %97, %csroa.if.then482.i537 ], [ %98, %csroa.if.then487.i540 ], [ %99, %csroa.if.then492.i543 ], [ undef, %csroa.if.else313.i437 ]
  tail call void @decode.v0.C.c.c(i32 %.phi.i735) #6
  %100 = load i32, i32* @xout1, align 4
  switch i32 %i.11.i, label %csroa.if.else7.i742 [
    i32 0, label %csroa.if.then.i737
    i32 2, label %__non_const_wrapper__.32.exit.sink.split
  ]

csroa.if.then.i737:                               ; preds = %__non_const_wrapper__.31.exit
  br label %__non_const_wrapper__.32.exit.sink.split

csroa.if.else7.i742:                              ; preds = %__non_const_wrapper__.31.exit
  switch i32 %i.11.i, label %__non_const_wrapper__.32.exit [
    i32 4, label %__non_const_wrapper__.32.exit.sink.split
    i32 6, label %csroa.if.then22.i749
    i32 8, label %csroa.if.then30.i753
    i32 10, label %csroa.if.then38.i757
    i32 12, label %csroa.if.then46.i761
    i32 14, label %csroa.if.then54.i765
    i32 16, label %csroa.if.then62.i769
    i32 18, label %csroa.if.then70.i773
    i32 20, label %csroa.if.then78.i777
    i32 22, label %csroa.if.then86.i781
    i32 24, label %csroa.if.then94.i785
    i32 26, label %csroa.if.then102.i789
    i32 28, label %csroa.if.then110.i793
    i32 30, label %csroa.if.then118.i797
    i32 32, label %csroa.if.then126.i801
    i32 34, label %csroa.if.then134.i805
    i32 36, label %csroa.if.then142.i809
    i32 38, label %csroa.if.then150.i813
    i32 40, label %csroa.if.then158.i817
    i32 42, label %csroa.if.then166.i821
    i32 44, label %csroa.if.then174.i825
    i32 46, label %csroa.if.then182.i829
    i32 48, label %csroa.if.then190.i833
    i32 50, label %csroa.if.then198.i837
    i32 52, label %csroa.if.then206.i841
    i32 54, label %csroa.if.then214.i845
    i32 56, label %csroa.if.then222.i849
    i32 58, label %csroa.if.then230.i853
    i32 60, label %csroa.if.then238.i857
    i32 62, label %csroa.if.then246.i861
    i32 64, label %csroa.if.then254.i865
    i32 66, label %csroa.if.then262.i869
    i32 68, label %csroa.if.then270.i873
    i32 70, label %csroa.if.then278.i877
    i32 72, label %csroa.if.then286.i881
    i32 74, label %csroa.if.then294.i885
    i32 76, label %csroa.if.then302.i889
    i32 78, label %csroa.if.then310.i893
    i32 80, label %csroa.if.then318.i897
    i32 82, label %csroa.if.then326.i901
    i32 84, label %csroa.if.then334.i905
    i32 86, label %csroa.if.then342.i909
    i32 88, label %csroa.if.then350.i913
    i32 90, label %csroa.if.then358.i917
    i32 92, label %csroa.if.then366.i921
    i32 94, label %csroa.if.then374.i925
    i32 96, label %csroa.if.then382.i929
    i32 98, label %csroa.if.then390.i933
  ]

csroa.if.then22.i749:                             ; preds = %csroa.if.else7.i742
  br label %__non_const_wrapper__.32.exit.sink.split

csroa.if.then30.i753:                             ; preds = %csroa.if.else7.i742
  br label %__non_const_wrapper__.32.exit.sink.split

csroa.if.then38.i757:                             ; preds = %csroa.if.else7.i742
  br label %__non_const_wrapper__.32.exit.sink.split

csroa.if.then46.i761:                             ; preds = %csroa.if.else7.i742
  br label %__non_const_wrapper__.32.exit.sink.split

csroa.if.then54.i765:                             ; preds = %csroa.if.else7.i742
  br label %__non_const_wrapper__.32.exit.sink.split

csroa.if.then62.i769:                             ; preds = %csroa.if.else7.i742
  br label %__non_const_wrapper__.32.exit.sink.split

csroa.if.then70.i773:                             ; preds = %csroa.if.else7.i742
  br label %__non_const_wrapper__.32.exit.sink.split

csroa.if.then78.i777:                             ; preds = %csroa.if.else7.i742
  br label %__non_const_wrapper__.32.exit.sink.split

csroa.if.then86.i781:                             ; preds = %csroa.if.else7.i742
  br label %__non_const_wrapper__.32.exit.sink.split

csroa.if.then94.i785:                             ; preds = %csroa.if.else7.i742
  br label %__non_const_wrapper__.32.exit.sink.split

csroa.if.then102.i789:                            ; preds = %csroa.if.else7.i742
  br label %__non_const_wrapper__.32.exit.sink.split

csroa.if.then110.i793:                            ; preds = %csroa.if.else7.i742
  br label %__non_const_wrapper__.32.exit.sink.split

csroa.if.then118.i797:                            ; preds = %csroa.if.else7.i742
  br label %__non_const_wrapper__.32.exit.sink.split

csroa.if.then126.i801:                            ; preds = %csroa.if.else7.i742
  br label %__non_const_wrapper__.32.exit.sink.split

csroa.if.then134.i805:                            ; preds = %csroa.if.else7.i742
  br label %__non_const_wrapper__.32.exit.sink.split

csroa.if.then142.i809:                            ; preds = %csroa.if.else7.i742
  br label %__non_const_wrapper__.32.exit.sink.split

csroa.if.then150.i813:                            ; preds = %csroa.if.else7.i742
  br label %__non_const_wrapper__.32.exit.sink.split

csroa.if.then158.i817:                            ; preds = %csroa.if.else7.i742
  br label %__non_const_wrapper__.32.exit.sink.split

csroa.if.then166.i821:                            ; preds = %csroa.if.else7.i742
  br label %__non_const_wrapper__.32.exit.sink.split

csroa.if.then174.i825:                            ; preds = %csroa.if.else7.i742
  br label %__non_const_wrapper__.32.exit.sink.split

csroa.if.then182.i829:                            ; preds = %csroa.if.else7.i742
  br label %__non_const_wrapper__.32.exit.sink.split

csroa.if.then190.i833:                            ; preds = %csroa.if.else7.i742
  br label %__non_const_wrapper__.32.exit.sink.split

csroa.if.then198.i837:                            ; preds = %csroa.if.else7.i742
  br label %__non_const_wrapper__.32.exit.sink.split

csroa.if.then206.i841:                            ; preds = %csroa.if.else7.i742
  br label %__non_const_wrapper__.32.exit.sink.split

csroa.if.then214.i845:                            ; preds = %csroa.if.else7.i742
  br label %__non_const_wrapper__.32.exit.sink.split

csroa.if.then222.i849:                            ; preds = %csroa.if.else7.i742
  br label %__non_const_wrapper__.32.exit.sink.split

csroa.if.then230.i853:                            ; preds = %csroa.if.else7.i742
  br label %__non_const_wrapper__.32.exit.sink.split

csroa.if.then238.i857:                            ; preds = %csroa.if.else7.i742
  br label %__non_const_wrapper__.32.exit.sink.split

csroa.if.then246.i861:                            ; preds = %csroa.if.else7.i742
  br label %__non_const_wrapper__.32.exit.sink.split

csroa.if.then254.i865:                            ; preds = %csroa.if.else7.i742
  br label %__non_const_wrapper__.32.exit.sink.split

csroa.if.then262.i869:                            ; preds = %csroa.if.else7.i742
  br label %__non_const_wrapper__.32.exit.sink.split

csroa.if.then270.i873:                            ; preds = %csroa.if.else7.i742
  br label %__non_const_wrapper__.32.exit.sink.split

csroa.if.then278.i877:                            ; preds = %csroa.if.else7.i742
  br label %__non_const_wrapper__.32.exit.sink.split

csroa.if.then286.i881:                            ; preds = %csroa.if.else7.i742
  br label %__non_const_wrapper__.32.exit.sink.split

csroa.if.then294.i885:                            ; preds = %csroa.if.else7.i742
  br label %__non_const_wrapper__.32.exit.sink.split

csroa.if.then302.i889:                            ; preds = %csroa.if.else7.i742
  br label %__non_const_wrapper__.32.exit.sink.split

csroa.if.then310.i893:                            ; preds = %csroa.if.else7.i742
  br label %__non_const_wrapper__.32.exit.sink.split

csroa.if.then318.i897:                            ; preds = %csroa.if.else7.i742
  br label %__non_const_wrapper__.32.exit.sink.split

csroa.if.then326.i901:                            ; preds = %csroa.if.else7.i742
  br label %__non_const_wrapper__.32.exit.sink.split

csroa.if.then334.i905:                            ; preds = %csroa.if.else7.i742
  br label %__non_const_wrapper__.32.exit.sink.split

csroa.if.then342.i909:                            ; preds = %csroa.if.else7.i742
  br label %__non_const_wrapper__.32.exit.sink.split

csroa.if.then350.i913:                            ; preds = %csroa.if.else7.i742
  br label %__non_const_wrapper__.32.exit.sink.split

csroa.if.then358.i917:                            ; preds = %csroa.if.else7.i742
  br label %__non_const_wrapper__.32.exit.sink.split

csroa.if.then366.i921:                            ; preds = %csroa.if.else7.i742
  br label %__non_const_wrapper__.32.exit.sink.split

csroa.if.then374.i925:                            ; preds = %csroa.if.else7.i742
  br label %__non_const_wrapper__.32.exit.sink.split

csroa.if.then382.i929:                            ; preds = %csroa.if.else7.i742
  br label %__non_const_wrapper__.32.exit.sink.split

csroa.if.then390.i933:                            ; preds = %csroa.if.else7.i742
  br label %__non_const_wrapper__.32.exit.sink.split

__non_const_wrapper__.32.exit.sink.split:         ; preds = %csroa.if.else7.i742, %__non_const_wrapper__.31.exit, %csroa.if.then.i737, %csroa.if.then30.i753, %csroa.if.then46.i761, %csroa.if.then62.i769, %csroa.if.then78.i777, %csroa.if.then94.i785, %csroa.if.then110.i793, %csroa.if.then126.i801, %csroa.if.then142.i809, %csroa.if.then158.i817, %csroa.if.then174.i825, %csroa.if.then190.i833, %csroa.if.then206.i841, %csroa.if.then222.i849, %csroa.if.then238.i857, %csroa.if.then254.i865, %csroa.if.then270.i873, %csroa.if.then286.i881, %csroa.if.then302.i889, %csroa.if.then318.i897, %csroa.if.then334.i905, %csroa.if.then350.i913, %csroa.if.then366.i921, %csroa.if.then382.i929, %csroa.if.then390.i933, %csroa.if.then374.i925, %csroa.if.then358.i917, %csroa.if.then342.i909, %csroa.if.then326.i901, %csroa.if.then310.i893, %csroa.if.then294.i885, %csroa.if.then278.i877, %csroa.if.then262.i869, %csroa.if.then246.i861, %csroa.if.then230.i853, %csroa.if.then214.i845, %csroa.if.then198.i837, %csroa.if.then182.i829, %csroa.if.then166.i821, %csroa.if.then150.i813, %csroa.if.then134.i805, %csroa.if.then118.i797, %csroa.if.then102.i789, %csroa.if.then86.i781, %csroa.if.then70.i773, %csroa.if.then54.i765, %csroa.if.then38.i757, %csroa.if.then22.i749
  %result.2.sink = phi i32* [ @result.6, %csroa.if.then22.i749 ], [ @result.10, %csroa.if.then38.i757 ], [ @result.14, %csroa.if.then54.i765 ], [ @result.18, %csroa.if.then70.i773 ], [ @result.22, %csroa.if.then86.i781 ], [ @result.26, %csroa.if.then102.i789 ], [ @result.30, %csroa.if.then118.i797 ], [ @result.34, %csroa.if.then134.i805 ], [ @result.38, %csroa.if.then150.i813 ], [ @result.42, %csroa.if.then166.i821 ], [ @result.46, %csroa.if.then182.i829 ], [ @result.50, %csroa.if.then198.i837 ], [ @result.54, %csroa.if.then214.i845 ], [ @result.58, %csroa.if.then230.i853 ], [ @result.62, %csroa.if.then246.i861 ], [ @result.66, %csroa.if.then262.i869 ], [ @result.70, %csroa.if.then278.i877 ], [ @result.74, %csroa.if.then294.i885 ], [ @result.78, %csroa.if.then310.i893 ], [ @result.82, %csroa.if.then326.i901 ], [ @result.86, %csroa.if.then342.i909 ], [ @result.90, %csroa.if.then358.i917 ], [ @result.94, %csroa.if.then374.i925 ], [ @result.98, %csroa.if.then390.i933 ], [ @result.96, %csroa.if.then382.i929 ], [ @result.92, %csroa.if.then366.i921 ], [ @result.88, %csroa.if.then350.i913 ], [ @result.84, %csroa.if.then334.i905 ], [ @result.80, %csroa.if.then318.i897 ], [ @result.76, %csroa.if.then302.i889 ], [ @result.72, %csroa.if.then286.i881 ], [ @result.68, %csroa.if.then270.i873 ], [ @result.64, %csroa.if.then254.i865 ], [ @result.60, %csroa.if.then238.i857 ], [ @result.56, %csroa.if.then222.i849 ], [ @result.52, %csroa.if.then206.i841 ], [ @result.48, %csroa.if.then190.i833 ], [ @result.44, %csroa.if.then174.i825 ], [ @result.40, %csroa.if.then158.i817 ], [ @result.36, %csroa.if.then142.i809 ], [ @result.32, %csroa.if.then126.i801 ], [ @result.28, %csroa.if.then110.i793 ], [ @result.24, %csroa.if.then94.i785 ], [ @result.20, %csroa.if.then78.i777 ], [ @result.16, %csroa.if.then62.i769 ], [ @result.12, %csroa.if.then46.i761 ], [ @result.8, %csroa.if.then30.i753 ], [ @result.0, %csroa.if.then.i737 ], [ @result.2, %__non_const_wrapper__.31.exit ], [ @result.4, %csroa.if.else7.i742 ]
  store i32 %100, i32* %result.2.sink, align 16
  br label %__non_const_wrapper__.32.exit

__non_const_wrapper__.32.exit:                    ; preds = %__non_const_wrapper__.32.exit.sink.split, %csroa.if.else7.i742
  %101 = load i32, i32* @xout2, align 4
  %add14.i = or i32 %i.11.i, 1
  switch i32 %add14.i, label %__non_const_wrapper__.33.exit [
    i32 1, label %csroa.if.then2.i1037
    i32 3, label %__non_const_wrapper__.33.exit.sink.split
    i32 5, label %csroa.if.then18.i1045
    i32 7, label %csroa.if.then26.i1049
    i32 9, label %csroa.if.then34.i1053
    i32 11, label %csroa.if.then42.i1057
    i32 13, label %csroa.if.then50.i1061
    i32 15, label %csroa.if.then58.i1065
    i32 17, label %csroa.if.then66.i1069
    i32 19, label %csroa.if.then74.i1073
    i32 21, label %csroa.if.then82.i1077
    i32 23, label %csroa.if.then90.i1081
    i32 25, label %csroa.if.then98.i1085
    i32 27, label %csroa.if.then106.i1089
    i32 29, label %csroa.if.then114.i1093
    i32 31, label %csroa.if.then122.i1097
    i32 33, label %csroa.if.then130.i1101
    i32 35, label %csroa.if.then138.i1105
    i32 37, label %csroa.if.then146.i1109
    i32 39, label %csroa.if.then154.i1113
    i32 41, label %csroa.if.then162.i1117
    i32 43, label %csroa.if.then170.i1121
    i32 45, label %csroa.if.then178.i1125
    i32 47, label %csroa.if.then186.i1129
    i32 49, label %csroa.if.then194.i1133
    i32 51, label %csroa.if.then202.i1137
    i32 53, label %csroa.if.then210.i1141
    i32 55, label %csroa.if.then218.i1145
    i32 57, label %csroa.if.then226.i1149
    i32 59, label %csroa.if.then234.i1153
    i32 61, label %csroa.if.then242.i1157
    i32 63, label %csroa.if.then250.i1161
    i32 65, label %csroa.if.then258.i1165
    i32 67, label %csroa.if.then266.i1169
    i32 69, label %csroa.if.then274.i1173
    i32 71, label %csroa.if.then282.i1177
    i32 73, label %csroa.if.then290.i1181
    i32 75, label %csroa.if.then298.i1185
    i32 77, label %csroa.if.then306.i1189
    i32 79, label %csroa.if.then314.i1193
    i32 81, label %csroa.if.then322.i1197
    i32 83, label %csroa.if.then330.i1201
    i32 85, label %csroa.if.then338.i1205
    i32 87, label %csroa.if.then346.i1209
    i32 89, label %csroa.if.then354.i1213
    i32 91, label %csroa.if.then362.i1217
    i32 93, label %csroa.if.then370.i1221
    i32 95, label %csroa.if.then378.i1225
    i32 97, label %csroa.if.then386.i1229
    i32 99, label %csroa.if.then394.i1233
  ]

csroa.if.then2.i1037:                             ; preds = %__non_const_wrapper__.32.exit
  br label %__non_const_wrapper__.33.exit.sink.split

csroa.if.then18.i1045:                            ; preds = %__non_const_wrapper__.32.exit
  br label %__non_const_wrapper__.33.exit.sink.split

csroa.if.then26.i1049:                            ; preds = %__non_const_wrapper__.32.exit
  br label %__non_const_wrapper__.33.exit.sink.split

csroa.if.then34.i1053:                            ; preds = %__non_const_wrapper__.32.exit
  br label %__non_const_wrapper__.33.exit.sink.split

csroa.if.then42.i1057:                            ; preds = %__non_const_wrapper__.32.exit
  br label %__non_const_wrapper__.33.exit.sink.split

csroa.if.then50.i1061:                            ; preds = %__non_const_wrapper__.32.exit
  br label %__non_const_wrapper__.33.exit.sink.split

csroa.if.then58.i1065:                            ; preds = %__non_const_wrapper__.32.exit
  br label %__non_const_wrapper__.33.exit.sink.split

csroa.if.then66.i1069:                            ; preds = %__non_const_wrapper__.32.exit
  br label %__non_const_wrapper__.33.exit.sink.split

csroa.if.then74.i1073:                            ; preds = %__non_const_wrapper__.32.exit
  br label %__non_const_wrapper__.33.exit.sink.split

csroa.if.then82.i1077:                            ; preds = %__non_const_wrapper__.32.exit
  br label %__non_const_wrapper__.33.exit.sink.split

csroa.if.then90.i1081:                            ; preds = %__non_const_wrapper__.32.exit
  br label %__non_const_wrapper__.33.exit.sink.split

csroa.if.then98.i1085:                            ; preds = %__non_const_wrapper__.32.exit
  br label %__non_const_wrapper__.33.exit.sink.split

csroa.if.then106.i1089:                           ; preds = %__non_const_wrapper__.32.exit
  br label %__non_const_wrapper__.33.exit.sink.split

csroa.if.then114.i1093:                           ; preds = %__non_const_wrapper__.32.exit
  br label %__non_const_wrapper__.33.exit.sink.split

csroa.if.then122.i1097:                           ; preds = %__non_const_wrapper__.32.exit
  br label %__non_const_wrapper__.33.exit.sink.split

csroa.if.then130.i1101:                           ; preds = %__non_const_wrapper__.32.exit
  br label %__non_const_wrapper__.33.exit.sink.split

csroa.if.then138.i1105:                           ; preds = %__non_const_wrapper__.32.exit
  br label %__non_const_wrapper__.33.exit.sink.split

csroa.if.then146.i1109:                           ; preds = %__non_const_wrapper__.32.exit
  br label %__non_const_wrapper__.33.exit.sink.split

csroa.if.then154.i1113:                           ; preds = %__non_const_wrapper__.32.exit
  br label %__non_const_wrapper__.33.exit.sink.split

csroa.if.then162.i1117:                           ; preds = %__non_const_wrapper__.32.exit
  br label %__non_const_wrapper__.33.exit.sink.split

csroa.if.then170.i1121:                           ; preds = %__non_const_wrapper__.32.exit
  br label %__non_const_wrapper__.33.exit.sink.split

csroa.if.then178.i1125:                           ; preds = %__non_const_wrapper__.32.exit
  br label %__non_const_wrapper__.33.exit.sink.split

csroa.if.then186.i1129:                           ; preds = %__non_const_wrapper__.32.exit
  br label %__non_const_wrapper__.33.exit.sink.split

csroa.if.then194.i1133:                           ; preds = %__non_const_wrapper__.32.exit
  br label %__non_const_wrapper__.33.exit.sink.split

csroa.if.then202.i1137:                           ; preds = %__non_const_wrapper__.32.exit
  br label %__non_const_wrapper__.33.exit.sink.split

csroa.if.then210.i1141:                           ; preds = %__non_const_wrapper__.32.exit
  br label %__non_const_wrapper__.33.exit.sink.split

csroa.if.then218.i1145:                           ; preds = %__non_const_wrapper__.32.exit
  br label %__non_const_wrapper__.33.exit.sink.split

csroa.if.then226.i1149:                           ; preds = %__non_const_wrapper__.32.exit
  br label %__non_const_wrapper__.33.exit.sink.split

csroa.if.then234.i1153:                           ; preds = %__non_const_wrapper__.32.exit
  br label %__non_const_wrapper__.33.exit.sink.split

csroa.if.then242.i1157:                           ; preds = %__non_const_wrapper__.32.exit
  br label %__non_const_wrapper__.33.exit.sink.split

csroa.if.then250.i1161:                           ; preds = %__non_const_wrapper__.32.exit
  br label %__non_const_wrapper__.33.exit.sink.split

csroa.if.then258.i1165:                           ; preds = %__non_const_wrapper__.32.exit
  br label %__non_const_wrapper__.33.exit.sink.split

csroa.if.then266.i1169:                           ; preds = %__non_const_wrapper__.32.exit
  br label %__non_const_wrapper__.33.exit.sink.split

csroa.if.then274.i1173:                           ; preds = %__non_const_wrapper__.32.exit
  br label %__non_const_wrapper__.33.exit.sink.split

csroa.if.then282.i1177:                           ; preds = %__non_const_wrapper__.32.exit
  br label %__non_const_wrapper__.33.exit.sink.split

csroa.if.then290.i1181:                           ; preds = %__non_const_wrapper__.32.exit
  br label %__non_const_wrapper__.33.exit.sink.split

csroa.if.then298.i1185:                           ; preds = %__non_const_wrapper__.32.exit
  br label %__non_const_wrapper__.33.exit.sink.split

csroa.if.then306.i1189:                           ; preds = %__non_const_wrapper__.32.exit
  br label %__non_const_wrapper__.33.exit.sink.split

csroa.if.then314.i1193:                           ; preds = %__non_const_wrapper__.32.exit
  br label %__non_const_wrapper__.33.exit.sink.split

csroa.if.then322.i1197:                           ; preds = %__non_const_wrapper__.32.exit
  br label %__non_const_wrapper__.33.exit.sink.split

csroa.if.then330.i1201:                           ; preds = %__non_const_wrapper__.32.exit
  br label %__non_const_wrapper__.33.exit.sink.split

csroa.if.then338.i1205:                           ; preds = %__non_const_wrapper__.32.exit
  br label %__non_const_wrapper__.33.exit.sink.split

csroa.if.then346.i1209:                           ; preds = %__non_const_wrapper__.32.exit
  br label %__non_const_wrapper__.33.exit.sink.split

csroa.if.then354.i1213:                           ; preds = %__non_const_wrapper__.32.exit
  br label %__non_const_wrapper__.33.exit.sink.split

csroa.if.then362.i1217:                           ; preds = %__non_const_wrapper__.32.exit
  br label %__non_const_wrapper__.33.exit.sink.split

csroa.if.then370.i1221:                           ; preds = %__non_const_wrapper__.32.exit
  br label %__non_const_wrapper__.33.exit.sink.split

csroa.if.then378.i1225:                           ; preds = %__non_const_wrapper__.32.exit
  br label %__non_const_wrapper__.33.exit.sink.split

csroa.if.then386.i1229:                           ; preds = %__non_const_wrapper__.32.exit
  br label %__non_const_wrapper__.33.exit.sink.split

csroa.if.then394.i1233:                           ; preds = %__non_const_wrapper__.32.exit
  br label %__non_const_wrapper__.33.exit.sink.split

__non_const_wrapper__.33.exit.sink.split:         ; preds = %__non_const_wrapper__.32.exit, %csroa.if.then2.i1037, %csroa.if.then18.i1045, %csroa.if.then34.i1053, %csroa.if.then50.i1061, %csroa.if.then66.i1069, %csroa.if.then82.i1077, %csroa.if.then98.i1085, %csroa.if.then114.i1093, %csroa.if.then130.i1101, %csroa.if.then146.i1109, %csroa.if.then162.i1117, %csroa.if.then178.i1125, %csroa.if.then194.i1133, %csroa.if.then210.i1141, %csroa.if.then226.i1149, %csroa.if.then242.i1157, %csroa.if.then258.i1165, %csroa.if.then274.i1173, %csroa.if.then290.i1181, %csroa.if.then306.i1189, %csroa.if.then322.i1197, %csroa.if.then338.i1205, %csroa.if.then354.i1213, %csroa.if.then370.i1221, %csroa.if.then386.i1229, %csroa.if.then394.i1233, %csroa.if.then378.i1225, %csroa.if.then362.i1217, %csroa.if.then346.i1209, %csroa.if.then330.i1201, %csroa.if.then314.i1193, %csroa.if.then298.i1185, %csroa.if.then282.i1177, %csroa.if.then266.i1169, %csroa.if.then250.i1161, %csroa.if.then234.i1153, %csroa.if.then218.i1145, %csroa.if.then202.i1137, %csroa.if.then186.i1129, %csroa.if.then170.i1121, %csroa.if.then154.i1113, %csroa.if.then138.i1105, %csroa.if.then122.i1097, %csroa.if.then106.i1089, %csroa.if.then90.i1081, %csroa.if.then74.i1073, %csroa.if.then58.i1065, %csroa.if.then42.i1057, %csroa.if.then26.i1049
  %result.3.sink = phi i32* [ @result.7, %csroa.if.then26.i1049 ], [ @result.11, %csroa.if.then42.i1057 ], [ @result.15, %csroa.if.then58.i1065 ], [ @result.19, %csroa.if.then74.i1073 ], [ @result.23, %csroa.if.then90.i1081 ], [ @result.27, %csroa.if.then106.i1089 ], [ @result.31, %csroa.if.then122.i1097 ], [ @result.35, %csroa.if.then138.i1105 ], [ @result.39, %csroa.if.then154.i1113 ], [ @result.43, %csroa.if.then170.i1121 ], [ @result.47, %csroa.if.then186.i1129 ], [ @result.51, %csroa.if.then202.i1137 ], [ @result.55, %csroa.if.then218.i1145 ], [ @result.59, %csroa.if.then234.i1153 ], [ @result.63, %csroa.if.then250.i1161 ], [ @result.67, %csroa.if.then266.i1169 ], [ @result.71, %csroa.if.then282.i1177 ], [ @result.75, %csroa.if.then298.i1185 ], [ @result.79, %csroa.if.then314.i1193 ], [ @result.83, %csroa.if.then330.i1201 ], [ @result.87, %csroa.if.then346.i1209 ], [ @result.91, %csroa.if.then362.i1217 ], [ @result.95, %csroa.if.then378.i1225 ], [ @result.99, %csroa.if.then394.i1233 ], [ @result.97, %csroa.if.then386.i1229 ], [ @result.93, %csroa.if.then370.i1221 ], [ @result.89, %csroa.if.then354.i1213 ], [ @result.85, %csroa.if.then338.i1205 ], [ @result.81, %csroa.if.then322.i1197 ], [ @result.77, %csroa.if.then306.i1189 ], [ @result.73, %csroa.if.then290.i1181 ], [ @result.69, %csroa.if.then274.i1173 ], [ @result.65, %csroa.if.then258.i1165 ], [ @result.61, %csroa.if.then242.i1157 ], [ @result.57, %csroa.if.then226.i1149 ], [ @result.53, %csroa.if.then210.i1141 ], [ @result.49, %csroa.if.then194.i1133 ], [ @result.45, %csroa.if.then178.i1125 ], [ @result.41, %csroa.if.then162.i1117 ], [ @result.37, %csroa.if.then146.i1109 ], [ @result.33, %csroa.if.then130.i1101 ], [ @result.29, %csroa.if.then114.i1093 ], [ @result.25, %csroa.if.then98.i1085 ], [ @result.21, %csroa.if.then82.i1077 ], [ @result.17, %csroa.if.then66.i1069 ], [ @result.13, %csroa.if.then50.i1061 ], [ @result.9, %csroa.if.then34.i1053 ], [ @result.5, %csroa.if.then18.i1045 ], [ @result.1, %csroa.if.then2.i1037 ], [ @result.3, %__non_const_wrapper__.32.exit ]
  store i32 %101, i32* %result.3.sink, align 16
  br label %__non_const_wrapper__.33.exit

__non_const_wrapper__.33.exit:                    ; preds = %__non_const_wrapper__.32.exit, %__non_const_wrapper__.33.exit.sink.split
  %add18.i = add nuw nsw i32 %i.11.i, 2
  %cmp7.i = icmp slt i32 %add18.i, 100
  br i1 %cmp7.i, label %for.body8.i, label %for.body.preheader

for.body.preheader:                               ; preds = %__non_const_wrapper__.33.exit
  %102 = load i32, i32* @compressed.64, align 16
  %103 = load i32, i32* @compressed.65, align 16
  %104 = load i32, i32* @compressed.66, align 16
  %105 = load i32, i32* @compressed.67, align 16
  %106 = load i32, i32* @compressed.68, align 16
  %107 = load i32, i32* @compressed.69, align 16
  %108 = load i32, i32* @compressed.70, align 16
  %109 = load i32, i32* @compressed.71, align 16
  %110 = load i32, i32* @compressed.72, align 16
  %111 = load i32, i32* @compressed.73, align 16
  %112 = load i32, i32* @compressed.74, align 16
  %113 = load i32, i32* @compressed.75, align 16
  %114 = load i32, i32* @compressed.76, align 16
  %115 = load i32, i32* @compressed.77, align 16
  %116 = load i32, i32* @compressed.78, align 16
  %117 = load i32, i32* @compressed.79, align 16
  %118 = load i32, i32* @compressed.80, align 16
  %119 = load i32, i32* @compressed.81, align 16
  %120 = load i32, i32* @compressed.82, align 16
  %121 = load i32, i32* @compressed.83, align 16
  %122 = load i32, i32* @compressed.84, align 16
  %123 = load i32, i32* @compressed.85, align 16
  %124 = load i32, i32* @compressed.86, align 16
  %125 = load i32, i32* @compressed.87, align 16
  %126 = load i32, i32* @compressed.88, align 16
  %127 = load i32, i32* @compressed.89, align 16
  %128 = load i32, i32* @compressed.90, align 16
  %129 = load i32, i32* @compressed.91, align 16
  %130 = load i32, i32* @compressed.92, align 16
  %131 = load i32, i32* @compressed.93, align 16
  %132 = load i32, i32* @compressed.94, align 16
  %133 = load i32, i32* @compressed.95, align 16
  %134 = load i32, i32* @compressed.96, align 16
  %135 = load i32, i32* @compressed.97, align 16
  %136 = load i32, i32* @compressed.98, align 16
  %137 = load i32, i32* @compressed.99, align 16
  %138 = load i32, i32* @compressed.0, align 16
  %not.cmp33284 = icmp ne i32 %138, 253
  %add3285 = zext i1 %not.cmp33284 to i32
  %139 = load i32, i32* @compressed.3, align 16
  %not.cmp33297 = icmp ne i32 %139, 186
  %add3298 = zext i1 %not.cmp33297 to i32
  %140 = load i32, i32* @compressed.4, align 16
  %not.cmp33303 = icmp ne i32 %140, 242
  %add3304 = zext i1 %not.cmp33303 to i32
  %141 = load i32, i32* @compressed.5, align 16
  %not.cmp33309 = icmp ne i32 %141, 144
  %add3310 = zext i1 %not.cmp33309 to i32
  %142 = load i32, i32* @compressed.6, align 16
  %not.cmp33315 = icmp ne i32 %142, 32
  %add3316 = zext i1 %not.cmp33315 to i32
  %143 = load i32, i32* @compressed.7, align 16
  %not.cmp33321 = icmp ne i32 %143, 160
  %add3322 = zext i1 %not.cmp33321 to i32
  %144 = load i32, i32* @compressed.8, align 16
  %not.cmp33327 = icmp ne i32 %144, 236
  %add3328 = zext i1 %not.cmp33327 to i32
  %145 = load i32, i32* @compressed.9, align 16
  %not.cmp33333 = icmp ne i32 %145, 237
  %add3334 = zext i1 %not.cmp33333 to i32
  %146 = load i32, i32* @compressed.10, align 16
  %not.cmp33339 = icmp ne i32 %146, 239
  %add3340 = zext i1 %not.cmp33339 to i32
  %147 = load i32, i32* @compressed.11, align 16
  %not.cmp33345 = icmp ne i32 %147, 241
  %add3346 = zext i1 %not.cmp33345 to i32
  %148 = load i32, i32* @compressed.12, align 16
  %not.cmp33351 = icmp ne i32 %148, 243
  %add3352 = zext i1 %not.cmp33351 to i32
  %149 = load i32, i32* @compressed.13, align 16
  %not.cmp33357 = icmp ne i32 %149, 244
  %add3358 = zext i1 %not.cmp33357 to i32
  %150 = load i32, i32* @compressed.18, align 16
  %151 = load i32, i32* @compressed.19, align 16
  %152 = load i32, i32* @compressed.20, align 16
  %153 = load i32, i32* @compressed.21, align 16
  %154 = load i32, i32* @compressed.22, align 16
  %155 = load i32, i32* @compressed.23, align 16
  %156 = load i32, i32* @compressed.24, align 16
  %157 = load i32, i32* @compressed.25, align 16
  %158 = load i32, i32* @compressed.26, align 16
  %159 = load i32, i32* @compressed.27, align 16
  %160 = load i32, i32* @compressed.28, align 16
  %161 = load i32, i32* @compressed.29, align 16
  %162 = load i32, i32* @compressed.30, align 16
  %163 = load i32, i32* @compressed.31, align 16
  %164 = load i32, i32* @compressed.32, align 16
  %165 = load i32, i32* @compressed.33, align 16
  %166 = load i32, i32* @compressed.34, align 16
  %167 = load i32, i32* @compressed.35, align 16
  %168 = load i32, i32* @compressed.36, align 16
  %169 = load i32, i32* @compressed.37, align 16
  %170 = load i32, i32* @compressed.38, align 16
  %171 = load i32, i32* @compressed.39, align 16
  %172 = load i32, i32* @compressed.40, align 16
  %173 = load i32, i32* @compressed.41, align 16
  %174 = load i32, i32* @compressed.42, align 16
  %175 = load i32, i32* @compressed.43, align 16
  %176 = load i32, i32* @compressed.44, align 16
  %177 = load i32, i32* @compressed.45, align 16
  %178 = load i32, i32* @compressed.46, align 16
  %179 = load i32, i32* @compressed.47, align 16
  %180 = load i32, i32* @compressed.48, align 16
  %181 = load i32, i32* @compressed.49, align 16
  %182 = load i32, i32* @compressed.50, align 16
  %183 = load i32, i32* @compressed.51, align 16
  %184 = load i32, i32* @compressed.52, align 16
  %185 = load i32, i32* @compressed.53, align 16
  %186 = load i32, i32* @compressed.54, align 16
  %187 = load i32, i32* @compressed.55, align 16
  %188 = load i32, i32* @compressed.56, align 16
  %189 = load i32, i32* @compressed.57, align 16
  %190 = load i32, i32* @compressed.58, align 16
  %191 = load i32, i32* @compressed.59, align 16
  %192 = load i32, i32* @compressed.60, align 16
  %193 = load i32, i32* @compressed.61, align 16
  %194 = load i32, i32* @compressed.62, align 16
  %195 = load i32, i32* @compressed.63, align 16
  %not.cmp3 = icmp ne i32 %102, 0
  %add = zext i1 %not.cmp3 to i32
  br label %for.body

for.body:                                         ; preds = %for.body.backedge, %for.body.preheader
  %main_result.016 = phi i32 [ 0, %for.body.preheader ], [ %main_result.016.be, %for.body.backedge ]
  %i.015 = phi i32 [ 0, %for.body.preheader ], [ %i.015.be, %for.body.backedge ]
  switch i32 %i.015, label %csroa.if.else313.i1526 [
    i32 0, label %__non_const_wrapper__.18.exit.thread3282
    i32 1, label %__non_const_wrapper__.18.exit.thread3283
    i32 2, label %__non_const_wrapper__.19.exit.thread3290
    i32 3, label %csroa.if.else3.i1839.thread3427
    i32 4, label %csroa.if.else3.i1839.thread3429
    i32 5, label %csroa.if.else3.i1839.thread3431
    i32 6, label %csroa.if.else3.i1839.thread3433
    i32 7, label %csroa.if.else3.i1839.thread3435
    i32 8, label %csroa.if.else3.i1839.thread3437
    i32 9, label %csroa.if.else3.i1839.thread3439
    i32 10, label %csroa.if.else3.i1839.thread3441
    i32 11, label %csroa.if.else3.i1839.thread3443
    i32 12, label %csroa.if.else3.i1839.thread3445
    i32 13, label %csroa.if.else3.i1839.thread3447
    i32 14, label %csroa.if.then67.i1377
    i32 15, label %__non_const_wrapper__.19.exit.thread3657
    i32 16, label %csroa.if.then77.i1383
    i32 17, label %csroa.if.then82.i1386
    i32 18, label %__non_const_wrapper__.19.exit.thread
    i32 19, label %csroa.if.then92.i1392
    i32 20, label %csroa.if.then97.i1395
    i32 21, label %csroa.if.else3.i1839.thread3449
    i32 22, label %csroa.if.else3.i1839.thread3450
    i32 23, label %csroa.if.else3.i1839.thread3451
    i32 24, label %csroa.if.else3.i1839.thread3452
    i32 25, label %csroa.if.else3.i1839.thread3453
    i32 26, label %csroa.if.else3.i1839.thread3454
    i32 27, label %csroa.if.else3.i1839.thread3455
    i32 28, label %csroa.if.else3.i1839.thread3456
    i32 29, label %csroa.if.else3.i1839.thread3457
    i32 30, label %csroa.if.then147.i1425
    i32 31, label %csroa.if.then152.i1428
    i32 32, label %csroa.if.else3.i1839.thread3458
    i32 33, label %csroa.if.then162.i1434
    i32 34, label %csroa.if.then167.i1437
    i32 35, label %csroa.if.else3.i1839.thread3459
    i32 36, label %csroa.if.then177.i1443
    i32 37, label %csroa.if.then182.i1446
    i32 38, label %csroa.if.then187.i1449
    i32 39, label %csroa.if.else3.i1839.thread3460
    i32 40, label %csroa.if.else3.i1839.thread3461
    i32 41, label %csroa.if.else3.i1839.thread3462
    i32 42, label %csroa.if.then207.i1461
    i32 43, label %csroa.if.then212.i1464
    i32 44, label %csroa.if.else3.i1839.thread3463
    i32 45, label %csroa.if.else3.i1839.thread3464
    i32 46, label %csroa.if.else3.i1839.thread3465
    i32 47, label %csroa.if.else3.i1839.thread3466
    i32 48, label %csroa.if.then237.i1479
    i32 49, label %__non_const_wrapper__.19.exit.thread3676
    i32 50, label %csroa.if.then247.i1485
    i32 51, label %csroa.if.then252.i1488
    i32 52, label %csroa.if.then257.i1491
    i32 53, label %csroa.if.then262.i1494
    i32 54, label %csroa.if.then267.i1497
    i32 55, label %csroa.if.then272.i1500
    i32 56, label %csroa.if.then277.i1503
    i32 57, label %csroa.if.then282.i1506
    i32 58, label %csroa.if.then287.i1509
    i32 59, label %csroa.if.then292.i1512
    i32 60, label %csroa.if.then297.i1515
    i32 61, label %csroa.if.then302.i1518
    i32 62, label %csroa.if.then307.i1521
    i32 63, label %csroa.if.then312.i1524
  ]

__non_const_wrapper__.18.exit.thread3282:         ; preds = %for.body
  %main_result.0.add3286 = add nsw i32 %add3285, %main_result.016
  br label %for.body.backedge

__non_const_wrapper__.18.exit.thread3283:         ; preds = %for.body
  br label %__non_const_wrapper__.19.exit.thread3290

csroa.if.else3.i1839.thread3427:                  ; preds = %for.body
  %main_result.0.add3299 = add nsw i32 %add3298, %main_result.016
  br label %for.body.backedge

csroa.if.else3.i1839.thread3429:                  ; preds = %for.body
  %main_result.0.add3305 = add nsw i32 %add3304, %main_result.016
  br label %for.body.backedge

csroa.if.else3.i1839.thread3431:                  ; preds = %for.body
  %main_result.0.add3311 = add nsw i32 %add3310, %main_result.016
  br label %for.body.backedge

csroa.if.else3.i1839.thread3433:                  ; preds = %for.body
  %main_result.0.add3317 = add nsw i32 %add3316, %main_result.016
  br label %for.body.backedge

csroa.if.else3.i1839.thread3435:                  ; preds = %for.body
  %main_result.0.add3323 = add nsw i32 %add3322, %main_result.016
  br label %for.body.backedge

csroa.if.else3.i1839.thread3437:                  ; preds = %for.body
  %main_result.0.add3329 = add nsw i32 %add3328, %main_result.016
  br label %for.body.backedge

csroa.if.else3.i1839.thread3439:                  ; preds = %for.body
  %main_result.0.add3335 = add nsw i32 %add3334, %main_result.016
  br label %for.body.backedge

csroa.if.else3.i1839.thread3441:                  ; preds = %for.body
  %main_result.0.add3341 = add nsw i32 %add3340, %main_result.016
  br label %for.body.backedge

csroa.if.else3.i1839.thread3443:                  ; preds = %for.body
  %main_result.0.add3347 = add nsw i32 %add3346, %main_result.016
  br label %for.body.backedge

csroa.if.else3.i1839.thread3445:                  ; preds = %for.body
  %main_result.0.add3353 = add nsw i32 %add3352, %main_result.016
  br label %for.body.backedge

csroa.if.else3.i1839.thread3447:                  ; preds = %for.body
  %main_result.0.add3359 = add nsw i32 %add3358, %main_result.016
  br label %for.body.backedge

csroa.if.then67.i1377:                            ; preds = %for.body
  br label %__non_const_wrapper__.19.exit.thread3657

csroa.if.then77.i1383:                            ; preds = %for.body
  br label %__non_const_wrapper__.19.exit.thread3657

csroa.if.then82.i1386:                            ; preds = %for.body
  br label %__non_const_wrapper__.19.exit.thread3657

csroa.if.then92.i1392:                            ; preds = %for.body
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.then97.i1395:                            ; preds = %for.body
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.else3.i1839.thread3449:                  ; preds = %for.body
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.else3.i1839.thread3450:                  ; preds = %for.body
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.else3.i1839.thread3451:                  ; preds = %for.body
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.else3.i1839.thread3452:                  ; preds = %for.body
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.else3.i1839.thread3453:                  ; preds = %for.body
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.else3.i1839.thread3454:                  ; preds = %for.body
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.else3.i1839.thread3455:                  ; preds = %for.body
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.else3.i1839.thread3456:                  ; preds = %for.body
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.else3.i1839.thread3457:                  ; preds = %for.body
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.then147.i1425:                           ; preds = %for.body
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.then152.i1428:                           ; preds = %for.body
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.else3.i1839.thread3458:                  ; preds = %for.body
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.then162.i1434:                           ; preds = %for.body
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.then167.i1437:                           ; preds = %for.body
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.else3.i1839.thread3459:                  ; preds = %for.body
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.then177.i1443:                           ; preds = %for.body
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.then182.i1446:                           ; preds = %for.body
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.then187.i1449:                           ; preds = %for.body
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.else3.i1839.thread3460:                  ; preds = %for.body
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.else3.i1839.thread3461:                  ; preds = %for.body
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.else3.i1839.thread3462:                  ; preds = %for.body
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.then207.i1461:                           ; preds = %for.body
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.then212.i1464:                           ; preds = %for.body
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.else3.i1839.thread3463:                  ; preds = %for.body
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.else3.i1839.thread3464:                  ; preds = %for.body
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.else3.i1839.thread3465:                  ; preds = %for.body
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.else3.i1839.thread3466:                  ; preds = %for.body
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.then237.i1479:                           ; preds = %for.body
  br label %__non_const_wrapper__.19.exit.thread

__non_const_wrapper__.19.exit.thread3676:         ; preds = %for.body
  %not.cmp33677 = icmp ne i32 %181, 248
  %add3678 = zext i1 %not.cmp33677 to i32
  %main_result.0.add3679 = add nsw i32 %add3678, %main_result.016
  br label %for.body6.preheader

csroa.if.then247.i1485:                           ; preds = %for.body
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.then252.i1488:                           ; preds = %for.body
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.then257.i1491:                           ; preds = %for.body
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.then262.i1494:                           ; preds = %for.body
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.then267.i1497:                           ; preds = %for.body
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.then272.i1500:                           ; preds = %for.body
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.then277.i1503:                           ; preds = %for.body
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.then282.i1506:                           ; preds = %for.body
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.then287.i1509:                           ; preds = %for.body
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.then292.i1512:                           ; preds = %for.body
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.then297.i1515:                           ; preds = %for.body
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.then302.i1518:                           ; preds = %for.body
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.then307.i1521:                           ; preds = %for.body
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.then312.i1524:                           ; preds = %for.body
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.else313.i1526:                           ; preds = %for.body
  switch i32 %i.015, label %__non_const_wrapper__.19.exit [
    i32 99, label %csroa.if.then492.i1632
    i32 65, label %__non_const_wrapper__.19.exit.thread
    i32 66, label %csroa.if.then327.i1533
    i32 67, label %csroa.if.then332.i1536
    i32 68, label %csroa.if.then337.i1539
    i32 69, label %csroa.if.then342.i1542
    i32 70, label %csroa.if.then347.i1545
    i32 71, label %csroa.if.then352.i1548
    i32 72, label %csroa.if.then357.i1551
    i32 73, label %csroa.if.then362.i1554
    i32 74, label %csroa.if.then367.i1557
    i32 75, label %csroa.if.then372.i1560
    i32 76, label %csroa.if.then377.i1563
    i32 77, label %csroa.if.then382.i1566
    i32 78, label %csroa.if.then387.i1569
    i32 79, label %csroa.if.then392.i1572
    i32 80, label %csroa.if.then397.i1575
    i32 81, label %csroa.if.then402.i1578
    i32 82, label %csroa.if.then407.i1581
    i32 83, label %csroa.if.then412.i1584
    i32 84, label %csroa.if.then417.i1587
    i32 85, label %csroa.if.then422.i1590
    i32 86, label %csroa.if.then427.i1593
    i32 87, label %csroa.if.then432.i1596
    i32 88, label %csroa.if.then437.i1599
    i32 89, label %csroa.if.then442.i1602
    i32 90, label %csroa.if.then447.i1605
    i32 91, label %csroa.if.then452.i1608
    i32 92, label %csroa.if.then457.i1611
    i32 93, label %csroa.if.then462.i1614
    i32 94, label %csroa.if.then467.i1617
    i32 95, label %csroa.if.then472.i1620
    i32 96, label %csroa.if.then477.i1623
    i32 97, label %csroa.if.then482.i1626
    i32 98, label %csroa.if.then487.i1629
  ]

csroa.if.then327.i1533:                           ; preds = %csroa.if.else313.i1526
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.then332.i1536:                           ; preds = %csroa.if.else313.i1526
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.then337.i1539:                           ; preds = %csroa.if.else313.i1526
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.then342.i1542:                           ; preds = %csroa.if.else313.i1526
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.then347.i1545:                           ; preds = %csroa.if.else313.i1526
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.then352.i1548:                           ; preds = %csroa.if.else313.i1526
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.then357.i1551:                           ; preds = %csroa.if.else313.i1526
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.then362.i1554:                           ; preds = %csroa.if.else313.i1526
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.then367.i1557:                           ; preds = %csroa.if.else313.i1526
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.then372.i1560:                           ; preds = %csroa.if.else313.i1526
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.then377.i1563:                           ; preds = %csroa.if.else313.i1526
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.then382.i1566:                           ; preds = %csroa.if.else313.i1526
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.then387.i1569:                           ; preds = %csroa.if.else313.i1526
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.then392.i1572:                           ; preds = %csroa.if.else313.i1526
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.then397.i1575:                           ; preds = %csroa.if.else313.i1526
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.then402.i1578:                           ; preds = %csroa.if.else313.i1526
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.then407.i1581:                           ; preds = %csroa.if.else313.i1526
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.then412.i1584:                           ; preds = %csroa.if.else313.i1526
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.then417.i1587:                           ; preds = %csroa.if.else313.i1526
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.then422.i1590:                           ; preds = %csroa.if.else313.i1526
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.then427.i1593:                           ; preds = %csroa.if.else313.i1526
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.then432.i1596:                           ; preds = %csroa.if.else313.i1526
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.then437.i1599:                           ; preds = %csroa.if.else313.i1526
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.then442.i1602:                           ; preds = %csroa.if.else313.i1526
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.then447.i1605:                           ; preds = %csroa.if.else313.i1526
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.then452.i1608:                           ; preds = %csroa.if.else313.i1526
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.then457.i1611:                           ; preds = %csroa.if.else313.i1526
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.then462.i1614:                           ; preds = %csroa.if.else313.i1526
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.then467.i1617:                           ; preds = %csroa.if.else313.i1526
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.then472.i1620:                           ; preds = %csroa.if.else313.i1526
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.then477.i1623:                           ; preds = %csroa.if.else313.i1526
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.then482.i1626:                           ; preds = %csroa.if.else313.i1526
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.then487.i1629:                           ; preds = %csroa.if.else313.i1526
  br label %__non_const_wrapper__.19.exit.thread

csroa.if.then492.i1632:                           ; preds = %csroa.if.else313.i1526
  br label %__non_const_wrapper__.19.exit.thread

__non_const_wrapper__.19.exit.thread3290:         ; preds = %for.body, %__non_const_wrapper__.18.exit.thread3283
  %compressed.1.sink3669 = phi i32* [ @compressed.1, %__non_const_wrapper__.18.exit.thread3283 ], [ @compressed.2, %for.body ]
  %.phi5.i2279.ph = phi i32 [ 222, %__non_const_wrapper__.18.exit.thread3283 ], [ 119, %for.body ]
  %196 = load i32, i32* %compressed.1.sink3669, align 16
  %not.cmp33291 = icmp ne i32 %196, %.phi5.i2279.ph
  %add3292 = zext i1 %not.cmp33291 to i32
  %main_result.0.add3293 = add nsw i32 %add3292, %main_result.016
  %inc3294 = add nuw nsw i32 %i.015, 1
  br label %for.body.backedge

__non_const_wrapper__.19.exit.thread3657:         ; preds = %for.body, %csroa.if.then82.i1386, %csroa.if.then77.i1383, %csroa.if.then67.i1377
  %compressed.15.sink = phi i32* [ @compressed.17, %csroa.if.then82.i1386 ], [ @compressed.16, %csroa.if.then77.i1383 ], [ @compressed.14, %csroa.if.then67.i1377 ], [ @compressed.15, %for.body ]
  %197 = load i32, i32* %compressed.15.sink, align 16
  %not.cmp33658 = icmp ne i32 %197, 245
  %add3659 = zext i1 %not.cmp33658 to i32
  %main_result.0.add3660 = add nsw i32 %add3659, %main_result.016
  %inc3661 = add nuw nsw i32 %i.015, 1
  br label %for.body.backedge

__non_const_wrapper__.19.exit.thread:             ; preds = %for.body, %csroa.if.then97.i1395, %csroa.if.then92.i1392, %csroa.if.else3.i1839.thread3450, %csroa.if.else3.i1839.thread3452, %csroa.if.else3.i1839.thread3454, %csroa.if.else3.i1839.thread3456, %csroa.if.then147.i1425, %csroa.if.then152.i1428, %csroa.if.then167.i1437, %csroa.if.then162.i1434, %csroa.if.then177.i1443, %csroa.if.then187.i1449, %csroa.if.then182.i1446, %csroa.if.else3.i1839.thread3461, %csroa.if.then207.i1461, %csroa.if.then212.i1464, %csroa.if.else3.i1839.thread3464, %csroa.if.else3.i1839.thread3466, %csroa.if.then247.i1485, %csroa.if.then257.i1491, %csroa.if.then267.i1497, %csroa.if.then277.i1503, %csroa.if.then287.i1509, %csroa.if.then297.i1515, %csroa.if.then307.i1521, %csroa.if.then327.i1533, %csroa.if.then337.i1539, %csroa.if.then347.i1545, %csroa.if.then357.i1551, %csroa.if.then367.i1557, %csroa.if.then377.i1563, %csroa.if.then387.i1569, %csroa.if.then397.i1575, %csroa.if.then407.i1581, %csroa.if.then417.i1587, %csroa.if.then427.i1593, %csroa.if.then437.i1599, %csroa.if.then447.i1605, %csroa.if.then457.i1611, %csroa.if.then467.i1617, %csroa.if.then477.i1623, %csroa.if.then487.i1629, %csroa.if.then492.i1632, %csroa.if.then482.i1626, %csroa.if.then472.i1620, %csroa.if.then462.i1614, %csroa.if.then452.i1608, %csroa.if.then442.i1602, %csroa.if.then432.i1596, %csroa.if.then422.i1590, %csroa.if.then412.i1584, %csroa.if.then402.i1578, %csroa.if.then392.i1572, %csroa.if.then382.i1566, %csroa.if.then372.i1560, %csroa.if.then362.i1554, %csroa.if.then352.i1548, %csroa.if.then342.i1542, %csroa.if.then332.i1536, %csroa.if.then312.i1524, %csroa.if.then302.i1518, %csroa.if.then292.i1512, %csroa.if.then282.i1506, %csroa.if.then272.i1500, %csroa.if.then262.i1494, %csroa.if.then252.i1488, %csroa.if.then237.i1479, %csroa.if.else3.i1839.thread3465, %csroa.if.else3.i1839.thread3463, %csroa.if.else3.i1839.thread3462, %csroa.if.else3.i1839.thread3460, %csroa.if.else3.i1839.thread3459, %csroa.if.else3.i1839.thread3458, %csroa.if.else3.i1839.thread3457, %csroa.if.else3.i1839.thread3455, %csroa.if.else3.i1839.thread3453, %csroa.if.else3.i1839.thread3451, %csroa.if.else3.i1839.thread3449, %csroa.if.else313.i1526
  %.phi.i183232813402.ph = phi i32 [ %150, %for.body ], [ %137, %csroa.if.then492.i1632 ], [ %136, %csroa.if.then487.i1629 ], [ %135, %csroa.if.then482.i1626 ], [ %134, %csroa.if.then477.i1623 ], [ %133, %csroa.if.then472.i1620 ], [ %132, %csroa.if.then467.i1617 ], [ %131, %csroa.if.then462.i1614 ], [ %130, %csroa.if.then457.i1611 ], [ %129, %csroa.if.then452.i1608 ], [ %128, %csroa.if.then447.i1605 ], [ %127, %csroa.if.then442.i1602 ], [ %126, %csroa.if.then437.i1599 ], [ %125, %csroa.if.then432.i1596 ], [ %124, %csroa.if.then427.i1593 ], [ %123, %csroa.if.then422.i1590 ], [ %122, %csroa.if.then417.i1587 ], [ %121, %csroa.if.then412.i1584 ], [ %120, %csroa.if.then407.i1581 ], [ %119, %csroa.if.then402.i1578 ], [ %118, %csroa.if.then397.i1575 ], [ %117, %csroa.if.then392.i1572 ], [ %116, %csroa.if.then387.i1569 ], [ %115, %csroa.if.then382.i1566 ], [ %114, %csroa.if.then377.i1563 ], [ %113, %csroa.if.then372.i1560 ], [ %112, %csroa.if.then367.i1557 ], [ %111, %csroa.if.then362.i1554 ], [ %110, %csroa.if.then357.i1551 ], [ %109, %csroa.if.then352.i1548 ], [ %108, %csroa.if.then347.i1545 ], [ %107, %csroa.if.then342.i1542 ], [ %106, %csroa.if.then337.i1539 ], [ %105, %csroa.if.then332.i1536 ], [ %104, %csroa.if.then327.i1533 ], [ %195, %csroa.if.then312.i1524 ], [ %194, %csroa.if.then307.i1521 ], [ %193, %csroa.if.then302.i1518 ], [ %192, %csroa.if.then297.i1515 ], [ %191, %csroa.if.then292.i1512 ], [ %190, %csroa.if.then287.i1509 ], [ %189, %csroa.if.then282.i1506 ], [ %188, %csroa.if.then277.i1503 ], [ %187, %csroa.if.then272.i1500 ], [ %186, %csroa.if.then267.i1497 ], [ %185, %csroa.if.then262.i1494 ], [ %184, %csroa.if.then257.i1491 ], [ %183, %csroa.if.then252.i1488 ], [ %182, %csroa.if.then247.i1485 ], [ %180, %csroa.if.then237.i1479 ], [ %179, %csroa.if.else3.i1839.thread3466 ], [ %178, %csroa.if.else3.i1839.thread3465 ], [ %177, %csroa.if.else3.i1839.thread3464 ], [ %176, %csroa.if.else3.i1839.thread3463 ], [ %175, %csroa.if.then212.i1464 ], [ %174, %csroa.if.then207.i1461 ], [ %173, %csroa.if.else3.i1839.thread3462 ], [ %172, %csroa.if.else3.i1839.thread3461 ], [ %171, %csroa.if.else3.i1839.thread3460 ], [ %170, %csroa.if.then187.i1449 ], [ %169, %csroa.if.then182.i1446 ], [ %168, %csroa.if.then177.i1443 ], [ %167, %csroa.if.else3.i1839.thread3459 ], [ %166, %csroa.if.then167.i1437 ], [ %165, %csroa.if.then162.i1434 ], [ %164, %csroa.if.else3.i1839.thread3458 ], [ %163, %csroa.if.then152.i1428 ], [ %162, %csroa.if.then147.i1425 ], [ %161, %csroa.if.else3.i1839.thread3457 ], [ %160, %csroa.if.else3.i1839.thread3456 ], [ %159, %csroa.if.else3.i1839.thread3455 ], [ %158, %csroa.if.else3.i1839.thread3454 ], [ %157, %csroa.if.else3.i1839.thread3453 ], [ %156, %csroa.if.else3.i1839.thread3452 ], [ %155, %csroa.if.else3.i1839.thread3451 ], [ %154, %csroa.if.else3.i1839.thread3450 ], [ %153, %csroa.if.else3.i1839.thread3449 ], [ %152, %csroa.if.then97.i1395 ], [ %151, %csroa.if.then92.i1392 ], [ %103, %csroa.if.else313.i1526 ]
  %.phi90.i2245.ph = phi i32 [ 246, %for.body ], [ 0, %csroa.if.then492.i1632 ], [ 0, %csroa.if.then487.i1629 ], [ 0, %csroa.if.then482.i1626 ], [ 0, %csroa.if.then477.i1623 ], [ 0, %csroa.if.then472.i1620 ], [ 0, %csroa.if.then467.i1617 ], [ 0, %csroa.if.then462.i1614 ], [ 0, %csroa.if.then457.i1611 ], [ 0, %csroa.if.then452.i1608 ], [ 0, %csroa.if.then447.i1605 ], [ 0, %csroa.if.then442.i1602 ], [ 0, %csroa.if.then437.i1599 ], [ 0, %csroa.if.then432.i1596 ], [ 0, %csroa.if.then427.i1593 ], [ 0, %csroa.if.then422.i1590 ], [ 0, %csroa.if.then417.i1587 ], [ 0, %csroa.if.then412.i1584 ], [ 0, %csroa.if.then407.i1581 ], [ 0, %csroa.if.then402.i1578 ], [ 0, %csroa.if.then397.i1575 ], [ 0, %csroa.if.then392.i1572 ], [ 0, %csroa.if.then387.i1569 ], [ 0, %csroa.if.then382.i1566 ], [ 0, %csroa.if.then377.i1563 ], [ 0, %csroa.if.then372.i1560 ], [ 0, %csroa.if.then367.i1557 ], [ 0, %csroa.if.then362.i1554 ], [ 0, %csroa.if.then357.i1551 ], [ 0, %csroa.if.then352.i1548 ], [ 0, %csroa.if.then347.i1545 ], [ 0, %csroa.if.then342.i1542 ], [ 0, %csroa.if.then337.i1539 ], [ 0, %csroa.if.then332.i1536 ], [ 0, %csroa.if.then327.i1533 ], [ 0, %csroa.if.then312.i1524 ], [ 0, %csroa.if.then307.i1521 ], [ 0, %csroa.if.then302.i1518 ], [ 0, %csroa.if.then297.i1515 ], [ 0, %csroa.if.then292.i1512 ], [ 0, %csroa.if.then287.i1509 ], [ 0, %csroa.if.then282.i1506 ], [ 0, %csroa.if.then277.i1503 ], [ 0, %csroa.if.then272.i1500 ], [ 0, %csroa.if.then267.i1497 ], [ 0, %csroa.if.then262.i1494 ], [ 0, %csroa.if.then257.i1491 ], [ 0, %csroa.if.then252.i1488 ], [ 0, %csroa.if.then247.i1485 ], [ 248, %csroa.if.then237.i1479 ], [ 249, %csroa.if.else3.i1839.thread3466 ], [ 250, %csroa.if.else3.i1839.thread3465 ], [ 251, %csroa.if.else3.i1839.thread3464 ], [ 247, %csroa.if.else3.i1839.thread3463 ], [ 248, %csroa.if.then212.i1464 ], [ 248, %csroa.if.then207.i1461 ], [ 250, %csroa.if.else3.i1839.thread3462 ], [ 247, %csroa.if.else3.i1839.thread3461 ], [ 248, %csroa.if.else3.i1839.thread3460 ], [ 249, %csroa.if.then187.i1449 ], [ 249, %csroa.if.then182.i1446 ], [ 249, %csroa.if.then177.i1443 ], [ 247, %csroa.if.else3.i1839.thread3459 ], [ 248, %csroa.if.then167.i1437 ], [ 248, %csroa.if.then162.i1434 ], [ 246, %csroa.if.else3.i1839.thread3458 ], [ 248, %csroa.if.then152.i1428 ], [ 248, %csroa.if.then147.i1425 ], [ 249, %csroa.if.else3.i1839.thread3457 ], [ 247, %csroa.if.else3.i1839.thread3456 ], [ 248, %csroa.if.else3.i1839.thread3455 ], [ 249, %csroa.if.else3.i1839.thread3454 ], [ 247, %csroa.if.else3.i1839.thread3453 ], [ 248, %csroa.if.else3.i1839.thread3452 ], [ 247, %csroa.if.else3.i1839.thread3451 ], [ 248, %csroa.if.else3.i1839.thread3450 ], [ 247, %csroa.if.else3.i1839.thread3449 ], [ 246, %csroa.if.then97.i1395 ], [ 246, %csroa.if.then92.i1392 ], [ 0, %csroa.if.else313.i1526 ]
  %not.cmp33671 = icmp ne i32 %.phi.i183232813402.ph, %.phi90.i2245.ph
  %add3672 = zext i1 %not.cmp33671 to i32
  %main_result.0.add3673 = add nsw i32 %add3672, %main_result.016
  %inc3674 = add nuw nsw i32 %i.015, 1
  br label %for.body.backedge

for.body.backedge:                                ; preds = %__non_const_wrapper__.19.exit.thread, %__non_const_wrapper__.19.exit, %__non_const_wrapper__.18.exit.thread3282, %__non_const_wrapper__.19.exit.thread3290, %csroa.if.else3.i1839.thread3427, %csroa.if.else3.i1839.thread3429, %csroa.if.else3.i1839.thread3431, %csroa.if.else3.i1839.thread3433, %csroa.if.else3.i1839.thread3435, %csroa.if.else3.i1839.thread3437, %csroa.if.else3.i1839.thread3439, %csroa.if.else3.i1839.thread3441, %csroa.if.else3.i1839.thread3443, %csroa.if.else3.i1839.thread3445, %csroa.if.else3.i1839.thread3447, %__non_const_wrapper__.19.exit.thread3657
  %main_result.016.be = phi i32 [ %main_result.0.add, %__non_const_wrapper__.19.exit ], [ %main_result.0.add3286, %__non_const_wrapper__.18.exit.thread3282 ], [ %main_result.0.add3293, %__non_const_wrapper__.19.exit.thread3290 ], [ %main_result.0.add3299, %csroa.if.else3.i1839.thread3427 ], [ %main_result.0.add3305, %csroa.if.else3.i1839.thread3429 ], [ %main_result.0.add3311, %csroa.if.else3.i1839.thread3431 ], [ %main_result.0.add3317, %csroa.if.else3.i1839.thread3433 ], [ %main_result.0.add3323, %csroa.if.else3.i1839.thread3435 ], [ %main_result.0.add3329, %csroa.if.else3.i1839.thread3437 ], [ %main_result.0.add3335, %csroa.if.else3.i1839.thread3439 ], [ %main_result.0.add3341, %csroa.if.else3.i1839.thread3441 ], [ %main_result.0.add3347, %csroa.if.else3.i1839.thread3443 ], [ %main_result.0.add3353, %csroa.if.else3.i1839.thread3445 ], [ %main_result.0.add3359, %csroa.if.else3.i1839.thread3447 ], [ %main_result.0.add3660, %__non_const_wrapper__.19.exit.thread3657 ], [ %main_result.0.add3673, %__non_const_wrapper__.19.exit.thread ]
  %i.015.be = phi i32 [ %inc, %__non_const_wrapper__.19.exit ], [ 1, %__non_const_wrapper__.18.exit.thread3282 ], [ %inc3294, %__non_const_wrapper__.19.exit.thread3290 ], [ 4, %csroa.if.else3.i1839.thread3427 ], [ 5, %csroa.if.else3.i1839.thread3429 ], [ 6, %csroa.if.else3.i1839.thread3431 ], [ 7, %csroa.if.else3.i1839.thread3433 ], [ 8, %csroa.if.else3.i1839.thread3435 ], [ 9, %csroa.if.else3.i1839.thread3437 ], [ 10, %csroa.if.else3.i1839.thread3439 ], [ 11, %csroa.if.else3.i1839.thread3441 ], [ 12, %csroa.if.else3.i1839.thread3443 ], [ 13, %csroa.if.else3.i1839.thread3445 ], [ 14, %csroa.if.else3.i1839.thread3447 ], [ %inc3661, %__non_const_wrapper__.19.exit.thread3657 ], [ %inc3674, %__non_const_wrapper__.19.exit.thread ]
  br label %for.body

__non_const_wrapper__.19.exit:                    ; preds = %csroa.if.else313.i1526
  %main_result.0.add = add nsw i32 %add, %main_result.016
  %inc = add nuw nsw i32 %i.015, 1
  %exitcond17 = icmp eq i32 %inc, 50
  br i1 %exitcond17, label %for.body6.preheader.loopexit, label %for.body.backedge

for.body6.preheader.loopexit:                     ; preds = %__non_const_wrapper__.19.exit
  br label %for.body6.preheader

for.body6.preheader:                              ; preds = %for.body6.preheader.loopexit, %__non_const_wrapper__.19.exit.thread3676
  %main_result.0.add3682 = phi i32 [ %main_result.0.add3679, %__non_const_wrapper__.19.exit.thread3676 ], [ %main_result.0.add, %for.body6.preheader.loopexit ]
  %198 = load i32, i32* @result.64, align 16
  %199 = load i32, i32* @result.65, align 16
  %200 = load i32, i32* @result.66, align 16
  %201 = load i32, i32* @result.67, align 16
  %202 = load i32, i32* @result.68, align 16
  %203 = load i32, i32* @result.69, align 16
  %204 = load i32, i32* @result.70, align 16
  %205 = load i32, i32* @result.71, align 16
  %206 = load i32, i32* @result.72, align 16
  %207 = load i32, i32* @result.73, align 16
  %208 = load i32, i32* @result.74, align 16
  %209 = load i32, i32* @result.75, align 16
  %210 = load i32, i32* @result.76, align 16
  %211 = load i32, i32* @result.77, align 16
  %212 = load i32, i32* @result.78, align 16
  %213 = load i32, i32* @result.79, align 16
  %214 = load i32, i32* @result.80, align 16
  %215 = load i32, i32* @result.81, align 16
  %216 = load i32, i32* @result.82, align 16
  %217 = load i32, i32* @result.83, align 16
  %218 = load i32, i32* @result.84, align 16
  %219 = load i32, i32* @result.85, align 16
  %220 = load i32, i32* @result.86, align 16
  %221 = load i32, i32* @result.87, align 16
  %222 = load i32, i32* @result.88, align 16
  %223 = load i32, i32* @result.89, align 16
  %224 = load i32, i32* @result.90, align 16
  %225 = load i32, i32* @result.91, align 16
  %226 = load i32, i32* @result.92, align 16
  %227 = load i32, i32* @result.93, align 16
  %228 = load i32, i32* @result.94, align 16
  %229 = load i32, i32* @result.95, align 16
  %230 = load i32, i32* @result.96, align 16
  %231 = load i32, i32* @result.97, align 16
  %232 = load i32, i32* @result.98, align 16
  %233 = load i32, i32* @result.99, align 16
  %234 = load i32, i32* @result.0, align 16
  %not.cmp113367 = icmp ne i32 %234, 0
  %add133368 = zext i1 %not.cmp113367 to i32
  %235 = load i32, i32* @result.5, align 16
  %236 = load i32, i32* @result.6, align 16
  %237 = load i32, i32* @result.7, align 16
  %238 = load i32, i32* @result.8, align 16
  %239 = load i32, i32* @result.9, align 16
  %240 = load i32, i32* @result.10, align 16
  %241 = load i32, i32* @result.11, align 16
  %242 = load i32, i32* @result.12, align 16
  %243 = load i32, i32* @result.13, align 16
  %244 = load i32, i32* @result.14, align 16
  %245 = load i32, i32* @result.15, align 16
  %246 = load i32, i32* @result.16, align 16
  %247 = load i32, i32* @result.17, align 16
  %248 = load i32, i32* @result.18, align 16
  %249 = load i32, i32* @result.19, align 16
  %250 = load i32, i32* @result.20, align 16
  %251 = load i32, i32* @result.21, align 16
  %252 = load i32, i32* @result.22, align 16
  %253 = load i32, i32* @result.23, align 16
  %254 = load i32, i32* @result.24, align 16
  %255 = load i32, i32* @result.25, align 16
  %256 = load i32, i32* @result.26, align 16
  %257 = load i32, i32* @result.27, align 16
  %258 = load i32, i32* @result.28, align 16
  %259 = load i32, i32* @result.29, align 16
  %260 = load i32, i32* @result.30, align 16
  %261 = load i32, i32* @result.31, align 16
  %262 = load i32, i32* @result.32, align 16
  %263 = load i32, i32* @result.33, align 16
  %264 = load i32, i32* @result.34, align 16
  %265 = load i32, i32* @result.35, align 16
  %266 = load i32, i32* @result.36, align 16
  %267 = load i32, i32* @result.37, align 16
  %268 = load i32, i32* @result.38, align 16
  %269 = load i32, i32* @result.39, align 16
  %270 = load i32, i32* @result.40, align 16
  %271 = load i32, i32* @result.41, align 16
  %272 = load i32, i32* @result.42, align 16
  %273 = load i32, i32* @result.43, align 16
  %274 = load i32, i32* @result.44, align 16
  %275 = load i32, i32* @result.45, align 16
  %276 = load i32, i32* @result.46, align 16
  %277 = load i32, i32* @result.47, align 16
  %278 = load i32, i32* @result.48, align 16
  %279 = load i32, i32* @result.49, align 16
  %280 = load i32, i32* @result.50, align 16
  %281 = load i32, i32* @result.51, align 16
  %282 = load i32, i32* @result.52, align 16
  %283 = load i32, i32* @result.53, align 16
  %284 = load i32, i32* @result.54, align 16
  %285 = load i32, i32* @result.55, align 16
  %286 = load i32, i32* @result.56, align 16
  %287 = load i32, i32* @result.57, align 16
  %288 = load i32, i32* @result.58, align 16
  %289 = load i32, i32* @result.59, align 16
  %290 = load i32, i32* @result.60, align 16
  %291 = load i32, i32* @result.61, align 16
  %292 = load i32, i32* @result.62, align 16
  %293 = load i32, i32* @result.63, align 16
  %not.cmp11 = icmp ne i32 %209, 54
  %add13 = zext i1 %not.cmp11 to i32
  br label %for.body6

for.body6:                                        ; preds = %for.body6.backedge, %for.body6.preheader
  %main_result.214 = phi i32 [ %main_result.0.add3682, %for.body6.preheader ], [ %main_result.214.be, %for.body6.backedge ]
  %i.113 = phi i32 [ 0, %for.body6.preheader ], [ %i.113.be, %for.body6.backedge ]
  switch i32 %i.113, label %csroa.if.else313.i2474 [
    i32 0, label %__non_const_wrapper__.20.exit.thread3365
    i32 1, label %__non_const_wrapper__.20.exit.thread3366
    i32 2, label %__non_const_wrapper__.21.exit.thread3373
    i32 3, label %csroa.if.then12.i2292
    i32 4, label %__non_const_wrapper__.21.exit.thread3663
    i32 5, label %__non_const_wrapper__.21.exit.thread
    i32 6, label %csroa.if.then27.i2301
    i32 7, label %csroa.if.then32.i2304
    i32 8, label %csroa.if.then37.i2307
    i32 9, label %csroa.if.then42.i2310
    i32 10, label %csroa.if.then47.i2313
    i32 11, label %csroa.if.then52.i2316
    i32 12, label %csroa.if.then57.i2319
    i32 13, label %csroa.if.then62.i2322
    i32 14, label %csroa.if.else3.i2787.thread3583
    i32 15, label %csroa.if.else3.i2787.thread3584
    i32 16, label %csroa.if.else3.i2787.thread3585
    i32 17, label %csroa.if.else3.i2787.thread3586
    i32 18, label %csroa.if.else3.i2787.thread3587
    i32 19, label %csroa.if.else3.i2787.thread3588
    i32 20, label %csroa.if.then97.i2343
    i32 21, label %csroa.if.then102.i2346
    i32 22, label %csroa.if.then107.i2349
    i32 23, label %csroa.if.else3.i2787.thread3589
    i32 24, label %csroa.if.then117.i2355
    i32 25, label %csroa.if.then122.i2358
    i32 26, label %csroa.if.else3.i2787.thread3590
    i32 27, label %csroa.if.else3.i2787.thread3591
    i32 28, label %csroa.if.then137.i2367
    i32 29, label %csroa.if.then142.i2370
    i32 30, label %csroa.if.else3.i2787.thread3592
    i32 31, label %csroa.if.else3.i2787.thread3593
    i32 32, label %csroa.if.else3.i2787.thread3594
    i32 33, label %csroa.if.else3.i2787.thread3595
    i32 34, label %csroa.if.else3.i2787.thread3596
    i32 35, label %csroa.if.else3.i2787.thread3597
    i32 36, label %csroa.if.else3.i2787.thread3598
    i32 37, label %csroa.if.else3.i2787.thread3599
    i32 38, label %csroa.if.else3.i2787.thread3600
    i32 39, label %csroa.if.else3.i2787.thread3601
    i32 40, label %csroa.if.else3.i2787.thread3602
    i32 41, label %csroa.if.else3.i2787.thread3603
    i32 42, label %csroa.if.else3.i2787.thread3604
    i32 43, label %csroa.if.else3.i2787.thread3605
    i32 44, label %csroa.if.else3.i2787.thread3606
    i32 45, label %csroa.if.else3.i2787.thread3607
    i32 46, label %csroa.if.else3.i2787.thread3608
    i32 47, label %csroa.if.else3.i2787.thread3609
    i32 48, label %csroa.if.else3.i2787.thread3610
    i32 49, label %csroa.if.else3.i2787.thread3611
    i32 50, label %csroa.if.else3.i2787.thread3612
    i32 51, label %csroa.if.else3.i2787.thread3613
    i32 52, label %csroa.if.else3.i2787.thread3614
    i32 53, label %csroa.if.else3.i2787.thread3615
    i32 54, label %csroa.if.then267.i2445
    i32 55, label %csroa.if.then272.i2448
    i32 56, label %csroa.if.else3.i2787.thread3616
    i32 57, label %csroa.if.else3.i2787.thread3617
    i32 58, label %csroa.if.else3.i2787.thread3618
    i32 59, label %csroa.if.else3.i2787.thread3619
    i32 60, label %csroa.if.else3.i2787.thread3620
    i32 61, label %csroa.if.else3.i2787.thread3621
    i32 62, label %csroa.if.else3.i2787.thread3622
    i32 63, label %csroa.if.else3.i2787.thread3623
  ]

__non_const_wrapper__.20.exit.thread3365:         ; preds = %for.body6
  %main_result.2.add133369 = add nsw i32 %add133368, %main_result.214
  br label %for.body6.backedge

__non_const_wrapper__.20.exit.thread3366:         ; preds = %for.body6
  br label %__non_const_wrapper__.21.exit.thread3373

csroa.if.then12.i2292:                            ; preds = %for.body6
  br label %__non_const_wrapper__.21.exit.thread3663

csroa.if.then27.i2301:                            ; preds = %for.body6
  br label %__non_const_wrapper__.21.exit.thread

csroa.if.then32.i2304:                            ; preds = %for.body6
  br label %__non_const_wrapper__.21.exit.thread

csroa.if.then37.i2307:                            ; preds = %for.body6
  br label %__non_const_wrapper__.21.exit.thread

csroa.if.then42.i2310:                            ; preds = %for.body6
  br label %__non_const_wrapper__.21.exit.thread

csroa.if.then47.i2313:                            ; preds = %for.body6
  br label %__non_const_wrapper__.21.exit.thread

csroa.if.then52.i2316:                            ; preds = %for.body6
  br label %__non_const_wrapper__.21.exit.thread

csroa.if.then57.i2319:                            ; preds = %for.body6
  br label %__non_const_wrapper__.21.exit.thread

csroa.if.then62.i2322:                            ; preds = %for.body6
  br label %__non_const_wrapper__.21.exit.thread

csroa.if.else3.i2787.thread3583:                  ; preds = %for.body6
  br label %__non_const_wrapper__.21.exit.thread

csroa.if.else3.i2787.thread3584:                  ; preds = %for.body6
  br label %__non_const_wrapper__.21.exit.thread

csroa.if.else3.i2787.thread3585:                  ; preds = %for.body6
  br label %__non_const_wrapper__.21.exit.thread

csroa.if.else3.i2787.thread3586:                  ; preds = %for.body6
  br label %__non_const_wrapper__.21.exit.thread

csroa.if.else3.i2787.thread3587:                  ; preds = %for.body6
  br label %__non_const_wrapper__.21.exit.thread

csroa.if.else3.i2787.thread3588:                  ; preds = %for.body6
  br label %__non_const_wrapper__.21.exit.thread

csroa.if.then97.i2343:                            ; preds = %for.body6
  br label %__non_const_wrapper__.21.exit.thread

csroa.if.then102.i2346:                           ; preds = %for.body6
  br label %__non_const_wrapper__.21.exit.thread

csroa.if.then107.i2349:                           ; preds = %for.body6
  br label %__non_const_wrapper__.21.exit.thread

csroa.if.else3.i2787.thread3589:                  ; preds = %for.body6
  br label %__non_const_wrapper__.21.exit.thread

csroa.if.then117.i2355:                           ; preds = %for.body6
  br label %__non_const_wrapper__.21.exit.thread

csroa.if.then122.i2358:                           ; preds = %for.body6
  br label %__non_const_wrapper__.21.exit.thread

csroa.if.else3.i2787.thread3590:                  ; preds = %for.body6
  br label %__non_const_wrapper__.21.exit.thread

csroa.if.else3.i2787.thread3591:                  ; preds = %for.body6
  br label %__non_const_wrapper__.21.exit.thread

csroa.if.then137.i2367:                           ; preds = %for.body6
  br label %__non_const_wrapper__.21.exit.thread

csroa.if.then142.i2370:                           ; preds = %for.body6
  br label %__non_const_wrapper__.21.exit.thread

csroa.if.else3.i2787.thread3592:                  ; preds = %for.body6
  br label %__non_const_wrapper__.21.exit.thread

csroa.if.else3.i2787.thread3593:                  ; preds = %for.body6
  br label %__non_const_wrapper__.21.exit.thread

csroa.if.else3.i2787.thread3594:                  ; preds = %for.body6
  br label %__non_const_wrapper__.21.exit.thread

csroa.if.else3.i2787.thread3595:                  ; preds = %for.body6
  br label %__non_const_wrapper__.21.exit.thread

csroa.if.else3.i2787.thread3596:                  ; preds = %for.body6
  br label %__non_const_wrapper__.21.exit.thread

csroa.if.else3.i2787.thread3597:                  ; preds = %for.body6
  br label %__non_const_wrapper__.21.exit.thread

csroa.if.else3.i2787.thread3598:                  ; preds = %for.body6
  br label %__non_const_wrapper__.21.exit.thread

csroa.if.else3.i2787.thread3599:                  ; preds = %for.body6
  br label %__non_const_wrapper__.21.exit.thread

csroa.if.else3.i2787.thread3600:                  ; preds = %for.body6
  br label %__non_const_wrapper__.21.exit.thread

csroa.if.else3.i2787.thread3601:                  ; preds = %for.body6
  br label %__non_const_wrapper__.21.exit.thread

csroa.if.else3.i2787.thread3602:                  ; preds = %for.body6
  br label %__non_const_wrapper__.21.exit.thread

csroa.if.else3.i2787.thread3603:                  ; preds = %for.body6
  br label %__non_const_wrapper__.21.exit.thread

csroa.if.else3.i2787.thread3604:                  ; preds = %for.body6
  br label %__non_const_wrapper__.21.exit.thread

csroa.if.else3.i2787.thread3605:                  ; preds = %for.body6
  br label %__non_const_wrapper__.21.exit.thread

csroa.if.else3.i2787.thread3606:                  ; preds = %for.body6
  br label %__non_const_wrapper__.21.exit.thread

csroa.if.else3.i2787.thread3607:                  ; preds = %for.body6
  br label %__non_const_wrapper__.21.exit.thread

csroa.if.else3.i2787.thread3608:                  ; preds = %for.body6
  br label %__non_const_wrapper__.21.exit.thread

csroa.if.else3.i2787.thread3609:                  ; preds = %for.body6
  br label %__non_const_wrapper__.21.exit.thread

csroa.if.else3.i2787.thread3610:                  ; preds = %for.body6
  br label %__non_const_wrapper__.21.exit.thread

csroa.if.else3.i2787.thread3611:                  ; preds = %for.body6
  br label %__non_const_wrapper__.21.exit.thread

csroa.if.else3.i2787.thread3612:                  ; preds = %for.body6
  br label %__non_const_wrapper__.21.exit.thread

csroa.if.else3.i2787.thread3613:                  ; preds = %for.body6
  br label %__non_const_wrapper__.21.exit.thread

csroa.if.else3.i2787.thread3614:                  ; preds = %for.body6
  br label %__non_const_wrapper__.21.exit.thread

csroa.if.else3.i2787.thread3615:                  ; preds = %for.body6
  br label %__non_const_wrapper__.21.exit.thread

csroa.if.then267.i2445:                           ; preds = %for.body6
  br label %__non_const_wrapper__.21.exit.thread

csroa.if.then272.i2448:                           ; preds = %for.body6
  br label %__non_const_wrapper__.21.exit.thread

csroa.if.else3.i2787.thread3616:                  ; preds = %for.body6
  br label %__non_const_wrapper__.21.exit.thread

csroa.if.else3.i2787.thread3617:                  ; preds = %for.body6
  br label %__non_const_wrapper__.21.exit.thread

csroa.if.else3.i2787.thread3618:                  ; preds = %for.body6
  br label %__non_const_wrapper__.21.exit.thread

csroa.if.else3.i2787.thread3619:                  ; preds = %for.body6
  br label %__non_const_wrapper__.21.exit.thread

csroa.if.else3.i2787.thread3620:                  ; preds = %for.body6
  br label %__non_const_wrapper__.21.exit.thread

csroa.if.else3.i2787.thread3621:                  ; preds = %for.body6
  br label %__non_const_wrapper__.21.exit.thread

csroa.if.else3.i2787.thread3622:                  ; preds = %for.body6
  br label %__non_const_wrapper__.21.exit.thread

csroa.if.else3.i2787.thread3623:                  ; preds = %for.body6
  br label %__non_const_wrapper__.21.exit.thread

csroa.if.else313.i2474:                           ; preds = %for.body6
  switch i32 %i.113, label %__non_const_wrapper__.21.exit [
    i32 64, label %__non_const_wrapper__.21.exit.thread
    i32 65, label %csroa.if.else3.i2787.thread3625
    i32 66, label %csroa.if.else3.i2787.thread3626
    i32 67, label %csroa.if.else3.i2787.thread3627
    i32 68, label %csroa.if.else3.i2787.thread3628
    i32 69, label %csroa.if.else3.i2787.thread3629
    i32 70, label %csroa.if.else3.i2787.thread3630
    i32 71, label %csroa.if.then352.i2496
    i32 72, label %csroa.if.then357.i2499
    i32 73, label %csroa.if.else3.i2787.thread3631
    i32 74, label %csroa.if.else3.i2787.thread3632
    i32 99, label %__non_const_wrapper__.21.exit.thread3688
    i32 76, label %csroa.if.else3.i2787.thread3634
    i32 77, label %csroa.if.else3.i2787.thread3635
    i32 78, label %csroa.if.else3.i2787.thread3636
    i32 79, label %csroa.if.else3.i2787.thread3637
    i32 80, label %csroa.if.else3.i2787.thread3638
    i32 81, label %csroa.if.else3.i2787.thread3639
    i32 82, label %csroa.if.else3.i2787.thread3640
    i32 83, label %csroa.if.else3.i2787.thread3641
    i32 84, label %csroa.if.else3.i2787.thread3642
    i32 85, label %csroa.if.else3.i2787.thread3643
    i32 86, label %csroa.if.else3.i2787.thread3644
    i32 87, label %csroa.if.else3.i2787.thread3645
    i32 88, label %csroa.if.else3.i2787.thread3646
    i32 89, label %csroa.if.else3.i2787.thread3647
    i32 90, label %csroa.if.else3.i2787.thread3648
    i32 91, label %csroa.if.else3.i2787.thread3649
    i32 92, label %csroa.if.else3.i2787.thread3650
    i32 93, label %csroa.if.else3.i2787.thread3651
    i32 94, label %csroa.if.else3.i2787.thread3652
    i32 95, label %csroa.if.else3.i2787.thread3653
    i32 96, label %csroa.if.else3.i2787.thread3654
    i32 97, label %csroa.if.else3.i2787.thread3655
    i32 98, label %csroa.if.else3.i2787.thread3656
  ]

csroa.if.else3.i2787.thread3625:                  ; preds = %csroa.if.else313.i2474
  br label %__non_const_wrapper__.21.exit.thread

csroa.if.else3.i2787.thread3626:                  ; preds = %csroa.if.else313.i2474
  br label %__non_const_wrapper__.21.exit.thread

csroa.if.else3.i2787.thread3627:                  ; preds = %csroa.if.else313.i2474
  br label %__non_const_wrapper__.21.exit.thread

csroa.if.else3.i2787.thread3628:                  ; preds = %csroa.if.else313.i2474
  br label %__non_const_wrapper__.21.exit.thread

csroa.if.else3.i2787.thread3629:                  ; preds = %csroa.if.else313.i2474
  br label %__non_const_wrapper__.21.exit.thread

csroa.if.else3.i2787.thread3630:                  ; preds = %csroa.if.else313.i2474
  br label %__non_const_wrapper__.21.exit.thread

csroa.if.then352.i2496:                           ; preds = %csroa.if.else313.i2474
  br label %__non_const_wrapper__.21.exit.thread

csroa.if.then357.i2499:                           ; preds = %csroa.if.else313.i2474
  br label %__non_const_wrapper__.21.exit.thread

csroa.if.else3.i2787.thread3631:                  ; preds = %csroa.if.else313.i2474
  br label %__non_const_wrapper__.21.exit.thread

csroa.if.else3.i2787.thread3632:                  ; preds = %csroa.if.else313.i2474
  br label %__non_const_wrapper__.21.exit.thread

csroa.if.else3.i2787.thread3634:                  ; preds = %csroa.if.else313.i2474
  br label %__non_const_wrapper__.21.exit.thread

csroa.if.else3.i2787.thread3635:                  ; preds = %csroa.if.else313.i2474
  br label %__non_const_wrapper__.21.exit.thread

csroa.if.else3.i2787.thread3636:                  ; preds = %csroa.if.else313.i2474
  br label %__non_const_wrapper__.21.exit.thread

csroa.if.else3.i2787.thread3637:                  ; preds = %csroa.if.else313.i2474
  br label %__non_const_wrapper__.21.exit.thread

csroa.if.else3.i2787.thread3638:                  ; preds = %csroa.if.else313.i2474
  br label %__non_const_wrapper__.21.exit.thread

csroa.if.else3.i2787.thread3639:                  ; preds = %csroa.if.else313.i2474
  br label %__non_const_wrapper__.21.exit.thread

csroa.if.else3.i2787.thread3640:                  ; preds = %csroa.if.else313.i2474
  br label %__non_const_wrapper__.21.exit.thread

csroa.if.else3.i2787.thread3641:                  ; preds = %csroa.if.else313.i2474
  br label %__non_const_wrapper__.21.exit.thread

csroa.if.else3.i2787.thread3642:                  ; preds = %csroa.if.else313.i2474
  br label %__non_const_wrapper__.21.exit.thread

csroa.if.else3.i2787.thread3643:                  ; preds = %csroa.if.else313.i2474
  br label %__non_const_wrapper__.21.exit.thread

csroa.if.else3.i2787.thread3644:                  ; preds = %csroa.if.else313.i2474
  br label %__non_const_wrapper__.21.exit.thread

csroa.if.else3.i2787.thread3645:                  ; preds = %csroa.if.else313.i2474
  br label %__non_const_wrapper__.21.exit.thread

csroa.if.else3.i2787.thread3646:                  ; preds = %csroa.if.else313.i2474
  br label %__non_const_wrapper__.21.exit.thread

csroa.if.else3.i2787.thread3647:                  ; preds = %csroa.if.else313.i2474
  br label %__non_const_wrapper__.21.exit.thread

csroa.if.else3.i2787.thread3648:                  ; preds = %csroa.if.else313.i2474
  br label %__non_const_wrapper__.21.exit.thread

csroa.if.else3.i2787.thread3649:                  ; preds = %csroa.if.else313.i2474
  br label %__non_const_wrapper__.21.exit.thread

csroa.if.else3.i2787.thread3650:                  ; preds = %csroa.if.else313.i2474
  br label %__non_const_wrapper__.21.exit.thread

csroa.if.else3.i2787.thread3651:                  ; preds = %csroa.if.else313.i2474
  br label %__non_const_wrapper__.21.exit.thread

csroa.if.else3.i2787.thread3652:                  ; preds = %csroa.if.else313.i2474
  br label %__non_const_wrapper__.21.exit.thread

csroa.if.else3.i2787.thread3653:                  ; preds = %csroa.if.else313.i2474
  br label %__non_const_wrapper__.21.exit.thread

csroa.if.else3.i2787.thread3654:                  ; preds = %csroa.if.else313.i2474
  br label %__non_const_wrapper__.21.exit.thread

csroa.if.else3.i2787.thread3655:                  ; preds = %csroa.if.else313.i2474
  br label %__non_const_wrapper__.21.exit.thread

csroa.if.else3.i2787.thread3656:                  ; preds = %csroa.if.else313.i2474
  br label %__non_const_wrapper__.21.exit.thread

__non_const_wrapper__.21.exit.thread3688:         ; preds = %csroa.if.else313.i2474
  %not.cmp113689 = icmp ne i32 %233, 54
  %add133690 = zext i1 %not.cmp113689 to i32
  %main_result.2.add133691 = add nsw i32 %add133690, %main_result.214
  br label %for.end17

__non_const_wrapper__.21.exit.thread3373:         ; preds = %for.body6, %__non_const_wrapper__.20.exit.thread3366
  %result.1.sink = phi i32* [ @result.1, %__non_const_wrapper__.20.exit.thread3366 ], [ @result.2, %for.body6 ]
  %294 = load i32, i32* %result.1.sink, align 16
  %not.cmp113374 = icmp ne i32 %294, -1
  %add133375 = zext i1 %not.cmp113374 to i32
  %main_result.2.add133376 = add nsw i32 %add133375, %main_result.214
  %inc163377 = add nuw nsw i32 %i.113, 1
  br label %for.body6.backedge

__non_const_wrapper__.21.exit.thread3663:         ; preds = %for.body6, %csroa.if.then12.i2292
  %result.3.sink3670 = phi i32* [ @result.3, %csroa.if.then12.i2292 ], [ @result.4, %for.body6 ]
  %295 = load i32, i32* %result.3.sink3670, align 16
  %not.cmp113664 = icmp ne i32 %295, 0
  %add133665 = zext i1 %not.cmp113664 to i32
  %main_result.2.add133666 = add nsw i32 %add133665, %main_result.214
  %inc163667 = add nuw nsw i32 %i.113, 1
  br label %for.body6.backedge

__non_const_wrapper__.21.exit.thread:             ; preds = %for.body6, %csroa.if.then37.i2307, %csroa.if.then42.i2310, %csroa.if.then57.i2319, %csroa.if.then62.i2322, %csroa.if.else3.i2787.thread3584, %csroa.if.else3.i2787.thread3586, %csroa.if.else3.i2787.thread3588, %csroa.if.else3.i2787.thread3589, %csroa.if.else3.i2787.thread3590, %csroa.if.then137.i2367, %csroa.if.then142.i2370, %csroa.if.else3.i2787.thread3593, %csroa.if.else3.i2787.thread3595, %csroa.if.else3.i2787.thread3597, %csroa.if.else3.i2787.thread3599, %csroa.if.else3.i2787.thread3601, %csroa.if.else3.i2787.thread3603, %csroa.if.else3.i2787.thread3605, %csroa.if.else3.i2787.thread3607, %csroa.if.else3.i2787.thread3609, %csroa.if.else3.i2787.thread3611, %csroa.if.else3.i2787.thread3613, %csroa.if.else3.i2787.thread3615, %csroa.if.else3.i2787.thread3616, %csroa.if.else3.i2787.thread3618, %csroa.if.else3.i2787.thread3620, %csroa.if.else3.i2787.thread3622, %csroa.if.else3.i2787.thread3626, %csroa.if.else3.i2787.thread3628, %csroa.if.else3.i2787.thread3630, %csroa.if.else3.i2787.thread3631, %csroa.if.else3.i2787.thread3635, %csroa.if.else3.i2787.thread3637, %csroa.if.else3.i2787.thread3639, %csroa.if.else3.i2787.thread3641, %csroa.if.else3.i2787.thread3643, %csroa.if.else3.i2787.thread3645, %csroa.if.else3.i2787.thread3647, %csroa.if.else3.i2787.thread3649, %csroa.if.else3.i2787.thread3651, %csroa.if.else3.i2787.thread3653, %csroa.if.else3.i2787.thread3655, %csroa.if.else3.i2787.thread3656, %csroa.if.else3.i2787.thread3654, %csroa.if.else3.i2787.thread3652, %csroa.if.else3.i2787.thread3650, %csroa.if.else3.i2787.thread3648, %csroa.if.else3.i2787.thread3646, %csroa.if.else3.i2787.thread3644, %csroa.if.else3.i2787.thread3642, %csroa.if.else3.i2787.thread3640, %csroa.if.else3.i2787.thread3638, %csroa.if.else3.i2787.thread3636, %csroa.if.else3.i2787.thread3634, %csroa.if.else3.i2787.thread3632, %csroa.if.then352.i2496, %csroa.if.then357.i2499, %csroa.if.else3.i2787.thread3629, %csroa.if.else3.i2787.thread3627, %csroa.if.else3.i2787.thread3625, %csroa.if.else3.i2787.thread3623, %csroa.if.else3.i2787.thread3621, %csroa.if.else3.i2787.thread3619, %csroa.if.else3.i2787.thread3617, %csroa.if.then272.i2448, %csroa.if.then267.i2445, %csroa.if.else3.i2787.thread3614, %csroa.if.else3.i2787.thread3612, %csroa.if.else3.i2787.thread3610, %csroa.if.else3.i2787.thread3608, %csroa.if.else3.i2787.thread3606, %csroa.if.else3.i2787.thread3604, %csroa.if.else3.i2787.thread3602, %csroa.if.else3.i2787.thread3600, %csroa.if.else3.i2787.thread3598, %csroa.if.else3.i2787.thread3596, %csroa.if.else3.i2787.thread3594, %csroa.if.else3.i2787.thread3592, %csroa.if.else3.i2787.thread3591, %csroa.if.then122.i2358, %csroa.if.then117.i2355, %csroa.if.then102.i2346, %csroa.if.then107.i2349, %csroa.if.then97.i2343, %csroa.if.else3.i2787.thread3587, %csroa.if.else3.i2787.thread3585, %csroa.if.else3.i2787.thread3583, %csroa.if.then52.i2316, %csroa.if.then47.i2313, %csroa.if.then32.i2304, %csroa.if.then27.i2301, %csroa.if.else313.i2474
  %.phi.i278033643478.ph = phi i32 [ %235, %for.body6 ], [ %232, %csroa.if.else3.i2787.thread3656 ], [ %231, %csroa.if.else3.i2787.thread3655 ], [ %230, %csroa.if.else3.i2787.thread3654 ], [ %229, %csroa.if.else3.i2787.thread3653 ], [ %228, %csroa.if.else3.i2787.thread3652 ], [ %227, %csroa.if.else3.i2787.thread3651 ], [ %226, %csroa.if.else3.i2787.thread3650 ], [ %225, %csroa.if.else3.i2787.thread3649 ], [ %224, %csroa.if.else3.i2787.thread3648 ], [ %223, %csroa.if.else3.i2787.thread3647 ], [ %222, %csroa.if.else3.i2787.thread3646 ], [ %221, %csroa.if.else3.i2787.thread3645 ], [ %220, %csroa.if.else3.i2787.thread3644 ], [ %219, %csroa.if.else3.i2787.thread3643 ], [ %218, %csroa.if.else3.i2787.thread3642 ], [ %217, %csroa.if.else3.i2787.thread3641 ], [ %216, %csroa.if.else3.i2787.thread3640 ], [ %215, %csroa.if.else3.i2787.thread3639 ], [ %214, %csroa.if.else3.i2787.thread3638 ], [ %213, %csroa.if.else3.i2787.thread3637 ], [ %212, %csroa.if.else3.i2787.thread3636 ], [ %211, %csroa.if.else3.i2787.thread3635 ], [ %210, %csroa.if.else3.i2787.thread3634 ], [ %208, %csroa.if.else3.i2787.thread3632 ], [ %207, %csroa.if.else3.i2787.thread3631 ], [ %206, %csroa.if.then357.i2499 ], [ %205, %csroa.if.then352.i2496 ], [ %204, %csroa.if.else3.i2787.thread3630 ], [ %203, %csroa.if.else3.i2787.thread3629 ], [ %202, %csroa.if.else3.i2787.thread3628 ], [ %201, %csroa.if.else3.i2787.thread3627 ], [ %200, %csroa.if.else3.i2787.thread3626 ], [ %199, %csroa.if.else3.i2787.thread3625 ], [ %293, %csroa.if.else3.i2787.thread3623 ], [ %292, %csroa.if.else3.i2787.thread3622 ], [ %291, %csroa.if.else3.i2787.thread3621 ], [ %290, %csroa.if.else3.i2787.thread3620 ], [ %289, %csroa.if.else3.i2787.thread3619 ], [ %288, %csroa.if.else3.i2787.thread3618 ], [ %287, %csroa.if.else3.i2787.thread3617 ], [ %286, %csroa.if.else3.i2787.thread3616 ], [ %285, %csroa.if.then272.i2448 ], [ %284, %csroa.if.then267.i2445 ], [ %283, %csroa.if.else3.i2787.thread3615 ], [ %282, %csroa.if.else3.i2787.thread3614 ], [ %281, %csroa.if.else3.i2787.thread3613 ], [ %280, %csroa.if.else3.i2787.thread3612 ], [ %279, %csroa.if.else3.i2787.thread3611 ], [ %278, %csroa.if.else3.i2787.thread3610 ], [ %277, %csroa.if.else3.i2787.thread3609 ], [ %276, %csroa.if.else3.i2787.thread3608 ], [ %275, %csroa.if.else3.i2787.thread3607 ], [ %274, %csroa.if.else3.i2787.thread3606 ], [ %273, %csroa.if.else3.i2787.thread3605 ], [ %272, %csroa.if.else3.i2787.thread3604 ], [ %271, %csroa.if.else3.i2787.thread3603 ], [ %270, %csroa.if.else3.i2787.thread3602 ], [ %269, %csroa.if.else3.i2787.thread3601 ], [ %268, %csroa.if.else3.i2787.thread3600 ], [ %267, %csroa.if.else3.i2787.thread3599 ], [ %266, %csroa.if.else3.i2787.thread3598 ], [ %265, %csroa.if.else3.i2787.thread3597 ], [ %264, %csroa.if.else3.i2787.thread3596 ], [ %263, %csroa.if.else3.i2787.thread3595 ], [ %262, %csroa.if.else3.i2787.thread3594 ], [ %261, %csroa.if.else3.i2787.thread3593 ], [ %260, %csroa.if.else3.i2787.thread3592 ], [ %259, %csroa.if.then142.i2370 ], [ %258, %csroa.if.then137.i2367 ], [ %257, %csroa.if.else3.i2787.thread3591 ], [ %256, %csroa.if.else3.i2787.thread3590 ], [ %255, %csroa.if.then122.i2358 ], [ %254, %csroa.if.then117.i2355 ], [ %253, %csroa.if.else3.i2787.thread3589 ], [ %252, %csroa.if.then107.i2349 ], [ %251, %csroa.if.then102.i2346 ], [ %250, %csroa.if.then97.i2343 ], [ %249, %csroa.if.else3.i2787.thread3588 ], [ %248, %csroa.if.else3.i2787.thread3587 ], [ %247, %csroa.if.else3.i2787.thread3586 ], [ %246, %csroa.if.else3.i2787.thread3585 ], [ %245, %csroa.if.else3.i2787.thread3584 ], [ %244, %csroa.if.else3.i2787.thread3583 ], [ %243, %csroa.if.then62.i2322 ], [ %242, %csroa.if.then57.i2319 ], [ %241, %csroa.if.then52.i2316 ], [ %240, %csroa.if.then47.i2313 ], [ %239, %csroa.if.then42.i2310 ], [ %238, %csroa.if.then37.i2307 ], [ %237, %csroa.if.then32.i2304 ], [ %236, %csroa.if.then27.i2301 ], [ %198, %csroa.if.else313.i2474 ]
  %.phi25.i3268.ph = phi i32 [ -1, %for.body6 ], [ 58, %csroa.if.else3.i2787.thread3656 ], [ 57, %csroa.if.else3.i2787.thread3655 ], [ 59, %csroa.if.else3.i2787.thread3654 ], [ 60, %csroa.if.else3.i2787.thread3653 ], [ 65, %csroa.if.else3.i2787.thread3652 ], [ 62, %csroa.if.else3.i2787.thread3651 ], [ 59, %csroa.if.else3.i2787.thread3650 ], [ 55, %csroa.if.else3.i2787.thread3649 ], [ 58, %csroa.if.else3.i2787.thread3648 ], [ 59, %csroa.if.else3.i2787.thread3647 ], [ 62, %csroa.if.else3.i2787.thread3646 ], [ 60, %csroa.if.else3.i2787.thread3645 ], [ 62, %csroa.if.else3.i2787.thread3644 ], [ 61, %csroa.if.else3.i2787.thread3643 ], [ 65, %csroa.if.else3.i2787.thread3642 ], [ 61, %csroa.if.else3.i2787.thread3641 ], [ 59, %csroa.if.else3.i2787.thread3640 ], [ 55, %csroa.if.else3.i2787.thread3639 ], [ 59, %csroa.if.else3.i2787.thread3638 ], [ 60, %csroa.if.else3.i2787.thread3637 ], [ 63, %csroa.if.else3.i2787.thread3636 ], [ 59, %csroa.if.else3.i2787.thread3635 ], [ 57, %csroa.if.else3.i2787.thread3634 ], [ 59, %csroa.if.else3.i2787.thread3632 ], [ 58, %csroa.if.else3.i2787.thread3631 ], [ 59, %csroa.if.then357.i2499 ], [ 59, %csroa.if.then352.i2496 ], [ 65, %csroa.if.else3.i2787.thread3630 ], [ 62, %csroa.if.else3.i2787.thread3629 ], [ 59, %csroa.if.else3.i2787.thread3628 ], [ 55, %csroa.if.else3.i2787.thread3627 ], [ 59, %csroa.if.else3.i2787.thread3626 ], [ 62, %csroa.if.else3.i2787.thread3625 ], [ %i.113, %csroa.if.else3.i2787.thread3623 ], [ %i.113, %csroa.if.else3.i2787.thread3622 ], [ 60, %csroa.if.else3.i2787.thread3621 ], [ 65, %csroa.if.else3.i2787.thread3620 ], [ 62, %csroa.if.else3.i2787.thread3619 ], [ 61, %csroa.if.else3.i2787.thread3618 ], [ 58, %csroa.if.else3.i2787.thread3617 ], [ 64, %csroa.if.else3.i2787.thread3616 ], [ 63, %csroa.if.then272.i2448 ], [ 63, %csroa.if.then267.i2445 ], [ 58, %csroa.if.else3.i2787.thread3615 ], [ 59, %csroa.if.else3.i2787.thread3614 ], [ 56, %csroa.if.else3.i2787.thread3613 ], [ 57, %csroa.if.else3.i2787.thread3612 ], [ 54, %csroa.if.else3.i2787.thread3611 ], [ 56, %csroa.if.else3.i2787.thread3610 ], [ 53, %csroa.if.else3.i2787.thread3609 ], [ 55, %csroa.if.else3.i2787.thread3608 ], [ 52, %csroa.if.else3.i2787.thread3607 ], [ 55, %csroa.if.else3.i2787.thread3606 ], [ 52, %csroa.if.else3.i2787.thread3605 ], [ 54, %csroa.if.else3.i2787.thread3604 ], [ 51, %csroa.if.else3.i2787.thread3603 ], [ 53, %csroa.if.else3.i2787.thread3602 ], [ 50, %csroa.if.else3.i2787.thread3601 ], [ 51, %csroa.if.else3.i2787.thread3600 ], [ 47, %csroa.if.else3.i2787.thread3599 ], [ 46, %csroa.if.else3.i2787.thread3598 ], [ 39, %csroa.if.else3.i2787.thread3597 ], [ 38, %csroa.if.else3.i2787.thread3596 ], [ %i.113, %csroa.if.else3.i2787.thread3595 ], [ %i.113, %csroa.if.else3.i2787.thread3594 ], [ 24, %csroa.if.else3.i2787.thread3593 ], [ 22, %csroa.if.else3.i2787.thread3592 ], [ 20, %csroa.if.then142.i2370 ], [ 20, %csroa.if.then137.i2367 ], [ 11, %csroa.if.else3.i2787.thread3591 ], [ 3, %csroa.if.else3.i2787.thread3590 ], [ 2, %csroa.if.then122.i2358 ], [ 2, %csroa.if.then117.i2355 ], [ -5, %csroa.if.else3.i2787.thread3589 ], [ 1, %csroa.if.then107.i2349 ], [ 1, %csroa.if.then102.i2346 ], [ 1, %csroa.if.then97.i2343 ], [ -4, %csroa.if.else3.i2787.thread3588 ], [ 0, %csroa.if.else3.i2787.thread3587 ], [ -2, %csroa.if.else3.i2787.thread3586 ], [ -1, %csroa.if.else3.i2787.thread3585 ], [ -2, %csroa.if.else3.i2787.thread3584 ], [ 0, %csroa.if.else3.i2787.thread3583 ], [ 1, %csroa.if.then62.i2322 ], [ 1, %csroa.if.then57.i2319 ], [ 0, %csroa.if.then52.i2316 ], [ 0, %csroa.if.then47.i2313 ], [ -1, %csroa.if.then42.i2310 ], [ -1, %csroa.if.then37.i2307 ], [ 0, %csroa.if.then32.i2304 ], [ 0, %csroa.if.then27.i2301 ], [ 66, %csroa.if.else313.i2474 ]
  %not.cmp113683 = icmp ne i32 %.phi.i278033643478.ph, %.phi25.i3268.ph
  %add133684 = zext i1 %not.cmp113683 to i32
  %main_result.2.add133685 = add nsw i32 %add133684, %main_result.214
  %inc163686 = add nuw nsw i32 %i.113, 1
  br label %for.body6.backedge

for.body6.backedge:                               ; preds = %__non_const_wrapper__.21.exit.thread, %__non_const_wrapper__.21.exit, %__non_const_wrapper__.20.exit.thread3365, %__non_const_wrapper__.21.exit.thread3373, %__non_const_wrapper__.21.exit.thread3663
  %main_result.214.be = phi i32 [ %main_result.2.add13, %__non_const_wrapper__.21.exit ], [ %main_result.2.add133369, %__non_const_wrapper__.20.exit.thread3365 ], [ %main_result.2.add133376, %__non_const_wrapper__.21.exit.thread3373 ], [ %main_result.2.add133666, %__non_const_wrapper__.21.exit.thread3663 ], [ %main_result.2.add133685, %__non_const_wrapper__.21.exit.thread ]
  %i.113.be = phi i32 [ %inc16, %__non_const_wrapper__.21.exit ], [ 1, %__non_const_wrapper__.20.exit.thread3365 ], [ %inc163377, %__non_const_wrapper__.21.exit.thread3373 ], [ %inc163667, %__non_const_wrapper__.21.exit.thread3663 ], [ %inc163686, %__non_const_wrapper__.21.exit.thread ]
  br label %for.body6

__non_const_wrapper__.21.exit:                    ; preds = %csroa.if.else313.i2474
  %main_result.2.add13 = add nsw i32 %add13, %main_result.214
  %inc16 = add nuw nsw i32 %i.113, 1
  %exitcond = icmp eq i32 %inc16, 100
  br i1 %exitcond, label %for.end17.loopexit, label %for.body6.backedge

for.end17.loopexit:                               ; preds = %__non_const_wrapper__.21.exit
  br label %for.end17

for.end17:                                        ; preds = %for.end17.loopexit, %__non_const_wrapper__.21.exit.thread3688
  %main_result.2.add133694 = phi i32 [ %main_result.2.add133691, %__non_const_wrapper__.21.exit.thread3688 ], [ %main_result.2.add13, %for.end17.loopexit ]
  %call = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %main_result.2.add133694)
  ret i32 %main_result.2.add133694
}

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #2

; Function Attrs: noinline norecurse nounwind readnone
define i32 @uppol1.v0.C.c.c(i32 %al1, i32 %apl2, i32 %plt, i32 %plt1) local_unnamed_addr #3 {
entry:
  %conv = sext i32 %al1 to i64
  %mul = mul nsw i64 %conv, 255
  %shr1 = lshr i64 %mul, 8
  %conv1 = sext i32 %plt to i64
  %conv2 = sext i32 %plt1 to i64
  %mul3 = mul nsw i64 %conv2, %conv1
  %cmp = icmp sgt i64 %mul3, -1
  %conv5 = trunc i64 %shr1 to i32
  %.sink = select i1 %cmp, i32 192, i32 -192
  %sub = add nsw i32 %.sink, %conv5
  %sub7 = sub nsw i32 15360, %apl2
  %cmp8 = icmp sgt i32 %sub, %sub7
  %sub7.sub = select i1 %cmp8, i32 %sub7, i32 %sub
  %sub12 = sub nsw i32 0, %sub7
  %cmp13 = icmp slt i32 %sub7.sub, %sub12
  %apl1.2 = select i1 %cmp13, i32 %sub12, i32 %sub7.sub
  ret i32 %apl1.2
}

; Function Attrs: noinline norecurse nounwind
define void @decode.v0.C.c.c(i32 %input) local_unnamed_addr #4 {
entry:
  %and = and i32 %input, 63
  store i32 %and, i32* @ilr, align 4
  %shr = ashr i32 %input, 6
  store i32 %shr, i32* @ih, align 4
  %call.c.c = tail call i32 @filtez.v0.C.c.c(i32* getelementptr inbounds ([6 x i32], [6 x i32]* @dec_del_bpl, i64 0, i64 0), i32* getelementptr inbounds ([6 x i32], [6 x i32]* @dec_del_dltx, i64 0, i64 0))
  store i32 %call.c.c, i32* @dec_szl, align 4
  %0 = load i32, i32* @dec_rlt1, align 4
  %1 = load i32, i32* @dec_al1, align 4
  %2 = load i32, i32* @dec_rlt2, align 4
  %3 = load i32, i32* @dec_al2, align 4
  %call1.c.c = tail call i32 @filtep.v0.C.c.c(i32 %0, i32 %1, i32 %2, i32 %3)
  store i32 %call1.c.c, i32* @dec_spl, align 4
  %add = add nsw i32 %call1.c.c, %call.c.c
  store i32 %add, i32* @dec_sl, align 4
  %4 = load i32, i32* @dec_detl, align 4
  %conv = sext i32 %4 to i64
  %shr225 = lshr i32 %input, 2
  %trunc = trunc i32 %shr225 to i4
  switch i4 %trunc, label %csroa.if.end74.i [
    i4 0, label %__non_const_wrapper__.exit
    i4 1, label %csroa.if.end4.i
    i4 2, label %csroa.if.end9.i
    i4 3, label %csroa.if.end14.i
    i4 4, label %csroa.if.end19.i
    i4 5, label %csroa.if.end24.i
    i4 6, label %csroa.if.end29.i
    i4 7, label %csroa.if.end34.i
    i4 -8, label %csroa.if.end39.i
    i4 -7, label %csroa.if.end44.i
    i4 -6, label %csroa.if.end49.i
    i4 -5, label %csroa.if.end54.i
    i4 -4, label %csroa.if.end59.i
    i4 -3, label %csroa.if.end64.i
    i4 -2, label %csroa.if.end69.i
  ]

csroa.if.end74.i:                                 ; preds = %entry
  br label %csroa.if.end69.i

csroa.if.end69.i:                                 ; preds = %entry, %csroa.if.end74.i
  %.phi70.i = phi i64 [ 0, %csroa.if.end74.i ], [ 5153960755200, %entry ]
  br label %csroa.if.end64.i

csroa.if.end64.i:                                 ; preds = %entry, %csroa.if.end69.i
  %.phi65.i = phi i64 [ %.phi70.i, %csroa.if.end69.i ], [ 11098195492864, %entry ]
  br label %csroa.if.end59.i

csroa.if.end59.i:                                 ; preds = %entry, %csroa.if.end64.i
  %.phi60.i = phi i64 [ %.phi65.i, %csroa.if.end64.i ], [ 18210661335040, %entry ]
  br label %csroa.if.end54.i

csroa.if.end54.i:                                 ; preds = %entry, %csroa.if.end59.i
  %.phi55.i = phi i64 [ %.phi60.i, %csroa.if.end59.i ], [ 27006754357248, %entry ]
  br label %csroa.if.end49.i

csroa.if.end49.i:                                 ; preds = %entry, %csroa.if.end54.i
  %.phi50.i = phi i64 [ %.phi55.i, %csroa.if.end54.i ], [ 38517266710528, %entry ]
  br label %csroa.if.end44.i

csroa.if.end44.i:                                 ; preds = %entry, %csroa.if.end49.i
  %.phi45.i = phi i64 [ %.phi50.i, %csroa.if.end49.i ], [ 55387898249216, %entry ]
  br label %csroa.if.end39.i

csroa.if.end39.i:                                 ; preds = %entry, %csroa.if.end44.i
  %.phi40.i = phi i64 [ %.phi45.i, %csroa.if.end44.i ], [ 87857851006976, %entry ]
  br label %csroa.if.end34.i

csroa.if.end34.i:                                 ; preds = %entry, %csroa.if.end39.i
  %.phi35.i = phi i64 [ %.phi40.i, %csroa.if.end39.i ], [ -5153960755200, %entry ]
  br label %csroa.if.end29.i

csroa.if.end29.i:                                 ; preds = %entry, %csroa.if.end34.i
  %.phi30.i = phi i64 [ %.phi35.i, %csroa.if.end34.i ], [ -11098195492864, %entry ]
  br label %csroa.if.end24.i

csroa.if.end24.i:                                 ; preds = %entry, %csroa.if.end29.i
  %.phi25.i = phi i64 [ %.phi30.i, %csroa.if.end29.i ], [ -18210661335040, %entry ]
  br label %csroa.if.end19.i

csroa.if.end19.i:                                 ; preds = %entry, %csroa.if.end24.i
  %.phi20.i = phi i64 [ %.phi25.i, %csroa.if.end24.i ], [ -27006754357248, %entry ]
  br label %csroa.if.end14.i

csroa.if.end14.i:                                 ; preds = %entry, %csroa.if.end19.i
  %.phi15.i = phi i64 [ %.phi20.i, %csroa.if.end19.i ], [ -38517266710528, %entry ]
  br label %csroa.if.end9.i

csroa.if.end9.i:                                  ; preds = %entry, %csroa.if.end14.i
  %.phi10.i = phi i64 [ %.phi15.i, %csroa.if.end14.i ], [ -55387898249216, %entry ]
  br label %csroa.if.end4.i

csroa.if.end4.i:                                  ; preds = %entry, %csroa.if.end9.i
  %.phi5.i = phi i64 [ %.phi10.i, %csroa.if.end9.i ], [ -87857851006976, %entry ]
  br label %__non_const_wrapper__.exit

__non_const_wrapper__.exit:                       ; preds = %entry, %csroa.if.end4.i
  %.phi.i = phi i64 [ %.phi5.i, %csroa.if.end4.i ], [ 0, %entry ]
  %conv3 = ashr exact i64 %.phi.i, 32
  %mul = mul nsw i64 %conv3, %conv
  %shr41 = lshr i64 %mul, 15
  %conv5 = trunc i64 %shr41 to i32
  store i32 %conv5, i32* @dec_dlt, align 4
  %5 = load i32, i32* @il, align 4
  switch i32 %5, label %csroa.if.end314.i [
    i32 0, label %__non_const_wrapper__.15.exit
    i32 1, label %__non_const_wrapper__.15.exit
    i32 2, label %__non_const_wrapper__.15.exit
    i32 3, label %__non_const_wrapper__.15.exit
    i32 4, label %csroa.if.end19.i96
    i32 5, label %csroa.if.end24.i94
    i32 6, label %csroa.if.end29.i92
    i32 7, label %csroa.if.end34.i90
    i32 8, label %csroa.if.end39.i88
    i32 9, label %csroa.if.end44.i86
    i32 10, label %csroa.if.end49.i84
    i32 11, label %csroa.if.end54.i82
    i32 12, label %csroa.if.end59.i80
    i32 13, label %csroa.if.end64.i78
    i32 14, label %csroa.if.end69.i76
    i32 15, label %csroa.if.end74.i74
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
    i32 35, label %csroa.if.end174.i
    i32 36, label %csroa.if.end179.i
    i32 37, label %csroa.if.end184.i
    i32 38, label %csroa.if.end189.i
    i32 39, label %csroa.if.end194.i
    i32 40, label %csroa.if.end199.i
    i32 41, label %csroa.if.end204.i
    i32 42, label %csroa.if.end209.i
    i32 43, label %csroa.if.end214.i
    i32 44, label %csroa.if.end219.i
    i32 45, label %csroa.if.end224.i
    i32 46, label %csroa.if.end229.i
    i32 47, label %csroa.if.end234.i
    i32 48, label %csroa.if.end239.i
    i32 49, label %csroa.if.end244.i
    i32 50, label %csroa.if.end249.i
    i32 51, label %csroa.if.end254.i
    i32 52, label %csroa.if.end259.i
    i32 53, label %csroa.if.end264.i
    i32 54, label %csroa.if.end269.i
    i32 55, label %csroa.if.end274.i
    i32 56, label %csroa.if.end279.i
    i32 57, label %csroa.if.end284.i
    i32 58, label %csroa.if.end289.i
    i32 59, label %csroa.if.end294.i
    i32 60, label %csroa.if.end299.i
    i32 61, label %csroa.if.end304.i
    i32 62, label %csroa.if.end309.i
  ]

csroa.if.end314.i:                                ; preds = %__non_const_wrapper__.exit
  br label %csroa.if.end309.i

csroa.if.end309.i:                                ; preds = %__non_const_wrapper__.exit, %csroa.if.end314.i
  %.phi310.i = phi i64 [ -584115552256, %csroa.if.end314.i ], [ -1855425871872, %__non_const_wrapper__.exit ]
  br label %csroa.if.end304.i

csroa.if.end304.i:                                ; preds = %__non_const_wrapper__.exit, %csroa.if.end309.i
  %.phi305.i = phi i64 [ %.phi310.i, %csroa.if.end309.i ], [ 584115552256, %__non_const_wrapper__.exit ]
  br label %csroa.if.end299.i

csroa.if.end299.i:                                ; preds = %__non_const_wrapper__.exit, %csroa.if.end304.i
  %.phi300.i = phi i64 [ %.phi305.i, %csroa.if.end304.i ], [ 1855425871872, %__non_const_wrapper__.exit ]
  br label %csroa.if.end294.i

csroa.if.end294.i:                                ; preds = %__non_const_wrapper__.exit, %csroa.if.end299.i
  %.phi295.i = phi i64 [ %.phi300.i, %csroa.if.end299.i ], [ 3126736191488, %__non_const_wrapper__.exit ]
  br label %csroa.if.end289.i

csroa.if.end289.i:                                ; preds = %__non_const_wrapper__.exit, %csroa.if.end294.i
  %.phi290.i = phi i64 [ %.phi295.i, %csroa.if.end294.i ], [ 4466765987840, %__non_const_wrapper__.exit ]
  br label %csroa.if.end284.i

csroa.if.end284.i:                                ; preds = %__non_const_wrapper__.exit, %csroa.if.end289.i
  %.phi285.i = phi i64 [ %.phi290.i, %csroa.if.end289.i ], [ 5841155522560, %__non_const_wrapper__.exit ]
  br label %csroa.if.end279.i

csroa.if.end279.i:                                ; preds = %__non_const_wrapper__.exit, %csroa.if.end284.i
  %.phi280.i = phi i64 [ %.phi285.i, %csroa.if.end284.i ], [ 7249904795648, %__non_const_wrapper__.exit ]
  br label %csroa.if.end274.i

csroa.if.end274.i:                                ; preds = %__non_const_wrapper__.exit, %csroa.if.end279.i
  %.phi275.i = phi i64 [ %.phi280.i, %csroa.if.end279.i ], [ 8727373545472, %__non_const_wrapper__.exit ]
  br label %csroa.if.end269.i

csroa.if.end269.i:                                ; preds = %__non_const_wrapper__.exit, %csroa.if.end274.i
  %.phi270.i = phi i64 [ %.phi275.i, %csroa.if.end274.i ], [ 10307921510400, %__non_const_wrapper__.exit ]
  br label %csroa.if.end264.i

csroa.if.end264.i:                                ; preds = %__non_const_wrapper__.exit, %csroa.if.end269.i
  %.phi265.i = phi i64 [ %.phi270.i, %csroa.if.end269.i ], [ 11922829213696, %__non_const_wrapper__.exit ]
  br label %csroa.if.end259.i

csroa.if.end259.i:                                ; preds = %__non_const_wrapper__.exit, %csroa.if.end264.i
  %.phi260.i = phi i64 [ %.phi265.i, %csroa.if.end264.i ], [ 13606456393728, %__non_const_wrapper__.exit ]
  br label %csroa.if.end254.i

csroa.if.end254.i:                                ; preds = %__non_const_wrapper__.exit, %csroa.if.end259.i
  %.phi255.i = phi i64 [ %.phi260.i, %csroa.if.end259.i ], [ 15358803050496, %__non_const_wrapper__.exit ]
  br label %csroa.if.end249.i

csroa.if.end249.i:                                ; preds = %__non_const_wrapper__.exit, %csroa.if.end254.i
  %.phi250.i = phi i64 [ %.phi255.i, %csroa.if.end254.i ], [ 17214228922368, %__non_const_wrapper__.exit ]
  br label %csroa.if.end244.i

csroa.if.end244.i:                                ; preds = %__non_const_wrapper__.exit, %csroa.if.end249.i
  %.phi245.i = phi i64 [ %.phi250.i, %csroa.if.end249.i ], [ 19172734009344, %__non_const_wrapper__.exit ]
  br label %csroa.if.end239.i

csroa.if.end239.i:                                ; preds = %__non_const_wrapper__.exit, %csroa.if.end244.i
  %.phi240.i = phi i64 [ %.phi245.i, %csroa.if.end244.i ], [ 21234318311424, %__non_const_wrapper__.exit ]
  br label %csroa.if.end234.i

csroa.if.end234.i:                                ; preds = %__non_const_wrapper__.exit, %csroa.if.end239.i
  %.phi235.i = phi i64 [ %.phi240.i, %csroa.if.end239.i ], [ 23433341566976, %__non_const_wrapper__.exit ]
  br label %csroa.if.end229.i

csroa.if.end229.i:                                ; preds = %__non_const_wrapper__.exit, %csroa.if.end234.i
  %.phi230.i = phi i64 [ %.phi235.i, %csroa.if.end234.i ], [ 25769803776000, %__non_const_wrapper__.exit ]
  br label %csroa.if.end224.i

csroa.if.end224.i:                                ; preds = %__non_const_wrapper__.exit, %csroa.if.end229.i
  %.phi225.i = phi i64 [ %.phi230.i, %csroa.if.end229.i ], [ 28243704938496, %__non_const_wrapper__.exit ]
  br label %csroa.if.end219.i

csroa.if.end219.i:                                ; preds = %__non_const_wrapper__.exit, %csroa.if.end224.i
  %.phi220.i = phi i64 [ %.phi225.i, %csroa.if.end224.i ], [ 30889404792832, %__non_const_wrapper__.exit ]
  br label %csroa.if.end214.i

csroa.if.end214.i:                                ; preds = %__non_const_wrapper__.exit, %csroa.if.end219.i
  %.phi215.i = phi i64 [ %.phi220.i, %csroa.if.end219.i ], [ 33741263077376, %__non_const_wrapper__.exit ]
  br label %csroa.if.end209.i

csroa.if.end209.i:                                ; preds = %__non_const_wrapper__.exit, %csroa.if.end214.i
  %.phi210.i = phi i64 [ %.phi215.i, %csroa.if.end214.i ], [ 36833639530496, %__non_const_wrapper__.exit ]
  br label %csroa.if.end204.i

csroa.if.end204.i:                                ; preds = %__non_const_wrapper__.exit, %csroa.if.end209.i
  %.phi205.i = phi i64 [ %.phi210.i, %csroa.if.end209.i ], [ 40200893890560, %__non_const_wrapper__.exit ]
  br label %csroa.if.end199.i

csroa.if.end199.i:                                ; preds = %__non_const_wrapper__.exit, %csroa.if.end204.i
  %.phi200.i = phi i64 [ %.phi205.i, %csroa.if.end204.i ], [ 43946105372672, %__non_const_wrapper__.exit ]
  br label %csroa.if.end194.i

csroa.if.end194.i:                                ; preds = %__non_const_wrapper__.exit, %csroa.if.end199.i
  %.phi195.i = phi i64 [ %.phi200.i, %csroa.if.end199.i ], [ 48069273976832, %__non_const_wrapper__.exit ]
  br label %csroa.if.end189.i

csroa.if.end189.i:                                ; preds = %__non_const_wrapper__.exit, %csroa.if.end194.i
  %.phi190.i = phi i64 [ %.phi195.i, %csroa.if.end194.i ], [ 52742198394880, %__non_const_wrapper__.exit ]
  br label %csroa.if.end184.i

csroa.if.end184.i:                                ; preds = %__non_const_wrapper__.exit, %csroa.if.end189.i
  %.phi185.i = phi i64 [ %.phi190.i, %csroa.if.end189.i ], [ 58033598103552, %__non_const_wrapper__.exit ]
  br label %csroa.if.end179.i

csroa.if.end179.i:                                ; preds = %__non_const_wrapper__.exit, %csroa.if.end184.i
  %.phi180.i = phi i64 [ %.phi185.i, %csroa.if.end184.i ], [ 64355789963264, %__non_const_wrapper__.exit ]
  br label %csroa.if.end174.i

csroa.if.end174.i:                                ; preds = %__non_const_wrapper__.exit, %csroa.if.end179.i
  %.phi175.i = phi i64 [ %.phi180.i, %csroa.if.end179.i ], [ 71743133712384, %__non_const_wrapper__.exit ]
  br label %csroa.if.end169.i

csroa.if.end169.i:                                ; preds = %__non_const_wrapper__.exit, %csroa.if.end174.i
  %.phi170.i = phi i64 [ %.phi175.i, %csroa.if.end174.i ], [ 81638738362368, %__non_const_wrapper__.exit ]
  br label %csroa.if.end164.i

csroa.if.end164.i:                                ; preds = %__non_const_wrapper__.exit, %csroa.if.end169.i
  %.phi165.i = phi i64 [ %.phi170.i, %csroa.if.end169.i ], [ 94076963651584, %__non_const_wrapper__.exit ]
  br label %csroa.if.end159.i

csroa.if.end159.i:                                ; preds = %__non_const_wrapper__.exit, %csroa.if.end164.i
  %.phi160.i = phi i64 [ %.phi165.i, %csroa.if.end164.i ], [ 106549548679168, %__non_const_wrapper__.exit ]
  br label %csroa.if.end154.i

csroa.if.end154.i:                                ; preds = %__non_const_wrapper__.exit, %csroa.if.end159.i
  %.phi155.i = phi i64 [ %.phi160.i, %csroa.if.end159.i ], [ -3126736191488, %__non_const_wrapper__.exit ]
  br label %csroa.if.end149.i

csroa.if.end149.i:                                ; preds = %__non_const_wrapper__.exit, %csroa.if.end154.i
  %.phi150.i = phi i64 [ %.phi155.i, %csroa.if.end154.i ], [ -4466765987840, %__non_const_wrapper__.exit ]
  br label %csroa.if.end144.i

csroa.if.end144.i:                                ; preds = %__non_const_wrapper__.exit, %csroa.if.end149.i
  %.phi145.i = phi i64 [ %.phi150.i, %csroa.if.end149.i ], [ -5841155522560, %__non_const_wrapper__.exit ]
  br label %csroa.if.end139.i

csroa.if.end139.i:                                ; preds = %__non_const_wrapper__.exit, %csroa.if.end144.i
  %.phi140.i = phi i64 [ %.phi145.i, %csroa.if.end144.i ], [ -7249904795648, %__non_const_wrapper__.exit ]
  br label %csroa.if.end134.i

csroa.if.end134.i:                                ; preds = %__non_const_wrapper__.exit, %csroa.if.end139.i
  %.phi135.i = phi i64 [ %.phi140.i, %csroa.if.end139.i ], [ -8727373545472, %__non_const_wrapper__.exit ]
  br label %csroa.if.end129.i

csroa.if.end129.i:                                ; preds = %__non_const_wrapper__.exit, %csroa.if.end134.i
  %.phi130.i = phi i64 [ %.phi135.i, %csroa.if.end134.i ], [ -10307921510400, %__non_const_wrapper__.exit ]
  br label %csroa.if.end124.i

csroa.if.end124.i:                                ; preds = %__non_const_wrapper__.exit, %csroa.if.end129.i
  %.phi125.i = phi i64 [ %.phi130.i, %csroa.if.end129.i ], [ -11922829213696, %__non_const_wrapper__.exit ]
  br label %csroa.if.end119.i

csroa.if.end119.i:                                ; preds = %__non_const_wrapper__.exit, %csroa.if.end124.i
  %.phi120.i = phi i64 [ %.phi125.i, %csroa.if.end124.i ], [ -13606456393728, %__non_const_wrapper__.exit ]
  br label %csroa.if.end114.i

csroa.if.end114.i:                                ; preds = %__non_const_wrapper__.exit, %csroa.if.end119.i
  %.phi115.i = phi i64 [ %.phi120.i, %csroa.if.end119.i ], [ -15358803050496, %__non_const_wrapper__.exit ]
  br label %csroa.if.end109.i

csroa.if.end109.i:                                ; preds = %__non_const_wrapper__.exit, %csroa.if.end114.i
  %.phi110.i = phi i64 [ %.phi115.i, %csroa.if.end114.i ], [ -17214228922368, %__non_const_wrapper__.exit ]
  br label %csroa.if.end104.i

csroa.if.end104.i:                                ; preds = %__non_const_wrapper__.exit, %csroa.if.end109.i
  %.phi105.i = phi i64 [ %.phi110.i, %csroa.if.end109.i ], [ -19172734009344, %__non_const_wrapper__.exit ]
  br label %csroa.if.end99.i

csroa.if.end99.i:                                 ; preds = %__non_const_wrapper__.exit, %csroa.if.end104.i
  %.phi100.i = phi i64 [ %.phi105.i, %csroa.if.end104.i ], [ -21234318311424, %__non_const_wrapper__.exit ]
  br label %csroa.if.end94.i

csroa.if.end94.i:                                 ; preds = %__non_const_wrapper__.exit, %csroa.if.end99.i
  %.phi95.i = phi i64 [ %.phi100.i, %csroa.if.end99.i ], [ -23433341566976, %__non_const_wrapper__.exit ]
  br label %csroa.if.end89.i

csroa.if.end89.i:                                 ; preds = %__non_const_wrapper__.exit, %csroa.if.end94.i
  %.phi90.i = phi i64 [ %.phi95.i, %csroa.if.end94.i ], [ -25769803776000, %__non_const_wrapper__.exit ]
  br label %csroa.if.end84.i

csroa.if.end84.i:                                 ; preds = %__non_const_wrapper__.exit, %csroa.if.end89.i
  %.phi85.i = phi i64 [ %.phi90.i, %csroa.if.end89.i ], [ -28243704938496, %__non_const_wrapper__.exit ]
  br label %csroa.if.end79.i

csroa.if.end79.i:                                 ; preds = %__non_const_wrapper__.exit, %csroa.if.end84.i
  %.phi80.i = phi i64 [ %.phi85.i, %csroa.if.end84.i ], [ -30889404792832, %__non_const_wrapper__.exit ]
  br label %csroa.if.end74.i74

csroa.if.end74.i74:                               ; preds = %__non_const_wrapper__.exit, %csroa.if.end79.i
  %.phi75.i = phi i64 [ %.phi80.i, %csroa.if.end79.i ], [ -33741263077376, %__non_const_wrapper__.exit ]
  br label %csroa.if.end69.i76

csroa.if.end69.i76:                               ; preds = %__non_const_wrapper__.exit, %csroa.if.end74.i74
  %.phi70.i75 = phi i64 [ %.phi75.i, %csroa.if.end74.i74 ], [ -36833639530496, %__non_const_wrapper__.exit ]
  br label %csroa.if.end64.i78

csroa.if.end64.i78:                               ; preds = %__non_const_wrapper__.exit, %csroa.if.end69.i76
  %.phi65.i77 = phi i64 [ %.phi70.i75, %csroa.if.end69.i76 ], [ -40200893890560, %__non_const_wrapper__.exit ]
  br label %csroa.if.end59.i80

csroa.if.end59.i80:                               ; preds = %__non_const_wrapper__.exit, %csroa.if.end64.i78
  %.phi60.i79 = phi i64 [ %.phi65.i77, %csroa.if.end64.i78 ], [ -43946105372672, %__non_const_wrapper__.exit ]
  br label %csroa.if.end54.i82

csroa.if.end54.i82:                               ; preds = %__non_const_wrapper__.exit, %csroa.if.end59.i80
  %.phi55.i81 = phi i64 [ %.phi60.i79, %csroa.if.end59.i80 ], [ -48069273976832, %__non_const_wrapper__.exit ]
  br label %csroa.if.end49.i84

csroa.if.end49.i84:                               ; preds = %__non_const_wrapper__.exit, %csroa.if.end54.i82
  %.phi50.i83 = phi i64 [ %.phi55.i81, %csroa.if.end54.i82 ], [ -52742198394880, %__non_const_wrapper__.exit ]
  br label %csroa.if.end44.i86

csroa.if.end44.i86:                               ; preds = %__non_const_wrapper__.exit, %csroa.if.end49.i84
  %.phi45.i85 = phi i64 [ %.phi50.i83, %csroa.if.end49.i84 ], [ -58033598103552, %__non_const_wrapper__.exit ]
  br label %csroa.if.end39.i88

csroa.if.end39.i88:                               ; preds = %__non_const_wrapper__.exit, %csroa.if.end44.i86
  %.phi40.i87 = phi i64 [ %.phi45.i85, %csroa.if.end44.i86 ], [ -64355789963264, %__non_const_wrapper__.exit ]
  br label %csroa.if.end34.i90

csroa.if.end34.i90:                               ; preds = %__non_const_wrapper__.exit, %csroa.if.end39.i88
  %.phi35.i89 = phi i64 [ %.phi40.i87, %csroa.if.end39.i88 ], [ -71743133712384, %__non_const_wrapper__.exit ]
  br label %csroa.if.end29.i92

csroa.if.end29.i92:                               ; preds = %__non_const_wrapper__.exit, %csroa.if.end34.i90
  %.phi30.i91 = phi i64 [ %.phi35.i89, %csroa.if.end34.i90 ], [ -81638738362368, %__non_const_wrapper__.exit ]
  br label %csroa.if.end24.i94

csroa.if.end24.i94:                               ; preds = %__non_const_wrapper__.exit, %csroa.if.end29.i92
  %.phi25.i93 = phi i64 [ %.phi30.i91, %csroa.if.end29.i92 ], [ -94076963651584, %__non_const_wrapper__.exit ]
  br label %csroa.if.end19.i96

csroa.if.end19.i96:                               ; preds = %__non_const_wrapper__.exit, %csroa.if.end24.i94
  %.phi20.i95 = phi i64 [ %.phi25.i93, %csroa.if.end24.i94 ], [ -106549548679168, %__non_const_wrapper__.exit ]
  br label %__non_const_wrapper__.15.exit

__non_const_wrapper__.15.exit:                    ; preds = %__non_const_wrapper__.exit, %csroa.if.end19.i96, %__non_const_wrapper__.exit, %__non_const_wrapper__.exit, %__non_const_wrapper__.exit
  %.phi.i103 = phi i64 [ -584115552256, %__non_const_wrapper__.exit ], [ -584115552256, %__non_const_wrapper__.exit ], [ -584115552256, %__non_const_wrapper__.exit ], [ %.phi20.i95, %csroa.if.end19.i96 ], [ -584115552256, %__non_const_wrapper__.exit ]
  %conv9 = ashr exact i64 %.phi.i103, 32
  %mul10 = mul nsw i64 %conv9, %conv
  %shr112 = lshr i64 %mul10, 15
  %conv12 = trunc i64 %shr112 to i32
  store i32 %conv12, i32* @dl, align 4
  %add13 = add nsw i32 %conv12, %add
  store i32 %add13, i32* @rl, align 4
  %6 = load i32, i32* @dec_nbl, align 4
  %conv.i = sext i32 %6 to i64
  %mul.i = mul nsw i64 %conv.i, 127
  %shr1.i = lshr i64 %mul.i, 7
  %conv1.i = trunc i64 %shr1.i to i32
  switch i4 %trunc, label %csroa.if.end74.i152 [
    i4 0, label %__non_const_wrapper__.24.exit
    i4 1, label %csroa.if.end4.i180
    i4 2, label %csroa.if.end9.i178
    i4 3, label %csroa.if.end14.i176
    i4 4, label %csroa.if.end19.i174
    i4 5, label %csroa.if.end24.i172
    i4 6, label %csroa.if.end29.i170
    i4 7, label %csroa.if.end34.i168
    i4 -8, label %csroa.if.end39.i166
    i4 -7, label %csroa.if.end44.i164
    i4 -6, label %csroa.if.end49.i162
    i4 -5, label %csroa.if.end54.i160
    i4 -4, label %csroa.if.end59.i158
    i4 -3, label %csroa.if.end64.i156
    i4 -2, label %csroa.if.end69.i154
  ]

csroa.if.end74.i152:                              ; preds = %__non_const_wrapper__.15.exit
  br label %csroa.if.end69.i154

csroa.if.end69.i154:                              ; preds = %__non_const_wrapper__.15.exit, %csroa.if.end74.i152
  %.phi70.i153 = phi i32 [ -60, %csroa.if.end74.i152 ], [ -30, %__non_const_wrapper__.15.exit ]
  br label %csroa.if.end64.i156

csroa.if.end64.i156:                              ; preds = %__non_const_wrapper__.15.exit, %csroa.if.end69.i154
  %.phi65.i155 = phi i32 [ %.phi70.i153, %csroa.if.end69.i154 ], [ 58, %__non_const_wrapper__.15.exit ]
  br label %csroa.if.end59.i158

csroa.if.end59.i158:                              ; preds = %__non_const_wrapper__.15.exit, %csroa.if.end64.i156
  %.phi60.i157 = phi i32 [ %.phi65.i155, %csroa.if.end64.i156 ], [ 172, %__non_const_wrapper__.15.exit ]
  br label %csroa.if.end54.i160

csroa.if.end54.i160:                              ; preds = %__non_const_wrapper__.15.exit, %csroa.if.end59.i158
  %.phi55.i159 = phi i32 [ %.phi60.i157, %csroa.if.end59.i158 ], [ 334, %__non_const_wrapper__.15.exit ]
  br label %csroa.if.end49.i162

csroa.if.end49.i162:                              ; preds = %__non_const_wrapper__.15.exit, %csroa.if.end54.i160
  %.phi50.i161 = phi i32 [ %.phi55.i159, %csroa.if.end54.i160 ], [ 538, %__non_const_wrapper__.15.exit ]
  br label %csroa.if.end44.i164

csroa.if.end44.i164:                              ; preds = %__non_const_wrapper__.15.exit, %csroa.if.end49.i162
  %.phi45.i163 = phi i32 [ %.phi50.i161, %csroa.if.end49.i162 ], [ 1198, %__non_const_wrapper__.15.exit ]
  br label %csroa.if.end39.i166

csroa.if.end39.i166:                              ; preds = %__non_const_wrapper__.15.exit, %csroa.if.end44.i164
  %.phi40.i165 = phi i32 [ %.phi45.i163, %csroa.if.end44.i164 ], [ 3042, %__non_const_wrapper__.15.exit ]
  br label %csroa.if.end34.i168

csroa.if.end34.i168:                              ; preds = %__non_const_wrapper__.15.exit, %csroa.if.end39.i166
  %.phi35.i167 = phi i32 [ %.phi40.i165, %csroa.if.end39.i166 ], [ -30, %__non_const_wrapper__.15.exit ]
  br label %csroa.if.end29.i170

csroa.if.end29.i170:                              ; preds = %__non_const_wrapper__.15.exit, %csroa.if.end34.i168
  %.phi30.i169 = phi i32 [ %.phi35.i167, %csroa.if.end34.i168 ], [ 58, %__non_const_wrapper__.15.exit ]
  br label %csroa.if.end24.i172

csroa.if.end24.i172:                              ; preds = %__non_const_wrapper__.15.exit, %csroa.if.end29.i170
  %.phi25.i171 = phi i32 [ %.phi30.i169, %csroa.if.end29.i170 ], [ 172, %__non_const_wrapper__.15.exit ]
  br label %csroa.if.end19.i174

csroa.if.end19.i174:                              ; preds = %__non_const_wrapper__.15.exit, %csroa.if.end24.i172
  %.phi20.i173 = phi i32 [ %.phi25.i171, %csroa.if.end24.i172 ], [ 334, %__non_const_wrapper__.15.exit ]
  br label %csroa.if.end14.i176

csroa.if.end14.i176:                              ; preds = %__non_const_wrapper__.15.exit, %csroa.if.end19.i174
  %.phi15.i175 = phi i32 [ %.phi20.i173, %csroa.if.end19.i174 ], [ 538, %__non_const_wrapper__.15.exit ]
  br label %csroa.if.end9.i178

csroa.if.end9.i178:                               ; preds = %__non_const_wrapper__.15.exit, %csroa.if.end14.i176
  %.phi10.i177 = phi i32 [ %.phi15.i175, %csroa.if.end14.i176 ], [ 1198, %__non_const_wrapper__.15.exit ]
  br label %csroa.if.end4.i180

csroa.if.end4.i180:                               ; preds = %__non_const_wrapper__.15.exit, %csroa.if.end9.i178
  %.phi5.i179 = phi i32 [ %.phi10.i177, %csroa.if.end9.i178 ], [ 3042, %__non_const_wrapper__.15.exit ]
  br label %__non_const_wrapper__.24.exit

__non_const_wrapper__.24.exit:                    ; preds = %__non_const_wrapper__.15.exit, %csroa.if.end4.i180
  %.phi.i181 = phi i32 [ %.phi5.i179, %csroa.if.end4.i180 ], [ -60, %__non_const_wrapper__.15.exit ]
  %add.i = add nsw i32 %.phi.i181, %conv1.i
  %7 = icmp sgt i32 %add.i, 0
  %.add.i = select i1 %7, i32 %add.i, i32 0
  %8 = icmp slt i32 %.add.i, 18432
  %nbl.addr.1.i = select i1 %8, i32 %.add.i, i32 18432
  store i32 %nbl.addr.1.i, i32* @dec_nbl, align 4
  %call15.c.c = tail call i32 @scalel.v0.C.c.c(i32 %nbl.addr.1.i, i32 8)
  store i32 %call15.c.c, i32* @dec_detl, align 4
  %add16 = add nsw i32 %conv5, %call.c.c
  store i32 %add16, i32* @dec_plt, align 4
  tail call void @upzero.v0.C.c.c(i32 %conv5, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @dec_del_dltx, i64 0, i64 0), i32* getelementptr inbounds ([6 x i32], [6 x i32]* @dec_del_bpl, i64 0, i64 0))
  %9 = load i32, i32* @dec_al1, align 4
  %10 = load i32, i32* @dec_al2, align 4
  %11 = load i32, i32* @dec_plt, align 4
  %12 = load i32, i32* @dec_plt1, align 4
  %13 = load i32, i32* @dec_plt2, align 4
  %call17.c.c = tail call i32 @uppol2.v0.C.c.c(i32 %9, i32 %10, i32 %11, i32 %12, i32 %13)
  store i32 %call17.c.c, i32* @dec_al2, align 4
  %call18.c.c = tail call i32 @uppol1.v0.C.c.c(i32 %9, i32 %call17.c.c, i32 %11, i32 %12)
  store i32 %call18.c.c, i32* @dec_al1, align 4
  %14 = load i32, i32* @dec_sl, align 4
  %15 = load i32, i32* @dec_dlt, align 4
  %add19 = add nsw i32 %15, %14
  store i32 %add19, i32* @dec_rlt, align 4
  %16 = load i32, i32* @dec_rlt1, align 4
  store i32 %16, i32* @dec_rlt2, align 4
  store i32 %add19, i32* @dec_rlt1, align 4
  store i32 %12, i32* @dec_plt2, align 4
  store i32 %11, i32* @dec_plt1, align 4
  %call20.c.c = tail call i32 @filtez.v0.C.c.c(i32* getelementptr inbounds ([6 x i32], [6 x i32]* @dec_del_bph, i64 0, i64 0), i32* getelementptr inbounds ([6 x i32], [6 x i32]* @dec_del_dhx, i64 0, i64 0))
  store i32 %call20.c.c, i32* @dec_szh, align 4
  %17 = load i32, i32* @dec_rh1, align 4
  %18 = load i32, i32* @dec_ah1, align 4
  %19 = load i32, i32* @dec_rh2, align 4
  %20 = load i32, i32* @dec_ah2, align 4
  %call21.c.c = tail call i32 @filtep.v0.C.c.c(i32 %17, i32 %18, i32 %19, i32 %20)
  store i32 %call21.c.c, i32* @dec_sph, align 4
  %add22 = add nsw i32 %call21.c.c, %call20.c.c
  store i32 %add22, i32* @dec_sh, align 4
  %21 = load i32, i32* @dec_deth, align 4
  %conv23 = sext i32 %21 to i64
  %22 = load i32, i32* @ih, align 4
  switch i32 %22, label %__non_const_wrapper__.16.exit [
    i32 0, label %__non_const_wrapper__.16.exit.thread
    i32 1, label %__non_const_wrapper__.17.exit
    i32 2, label %__non_const_wrapper__.16.exit.thread22
  ]

__non_const_wrapper__.16.exit.thread22:           ; preds = %__non_const_wrapper__.24.exit
  br label %__non_const_wrapper__.17.exit

__non_const_wrapper__.16.exit.thread:             ; preds = %__non_const_wrapper__.24.exit
  br label %__non_const_wrapper__.17.exit

__non_const_wrapper__.16.exit:                    ; preds = %__non_const_wrapper__.24.exit
  br label %__non_const_wrapper__.17.exit

__non_const_wrapper__.17.exit:                    ; preds = %__non_const_wrapper__.24.exit, %__non_const_wrapper__.16.exit.thread22, %__non_const_wrapper__.16.exit, %__non_const_wrapper__.16.exit.thread
  %.sink = phi i64 [ 7408, %__non_const_wrapper__.16.exit.thread22 ], [ 1616, %__non_const_wrapper__.16.exit ], [ -7408, %__non_const_wrapper__.16.exit.thread ], [ -1616, %__non_const_wrapper__.24.exit ]
  %.phi.i223 = phi i32 [ 798, %__non_const_wrapper__.16.exit.thread22 ], [ -214, %__non_const_wrapper__.16.exit ], [ 798, %__non_const_wrapper__.16.exit.thread ], [ -214, %__non_const_wrapper__.24.exit ]
  %mul2713 = mul nsw i64 %.sink, %conv23
  %shr28314 = lshr i64 %mul2713, 15
  %conv2915 = trunc i64 %shr28314 to i32
  store i32 %conv2915, i32* @dec_dh, align 4
  %23 = load i32, i32* @dec_nbh, align 4
  %conv.i20016 = sext i32 %23 to i64
  %mul.i20117 = mul nsw i64 %conv.i20016, 127
  %shr1.i20218 = lshr i64 %mul.i20117, 7
  %conv1.i20319 = trunc i64 %shr1.i20218 to i32
  %add.i204 = add nsw i32 %conv1.i20319, %.phi.i223
  %24 = icmp sgt i32 %add.i204, 0
  %.add.i205 = select i1 %24, i32 %add.i204, i32 0
  %25 = icmp slt i32 %.add.i205, 22528
  %nbh.addr.1.i = select i1 %25, i32 %.add.i205, i32 22528
  store i32 %nbh.addr.1.i, i32* @dec_nbh, align 4
  %call31.c.c = tail call i32 @scalel.v0.C.c.c(i32 %nbh.addr.1.i, i32 10)
  store i32 %call31.c.c, i32* @dec_deth, align 4
  %add32 = add nsw i32 %conv2915, %call20.c.c
  store i32 %add32, i32* @dec_ph, align 4
  tail call void @upzero.v0.C.c.c(i32 %conv2915, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @dec_del_dhx, i64 0, i64 0), i32* getelementptr inbounds ([6 x i32], [6 x i32]* @dec_del_bph, i64 0, i64 0))
  %26 = load i32, i32* @dec_ah1, align 4
  %27 = load i32, i32* @dec_ah2, align 4
  %28 = load i32, i32* @dec_ph, align 4
  %29 = load i32, i32* @dec_ph1, align 4
  %30 = load i32, i32* @dec_ph2, align 4
  %call33.c.c = tail call i32 @uppol2.v0.C.c.c(i32 %26, i32 %27, i32 %28, i32 %29, i32 %30)
  store i32 %call33.c.c, i32* @dec_ah2, align 4
  %call34.c.c = tail call i32 @uppol1.v0.C.c.c(i32 %26, i32 %call33.c.c, i32 %28, i32 %29)
  store i32 %call34.c.c, i32* @dec_ah1, align 4
  %31 = load i32, i32* @dec_sh, align 4
  %32 = load i32, i32* @dec_dh, align 4
  %add35 = add nsw i32 %32, %31
  store i32 %add35, i32* @rh, align 4
  %33 = load i32, i32* @dec_rh1, align 4
  store i32 %33, i32* @dec_rh2, align 4
  store i32 %add35, i32* @dec_rh1, align 4
  store i32 %29, i32* @dec_ph2, align 4
  store i32 %28, i32* @dec_ph1, align 4
  %34 = load i32, i32* @rl, align 4
  %sub = sub nsw i32 %34, %add35
  store i32 %sub, i32* @xd, align 4
  %add36 = add nsw i32 %34, %add35
  store i32 %add36, i32* @xs, align 4
  %conv37 = sext i32 %sub to i64
  %mul39 = mul nsw i64 %conv37, 12
  %conv40 = sext i32 %add36 to i64
  %mul43 = mul nsw i64 %conv40, -44
  br label %for.inc

for.inc:                                          ; preds = %for.inc, %__non_const_wrapper__.17.exit
  %i.018 = phi i32 [ 0, %__non_const_wrapper__.17.exit ], [ %inc, %for.inc ]
  %xa1.017 = phi i64 [ %mul39, %__non_const_wrapper__.17.exit ], [ %add50, %for.inc ]
  %xa2.016 = phi i64 [ %mul43, %__non_const_wrapper__.17.exit ], [ %add56, %for.inc ]
  %h_ptr.015 = phi i32* [ getelementptr inbounds ([24 x i32], [24 x i32]* @h, i64 0, i64 2), %__non_const_wrapper__.17.exit ], [ %incdec.ptr53, %for.inc ]
  %ac_ptr.014 = phi i32* [ getelementptr inbounds ([11 x i32], [11 x i32]* @accumc, i64 0, i64 0), %__non_const_wrapper__.17.exit ], [ %incdec.ptr45, %for.inc ]
  %ad_ptr.013 = phi i32* [ getelementptr inbounds ([11 x i32], [11 x i32]* @accumd, i64 0, i64 0), %__non_const_wrapper__.17.exit ], [ %incdec.ptr51, %for.inc ]
  %35 = load i32, i32* %ad_ptr.013, align 4
  %conv52 = sext i32 %35 to i64
  %incdec.ptr47 = getelementptr inbounds i32, i32* %h_ptr.015, i64 1
  %36 = load i32, i32* %incdec.ptr47, align 4
  %conv54 = sext i32 %36 to i64
  %mul55 = mul nsw i64 %conv54, %conv52
  %add56 = add nsw i64 %mul55, %xa2.016
  %incdec.ptr53 = getelementptr inbounds i32, i32* %h_ptr.015, i64 2
  %incdec.ptr51 = getelementptr inbounds i32, i32* %ad_ptr.013, i64 1
  %37 = load i32, i32* %ac_ptr.014, align 4
  %conv46 = sext i32 %37 to i64
  %38 = load i32, i32* %h_ptr.015, align 4
  %conv48 = sext i32 %38 to i64
  %mul49 = mul nsw i64 %conv48, %conv46
  %add50 = add nsw i64 %mul49, %xa1.017
  %incdec.ptr45 = getelementptr inbounds i32, i32* %ac_ptr.014, i64 1
  %inc = add nuw nsw i32 %i.018, 1
  %exitcond24 = icmp eq i32 %inc, 10
  br i1 %exitcond24, label %for.end, label %for.inc

for.end:                                          ; preds = %for.inc
  %39 = load i32, i32* getelementptr inbounds ([11 x i32], [11 x i32]* @accumc, i64 0, i64 10), align 8
  %conv57 = sext i32 %39 to i64
  %mul60 = mul nsw i64 %conv57, -44
  %add61 = add nsw i64 %mul60, %add50
  %40 = load i32, i32* getelementptr inbounds ([11 x i32], [11 x i32]* @accumd, i64 0, i64 10), align 8
  %conv62 = sext i32 %40 to i64
  %mul65 = mul nsw i64 %conv62, 12
  %add66 = add nsw i64 %mul65, %add56
  %shr674 = lshr i64 %add61, 14
  %conv68 = trunc i64 %shr674 to i32
  store i32 %conv68, i32* @xout1, align 4
  %shr695 = lshr i64 %add66, 14
  %conv70 = trunc i64 %shr695 to i32
  store i32 %conv70, i32* @xout2, align 4
  br label %for.body75

for.body75:                                       ; preds = %for.body75, %for.end
  %ac_ptr1.012 = phi i32* [ getelementptr inbounds ([11 x i32], [11 x i32]* @accumc, i64 0, i64 9), %for.end ], [ %ac_ptr1.0, %for.body75 ]
  %ad_ptr1.011 = phi i32* [ getelementptr inbounds ([11 x i32], [11 x i32]* @accumd, i64 0, i64 9), %for.end ], [ %ad_ptr1.0, %for.body75 ]
  %i.110 = phi i32 [ 0, %for.end ], [ %inc81, %for.body75 ]
  %ac_ptr.19 = phi i32* [ getelementptr inbounds ([11 x i32], [11 x i32]* @accumc, i64 0, i64 10), %for.end ], [ %incdec.ptr77, %for.body75 ]
  %ad_ptr.18 = phi i32* [ getelementptr inbounds ([11 x i32], [11 x i32]* @accumd, i64 0, i64 10), %for.end ], [ %incdec.ptr79, %for.body75 ]
  %41 = load i32, i32* %ac_ptr1.012, align 4
  store i32 %41, i32* %ac_ptr.19, align 4
  %42 = load i32, i32* %ad_ptr1.011, align 4
  store i32 %42, i32* %ad_ptr.18, align 4
  %incdec.ptr79 = getelementptr inbounds i32, i32* %ad_ptr.18, i64 -1
  %incdec.ptr77 = getelementptr inbounds i32, i32* %ac_ptr.19, i64 -1
  %inc81 = add nuw nsw i32 %i.110, 1
  %ad_ptr1.0 = getelementptr inbounds i32, i32* %ad_ptr1.011, i64 -1
  %ac_ptr1.0 = getelementptr inbounds i32, i32* %ac_ptr1.012, i64 -1
  %exitcond = icmp eq i32 %inc81, 10
  br i1 %exitcond, label %for.end82, label %for.body75

for.end82:                                        ; preds = %for.body75
  %43 = load i32, i32* @xd, align 4
  store i32 %43, i32* getelementptr inbounds ([11 x i32], [11 x i32]* @accumc, i64 0, i64 0), align 16
  %44 = load i32, i32* @xs, align 4
  store i32 %44, i32* getelementptr inbounds ([11 x i32], [11 x i32]* @accumd, i64 0, i64 0), align 16
  ret void
}

; Function Attrs: noinline norecurse nounwind readnone
define i32 @uppol2.v0.C.c.c(i32 %al1, i32 %al2, i32 %plt, i32 %plt1, i32 %plt2) local_unnamed_addr #3 {
entry:
  %conv = sext i32 %al1 to i64
  %mul = shl nsw i64 %conv, 2
  %conv1 = sext i32 %plt to i64
  %conv2 = sext i32 %plt1 to i64
  %mul3 = mul nsw i64 %conv2, %conv1
  %cmp = icmp sgt i64 %mul3, -1
  %sub = sub nsw i64 0, %mul
  %sub.mul = select i1 %cmp, i64 %sub, i64 %mul
  %shr2 = lshr i64 %sub.mul, 7
  %conv6 = sext i32 %plt2 to i64
  %mul7 = mul nsw i64 %conv6, %conv1
  %0 = ashr i64 %mul7, 63
  %1 = and i64 %0, 4294967040
  %2 = or i64 %1, 128
  %conv13 = sext i32 %al2 to i64
  %mul14 = mul nsw i64 %conv13, 127
  %shr151 = lshr i64 %mul14, 7
  %sub11 = add nuw nsw i64 %shr2, %shr151
  %add16 = add nuw nsw i64 %sub11, %2
  %conv17 = trunc i64 %add16 to i32
  %3 = icmp slt i32 %conv17, 12288
  %.conv17 = select i1 %3, i32 %conv17, i32 12288
  %4 = icmp sgt i32 %.conv17, -12288
  %apl2.1 = select i1 %4, i32 %.conv17, i32 -12288
  ret i32 %apl2.1
}

; Function Attrs: noinline norecurse nounwind
define i32 @encode.v0.C.c.c(i32 %xin1, i32 %xin2) local_unnamed_addr #4 {
entry:
  %0 = load i32, i32* getelementptr inbounds ([24 x i32], [24 x i32]* @tqmf, i64 0, i64 0), align 16
  %conv = sext i32 %0 to i64
  %mul = mul nsw i64 %conv, 12
  %1 = load i32, i32* getelementptr inbounds ([24 x i32], [24 x i32]* @tqmf, i64 0, i64 1), align 4
  %conv4 = sext i32 %1 to i64
  %mul7 = mul nsw i64 %conv4, -44
  br label %for.inc

for.inc:                                          ; preds = %for.inc, %entry
  %incdec.ptr915 = phi i32* [ getelementptr inbounds ([24 x i32], [24 x i32]* @tqmf, i64 0, i64 3), %entry ], [ %incdec.ptr9, %for.inc ]
  %xb.014 = phi i64 [ %mul7, %entry ], [ %add19, %for.inc ]
  %xa.013 = phi i64 [ %mul, %entry ], [ %add, %for.inc ]
  %i.012 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %h_ptr.011 = phi i32* [ getelementptr inbounds ([24 x i32], [24 x i32]* @h, i64 0, i64 2), %entry ], [ %incdec.ptr16, %for.inc ]
  %tqmf_ptr.010 = phi i32* [ getelementptr inbounds ([24 x i32], [24 x i32]* @tqmf, i64 0, i64 2), %entry ], [ %incdec.ptr14, %for.inc ]
  %2 = load i32, i32* %incdec.ptr915, align 4
  %conv15 = sext i32 %2 to i64
  %incdec.ptr11 = getelementptr inbounds i32, i32* %h_ptr.011, i64 1
  %3 = load i32, i32* %incdec.ptr11, align 4
  %conv17 = sext i32 %3 to i64
  %mul18 = mul nsw i64 %conv17, %conv15
  %add19 = add nsw i64 %mul18, %xb.014
  %incdec.ptr16 = getelementptr inbounds i32, i32* %h_ptr.011, i64 2
  %incdec.ptr14 = getelementptr inbounds i32, i32* %tqmf_ptr.010, i64 2
  %4 = load i32, i32* %tqmf_ptr.010, align 4
  %conv10 = sext i32 %4 to i64
  %5 = load i32, i32* %h_ptr.011, align 4
  %conv12 = sext i32 %5 to i64
  %mul13 = mul nsw i64 %conv12, %conv10
  %add = add nsw i64 %mul13, %xa.013
  %inc = add nuw nsw i32 %i.012, 1
  %incdec.ptr9 = getelementptr inbounds i32, i32* %tqmf_ptr.010, i64 3
  %exitcond19 = icmp eq i32 %inc, 10
  br i1 %exitcond19, label %for.end, label %for.inc

for.end:                                          ; preds = %for.inc
  %6 = load i32, i32* getelementptr inbounds ([24 x i32], [24 x i32]* @tqmf, i64 0, i64 22), align 8
  %conv21 = sext i32 %6 to i64
  %7 = load i32, i32* getelementptr inbounds ([24 x i32], [24 x i32]* @tqmf, i64 0, i64 23), align 4
  %conv26 = sext i32 %7 to i64
  br label %for.body34

for.body34:                                       ; preds = %for.body34, %for.end
  %tqmf_ptr1.09 = phi i32* [ getelementptr inbounds ([24 x i32], [24 x i32]* @tqmf, i64 0, i64 21), %for.end ], [ %tqmf_ptr1.0, %for.body34 ]
  %i.18 = phi i32 [ 0, %for.end ], [ %inc38, %for.body34 ]
  %tqmf_ptr.17 = phi i32* [ getelementptr inbounds ([24 x i32], [24 x i32]* @tqmf, i64 0, i64 23), %for.end ], [ %incdec.ptr36, %for.body34 ]
  %8 = load i32, i32* %tqmf_ptr1.09, align 4
  store i32 %8, i32* %tqmf_ptr.17, align 4
  %incdec.ptr36 = getelementptr inbounds i32, i32* %tqmf_ptr.17, i64 -1
  %inc38 = add nuw nsw i32 %i.18, 1
  %tqmf_ptr1.0 = getelementptr inbounds i32, i32* %tqmf_ptr1.09, i64 -1
  %exitcond = icmp eq i32 %inc38, 22
  br i1 %exitcond, label %for.end39, label %for.body34

for.end39:                                        ; preds = %for.body34
  %mul24 = mul nsw i64 %conv21, -44
  %mul29 = mul nsw i64 %conv26, 12
  %add25 = add nsw i64 %mul24, %add
  %add30 = add nsw i64 %mul29, %add19
  store i32 %xin1, i32* getelementptr inbounds ([24 x i32], [24 x i32]* @tqmf, i64 0, i64 1), align 4
  store i32 %xin2, i32* getelementptr inbounds ([24 x i32], [24 x i32]* @tqmf, i64 0, i64 0), align 16
  %add41 = add nsw i64 %add30, %add25
  %shr1 = lshr i64 %add41, 15
  %conv42 = trunc i64 %shr1 to i32
  store i32 %conv42, i32* @xl, align 4
  %sub = sub nsw i64 %add25, %add30
  %shr432 = lshr i64 %sub, 15
  %conv44 = trunc i64 %shr432 to i32
  store i32 %conv44, i32* @xh, align 4
  %call.c.c = tail call i32 @filtez.v0.C.c.c(i32* getelementptr inbounds ([6 x i32], [6 x i32]* @delay_bpl, i64 0, i64 0), i32* getelementptr inbounds ([6 x i32], [6 x i32]* @delay_dltx, i64 0, i64 0))
  store i32 %call.c.c, i32* @szl, align 4
  %9 = load i32, i32* @rlt1, align 4
  %10 = load i32, i32* @al1, align 4
  %11 = load i32, i32* @rlt2, align 4
  %12 = load i32, i32* @al2, align 4
  %call45.c.c = tail call i32 @filtep.v0.C.c.c(i32 %9, i32 %10, i32 %11, i32 %12)
  store i32 %call45.c.c, i32* @spl, align 4
  %add46 = add nsw i32 %call45.c.c, %call.c.c
  store i32 %add46, i32* @sl, align 4
  %sub47 = sub nsw i32 %conv42, %add46
  store i32 %sub47, i32* @el, align 4
  %13 = load i32, i32* @detl, align 4
  %cmp.i20 = icmp sgt i32 %sub47, -1
  %sub.i = sub nsw i32 0, %sub47
  %m.0.i = select i1 %cmp.i20, i32 %sub47, i32 %sub.i
  %conv.i = sext i32 %m.0.i to i64
  %conv3.i = sext i32 %13 to i64
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i, %for.end39
  %mil.01.i = phi i32 [ 0, %for.end39 ], [ %inc.i, %for.inc.i ]
  switch i32 %mil.01.i, label %csroa.if.end144.i [
    i32 0, label %__non_const_wrapper__.25.exit
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
  ]

csroa.if.end144.i:                                ; preds = %for.body.i
  br label %csroa.if.end139.i

csroa.if.end139.i:                                ; preds = %for.body.i, %csroa.if.end144.i
  %.phi140.i = phi i64 [ 140733193388032, %csroa.if.end144.i ], [ 100296076296192, %for.body.i ]
  br label %csroa.if.end134.i

csroa.if.end134.i:                                ; preds = %for.body.i, %csroa.if.end139.i
  %.phi135.i = phi i64 [ %.phi140.i, %csroa.if.end139.i ], [ 87857851006976, %for.body.i ]
  br label %csroa.if.end129.i

csroa.if.end129.i:                                ; preds = %for.body.i, %csroa.if.end134.i
  %.phi130.i = phi i64 [ %.phi135.i, %csroa.if.end134.i ], [ 75419625717760, %for.body.i ]
  br label %csroa.if.end124.i

csroa.if.end124.i:                                ; preds = %for.body.i, %csroa.if.end129.i
  %.phi125.i = phi i64 [ %.phi130.i, %csroa.if.end129.i ], [ 68032281968640, %for.body.i ]
  br label %csroa.if.end119.i

csroa.if.end119.i:                                ; preds = %for.body.i, %csroa.if.end124.i
  %.phi120.i = phi i64 [ %.phi125.i, %csroa.if.end124.i ], [ 60644938219520, %for.body.i ]
  br label %csroa.if.end114.i

csroa.if.end114.i:                                ; preds = %for.body.i, %csroa.if.end119.i
  %.phi115.i = phi i64 [ %.phi120.i, %csroa.if.end119.i ], [ 55387898249216, %for.body.i ]
  br label %csroa.if.end109.i

csroa.if.end109.i:                                ; preds = %for.body.i, %csroa.if.end114.i
  %.phi110.i = phi i64 [ %.phi115.i, %csroa.if.end114.i ], [ 50096498540544, %for.body.i ]
  br label %csroa.if.end104.i

csroa.if.end104.i:                                ; preds = %for.body.i, %csroa.if.end109.i
  %.phi105.i = phi i64 [ %.phi110.i, %csroa.if.end109.i ], [ 46007689674752, %for.body.i ]
  br label %csroa.if.end99.i

csroa.if.end99.i:                                 ; preds = %for.body.i, %csroa.if.end104.i
  %.phi100.i = phi i64 [ %.phi105.i, %csroa.if.end104.i ], [ 41884521070592, %for.body.i ]
  br label %csroa.if.end94.i

csroa.if.end94.i:                                 ; preds = %for.body.i, %csroa.if.end99.i
  %.phi95.i = phi i64 [ %.phi100.i, %csroa.if.end99.i ], [ 38517266710528, %for.body.i ]
  br label %csroa.if.end89.i

csroa.if.end89.i:                                 ; preds = %for.body.i, %csroa.if.end94.i
  %.phi90.i = phi i64 [ %.phi95.i, %csroa.if.end94.i ], [ 35150012350464, %for.body.i ]
  br label %csroa.if.end84.i

csroa.if.end84.i:                                 ; preds = %for.body.i, %csroa.if.end89.i
  %.phi85.i = phi i64 [ %.phi90.i, %csroa.if.end89.i ], [ 32298154065920, %for.body.i ]
  br label %csroa.if.end79.i

csroa.if.end79.i:                                 ; preds = %for.body.i, %csroa.if.end84.i
  %.phi80.i = phi i64 [ %.phi85.i, %csroa.if.end84.i ], [ 29480655519744, %for.body.i ]
  br label %csroa.if.end74.i

csroa.if.end74.i:                                 ; preds = %for.body.i, %csroa.if.end79.i
  %.phi75.i = phi i64 [ %.phi80.i, %csroa.if.end79.i ], [ 27006754357248, %for.body.i ]
  br label %csroa.if.end69.i

csroa.if.end69.i:                                 ; preds = %for.body.i, %csroa.if.end74.i
  %.phi70.i = phi i64 [ %.phi75.i, %csroa.if.end74.i ], [ 24532853194752, %for.body.i ]
  br label %csroa.if.end64.i

csroa.if.end64.i:                                 ; preds = %for.body.i, %csroa.if.end69.i
  %.phi65.i = phi i64 [ %.phi70.i, %csroa.if.end69.i ], [ 22333829939200, %for.body.i ]
  br label %csroa.if.end59.i

csroa.if.end59.i:                                 ; preds = %for.body.i, %csroa.if.end64.i
  %.phi60.i = phi i64 [ %.phi65.i, %csroa.if.end64.i ], [ 20169166422016, %for.body.i ]
  br label %csroa.if.end54.i

csroa.if.end54.i:                                 ; preds = %for.body.i, %csroa.if.end59.i
  %.phi55.i = phi i64 [ %.phi60.i, %csroa.if.end59.i ], [ 18210661335040, %for.body.i ]
  br label %csroa.if.end49.i

csroa.if.end49.i:                                 ; preds = %for.body.i, %csroa.if.end54.i
  %.phi50.i = phi i64 [ %.phi55.i, %csroa.if.end54.i ], [ 16252156248064, %for.body.i ]
  br label %csroa.if.end44.i

csroa.if.end44.i:                                 ; preds = %for.body.i, %csroa.if.end49.i
  %.phi45.i = phi i64 [ %.phi50.i, %csroa.if.end49.i ], [ 14499809591296, %for.body.i ]
  br label %csroa.if.end39.i

csroa.if.end39.i:                                 ; preds = %for.body.i, %csroa.if.end44.i
  %.phi40.i = phi i64 [ %.phi45.i, %csroa.if.end44.i ], [ 12713103196160, %for.body.i ]
  br label %csroa.if.end34.i

csroa.if.end34.i:                                 ; preds = %for.body.i, %csroa.if.end39.i
  %.phi35.i = phi i64 [ %.phi40.i, %csroa.if.end39.i ], [ 11098195492864, %for.body.i ]
  br label %csroa.if.end29.i

csroa.if.end29.i:                                 ; preds = %for.body.i, %csroa.if.end34.i
  %.phi30.i = phi i64 [ %.phi35.i, %csroa.if.end34.i ], [ 9483287789568, %for.body.i ]
  br label %csroa.if.end24.i

csroa.if.end24.i:                                 ; preds = %for.body.i, %csroa.if.end29.i
  %.phi25.i = phi i64 [ %.phi30.i, %csroa.if.end29.i ], [ 8005819039744, %for.body.i ]
  br label %csroa.if.end19.i

csroa.if.end19.i:                                 ; preds = %for.body.i, %csroa.if.end24.i
  %.phi20.i = phi i64 [ %.phi25.i, %csroa.if.end24.i ], [ 6528350289920, %for.body.i ]
  br label %csroa.if.end14.i

csroa.if.end14.i:                                 ; preds = %for.body.i, %csroa.if.end19.i
  %.phi15.i = phi i64 [ %.phi20.i, %csroa.if.end19.i ], [ 5153960755200, %for.body.i ]
  br label %csroa.if.end9.i

csroa.if.end9.i:                                  ; preds = %for.body.i, %csroa.if.end14.i
  %.phi10.i = phi i64 [ %.phi15.i, %csroa.if.end14.i ], [ 3779571220480, %for.body.i ]
  br label %csroa.if.end4.i

csroa.if.end4.i:                                  ; preds = %for.body.i, %csroa.if.end9.i
  %.phi5.i = phi i64 [ %.phi10.i, %csroa.if.end9.i ], [ 2473901162496, %for.body.i ]
  br label %__non_const_wrapper__.25.exit

__non_const_wrapper__.25.exit:                    ; preds = %for.body.i, %csroa.if.end4.i
  %.phi.i = phi i64 [ %.phi5.i, %csroa.if.end4.i ], [ 1202590842880, %for.body.i ]
  %conv2.i = ashr exact i64 %.phi.i, 32
  %mul.i = mul nsw i64 %conv2.i, %conv3.i
  %shr.i = ashr i64 %mul.i, 15
  %cmp4.i = icmp sgt i64 %conv.i, %shr.i
  br i1 %cmp4.i, label %for.inc.i, label %for.end.i

for.inc.i:                                        ; preds = %__non_const_wrapper__.25.exit
  %inc.i = add nuw nsw i32 %mil.01.i, 1
  %cmp.i = icmp slt i32 %inc.i, 30
  br i1 %cmp.i, label %for.body.i, label %for.end.i

for.end.i:                                        ; preds = %for.inc.i, %__non_const_wrapper__.25.exit
  %mil.0.lcssa.i = phi i32 [ %mil.01.i, %__non_const_wrapper__.25.exit ], [ %inc.i, %for.inc.i ]
  %.cmp.0.i21 = icmp eq i32 %mil.0.lcssa.i, 0
  br i1 %cmp.i20, label %if.then8.i, label %if.else.i

if.then8.i:                                       ; preds = %for.end.i
  br i1 %.cmp.0.i21, label %csroa.if.end74.i449, label %csroa.if.else.i24

csroa.if.else.i24:                                ; preds = %if.then8.i
  switch i32 %mil.0.lcssa.i, label %csroa.if.end144.i111 [
    i32 1, label %csroa.if.end74.i449
    i32 2, label %quantl.v0.C.c.exit.thread223
    i32 3, label %quantl.v0.C.c.exit.thread227
    i32 4, label %__non_const_wrapper__.22.exit.thread171
    i32 5, label %quantl.v0.C.c.exit.thread235
    i32 6, label %quantl.v0.C.c.exit.thread239
    i32 7, label %quantl.v0.C.c.exit.thread243
    i32 8, label %__non_const_wrapper__.22.exit.thread160
    i32 9, label %quantl.v0.C.c.exit.thread251
    i32 10, label %quantl.v0.C.c.exit.thread255
    i32 11, label %quantl.v0.C.c.exit.thread259
    i32 12, label %__non_const_wrapper__.22.exit.thread149
    i32 13, label %quantl.v0.C.c.exit.thread267
    i32 14, label %quantl.v0.C.c.exit.thread271
    i32 15, label %quantl.v0.C.c.exit.thread275
    i32 16, label %__non_const_wrapper__.22.exit.thread138
    i32 17, label %quantl.v0.C.c.exit.thread283
    i32 18, label %quantl.v0.C.c.exit.thread287
    i32 19, label %quantl.v0.C.c.exit.thread291
    i32 20, label %__non_const_wrapper__.22.exit.thread127
    i32 21, label %quantl.v0.C.c.exit.thread299
    i32 22, label %quantl.v0.C.c.exit.thread303
    i32 23, label %quantl.v0.C.c.exit.thread307
    i32 24, label %__non_const_wrapper__.22.exit.thread116
    i32 25, label %quantl.v0.C.c.exit.thread315
    i32 26, label %__non_const_wrapper__.22.exit.thread105
    i32 27, label %quantl.v0.C.c.exit.thread323
    i32 28, label %quantl.v0.C.c.exit.thread330
  ]

quantl.v0.C.c.exit.thread323:                     ; preds = %csroa.if.else.i24
  br label %__non_const_wrapper__.22.exit.thread105

quantl.v0.C.c.exit.thread315:                     ; preds = %csroa.if.else.i24
  br label %__non_const_wrapper__.22.exit.thread116

quantl.v0.C.c.exit.thread307:                     ; preds = %csroa.if.else.i24
  br label %__non_const_wrapper__.22.exit.thread116

quantl.v0.C.c.exit.thread303:                     ; preds = %csroa.if.else.i24
  br label %__non_const_wrapper__.22.exit.thread116

quantl.v0.C.c.exit.thread299:                     ; preds = %csroa.if.else.i24
  br label %__non_const_wrapper__.22.exit.thread127

quantl.v0.C.c.exit.thread291:                     ; preds = %csroa.if.else.i24
  br label %__non_const_wrapper__.22.exit.thread127

quantl.v0.C.c.exit.thread287:                     ; preds = %csroa.if.else.i24
  br label %__non_const_wrapper__.22.exit.thread127

quantl.v0.C.c.exit.thread283:                     ; preds = %csroa.if.else.i24
  br label %__non_const_wrapper__.22.exit.thread138

quantl.v0.C.c.exit.thread275:                     ; preds = %csroa.if.else.i24
  br label %__non_const_wrapper__.22.exit.thread138

quantl.v0.C.c.exit.thread271:                     ; preds = %csroa.if.else.i24
  br label %__non_const_wrapper__.22.exit.thread138

quantl.v0.C.c.exit.thread267:                     ; preds = %csroa.if.else.i24
  br label %__non_const_wrapper__.22.exit.thread149

quantl.v0.C.c.exit.thread259:                     ; preds = %csroa.if.else.i24
  br label %__non_const_wrapper__.22.exit.thread149

quantl.v0.C.c.exit.thread255:                     ; preds = %csroa.if.else.i24
  br label %__non_const_wrapper__.22.exit.thread149

quantl.v0.C.c.exit.thread251:                     ; preds = %csroa.if.else.i24
  br label %__non_const_wrapper__.22.exit.thread160

quantl.v0.C.c.exit.thread243:                     ; preds = %csroa.if.else.i24
  br label %__non_const_wrapper__.22.exit.thread160

quantl.v0.C.c.exit.thread239:                     ; preds = %csroa.if.else.i24
  br label %__non_const_wrapper__.22.exit.thread160

quantl.v0.C.c.exit.thread235:                     ; preds = %csroa.if.else.i24
  br label %__non_const_wrapper__.22.exit.thread171

quantl.v0.C.c.exit.thread227:                     ; preds = %csroa.if.else.i24
  br label %__non_const_wrapper__.22.exit.thread171

quantl.v0.C.c.exit.thread223:                     ; preds = %csroa.if.else.i24
  br label %__non_const_wrapper__.22.exit.thread171

csroa.if.end144.i111:                             ; preds = %csroa.if.else.i24
  br label %quantl.v0.C.c.exit.thread330

if.else.i:                                        ; preds = %for.end.i
  br i1 %.cmp.0.i21, label %csroa.if.end74.i449, label %csroa.if.else.i172

csroa.if.else.i172:                               ; preds = %if.else.i
  switch i32 %mil.0.lcssa.i, label %csroa.if.end144.i263 [
    i32 1, label %csroa.if.end74.i449
    i32 2, label %quantl.v0.C.c.exit.thread
    i32 3, label %quantl.v0.C.c.exit.thread225
    i32 4, label %__non_const_wrapper__.22.exit.thread94
    i32 5, label %quantl.v0.C.c.exit.thread233
    i32 6, label %quantl.v0.C.c.exit.thread237
    i32 7, label %quantl.v0.C.c.exit.thread241
    i32 8, label %__non_const_wrapper__.22.exit.thread83
    i32 9, label %quantl.v0.C.c.exit.thread249
    i32 10, label %quantl.v0.C.c.exit.thread253
    i32 11, label %quantl.v0.C.c.exit.thread257
    i32 12, label %__non_const_wrapper__.22.exit.thread72
    i32 13, label %quantl.v0.C.c.exit.thread265
    i32 14, label %quantl.v0.C.c.exit.thread269
    i32 15, label %quantl.v0.C.c.exit.thread273
    i32 16, label %__non_const_wrapper__.22.exit.thread61
    i32 17, label %quantl.v0.C.c.exit.thread281
    i32 18, label %quantl.v0.C.c.exit.thread285
    i32 19, label %quantl.v0.C.c.exit.thread289
    i32 20, label %__non_const_wrapper__.22.exit.thread50
    i32 21, label %quantl.v0.C.c.exit.thread297
    i32 22, label %quantl.v0.C.c.exit.thread301
    i32 23, label %quantl.v0.C.c.exit.thread305
    i32 24, label %__non_const_wrapper__.22.exit.thread39
    i32 25, label %quantl.v0.C.c.exit.thread313
    i32 26, label %__non_const_wrapper__.22.exit.thread28
    i32 27, label %quantl.v0.C.c.exit.thread321
    i32 28, label %quantl.v0.C.c.exit.thread326
  ]

quantl.v0.C.c.exit.thread321:                     ; preds = %csroa.if.else.i172
  br label %__non_const_wrapper__.22.exit.thread28

quantl.v0.C.c.exit.thread313:                     ; preds = %csroa.if.else.i172
  br label %__non_const_wrapper__.22.exit.thread39

quantl.v0.C.c.exit.thread305:                     ; preds = %csroa.if.else.i172
  br label %__non_const_wrapper__.22.exit.thread39

quantl.v0.C.c.exit.thread301:                     ; preds = %csroa.if.else.i172
  br label %__non_const_wrapper__.22.exit.thread39

quantl.v0.C.c.exit.thread297:                     ; preds = %csroa.if.else.i172
  br label %__non_const_wrapper__.22.exit.thread50

quantl.v0.C.c.exit.thread289:                     ; preds = %csroa.if.else.i172
  br label %__non_const_wrapper__.22.exit.thread50

quantl.v0.C.c.exit.thread285:                     ; preds = %csroa.if.else.i172
  br label %__non_const_wrapper__.22.exit.thread50

quantl.v0.C.c.exit.thread281:                     ; preds = %csroa.if.else.i172
  br label %__non_const_wrapper__.22.exit.thread61

quantl.v0.C.c.exit.thread273:                     ; preds = %csroa.if.else.i172
  br label %__non_const_wrapper__.22.exit.thread61

quantl.v0.C.c.exit.thread269:                     ; preds = %csroa.if.else.i172
  br label %__non_const_wrapper__.22.exit.thread61

quantl.v0.C.c.exit.thread265:                     ; preds = %csroa.if.else.i172
  br label %__non_const_wrapper__.22.exit.thread72

quantl.v0.C.c.exit.thread257:                     ; preds = %csroa.if.else.i172
  br label %__non_const_wrapper__.22.exit.thread72

quantl.v0.C.c.exit.thread253:                     ; preds = %csroa.if.else.i172
  br label %__non_const_wrapper__.22.exit.thread72

quantl.v0.C.c.exit.thread249:                     ; preds = %csroa.if.else.i172
  br label %__non_const_wrapper__.22.exit.thread83

quantl.v0.C.c.exit.thread241:                     ; preds = %csroa.if.else.i172
  br label %__non_const_wrapper__.22.exit.thread83

quantl.v0.C.c.exit.thread237:                     ; preds = %csroa.if.else.i172
  br label %__non_const_wrapper__.22.exit.thread83

quantl.v0.C.c.exit.thread233:                     ; preds = %csroa.if.else.i172
  br label %__non_const_wrapper__.22.exit.thread94

quantl.v0.C.c.exit.thread225:                     ; preds = %csroa.if.else.i172
  br label %__non_const_wrapper__.22.exit.thread94

quantl.v0.C.c.exit.thread:                        ; preds = %csroa.if.else.i172
  br label %__non_const_wrapper__.22.exit.thread94

csroa.if.end144.i263:                             ; preds = %csroa.if.else.i172
  br label %quantl.v0.C.c.exit.thread326

quantl.v0.C.c.exit.thread326:                     ; preds = %csroa.if.end144.i263, %csroa.if.else.i172
  %ril.0.i.ph325 = phi i32 [ 5, %csroa.if.else.i172 ], [ 4, %csroa.if.end144.i263 ]
  br label %__non_const_wrapper__.22.exit.thread28

quantl.v0.C.c.exit.thread330:                     ; preds = %csroa.if.end144.i111, %csroa.if.else.i24
  %ril.0.i.ph329 = phi i32 [ 33, %csroa.if.else.i24 ], [ 32, %csroa.if.end144.i111 ]
  br label %__non_const_wrapper__.22.exit.thread105

__non_const_wrapper__.22.exit.thread171:          ; preds = %csroa.if.else.i24, %quantl.v0.C.c.exit.thread235, %quantl.v0.C.c.exit.thread227, %quantl.v0.C.c.exit.thread223
  %.sink336 = phi i32 [ 56, %quantl.v0.C.c.exit.thread235 ], [ 58, %quantl.v0.C.c.exit.thread227 ], [ 59, %quantl.v0.C.c.exit.thread223 ], [ 57, %csroa.if.else.i24 ]
  store i32 %.sink336, i32* @il, align 4
  %mul52173 = mul nsw i64 %conv3.i, 1200
  %shr533174 = lshr i64 %mul52173, 15
  %conv54175 = trunc i64 %shr533174 to i32
  br label %__non_const_wrapper__.24.exit

__non_const_wrapper__.22.exit.thread160:          ; preds = %csroa.if.else.i24, %quantl.v0.C.c.exit.thread251, %quantl.v0.C.c.exit.thread243, %quantl.v0.C.c.exit.thread239
  %.sink335 = phi i32 [ 52, %quantl.v0.C.c.exit.thread251 ], [ 54, %quantl.v0.C.c.exit.thread243 ], [ 55, %quantl.v0.C.c.exit.thread239 ], [ 53, %csroa.if.else.i24 ]
  store i32 %.sink335, i32* @il, align 4
  %mul52162 = mul nsw i64 %conv3.i, 2584
  %shr533163 = lshr i64 %mul52162, 15
  %conv54164 = trunc i64 %shr533163 to i32
  br label %__non_const_wrapper__.24.exit

__non_const_wrapper__.22.exit.thread149:          ; preds = %csroa.if.else.i24, %quantl.v0.C.c.exit.thread267, %quantl.v0.C.c.exit.thread259, %quantl.v0.C.c.exit.thread255
  %.sink334 = phi i32 [ 48, %quantl.v0.C.c.exit.thread267 ], [ 50, %quantl.v0.C.c.exit.thread259 ], [ 51, %quantl.v0.C.c.exit.thread255 ], [ 49, %csroa.if.else.i24 ]
  store i32 %.sink334, i32* @il, align 4
  %mul52151 = mul nsw i64 %conv3.i, 4240
  %shr533152 = lshr i64 %mul52151, 15
  %conv54153 = trunc i64 %shr533152 to i32
  br label %__non_const_wrapper__.24.exit

__non_const_wrapper__.22.exit.thread138:          ; preds = %csroa.if.else.i24, %quantl.v0.C.c.exit.thread283, %quantl.v0.C.c.exit.thread275, %quantl.v0.C.c.exit.thread271
  %.sink333 = phi i32 [ 44, %quantl.v0.C.c.exit.thread283 ], [ 46, %quantl.v0.C.c.exit.thread275 ], [ 47, %quantl.v0.C.c.exit.thread271 ], [ 45, %csroa.if.else.i24 ]
  store i32 %.sink333, i32* @il, align 4
  %mul52140 = mul nsw i64 %conv3.i, 6288
  %shr533141 = lshr i64 %mul52140, 15
  %conv54142 = trunc i64 %shr533141 to i32
  br label %__non_const_wrapper__.24.exit

__non_const_wrapper__.22.exit.thread127:          ; preds = %csroa.if.else.i24, %quantl.v0.C.c.exit.thread299, %quantl.v0.C.c.exit.thread291, %quantl.v0.C.c.exit.thread287
  %.sink332 = phi i32 [ 40, %quantl.v0.C.c.exit.thread299 ], [ 42, %quantl.v0.C.c.exit.thread291 ], [ 43, %quantl.v0.C.c.exit.thread287 ], [ 41, %csroa.if.else.i24 ]
  store i32 %.sink332, i32* @il, align 4
  %mul52129 = mul nsw i64 %conv3.i, 8968
  %shr533130 = lshr i64 %mul52129, 15
  %conv54131 = trunc i64 %shr533130 to i32
  br label %__non_const_wrapper__.24.exit

__non_const_wrapper__.22.exit.thread116:          ; preds = %csroa.if.else.i24, %quantl.v0.C.c.exit.thread315, %quantl.v0.C.c.exit.thread307, %quantl.v0.C.c.exit.thread303
  %.sink = phi i32 [ 36, %quantl.v0.C.c.exit.thread315 ], [ 38, %quantl.v0.C.c.exit.thread307 ], [ 39, %quantl.v0.C.c.exit.thread303 ], [ 37, %csroa.if.else.i24 ]
  store i32 %.sink, i32* @il, align 4
  %mul52118 = mul nsw i64 %conv3.i, 12896
  %shr533119 = lshr i64 %mul52118, 15
  %conv54120 = trunc i64 %shr533119 to i32
  br label %__non_const_wrapper__.24.exit

__non_const_wrapper__.22.exit.thread105:          ; preds = %csroa.if.else.i24, %quantl.v0.C.c.exit.thread330, %quantl.v0.C.c.exit.thread323
  %ril.0.i.ph329.sink = phi i32 [ %ril.0.i.ph329, %quantl.v0.C.c.exit.thread330 ], [ 34, %quantl.v0.C.c.exit.thread323 ], [ 35, %csroa.if.else.i24 ]
  store i32 %ril.0.i.ph329.sink, i32* @il, align 4
  %mul52107 = mul nsw i64 %conv3.i, 20456
  %shr533108 = lshr i64 %mul52107, 15
  %conv54109 = trunc i64 %shr533108 to i32
  br label %__non_const_wrapper__.24.exit

__non_const_wrapper__.22.exit.thread94:           ; preds = %csroa.if.else.i172, %quantl.v0.C.c.exit.thread233, %quantl.v0.C.c.exit.thread225, %quantl.v0.C.c.exit.thread
  %.sink342 = phi i32 [ 28, %quantl.v0.C.c.exit.thread233 ], [ 30, %quantl.v0.C.c.exit.thread225 ], [ 31, %quantl.v0.C.c.exit.thread ], [ 29, %csroa.if.else.i172 ]
  store i32 %.sink342, i32* @il, align 4
  %mul5296 = mul nsw i64 %conv3.i, -1200
  %shr53397 = lshr i64 %mul5296, 15
  %conv5498 = trunc i64 %shr53397 to i32
  br label %__non_const_wrapper__.24.exit

__non_const_wrapper__.22.exit.thread83:           ; preds = %csroa.if.else.i172, %quantl.v0.C.c.exit.thread249, %quantl.v0.C.c.exit.thread241, %quantl.v0.C.c.exit.thread237
  %.sink341 = phi i32 [ 24, %quantl.v0.C.c.exit.thread249 ], [ 26, %quantl.v0.C.c.exit.thread241 ], [ 27, %quantl.v0.C.c.exit.thread237 ], [ 25, %csroa.if.else.i172 ]
  store i32 %.sink341, i32* @il, align 4
  %mul5285 = mul nsw i64 %conv3.i, -2584
  %shr53386 = lshr i64 %mul5285, 15
  %conv5487 = trunc i64 %shr53386 to i32
  br label %__non_const_wrapper__.24.exit

__non_const_wrapper__.22.exit.thread72:           ; preds = %csroa.if.else.i172, %quantl.v0.C.c.exit.thread265, %quantl.v0.C.c.exit.thread257, %quantl.v0.C.c.exit.thread253
  %.sink340 = phi i32 [ 20, %quantl.v0.C.c.exit.thread265 ], [ 22, %quantl.v0.C.c.exit.thread257 ], [ 23, %quantl.v0.C.c.exit.thread253 ], [ 21, %csroa.if.else.i172 ]
  store i32 %.sink340, i32* @il, align 4
  %mul5274 = mul nsw i64 %conv3.i, -4240
  %shr53375 = lshr i64 %mul5274, 15
  %conv5476 = trunc i64 %shr53375 to i32
  br label %__non_const_wrapper__.24.exit

__non_const_wrapper__.22.exit.thread61:           ; preds = %csroa.if.else.i172, %quantl.v0.C.c.exit.thread281, %quantl.v0.C.c.exit.thread273, %quantl.v0.C.c.exit.thread269
  %.sink339 = phi i32 [ 16, %quantl.v0.C.c.exit.thread281 ], [ 18, %quantl.v0.C.c.exit.thread273 ], [ 19, %quantl.v0.C.c.exit.thread269 ], [ 17, %csroa.if.else.i172 ]
  store i32 %.sink339, i32* @il, align 4
  %mul5263 = mul nsw i64 %conv3.i, -6288
  %shr53364 = lshr i64 %mul5263, 15
  %conv5465 = trunc i64 %shr53364 to i32
  br label %__non_const_wrapper__.24.exit

__non_const_wrapper__.22.exit.thread50:           ; preds = %csroa.if.else.i172, %quantl.v0.C.c.exit.thread297, %quantl.v0.C.c.exit.thread289, %quantl.v0.C.c.exit.thread285
  %.sink338 = phi i32 [ 12, %quantl.v0.C.c.exit.thread297 ], [ 14, %quantl.v0.C.c.exit.thread289 ], [ 15, %quantl.v0.C.c.exit.thread285 ], [ 13, %csroa.if.else.i172 ]
  store i32 %.sink338, i32* @il, align 4
  %mul5252 = mul nsw i64 %conv3.i, -8968
  %shr53353 = lshr i64 %mul5252, 15
  %conv5454 = trunc i64 %shr53353 to i32
  br label %__non_const_wrapper__.24.exit

__non_const_wrapper__.22.exit.thread39:           ; preds = %csroa.if.else.i172, %quantl.v0.C.c.exit.thread313, %quantl.v0.C.c.exit.thread305, %quantl.v0.C.c.exit.thread301
  %.sink337 = phi i32 [ 8, %quantl.v0.C.c.exit.thread313 ], [ 10, %quantl.v0.C.c.exit.thread305 ], [ 11, %quantl.v0.C.c.exit.thread301 ], [ 9, %csroa.if.else.i172 ]
  store i32 %.sink337, i32* @il, align 4
  %mul5241 = mul nsw i64 %conv3.i, -12896
  %shr53342 = lshr i64 %mul5241, 15
  %conv5443 = trunc i64 %shr53342 to i32
  br label %__non_const_wrapper__.24.exit

__non_const_wrapper__.22.exit.thread28:           ; preds = %csroa.if.else.i172, %quantl.v0.C.c.exit.thread326, %quantl.v0.C.c.exit.thread321
  %ril.0.i.ph325.sink = phi i32 [ %ril.0.i.ph325, %quantl.v0.C.c.exit.thread326 ], [ 6, %quantl.v0.C.c.exit.thread321 ], [ 7, %csroa.if.else.i172 ]
  store i32 %ril.0.i.ph325.sink, i32* @il, align 4
  %mul5230 = mul nsw i64 %conv3.i, -20456
  %shr53331 = lshr i64 %mul5230, 15
  %conv5432 = trunc i64 %shr53331 to i32
  br label %__non_const_wrapper__.24.exit

csroa.if.end74.i449:                              ; preds = %if.then8.i, %csroa.if.else.i24, %if.else.i, %csroa.if.else.i172
  %ril.0.i.ph = phi i32 [ 62, %csroa.if.else.i172 ], [ 63, %if.else.i ], [ 60, %csroa.if.else.i24 ], [ 61, %if.then8.i ]
  store i32 %ril.0.i.ph, i32* @il, align 4
  br label %__non_const_wrapper__.24.exit

__non_const_wrapper__.24.exit:                    ; preds = %__non_const_wrapper__.22.exit.thread28, %__non_const_wrapper__.22.exit.thread50, %__non_const_wrapper__.22.exit.thread72, %__non_const_wrapper__.22.exit.thread94, %__non_const_wrapper__.22.exit.thread116, %__non_const_wrapper__.22.exit.thread138, %__non_const_wrapper__.22.exit.thread160, %__non_const_wrapper__.22.exit.thread171, %csroa.if.end74.i449, %__non_const_wrapper__.22.exit.thread149, %__non_const_wrapper__.22.exit.thread127, %__non_const_wrapper__.22.exit.thread105, %__non_const_wrapper__.22.exit.thread83, %__non_const_wrapper__.22.exit.thread61, %__non_const_wrapper__.22.exit.thread39
  %conv5432.sink = phi i32 [ %conv5432, %__non_const_wrapper__.22.exit.thread28 ], [ %conv5454, %__non_const_wrapper__.22.exit.thread50 ], [ %conv5476, %__non_const_wrapper__.22.exit.thread72 ], [ %conv5498, %__non_const_wrapper__.22.exit.thread94 ], [ %conv54120, %__non_const_wrapper__.22.exit.thread116 ], [ %conv54142, %__non_const_wrapper__.22.exit.thread138 ], [ %conv54164, %__non_const_wrapper__.22.exit.thread160 ], [ %conv54175, %__non_const_wrapper__.22.exit.thread171 ], [ 0, %csroa.if.end74.i449 ], [ %conv54153, %__non_const_wrapper__.22.exit.thread149 ], [ %conv54131, %__non_const_wrapper__.22.exit.thread127 ], [ %conv54109, %__non_const_wrapper__.22.exit.thread105 ], [ %conv5487, %__non_const_wrapper__.22.exit.thread83 ], [ %conv5465, %__non_const_wrapper__.22.exit.thread61 ], [ %conv5443, %__non_const_wrapper__.22.exit.thread39 ]
  %.phi5.i476 = phi i32 [ 3042, %__non_const_wrapper__.22.exit.thread28 ], [ 538, %__non_const_wrapper__.22.exit.thread50 ], [ 172, %__non_const_wrapper__.22.exit.thread72 ], [ -30, %__non_const_wrapper__.22.exit.thread94 ], [ 1198, %__non_const_wrapper__.22.exit.thread116 ], [ 334, %__non_const_wrapper__.22.exit.thread138 ], [ 58, %__non_const_wrapper__.22.exit.thread160 ], [ -30, %__non_const_wrapper__.22.exit.thread171 ], [ -60, %csroa.if.end74.i449 ], [ 172, %__non_const_wrapper__.22.exit.thread149 ], [ 538, %__non_const_wrapper__.22.exit.thread127 ], [ 3042, %__non_const_wrapper__.22.exit.thread105 ], [ 58, %__non_const_wrapper__.22.exit.thread83 ], [ 334, %__non_const_wrapper__.22.exit.thread61 ], [ 1198, %__non_const_wrapper__.22.exit.thread39 ]
  store i32 %conv5432.sink, i32* @dlt, align 4
  %14 = load i32, i32* @nbl, align 4
  %conv.i39933 = sext i32 %14 to i64
  %mul.i40034 = mul nsw i64 %conv.i39933, 127
  %shr1.i35 = lshr i64 %mul.i40034, 7
  %conv1.i36 = trunc i64 %shr1.i35 to i32
  %add.i = add nsw i32 %conv1.i36, %.phi5.i476
  %15 = icmp sgt i32 %add.i, 0
  %.add.i = select i1 %15, i32 %add.i, i32 0
  %16 = icmp slt i32 %.add.i, 18432
  %nbl.addr.1.i = select i1 %16, i32 %.add.i, i32 18432
  store i32 %nbl.addr.1.i, i32* @nbl, align 4
  %call56.c.c = tail call i32 @scalel.v0.C.c.c(i32 %nbl.addr.1.i, i32 8)
  store i32 %call56.c.c, i32* @detl, align 4
  %add57 = add nsw i32 %conv5432.sink, %call.c.c
  store i32 %add57, i32* @plt, align 4
  tail call void @upzero.v0.C.c.c(i32 %conv5432.sink, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @delay_dltx, i64 0, i64 0), i32* getelementptr inbounds ([6 x i32], [6 x i32]* @delay_bpl, i64 0, i64 0))
  %17 = load i32, i32* @al1, align 4
  %18 = load i32, i32* @al2, align 4
  %19 = load i32, i32* @plt, align 4
  %20 = load i32, i32* @plt1, align 4
  %21 = load i32, i32* @plt2, align 4
  %call58.c.c = tail call i32 @uppol2.v0.C.c.c(i32 %17, i32 %18, i32 %19, i32 %20, i32 %21)
  store i32 %call58.c.c, i32* @al2, align 4
  %call59.c.c = tail call i32 @uppol1.v0.C.c.c(i32 %17, i32 %call58.c.c, i32 %19, i32 %20)
  store i32 %call59.c.c, i32* @al1, align 4
  %22 = load i32, i32* @sl, align 4
  %23 = load i32, i32* @dlt, align 4
  %add60 = add nsw i32 %23, %22
  store i32 %add60, i32* @rlt, align 4
  %24 = load i32, i32* @rlt1, align 4
  store i32 %24, i32* @rlt2, align 4
  store i32 %add60, i32* @rlt1, align 4
  store i32 %20, i32* @plt2, align 4
  store i32 %19, i32* @plt1, align 4
  %call61.c.c = tail call i32 @filtez.v0.C.c.c(i32* getelementptr inbounds ([6 x i32], [6 x i32]* @delay_bph, i64 0, i64 0), i32* getelementptr inbounds ([6 x i32], [6 x i32]* @delay_dhx, i64 0, i64 0))
  store i32 %call61.c.c, i32* @szh, align 4
  %25 = load i32, i32* @rh1, align 4
  %26 = load i32, i32* @ah1, align 4
  %27 = load i32, i32* @rh2, align 4
  %28 = load i32, i32* @ah2, align 4
  %call62.c.c = tail call i32 @filtep.v0.C.c.c(i32 %25, i32 %26, i32 %27, i32 %28)
  store i32 %call62.c.c, i32* @sph, align 4
  %add63 = add nsw i32 %call62.c.c, %call61.c.c
  store i32 %add63, i32* @sh, align 4
  %29 = load i32, i32* @xh, align 4
  %sub64 = sub nsw i32 %29, %add63
  store i32 %sub64, i32* @eh, align 4
  %30 = ashr i32 %sub64, 31
  %31 = and i32 %30, -2
  %32 = add nsw i32 %31, 3
  store i32 %32, i32* @ih, align 4
  %33 = load i32, i32* @deth, align 4
  %conv67 = sext i32 %33 to i64
  %mul68 = mul nsw i64 %conv67, 564
  %shr694 = lshr i64 %mul68, 12
  %conv70 = trunc i64 %shr694 to i32
  %cmp.i479 = icmp sgt i32 %sub64, -1
  %sub.i480 = sub nsw i32 0, %sub64
  %m.0.i481 = select i1 %cmp.i479, i32 %sub64, i32 %sub.i480
  %cmp72 = icmp sgt i32 %m.0.i481, %conv70
  br i1 %cmp72, label %if.then74, label %if.end75

if.then74:                                        ; preds = %__non_const_wrapper__.24.exit
  %dec = add nsw i32 %31, 2
  store i32 %dec, i32* @ih, align 4
  br label %if.end75

if.end75:                                         ; preds = %if.then74, %__non_const_wrapper__.24.exit
  %34 = phi i32 [ %dec, %if.then74 ], [ %32, %__non_const_wrapper__.24.exit ]
  switch i32 %34, label %__non_const_wrapper__.23.exit [
    i32 0, label %__non_const_wrapper__.23.exit.thread
    i32 1, label %logsch.v0.C.c.exit
    i32 2, label %__non_const_wrapper__.23.exit.thread212
  ]

__non_const_wrapper__.23.exit.thread212:          ; preds = %if.end75
  br label %logsch.v0.C.c.exit

__non_const_wrapper__.23.exit.thread:             ; preds = %if.end75
  br label %logsch.v0.C.c.exit

__non_const_wrapper__.23.exit:                    ; preds = %if.end75
  br label %logsch.v0.C.c.exit

logsch.v0.C.c.exit:                               ; preds = %if.end75, %__non_const_wrapper__.23.exit.thread212, %__non_const_wrapper__.23.exit, %__non_const_wrapper__.23.exit.thread
  %.sink345 = phi i64 [ 7408, %__non_const_wrapper__.23.exit.thread212 ], [ 1616, %__non_const_wrapper__.23.exit ], [ -7408, %__non_const_wrapper__.23.exit.thread ], [ -1616, %if.end75 ]
  %.phi.i.i = phi i32 [ 798, %__non_const_wrapper__.23.exit.thread212 ], [ -214, %__non_const_wrapper__.23.exit ], [ 798, %__non_const_wrapper__.23.exit.thread ], [ -214, %if.end75 ]
  %mul80203 = mul nsw i64 %.sink345, %conv67
  %shr815204 = lshr i64 %mul80203, 15
  %conv82205 = trunc i64 %shr815204 to i32
  store i32 %conv82205, i32* @dh, align 4
  %35 = load i32, i32* @nbh, align 4
  %conv.i500206 = sext i32 %35 to i64
  %mul.i501207 = mul nsw i64 %conv.i500206, 127
  %shr1.i502208 = lshr i64 %mul.i501207, 7
  %conv1.i503209 = trunc i64 %shr1.i502208 to i32
  %add.i504 = add nsw i32 %conv1.i503209, %.phi.i.i
  %36 = icmp sgt i32 %add.i504, 0
  %.add.i505 = select i1 %36, i32 %add.i504, i32 0
  %37 = icmp slt i32 %.add.i505, 22528
  %nbh.addr.1.i = select i1 %37, i32 %.add.i505, i32 22528
  store i32 %nbh.addr.1.i, i32* @nbh, align 4
  %call84.c.c = tail call i32 @scalel.v0.C.c.c(i32 %nbh.addr.1.i, i32 10)
  store i32 %call84.c.c, i32* @deth, align 4
  %add85 = add nsw i32 %conv82205, %call61.c.c
  store i32 %add85, i32* @ph, align 4
  tail call void @upzero.v0.C.c.c(i32 %conv82205, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @delay_dhx, i64 0, i64 0), i32* getelementptr inbounds ([6 x i32], [6 x i32]* @delay_bph, i64 0, i64 0))
  %38 = load i32, i32* @ah1, align 4
  %39 = load i32, i32* @ah2, align 4
  %40 = load i32, i32* @ph, align 4
  %41 = load i32, i32* @ph1, align 4
  %42 = load i32, i32* @ph2, align 4
  %call86.c.c = tail call i32 @uppol2.v0.C.c.c(i32 %38, i32 %39, i32 %40, i32 %41, i32 %42)
  store i32 %call86.c.c, i32* @ah2, align 4
  %call87.c.c = tail call i32 @uppol1.v0.C.c.c(i32 %38, i32 %call86.c.c, i32 %40, i32 %41)
  store i32 %call87.c.c, i32* @ah1, align 4
  %43 = load i32, i32* @sh, align 4
  %44 = load i32, i32* @dh, align 4
  %add88 = add nsw i32 %44, %43
  store i32 %add88, i32* @yh, align 4
  %45 = load i32, i32* @rh1, align 4
  store i32 %45, i32* @rh2, align 4
  store i32 %add88, i32* @rh1, align 4
  store i32 %41, i32* @ph2, align 4
  store i32 %40, i32* @ph1, align 4
  %46 = load i32, i32* @il, align 4
  %47 = load i32, i32* @ih, align 4
  %shl = shl i32 %47, 6
  %or = or i32 %shl, %46
  ret i32 %or
}

; Function Attrs: noinline norecurse nounwind readnone
define i32 @filtep.v0.C.c.c(i32 %rlt1, i32 %al1, i32 %rlt2, i32 %al2) local_unnamed_addr #3 {
entry:
  %mul = shl nsw i32 %rlt1, 1
  %conv = sext i32 %mul to i64
  %conv1 = sext i32 %al1 to i64
  %mul2 = mul nsw i64 %conv1, %conv
  %mul3 = shl nsw i32 %rlt2, 1
  %conv4 = sext i32 %mul3 to i64
  %conv5 = sext i32 %al2 to i64
  %mul6 = mul nsw i64 %conv5, %conv4
  %add = add nsw i64 %mul6, %mul2
  %shr1 = lshr i64 %add, 15
  %conv7 = trunc i64 %shr1 to i32
  ret i32 %conv7
}

; Function Attrs: noinline norecurse nounwind readonly
define i32 @filtez.v0.C.c.c(i32* nocapture readonly %bpl, i32* nocapture readonly %dlt) local_unnamed_addr #5 {
entry:
  %0 = load i32, i32* %bpl, align 4
  %conv = sext i32 %0 to i64
  %1 = load i32, i32* %dlt, align 4
  %conv2 = sext i32 %1 to i64
  %mul = mul nsw i64 %conv2, %conv
  br label %for.inc

for.inc:                                          ; preds = %for.inc, %entry
  %bpl.pn = phi i32* [ %bpl, %entry ], [ %bpl.addr.07, %for.inc ]
  %dlt.pn = phi i32* [ %dlt, %entry ], [ %dlt.addr.06, %for.inc ]
  %i.05 = phi i32 [ 1, %entry ], [ %inc, %for.inc ]
  %zl.04 = phi i64 [ %mul, %entry ], [ %add, %for.inc ]
  %dlt.addr.06 = getelementptr inbounds i32, i32* %dlt.pn, i64 1
  %bpl.addr.07 = getelementptr inbounds i32, i32* %bpl.pn, i64 1
  %2 = load i32, i32* %bpl.addr.07, align 4
  %conv5 = sext i32 %2 to i64
  %3 = load i32, i32* %dlt.addr.06, align 4
  %conv7 = sext i32 %3 to i64
  %mul8 = mul nsw i64 %conv7, %conv5
  %add = add nsw i64 %mul8, %zl.04
  %inc = add nuw nsw i32 %i.05, 1
  %exitcond = icmp eq i32 %inc, 6
  br i1 %exitcond, label %for.end, label %for.inc

for.end:                                          ; preds = %for.inc
  %shr1 = lshr i64 %add, 14
  %conv9 = trunc i64 %shr1 to i32
  ret i32 %conv9
}

; Function Attrs: noinline norecurse nounwind
define void @upzero.v0.C.c.c(i32 %dlt, i32* nocapture %dlti, i32* nocapture %bli) local_unnamed_addr #4 {
entry:
  %cmp = icmp eq i32 %dlt, 0
  br i1 %cmp, label %for.body.preheader, label %for.cond5.preheader

for.body.preheader:                               ; preds = %entry
  br label %for.body

for.cond5.preheader:                              ; preds = %entry
  %conv9 = sext i32 %dlt to i64
  br label %for.body8

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr inbounds i32, i32* %bli, i64 %indvars.iv
  %0 = load i32, i32* %arrayidx, align 4
  %conv = sext i32 %0 to i64
  %mul = mul nsw i64 %conv, 255
  %shr2 = lshr i64 %mul, 8
  %conv2 = trunc i64 %shr2 to i32
  store i32 %conv2, i32* %arrayidx, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 6
  br i1 %exitcond, label %if.end29.loopexit, label %for.body

for.body8:                                        ; preds = %for.body8, %for.cond5.preheader
  %indvars.iv7 = phi i64 [ 0, %for.cond5.preheader ], [ %indvars.iv.next8, %for.body8 ]
  %arrayidx11 = getelementptr inbounds i32, i32* %dlti, i64 %indvars.iv7
  %1 = load i32, i32* %arrayidx11, align 4
  %conv12 = sext i32 %1 to i64
  %mul13 = mul nsw i64 %conv12, %conv9
  %cmp14 = icmp sgt i64 %mul13, -1
  %. = select i1 %cmp14, i32 128, i32 -128
  %arrayidx19 = getelementptr inbounds i32, i32* %bli, i64 %indvars.iv7
  %2 = load i32, i32* %arrayidx19, align 4
  %conv20 = sext i32 %2 to i64
  %mul21 = mul nsw i64 %conv20, 255
  %shr221 = lshr i64 %mul21, 8
  %conv23 = trunc i64 %shr221 to i32
  %add = add nsw i32 %conv23, %.
  store i32 %add, i32* %arrayidx19, align 4
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv7, 1
  %exitcond9 = icmp eq i64 %indvars.iv.next8, 6
  br i1 %exitcond9, label %if.end29.loopexit5, label %for.body8

if.end29.loopexit:                                ; preds = %for.body
  br label %if.end29

if.end29.loopexit5:                               ; preds = %for.body8
  br label %if.end29

if.end29:                                         ; preds = %if.end29.loopexit5, %if.end29.loopexit
  %arrayidx30 = getelementptr inbounds i32, i32* %dlti, i64 4
  %3 = load i32, i32* %arrayidx30, align 4
  %arrayidx31 = getelementptr inbounds i32, i32* %dlti, i64 5
  store i32 %3, i32* %arrayidx31, align 4
  %arrayidx32 = getelementptr inbounds i32, i32* %dlti, i64 3
  %4 = load i32, i32* %arrayidx32, align 4
  store i32 %4, i32* %arrayidx30, align 4
  %arrayidx34 = getelementptr inbounds i32, i32* %dlti, i64 2
  %5 = load i32, i32* %arrayidx34, align 4
  store i32 %5, i32* %arrayidx32, align 4
  %arrayidx36 = getelementptr inbounds i32, i32* %dlti, i64 1
  %6 = load i32, i32* %arrayidx36, align 4
  store i32 %6, i32* %arrayidx34, align 4
  %7 = load i32, i32* %dlti, align 4
  store i32 %7, i32* %arrayidx36, align 4
  store i32 %dlt, i32* %dlti, align 4
  ret void
}

; Function Attrs: noinline norecurse nounwind readnone
define i32 @scalel.v0.C.c.c(i32 %nbl, i32 %shift_constant) local_unnamed_addr #3 {
entry:
  %shr3 = lshr i32 %nbl, 6
  %shr1 = ashr i32 %nbl, 11
  %trunc = trunc i32 %shr3 to i5
  switch i5 %trunc, label %csroa.if.end154.i [
    i5 0, label %__non_const_wrapper__.34.exit
    i5 1, label %csroa.if.end4.i
    i5 2, label %csroa.if.end9.i
    i5 3, label %csroa.if.end14.i
    i5 4, label %csroa.if.end19.i
    i5 5, label %csroa.if.end24.i
    i5 6, label %csroa.if.end29.i
    i5 7, label %csroa.if.end34.i
    i5 8, label %csroa.if.end39.i
    i5 9, label %csroa.if.end44.i
    i5 10, label %csroa.if.end49.i
    i5 11, label %csroa.if.end54.i
    i5 12, label %csroa.if.end59.i
    i5 13, label %csroa.if.end64.i
    i5 14, label %csroa.if.end69.i
    i5 15, label %csroa.if.end74.i
    i5 -16, label %csroa.if.end79.i
    i5 -15, label %csroa.if.end84.i
    i5 -14, label %csroa.if.end89.i
    i5 -13, label %csroa.if.end94.i
    i5 -12, label %csroa.if.end99.i
    i5 -11, label %csroa.if.end104.i
    i5 -10, label %csroa.if.end109.i
    i5 -9, label %csroa.if.end114.i
    i5 -8, label %csroa.if.end119.i
    i5 -7, label %csroa.if.end124.i
    i5 -6, label %csroa.if.end129.i
    i5 -5, label %csroa.if.end134.i
    i5 -4, label %csroa.if.end139.i
    i5 -3, label %csroa.if.end144.i
    i5 -2, label %csroa.if.end149.i
  ]

csroa.if.end154.i:                                ; preds = %entry
  br label %csroa.if.end149.i

csroa.if.end149.i:                                ; preds = %entry, %csroa.if.end154.i
  %.phi150.i = phi i32 [ 4008, %csroa.if.end154.i ], [ 3922, %entry ]
  br label %csroa.if.end144.i

csroa.if.end144.i:                                ; preds = %entry, %csroa.if.end149.i
  %.phi145.i = phi i32 [ %.phi150.i, %csroa.if.end149.i ], [ 3838, %entry ]
  br label %csroa.if.end139.i

csroa.if.end139.i:                                ; preds = %entry, %csroa.if.end144.i
  %.phi140.i = phi i32 [ %.phi145.i, %csroa.if.end144.i ], [ 3756, %entry ]
  br label %csroa.if.end134.i

csroa.if.end134.i:                                ; preds = %entry, %csroa.if.end139.i
  %.phi135.i = phi i32 [ %.phi140.i, %csroa.if.end139.i ], [ 3676, %entry ]
  br label %csroa.if.end129.i

csroa.if.end129.i:                                ; preds = %entry, %csroa.if.end134.i
  %.phi130.i = phi i32 [ %.phi135.i, %csroa.if.end134.i ], [ 3597, %entry ]
  br label %csroa.if.end124.i

csroa.if.end124.i:                                ; preds = %entry, %csroa.if.end129.i
  %.phi125.i = phi i32 [ %.phi130.i, %csroa.if.end129.i ], [ 3520, %entry ]
  br label %csroa.if.end119.i

csroa.if.end119.i:                                ; preds = %entry, %csroa.if.end124.i
  %.phi120.i = phi i32 [ %.phi125.i, %csroa.if.end124.i ], [ 3444, %entry ]
  br label %csroa.if.end114.i

csroa.if.end114.i:                                ; preds = %entry, %csroa.if.end119.i
  %.phi115.i = phi i32 [ %.phi120.i, %csroa.if.end119.i ], [ 3371, %entry ]
  br label %csroa.if.end109.i

csroa.if.end109.i:                                ; preds = %entry, %csroa.if.end114.i
  %.phi110.i = phi i32 [ %.phi115.i, %csroa.if.end114.i ], [ 3298, %entry ]
  br label %csroa.if.end104.i

csroa.if.end104.i:                                ; preds = %entry, %csroa.if.end109.i
  %.phi105.i = phi i32 [ %.phi110.i, %csroa.if.end109.i ], [ 3228, %entry ]
  br label %csroa.if.end99.i

csroa.if.end99.i:                                 ; preds = %entry, %csroa.if.end104.i
  %.phi100.i = phi i32 [ %.phi105.i, %csroa.if.end104.i ], [ 3158, %entry ]
  br label %csroa.if.end94.i

csroa.if.end94.i:                                 ; preds = %entry, %csroa.if.end99.i
  %.phi95.i = phi i32 [ %.phi100.i, %csroa.if.end99.i ], [ 3091, %entry ]
  br label %csroa.if.end89.i

csroa.if.end89.i:                                 ; preds = %entry, %csroa.if.end94.i
  %.phi90.i = phi i32 [ %.phi95.i, %csroa.if.end94.i ], [ 3025, %entry ]
  br label %csroa.if.end84.i

csroa.if.end84.i:                                 ; preds = %entry, %csroa.if.end89.i
  %.phi85.i = phi i32 [ %.phi90.i, %csroa.if.end89.i ], [ 2960, %entry ]
  br label %csroa.if.end79.i

csroa.if.end79.i:                                 ; preds = %entry, %csroa.if.end84.i
  %.phi80.i = phi i32 [ %.phi85.i, %csroa.if.end84.i ], [ 2896, %entry ]
  br label %csroa.if.end74.i

csroa.if.end74.i:                                 ; preds = %entry, %csroa.if.end79.i
  %.phi75.i = phi i32 [ %.phi80.i, %csroa.if.end79.i ], [ 2834, %entry ]
  br label %csroa.if.end69.i

csroa.if.end69.i:                                 ; preds = %entry, %csroa.if.end74.i
  %.phi70.i = phi i32 [ %.phi75.i, %csroa.if.end74.i ], [ 2774, %entry ]
  br label %csroa.if.end64.i

csroa.if.end64.i:                                 ; preds = %entry, %csroa.if.end69.i
  %.phi65.i = phi i32 [ %.phi70.i, %csroa.if.end69.i ], [ 2714, %entry ]
  br label %csroa.if.end59.i

csroa.if.end59.i:                                 ; preds = %entry, %csroa.if.end64.i
  %.phi60.i = phi i32 [ %.phi65.i, %csroa.if.end64.i ], [ 2656, %entry ]
  br label %csroa.if.end54.i

csroa.if.end54.i:                                 ; preds = %entry, %csroa.if.end59.i
  %.phi55.i = phi i32 [ %.phi60.i, %csroa.if.end59.i ], [ 2599, %entry ]
  br label %csroa.if.end49.i

csroa.if.end49.i:                                 ; preds = %entry, %csroa.if.end54.i
  %.phi50.i = phi i32 [ %.phi55.i, %csroa.if.end54.i ], [ 2543, %entry ]
  br label %csroa.if.end44.i

csroa.if.end44.i:                                 ; preds = %entry, %csroa.if.end49.i
  %.phi45.i = phi i32 [ %.phi50.i, %csroa.if.end49.i ], [ 2489, %entry ]
  br label %csroa.if.end39.i

csroa.if.end39.i:                                 ; preds = %entry, %csroa.if.end44.i
  %.phi40.i = phi i32 [ %.phi45.i, %csroa.if.end44.i ], [ 2435, %entry ]
  br label %csroa.if.end34.i

csroa.if.end34.i:                                 ; preds = %entry, %csroa.if.end39.i
  %.phi35.i = phi i32 [ %.phi40.i, %csroa.if.end39.i ], [ 2383, %entry ]
  br label %csroa.if.end29.i

csroa.if.end29.i:                                 ; preds = %entry, %csroa.if.end34.i
  %.phi30.i = phi i32 [ %.phi35.i, %csroa.if.end34.i ], [ 2332, %entry ]
  br label %csroa.if.end24.i

csroa.if.end24.i:                                 ; preds = %entry, %csroa.if.end29.i
  %.phi25.i = phi i32 [ %.phi30.i, %csroa.if.end29.i ], [ 2282, %entry ]
  br label %csroa.if.end19.i

csroa.if.end19.i:                                 ; preds = %entry, %csroa.if.end24.i
  %.phi20.i = phi i32 [ %.phi25.i, %csroa.if.end24.i ], [ 2233, %entry ]
  br label %csroa.if.end14.i

csroa.if.end14.i:                                 ; preds = %entry, %csroa.if.end19.i
  %.phi15.i = phi i32 [ %.phi20.i, %csroa.if.end19.i ], [ 2186, %entry ]
  br label %csroa.if.end9.i

csroa.if.end9.i:                                  ; preds = %entry, %csroa.if.end14.i
  %.phi10.i = phi i32 [ %.phi15.i, %csroa.if.end14.i ], [ 2139, %entry ]
  br label %csroa.if.end4.i

csroa.if.end4.i:                                  ; preds = %entry, %csroa.if.end9.i
  %.phi5.i = phi i32 [ %.phi10.i, %csroa.if.end9.i ], [ 2093, %entry ]
  br label %__non_const_wrapper__.34.exit

__non_const_wrapper__.34.exit:                    ; preds = %entry, %csroa.if.end4.i
  %.phi.i = phi i32 [ %.phi5.i, %csroa.if.end4.i ], [ 2048, %entry ]
  %add = add nsw i32 %shift_constant, 1
  %sub = sub i32 %add, %shr1
  %shr2 = ashr i32 %.phi.i, %sub
  %shl = shl i32 %shr2, 3
  ret i32 %shl
}

attributes #0 = { noinline nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noinline norecurse nounwind readnone }
attributes #4 = { noinline norecurse nounwind }
attributes #5 = { noinline norecurse nounwind readonly }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
