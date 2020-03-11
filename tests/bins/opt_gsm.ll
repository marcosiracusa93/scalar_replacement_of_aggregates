; ModuleID = './../tests/test_cases/gsm.ll'
source_filename = "gsm.c"
target datalayout = "e-m:o-p:32:32-f64:32:64-f80:128-n8:16:32-S128"
target triple = "i386-apple-macosx10.13.0"

@bitoff = local_unnamed_addr constant [256 x i8] c"\08\07\06\06\05\05\05\05\04\04\04\04\04\04\04\04\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 1
@inData = local_unnamed_addr constant [160 x i16] [i16 81, i16 10854, i16 1893, i16 -10291, i16 7614, i16 29718, i16 20475, i16 -29215, i16 -18949, i16 -29806, i16 -32017, i16 1596, i16 15744, i16 -3088, i16 -17413, i16 -22123, i16 6798, i16 -13276, i16 3819, i16 -16273, i16 -1573, i16 -12523, i16 -27103, i16 -193, i16 -25588, i16 4698, i16 -30436, i16 15264, i16 -1393, i16 11418, i16 11370, i16 4986, i16 7869, i16 -1903, i16 9123, i16 -31726, i16 -25237, i16 -14155, i16 17982, i16 32427, i16 -12439, i16 -15931, i16 -21622, i16 7896, i16 1689, i16 28113, i16 3615, i16 22131, i16 -5572, i16 -20110, i16 12387, i16 9177, i16 -24544, i16 12480, i16 21546, i16 -17842, i16 -13645, i16 20277, i16 9987, i16 17652, i16 -11464, i16 -17326, i16 -10552, i16 -27100, i16 207, i16 27612, i16 2517, i16 7167, i16 -29734, i16 -22441, i16 30039, i16 -2368, i16 12813, i16 300, i16 -25555, i16 9087, i16 29022, i16 -6559, i16 -20311, i16 -14347, i16 -7555, i16 -21709, i16 -3676, i16 -30082, i16 -3190, i16 -30979, i16 8580, i16 27126, i16 3414, i16 -4603, i16 -22303, i16 -17143, i16 13788, i16 -1096, i16 -14617, i16 22071, i16 -13552, i16 32646, i16 16689, i16 -8473, i16 -12733, i16 10503, i16 20745, i16 6696, i16 -26842, i16 -31015, i16 3792, i16 -19864, i16 -20431, i16 -30307, i16 32421, i16 -13237, i16 9006, i16 18249, i16 2403, i16 -7996, i16 -14827, i16 -5860, i16 7122, i16 29817, i16 -31894, i16 17955, i16 28836, i16 -31297, i16 31821, i16 -27502, i16 12276, i16 -5587, i16 -22105, i16 9192, i16 -22549, i16 15675, i16 -12265, i16 7212, i16 -23749, i16 -12856, i16 -5857, i16 7521, i16 17349, i16 13773, i16 -3091, i16 -17812, i16 -9655, i16 26667, i16 7902, i16 2487, i16 3177, i16 29412, i16 -20224, i16 -2776, i16 24084, i16 -7963, i16 -10438, i16 -11938, i16 -14833, i16 -6658, i16 32058, i16 4020, i16 10461, i16 15159], align 2
@outData = local_unnamed_addr constant [160 x i16] [i16 80, i16 10848, i16 1888, i16 -10288, i16 7616, i16 29712, i16 20480, i16 -29216, i16 -18944, i16 -29808, i16 -32016, i16 1600, i16 15744, i16 -3088, i16 -17408, i16 -22128, i16 6800, i16 -13280, i16 3824, i16 -16272, i16 -1568, i16 -12528, i16 -27104, i16 -192, i16 -25584, i16 4704, i16 -30432, i16 15264, i16 -1392, i16 11424, i16 11376, i16 4992, i16 7872, i16 -1904, i16 9120, i16 -31728, i16 -25232, i16 -14160, i16 17984, i16 32432, i16 -12432, i16 -15936, i16 -21616, i16 7904, i16 1696, i16 28112, i16 3616, i16 22128, i16 -5568, i16 -20112, i16 12384, i16 9184, i16 -24544, i16 12480, i16 21552, i16 -17840, i16 -13648, i16 20272, i16 9984, i16 17648, i16 -11456, i16 -17328, i16 -10544, i16 -27104, i16 208, i16 27616, i16 2512, i16 7168, i16 -29728, i16 -22448, i16 30032, i16 -2368, i16 12816, i16 304, i16 -25552, i16 9088, i16 29024, i16 -6560, i16 -20304, i16 -14352, i16 -7552, i16 -21712, i16 -3680, i16 -30080, i16 -3184, i16 -30976, i16 8576, i16 27120, i16 3408, i16 -4608, i16 -22304, i16 -17136, i16 13792, i16 -1088, i16 -14624, i16 22064, i16 -13552, i16 32640, i16 16688, i16 -8480, i16 -12736, i16 10496, i16 20752, i16 6704, i16 -26848, i16 -31008, i16 3792, i16 -19856, i16 -20432, i16 -30304, i16 32416, i16 -13232, i16 9008, i16 18256, i16 2400, i16 -8000, i16 -14832, i16 -5856, i16 7120, i16 29824, i16 -31888, i16 17952, i16 28832, i16 -31296, i16 31824, i16 -27504, i16 12272, i16 -5584, i16 -22112, i16 9200, i16 -22544, i16 15680, i16 -12272, i16 7216, i16 -23744, i16 -12848, i16 -5856, i16 7520, i16 17344, i16 13776, i16 -3088, i16 -17808, i16 -9648, i16 26672, i16 7904, i16 2480, i16 3184, i16 29408, i16 -20224, i16 -2768, i16 24080, i16 -7968, i16 -10432, i16 -11936, i16 -14832, i16 -6656, i16 32064, i16 4016, i16 10464, i16 15152], align 2
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind ssp
define i32 @main() local_unnamed_addr #0 {
entry:
  %L_ACF.0.i = alloca i32, align 4
  %L_ACF.1.i = alloca i32, align 4
  %L_ACF.2.i = alloca i32, align 4
  %L_ACF.3.i = alloca i32, align 4
  %L_ACF.4.i = alloca i32, align 4
  %L_ACF.5.i = alloca i32, align 4
  %L_ACF.6.i = alloca i32, align 4
  %L_ACF.7.i = alloca i32, align 4
  %L_ACF.8.i = alloca i32, align 4
  %so = alloca [160 x i16], align 2
  %so89 = bitcast [160 x i16]* %so to i8*
  %LARc.0 = alloca i16, align 2
  %LARc.1 = alloca i16, align 2
  %LARc.2 = alloca i16, align 2
  %LARc.3 = alloca i16, align 2
  %LARc.4 = alloca i16, align 2
  %LARc.5 = alloca i16, align 2
  %LARc.6 = alloca i16, align 2
  %LARc.7 = alloca i16, align 2
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %so89, i8* bitcast ([160 x i16]* @inData to i8*), i32 320, i32 2, i1 false)
  %arraydecay = getelementptr inbounds [160 x i16], [160 x i16]* %so, i32 0, i32 0
  %0 = bitcast i32* %L_ACF.0.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* nonnull %0)
  %1 = bitcast i32* %L_ACF.1.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* nonnull %1)
  %2 = bitcast i32* %L_ACF.2.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* nonnull %2)
  %3 = bitcast i32* %L_ACF.3.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* nonnull %3)
  %4 = bitcast i32* %L_ACF.4.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* nonnull %4)
  %5 = bitcast i32* %L_ACF.5.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* nonnull %5)
  %6 = bitcast i32* %L_ACF.6.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* nonnull %6)
  %7 = bitcast i32* %L_ACF.7.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* nonnull %7)
  %8 = bitcast i32* %L_ACF.8.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* nonnull %8)
  call void @Autocorrelation.v0.C.c.c(i16* nonnull %arraydecay, i32* nonnull %L_ACF.0.i, i32* nonnull %L_ACF.1.i, i32* nonnull %L_ACF.2.i, i32* nonnull %L_ACF.3.i, i32* nonnull %L_ACF.4.i, i32* nonnull %L_ACF.5.i, i32* nonnull %L_ACF.6.i, i32* nonnull %L_ACF.7.i, i32* nonnull %L_ACF.8.i) #6
  %.load.17 = load i32, i32* %L_ACF.0.i, align 4
  %.load.1743 = load i32, i32* %L_ACF.1.i, align 4
  %.load.1744 = load i32, i32* %L_ACF.2.i, align 4
  %.load.1745 = load i32, i32* %L_ACF.3.i, align 4
  %.load.1746 = load i32, i32* %L_ACF.4.i, align 4
  %.load.1747 = load i32, i32* %L_ACF.5.i, align 4
  %.load.1748 = load i32, i32* %L_ACF.6.i, align 4
  %.load.1749 = load i32, i32* %L_ACF.7.i, align 4
  %.load.1750 = load i32, i32* %L_ACF.8.i, align 4
  call void @Reflection_coefficients.v0.C.c.c(i32 %.load.17, i32 %.load.1743, i32 %.load.1744, i32 %.load.1745, i32 %.load.1746, i32 %.load.1747, i32 %.load.1748, i32 %.load.1749, i32 %.load.1750, i16* nonnull %LARc.0, i16* nonnull %LARc.1, i16* nonnull %LARc.2, i16* nonnull %LARc.3, i16* nonnull %LARc.4, i16* nonnull %LARc.5, i16* nonnull %LARc.6, i16* nonnull %LARc.7) #6
  call void @Transformation_to_Log_Area_Ratios.v0.C.c.c(i16* nonnull %LARc.0, i16* nonnull %LARc.1, i16* nonnull %LARc.2, i16* nonnull %LARc.3, i16* nonnull %LARc.4, i16* nonnull %LARc.5, i16* nonnull %LARc.6, i16* nonnull %LARc.7) #6
  call void @Quantization_and_coding.v0.C.c.c(i16* nonnull %LARc.0, i16* nonnull %LARc.1, i16* nonnull %LARc.2, i16* nonnull %LARc.3, i16* nonnull %LARc.4, i16* nonnull %LARc.5, i16* nonnull %LARc.6, i16* nonnull %LARc.7) #6
  call void @llvm.lifetime.end(i64 4, i8* nonnull %0)
  call void @llvm.lifetime.end(i64 4, i8* nonnull %1)
  call void @llvm.lifetime.end(i64 4, i8* nonnull %2)
  call void @llvm.lifetime.end(i64 4, i8* nonnull %3)
  call void @llvm.lifetime.end(i64 4, i8* nonnull %4)
  call void @llvm.lifetime.end(i64 4, i8* nonnull %5)
  call void @llvm.lifetime.end(i64 4, i8* nonnull %6)
  call void @llvm.lifetime.end(i64 4, i8* nonnull %7)
  call void @llvm.lifetime.end(i64 4, i8* nonnull %8)
  br label %for.body5

for.cond14.preheader:                             ; preds = %for.body5
  %9 = load i16, i16* %LARc.0, align 2
  %10 = load i16, i16* %LARc.1, align 2
  %11 = load i16, i16* %LARc.2, align 2
  %12 = load i16, i16* %LARc.3, align 2
  %13 = load i16, i16* %LARc.4, align 2
  %14 = load i16, i16* %LARc.5, align 2
  %15 = load i16, i16* %LARc.6, align 2
  %16 = load i16, i16* %LARc.7, align 2
  %cmp22 = icmp ne i16 %16, 2
  %conv23 = zext i1 %cmp22 to i32
  br label %for.body17

for.body5:                                        ; preds = %for.body5, %entry
  %main_result.085 = phi i32 [ 0, %entry ], [ %add, %for.body5 ]
  %i.184 = phi i32 [ 0, %entry ], [ %inc12, %for.body5 ]
  %arrayidx6 = getelementptr inbounds [160 x i16], [160 x i16]* %so, i32 0, i32 %i.184
  %17 = load i16, i16* %arrayidx6, align 2
  %arrayidx7 = getelementptr inbounds [160 x i16], [160 x i16]* @outData, i32 0, i32 %i.184
  %18 = load i16, i16* %arrayidx7, align 2
  %cmp9 = icmp ne i16 %17, %18
  %conv10 = zext i1 %cmp9 to i32
  %add = add nsw i32 %conv10, %main_result.085
  %inc12 = add nuw nsw i32 %i.184, 1
  %exitcond87 = icmp eq i32 %inc12, 160
  br i1 %exitcond87, label %for.cond14.preheader, label %for.body5

for.body17:                                       ; preds = %for.body17.backedge, %for.cond14.preheader
  %main_result.183 = phi i32 [ %add, %for.cond14.preheader ], [ %main_result.183.be, %for.body17.backedge ]
  %i.282 = phi i32 [ 0, %for.cond14.preheader ], [ %i.282.be, %for.body17.backedge ]
  switch i32 %i.282, label %__non_const_wrapper__.35.exit [
    i32 0, label %__non_const_wrapper__.35.exit.thread
    i32 1, label %__non_const_wrapper__.34.exit.thread62
    i32 2, label %__non_const_wrapper__.34.exit.thread64
    i32 3, label %__non_const_wrapper__.34.exit.thread66
    i32 4, label %__non_const_wrapper__.34.exit.thread68
    i32 5, label %__non_const_wrapper__.34.exit.thread70
    i32 6, label %__non_const_wrapper__.34.exit.thread72
  ]

__non_const_wrapper__.34.exit.thread62:           ; preds = %for.body17
  br label %__non_const_wrapper__.35.exit.thread

__non_const_wrapper__.34.exit.thread64:           ; preds = %for.body17
  br label %__non_const_wrapper__.35.exit.thread

__non_const_wrapper__.34.exit.thread66:           ; preds = %for.body17
  br label %__non_const_wrapper__.35.exit.thread

__non_const_wrapper__.34.exit.thread68:           ; preds = %for.body17
  br label %__non_const_wrapper__.35.exit.thread

__non_const_wrapper__.34.exit.thread70:           ; preds = %for.body17
  br label %__non_const_wrapper__.35.exit.thread

__non_const_wrapper__.34.exit.thread72:           ; preds = %for.body17
  br label %__non_const_wrapper__.35.exit.thread

__non_const_wrapper__.35.exit.thread:             ; preds = %__non_const_wrapper__.34.exit.thread62, %__non_const_wrapper__.34.exit.thread66, %__non_const_wrapper__.34.exit.thread70, %__non_const_wrapper__.34.exit.thread72, %__non_const_wrapper__.34.exit.thread68, %__non_const_wrapper__.34.exit.thread64, %for.body17
  %.sink80.ph = phi i16 [ %15, %__non_const_wrapper__.34.exit.thread72 ], [ %14, %__non_const_wrapper__.34.exit.thread70 ], [ %13, %__non_const_wrapper__.34.exit.thread68 ], [ %12, %__non_const_wrapper__.34.exit.thread66 ], [ %11, %__non_const_wrapper__.34.exit.thread64 ], [ %10, %__non_const_wrapper__.34.exit.thread62 ], [ %9, %for.body17 ]
  %.phi.i42.ph = phi i32 [ 3, %__non_const_wrapper__.34.exit.thread72 ], [ 5, %__non_const_wrapper__.34.exit.thread70 ], [ 7, %__non_const_wrapper__.34.exit.thread68 ], [ 13, %__non_const_wrapper__.34.exit.thread66 ], [ 22, %__non_const_wrapper__.34.exit.thread64 ], [ 33, %__non_const_wrapper__.34.exit.thread62 ], [ 32, %for.body17 ]
  %conv196190 = sext i16 %.sink80.ph to i32
  %cmp2291 = icmp ne i32 %conv196190, %.phi.i42.ph
  %conv2392 = zext i1 %cmp2291 to i32
  %add2493 = add nsw i32 %conv2392, %main_result.183
  %inc2694 = add nuw nsw i32 %i.282, 1
  br label %for.body17.backedge

__non_const_wrapper__.35.exit:                    ; preds = %for.body17
  %add24 = add nsw i32 %conv23, %main_result.183
  %inc26 = add nuw nsw i32 %i.282, 1
  %exitcond = icmp eq i32 %inc26, 8
  br i1 %exitcond, label %for.end27, label %for.body17.backedge

for.body17.backedge:                              ; preds = %__non_const_wrapper__.35.exit, %__non_const_wrapper__.35.exit.thread
  %main_result.183.be = phi i32 [ %add24, %__non_const_wrapper__.35.exit ], [ %add2493, %__non_const_wrapper__.35.exit.thread ]
  %i.282.be = phi i32 [ %inc26, %__non_const_wrapper__.35.exit ], [ %inc2694, %__non_const_wrapper__.35.exit.thread ]
  br label %for.body17

for.end27:                                        ; preds = %__non_const_wrapper__.35.exit
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 %add24)
  ret i32 %add24
}

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #1

; Function Attrs: norecurse nounwind readnone
define i16 @gsm_abs.v0.C.c(i16 %a) local_unnamed_addr #2 {
entry:
  %cmp = icmp slt i16 %a, 0
  br i1 %cmp, label %cond.true, label %cond.end9

cond.true:                                        ; preds = %entry
  %cmp3 = icmp eq i16 %a, -32768
  %sub = sub i16 0, %a
  %cond = select i1 %cmp3, i16 32767, i16 %sub
  br label %cond.end9

cond.end9:                                        ; preds = %entry, %cond.true
  %cond10 = phi i16 [ %cond, %cond.true ], [ %a, %entry ]
  ret i16 %cond10
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

; Function Attrs: noinline norecurse nounwind readnone
define i16 @gsm_div.v0.C.c.c(i16 %num, i16 %denum) local_unnamed_addr #4 {
entry:
  %conv1 = sext i16 %denum to i32
  %cmp = icmp eq i16 %num, 0
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %conv = sext i16 %num to i32
  br label %while.body

while.body:                                       ; preds = %if.end, %while.body
  %k.03 = phi i32 [ 15, %if.end ], [ %dec, %while.body ]
  %div.02 = phi i16 [ 0, %if.end ], [ %div.1, %while.body ]
  %L_num.01 = phi i32 [ %conv, %if.end ], [ %L_num.1, %while.body ]
  %dec = add nsw i32 %k.03, -1
  %shl = shl i16 %div.02, 1
  %shl6 = shl i32 %L_num.01, 1
  %cmp7 = icmp slt i32 %shl6, %conv1
  %sub = select i1 %cmp7, i32 0, i32 %conv1
  %L_num.1 = sub nsw i32 %shl6, %sub
  %not.cmp7 = xor i1 %cmp7, true
  %inc = zext i1 %not.cmp7 to i16
  %div.1 = or i16 %inc, %shl
  %tobool = icmp eq i32 %dec, 0
  br i1 %tobool, label %return.loopexit, label %while.body

return.loopexit:                                  ; preds = %while.body
  br label %return

return:                                           ; preds = %return.loopexit, %entry
  %retval.0 = phi i16 [ 0, %entry ], [ %div.1, %return.loopexit ]
  ret i16 %retval.0
}

; Function Attrs: noinline norecurse nounwind
define void @Transformation_to_Log_Area_Ratios.v0.C.c.c(i16* nocapture %r.0, i16* nocapture %r.1, i16* nocapture %r.2, i16* nocapture %r.3, i16* nocapture %r.4, i16* nocapture %r.5, i16* nocapture %r.6, i16* nocapture %r.7) local_unnamed_addr #5 {
entry:
  br label %for.body

for.body:                                         ; preds = %for.inc, %entry
  %r.addr.0.phi8 = phi i32 [ 0, %entry ], [ %incdec.ptr.add, %for.inc ]
  switch i32 %r.addr.0.phi8, label %if.else11 [
    i32 0, label %csroa.if.then.i
    i32 1, label %__non_const_wrapper__.exit
    i32 2, label %csroa.if.then7.i
    i32 3, label %csroa.if.then12.i
    i32 4, label %csroa.if.then17.i
    i32 5, label %csroa.if.then22.i
    i32 6, label %csroa.if.then27.i
    i32 7, label %csroa.if.then32.i
  ]

csroa.if.then.i:                                  ; preds = %for.body
  br label %__non_const_wrapper__.exit

csroa.if.then7.i:                                 ; preds = %for.body
  br label %__non_const_wrapper__.exit

csroa.if.then12.i:                                ; preds = %for.body
  br label %__non_const_wrapper__.exit

csroa.if.then17.i:                                ; preds = %for.body
  br label %__non_const_wrapper__.exit

csroa.if.then22.i:                                ; preds = %for.body
  br label %__non_const_wrapper__.exit

csroa.if.then27.i:                                ; preds = %for.body
  br label %__non_const_wrapper__.exit

csroa.if.then32.i:                                ; preds = %for.body
  br label %__non_const_wrapper__.exit

__non_const_wrapper__.exit:                       ; preds = %csroa.if.then12.i, %csroa.if.then22.i, %csroa.if.then32.i, %csroa.if.then27.i, %csroa.if.then17.i, %csroa.if.then7.i, %csroa.if.then.i, %for.body
  %r.1.sink = phi i16* [ %r.3, %csroa.if.then12.i ], [ %r.5, %csroa.if.then22.i ], [ %r.7, %csroa.if.then32.i ], [ %r.6, %csroa.if.then27.i ], [ %r.4, %csroa.if.then17.i ], [ %r.2, %csroa.if.then7.i ], [ %r.0, %csroa.if.then.i ], [ %r.1, %for.body ]
  %0 = load i16, i16* %r.1.sink, align 2
  %cmp.i = icmp slt i16 %0, 0
  br i1 %cmp.i, label %cond.true.i, label %gsm_abs.v0.C.c.exit

cond.true.i:                                      ; preds = %__non_const_wrapper__.exit
  %cmp3.i = icmp eq i16 %0, -32768
  %sub.i = sub i16 0, %0
  br i1 %cmp3.i, label %if.else11, label %gsm_abs.v0.C.c.exit

gsm_abs.v0.C.c.exit:                              ; preds = %cond.true.i, %__non_const_wrapper__.exit
  %cond10.i = phi i16 [ %sub.i, %cond.true.i ], [ %0, %__non_const_wrapper__.exit ]
  %cmp1 = icmp slt i16 %cond10.i, 22118
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %gsm_abs.v0.C.c.exit
  %conv3 = sext i16 %cond10.i to i32
  %shr = ashr i32 %conv3, 1
  br label %if.end17

if.else:                                          ; preds = %gsm_abs.v0.C.c.exit
  %cmp6 = icmp slt i16 %cond10.i, 31130
  br i1 %cmp6, label %if.then8, label %if.else11

if.then8:                                         ; preds = %if.else
  %conv9 = sext i16 %cond10.i to i32
  %sub = add nsw i32 %conv9, -11059
  br label %if.end17

if.else11:                                        ; preds = %for.body, %cond.true.i, %if.else
  %cond10.i46 = phi i16 [ %cond10.i, %if.else ], [ undef, %for.body ], [ 32767, %cond.true.i ]
  %sub13 = add i16 %cond10.i46, -26112
  %conv15 = sext i16 %sub13 to i32
  %shl = shl nsw i32 %conv15, 2
  br label %if.end17

if.end17:                                         ; preds = %if.then8, %if.else11, %if.then
  %shl.sink.sink = phi i32 [ %shr, %if.then ], [ %shl, %if.else11 ], [ %sub, %if.then8 ]
  switch i32 %r.addr.0.phi8, label %__non_const_wrapper__.12.exit [
    i32 0, label %csroa.if.then.i2
    i32 1, label %__non_const_wrapper__.12.exit.sink.split
    i32 2, label %csroa.if.then7.i8
    i32 3, label %csroa.if.then12.i11
    i32 4, label %csroa.if.then17.i14
    i32 5, label %csroa.if.then22.i17
    i32 6, label %csroa.if.then27.i20
    i32 7, label %csroa.if.then32.i23
  ]

csroa.if.then.i2:                                 ; preds = %if.end17
  br label %__non_const_wrapper__.12.exit.sink.split

csroa.if.then7.i8:                                ; preds = %if.end17
  br label %__non_const_wrapper__.12.exit.sink.split

csroa.if.then12.i11:                              ; preds = %if.end17
  br label %__non_const_wrapper__.12.exit.sink.split

csroa.if.then17.i14:                              ; preds = %if.end17
  br label %__non_const_wrapper__.12.exit.sink.split

csroa.if.then22.i17:                              ; preds = %if.end17
  br label %__non_const_wrapper__.12.exit.sink.split

csroa.if.then27.i20:                              ; preds = %if.end17
  br label %__non_const_wrapper__.12.exit.sink.split

csroa.if.then32.i23:                              ; preds = %if.end17
  br label %__non_const_wrapper__.12.exit.sink.split

__non_const_wrapper__.12.exit.sink.split:         ; preds = %if.end17, %csroa.if.then.i2, %csroa.if.then7.i8, %csroa.if.then17.i14, %csroa.if.then27.i20, %csroa.if.then32.i23, %csroa.if.then22.i17, %csroa.if.then12.i11
  %r.1.sink1 = phi i16* [ %r.3, %csroa.if.then12.i11 ], [ %r.5, %csroa.if.then22.i17 ], [ %r.7, %csroa.if.then32.i23 ], [ %r.6, %csroa.if.then27.i20 ], [ %r.4, %csroa.if.then17.i14 ], [ %r.2, %csroa.if.then7.i8 ], [ %r.0, %csroa.if.then.i2 ], [ %r.1, %if.end17 ]
  %1 = load i16, i16* %r.1.sink1, align 2
  br label %__non_const_wrapper__.12.exit

__non_const_wrapper__.12.exit:                    ; preds = %__non_const_wrapper__.12.exit.sink.split, %if.end17
  %.phi.i39 = phi i16 [ undef, %if.end17 ], [ %1, %__non_const_wrapper__.12.exit.sink.split ]
  %sext = shl i32 %shl.sink.sink, 16
  %conv21 = ashr exact i32 %sext, 16
  %cmp19 = icmp slt i16 %.phi.i39, 0
  %sub22 = sub nsw i32 0, %conv21
  %cond = select i1 %cmp19, i32 %sub22, i32 %conv21
  %conv24 = trunc i32 %cond to i16
  switch i32 %r.addr.0.phi8, label %for.inc [
    i32 0, label %csroa.if.then.i41
    i32 1, label %for.inc.sink.split
    i32 2, label %csroa.if.then6.i
    i32 3, label %csroa.if.then10.i
    i32 4, label %csroa.if.then14.i
    i32 5, label %csroa.if.then18.i
    i32 6, label %csroa.if.then22.i47
    i32 7, label %csroa.if.then26.i
  ]

csroa.if.then.i41:                                ; preds = %__non_const_wrapper__.12.exit
  br label %for.inc.sink.split

csroa.if.then6.i:                                 ; preds = %__non_const_wrapper__.12.exit
  br label %for.inc.sink.split

csroa.if.then10.i:                                ; preds = %__non_const_wrapper__.12.exit
  br label %for.inc.sink.split

csroa.if.then14.i:                                ; preds = %__non_const_wrapper__.12.exit
  br label %for.inc.sink.split

csroa.if.then18.i:                                ; preds = %__non_const_wrapper__.12.exit
  br label %for.inc.sink.split

csroa.if.then22.i47:                              ; preds = %__non_const_wrapper__.12.exit
  br label %for.inc.sink.split

csroa.if.then26.i:                                ; preds = %__non_const_wrapper__.12.exit
  br label %for.inc.sink.split

for.inc.sink.split:                               ; preds = %__non_const_wrapper__.12.exit, %csroa.if.then10.i, %csroa.if.then18.i, %csroa.if.then26.i, %csroa.if.then22.i47, %csroa.if.then14.i, %csroa.if.then6.i, %csroa.if.then.i41
  %r.0.sink = phi i16* [ %r.0, %csroa.if.then.i41 ], [ %r.2, %csroa.if.then6.i ], [ %r.4, %csroa.if.then14.i ], [ %r.6, %csroa.if.then22.i47 ], [ %r.7, %csroa.if.then26.i ], [ %r.5, %csroa.if.then18.i ], [ %r.3, %csroa.if.then10.i ], [ %r.1, %__non_const_wrapper__.12.exit ]
  store i16 %conv24, i16* %r.0.sink, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %__non_const_wrapper__.12.exit
  %incdec.ptr.add = add nuw nsw i32 %r.addr.0.phi8, 1
  %exitcond = icmp eq i32 %incdec.ptr.add, 8
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc
  ret void
}

; Function Attrs: noinline norecurse nounwind
define void @Reflection_coefficients.v0.C.c.c(i32 %L_ACF.0, i32 %L_ACF.1, i32 %L_ACF.2, i32 %L_ACF.3, i32 %L_ACF.4, i32 %L_ACF.5, i32 %L_ACF.6, i32 %L_ACF.7, i32 %L_ACF.8, i16* nocapture %r.0, i16* nocapture %r.1, i16* nocapture %r.2, i16* nocapture %r.3, i16* nocapture %r.4, i16* nocapture %r.5, i16* nocapture %r.6, i16* nocapture %r.7) local_unnamed_addr #5 {
entry:
  %cmp = icmp eq i32 %L_ACF.0, 0
  br i1 %cmp, label %for.body.preheader, label %if.end

for.body.preheader:                               ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %r.addr.0.phi203 = phi i32 [ %incdec.ptr.add, %for.inc ], [ 0, %for.body.preheader ]
  %incdec.ptr.add = add nuw nsw i32 %r.addr.0.phi203, 1
  switch i32 %r.addr.0.phi203, label %for.inc [
    i32 0, label %csroa.if.then.i
    i32 1, label %for.inc.sink.split
    i32 2, label %csroa.if.then6.i
    i32 3, label %csroa.if.then10.i
    i32 4, label %csroa.if.then14.i
    i32 5, label %csroa.if.then18.i
    i32 6, label %csroa.if.then22.i
    i32 7, label %csroa.if.then26.i
  ]

csroa.if.then.i:                                  ; preds = %for.body
  br label %for.inc.sink.split

csroa.if.then6.i:                                 ; preds = %for.body
  br label %for.inc.sink.split

csroa.if.then10.i:                                ; preds = %for.body
  br label %for.inc.sink.split

csroa.if.then14.i:                                ; preds = %for.body
  br label %for.inc.sink.split

csroa.if.then18.i:                                ; preds = %for.body
  br label %for.inc.sink.split

csroa.if.then22.i:                                ; preds = %for.body
  br label %for.inc.sink.split

csroa.if.then26.i:                                ; preds = %for.body
  br label %for.inc.sink.split

for.inc.sink.split:                               ; preds = %for.body, %csroa.if.then10.i, %csroa.if.then18.i, %csroa.if.then26.i, %csroa.if.then22.i, %csroa.if.then14.i, %csroa.if.then6.i, %csroa.if.then.i
  %r.0.sink = phi i16* [ %r.0, %csroa.if.then.i ], [ %r.2, %csroa.if.then6.i ], [ %r.4, %csroa.if.then14.i ], [ %r.6, %csroa.if.then22.i ], [ %r.7, %csroa.if.then26.i ], [ %r.5, %csroa.if.then18.i ], [ %r.3, %csroa.if.then10.i ], [ %r.1, %for.body ]
  store i16 0, i16* %r.0.sink, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %for.body
  %exitcond = icmp eq i32 %incdec.ptr.add, 8
  br i1 %exitcond, label %for.end91.loopexit, label %for.body

if.end:                                           ; preds = %entry
  %call.c.c = tail call i16 @gsm_norm.v0.C.c.c(i32 %L_ACF.0)
  %conv = sext i16 %call.c.c to i32
  %shl = shl i32 %L_ACF.0, %conv
  %shr2 = lshr i32 %shl, 16
  %conv7 = trunc i32 %shr2 to i16
  %shl51 = shl i32 %L_ACF.8, %conv
  %shr252 = lshr i32 %shl51, 16
  %conv753 = trunc i32 %shr252 to i16
  %shl9 = shl i32 %L_ACF.1, %conv
  %shr210 = lshr i32 %shl9, 16
  %conv711 = trunc i32 %shr210 to i16
  %shl15 = shl i32 %L_ACF.2, %conv
  %shr216 = lshr i32 %shl15, 16
  %conv717 = trunc i32 %shr216 to i16
  %shl21 = shl i32 %L_ACF.3, %conv
  %shr222 = lshr i32 %shl21, 16
  %conv723 = trunc i32 %shr222 to i16
  %shl27 = shl i32 %L_ACF.4, %conv
  %shr228 = lshr i32 %shl27, 16
  %conv729 = trunc i32 %shr228 to i16
  %shl33 = shl i32 %L_ACF.5, %conv
  %shr234 = lshr i32 %shl33, 16
  %conv735 = trunc i32 %shr234 to i16
  %shl39 = shl i32 %L_ACF.6, %conv
  %shr240 = lshr i32 %shl39, 16
  %conv741 = trunc i32 %shr240 to i16
  %shl45 = shl i32 %L_ACF.7, %conv
  %shr246 = lshr i32 %shl45, 16
  %conv747 = trunc i32 %shr246 to i16
  br label %for.body5.outer

for.body5.outer:                                  ; preds = %for.inc9, %if.end
  %i.1287.ph = phi i32 [ %inc, %for.inc9 ], [ 0, %if.end ]
  %ACF.0.0286.ph = phi i16 [ %conv7.ACF.0.0, %for.inc9 ], [ undef, %if.end ]
  %ACF.1.0285.ph = phi i16 [ %ACF.1.0285, %for.inc9 ], [ undef, %if.end ]
  %ACF.2.0284.ph = phi i16 [ %ACF.2.0284, %for.inc9 ], [ undef, %if.end ]
  %ACF.3.0283.ph = phi i16 [ %ACF.3.0283, %for.inc9 ], [ undef, %if.end ]
  %ACF.4.0282.ph = phi i16 [ %ACF.4.0282, %for.inc9 ], [ undef, %if.end ]
  %ACF.5.0281.ph = phi i16 [ %ACF.5.0281, %for.inc9 ], [ undef, %if.end ]
  %ACF.6.0280.ph = phi i16 [ %ACF.6.0280, %for.inc9 ], [ undef, %if.end ]
  %ACF.7.0279.ph = phi i16 [ %ACF.7.0279, %for.inc9 ], [ undef, %if.end ]
  br label %for.body5

for.body5:                                        ; preds = %for.body5.outer, %for.inc9.thread
  %i.1287 = phi i32 [ %inc297, %for.inc9.thread ], [ %i.1287.ph, %for.body5.outer ]
  %ACF.1.0285 = phi i16 [ %ACF.1.1.ph, %for.inc9.thread ], [ %ACF.1.0285.ph, %for.body5.outer ]
  %ACF.2.0284 = phi i16 [ %ACF.2.1.ph, %for.inc9.thread ], [ %ACF.2.0284.ph, %for.body5.outer ]
  %ACF.3.0283 = phi i16 [ %ACF.3.1.ph, %for.inc9.thread ], [ %ACF.3.0283.ph, %for.body5.outer ]
  %ACF.4.0282 = phi i16 [ %ACF.4.1.ph, %for.inc9.thread ], [ %ACF.4.0282.ph, %for.body5.outer ]
  %ACF.5.0281 = phi i16 [ %ACF.5.1.ph, %for.inc9.thread ], [ %ACF.5.0281.ph, %for.body5.outer ]
  %ACF.6.0280 = phi i16 [ %ACF.6.1.ph, %for.inc9.thread ], [ %ACF.6.0280.ph, %for.body5.outer ]
  %ACF.7.0279 = phi i16 [ %ACF.7.1.ph, %for.inc9.thread ], [ %ACF.7.0279.ph, %for.body5.outer ]
  switch i32 %i.1287, label %for.inc9 [
    i32 8, label %csroa.if.else.i46.preheader.loopexit
    i32 1, label %for.inc9.thread
    i32 2, label %__non_const_wrapper__.15.exit.thread13
    i32 3, label %__non_const_wrapper__.15.exit.thread19
    i32 4, label %__non_const_wrapper__.15.exit.thread25
    i32 5, label %__non_const_wrapper__.15.exit.thread31
    i32 6, label %__non_const_wrapper__.15.exit.thread37
    i32 7, label %__non_const_wrapper__.15.exit.thread43
  ]

__non_const_wrapper__.15.exit.thread13:           ; preds = %for.body5
  br label %for.inc9.thread

__non_const_wrapper__.15.exit.thread19:           ; preds = %for.body5
  br label %for.inc9.thread

__non_const_wrapper__.15.exit.thread25:           ; preds = %for.body5
  br label %for.inc9.thread

__non_const_wrapper__.15.exit.thread31:           ; preds = %for.body5
  br label %for.inc9.thread

__non_const_wrapper__.15.exit.thread37:           ; preds = %for.body5
  br label %for.inc9.thread

__non_const_wrapper__.15.exit.thread43:           ; preds = %for.body5
  br label %for.inc9.thread

for.inc9.thread:                                  ; preds = %for.body5, %__non_const_wrapper__.15.exit.thread13, %__non_const_wrapper__.15.exit.thread25, %__non_const_wrapper__.15.exit.thread37, %__non_const_wrapper__.15.exit.thread43, %__non_const_wrapper__.15.exit.thread31, %__non_const_wrapper__.15.exit.thread19
  %ACF.7.1.ph = phi i16 [ %ACF.7.0279, %for.body5 ], [ %ACF.7.0279, %__non_const_wrapper__.15.exit.thread13 ], [ %ACF.7.0279, %__non_const_wrapper__.15.exit.thread19 ], [ %ACF.7.0279, %__non_const_wrapper__.15.exit.thread25 ], [ %ACF.7.0279, %__non_const_wrapper__.15.exit.thread31 ], [ %ACF.7.0279, %__non_const_wrapper__.15.exit.thread37 ], [ %conv747, %__non_const_wrapper__.15.exit.thread43 ]
  %ACF.6.1.ph = phi i16 [ %ACF.6.0280, %for.body5 ], [ %ACF.6.0280, %__non_const_wrapper__.15.exit.thread13 ], [ %ACF.6.0280, %__non_const_wrapper__.15.exit.thread19 ], [ %ACF.6.0280, %__non_const_wrapper__.15.exit.thread25 ], [ %ACF.6.0280, %__non_const_wrapper__.15.exit.thread31 ], [ %conv741, %__non_const_wrapper__.15.exit.thread37 ], [ %ACF.6.0280, %__non_const_wrapper__.15.exit.thread43 ]
  %ACF.5.1.ph = phi i16 [ %ACF.5.0281, %for.body5 ], [ %ACF.5.0281, %__non_const_wrapper__.15.exit.thread13 ], [ %ACF.5.0281, %__non_const_wrapper__.15.exit.thread19 ], [ %ACF.5.0281, %__non_const_wrapper__.15.exit.thread25 ], [ %conv735, %__non_const_wrapper__.15.exit.thread31 ], [ %ACF.5.0281, %__non_const_wrapper__.15.exit.thread37 ], [ %ACF.5.0281, %__non_const_wrapper__.15.exit.thread43 ]
  %ACF.4.1.ph = phi i16 [ %ACF.4.0282, %for.body5 ], [ %ACF.4.0282, %__non_const_wrapper__.15.exit.thread13 ], [ %ACF.4.0282, %__non_const_wrapper__.15.exit.thread19 ], [ %conv729, %__non_const_wrapper__.15.exit.thread25 ], [ %ACF.4.0282, %__non_const_wrapper__.15.exit.thread31 ], [ %ACF.4.0282, %__non_const_wrapper__.15.exit.thread37 ], [ %ACF.4.0282, %__non_const_wrapper__.15.exit.thread43 ]
  %ACF.3.1.ph = phi i16 [ %ACF.3.0283, %for.body5 ], [ %ACF.3.0283, %__non_const_wrapper__.15.exit.thread13 ], [ %conv723, %__non_const_wrapper__.15.exit.thread19 ], [ %ACF.3.0283, %__non_const_wrapper__.15.exit.thread25 ], [ %ACF.3.0283, %__non_const_wrapper__.15.exit.thread31 ], [ %ACF.3.0283, %__non_const_wrapper__.15.exit.thread37 ], [ %ACF.3.0283, %__non_const_wrapper__.15.exit.thread43 ]
  %ACF.2.1.ph = phi i16 [ %ACF.2.0284, %for.body5 ], [ %conv717, %__non_const_wrapper__.15.exit.thread13 ], [ %ACF.2.0284, %__non_const_wrapper__.15.exit.thread19 ], [ %ACF.2.0284, %__non_const_wrapper__.15.exit.thread25 ], [ %ACF.2.0284, %__non_const_wrapper__.15.exit.thread31 ], [ %ACF.2.0284, %__non_const_wrapper__.15.exit.thread37 ], [ %ACF.2.0284, %__non_const_wrapper__.15.exit.thread43 ]
  %ACF.1.1.ph = phi i16 [ %conv711, %for.body5 ], [ %ACF.1.0285, %__non_const_wrapper__.15.exit.thread13 ], [ %ACF.1.0285, %__non_const_wrapper__.15.exit.thread19 ], [ %ACF.1.0285, %__non_const_wrapper__.15.exit.thread25 ], [ %ACF.1.0285, %__non_const_wrapper__.15.exit.thread31 ], [ %ACF.1.0285, %__non_const_wrapper__.15.exit.thread37 ], [ %ACF.1.0285, %__non_const_wrapper__.15.exit.thread43 ]
  %inc297 = add nuw nsw i32 %i.1287, 1
  br label %for.body5

for.inc9:                                         ; preds = %for.body5
  %cond = icmp eq i32 %i.1287, 0
  %conv7.ACF.0.0 = select i1 %cond, i16 %conv7, i16 %ACF.0.0286.ph
  %inc = add nuw nsw i32 %i.1287, 1
  %exitcond296 = icmp eq i32 %inc, 9
  br i1 %exitcond296, label %csroa.if.else.i46.preheader.loopexit417, label %for.body5.outer

csroa.if.else.i46.preheader.loopexit:             ; preds = %for.body5
  br label %csroa.if.else.i46.preheader

csroa.if.else.i46.preheader.loopexit417:          ; preds = %for.inc9
  br label %csroa.if.else.i46.preheader

csroa.if.else.i46.preheader:                      ; preds = %csroa.if.else.i46.preheader.loopexit417, %csroa.if.else.i46.preheader.loopexit
  %ACF.0.1310.ph = phi i16 [ %ACF.0.0286.ph, %csroa.if.else.i46.preheader.loopexit ], [ %conv7.ACF.0.0, %csroa.if.else.i46.preheader.loopexit417 ]
  br label %csroa.if.else.i46.outer

csroa.if.else.i46.outer:                          ; preds = %csroa.if.else.i46.preheader, %for.inc17.thread
  %i.2277.ph = phi i32 [ 1, %csroa.if.else.i46.preheader ], [ %inc18311, %for.inc17.thread ]
  %K.1.0276.ph = phi i16 [ undef, %csroa.if.else.i46.preheader ], [ %K.1.1.ph, %for.inc17.thread ]
  %K.2.0275.ph = phi i16 [ undef, %csroa.if.else.i46.preheader ], [ %K.2.1.ph, %for.inc17.thread ]
  %K.3.0274.ph = phi i16 [ undef, %csroa.if.else.i46.preheader ], [ %K.3.1.ph, %for.inc17.thread ]
  %K.4.0273.ph = phi i16 [ undef, %csroa.if.else.i46.preheader ], [ %K.4.1.ph, %for.inc17.thread ]
  %K.5.0272.ph = phi i16 [ undef, %csroa.if.else.i46.preheader ], [ %K.5.1.ph, %for.inc17.thread ]
  %K.6.0271.ph = phi i16 [ undef, %csroa.if.else.i46.preheader ], [ %K.6.1.ph, %for.inc17.thread ]
  br label %csroa.if.else.i46

csroa.if.else.i46:                                ; preds = %csroa.if.else.i46.outer, %for.inc17
  %i.2277 = phi i32 [ %inc18, %for.inc17 ], [ %i.2277.ph, %csroa.if.else.i46.outer ]
  switch i32 %i.2277, label %for.inc17 [
    i32 7, label %for.body23.outer.preheader
    i32 2, label %for.inc17.thread.loopexit377
    i32 3, label %for.inc17.thread.loopexit416
    i32 4, label %csroa.if.then14.i100
    i32 5, label %csroa.if.then18.i103
    i32 6, label %csroa.if.then22.i106
    i32 1, label %for.inc17.thread.loopexit
  ]

csroa.if.then14.i100:                             ; preds = %csroa.if.else.i46
  br label %for.inc17.thread

csroa.if.then18.i103:                             ; preds = %csroa.if.else.i46
  br label %for.inc17.thread

csroa.if.then22.i106:                             ; preds = %csroa.if.else.i46
  br label %for.inc17.thread

for.inc17.thread.loopexit:                        ; preds = %csroa.if.else.i46
  br label %for.inc17.thread

for.inc17.thread.loopexit377:                     ; preds = %csroa.if.else.i46
  br label %for.inc17.thread

for.inc17.thread.loopexit416:                     ; preds = %csroa.if.else.i46
  br label %for.inc17.thread

for.inc17.thread:                                 ; preds = %for.inc17.thread.loopexit416, %for.inc17.thread.loopexit377, %for.inc17.thread.loopexit, %csroa.if.then14.i100, %csroa.if.then22.i106, %csroa.if.then18.i103
  %K.6.1.ph = phi i16 [ %K.6.0271.ph, %csroa.if.then14.i100 ], [ %K.6.0271.ph, %csroa.if.then18.i103 ], [ %ACF.6.0280, %csroa.if.then22.i106 ], [ %K.6.0271.ph, %for.inc17.thread.loopexit ], [ %K.6.0271.ph, %for.inc17.thread.loopexit377 ], [ %K.6.0271.ph, %for.inc17.thread.loopexit416 ]
  %K.5.1.ph = phi i16 [ %K.5.0272.ph, %csroa.if.then14.i100 ], [ %ACF.5.0281, %csroa.if.then18.i103 ], [ %K.5.0272.ph, %csroa.if.then22.i106 ], [ %K.5.0272.ph, %for.inc17.thread.loopexit ], [ %K.5.0272.ph, %for.inc17.thread.loopexit377 ], [ %K.5.0272.ph, %for.inc17.thread.loopexit416 ]
  %K.4.1.ph = phi i16 [ %ACF.4.0282, %csroa.if.then14.i100 ], [ %K.4.0273.ph, %csroa.if.then18.i103 ], [ %K.4.0273.ph, %csroa.if.then22.i106 ], [ %K.4.0273.ph, %for.inc17.thread.loopexit ], [ %K.4.0273.ph, %for.inc17.thread.loopexit377 ], [ %K.4.0273.ph, %for.inc17.thread.loopexit416 ]
  %K.3.1.ph = phi i16 [ %K.3.0274.ph, %csroa.if.then14.i100 ], [ %K.3.0274.ph, %csroa.if.then18.i103 ], [ %K.3.0274.ph, %csroa.if.then22.i106 ], [ %K.3.0274.ph, %for.inc17.thread.loopexit ], [ %K.3.0274.ph, %for.inc17.thread.loopexit377 ], [ %ACF.3.0283, %for.inc17.thread.loopexit416 ]
  %K.2.1.ph = phi i16 [ %K.2.0275.ph, %csroa.if.then14.i100 ], [ %K.2.0275.ph, %csroa.if.then18.i103 ], [ %K.2.0275.ph, %csroa.if.then22.i106 ], [ %K.2.0275.ph, %for.inc17.thread.loopexit ], [ %ACF.2.0284, %for.inc17.thread.loopexit377 ], [ %K.2.0275.ph, %for.inc17.thread.loopexit416 ]
  %K.1.1.ph = phi i16 [ %K.1.0276.ph, %csroa.if.then14.i100 ], [ %K.1.0276.ph, %csroa.if.then18.i103 ], [ %K.1.0276.ph, %csroa.if.then22.i106 ], [ %ACF.1.0285, %for.inc17.thread.loopexit ], [ %K.1.0276.ph, %for.inc17.thread.loopexit377 ], [ %K.1.0276.ph, %for.inc17.thread.loopexit416 ]
  %inc18311 = add nuw nsw i32 %i.2277, 1
  br label %csroa.if.else.i46.outer

for.inc17:                                        ; preds = %csroa.if.else.i46
  %inc18 = add nuw nsw i32 %i.2277, 1
  %exitcond295 = icmp eq i32 %inc18, 8
  br i1 %exitcond295, label %for.body23.outer.preheader, label %csroa.if.else.i46

for.body23.outer.preheader:                       ; preds = %for.inc17, %csroa.if.else.i46
  br label %for.body23.outer

for.body23.outer:                                 ; preds = %for.body23.outer.preheader, %for.inc26.thread
  %i.3269.ph = phi i32 [ %inc27323, %for.inc26.thread ], [ 0, %for.body23.outer.preheader ]
  %P.0.0268.ph = phi i16 [ %P.0.1.ph, %for.inc26.thread ], [ undef, %for.body23.outer.preheader ]
  %P.1.0267.ph = phi i16 [ %P.1.1.ph, %for.inc26.thread ], [ undef, %for.body23.outer.preheader ]
  %P.2.0266.ph = phi i16 [ %P.2.1.ph, %for.inc26.thread ], [ undef, %for.body23.outer.preheader ]
  %P.3.0265.ph = phi i16 [ %P.3.1.ph, %for.inc26.thread ], [ undef, %for.body23.outer.preheader ]
  %P.4.0264.ph = phi i16 [ %P.4.1.ph, %for.inc26.thread ], [ undef, %for.body23.outer.preheader ]
  %P.5.0263.ph = phi i16 [ %P.5.1.ph, %for.inc26.thread ], [ undef, %for.body23.outer.preheader ]
  %P.6.0262.ph = phi i16 [ %P.6.1.ph, %for.inc26.thread ], [ undef, %for.body23.outer.preheader ]
  %P.7.0261.ph = phi i16 [ %P.7.1.ph, %for.inc26.thread ], [ undef, %for.body23.outer.preheader ]
  br label %for.body23

for.body23:                                       ; preds = %for.body23.outer, %for.inc26
  %i.3269 = phi i32 [ %inc27, %for.inc26 ], [ %i.3269.ph, %for.body23.outer ]
  switch i32 %i.3269, label %for.inc26 [
    i32 8, label %for.body32.preheader
    i32 1, label %for.inc26.thread.loopexit376
    i32 2, label %for.inc26.thread.loopexit415
    i32 3, label %csroa.if.then10.i176
    i32 4, label %csroa.if.then14.i179
    i32 5, label %csroa.if.then18.i182
    i32 6, label %csroa.if.then22.i185
    i32 7, label %csroa.if.then26.i188
    i32 0, label %for.inc26.thread.loopexit
  ]

csroa.if.then10.i176:                             ; preds = %for.body23
  br label %for.inc26.thread

csroa.if.then14.i179:                             ; preds = %for.body23
  br label %for.inc26.thread

csroa.if.then18.i182:                             ; preds = %for.body23
  br label %for.inc26.thread

csroa.if.then22.i185:                             ; preds = %for.body23
  br label %for.inc26.thread

csroa.if.then26.i188:                             ; preds = %for.body23
  br label %for.inc26.thread

for.inc26.thread.loopexit:                        ; preds = %for.body23
  br label %for.inc26.thread

for.inc26.thread.loopexit376:                     ; preds = %for.body23
  br label %for.inc26.thread

for.inc26.thread.loopexit415:                     ; preds = %for.body23
  br label %for.inc26.thread

for.inc26.thread:                                 ; preds = %for.inc26.thread.loopexit415, %for.inc26.thread.loopexit376, %for.inc26.thread.loopexit, %csroa.if.then14.i179, %csroa.if.then22.i185, %csroa.if.then26.i188, %csroa.if.then18.i182, %csroa.if.then10.i176
  %P.7.1.ph = phi i16 [ %P.7.0261.ph, %csroa.if.then10.i176 ], [ %P.7.0261.ph, %csroa.if.then14.i179 ], [ %P.7.0261.ph, %csroa.if.then18.i182 ], [ %P.7.0261.ph, %csroa.if.then22.i185 ], [ %ACF.7.0279, %csroa.if.then26.i188 ], [ %P.7.0261.ph, %for.inc26.thread.loopexit ], [ %P.7.0261.ph, %for.inc26.thread.loopexit376 ], [ %P.7.0261.ph, %for.inc26.thread.loopexit415 ]
  %P.6.1.ph = phi i16 [ %P.6.0262.ph, %csroa.if.then10.i176 ], [ %P.6.0262.ph, %csroa.if.then14.i179 ], [ %P.6.0262.ph, %csroa.if.then18.i182 ], [ %ACF.6.0280, %csroa.if.then22.i185 ], [ %P.6.0262.ph, %csroa.if.then26.i188 ], [ %P.6.0262.ph, %for.inc26.thread.loopexit ], [ %P.6.0262.ph, %for.inc26.thread.loopexit376 ], [ %P.6.0262.ph, %for.inc26.thread.loopexit415 ]
  %P.5.1.ph = phi i16 [ %P.5.0263.ph, %csroa.if.then10.i176 ], [ %P.5.0263.ph, %csroa.if.then14.i179 ], [ %ACF.5.0281, %csroa.if.then18.i182 ], [ %P.5.0263.ph, %csroa.if.then22.i185 ], [ %P.5.0263.ph, %csroa.if.then26.i188 ], [ %P.5.0263.ph, %for.inc26.thread.loopexit ], [ %P.5.0263.ph, %for.inc26.thread.loopexit376 ], [ %P.5.0263.ph, %for.inc26.thread.loopexit415 ]
  %P.4.1.ph = phi i16 [ %P.4.0264.ph, %csroa.if.then10.i176 ], [ %ACF.4.0282, %csroa.if.then14.i179 ], [ %P.4.0264.ph, %csroa.if.then18.i182 ], [ %P.4.0264.ph, %csroa.if.then22.i185 ], [ %P.4.0264.ph, %csroa.if.then26.i188 ], [ %P.4.0264.ph, %for.inc26.thread.loopexit ], [ %P.4.0264.ph, %for.inc26.thread.loopexit376 ], [ %P.4.0264.ph, %for.inc26.thread.loopexit415 ]
  %P.3.1.ph = phi i16 [ %ACF.3.0283, %csroa.if.then10.i176 ], [ %P.3.0265.ph, %csroa.if.then14.i179 ], [ %P.3.0265.ph, %csroa.if.then18.i182 ], [ %P.3.0265.ph, %csroa.if.then22.i185 ], [ %P.3.0265.ph, %csroa.if.then26.i188 ], [ %P.3.0265.ph, %for.inc26.thread.loopexit ], [ %P.3.0265.ph, %for.inc26.thread.loopexit376 ], [ %P.3.0265.ph, %for.inc26.thread.loopexit415 ]
  %P.2.1.ph = phi i16 [ %P.2.0266.ph, %csroa.if.then10.i176 ], [ %P.2.0266.ph, %csroa.if.then14.i179 ], [ %P.2.0266.ph, %csroa.if.then18.i182 ], [ %P.2.0266.ph, %csroa.if.then22.i185 ], [ %P.2.0266.ph, %csroa.if.then26.i188 ], [ %P.2.0266.ph, %for.inc26.thread.loopexit ], [ %P.2.0266.ph, %for.inc26.thread.loopexit376 ], [ %ACF.2.0284, %for.inc26.thread.loopexit415 ]
  %P.1.1.ph = phi i16 [ %P.1.0267.ph, %csroa.if.then10.i176 ], [ %P.1.0267.ph, %csroa.if.then14.i179 ], [ %P.1.0267.ph, %csroa.if.then18.i182 ], [ %P.1.0267.ph, %csroa.if.then22.i185 ], [ %P.1.0267.ph, %csroa.if.then26.i188 ], [ %P.1.0267.ph, %for.inc26.thread.loopexit ], [ %ACF.1.0285, %for.inc26.thread.loopexit376 ], [ %P.1.0267.ph, %for.inc26.thread.loopexit415 ]
  %P.0.1.ph = phi i16 [ %P.0.0268.ph, %csroa.if.then10.i176 ], [ %P.0.0268.ph, %csroa.if.then14.i179 ], [ %P.0.0268.ph, %csroa.if.then18.i182 ], [ %P.0.0268.ph, %csroa.if.then22.i185 ], [ %P.0.0268.ph, %csroa.if.then26.i188 ], [ %ACF.0.1310.ph, %for.inc26.thread.loopexit ], [ %P.0.0268.ph, %for.inc26.thread.loopexit376 ], [ %P.0.0268.ph, %for.inc26.thread.loopexit415 ]
  %inc27323 = add nuw nsw i32 %i.3269, 1
  br label %for.body23.outer

for.inc26:                                        ; preds = %for.body23
  %inc27 = add nuw nsw i32 %i.3269, 1
  %exitcond294 = icmp eq i32 %inc27, 9
  br i1 %exitcond294, label %for.body32.preheader, label %for.body23

for.body32.preheader:                             ; preds = %for.body23, %for.inc26
  br label %for.body32

for.body32:                                       ; preds = %for.body32.preheader, %for.inc88
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc88 ], [ 8, %for.body32.preheader ]
  %r.addr.1.phi258 = phi i32 [ %incdec.ptr90.add, %for.inc88 ], [ 0, %for.body32.preheader ]
  %n.0257 = phi i32 [ %inc89, %for.inc88 ], [ 1, %for.body32.preheader ]
  %P.0.2256 = phi i16 [ %call67.c.c, %for.inc88 ], [ %P.0.0268.ph, %for.body32.preheader ]
  %P.1.2255 = phi i16 [ %P.1.3.lcssa, %for.inc88 ], [ %P.1.0267.ph, %for.body32.preheader ]
  %P.2.2254 = phi i16 [ %P.2.3.lcssa, %for.inc88 ], [ %P.2.0266.ph, %for.body32.preheader ]
  %P.3.2253 = phi i16 [ %P.3.3.lcssa, %for.inc88 ], [ %P.3.0265.ph, %for.body32.preheader ]
  %P.4.2252 = phi i16 [ %P.4.3.lcssa, %for.inc88 ], [ %P.4.0264.ph, %for.body32.preheader ]
  %P.5.2251 = phi i16 [ %P.5.3.lcssa, %for.inc88 ], [ %P.5.0263.ph, %for.body32.preheader ]
  %P.6.2250 = phi i16 [ %P.6.3.lcssa, %for.inc88 ], [ %P.6.0262.ph, %for.body32.preheader ]
  %P.7.2249 = phi i16 [ %P.7.3.lcssa, %for.inc88 ], [ %P.7.0261.ph, %for.body32.preheader ]
  %K.8.2247 = phi i16 [ %K.8.3.lcssa, %for.inc88 ], [ undef, %for.body32.preheader ]
  %K.1.2246 = phi i16 [ %K.1.3.lcssa, %for.inc88 ], [ %K.1.0276.ph, %for.body32.preheader ]
  %K.2.2245 = phi i16 [ %K.2.3.lcssa, %for.inc88 ], [ %K.2.0275.ph, %for.body32.preheader ]
  %K.3.2244 = phi i16 [ %K.3.3.lcssa, %for.inc88 ], [ %K.3.0274.ph, %for.body32.preheader ]
  %K.4.2243 = phi i16 [ %K.4.3.lcssa, %for.inc88 ], [ %K.4.0273.ph, %for.body32.preheader ]
  %K.5.2242 = phi i16 [ %K.5.3.lcssa, %for.inc88 ], [ %K.5.0272.ph, %for.body32.preheader ]
  %K.6.2241 = phi i16 [ %K.6.3.lcssa, %for.inc88 ], [ %K.6.0271.ph, %for.body32.preheader ]
  %K.7.2240 = phi i16 [ %K.7.3.lcssa, %for.inc88 ], [ %ACF.7.0279, %for.body32.preheader ]
  %call34.c = tail call i16 @gsm_abs.v0.C.c(i16 %P.1.2255)
  %cmp38 = icmp slt i16 %P.0.2256, %call34.c
  br i1 %cmp38, label %for.body44.preheader, label %if.end49

for.body44.preheader:                             ; preds = %for.body32
  %0 = sub i32 9, %n.0257
  br label %for.body44

for.body44:                                       ; preds = %for.inc46, %for.body44.preheader
  %r.addr.2.phi206 = phi i32 [ %incdec.ptr45.add, %for.inc46 ], [ 0, %for.body44.preheader ]
  %r.addr.2.firstgepi.gepi.add = add i32 %r.addr.2.phi206, %r.addr.1.phi258
  %incdec.ptr45.add = add nuw i32 %r.addr.2.phi206, 1
  switch i32 %r.addr.2.firstgepi.gepi.add, label %for.inc46 [
    i32 0, label %csroa.if.then.i202
    i32 1, label %for.inc46.sink.split
    i32 2, label %csroa.if.then6.i208
    i32 3, label %csroa.if.then10.i211
    i32 4, label %csroa.if.then14.i214
    i32 5, label %csroa.if.then18.i217
    i32 6, label %csroa.if.then22.i220
    i32 7, label %csroa.if.then26.i223
  ]

csroa.if.then.i202:                               ; preds = %for.body44
  br label %for.inc46.sink.split

csroa.if.then6.i208:                              ; preds = %for.body44
  br label %for.inc46.sink.split

csroa.if.then10.i211:                             ; preds = %for.body44
  br label %for.inc46.sink.split

csroa.if.then14.i214:                             ; preds = %for.body44
  br label %for.inc46.sink.split

csroa.if.then18.i217:                             ; preds = %for.body44
  br label %for.inc46.sink.split

csroa.if.then22.i220:                             ; preds = %for.body44
  br label %for.inc46.sink.split

csroa.if.then26.i223:                             ; preds = %for.body44
  br label %for.inc46.sink.split

for.inc46.sink.split:                             ; preds = %for.body44, %csroa.if.then10.i211, %csroa.if.then18.i217, %csroa.if.then26.i223, %csroa.if.then22.i220, %csroa.if.then14.i214, %csroa.if.then6.i208, %csroa.if.then.i202
  %r.0.sink3 = phi i16* [ %r.0, %csroa.if.then.i202 ], [ %r.2, %csroa.if.then6.i208 ], [ %r.4, %csroa.if.then14.i214 ], [ %r.6, %csroa.if.then22.i220 ], [ %r.7, %csroa.if.then26.i223 ], [ %r.5, %csroa.if.then18.i217 ], [ %r.3, %csroa.if.then10.i211 ], [ %r.1, %for.body44 ]
  store i16 0, i16* %r.0.sink3, align 2
  br label %for.inc46

for.inc46:                                        ; preds = %for.inc46.sink.split, %for.body44
  %exitcond292 = icmp eq i32 %incdec.ptr45.add, %0
  br i1 %exitcond292, label %for.end91.loopexit413, label %for.body44

if.end49:                                         ; preds = %for.body32
  %call51.c.c = tail call i16 @gsm_div.v0.C.c.c(i16 %call34.c, i16 %P.0.2256)
  switch i32 %r.addr.1.phi258, label %__non_const_wrapper__.22.exit [
    i32 0, label %csroa.if.then.i233
    i32 1, label %__non_const_wrapper__.22.exit.sink.split
    i32 2, label %csroa.if.then6.i239
    i32 3, label %csroa.if.then10.i242
    i32 4, label %csroa.if.then14.i245
    i32 5, label %csroa.if.then18.i248
    i32 6, label %csroa.if.then22.i251
    i32 7, label %csroa.if.then26.i254
  ]

csroa.if.then.i233:                               ; preds = %if.end49
  br label %__non_const_wrapper__.22.exit.sink.split

csroa.if.then6.i239:                              ; preds = %if.end49
  br label %__non_const_wrapper__.22.exit.sink.split

csroa.if.then10.i242:                             ; preds = %if.end49
  br label %__non_const_wrapper__.22.exit.sink.split

csroa.if.then14.i245:                             ; preds = %if.end49
  br label %__non_const_wrapper__.22.exit.sink.split

csroa.if.then18.i248:                             ; preds = %if.end49
  br label %__non_const_wrapper__.22.exit.sink.split

csroa.if.then22.i251:                             ; preds = %if.end49
  br label %__non_const_wrapper__.22.exit.sink.split

csroa.if.then26.i254:                             ; preds = %if.end49
  br label %__non_const_wrapper__.22.exit.sink.split

__non_const_wrapper__.22.exit.sink.split:         ; preds = %if.end49, %csroa.if.then.i233, %csroa.if.then6.i239, %csroa.if.then14.i245, %csroa.if.then22.i251, %csroa.if.then26.i254, %csroa.if.then18.i248, %csroa.if.then10.i242
  %r.1.sink = phi i16* [ %r.3, %csroa.if.then10.i242 ], [ %r.5, %csroa.if.then18.i248 ], [ %r.7, %csroa.if.then26.i254 ], [ %r.6, %csroa.if.then22.i251 ], [ %r.4, %csroa.if.then14.i245 ], [ %r.2, %csroa.if.then6.i239 ], [ %r.0, %csroa.if.then.i233 ], [ %r.1, %if.end49 ]
  store i16 %call51.c.c, i16* %r.1.sink, align 2
  br label %__non_const_wrapper__.22.exit

__non_const_wrapper__.22.exit:                    ; preds = %__non_const_wrapper__.22.exit.sink.split, %if.end49
  %cmp54 = icmp sgt i16 %P.1.2255, 0
  br i1 %cmp54, label %if.then56, label %if.end59

if.then56:                                        ; preds = %__non_const_wrapper__.22.exit
  switch i32 %r.addr.1.phi258, label %__non_const_wrapper__.23.exit [
    i32 0, label %csroa.if.then.i264
    i32 1, label %__non_const_wrapper__.23.exit.sink.split
    i32 2, label %csroa.if.then7.i270
    i32 3, label %csroa.if.then12.i273
    i32 4, label %csroa.if.then17.i276
    i32 5, label %csroa.if.then22.i279
    i32 6, label %csroa.if.then27.i282
    i32 7, label %csroa.if.then32.i285
  ]

csroa.if.then.i264:                               ; preds = %if.then56
  br label %__non_const_wrapper__.23.exit.sink.split

csroa.if.then7.i270:                              ; preds = %if.then56
  br label %__non_const_wrapper__.23.exit.sink.split

csroa.if.then12.i273:                             ; preds = %if.then56
  br label %__non_const_wrapper__.23.exit.sink.split

csroa.if.then17.i276:                             ; preds = %if.then56
  br label %__non_const_wrapper__.23.exit.sink.split

csroa.if.then22.i279:                             ; preds = %if.then56
  br label %__non_const_wrapper__.23.exit.sink.split

csroa.if.then27.i282:                             ; preds = %if.then56
  br label %__non_const_wrapper__.23.exit.sink.split

csroa.if.then32.i285:                             ; preds = %if.then56
  br label %__non_const_wrapper__.23.exit.sink.split

__non_const_wrapper__.23.exit.sink.split:         ; preds = %if.then56, %csroa.if.then.i264, %csroa.if.then7.i270, %csroa.if.then17.i276, %csroa.if.then27.i282, %csroa.if.then32.i285, %csroa.if.then22.i279, %csroa.if.then12.i273
  %r.1.sink4 = phi i16* [ %r.3, %csroa.if.then12.i273 ], [ %r.5, %csroa.if.then22.i279 ], [ %r.7, %csroa.if.then32.i285 ], [ %r.6, %csroa.if.then27.i282 ], [ %r.4, %csroa.if.then17.i276 ], [ %r.2, %csroa.if.then7.i270 ], [ %r.0, %csroa.if.then.i264 ], [ %r.1, %if.then56 ]
  %1 = load i16, i16* %r.1.sink4, align 2
  br label %__non_const_wrapper__.23.exit

__non_const_wrapper__.23.exit:                    ; preds = %__non_const_wrapper__.23.exit.sink.split, %if.then56
  %.phi.i301 = phi i16 [ undef, %if.then56 ], [ %1, %__non_const_wrapper__.23.exit.sink.split ]
  %sub = sub i16 0, %.phi.i301
  switch i32 %r.addr.1.phi258, label %if.end59 [
    i32 0, label %csroa.if.then.i303
    i32 1, label %csroa.if.then2.i306
    i32 2, label %csroa.if.then6.i309
    i32 3, label %csroa.if.then10.i312
    i32 4, label %csroa.if.then14.i315
    i32 5, label %csroa.if.then18.i318
    i32 6, label %csroa.if.then22.i321
    i32 7, label %csroa.if.then26.i324
  ]

csroa.if.then.i303:                               ; preds = %__non_const_wrapper__.23.exit
  store i16 %sub, i16* %r.0, align 2
  br label %if.end59

csroa.if.then2.i306:                              ; preds = %__non_const_wrapper__.23.exit
  store i16 %sub, i16* %r.1, align 2
  br label %if.end59

csroa.if.then6.i309:                              ; preds = %__non_const_wrapper__.23.exit
  store i16 %sub, i16* %r.2, align 2
  br label %if.end59

csroa.if.then10.i312:                             ; preds = %__non_const_wrapper__.23.exit
  store i16 %sub, i16* %r.3, align 2
  br label %if.end59

csroa.if.then14.i315:                             ; preds = %__non_const_wrapper__.23.exit
  store i16 %sub, i16* %r.4, align 2
  br label %if.end59

csroa.if.then18.i318:                             ; preds = %__non_const_wrapper__.23.exit
  store i16 %sub, i16* %r.5, align 2
  br label %if.end59

csroa.if.then22.i321:                             ; preds = %__non_const_wrapper__.23.exit
  store i16 %sub, i16* %r.6, align 2
  br label %if.end59

csroa.if.then26.i324:                             ; preds = %__non_const_wrapper__.23.exit
  store i16 %sub, i16* %r.7, align 2
  br label %if.end59

if.end59:                                         ; preds = %csroa.if.then.i303, %csroa.if.then6.i309, %csroa.if.then14.i315, %csroa.if.then22.i321, %__non_const_wrapper__.23.exit, %csroa.if.then26.i324, %csroa.if.then18.i318, %csroa.if.then10.i312, %csroa.if.then2.i306, %__non_const_wrapper__.22.exit
  %cmp60 = icmp eq i32 %n.0257, 8
  br i1 %cmp60, label %for.end91.loopexit414, label %if.end63

if.end63:                                         ; preds = %if.end59
  switch i32 %r.addr.1.phi258, label %__non_const_wrapper__.25.exit [
    i32 0, label %csroa.if.then.i334
    i32 1, label %__non_const_wrapper__.25.exit.sink.split
    i32 2, label %csroa.if.then7.i340
    i32 3, label %csroa.if.then12.i343
    i32 4, label %csroa.if.then17.i346
    i32 5, label %csroa.if.then22.i349
    i32 6, label %csroa.if.then27.i352
    i32 7, label %csroa.if.then32.i355
  ]

csroa.if.then.i334:                               ; preds = %if.end63
  br label %__non_const_wrapper__.25.exit.sink.split

csroa.if.then7.i340:                              ; preds = %if.end63
  br label %__non_const_wrapper__.25.exit.sink.split

csroa.if.then12.i343:                             ; preds = %if.end63
  br label %__non_const_wrapper__.25.exit.sink.split

csroa.if.then17.i346:                             ; preds = %if.end63
  br label %__non_const_wrapper__.25.exit.sink.split

csroa.if.then22.i349:                             ; preds = %if.end63
  br label %__non_const_wrapper__.25.exit.sink.split

csroa.if.then27.i352:                             ; preds = %if.end63
  br label %__non_const_wrapper__.25.exit.sink.split

csroa.if.then32.i355:                             ; preds = %if.end63
  br label %__non_const_wrapper__.25.exit.sink.split

__non_const_wrapper__.25.exit.sink.split:         ; preds = %if.end63, %csroa.if.then.i334, %csroa.if.then7.i340, %csroa.if.then17.i346, %csroa.if.then27.i352, %csroa.if.then32.i355, %csroa.if.then22.i349, %csroa.if.then12.i343
  %r.1.sink5 = phi i16* [ %r.3, %csroa.if.then12.i343 ], [ %r.5, %csroa.if.then22.i349 ], [ %r.7, %csroa.if.then32.i355 ], [ %r.6, %csroa.if.then27.i352 ], [ %r.4, %csroa.if.then17.i346 ], [ %r.2, %csroa.if.then7.i340 ], [ %r.0, %csroa.if.then.i334 ], [ %r.1, %if.end63 ]
  %2 = load i16, i16* %r.1.sink5, align 2
  br label %__non_const_wrapper__.25.exit

__non_const_wrapper__.25.exit:                    ; preds = %__non_const_wrapper__.25.exit.sink.split, %if.end63
  %.phi.i371 = phi i16 [ undef, %if.end63 ], [ %2, %__non_const_wrapper__.25.exit.sink.split ]
  %call65.c.c = tail call i16 @gsm_mult_r.v0.C.c.c(i16 %P.1.2255, i16 %.phi.i371)
  %call67.c.c = tail call i16 @gsm_add.v0.C.c.c(i16 %P.0.2256, i16 %call65.c.c)
  %cmp71207 = icmp sgt i32 %n.0257, 7
  br i1 %cmp71207, label %for.inc88, label %csroa.if.else.i375.preheader

csroa.if.else.i375.preheader:                     ; preds = %__non_const_wrapper__.25.exit
  br label %csroa.if.else.i375

csroa.if.else.i375:                               ; preds = %csroa.if.else.i375.preheader, %for.inc85
  %m.0224 = phi i32 [ %inc86, %for.inc85 ], [ 1, %csroa.if.else.i375.preheader ]
  %P.1.3223 = phi i16 [ %P.1.4110, %for.inc85 ], [ %P.1.2255, %csroa.if.else.i375.preheader ]
  %P.2.3222 = phi i16 [ %P.2.4109, %for.inc85 ], [ %P.2.2254, %csroa.if.else.i375.preheader ]
  %P.3.3221 = phi i16 [ %P.3.4108, %for.inc85 ], [ %P.3.2253, %csroa.if.else.i375.preheader ]
  %P.4.3220 = phi i16 [ %P.4.4107, %for.inc85 ], [ %P.4.2252, %csroa.if.else.i375.preheader ]
  %P.5.3219 = phi i16 [ %P.5.4106, %for.inc85 ], [ %P.5.2251, %csroa.if.else.i375.preheader ]
  %P.6.3218 = phi i16 [ %P.6.4105, %for.inc85 ], [ %P.6.2250, %csroa.if.else.i375.preheader ]
  %P.7.3217 = phi i16 [ %P.7.4104, %for.inc85 ], [ %P.7.2249, %csroa.if.else.i375.preheader ]
  %K.8.3215 = phi i16 [ %K.8.4, %for.inc85 ], [ %K.8.2247, %csroa.if.else.i375.preheader ]
  %K.1.3214 = phi i16 [ %K.1.4, %for.inc85 ], [ %K.1.2246, %csroa.if.else.i375.preheader ]
  %K.2.3213 = phi i16 [ %K.2.4, %for.inc85 ], [ %K.2.2245, %csroa.if.else.i375.preheader ]
  %K.3.3212 = phi i16 [ %K.3.4, %for.inc85 ], [ %K.3.2244, %csroa.if.else.i375.preheader ]
  %K.4.3211 = phi i16 [ %K.4.4, %for.inc85 ], [ %K.4.2243, %csroa.if.else.i375.preheader ]
  %K.5.3210 = phi i16 [ %K.5.4, %for.inc85 ], [ %K.5.2242, %csroa.if.else.i375.preheader ]
  %K.6.3209 = phi i16 [ %K.6.4, %for.inc85 ], [ %K.6.2241, %csroa.if.else.i375.preheader ]
  %K.7.3208 = phi i16 [ %K.7.4, %for.inc85 ], [ %K.7.2240, %csroa.if.else.i375.preheader ]
  switch i32 %m.0224, label %__non_const_wrapper__.26.exit [
    i32 8, label %csroa.if.then37.i397
    i32 2, label %csroa.if.then7.i379
    i32 3, label %csroa.if.then12.i382
    i32 4, label %csroa.if.then17.i385
    i32 5, label %csroa.if.then22.i388
    i32 6, label %csroa.if.then27.i391
    i32 7, label %csroa.if.then32.i394
  ]

csroa.if.then7.i379:                              ; preds = %csroa.if.else.i375
  br label %__non_const_wrapper__.26.exit

csroa.if.then12.i382:                             ; preds = %csroa.if.else.i375
  br label %__non_const_wrapper__.26.exit

csroa.if.then17.i385:                             ; preds = %csroa.if.else.i375
  br label %__non_const_wrapper__.26.exit

csroa.if.then22.i388:                             ; preds = %csroa.if.else.i375
  br label %__non_const_wrapper__.26.exit

csroa.if.then27.i391:                             ; preds = %csroa.if.else.i375
  br label %__non_const_wrapper__.26.exit

csroa.if.then32.i394:                             ; preds = %csroa.if.else.i375
  br label %__non_const_wrapper__.26.exit

csroa.if.then37.i397:                             ; preds = %csroa.if.else.i375
  br label %__non_const_wrapper__.26.exit

__non_const_wrapper__.26.exit:                    ; preds = %csroa.if.then12.i382, %csroa.if.then22.i388, %csroa.if.then32.i394, %csroa.if.else.i375, %csroa.if.then37.i397, %csroa.if.then27.i391, %csroa.if.then17.i385, %csroa.if.then7.i379
  %.phi5.i413 = phi i16 [ %K.2.3213, %csroa.if.then7.i379 ], [ %K.3.3212, %csroa.if.then12.i382 ], [ %K.4.3211, %csroa.if.then17.i385 ], [ %K.5.3210, %csroa.if.then22.i388 ], [ %K.6.3209, %csroa.if.then27.i391 ], [ %K.7.3208, %csroa.if.then32.i394 ], [ %K.8.3215, %csroa.if.then37.i397 ], [ %K.1.3214, %csroa.if.else.i375 ]
  switch i32 %r.addr.1.phi258, label %__non_const_wrapper__.27.exit [
    i32 0, label %csroa.if.then.i417
    i32 1, label %__non_const_wrapper__.27.exit.sink.split
    i32 2, label %csroa.if.then7.i423
    i32 3, label %csroa.if.then12.i426
    i32 4, label %csroa.if.then17.i429
    i32 5, label %csroa.if.then22.i432
    i32 6, label %csroa.if.then27.i435
    i32 7, label %csroa.if.then32.i438
  ]

csroa.if.then.i417:                               ; preds = %__non_const_wrapper__.26.exit
  br label %__non_const_wrapper__.27.exit.sink.split

csroa.if.then7.i423:                              ; preds = %__non_const_wrapper__.26.exit
  br label %__non_const_wrapper__.27.exit.sink.split

csroa.if.then12.i426:                             ; preds = %__non_const_wrapper__.26.exit
  br label %__non_const_wrapper__.27.exit.sink.split

csroa.if.then17.i429:                             ; preds = %__non_const_wrapper__.26.exit
  br label %__non_const_wrapper__.27.exit.sink.split

csroa.if.then22.i432:                             ; preds = %__non_const_wrapper__.26.exit
  br label %__non_const_wrapper__.27.exit.sink.split

csroa.if.then27.i435:                             ; preds = %__non_const_wrapper__.26.exit
  br label %__non_const_wrapper__.27.exit.sink.split

csroa.if.then32.i438:                             ; preds = %__non_const_wrapper__.26.exit
  br label %__non_const_wrapper__.27.exit.sink.split

__non_const_wrapper__.27.exit.sink.split:         ; preds = %__non_const_wrapper__.26.exit, %csroa.if.then.i417, %csroa.if.then7.i423, %csroa.if.then17.i429, %csroa.if.then27.i435, %csroa.if.then32.i438, %csroa.if.then22.i432, %csroa.if.then12.i426
  %r.1.sink6 = phi i16* [ %r.3, %csroa.if.then12.i426 ], [ %r.5, %csroa.if.then22.i432 ], [ %r.7, %csroa.if.then32.i438 ], [ %r.6, %csroa.if.then27.i435 ], [ %r.4, %csroa.if.then17.i429 ], [ %r.2, %csroa.if.then7.i423 ], [ %r.0, %csroa.if.then.i417 ], [ %r.1, %__non_const_wrapper__.26.exit ]
  %3 = load i16, i16* %r.1.sink6, align 2
  br label %__non_const_wrapper__.27.exit

__non_const_wrapper__.27.exit:                    ; preds = %__non_const_wrapper__.27.exit.sink.split, %__non_const_wrapper__.26.exit
  %.phi.i454 = phi i16 [ undef, %__non_const_wrapper__.26.exit ], [ %3, %__non_const_wrapper__.27.exit.sink.split ]
  %call75.c.c = tail call i16 @gsm_mult_r.v0.C.c.c(i16 %.phi5.i413, i16 %.phi.i454)
  switch i32 %m.0224, label %__non_const_wrapper__.30.exit [
    i32 7, label %__non_const_wrapper__.28.exit.thread100
    i32 1, label %__non_const_wrapper__.28.exit.thread
    i32 2, label %__non_const_wrapper__.28.exit.thread85
    i32 3, label %__non_const_wrapper__.28.exit.thread88
    i32 4, label %__non_const_wrapper__.28.exit.thread91
    i32 5, label %__non_const_wrapper__.28.exit.thread94
    i32 6, label %__non_const_wrapper__.28.exit.thread97
  ]

__non_const_wrapper__.28.exit.thread:             ; preds = %__non_const_wrapper__.27.exit
  %call77.c.c83 = tail call i16 @gsm_add.v0.C.c.c(i16 %P.2.3222, i16 %call75.c.c)
  br label %__non_const_wrapper__.30.exit

__non_const_wrapper__.28.exit.thread85:           ; preds = %__non_const_wrapper__.27.exit
  %call77.c.c86 = tail call i16 @gsm_add.v0.C.c.c(i16 %P.3.3221, i16 %call75.c.c)
  br label %__non_const_wrapper__.30.exit

__non_const_wrapper__.28.exit.thread88:           ; preds = %__non_const_wrapper__.27.exit
  %call77.c.c89 = tail call i16 @gsm_add.v0.C.c.c(i16 %P.4.3220, i16 %call75.c.c)
  br label %__non_const_wrapper__.30.exit

__non_const_wrapper__.28.exit.thread91:           ; preds = %__non_const_wrapper__.27.exit
  %call77.c.c92 = tail call i16 @gsm_add.v0.C.c.c(i16 %P.5.3219, i16 %call75.c.c)
  br label %__non_const_wrapper__.30.exit

__non_const_wrapper__.28.exit.thread94:           ; preds = %__non_const_wrapper__.27.exit
  %call77.c.c95 = tail call i16 @gsm_add.v0.C.c.c(i16 %P.6.3218, i16 %call75.c.c)
  br label %__non_const_wrapper__.30.exit

__non_const_wrapper__.28.exit.thread97:           ; preds = %__non_const_wrapper__.27.exit
  %call77.c.c98 = tail call i16 @gsm_add.v0.C.c.c(i16 %P.7.3217, i16 %call75.c.c)
  br label %__non_const_wrapper__.30.exit

__non_const_wrapper__.28.exit.thread100:          ; preds = %__non_const_wrapper__.27.exit
  %call77.c.c101 = tail call i16 @gsm_add.v0.C.c.c(i16 %conv753, i16 %call75.c.c)
  br label %__non_const_wrapper__.30.exit

__non_const_wrapper__.30.exit:                    ; preds = %__non_const_wrapper__.27.exit, %__non_const_wrapper__.28.exit.thread85, %__non_const_wrapper__.28.exit.thread91, %__non_const_wrapper__.28.exit.thread97, %__non_const_wrapper__.28.exit.thread100, %__non_const_wrapper__.28.exit.thread94, %__non_const_wrapper__.28.exit.thread88, %__non_const_wrapper__.28.exit.thread
  %P.1.4110 = phi i16 [ %call77.c.c83, %__non_const_wrapper__.28.exit.thread ], [ %P.1.3223, %__non_const_wrapper__.28.exit.thread85 ], [ %P.1.3223, %__non_const_wrapper__.28.exit.thread88 ], [ %P.1.3223, %__non_const_wrapper__.28.exit.thread91 ], [ %P.1.3223, %__non_const_wrapper__.28.exit.thread94 ], [ %P.1.3223, %__non_const_wrapper__.28.exit.thread97 ], [ %P.1.3223, %__non_const_wrapper__.28.exit.thread100 ], [ %P.1.3223, %__non_const_wrapper__.27.exit ]
  %P.2.4109 = phi i16 [ %P.2.3222, %__non_const_wrapper__.28.exit.thread ], [ %call77.c.c86, %__non_const_wrapper__.28.exit.thread85 ], [ %P.2.3222, %__non_const_wrapper__.28.exit.thread88 ], [ %P.2.3222, %__non_const_wrapper__.28.exit.thread91 ], [ %P.2.3222, %__non_const_wrapper__.28.exit.thread94 ], [ %P.2.3222, %__non_const_wrapper__.28.exit.thread97 ], [ %P.2.3222, %__non_const_wrapper__.28.exit.thread100 ], [ %P.2.3222, %__non_const_wrapper__.27.exit ]
  %P.3.4108 = phi i16 [ %P.3.3221, %__non_const_wrapper__.28.exit.thread ], [ %P.3.3221, %__non_const_wrapper__.28.exit.thread85 ], [ %call77.c.c89, %__non_const_wrapper__.28.exit.thread88 ], [ %P.3.3221, %__non_const_wrapper__.28.exit.thread91 ], [ %P.3.3221, %__non_const_wrapper__.28.exit.thread94 ], [ %P.3.3221, %__non_const_wrapper__.28.exit.thread97 ], [ %P.3.3221, %__non_const_wrapper__.28.exit.thread100 ], [ %P.3.3221, %__non_const_wrapper__.27.exit ]
  %P.4.4107 = phi i16 [ %P.4.3220, %__non_const_wrapper__.28.exit.thread ], [ %P.4.3220, %__non_const_wrapper__.28.exit.thread85 ], [ %P.4.3220, %__non_const_wrapper__.28.exit.thread88 ], [ %call77.c.c92, %__non_const_wrapper__.28.exit.thread91 ], [ %P.4.3220, %__non_const_wrapper__.28.exit.thread94 ], [ %P.4.3220, %__non_const_wrapper__.28.exit.thread97 ], [ %P.4.3220, %__non_const_wrapper__.28.exit.thread100 ], [ %P.4.3220, %__non_const_wrapper__.27.exit ]
  %P.5.4106 = phi i16 [ %P.5.3219, %__non_const_wrapper__.28.exit.thread ], [ %P.5.3219, %__non_const_wrapper__.28.exit.thread85 ], [ %P.5.3219, %__non_const_wrapper__.28.exit.thread88 ], [ %P.5.3219, %__non_const_wrapper__.28.exit.thread91 ], [ %call77.c.c95, %__non_const_wrapper__.28.exit.thread94 ], [ %P.5.3219, %__non_const_wrapper__.28.exit.thread97 ], [ %P.5.3219, %__non_const_wrapper__.28.exit.thread100 ], [ %P.5.3219, %__non_const_wrapper__.27.exit ]
  %P.6.4105 = phi i16 [ %P.6.3218, %__non_const_wrapper__.28.exit.thread ], [ %P.6.3218, %__non_const_wrapper__.28.exit.thread85 ], [ %P.6.3218, %__non_const_wrapper__.28.exit.thread88 ], [ %P.6.3218, %__non_const_wrapper__.28.exit.thread91 ], [ %P.6.3218, %__non_const_wrapper__.28.exit.thread94 ], [ %call77.c.c98, %__non_const_wrapper__.28.exit.thread97 ], [ %P.6.3218, %__non_const_wrapper__.28.exit.thread100 ], [ %P.6.3218, %__non_const_wrapper__.27.exit ]
  %P.7.4104 = phi i16 [ %P.7.3217, %__non_const_wrapper__.28.exit.thread ], [ %P.7.3217, %__non_const_wrapper__.28.exit.thread85 ], [ %P.7.3217, %__non_const_wrapper__.28.exit.thread88 ], [ %P.7.3217, %__non_const_wrapper__.28.exit.thread91 ], [ %P.7.3217, %__non_const_wrapper__.28.exit.thread94 ], [ %P.7.3217, %__non_const_wrapper__.28.exit.thread97 ], [ %call77.c.c101, %__non_const_wrapper__.28.exit.thread100 ], [ %P.7.3217, %__non_const_wrapper__.27.exit ]
  %.phi.i577 = phi i16 [ %P.2.3222, %__non_const_wrapper__.28.exit.thread ], [ %P.3.3221, %__non_const_wrapper__.28.exit.thread85 ], [ %P.4.3220, %__non_const_wrapper__.28.exit.thread88 ], [ %P.5.3219, %__non_const_wrapper__.28.exit.thread91 ], [ %P.6.3218, %__non_const_wrapper__.28.exit.thread94 ], [ %P.7.3217, %__non_const_wrapper__.28.exit.thread97 ], [ %conv753, %__non_const_wrapper__.28.exit.thread100 ], [ %call67.c.c, %__non_const_wrapper__.27.exit ]
  switch i32 %r.addr.1.phi258, label %__non_const_wrapper__.31.exit [
    i32 0, label %csroa.if.then.i579
    i32 1, label %__non_const_wrapper__.31.exit.sink.split
    i32 2, label %csroa.if.then7.i585
    i32 3, label %csroa.if.then12.i588
    i32 4, label %csroa.if.then17.i591
    i32 5, label %csroa.if.then22.i594
    i32 6, label %csroa.if.then27.i597
    i32 7, label %csroa.if.then32.i600
  ]

csroa.if.then.i579:                               ; preds = %__non_const_wrapper__.30.exit
  br label %__non_const_wrapper__.31.exit.sink.split

csroa.if.then7.i585:                              ; preds = %__non_const_wrapper__.30.exit
  br label %__non_const_wrapper__.31.exit.sink.split

csroa.if.then12.i588:                             ; preds = %__non_const_wrapper__.30.exit
  br label %__non_const_wrapper__.31.exit.sink.split

csroa.if.then17.i591:                             ; preds = %__non_const_wrapper__.30.exit
  br label %__non_const_wrapper__.31.exit.sink.split

csroa.if.then22.i594:                             ; preds = %__non_const_wrapper__.30.exit
  br label %__non_const_wrapper__.31.exit.sink.split

csroa.if.then27.i597:                             ; preds = %__non_const_wrapper__.30.exit
  br label %__non_const_wrapper__.31.exit.sink.split

csroa.if.then32.i600:                             ; preds = %__non_const_wrapper__.30.exit
  br label %__non_const_wrapper__.31.exit.sink.split

__non_const_wrapper__.31.exit.sink.split:         ; preds = %__non_const_wrapper__.30.exit, %csroa.if.then.i579, %csroa.if.then7.i585, %csroa.if.then17.i591, %csroa.if.then27.i597, %csroa.if.then32.i600, %csroa.if.then22.i594, %csroa.if.then12.i588
  %r.1.sink7 = phi i16* [ %r.3, %csroa.if.then12.i588 ], [ %r.5, %csroa.if.then22.i594 ], [ %r.7, %csroa.if.then32.i600 ], [ %r.6, %csroa.if.then27.i597 ], [ %r.4, %csroa.if.then17.i591 ], [ %r.2, %csroa.if.then7.i585 ], [ %r.0, %csroa.if.then.i579 ], [ %r.1, %__non_const_wrapper__.30.exit ]
  %4 = load i16, i16* %r.1.sink7, align 2
  br label %__non_const_wrapper__.31.exit

__non_const_wrapper__.31.exit:                    ; preds = %__non_const_wrapper__.31.exit.sink.split, %__non_const_wrapper__.30.exit
  %.phi.i616 = phi i16 [ undef, %__non_const_wrapper__.30.exit ], [ %4, %__non_const_wrapper__.31.exit.sink.split ]
  %call81.c.c = tail call i16 @gsm_mult_r.v0.C.c.c(i16 %.phi.i577, i16 %.phi.i616)
  switch i32 %m.0224, label %__non_const_wrapper__.32.exit [
    i32 8, label %__non_const_wrapper__.32.exit.thread191
    i32 2, label %__non_const_wrapper__.32.exit.thread
    i32 3, label %__non_const_wrapper__.32.exit.thread176
    i32 4, label %__non_const_wrapper__.32.exit.thread179
    i32 5, label %__non_const_wrapper__.32.exit.thread182
    i32 6, label %__non_const_wrapper__.32.exit.thread185
    i32 7, label %__non_const_wrapper__.32.exit.thread188
  ]

__non_const_wrapper__.32.exit.thread:             ; preds = %__non_const_wrapper__.31.exit
  %call83.c.c174 = tail call i16 @gsm_add.v0.C.c.c(i16 %K.2.3213, i16 %call81.c.c)
  br label %for.inc85

__non_const_wrapper__.32.exit.thread176:          ; preds = %__non_const_wrapper__.31.exit
  %call83.c.c177 = tail call i16 @gsm_add.v0.C.c.c(i16 %K.3.3212, i16 %call81.c.c)
  br label %for.inc85

__non_const_wrapper__.32.exit.thread179:          ; preds = %__non_const_wrapper__.31.exit
  %call83.c.c180 = tail call i16 @gsm_add.v0.C.c.c(i16 %K.4.3211, i16 %call81.c.c)
  br label %for.inc85

__non_const_wrapper__.32.exit.thread182:          ; preds = %__non_const_wrapper__.31.exit
  %call83.c.c183 = tail call i16 @gsm_add.v0.C.c.c(i16 %K.5.3210, i16 %call81.c.c)
  br label %for.inc85

__non_const_wrapper__.32.exit.thread185:          ; preds = %__non_const_wrapper__.31.exit
  %call83.c.c186 = tail call i16 @gsm_add.v0.C.c.c(i16 %K.6.3209, i16 %call81.c.c)
  br label %for.inc85

__non_const_wrapper__.32.exit.thread188:          ; preds = %__non_const_wrapper__.31.exit
  %call83.c.c189 = tail call i16 @gsm_add.v0.C.c.c(i16 %K.7.3208, i16 %call81.c.c)
  br label %for.inc85

__non_const_wrapper__.32.exit.thread191:          ; preds = %__non_const_wrapper__.31.exit
  %call83.c.c192 = tail call i16 @gsm_add.v0.C.c.c(i16 %K.8.3215, i16 %call81.c.c)
  br label %for.inc85

__non_const_wrapper__.32.exit:                    ; preds = %__non_const_wrapper__.31.exit
  %call83.c.c = tail call i16 @gsm_add.v0.C.c.c(i16 %K.1.3214, i16 %call81.c.c)
  %cond197 = icmp eq i32 %m.0224, 1
  %call83.c.c.K.1.3 = select i1 %cond197, i16 %call83.c.c, i16 %K.1.3214
  br label %for.inc85

for.inc85:                                        ; preds = %__non_const_wrapper__.32.exit, %__non_const_wrapper__.32.exit.thread, %__non_const_wrapper__.32.exit.thread179, %__non_const_wrapper__.32.exit.thread185, %__non_const_wrapper__.32.exit.thread191, %__non_const_wrapper__.32.exit.thread188, %__non_const_wrapper__.32.exit.thread182, %__non_const_wrapper__.32.exit.thread176
  %K.7.4 = phi i16 [ %K.7.3208, %__non_const_wrapper__.32.exit.thread191 ], [ %call83.c.c189, %__non_const_wrapper__.32.exit.thread188 ], [ %K.7.3208, %__non_const_wrapper__.32.exit.thread185 ], [ %K.7.3208, %__non_const_wrapper__.32.exit.thread182 ], [ %K.7.3208, %__non_const_wrapper__.32.exit.thread179 ], [ %K.7.3208, %__non_const_wrapper__.32.exit.thread176 ], [ %K.7.3208, %__non_const_wrapper__.32.exit.thread ], [ %K.7.3208, %__non_const_wrapper__.32.exit ]
  %K.6.4 = phi i16 [ %K.6.3209, %__non_const_wrapper__.32.exit.thread191 ], [ %K.6.3209, %__non_const_wrapper__.32.exit.thread188 ], [ %call83.c.c186, %__non_const_wrapper__.32.exit.thread185 ], [ %K.6.3209, %__non_const_wrapper__.32.exit.thread182 ], [ %K.6.3209, %__non_const_wrapper__.32.exit.thread179 ], [ %K.6.3209, %__non_const_wrapper__.32.exit.thread176 ], [ %K.6.3209, %__non_const_wrapper__.32.exit.thread ], [ %K.6.3209, %__non_const_wrapper__.32.exit ]
  %K.5.4 = phi i16 [ %K.5.3210, %__non_const_wrapper__.32.exit.thread191 ], [ %K.5.3210, %__non_const_wrapper__.32.exit.thread188 ], [ %K.5.3210, %__non_const_wrapper__.32.exit.thread185 ], [ %call83.c.c183, %__non_const_wrapper__.32.exit.thread182 ], [ %K.5.3210, %__non_const_wrapper__.32.exit.thread179 ], [ %K.5.3210, %__non_const_wrapper__.32.exit.thread176 ], [ %K.5.3210, %__non_const_wrapper__.32.exit.thread ], [ %K.5.3210, %__non_const_wrapper__.32.exit ]
  %K.4.4 = phi i16 [ %K.4.3211, %__non_const_wrapper__.32.exit.thread191 ], [ %K.4.3211, %__non_const_wrapper__.32.exit.thread188 ], [ %K.4.3211, %__non_const_wrapper__.32.exit.thread185 ], [ %K.4.3211, %__non_const_wrapper__.32.exit.thread182 ], [ %call83.c.c180, %__non_const_wrapper__.32.exit.thread179 ], [ %K.4.3211, %__non_const_wrapper__.32.exit.thread176 ], [ %K.4.3211, %__non_const_wrapper__.32.exit.thread ], [ %K.4.3211, %__non_const_wrapper__.32.exit ]
  %K.3.4 = phi i16 [ %K.3.3212, %__non_const_wrapper__.32.exit.thread191 ], [ %K.3.3212, %__non_const_wrapper__.32.exit.thread188 ], [ %K.3.3212, %__non_const_wrapper__.32.exit.thread185 ], [ %K.3.3212, %__non_const_wrapper__.32.exit.thread182 ], [ %K.3.3212, %__non_const_wrapper__.32.exit.thread179 ], [ %call83.c.c177, %__non_const_wrapper__.32.exit.thread176 ], [ %K.3.3212, %__non_const_wrapper__.32.exit.thread ], [ %K.3.3212, %__non_const_wrapper__.32.exit ]
  %K.2.4 = phi i16 [ %K.2.3213, %__non_const_wrapper__.32.exit.thread191 ], [ %K.2.3213, %__non_const_wrapper__.32.exit.thread188 ], [ %K.2.3213, %__non_const_wrapper__.32.exit.thread185 ], [ %K.2.3213, %__non_const_wrapper__.32.exit.thread182 ], [ %K.2.3213, %__non_const_wrapper__.32.exit.thread179 ], [ %K.2.3213, %__non_const_wrapper__.32.exit.thread176 ], [ %call83.c.c174, %__non_const_wrapper__.32.exit.thread ], [ %K.2.3213, %__non_const_wrapper__.32.exit ]
  %K.1.4 = phi i16 [ %K.1.3214, %__non_const_wrapper__.32.exit.thread191 ], [ %K.1.3214, %__non_const_wrapper__.32.exit.thread188 ], [ %K.1.3214, %__non_const_wrapper__.32.exit.thread185 ], [ %K.1.3214, %__non_const_wrapper__.32.exit.thread182 ], [ %K.1.3214, %__non_const_wrapper__.32.exit.thread179 ], [ %K.1.3214, %__non_const_wrapper__.32.exit.thread176 ], [ %K.1.3214, %__non_const_wrapper__.32.exit.thread ], [ %call83.c.c.K.1.3, %__non_const_wrapper__.32.exit ]
  %K.8.4 = phi i16 [ %call83.c.c192, %__non_const_wrapper__.32.exit.thread191 ], [ %K.8.3215, %__non_const_wrapper__.32.exit.thread188 ], [ %K.8.3215, %__non_const_wrapper__.32.exit.thread185 ], [ %K.8.3215, %__non_const_wrapper__.32.exit.thread182 ], [ %K.8.3215, %__non_const_wrapper__.32.exit.thread179 ], [ %K.8.3215, %__non_const_wrapper__.32.exit.thread176 ], [ %K.8.3215, %__non_const_wrapper__.32.exit.thread ], [ %K.8.3215, %__non_const_wrapper__.32.exit ]
  %inc86 = add nuw nsw i32 %m.0224, 1
  %exitcond293 = icmp eq i32 %inc86, %indvars.iv
  br i1 %exitcond293, label %for.inc88.loopexit, label %csroa.if.else.i375

for.inc88.loopexit:                               ; preds = %for.inc85
  br label %for.inc88

for.inc88:                                        ; preds = %for.inc88.loopexit, %__non_const_wrapper__.25.exit
  %K.7.3.lcssa = phi i16 [ %K.7.2240, %__non_const_wrapper__.25.exit ], [ %K.7.4, %for.inc88.loopexit ]
  %K.6.3.lcssa = phi i16 [ %K.6.2241, %__non_const_wrapper__.25.exit ], [ %K.6.4, %for.inc88.loopexit ]
  %K.5.3.lcssa = phi i16 [ %K.5.2242, %__non_const_wrapper__.25.exit ], [ %K.5.4, %for.inc88.loopexit ]
  %K.4.3.lcssa = phi i16 [ %K.4.2243, %__non_const_wrapper__.25.exit ], [ %K.4.4, %for.inc88.loopexit ]
  %K.3.3.lcssa = phi i16 [ %K.3.2244, %__non_const_wrapper__.25.exit ], [ %K.3.4, %for.inc88.loopexit ]
  %K.2.3.lcssa = phi i16 [ %K.2.2245, %__non_const_wrapper__.25.exit ], [ %K.2.4, %for.inc88.loopexit ]
  %K.1.3.lcssa = phi i16 [ %K.1.2246, %__non_const_wrapper__.25.exit ], [ %K.1.4, %for.inc88.loopexit ]
  %K.8.3.lcssa = phi i16 [ %K.8.2247, %__non_const_wrapper__.25.exit ], [ %K.8.4, %for.inc88.loopexit ]
  %P.7.3.lcssa = phi i16 [ %P.7.2249, %__non_const_wrapper__.25.exit ], [ %P.7.4104, %for.inc88.loopexit ]
  %P.6.3.lcssa = phi i16 [ %P.6.2250, %__non_const_wrapper__.25.exit ], [ %P.6.4105, %for.inc88.loopexit ]
  %P.5.3.lcssa = phi i16 [ %P.5.2251, %__non_const_wrapper__.25.exit ], [ %P.5.4106, %for.inc88.loopexit ]
  %P.4.3.lcssa = phi i16 [ %P.4.2252, %__non_const_wrapper__.25.exit ], [ %P.4.4107, %for.inc88.loopexit ]
  %P.3.3.lcssa = phi i16 [ %P.3.2253, %__non_const_wrapper__.25.exit ], [ %P.3.4108, %for.inc88.loopexit ]
  %P.2.3.lcssa = phi i16 [ %P.2.2254, %__non_const_wrapper__.25.exit ], [ %P.2.4109, %for.inc88.loopexit ]
  %P.1.3.lcssa = phi i16 [ %P.1.2255, %__non_const_wrapper__.25.exit ], [ %P.1.4110, %for.inc88.loopexit ]
  %inc89 = add nuw nsw i32 %n.0257, 1
  %incdec.ptr90.add = add nuw nsw i32 %r.addr.1.phi258, 1
  %cmp30 = icmp slt i32 %inc89, 9
  %indvars.iv.next = add nsw i32 %indvars.iv, -1
  br i1 %cmp30, label %for.body32, label %for.end91.loopexit414

for.end91.loopexit:                               ; preds = %for.inc
  br label %for.end91

for.end91.loopexit413:                            ; preds = %for.inc46
  br label %for.end91

for.end91.loopexit414:                            ; preds = %for.inc88, %if.end59
  br label %for.end91

for.end91:                                        ; preds = %for.end91.loopexit414, %for.end91.loopexit413, %for.end91.loopexit
  ret void
}

; Function Attrs: noinline norecurse nounwind readnone
define i16 @gsm_norm.v0.C.c.c(i32 %a) local_unnamed_addr #4 {
entry:
  %cmp = icmp slt i32 %a, 0
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %cmp1 = icmp slt i32 %a, -1073741823
  br i1 %cmp1, label %return, label %if.end

if.end:                                           ; preds = %if.then
  %neg = xor i32 %a, -1
  br label %if.end3

if.end3:                                          ; preds = %if.end, %entry
  %a.addr.0 = phi i32 [ %neg, %if.end ], [ %a, %entry ]
  %tobool = icmp ugt i32 %a.addr.0, 65535
  br i1 %tobool, label %cond.true, label %cond.false13

cond.true:                                        ; preds = %if.end3
  %tobool5 = icmp ugt i32 %a.addr.0, 16777215
  %shr82 = lshr i32 %a.addr.0, 16
  %and9 = and i32 %shr82, 255
  %shr3 = lshr i32 %a.addr.0, 24
  %and9.sink = select i1 %tobool5, i32 %shr3, i32 %and9
  %.sink = select i1 %tobool5, i16 -1, i16 7
  br label %cond.end29

cond.false13:                                     ; preds = %if.end3
  %and14 = and i32 %a.addr.0, 65280
  %tobool15 = icmp eq i32 %and14, 0
  %shr171 = lshr i32 %a.addr.0, 8
  %a.addr.0.sink = select i1 %tobool15, i32 %a.addr.0, i32 %shr171
  %.sink5 = select i1 %tobool15, i16 23, i16 15
  %and23 = and i32 %a.addr.0.sink, 255
  br label %cond.end29

cond.end29:                                       ; preds = %cond.false13, %cond.true
  %and23.sink = phi i32 [ %and23, %cond.false13 ], [ %and9.sink, %cond.true ]
  %.sink5.sink = phi i16 [ %.sink5, %cond.false13 ], [ %.sink, %cond.true ]
  %arrayidx24 = getelementptr inbounds [256 x i8], [256 x i8]* @bitoff, i32 0, i32 %and23.sink
  %0 = load i8, i8* %arrayidx24, align 1
  %conv25 = zext i8 %0 to i16
  %add26 = add nsw i16 %conv25, %.sink5.sink
  br label %return

return:                                           ; preds = %if.then, %cond.end29
  %retval.0 = phi i16 [ %add26, %cond.end29 ], [ 0, %if.then ]
  ret i16 %retval.0
}

; Function Attrs: noinline norecurse nounwind readnone
define i16 @gsm_add.v0.C.c.c(i16 %a, i16 %b) local_unnamed_addr #4 {
entry:
  %conv = sext i16 %a to i32
  %conv1 = sext i16 %b to i32
  %add = add nsw i32 %conv1, %conv
  %cmp = icmp slt i32 %add, -32768
  %0 = icmp slt i32 %add, 32767
  %.add = select i1 %0, i32 %add, i32 32767
  %1 = trunc i32 %.add to i16
  %conv9 = select i1 %cmp, i16 -32768, i16 %1
  ret i16 %conv9
}

; Function Attrs: noinline norecurse nounwind readnone
define i16 @gsm_mult_r.v0.C.c.c(i16 %a, i16 %b) local_unnamed_addr #4 {
entry:
  %cmp = icmp eq i16 %b, -32768
  %cmp3 = icmp eq i16 %a, -32768
  %or.cond = and i1 %cmp3, %cmp
  br i1 %or.cond, label %return, label %if.else

if.else:                                          ; preds = %entry
  %conv5 = sext i16 %a to i32
  %conv6 = sext i16 %b to i32
  %mul = mul nsw i32 %conv6, %conv5
  %add = add nsw i32 %mul, 16384
  %shr1 = lshr i32 %add, 15
  %conv7 = trunc i32 %shr1 to i16
  br label %return

return:                                           ; preds = %entry, %if.else
  %retval.0 = phi i16 [ %conv7, %if.else ], [ 32767, %entry ]
  ret i16 %retval.0
}

; Function Attrs: noinline norecurse nounwind
define void @Quantization_and_coding.v0.C.c.c(i16* nocapture %LAR.0, i16* nocapture %LAR.1, i16* nocapture %LAR.2, i16* nocapture %LAR.3, i16* nocapture %LAR.4, i16* nocapture %LAR.5, i16* nocapture %LAR.6, i16* nocapture %LAR.7) local_unnamed_addr #5 {
entry:
  %0 = load i16, i16* %LAR.0, align 2
  %call.c.c = tail call i16 @gsm_mult.v0.C.c.c(i16 20480, i16 %0)
  %call1.c.c = tail call i16 @gsm_add.v0.C.c.c(i16 %call.c.c, i16 0)
  %call2.c.c = tail call i16 @gsm_add.v0.C.c.c(i16 %call1.c.c, i16 256)
  %conv = sext i16 %call2.c.c to i32
  %shr1 = lshr i32 %conv, 9
  %1 = trunc i32 %shr1 to i16
  %cmp = icmp sgt i16 %1, 31
  br i1 %cmp, label %cond.end12, label %cond.false

cond.false:                                       ; preds = %entry
  %cmp7 = icmp slt i16 %1, -32
  br i1 %cmp7, label %cond.end12, label %cond.false10

cond.false10:                                     ; preds = %cond.false
  %sub = add nuw nsw i32 %shr1, 32
  %phitmp = trunc i32 %sub to i16
  br label %cond.end12

cond.end12:                                       ; preds = %cond.false10, %cond.false, %entry
  %cond13 = phi i16 [ 63, %entry ], [ %phitmp, %cond.false10 ], [ 0, %cond.false ]
  store i16 %cond13, i16* %LAR.0, align 2
  %2 = load i16, i16* %LAR.1, align 2
  %call15.c.c = tail call i16 @gsm_mult.v0.C.c.c(i16 20480, i16 %2)
  %call16.c.c = tail call i16 @gsm_add.v0.C.c.c(i16 %call15.c.c, i16 0)
  %call17.c.c = tail call i16 @gsm_add.v0.C.c.c(i16 %call16.c.c, i16 256)
  %conv18 = sext i16 %call17.c.c to i32
  %shr194 = lshr i32 %conv18, 9
  %3 = trunc i32 %shr194 to i16
  %cmp22 = icmp sgt i16 %3, 31
  br i1 %cmp22, label %cond.end35, label %cond.false25

cond.false25:                                     ; preds = %cond.end12
  %cmp27 = icmp slt i16 %3, -32
  br i1 %cmp27, label %cond.end35, label %cond.false30

cond.false30:                                     ; preds = %cond.false25
  %sub32 = add nuw nsw i32 %shr194, 32
  %phitmp33 = trunc i32 %sub32 to i16
  br label %cond.end35

cond.end35:                                       ; preds = %cond.false30, %cond.false25, %cond.end12
  %cond36 = phi i16 [ 63, %cond.end12 ], [ %phitmp33, %cond.false30 ], [ 0, %cond.false25 ]
  store i16 %cond36, i16* %LAR.1, align 2
  %4 = load i16, i16* %LAR.2, align 2
  %call39.c.c = tail call i16 @gsm_mult.v0.C.c.c(i16 20480, i16 %4)
  %call40.c.c = tail call i16 @gsm_add.v0.C.c.c(i16 %call39.c.c, i16 2048)
  %call41.c.c = tail call i16 @gsm_add.v0.C.c.c(i16 %call40.c.c, i16 256)
  %conv42 = sext i16 %call41.c.c to i32
  %shr438 = lshr i32 %conv42, 9
  %5 = trunc i32 %shr438 to i16
  %cmp46 = icmp sgt i16 %5, 15
  br i1 %cmp46, label %cond.end59, label %cond.false49

cond.false49:                                     ; preds = %cond.end35
  %cmp51 = icmp slt i16 %5, -16
  br i1 %cmp51, label %cond.end59, label %cond.false54

cond.false54:                                     ; preds = %cond.false49
  %sub56 = add nuw nsw i32 %shr438, 16
  %phitmp35 = trunc i32 %sub56 to i16
  br label %cond.end59

cond.end59:                                       ; preds = %cond.false54, %cond.false49, %cond.end35
  %cond60 = phi i16 [ 31, %cond.end35 ], [ %phitmp35, %cond.false54 ], [ 0, %cond.false49 ]
  store i16 %cond60, i16* %LAR.2, align 2
  %6 = load i16, i16* %LAR.3, align 2
  %call63.c.c = tail call i16 @gsm_mult.v0.C.c.c(i16 20480, i16 %6)
  %call64.c.c = tail call i16 @gsm_add.v0.C.c.c(i16 %call63.c.c, i16 -2560)
  %call65.c.c = tail call i16 @gsm_add.v0.C.c.c(i16 %call64.c.c, i16 256)
  %conv66 = sext i16 %call65.c.c to i32
  %shr6712 = lshr i32 %conv66, 9
  %7 = trunc i32 %shr6712 to i16
  %cmp70 = icmp sgt i16 %7, 15
  br i1 %cmp70, label %cond.end83, label %cond.false73

cond.false73:                                     ; preds = %cond.end59
  %cmp75 = icmp slt i16 %7, -16
  br i1 %cmp75, label %cond.end83, label %cond.false78

cond.false78:                                     ; preds = %cond.false73
  %sub80 = add nuw nsw i32 %shr6712, 16
  %phitmp37 = trunc i32 %sub80 to i16
  br label %cond.end83

cond.end83:                                       ; preds = %cond.false78, %cond.false73, %cond.end59
  %cond84 = phi i16 [ 31, %cond.end59 ], [ %phitmp37, %cond.false78 ], [ 0, %cond.false73 ]
  store i16 %cond84, i16* %LAR.3, align 2
  %8 = load i16, i16* %LAR.4, align 2
  %call87.c.c = tail call i16 @gsm_mult.v0.C.c.c(i16 13964, i16 %8)
  %call88.c.c = tail call i16 @gsm_add.v0.C.c.c(i16 %call87.c.c, i16 94)
  %call89.c.c = tail call i16 @gsm_add.v0.C.c.c(i16 %call88.c.c, i16 256)
  %conv90 = sext i16 %call89.c.c to i32
  %shr9116 = lshr i32 %conv90, 9
  %9 = trunc i32 %shr9116 to i16
  %cmp94 = icmp sgt i16 %9, 7
  br i1 %cmp94, label %cond.end107, label %cond.false97

cond.false97:                                     ; preds = %cond.end83
  %cmp99 = icmp slt i16 %9, -8
  br i1 %cmp99, label %cond.end107, label %cond.false102

cond.false102:                                    ; preds = %cond.false97
  %sub104 = add nuw nsw i32 %shr9116, 8
  %phitmp39 = trunc i32 %sub104 to i16
  br label %cond.end107

cond.end107:                                      ; preds = %cond.false102, %cond.false97, %cond.end83
  %cond108 = phi i16 [ 15, %cond.end83 ], [ %phitmp39, %cond.false102 ], [ 0, %cond.false97 ]
  store i16 %cond108, i16* %LAR.4, align 2
  %10 = load i16, i16* %LAR.5, align 2
  %call111.c.c = tail call i16 @gsm_mult.v0.C.c.c(i16 15360, i16 %10)
  %call112.c.c = tail call i16 @gsm_add.v0.C.c.c(i16 %call111.c.c, i16 -1792)
  %call113.c.c = tail call i16 @gsm_add.v0.C.c.c(i16 %call112.c.c, i16 256)
  %conv114 = sext i16 %call113.c.c to i32
  %shr11520 = lshr i32 %conv114, 9
  %11 = trunc i32 %shr11520 to i16
  %cmp118 = icmp sgt i16 %11, 7
  br i1 %cmp118, label %cond.end131, label %cond.false121

cond.false121:                                    ; preds = %cond.end107
  %cmp123 = icmp slt i16 %11, -8
  br i1 %cmp123, label %cond.end131, label %cond.false126

cond.false126:                                    ; preds = %cond.false121
  %sub128 = add nuw nsw i32 %shr11520, 8
  %phitmp41 = trunc i32 %sub128 to i16
  br label %cond.end131

cond.end131:                                      ; preds = %cond.false126, %cond.false121, %cond.end107
  %cond132 = phi i16 [ 15, %cond.end107 ], [ %phitmp41, %cond.false126 ], [ 0, %cond.false121 ]
  store i16 %cond132, i16* %LAR.5, align 2
  %12 = load i16, i16* %LAR.6, align 2
  %call135.c.c = tail call i16 @gsm_mult.v0.C.c.c(i16 8534, i16 %12)
  %call136.c.c = tail call i16 @gsm_add.v0.C.c.c(i16 %call135.c.c, i16 -341)
  %call137.c.c = tail call i16 @gsm_add.v0.C.c.c(i16 %call136.c.c, i16 256)
  %conv138 = sext i16 %call137.c.c to i32
  %shr13924 = lshr i32 %conv138, 9
  %13 = trunc i32 %shr13924 to i16
  %cmp142 = icmp sgt i16 %13, 3
  br i1 %cmp142, label %cond.end155, label %cond.false145

cond.false145:                                    ; preds = %cond.end131
  %cmp147 = icmp slt i16 %13, -4
  br i1 %cmp147, label %cond.end155, label %cond.false150

cond.false150:                                    ; preds = %cond.false145
  %sub152 = add nuw nsw i32 %shr13924, 4
  %phitmp43 = trunc i32 %sub152 to i16
  br label %cond.end155

cond.end155:                                      ; preds = %cond.false150, %cond.false145, %cond.end131
  %cond156 = phi i16 [ 7, %cond.end131 ], [ %phitmp43, %cond.false150 ], [ 0, %cond.false145 ]
  store i16 %cond156, i16* %LAR.6, align 2
  %14 = load i16, i16* %LAR.7, align 2
  %call159.c.c = tail call i16 @gsm_mult.v0.C.c.c(i16 9036, i16 %14)
  %call160.c.c = tail call i16 @gsm_add.v0.C.c.c(i16 %call159.c.c, i16 -1144)
  %call161.c.c = tail call i16 @gsm_add.v0.C.c.c(i16 %call160.c.c, i16 256)
  %conv162 = sext i16 %call161.c.c to i32
  %shr16328 = lshr i32 %conv162, 9
  %15 = trunc i32 %shr16328 to i16
  %cmp166 = icmp sgt i16 %15, 3
  br i1 %cmp166, label %cond.end179, label %cond.false169

cond.false169:                                    ; preds = %cond.end155
  %cmp171 = icmp slt i16 %15, -4
  br i1 %cmp171, label %cond.end179, label %cond.false174

cond.false174:                                    ; preds = %cond.false169
  %sub176 = add nuw nsw i32 %shr16328, 4
  %phitmp45 = trunc i32 %sub176 to i16
  br label %cond.end179

cond.end179:                                      ; preds = %cond.false174, %cond.false169, %cond.end155
  %cond180 = phi i16 [ 7, %cond.end155 ], [ %phitmp45, %cond.false174 ], [ 0, %cond.false169 ]
  store i16 %cond180, i16* %LAR.7, align 2
  ret void
}

; Function Attrs: noinline norecurse nounwind
define void @Autocorrelation.v0.C.c.c(i16* %s, i32* nocapture %L_ACF.0, i32* nocapture %L_ACF.1, i32* nocapture %L_ACF.2, i32* nocapture %L_ACF.3, i32* nocapture %L_ACF.4, i32* nocapture %L_ACF.5, i32* nocapture %L_ACF.6, i32* nocapture %L_ACF.7, i32* nocapture %L_ACF.8) local_unnamed_addr #5 {
entry:
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %k.016 = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  %smax.015 = phi i16 [ 0, %entry ], [ %call.c.smax.0, %for.body ]
  %arrayidx = getelementptr inbounds i16, i16* %s, i32 %k.016
  %0 = load i16, i16* %arrayidx, align 2
  %call.c = tail call i16 @gsm_abs.v0.C.c(i16 %0)
  %cmp2 = icmp sgt i16 %call.c, %smax.015
  %call.c.smax.0 = select i1 %cmp2, i16 %call.c, i16 %smax.015
  %inc = add nuw nsw i32 %k.016, 1
  %exitcond19 = icmp eq i32 %inc, 160
  br i1 %exitcond19, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  %cmp5 = icmp eq i16 %call.c.smax.0, 0
  br i1 %cmp5, label %if.end33, label %if.end12

if.end12:                                         ; preds = %for.end
  %conv81 = zext i16 %call.c.smax.0 to i32
  %shl = shl nuw i32 %conv81, 16
  %call9.c.c = tail call i16 @gsm_norm.v0.C.c.c(i32 %shl)
  %sub = sub i16 4, %call9.c.c
  %scalauto.0.off = add i16 %sub, -1
  %1 = icmp ult i16 %scalauto.0.off, 4
  br i1 %1, label %for.cond20.preheader, label %if.end33

for.cond20.preheader:                             ; preds = %if.end12
  %conv25 = sext i16 %sub to i32
  %sub26 = add nsw i32 %conv25, -1
  %shr = lshr i32 16384, %sub26
  %conv27 = trunc i32 %shr to i16
  br label %for.body23

for.body23:                                       ; preds = %for.body23, %for.cond20.preheader
  %k.114 = phi i32 [ 0, %for.cond20.preheader ], [ %inc31, %for.body23 ]
  %arrayidx24 = getelementptr inbounds i16, i16* %s, i32 %k.114
  %2 = load i16, i16* %arrayidx24, align 2
  %call28.c.c = tail call i16 @gsm_mult_r.v0.C.c.c(i16 %2, i16 %conv27)
  store i16 %call28.c.c, i16* %arrayidx24, align 2
  %inc31 = add nuw nsw i32 %k.114, 1
  %exitcond18 = icmp eq i32 %inc31, 160
  br i1 %exitcond18, label %if.end33.loopexit, label %for.body23

if.end33.loopexit:                                ; preds = %for.body23
  br label %if.end33

if.end33:                                         ; preds = %if.end33.loopexit, %for.end, %if.end12
  %scalauto.06 = phi i16 [ %sub, %if.end12 ], [ 0, %for.end ], [ %sub, %if.end33.loopexit ]
  %3 = load i16, i16* %s, align 2
  br label %for.body37

for.body37:                                       ; preds = %if.end33, %for.inc39
  %k.213 = phi i32 [ 8, %if.end33 ], [ %dec, %for.inc39 ]
  switch i32 %k.213, label %for.inc39 [
    i32 0, label %csroa.if.then.i
    i32 1, label %for.inc39.sink.split
    i32 2, label %csroa.if.then6.i
    i32 3, label %csroa.if.then10.i
    i32 4, label %csroa.if.then14.i
    i32 5, label %csroa.if.then18.i
    i32 6, label %csroa.if.then22.i
    i32 7, label %csroa.if.then26.i
    i32 8, label %csroa.if.then30.i
  ]

csroa.if.then.i:                                  ; preds = %for.body37
  br label %for.inc39.sink.split

csroa.if.then6.i:                                 ; preds = %for.body37
  br label %for.inc39.sink.split

csroa.if.then10.i:                                ; preds = %for.body37
  br label %for.inc39.sink.split

csroa.if.then14.i:                                ; preds = %for.body37
  br label %for.inc39.sink.split

csroa.if.then18.i:                                ; preds = %for.body37
  br label %for.inc39.sink.split

csroa.if.then22.i:                                ; preds = %for.body37
  br label %for.inc39.sink.split

csroa.if.then26.i:                                ; preds = %for.body37
  br label %for.inc39.sink.split

csroa.if.then30.i:                                ; preds = %for.body37
  br label %for.inc39.sink.split

for.inc39.sink.split:                             ; preds = %for.body37, %csroa.if.then10.i, %csroa.if.then18.i, %csroa.if.then26.i, %csroa.if.then30.i, %csroa.if.then22.i, %csroa.if.then14.i, %csroa.if.then6.i, %csroa.if.then.i
  %L_ACF.0.sink = phi i32* [ %L_ACF.0, %csroa.if.then.i ], [ %L_ACF.2, %csroa.if.then6.i ], [ %L_ACF.4, %csroa.if.then14.i ], [ %L_ACF.6, %csroa.if.then22.i ], [ %L_ACF.8, %csroa.if.then30.i ], [ %L_ACF.7, %csroa.if.then26.i ], [ %L_ACF.5, %csroa.if.then18.i ], [ %L_ACF.3, %csroa.if.then10.i ], [ %L_ACF.1, %for.body37 ]
  store i32 0, i32* %L_ACF.0.sink, align 4
  br label %for.inc39

for.inc39:                                        ; preds = %for.inc39.sink.split, %for.body37
  %dec = add nsw i32 %k.213, -1
  %cmp35 = icmp sgt i32 %k.213, 0
  br i1 %cmp35, label %for.body37, label %for.end40

for.end40:                                        ; preds = %for.inc39
  %conv41 = sext i16 %3 to i32
  %4 = load i16, i16* %s, align 2
  %conv43 = sext i16 %4 to i32
  %mul = mul nsw i32 %conv43, %conv41
  %5 = load i32, i32* %L_ACF.0, align 4
  %add = add nsw i32 %mul, %5
  store i32 %add, i32* %L_ACF.0, align 4
  %incdec.ptr = getelementptr inbounds i16, i16* %s, i32 1
  %6 = load i16, i16* %incdec.ptr, align 2
  %conv45 = sext i16 %6 to i32
  %mul48 = mul nsw i32 %conv45, %conv45
  %add50 = add nsw i32 %mul48, %add
  store i32 %add50, i32* %L_ACF.0, align 4
  %7 = load i16, i16* %s, align 2
  %conv53 = sext i16 %7 to i32
  %mul54 = mul nsw i32 %conv53, %conv45
  %8 = load i32, i32* %L_ACF.1, align 4
  %add56 = add nsw i32 %mul54, %8
  store i32 %add56, i32* %L_ACF.1, align 4
  %incdec.ptr57 = getelementptr inbounds i16, i16* %s, i32 2
  %9 = load i16, i16* %incdec.ptr57, align 2
  %conv58 = sext i16 %9 to i32
  %mul61 = mul nsw i32 %conv58, %conv58
  %10 = load i32, i32* %L_ACF.0, align 4
  %add63 = add nsw i32 %mul61, %10
  store i32 %add63, i32* %L_ACF.0, align 4
  %11 = load i16, i16* %incdec.ptr, align 2
  %conv66 = sext i16 %11 to i32
  %mul67 = mul nsw i32 %conv66, %conv58
  %12 = load i32, i32* %L_ACF.1, align 4
  %add69 = add nsw i32 %mul67, %12
  store i32 %add69, i32* %L_ACF.1, align 4
  %13 = load i16, i16* %s, align 2
  %conv72 = sext i16 %13 to i32
  %mul73 = mul nsw i32 %conv72, %conv58
  %14 = load i32, i32* %L_ACF.2, align 4
  %add75 = add nsw i32 %mul73, %14
  store i32 %add75, i32* %L_ACF.2, align 4
  %incdec.ptr76 = getelementptr inbounds i16, i16* %s, i32 3
  %15 = load i16, i16* %incdec.ptr76, align 2
  %conv77 = sext i16 %15 to i32
  %mul80 = mul nsw i32 %conv77, %conv77
  %16 = load i32, i32* %L_ACF.0, align 4
  %add82 = add nsw i32 %mul80, %16
  store i32 %add82, i32* %L_ACF.0, align 4
  %17 = load i16, i16* %incdec.ptr57, align 2
  %conv85 = sext i16 %17 to i32
  %mul86 = mul nsw i32 %conv85, %conv77
  %18 = load i32, i32* %L_ACF.1, align 4
  %add88 = add nsw i32 %mul86, %18
  store i32 %add88, i32* %L_ACF.1, align 4
  %19 = load i16, i16* %incdec.ptr, align 2
  %conv91 = sext i16 %19 to i32
  %mul92 = mul nsw i32 %conv91, %conv77
  %20 = load i32, i32* %L_ACF.2, align 4
  %add94 = add nsw i32 %mul92, %20
  store i32 %add94, i32* %L_ACF.2, align 4
  %21 = load i16, i16* %s, align 2
  %conv97 = sext i16 %21 to i32
  %mul98 = mul nsw i32 %conv97, %conv77
  %22 = load i32, i32* %L_ACF.3, align 4
  %add100 = add nsw i32 %mul98, %22
  store i32 %add100, i32* %L_ACF.3, align 4
  %incdec.ptr101 = getelementptr inbounds i16, i16* %s, i32 4
  %23 = load i16, i16* %incdec.ptr101, align 2
  %conv102 = sext i16 %23 to i32
  %mul105 = mul nsw i32 %conv102, %conv102
  %24 = load i32, i32* %L_ACF.0, align 4
  %add107 = add nsw i32 %mul105, %24
  store i32 %add107, i32* %L_ACF.0, align 4
  %25 = load i16, i16* %incdec.ptr76, align 2
  %conv110 = sext i16 %25 to i32
  %mul111 = mul nsw i32 %conv110, %conv102
  %26 = load i32, i32* %L_ACF.1, align 4
  %add113 = add nsw i32 %mul111, %26
  store i32 %add113, i32* %L_ACF.1, align 4
  %27 = load i16, i16* %incdec.ptr57, align 2
  %conv116 = sext i16 %27 to i32
  %mul117 = mul nsw i32 %conv116, %conv102
  %28 = load i32, i32* %L_ACF.2, align 4
  %add119 = add nsw i32 %mul117, %28
  store i32 %add119, i32* %L_ACF.2, align 4
  %29 = load i16, i16* %incdec.ptr, align 2
  %conv122 = sext i16 %29 to i32
  %mul123 = mul nsw i32 %conv122, %conv102
  %30 = load i32, i32* %L_ACF.3, align 4
  %add125 = add nsw i32 %mul123, %30
  store i32 %add125, i32* %L_ACF.3, align 4
  %31 = load i16, i16* %s, align 2
  %conv128 = sext i16 %31 to i32
  %mul129 = mul nsw i32 %conv128, %conv102
  %32 = load i32, i32* %L_ACF.4, align 4
  %add131 = add nsw i32 %mul129, %32
  store i32 %add131, i32* %L_ACF.4, align 4
  %incdec.ptr132 = getelementptr inbounds i16, i16* %s, i32 5
  %33 = load i16, i16* %incdec.ptr132, align 2
  %conv133 = sext i16 %33 to i32
  %mul136 = mul nsw i32 %conv133, %conv133
  %34 = load i32, i32* %L_ACF.0, align 4
  %add138 = add nsw i32 %mul136, %34
  store i32 %add138, i32* %L_ACF.0, align 4
  %35 = load i16, i16* %incdec.ptr101, align 2
  %conv141 = sext i16 %35 to i32
  %mul142 = mul nsw i32 %conv141, %conv133
  %36 = load i32, i32* %L_ACF.1, align 4
  %add144 = add nsw i32 %mul142, %36
  store i32 %add144, i32* %L_ACF.1, align 4
  %37 = load i16, i16* %incdec.ptr76, align 2
  %conv147 = sext i16 %37 to i32
  %mul148 = mul nsw i32 %conv147, %conv133
  %38 = load i32, i32* %L_ACF.2, align 4
  %add150 = add nsw i32 %mul148, %38
  store i32 %add150, i32* %L_ACF.2, align 4
  %39 = load i16, i16* %incdec.ptr57, align 2
  %conv153 = sext i16 %39 to i32
  %mul154 = mul nsw i32 %conv153, %conv133
  %40 = load i32, i32* %L_ACF.3, align 4
  %add156 = add nsw i32 %mul154, %40
  store i32 %add156, i32* %L_ACF.3, align 4
  %41 = load i16, i16* %incdec.ptr, align 2
  %conv159 = sext i16 %41 to i32
  %mul160 = mul nsw i32 %conv159, %conv133
  %42 = load i32, i32* %L_ACF.4, align 4
  %add162 = add nsw i32 %mul160, %42
  store i32 %add162, i32* %L_ACF.4, align 4
  %43 = load i16, i16* %s, align 2
  %conv165 = sext i16 %43 to i32
  %mul166 = mul nsw i32 %conv165, %conv133
  %44 = load i32, i32* %L_ACF.5, align 4
  %add168 = add nsw i32 %mul166, %44
  store i32 %add168, i32* %L_ACF.5, align 4
  %incdec.ptr169 = getelementptr inbounds i16, i16* %s, i32 6
  %45 = load i16, i16* %incdec.ptr169, align 2
  %conv170 = sext i16 %45 to i32
  %mul173 = mul nsw i32 %conv170, %conv170
  %46 = load i32, i32* %L_ACF.0, align 4
  %add175 = add nsw i32 %mul173, %46
  store i32 %add175, i32* %L_ACF.0, align 4
  %47 = load i16, i16* %incdec.ptr132, align 2
  %conv178 = sext i16 %47 to i32
  %mul179 = mul nsw i32 %conv178, %conv170
  %48 = load i32, i32* %L_ACF.1, align 4
  %add181 = add nsw i32 %mul179, %48
  store i32 %add181, i32* %L_ACF.1, align 4
  %49 = load i16, i16* %incdec.ptr101, align 2
  %conv184 = sext i16 %49 to i32
  %mul185 = mul nsw i32 %conv184, %conv170
  %50 = load i32, i32* %L_ACF.2, align 4
  %add187 = add nsw i32 %mul185, %50
  store i32 %add187, i32* %L_ACF.2, align 4
  %51 = load i16, i16* %incdec.ptr76, align 2
  %conv190 = sext i16 %51 to i32
  %mul191 = mul nsw i32 %conv190, %conv170
  %52 = load i32, i32* %L_ACF.3, align 4
  %add193 = add nsw i32 %mul191, %52
  store i32 %add193, i32* %L_ACF.3, align 4
  %53 = load i16, i16* %incdec.ptr57, align 2
  %conv196 = sext i16 %53 to i32
  %mul197 = mul nsw i32 %conv196, %conv170
  %54 = load i32, i32* %L_ACF.4, align 4
  %add199 = add nsw i32 %mul197, %54
  store i32 %add199, i32* %L_ACF.4, align 4
  %55 = load i16, i16* %incdec.ptr, align 2
  %conv202 = sext i16 %55 to i32
  %mul203 = mul nsw i32 %conv202, %conv170
  %56 = load i32, i32* %L_ACF.5, align 4
  %add205 = add nsw i32 %mul203, %56
  store i32 %add205, i32* %L_ACF.5, align 4
  %57 = load i16, i16* %s, align 2
  %conv208 = sext i16 %57 to i32
  %mul209 = mul nsw i32 %conv208, %conv170
  %58 = load i32, i32* %L_ACF.6, align 4
  %add211 = add nsw i32 %mul209, %58
  store i32 %add211, i32* %L_ACF.6, align 4
  %incdec.ptr212 = getelementptr inbounds i16, i16* %s, i32 7
  %59 = load i16, i16* %incdec.ptr212, align 2
  %conv213 = sext i16 %59 to i32
  %mul216 = mul nsw i32 %conv213, %conv213
  %60 = load i32, i32* %L_ACF.0, align 4
  %add218 = add nsw i32 %mul216, %60
  store i32 %add218, i32* %L_ACF.0, align 4
  %61 = load i16, i16* %incdec.ptr169, align 2
  %conv221 = sext i16 %61 to i32
  %mul222 = mul nsw i32 %conv221, %conv213
  %62 = load i32, i32* %L_ACF.1, align 4
  %add224 = add nsw i32 %mul222, %62
  store i32 %add224, i32* %L_ACF.1, align 4
  %63 = load i16, i16* %incdec.ptr132, align 2
  %conv227 = sext i16 %63 to i32
  %mul228 = mul nsw i32 %conv227, %conv213
  %64 = load i32, i32* %L_ACF.2, align 4
  %add230 = add nsw i32 %mul228, %64
  store i32 %add230, i32* %L_ACF.2, align 4
  %65 = load i16, i16* %incdec.ptr101, align 2
  %conv233 = sext i16 %65 to i32
  %mul234 = mul nsw i32 %conv233, %conv213
  %66 = load i32, i32* %L_ACF.3, align 4
  %add236 = add nsw i32 %mul234, %66
  store i32 %add236, i32* %L_ACF.3, align 4
  %67 = load i16, i16* %incdec.ptr76, align 2
  %conv239 = sext i16 %67 to i32
  %mul240 = mul nsw i32 %conv239, %conv213
  %68 = load i32, i32* %L_ACF.4, align 4
  %add242 = add nsw i32 %mul240, %68
  store i32 %add242, i32* %L_ACF.4, align 4
  %69 = load i16, i16* %incdec.ptr57, align 2
  %conv245 = sext i16 %69 to i32
  %mul246 = mul nsw i32 %conv245, %conv213
  %70 = load i32, i32* %L_ACF.5, align 4
  %add248 = add nsw i32 %mul246, %70
  store i32 %add248, i32* %L_ACF.5, align 4
  %71 = load i16, i16* %incdec.ptr, align 2
  %conv251 = sext i16 %71 to i32
  %mul252 = mul nsw i32 %conv251, %conv213
  %72 = load i32, i32* %L_ACF.6, align 4
  %add254 = add nsw i32 %mul252, %72
  store i32 %add254, i32* %L_ACF.6, align 4
  %73 = load i16, i16* %s, align 2
  %conv257 = sext i16 %73 to i32
  %mul258 = mul nsw i32 %conv257, %conv213
  %74 = load i32, i32* %L_ACF.7, align 4
  %add260 = add nsw i32 %mul258, %74
  store i32 %add260, i32* %L_ACF.7, align 4
  br label %for.body264

for.body264:                                      ; preds = %for.body264, %for.end40
  %sp.0.phi11 = phi i32 [ 0, %for.end40 ], [ %incdec.ptr265.add, %for.body264 ]
  %incdec.ptr265.add = add nuw nsw i32 %sp.0.phi11, 1
  %incdec.ptr265.gepi = getelementptr inbounds i16, i16* %incdec.ptr212, i32 %incdec.ptr265.add
  %75 = load i16, i16* %incdec.ptr265.gepi, align 2
  %conv266 = sext i16 %75 to i32
  %mul269 = mul nsw i32 %conv266, %conv266
  %76 = load i32, i32* %L_ACF.0, align 4
  %add271 = add nsw i32 %mul269, %76
  store i32 %add271, i32* %L_ACF.0, align 4
  %arrayidx273.gepi = getelementptr inbounds i16, i16* %incdec.ptr212, i32 %sp.0.phi11
  %77 = load i16, i16* %arrayidx273.gepi, align 2
  %conv274 = sext i16 %77 to i32
  %mul275 = mul nsw i32 %conv274, %conv266
  %78 = load i32, i32* %L_ACF.1, align 4
  %add277 = add nsw i32 %mul275, %78
  store i32 %add277, i32* %L_ACF.1, align 4
  %arrayidx279.add = add nsw i32 %sp.0.phi11, -1
  %arrayidx279.gepi = getelementptr inbounds i16, i16* %incdec.ptr212, i32 %arrayidx279.add
  %79 = load i16, i16* %arrayidx279.gepi, align 2
  %conv280 = sext i16 %79 to i32
  %mul281 = mul nsw i32 %conv280, %conv266
  %80 = load i32, i32* %L_ACF.2, align 4
  %add283 = add nsw i32 %mul281, %80
  store i32 %add283, i32* %L_ACF.2, align 4
  %arrayidx285.add = add nsw i32 %sp.0.phi11, -2
  %arrayidx285.gepi = getelementptr inbounds i16, i16* %incdec.ptr212, i32 %arrayidx285.add
  %81 = load i16, i16* %arrayidx285.gepi, align 2
  %conv286 = sext i16 %81 to i32
  %mul287 = mul nsw i32 %conv286, %conv266
  %82 = load i32, i32* %L_ACF.3, align 4
  %add289 = add nsw i32 %mul287, %82
  store i32 %add289, i32* %L_ACF.3, align 4
  %arrayidx291.add = add nsw i32 %sp.0.phi11, -3
  %arrayidx291.gepi = getelementptr inbounds i16, i16* %incdec.ptr212, i32 %arrayidx291.add
  %83 = load i16, i16* %arrayidx291.gepi, align 2
  %conv292 = sext i16 %83 to i32
  %mul293 = mul nsw i32 %conv292, %conv266
  %84 = load i32, i32* %L_ACF.4, align 4
  %add295 = add nsw i32 %mul293, %84
  store i32 %add295, i32* %L_ACF.4, align 4
  %arrayidx297.add = add nsw i32 %sp.0.phi11, -4
  %arrayidx297.gepi = getelementptr inbounds i16, i16* %incdec.ptr212, i32 %arrayidx297.add
  %85 = load i16, i16* %arrayidx297.gepi, align 2
  %conv298 = sext i16 %85 to i32
  %mul299 = mul nsw i32 %conv298, %conv266
  %86 = load i32, i32* %L_ACF.5, align 4
  %add301 = add nsw i32 %mul299, %86
  store i32 %add301, i32* %L_ACF.5, align 4
  %arrayidx303.add = add nsw i32 %sp.0.phi11, -5
  %arrayidx303.gepi = getelementptr inbounds i16, i16* %incdec.ptr212, i32 %arrayidx303.add
  %87 = load i16, i16* %arrayidx303.gepi, align 2
  %conv304 = sext i16 %87 to i32
  %mul305 = mul nsw i32 %conv304, %conv266
  %88 = load i32, i32* %L_ACF.6, align 4
  %add307 = add nsw i32 %mul305, %88
  store i32 %add307, i32* %L_ACF.6, align 4
  %arrayidx309.add = add nsw i32 %sp.0.phi11, -6
  %arrayidx309.gepi = getelementptr inbounds i16, i16* %incdec.ptr212, i32 %arrayidx309.add
  %89 = load i16, i16* %arrayidx309.gepi, align 2
  %conv310 = sext i16 %89 to i32
  %mul311 = mul nsw i32 %conv310, %conv266
  %90 = load i32, i32* %L_ACF.7, align 4
  %add313 = add nsw i32 %mul311, %90
  store i32 %add313, i32* %L_ACF.7, align 4
  %arrayidx315.add = add nsw i32 %sp.0.phi11, -7
  %arrayidx315.gepi = getelementptr inbounds i16, i16* %incdec.ptr212, i32 %arrayidx315.add
  %91 = load i16, i16* %arrayidx315.gepi, align 2
  %conv316 = sext i16 %91 to i32
  %mul317 = mul nsw i32 %conv316, %conv266
  %92 = load i32, i32* %L_ACF.8, align 4
  %add319 = add nsw i32 %mul317, %92
  store i32 %add319, i32* %L_ACF.8, align 4
  %exitcond17 = icmp eq i32 %incdec.ptr265.add, 152
  br i1 %exitcond17, label %for.body326.preheader, label %for.body264

for.body326.preheader:                            ; preds = %for.body264
  br label %for.body326

for.body326:                                      ; preds = %for.body326.preheader, %for.inc329
  %k.310 = phi i32 [ %dec330, %for.inc329 ], [ 8, %for.body326.preheader ]
  switch i32 %k.310, label %__non_const_wrapper__.37.exit [
    i32 0, label %csroa.if.then.i2
    i32 1, label %__non_const_wrapper__.37.exit.sink.split
    i32 2, label %csroa.if.then7.i
    i32 3, label %csroa.if.then12.i
    i32 4, label %csroa.if.then17.i
    i32 5, label %csroa.if.then22.i8
    i32 6, label %csroa.if.then27.i
    i32 7, label %csroa.if.then32.i
    i32 8, label %csroa.if.then37.i
  ]

csroa.if.then.i2:                                 ; preds = %for.body326
  br label %__non_const_wrapper__.37.exit.sink.split

csroa.if.then7.i:                                 ; preds = %for.body326
  br label %__non_const_wrapper__.37.exit.sink.split

csroa.if.then12.i:                                ; preds = %for.body326
  br label %__non_const_wrapper__.37.exit.sink.split

csroa.if.then17.i:                                ; preds = %for.body326
  br label %__non_const_wrapper__.37.exit.sink.split

csroa.if.then22.i8:                               ; preds = %for.body326
  br label %__non_const_wrapper__.37.exit.sink.split

csroa.if.then27.i:                                ; preds = %for.body326
  br label %__non_const_wrapper__.37.exit.sink.split

csroa.if.then32.i:                                ; preds = %for.body326
  br label %__non_const_wrapper__.37.exit.sink.split

csroa.if.then37.i:                                ; preds = %for.body326
  br label %__non_const_wrapper__.37.exit.sink.split

__non_const_wrapper__.37.exit.sink.split:         ; preds = %for.body326, %csroa.if.then.i2, %csroa.if.then7.i, %csroa.if.then17.i, %csroa.if.then27.i, %csroa.if.then37.i, %csroa.if.then32.i, %csroa.if.then22.i8, %csroa.if.then12.i
  %L_ACF.1.sink = phi i32* [ %L_ACF.3, %csroa.if.then12.i ], [ %L_ACF.5, %csroa.if.then22.i8 ], [ %L_ACF.7, %csroa.if.then32.i ], [ %L_ACF.8, %csroa.if.then37.i ], [ %L_ACF.6, %csroa.if.then27.i ], [ %L_ACF.4, %csroa.if.then17.i ], [ %L_ACF.2, %csroa.if.then7.i ], [ %L_ACF.0, %csroa.if.then.i2 ], [ %L_ACF.1, %for.body326 ]
  %93 = load i32, i32* %L_ACF.1.sink, align 4
  br label %__non_const_wrapper__.37.exit

__non_const_wrapper__.37.exit:                    ; preds = %__non_const_wrapper__.37.exit.sink.split, %for.body326
  %.phi.i = phi i32 [ undef, %for.body326 ], [ %93, %__non_const_wrapper__.37.exit.sink.split ]
  %shl328 = shl i32 %.phi.i, 1
  switch i32 %k.310, label %for.inc329 [
    i32 0, label %csroa.if.then.i13
    i32 1, label %for.inc329.sink.split
    i32 2, label %csroa.if.then6.i19
    i32 3, label %csroa.if.then10.i22
    i32 4, label %csroa.if.then14.i25
    i32 5, label %csroa.if.then18.i28
    i32 6, label %csroa.if.then22.i31
    i32 7, label %csroa.if.then26.i34
    i32 8, label %csroa.if.then30.i37
  ]

csroa.if.then.i13:                                ; preds = %__non_const_wrapper__.37.exit
  br label %for.inc329.sink.split

csroa.if.then6.i19:                               ; preds = %__non_const_wrapper__.37.exit
  br label %for.inc329.sink.split

csroa.if.then10.i22:                              ; preds = %__non_const_wrapper__.37.exit
  br label %for.inc329.sink.split

csroa.if.then14.i25:                              ; preds = %__non_const_wrapper__.37.exit
  br label %for.inc329.sink.split

csroa.if.then18.i28:                              ; preds = %__non_const_wrapper__.37.exit
  br label %for.inc329.sink.split

csroa.if.then22.i31:                              ; preds = %__non_const_wrapper__.37.exit
  br label %for.inc329.sink.split

csroa.if.then26.i34:                              ; preds = %__non_const_wrapper__.37.exit
  br label %for.inc329.sink.split

csroa.if.then30.i37:                              ; preds = %__non_const_wrapper__.37.exit
  br label %for.inc329.sink.split

for.inc329.sink.split:                            ; preds = %__non_const_wrapper__.37.exit, %csroa.if.then10.i22, %csroa.if.then18.i28, %csroa.if.then26.i34, %csroa.if.then30.i37, %csroa.if.then22.i31, %csroa.if.then14.i25, %csroa.if.then6.i19, %csroa.if.then.i13
  %L_ACF.0.sink4 = phi i32* [ %L_ACF.0, %csroa.if.then.i13 ], [ %L_ACF.2, %csroa.if.then6.i19 ], [ %L_ACF.4, %csroa.if.then14.i25 ], [ %L_ACF.6, %csroa.if.then22.i31 ], [ %L_ACF.8, %csroa.if.then30.i37 ], [ %L_ACF.7, %csroa.if.then26.i34 ], [ %L_ACF.5, %csroa.if.then18.i28 ], [ %L_ACF.3, %csroa.if.then10.i22 ], [ %L_ACF.1, %__non_const_wrapper__.37.exit ]
  store i32 %shl328, i32* %L_ACF.0.sink4, align 4
  br label %for.inc329

for.inc329:                                       ; preds = %for.inc329.sink.split, %__non_const_wrapper__.37.exit
  %dec330 = add nsw i32 %k.310, -1
  %cmp324 = icmp sgt i32 %k.310, 0
  br i1 %cmp324, label %for.body326, label %for.end331

for.end331:                                       ; preds = %for.inc329
  %cmp333 = icmp sgt i16 %scalauto.06, 0
  br i1 %cmp333, label %for.cond336.preheader, label %if.end348

for.cond336.preheader:                            ; preds = %for.end331
  %conv340 = sext i16 %scalauto.06 to i32
  br label %for.body339

for.body339:                                      ; preds = %for.body339, %for.cond336.preheader
  %s.addr.0.firstgepi.gepi9 = phi i16* [ %s, %for.cond336.preheader ], [ %s.addr.0.firstgepi.gepi, %for.body339 ]
  %s.addr.0.phi8 = phi i32 [ 0, %for.cond336.preheader ], [ %incdec.ptr341.add, %for.body339 ]
  %incdec.ptr341.add = add nuw nsw i32 %s.addr.0.phi8, 1
  %94 = load i16, i16* %s.addr.0.firstgepi.gepi9, align 2
  %conv342 = sext i16 %94 to i32
  %shl343 = shl i32 %conv342, %conv340
  %conv344 = trunc i32 %shl343 to i16
  store i16 %conv344, i16* %s.addr.0.firstgepi.gepi9, align 2
  %s.addr.0.firstgepi.gepi = getelementptr inbounds i16, i16* %s, i32 %incdec.ptr341.add
  %exitcond = icmp eq i32 %incdec.ptr341.add, 160
  br i1 %exitcond, label %if.end348.loopexit, label %for.body339

if.end348.loopexit:                               ; preds = %for.body339
  br label %if.end348

if.end348:                                        ; preds = %if.end348.loopexit, %for.end331
  ret void
}

; Function Attrs: noinline norecurse nounwind readnone
define i16 @gsm_mult.v0.C.c.c(i16 %a, i16 %b) local_unnamed_addr #4 {
entry:
  %cmp = icmp eq i16 %a, -32768
  %cmp3 = icmp eq i16 %b, -32768
  %or.cond = and i1 %cmp, %cmp3
  br i1 %or.cond, label %return, label %if.else

if.else:                                          ; preds = %entry
  %conv5 = sext i16 %a to i32
  %conv6 = sext i16 %b to i32
  %mul = mul nsw i32 %conv6, %conv5
  %shr1 = lshr i32 %mul, 15
  %conv7 = trunc i32 %shr1 to i16
  br label %return

return:                                           ; preds = %entry, %if.else
  %retval.0 = phi i16 [ %conv7, %if.else ], [ 32767, %entry ]
  ret i16 %retval.0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #3

attributes #0 = { noinline nounwind ssp "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { norecurse nounwind readnone }
attributes #3 = { argmemonly nounwind }
attributes #4 = { noinline norecurse nounwind readnone }
attributes #5 = { noinline norecurse nounwind }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
