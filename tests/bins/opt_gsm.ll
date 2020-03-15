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
  %so = alloca [160 x i16], align 2
  %so11 = bitcast [160 x i16]* %so to i8*
  %LARc.0 = alloca i16, align 2
  %LARc.1 = alloca i16, align 2
  %LARc.2 = alloca i16, align 2
  %LARc.3 = alloca i16, align 2
  %LARc.4 = alloca i16, align 2
  %LARc.5 = alloca i16, align 2
  %LARc.6 = alloca i16, align 2
  %LARc.7 = alloca i16, align 2
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %so11, i8* bitcast ([160 x i16]* @inData to i8*), i32 320, i32 2, i1 false)
  %arraydecay = getelementptr inbounds [160 x i16], [160 x i16]* %so, i32 0, i32 0
  call void @Gsm_LPC_Analysis.v0.C.c.c(i16* nonnull %arraydecay, i16* nonnull %LARc.0, i16* nonnull %LARc.1, i16* nonnull %LARc.2, i16* nonnull %LARc.3, i16* nonnull %LARc.4, i16* nonnull %LARc.5, i16* nonnull %LARc.6, i16* nonnull %LARc.7) #6
  br label %for.inc11

for.inc11:                                        ; preds = %for.inc11, %entry
  %main_result.07 = phi i32 [ 0, %entry ], [ %add, %for.inc11 ]
  %i.16 = phi i32 [ 0, %entry ], [ %inc12, %for.inc11 ]
  %arrayidx6 = getelementptr inbounds [160 x i16], [160 x i16]* %so, i32 0, i32 %i.16
  %0 = load i16, i16* %arrayidx6, align 2
  %arrayidx7 = getelementptr inbounds [160 x i16], [160 x i16]* @outData, i32 0, i32 %i.16
  %1 = load i16, i16* %arrayidx7, align 2
  %cmp9 = icmp ne i16 %0, %1
  %conv10 = zext i1 %cmp9 to i32
  %add = add nsw i32 %conv10, %main_result.07
  %inc12 = add nuw nsw i32 %i.16, 1
  %exitcond9 = icmp eq i32 %inc12, 160
  br i1 %exitcond9, label %for.body17.preheader, label %for.inc11

for.body17.preheader:                             ; preds = %for.inc11
  %.phi.i = load i16, i16* %LARc.7, align 2
  %cmp22 = icmp ne i16 %.phi.i, 2
  %conv23 = zext i1 %cmp22 to i32
  %.phi.i50 = load i16, i16* %LARc.0, align 2
  %cmp2270 = icmp ne i16 %.phi.i50, 32
  %conv2371 = zext i1 %cmp2270 to i32
  %.phi.i53 = load i16, i16* %LARc.1, align 2
  %cmp2277 = icmp ne i16 %.phi.i53, 33
  %conv2378 = zext i1 %cmp2277 to i32
  %.phi.i56 = load i16, i16* %LARc.2, align 2
  %cmp2284 = icmp ne i16 %.phi.i56, 22
  %conv2385 = zext i1 %cmp2284 to i32
  %.phi.i59 = load i16, i16* %LARc.3, align 2
  %cmp2291 = icmp ne i16 %.phi.i59, 13
  %conv2392 = zext i1 %cmp2291 to i32
  %.phi.i62 = load i16, i16* %LARc.4, align 2
  %cmp2298 = icmp ne i16 %.phi.i62, 7
  %conv2399 = zext i1 %cmp2298 to i32
  %.phi.i65 = load i16, i16* %LARc.5, align 2
  %cmp22105 = icmp ne i16 %.phi.i65, 5
  %conv23106 = zext i1 %cmp22105 to i32
  %.phi.i68 = load i16, i16* %LARc.6, align 2
  %cmp22112 = icmp ne i16 %.phi.i68, 3
  %conv23113 = zext i1 %cmp22112 to i32
  br label %for.body17

for.body17:                                       ; preds = %for.body17.backedge, %for.body17.preheader
  %main_result.15 = phi i32 [ %add, %for.body17.preheader ], [ %main_result.15.be, %for.body17.backedge ]
  %i.24 = phi i32 [ 0, %for.body17.preheader ], [ %i.24.be, %for.body17.backedge ]
  switch i32 %i.24, label %__non_const_wrapper__.37.exit [
    i32 0, label %__non_const_wrapper__.37.exit.thread
    i32 1, label %__non_const_wrapper__.37.exit.thread52
    i32 2, label %__non_const_wrapper__.37.exit.thread55
    i32 3, label %__non_const_wrapper__.37.exit.thread58
    i32 4, label %__non_const_wrapper__.37.exit.thread61
    i32 5, label %__non_const_wrapper__.37.exit.thread64
    i32 6, label %__non_const_wrapper__.37.exit.thread67
  ]

__non_const_wrapper__.37.exit.thread67:           ; preds = %for.body17
  %add24114 = add nsw i32 %conv23113, %main_result.15
  br label %for.body17.backedge

__non_const_wrapper__.37.exit.thread64:           ; preds = %for.body17
  %add24107 = add nsw i32 %conv23106, %main_result.15
  br label %for.body17.backedge

__non_const_wrapper__.37.exit.thread61:           ; preds = %for.body17
  %add24100 = add nsw i32 %conv2399, %main_result.15
  br label %for.body17.backedge

__non_const_wrapper__.37.exit.thread58:           ; preds = %for.body17
  %add2493 = add nsw i32 %conv2392, %main_result.15
  br label %for.body17.backedge

__non_const_wrapper__.37.exit.thread55:           ; preds = %for.body17
  %add2486 = add nsw i32 %conv2385, %main_result.15
  br label %for.body17.backedge

__non_const_wrapper__.37.exit.thread52:           ; preds = %for.body17
  %add2479 = add nsw i32 %conv2378, %main_result.15
  br label %for.body17.backedge

__non_const_wrapper__.37.exit.thread:             ; preds = %for.body17
  %add2472 = add nsw i32 %conv2371, %main_result.15
  br label %for.body17.backedge

__non_const_wrapper__.37.exit:                    ; preds = %for.body17
  %add24 = add nsw i32 %conv23, %main_result.15
  %inc26 = add nuw nsw i32 %i.24, 1
  %exitcond = icmp eq i32 %inc26, 8
  br i1 %exitcond, label %for.end27, label %for.body17.backedge

for.body17.backedge:                              ; preds = %__non_const_wrapper__.37.exit, %__non_const_wrapper__.37.exit.thread, %__non_const_wrapper__.37.exit.thread52, %__non_const_wrapper__.37.exit.thread55, %__non_const_wrapper__.37.exit.thread58, %__non_const_wrapper__.37.exit.thread61, %__non_const_wrapper__.37.exit.thread64, %__non_const_wrapper__.37.exit.thread67
  %main_result.15.be = phi i32 [ %add24, %__non_const_wrapper__.37.exit ], [ %add2472, %__non_const_wrapper__.37.exit.thread ], [ %add2479, %__non_const_wrapper__.37.exit.thread52 ], [ %add2486, %__non_const_wrapper__.37.exit.thread55 ], [ %add2493, %__non_const_wrapper__.37.exit.thread58 ], [ %add24100, %__non_const_wrapper__.37.exit.thread61 ], [ %add24107, %__non_const_wrapper__.37.exit.thread64 ], [ %add24114, %__non_const_wrapper__.37.exit.thread67 ]
  %i.24.be = phi i32 [ %inc26, %__non_const_wrapper__.37.exit ], [ 1, %__non_const_wrapper__.37.exit.thread ], [ 2, %__non_const_wrapper__.37.exit.thread52 ], [ 3, %__non_const_wrapper__.37.exit.thread55 ], [ 4, %__non_const_wrapper__.37.exit.thread58 ], [ 5, %__non_const_wrapper__.37.exit.thread61 ], [ 6, %__non_const_wrapper__.37.exit.thread64 ], [ 7, %__non_const_wrapper__.37.exit.thread67 ]
  br label %for.body17

for.end27:                                        ; preds = %__non_const_wrapper__.37.exit
  %call = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 %add24)
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

; Function Attrs: norecurse nounwind readnone
define i16 @gsm_norm.v0.C.c(i32 %a) local_unnamed_addr #2 {
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

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #3

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
define void @Gsm_LPC_Analysis.v0.C.c.c(i16* nocapture %s, i16* nocapture %LARc.0, i16* nocapture %LARc.1, i16* nocapture %LARc.2, i16* nocapture %LARc.3, i16* nocapture %LARc.4, i16* nocapture %LARc.5, i16* nocapture %LARc.6, i16* nocapture %LARc.7) local_unnamed_addr #5 {
entry:
  %L_ACF.0 = alloca i32, align 4
  %L_ACF.1 = alloca i32, align 4
  %L_ACF.2 = alloca i32, align 4
  %L_ACF.3 = alloca i32, align 4
  %L_ACF.4 = alloca i32, align 4
  %L_ACF.5 = alloca i32, align 4
  %L_ACF.6 = alloca i32, align 4
  %L_ACF.7 = alloca i32, align 4
  %L_ACF.8 = alloca i32, align 4
  call void @Autocorrelation.v0.C.c.c(i16* %s, i32* nonnull %L_ACF.0, i32* nonnull %L_ACF.1, i32* nonnull %L_ACF.2, i32* nonnull %L_ACF.3, i32* nonnull %L_ACF.4, i32* nonnull %L_ACF.5, i32* nonnull %L_ACF.6, i32* nonnull %L_ACF.7, i32* nonnull %L_ACF.8)
  %0 = load i32, i32* %L_ACF.0, align 4
  %cmp.i = icmp eq i32 %0, 0
  br i1 %cmp.i, label %for.body.i.preheader, label %if.end.i

for.body.i.preheader:                             ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.preheader, %__non_const_wrapper__.14.exit
  %r.addr.0.phi35.i = phi i32 [ %incdec.ptr.add.i, %__non_const_wrapper__.14.exit ], [ 0, %for.body.i.preheader ]
  switch i32 %r.addr.0.phi35.i, label %__non_const_wrapper__.14.exit [
    i32 0, label %csroa.if.then.i
    i32 1, label %__non_const_wrapper__.14.exit.sink.split
    i32 2, label %csroa.if.then6.i
    i32 3, label %csroa.if.then10.i
    i32 4, label %csroa.if.then14.i
    i32 5, label %csroa.if.then18.i
    i32 6, label %csroa.if.then22.i
    i32 7, label %csroa.if.then26.i
  ]

csroa.if.then.i:                                  ; preds = %for.body.i
  br label %__non_const_wrapper__.14.exit.sink.split

csroa.if.then6.i:                                 ; preds = %for.body.i
  br label %__non_const_wrapper__.14.exit.sink.split

csroa.if.then10.i:                                ; preds = %for.body.i
  br label %__non_const_wrapper__.14.exit.sink.split

csroa.if.then14.i:                                ; preds = %for.body.i
  br label %__non_const_wrapper__.14.exit.sink.split

csroa.if.then18.i:                                ; preds = %for.body.i
  br label %__non_const_wrapper__.14.exit.sink.split

csroa.if.then22.i:                                ; preds = %for.body.i
  br label %__non_const_wrapper__.14.exit.sink.split

csroa.if.then26.i:                                ; preds = %for.body.i
  br label %__non_const_wrapper__.14.exit.sink.split

__non_const_wrapper__.14.exit.sink.split:         ; preds = %for.body.i, %csroa.if.then.i, %csroa.if.then6.i, %csroa.if.then14.i, %csroa.if.then22.i, %csroa.if.then26.i, %csroa.if.then18.i, %csroa.if.then10.i
  %LARc.1.sink = phi i16* [ %LARc.3, %csroa.if.then10.i ], [ %LARc.5, %csroa.if.then18.i ], [ %LARc.7, %csroa.if.then26.i ], [ %LARc.6, %csroa.if.then22.i ], [ %LARc.4, %csroa.if.then14.i ], [ %LARc.2, %csroa.if.then6.i ], [ %LARc.0, %csroa.if.then.i ], [ %LARc.1, %for.body.i ]
  store i16 0, i16* %LARc.1.sink, align 2
  br label %__non_const_wrapper__.14.exit

__non_const_wrapper__.14.exit:                    ; preds = %__non_const_wrapper__.14.exit.sink.split, %for.body.i
  %incdec.ptr.add.i = add nuw nsw i32 %r.addr.0.phi35.i, 1
  %exitcond.i = icmp eq i32 %incdec.ptr.add.i, 8
  br i1 %exitcond.i, label %for.body.i690.preheader.loopexit, label %for.body.i

if.end.i:                                         ; preds = %entry
  %cmp.i1 = icmp slt i32 %0, 0
  br i1 %cmp.i1, label %if.then.i, label %if.end3.i

if.then.i:                                        ; preds = %if.end.i
  %cmp1.i = icmp slt i32 %0, -1073741823
  br i1 %cmp1.i, label %gsm_norm.v0.C.c.exit, label %if.end.i2

if.end.i2:                                        ; preds = %if.then.i
  %neg.i = xor i32 %0, -1
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.end.i2, %if.end.i
  %a.addr.0.i = phi i32 [ %neg.i, %if.end.i2 ], [ %0, %if.end.i ]
  %tobool.i = icmp ugt i32 %a.addr.0.i, 65535
  br i1 %tobool.i, label %cond.true.i, label %cond.false13.i

cond.true.i:                                      ; preds = %if.end3.i
  %tobool5.i = icmp ugt i32 %a.addr.0.i, 16777215
  %shr82.i = lshr i32 %a.addr.0.i, 16
  %and9.i = and i32 %shr82.i, 255
  %shr3.i = lshr i32 %a.addr.0.i, 24
  %and9.sink.i = select i1 %tobool5.i, i32 %shr3.i, i32 %and9.i
  %.sink.i = select i1 %tobool5.i, i32 -1, i32 7
  br label %cond.end29.i

cond.false13.i:                                   ; preds = %if.end3.i
  %and14.i = and i32 %a.addr.0.i, 65280
  %tobool15.i = icmp eq i32 %and14.i, 0
  %shr171.i = lshr i32 %a.addr.0.i, 8
  %a.addr.0.sink.i = select i1 %tobool15.i, i32 %a.addr.0.i, i32 %shr171.i
  %.sink5.i = select i1 %tobool15.i, i32 23, i32 15
  %and23.i = and i32 %a.addr.0.sink.i, 255
  br label %cond.end29.i

cond.end29.i:                                     ; preds = %cond.false13.i, %cond.true.i
  %and23.sink.i = phi i32 [ %and23.i, %cond.false13.i ], [ %and9.sink.i, %cond.true.i ]
  %.sink5.sink.i = phi i32 [ %.sink5.i, %cond.false13.i ], [ %.sink.i, %cond.true.i ]
  %arrayidx24.i = getelementptr inbounds [256 x i8], [256 x i8]* @bitoff, i32 0, i32 %and23.sink.i
  %1 = load i8, i8* %arrayidx24.i, align 1
  %conv25.i = zext i8 %1 to i32
  %add26.i = add nsw i32 %conv25.i, %.sink5.sink.i
  br label %gsm_norm.v0.C.c.exit

gsm_norm.v0.C.c.exit:                             ; preds = %if.then.i, %cond.end29.i
  %retval.0.i = phi i32 [ %add26.i, %cond.end29.i ], [ 0, %if.then.i ]
  %shl.i10 = shl i32 %0, %retval.0.i
  %shr2.i11 = lshr i32 %shl.i10, 16
  %conv7.i12 = trunc i32 %shr2.i11 to i16
  %2 = load i32, i32* %L_ACF.1, align 4
  %shl.i15 = shl i32 %2, %retval.0.i
  %shr2.i16 = lshr i32 %shl.i15, 16
  %conv7.i17 = trunc i32 %shr2.i16 to i16
  %3 = load i32, i32* %L_ACF.2, align 4
  %shl.i20 = shl i32 %3, %retval.0.i
  %shr2.i21 = lshr i32 %shl.i20, 16
  %conv7.i22 = trunc i32 %shr2.i21 to i16
  %4 = load i32, i32* %L_ACF.3, align 4
  %shl.i25 = shl i32 %4, %retval.0.i
  %shr2.i26 = lshr i32 %shl.i25, 16
  %conv7.i27 = trunc i32 %shr2.i26 to i16
  %5 = load i32, i32* %L_ACF.4, align 4
  %shl.i30 = shl i32 %5, %retval.0.i
  %shr2.i31 = lshr i32 %shl.i30, 16
  %conv7.i32 = trunc i32 %shr2.i31 to i16
  %6 = load i32, i32* %L_ACF.5, align 4
  %shl.i35 = shl i32 %6, %retval.0.i
  %shr2.i36 = lshr i32 %shl.i35, 16
  %conv7.i37 = trunc i32 %shr2.i36 to i16
  %7 = load i32, i32* %L_ACF.6, align 4
  %shl.i40 = shl i32 %7, %retval.0.i
  %shr2.i41 = lshr i32 %shl.i40, 16
  %conv7.i42 = trunc i32 %shr2.i41 to i16
  %8 = load i32, i32* %L_ACF.7, align 4
  %shl.i45 = shl i32 %8, %retval.0.i
  %shr2.i46 = lshr i32 %shl.i45, 16
  %conv7.i47 = trunc i32 %shr2.i46 to i16
  br label %for.body5.i.outer

for.body5.i.outer.loopexit:                       ; preds = %for.body5.i
  br label %for.body5.i.outer.backedge

for.body5.i.outer:                                ; preds = %for.body5.i.outer.backedge, %gsm_norm.v0.C.c.exit
  %i.146.i.ph = phi i32 [ 0, %gsm_norm.v0.C.c.exit ], [ %i.146.i.ph.be, %for.body5.i.outer.backedge ]
  br label %for.body5.i

for.body5.i:                                      ; preds = %for.body5.i.outer, %__non_const_wrapper__.15.exit
  %i.146.i = phi i32 [ %inc.i, %__non_const_wrapper__.15.exit ], [ %i.146.i.ph, %for.body5.i.outer ]
  switch i32 %i.146.i, label %__non_const_wrapper__.15.exit [
    i32 0, label %__non_const_wrapper__.16.exit.thread.loopexit
    i32 1, label %for.body5.i.outer.loopexit
    i32 2, label %__non_const_wrapper__.15.exit.thread19
    i32 3, label %__non_const_wrapper__.15.exit.thread24
    i32 4, label %__non_const_wrapper__.15.exit.thread29
    i32 5, label %__non_const_wrapper__.15.exit.thread34
    i32 6, label %__non_const_wrapper__.15.exit.thread39
    i32 7, label %__non_const_wrapper__.15.exit.thread44
    i32 8, label %__non_const_wrapper__.15.exit.thread49
  ]

__non_const_wrapper__.15.exit.thread19:           ; preds = %for.body5.i
  br label %for.body5.i.outer.backedge

__non_const_wrapper__.15.exit.thread24:           ; preds = %for.body5.i
  br label %for.body5.i.outer.backedge

__non_const_wrapper__.15.exit.thread29:           ; preds = %for.body5.i
  br label %for.body5.i.outer.backedge

__non_const_wrapper__.15.exit.thread34:           ; preds = %for.body5.i
  br label %for.body5.i.outer.backedge

__non_const_wrapper__.15.exit.thread39:           ; preds = %for.body5.i
  br label %for.body5.i.outer.backedge

__non_const_wrapper__.15.exit.thread44:           ; preds = %for.body5.i
  br label %for.body5.i.outer.backedge

__non_const_wrapper__.15.exit.thread49:           ; preds = %for.body5.i
  %9 = load i32, i32* %L_ACF.8, align 4
  %shl.i50 = shl i32 %9, %retval.0.i
  %shr2.i51 = lshr i32 %shl.i50, 16
  %conv7.i52 = trunc i32 %shr2.i51 to i16
  br label %for.body14.i.preheader

for.body14.i.preheader.loopexit:                  ; preds = %__non_const_wrapper__.15.exit
  br label %for.body14.i.preheader

for.body14.i.preheader:                           ; preds = %for.body14.i.preheader.loopexit, %__non_const_wrapper__.15.exit.thread49
  %ACF.8.i.159.ph = phi i16 [ %conv7.i52, %__non_const_wrapper__.15.exit.thread49 ], [ undef, %for.body14.i.preheader.loopexit ]
  br label %for.body14.i.outer

__non_const_wrapper__.15.exit:                    ; preds = %for.body5.i
  %inc.i = add nuw nsw i32 %i.146.i, 1
  %exitcond54.i = icmp eq i32 %inc.i, 9
  br i1 %exitcond54.i, label %for.body14.i.preheader.loopexit, label %for.body5.i

__non_const_wrapper__.16.exit.thread.loopexit:    ; preds = %for.body5.i
  br label %for.body5.i.outer.backedge

for.body5.i.outer.backedge:                       ; preds = %__non_const_wrapper__.16.exit.thread.loopexit, %__non_const_wrapper__.15.exit.thread24, %__non_const_wrapper__.15.exit.thread34, %__non_const_wrapper__.15.exit.thread44, %__non_const_wrapper__.15.exit.thread39, %__non_const_wrapper__.15.exit.thread29, %__non_const_wrapper__.15.exit.thread19, %for.body5.i.outer.loopexit
  %i.146.i.ph.be = phi i32 [ 3, %__non_const_wrapper__.15.exit.thread19 ], [ 4, %__non_const_wrapper__.15.exit.thread24 ], [ 5, %__non_const_wrapper__.15.exit.thread29 ], [ 6, %__non_const_wrapper__.15.exit.thread34 ], [ 7, %__non_const_wrapper__.15.exit.thread39 ], [ 8, %__non_const_wrapper__.15.exit.thread44 ], [ 1, %__non_const_wrapper__.16.exit.thread.loopexit ], [ 2, %for.body5.i.outer.loopexit ]
  br label %for.body5.i.outer

for.body14.i:                                     ; preds = %for.body14.i.outer, %__non_const_wrapper__.18.exit
  %i.245.i = phi i32 [ %inc18.i, %__non_const_wrapper__.18.exit ], [ %i.245.i.ph, %for.body14.i.outer ]
  switch i32 %i.245.i, label %__non_const_wrapper__.18.exit [
    i32 1, label %__non_const_wrapper__.18.exit.thread.loopexit
    i32 2, label %__non_const_wrapper__.18.exit.thread.loopexit266
    i32 3, label %for.body14.i.outer.loopexit
    i32 4, label %for.body14.i.outer.loopexit333
    i32 5, label %for.body14.i.outer.loopexit338
    i32 6, label %csroa.if.then22.i104
    i32 7, label %for.body23.i.outer.preheader
  ]

csroa.if.then22.i104:                             ; preds = %for.body14.i
  br label %for.body14.i.outer.backedge

__non_const_wrapper__.18.exit.thread.loopexit:    ; preds = %for.body14.i
  br label %for.body14.i.outer.backedge

__non_const_wrapper__.18.exit.thread.loopexit266: ; preds = %for.body14.i
  br label %for.body14.i.outer.backedge

for.body14.i.outer.backedge:                      ; preds = %__non_const_wrapper__.18.exit.thread.loopexit266, %__non_const_wrapper__.18.exit.thread.loopexit, %csroa.if.then22.i104, %for.body14.i.outer.loopexit, %for.body14.i.outer.loopexit333, %for.body14.i.outer.loopexit338
  %i.245.i.ph.be = phi i32 [ 7, %csroa.if.then22.i104 ], [ 2, %__non_const_wrapper__.18.exit.thread.loopexit ], [ 3, %__non_const_wrapper__.18.exit.thread.loopexit266 ], [ 4, %for.body14.i.outer.loopexit ], [ 5, %for.body14.i.outer.loopexit333 ], [ 6, %for.body14.i.outer.loopexit338 ]
  br label %for.body14.i.outer

for.body14.i.outer.loopexit:                      ; preds = %for.body14.i
  br label %for.body14.i.outer.backedge

for.body14.i.outer.loopexit333:                   ; preds = %for.body14.i
  br label %for.body14.i.outer.backedge

for.body14.i.outer.loopexit338:                   ; preds = %for.body14.i
  br label %for.body14.i.outer.backedge

for.body14.i.outer:                               ; preds = %for.body14.i.outer.backedge, %for.body14.i.preheader
  %i.245.i.ph = phi i32 [ 1, %for.body14.i.preheader ], [ %i.245.i.ph.be, %for.body14.i.outer.backedge ]
  br label %for.body14.i

__non_const_wrapper__.18.exit:                    ; preds = %for.body14.i
  %inc18.i = add nuw nsw i32 %i.245.i, 1
  %exitcond53.i = icmp eq i32 %inc18.i, 8
  br i1 %exitcond53.i, label %for.body23.i.outer.preheader, label %for.body14.i

for.body23.i.outer.preheader:                     ; preds = %__non_const_wrapper__.18.exit, %for.body14.i
  br label %for.body23.i.outer

for.body23.i.outer.loopexit:                      ; preds = %for.body23.i
  br label %for.body23.i.outer.backedge

for.body23.i.outer:                               ; preds = %for.body23.i.outer.backedge, %for.body23.i.outer.preheader
  %i.344.i.ph = phi i32 [ 0, %for.body23.i.outer.preheader ], [ %i.344.i.ph.be, %for.body23.i.outer.backedge ]
  br label %for.body23.i

for.body23.i:                                     ; preds = %for.body23.i.outer, %__non_const_wrapper__.20.exit
  %i.344.i = phi i32 [ %inc27.i, %__non_const_wrapper__.20.exit ], [ %i.344.i.ph, %for.body23.i.outer ]
  switch i32 %i.344.i, label %__non_const_wrapper__.20.exit [
    i32 0, label %__non_const_wrapper__.20.exit.thread.loopexit
    i32 1, label %__non_const_wrapper__.20.exit.thread.loopexit265
    i32 2, label %for.body23.i.outer.loopexit
    i32 3, label %csroa.if.then10.i174
    i32 4, label %csroa.if.then14.i177
    i32 5, label %csroa.if.then18.i180
    i32 6, label %csroa.if.then22.i183
    i32 7, label %csroa.if.then26.i186
    i32 8, label %for.body32.i.preheader
  ]

csroa.if.then10.i174:                             ; preds = %for.body23.i
  br label %for.body23.i.outer.backedge

csroa.if.then14.i177:                             ; preds = %for.body23.i
  br label %for.body23.i.outer.backedge

csroa.if.then18.i180:                             ; preds = %for.body23.i
  br label %for.body23.i.outer.backedge

csroa.if.then22.i183:                             ; preds = %for.body23.i
  br label %for.body23.i.outer.backedge

csroa.if.then26.i186:                             ; preds = %for.body23.i
  br label %for.body23.i.outer.backedge

__non_const_wrapper__.20.exit.thread.loopexit:    ; preds = %for.body23.i
  br label %for.body23.i.outer.backedge

__non_const_wrapper__.20.exit.thread.loopexit265: ; preds = %for.body23.i
  br label %for.body23.i.outer.backedge

for.body23.i.outer.backedge:                      ; preds = %__non_const_wrapper__.20.exit.thread.loopexit265, %__non_const_wrapper__.20.exit.thread.loopexit, %csroa.if.then10.i174, %csroa.if.then18.i180, %csroa.if.then26.i186, %csroa.if.then22.i183, %csroa.if.then14.i177, %for.body23.i.outer.loopexit
  %i.344.i.ph.be = phi i32 [ 4, %csroa.if.then10.i174 ], [ 5, %csroa.if.then14.i177 ], [ 6, %csroa.if.then18.i180 ], [ 7, %csroa.if.then22.i183 ], [ 8, %csroa.if.then26.i186 ], [ 1, %__non_const_wrapper__.20.exit.thread.loopexit ], [ 2, %__non_const_wrapper__.20.exit.thread.loopexit265 ], [ 3, %for.body23.i.outer.loopexit ]
  br label %for.body23.i.outer

__non_const_wrapper__.20.exit:                    ; preds = %for.body23.i
  %inc27.i = add nuw nsw i32 %i.344.i, 1
  %exitcond52.i = icmp eq i32 %inc27.i, 9
  br i1 %exitcond52.i, label %for.body32.i.preheader, label %for.body23.i

for.body32.i.preheader:                           ; preds = %__non_const_wrapper__.20.exit, %for.body23.i
  br label %for.body32.i

for.body32.i:                                     ; preds = %for.body32.i.preheader, %for.inc88.i
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc88.i ], [ 8, %for.body32.i.preheader ]
  %K.7.i.2 = phi i16 [ %K.7.i.5, %for.inc88.i ], [ %conv7.i47, %for.body32.i.preheader ]
  %K.6.i.2 = phi i16 [ %K.6.i.5, %for.inc88.i ], [ %conv7.i42, %for.body32.i.preheader ]
  %K.5.i.2 = phi i16 [ %K.5.i.5, %for.inc88.i ], [ %conv7.i37, %for.body32.i.preheader ]
  %K.4.i.2 = phi i16 [ %K.4.i.5, %for.inc88.i ], [ %conv7.i32, %for.body32.i.preheader ]
  %K.3.i.2 = phi i16 [ %K.3.i.5, %for.inc88.i ], [ %conv7.i27, %for.body32.i.preheader ]
  %K.2.i.2 = phi i16 [ %K.2.i.5, %for.inc88.i ], [ %conv7.i22, %for.body32.i.preheader ]
  %K.1.i.2 = phi i16 [ %K.1.i.5, %for.inc88.i ], [ %conv7.i17, %for.body32.i.preheader ]
  %P.8.i.2 = phi i16 [ %P.8.i.5, %for.inc88.i ], [ %ACF.8.i.159.ph, %for.body32.i.preheader ]
  %P.7.i.2 = phi i16 [ %P.7.i.5, %for.inc88.i ], [ %conv7.i47, %for.body32.i.preheader ]
  %P.6.i.2 = phi i16 [ %P.6.i.5, %for.inc88.i ], [ %conv7.i42, %for.body32.i.preheader ]
  %P.5.i.2 = phi i16 [ %P.5.i.5, %for.inc88.i ], [ %conv7.i37, %for.body32.i.preheader ]
  %P.4.i.2 = phi i16 [ %P.4.i.5, %for.inc88.i ], [ %conv7.i32, %for.body32.i.preheader ]
  %P.3.i.2 = phi i16 [ %P.3.i.5, %for.inc88.i ], [ %conv7.i27, %for.body32.i.preheader ]
  %P.2.i.2 = phi i16 [ %P.2.i.5, %for.inc88.i ], [ %conv7.i22, %for.body32.i.preheader ]
  %P.1.i.2 = phi i16 [ %P.1.i.5, %for.inc88.i ], [ %conv7.i17, %for.body32.i.preheader ]
  %P.0.i.2 = phi i16 [ %call67.c.i.c, %for.inc88.i ], [ %conv7.i12, %for.body32.i.preheader ]
  %r.addr.1.phi42.i = phi i32 [ %incdec.ptr90.add.i, %for.inc88.i ], [ 0, %for.body32.i.preheader ]
  %n.041.i = phi i32 [ %inc89.i, %for.inc88.i ], [ 1, %for.body32.i.preheader ]
  %cmp.i199 = icmp slt i16 %P.1.i.2, 0
  br i1 %cmp.i199, label %cond.true.i201, label %gsm_abs.v0.C.c.exit

cond.true.i201:                                   ; preds = %for.body32.i
  %cmp3.i = icmp eq i16 %P.1.i.2, -32768
  %sub.i200 = sub i16 0, %P.1.i.2
  %cond.i = select i1 %cmp3.i, i16 32767, i16 %sub.i200
  br label %gsm_abs.v0.C.c.exit

gsm_abs.v0.C.c.exit:                              ; preds = %for.body32.i, %cond.true.i201
  %cond10.i = phi i16 [ %cond.i, %cond.true.i201 ], [ %P.1.i.2, %for.body32.i ]
  %cmp38.i = icmp slt i16 %P.0.i.2, %cond10.i
  br i1 %cmp38.i, label %for.body44.preheader.i, label %if.end49.i

for.body44.preheader.i:                           ; preds = %gsm_abs.v0.C.c.exit
  %10 = sub i32 9, %n.041.i
  br label %for.body44.i

for.body44.i:                                     ; preds = %__non_const_wrapper__.21.exit, %for.body44.preheader.i
  %r.addr.2.phi38.i = phi i32 [ %incdec.ptr45.add.i, %__non_const_wrapper__.21.exit ], [ 0, %for.body44.preheader.i ]
  %.mul.x.add16.i = add i32 %r.addr.2.phi38.i, %r.addr.1.phi42.i
  switch i32 %.mul.x.add16.i, label %__non_const_wrapper__.21.exit [
    i32 0, label %csroa.if.then.i203
    i32 1, label %__non_const_wrapper__.21.exit.sink.split
    i32 2, label %csroa.if.then6.i209
    i32 3, label %csroa.if.then10.i212
    i32 4, label %csroa.if.then14.i215
    i32 5, label %csroa.if.then18.i218
    i32 6, label %csroa.if.then22.i221
    i32 7, label %csroa.if.then26.i224
  ]

csroa.if.then.i203:                               ; preds = %for.body44.i
  br label %__non_const_wrapper__.21.exit.sink.split

csroa.if.then6.i209:                              ; preds = %for.body44.i
  br label %__non_const_wrapper__.21.exit.sink.split

csroa.if.then10.i212:                             ; preds = %for.body44.i
  br label %__non_const_wrapper__.21.exit.sink.split

csroa.if.then14.i215:                             ; preds = %for.body44.i
  br label %__non_const_wrapper__.21.exit.sink.split

csroa.if.then18.i218:                             ; preds = %for.body44.i
  br label %__non_const_wrapper__.21.exit.sink.split

csroa.if.then22.i221:                             ; preds = %for.body44.i
  br label %__non_const_wrapper__.21.exit.sink.split

csroa.if.then26.i224:                             ; preds = %for.body44.i
  br label %__non_const_wrapper__.21.exit.sink.split

__non_const_wrapper__.21.exit.sink.split:         ; preds = %for.body44.i, %csroa.if.then.i203, %csroa.if.then6.i209, %csroa.if.then14.i215, %csroa.if.then22.i221, %csroa.if.then26.i224, %csroa.if.then18.i218, %csroa.if.then10.i212
  %LARc.1.sink1 = phi i16* [ %LARc.3, %csroa.if.then10.i212 ], [ %LARc.5, %csroa.if.then18.i218 ], [ %LARc.7, %csroa.if.then26.i224 ], [ %LARc.6, %csroa.if.then22.i221 ], [ %LARc.4, %csroa.if.then14.i215 ], [ %LARc.2, %csroa.if.then6.i209 ], [ %LARc.0, %csroa.if.then.i203 ], [ %LARc.1, %for.body44.i ]
  store i16 0, i16* %LARc.1.sink1, align 2
  br label %__non_const_wrapper__.21.exit

__non_const_wrapper__.21.exit:                    ; preds = %__non_const_wrapper__.21.exit.sink.split, %for.body44.i
  %incdec.ptr45.add.i = add nuw i32 %r.addr.2.phi38.i, 1
  %exitcond51.i = icmp eq i32 %incdec.ptr45.add.i, %10
  br i1 %exitcond51.i, label %for.body.i690.preheader.loopexit336, label %for.body44.i

if.end49.i:                                       ; preds = %gsm_abs.v0.C.c.exit
  %conv1.i = sext i16 %P.0.i.2 to i32
  %cmp.i233 = icmp eq i16 %cond10.i, 0
  br i1 %cmp.i233, label %gsm_div.v0.C.c.exit, label %if.end.i235

if.end.i235:                                      ; preds = %if.end49.i
  %conv.i234 = sext i16 %cond10.i to i32
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i, %if.end.i235
  %k.03.i = phi i32 [ 15, %if.end.i235 ], [ %dec.i, %while.body.i ]
  %div.02.i = phi i16 [ 0, %if.end.i235 ], [ %div.1.i, %while.body.i ]
  %L_num.01.i = phi i32 [ %conv.i234, %if.end.i235 ], [ %L_num.1.i, %while.body.i ]
  %dec.i = add nsw i32 %k.03.i, -1
  %shl.i236 = shl i16 %div.02.i, 1
  %shl6.i = shl i32 %L_num.01.i, 1
  %cmp7.i = icmp slt i32 %shl6.i, %conv1.i
  %sub.i237 = select i1 %cmp7.i, i32 0, i32 %conv1.i
  %L_num.1.i = sub nsw i32 %shl6.i, %sub.i237
  %not.cmp7.i = xor i1 %cmp7.i, true
  %inc.i238 = zext i1 %not.cmp7.i to i16
  %div.1.i = or i16 %inc.i238, %shl.i236
  %tobool.i239 = icmp eq i32 %dec.i, 0
  br i1 %tobool.i239, label %gsm_div.v0.C.c.exit.loopexit, label %while.body.i

gsm_div.v0.C.c.exit.loopexit:                     ; preds = %while.body.i
  br label %gsm_div.v0.C.c.exit

gsm_div.v0.C.c.exit:                              ; preds = %gsm_div.v0.C.c.exit.loopexit, %if.end49.i
  %retval.0.i240 = phi i16 [ 0, %if.end49.i ], [ %div.1.i, %gsm_div.v0.C.c.exit.loopexit ]
  switch i32 %r.addr.1.phi42.i, label %__non_const_wrapper__.22.exit [
    i32 0, label %csroa.if.then.i242
    i32 1, label %__non_const_wrapper__.22.exit.sink.split
    i32 2, label %csroa.if.then6.i248
    i32 3, label %csroa.if.then10.i251
    i32 4, label %csroa.if.then14.i254
    i32 5, label %csroa.if.then18.i257
    i32 6, label %csroa.if.then22.i260
    i32 7, label %csroa.if.then26.i263
  ]

csroa.if.then.i242:                               ; preds = %gsm_div.v0.C.c.exit
  br label %__non_const_wrapper__.22.exit.sink.split

csroa.if.then6.i248:                              ; preds = %gsm_div.v0.C.c.exit
  br label %__non_const_wrapper__.22.exit.sink.split

csroa.if.then10.i251:                             ; preds = %gsm_div.v0.C.c.exit
  br label %__non_const_wrapper__.22.exit.sink.split

csroa.if.then14.i254:                             ; preds = %gsm_div.v0.C.c.exit
  br label %__non_const_wrapper__.22.exit.sink.split

csroa.if.then18.i257:                             ; preds = %gsm_div.v0.C.c.exit
  br label %__non_const_wrapper__.22.exit.sink.split

csroa.if.then22.i260:                             ; preds = %gsm_div.v0.C.c.exit
  br label %__non_const_wrapper__.22.exit.sink.split

csroa.if.then26.i263:                             ; preds = %gsm_div.v0.C.c.exit
  br label %__non_const_wrapper__.22.exit.sink.split

__non_const_wrapper__.22.exit.sink.split:         ; preds = %gsm_div.v0.C.c.exit, %csroa.if.then.i242, %csroa.if.then6.i248, %csroa.if.then14.i254, %csroa.if.then22.i260, %csroa.if.then26.i263, %csroa.if.then18.i257, %csroa.if.then10.i251
  %LARc.1.sink2 = phi i16* [ %LARc.3, %csroa.if.then10.i251 ], [ %LARc.5, %csroa.if.then18.i257 ], [ %LARc.7, %csroa.if.then26.i263 ], [ %LARc.6, %csroa.if.then22.i260 ], [ %LARc.4, %csroa.if.then14.i254 ], [ %LARc.2, %csroa.if.then6.i248 ], [ %LARc.0, %csroa.if.then.i242 ], [ %LARc.1, %gsm_div.v0.C.c.exit ]
  store i16 %retval.0.i240, i16* %LARc.1.sink2, align 2
  br label %__non_const_wrapper__.22.exit

__non_const_wrapper__.22.exit:                    ; preds = %__non_const_wrapper__.22.exit.sink.split, %gsm_div.v0.C.c.exit
  %cmp54.i = icmp sgt i16 %P.1.i.2, 0
  br i1 %cmp54.i, label %if.then56.i, label %if.end59.i

if.then56.i:                                      ; preds = %__non_const_wrapper__.22.exit
  switch i32 %r.addr.1.phi42.i, label %__non_const_wrapper__.23.exit [
    i32 0, label %csroa.if.then.i273
    i32 1, label %__non_const_wrapper__.23.exit.sink.split
    i32 2, label %csroa.if.then7.i279
    i32 3, label %csroa.if.then12.i282
    i32 4, label %csroa.if.then17.i285
    i32 5, label %csroa.if.then22.i288
    i32 6, label %csroa.if.then27.i291
    i32 7, label %csroa.if.then32.i294
  ]

csroa.if.then.i273:                               ; preds = %if.then56.i
  br label %__non_const_wrapper__.23.exit.sink.split

csroa.if.then7.i279:                              ; preds = %if.then56.i
  br label %__non_const_wrapper__.23.exit.sink.split

csroa.if.then12.i282:                             ; preds = %if.then56.i
  br label %__non_const_wrapper__.23.exit.sink.split

csroa.if.then17.i285:                             ; preds = %if.then56.i
  br label %__non_const_wrapper__.23.exit.sink.split

csroa.if.then22.i288:                             ; preds = %if.then56.i
  br label %__non_const_wrapper__.23.exit.sink.split

csroa.if.then27.i291:                             ; preds = %if.then56.i
  br label %__non_const_wrapper__.23.exit.sink.split

csroa.if.then32.i294:                             ; preds = %if.then56.i
  br label %__non_const_wrapper__.23.exit.sink.split

__non_const_wrapper__.23.exit.sink.split:         ; preds = %if.then56.i, %csroa.if.then.i273, %csroa.if.then7.i279, %csroa.if.then17.i285, %csroa.if.then27.i291, %csroa.if.then32.i294, %csroa.if.then22.i288, %csroa.if.then12.i282
  %LARc.1.sink3 = phi i16* [ %LARc.3, %csroa.if.then12.i282 ], [ %LARc.5, %csroa.if.then22.i288 ], [ %LARc.7, %csroa.if.then32.i294 ], [ %LARc.6, %csroa.if.then27.i291 ], [ %LARc.4, %csroa.if.then17.i285 ], [ %LARc.2, %csroa.if.then7.i279 ], [ %LARc.0, %csroa.if.then.i273 ], [ %LARc.1, %if.then56.i ]
  %11 = load i16, i16* %LARc.1.sink3, align 2
  br label %__non_const_wrapper__.23.exit

__non_const_wrapper__.23.exit:                    ; preds = %__non_const_wrapper__.23.exit.sink.split, %if.then56.i
  %.phi.i310 = phi i16 [ undef, %if.then56.i ], [ %11, %__non_const_wrapper__.23.exit.sink.split ]
  %sub.i = sub i16 0, %.phi.i310
  switch i32 %r.addr.1.phi42.i, label %if.end59.i [
    i32 0, label %csroa.if.then.i312
    i32 1, label %csroa.if.then2.i315
    i32 2, label %csroa.if.then6.i318
    i32 3, label %csroa.if.then10.i321
    i32 4, label %csroa.if.then14.i324
    i32 5, label %csroa.if.then18.i327
    i32 6, label %csroa.if.then22.i330
    i32 7, label %csroa.if.then26.i333
  ]

csroa.if.then.i312:                               ; preds = %__non_const_wrapper__.23.exit
  store i16 %sub.i, i16* %LARc.0, align 2
  br label %if.end59.i

csroa.if.then2.i315:                              ; preds = %__non_const_wrapper__.23.exit
  store i16 %sub.i, i16* %LARc.1, align 2
  br label %if.end59.i

csroa.if.then6.i318:                              ; preds = %__non_const_wrapper__.23.exit
  store i16 %sub.i, i16* %LARc.2, align 2
  br label %if.end59.i

csroa.if.then10.i321:                             ; preds = %__non_const_wrapper__.23.exit
  store i16 %sub.i, i16* %LARc.3, align 2
  br label %if.end59.i

csroa.if.then14.i324:                             ; preds = %__non_const_wrapper__.23.exit
  store i16 %sub.i, i16* %LARc.4, align 2
  br label %if.end59.i

csroa.if.then18.i327:                             ; preds = %__non_const_wrapper__.23.exit
  store i16 %sub.i, i16* %LARc.5, align 2
  br label %if.end59.i

csroa.if.then22.i330:                             ; preds = %__non_const_wrapper__.23.exit
  store i16 %sub.i, i16* %LARc.6, align 2
  br label %if.end59.i

csroa.if.then26.i333:                             ; preds = %__non_const_wrapper__.23.exit
  store i16 %sub.i, i16* %LARc.7, align 2
  br label %if.end59.i

if.end59.i:                                       ; preds = %csroa.if.then.i312, %csroa.if.then6.i318, %csroa.if.then14.i324, %csroa.if.then22.i330, %__non_const_wrapper__.23.exit, %csroa.if.then26.i333, %csroa.if.then18.i327, %csroa.if.then10.i321, %csroa.if.then2.i315, %__non_const_wrapper__.22.exit
  %cmp60.i = icmp eq i32 %n.041.i, 8
  br i1 %cmp60.i, label %for.body.i690.preheader.loopexit337, label %if.end63.i

if.end63.i:                                       ; preds = %if.end59.i
  switch i32 %r.addr.1.phi42.i, label %__non_const_wrapper__.25.exit [
    i32 0, label %csroa.if.then.i343
    i32 1, label %__non_const_wrapper__.25.exit.sink.split
    i32 2, label %csroa.if.then7.i349
    i32 3, label %csroa.if.then12.i352
    i32 4, label %csroa.if.then17.i355
    i32 5, label %csroa.if.then22.i358
    i32 6, label %csroa.if.then27.i361
    i32 7, label %csroa.if.then32.i364
  ]

csroa.if.then.i343:                               ; preds = %if.end63.i
  br label %__non_const_wrapper__.25.exit.sink.split

csroa.if.then7.i349:                              ; preds = %if.end63.i
  br label %__non_const_wrapper__.25.exit.sink.split

csroa.if.then12.i352:                             ; preds = %if.end63.i
  br label %__non_const_wrapper__.25.exit.sink.split

csroa.if.then17.i355:                             ; preds = %if.end63.i
  br label %__non_const_wrapper__.25.exit.sink.split

csroa.if.then22.i358:                             ; preds = %if.end63.i
  br label %__non_const_wrapper__.25.exit.sink.split

csroa.if.then27.i361:                             ; preds = %if.end63.i
  br label %__non_const_wrapper__.25.exit.sink.split

csroa.if.then32.i364:                             ; preds = %if.end63.i
  br label %__non_const_wrapper__.25.exit.sink.split

__non_const_wrapper__.25.exit.sink.split:         ; preds = %if.end63.i, %csroa.if.then.i343, %csroa.if.then7.i349, %csroa.if.then17.i355, %csroa.if.then27.i361, %csroa.if.then32.i364, %csroa.if.then22.i358, %csroa.if.then12.i352
  %LARc.1.sink4 = phi i16* [ %LARc.3, %csroa.if.then12.i352 ], [ %LARc.5, %csroa.if.then22.i358 ], [ %LARc.7, %csroa.if.then32.i364 ], [ %LARc.6, %csroa.if.then27.i361 ], [ %LARc.4, %csroa.if.then17.i355 ], [ %LARc.2, %csroa.if.then7.i349 ], [ %LARc.0, %csroa.if.then.i343 ], [ %LARc.1, %if.end63.i ]
  %12 = load i16, i16* %LARc.1.sink4, align 2
  br label %__non_const_wrapper__.25.exit

__non_const_wrapper__.25.exit:                    ; preds = %__non_const_wrapper__.25.exit.sink.split, %if.end63.i
  %.phi.i380 = phi i16 [ undef, %if.end63.i ], [ %12, %__non_const_wrapper__.25.exit.sink.split ]
  %call65.c.i.c = tail call i16 @gsm_mult_r.v0.C.c.c(i16 %P.1.i.2, i16 %.phi.i380)
  %call67.c.i.c = tail call i16 @gsm_add.v0.C.c.c(i16 %P.0.i.2, i16 %call65.c.i.c)
  %cmp7139.i = icmp sgt i32 %n.041.i, 7
  br i1 %cmp7139.i, label %for.inc88.i, label %for.body73.i.preheader

for.body73.i.preheader:                           ; preds = %__non_const_wrapper__.25.exit
  br label %for.body73.i

for.body73.i:                                     ; preds = %for.body73.i.preheader, %__non_const_wrapper__.33.exit
  %K.7.i.3 = phi i16 [ %K.7.i.4, %__non_const_wrapper__.33.exit ], [ %K.7.i.2, %for.body73.i.preheader ]
  %K.6.i.3 = phi i16 [ %K.6.i.4, %__non_const_wrapper__.33.exit ], [ %K.6.i.2, %for.body73.i.preheader ]
  %K.5.i.3 = phi i16 [ %K.5.i.4, %__non_const_wrapper__.33.exit ], [ %K.5.i.2, %for.body73.i.preheader ]
  %K.4.i.3 = phi i16 [ %K.4.i.4, %__non_const_wrapper__.33.exit ], [ %K.4.i.2, %for.body73.i.preheader ]
  %K.3.i.3 = phi i16 [ %K.3.i.4, %__non_const_wrapper__.33.exit ], [ %K.3.i.2, %for.body73.i.preheader ]
  %K.2.i.3 = phi i16 [ %K.2.i.4, %__non_const_wrapper__.33.exit ], [ %K.2.i.2, %for.body73.i.preheader ]
  %K.1.i.3 = phi i16 [ %K.1.i.4, %__non_const_wrapper__.33.exit ], [ %K.1.i.2, %for.body73.i.preheader ]
  %P.8.i.3 = phi i16 [ %P.8.i.4137, %__non_const_wrapper__.33.exit ], [ %P.8.i.2, %for.body73.i.preheader ]
  %P.7.i.3 = phi i16 [ %P.7.i.4143, %__non_const_wrapper__.33.exit ], [ %P.7.i.2, %for.body73.i.preheader ]
  %P.6.i.3 = phi i16 [ %P.6.i.4150, %__non_const_wrapper__.33.exit ], [ %P.6.i.2, %for.body73.i.preheader ]
  %P.5.i.3 = phi i16 [ %P.5.i.4157, %__non_const_wrapper__.33.exit ], [ %P.5.i.2, %for.body73.i.preheader ]
  %P.4.i.3 = phi i16 [ %P.4.i.4164, %__non_const_wrapper__.33.exit ], [ %P.4.i.2, %for.body73.i.preheader ]
  %P.3.i.3 = phi i16 [ %P.3.i.4171, %__non_const_wrapper__.33.exit ], [ %P.3.i.2, %for.body73.i.preheader ]
  %P.2.i.3 = phi i16 [ %P.2.i.4178, %__non_const_wrapper__.33.exit ], [ %P.2.i.2, %for.body73.i.preheader ]
  %P.1.i.3 = phi i16 [ %P.1.i.4185, %__non_const_wrapper__.33.exit ], [ %P.1.i.2, %for.body73.i.preheader ]
  %m.040.i = phi i32 [ %.mul.x.add38.i, %__non_const_wrapper__.33.exit ], [ 1, %for.body73.i.preheader ]
  switch i32 %m.040.i, label %csroa.if.end34.i409 [
    i32 1, label %__non_const_wrapper__.26.exit
    i32 2, label %csroa.if.end9.i419
    i32 3, label %csroa.if.end14.i417
    i32 4, label %csroa.if.end19.i415
    i32 5, label %csroa.if.end24.i413
    i32 6, label %csroa.if.end29.i411
  ]

csroa.if.end34.i409:                              ; preds = %for.body73.i
  br label %csroa.if.end29.i411

csroa.if.end29.i411:                              ; preds = %for.body73.i, %csroa.if.end34.i409
  %.phi30.i410 = phi i16 [ %K.7.i.3, %csroa.if.end34.i409 ], [ %K.6.i.3, %for.body73.i ]
  br label %csroa.if.end24.i413

csroa.if.end24.i413:                              ; preds = %for.body73.i, %csroa.if.end29.i411
  %.phi25.i412 = phi i16 [ %.phi30.i410, %csroa.if.end29.i411 ], [ %K.5.i.3, %for.body73.i ]
  br label %csroa.if.end19.i415

csroa.if.end19.i415:                              ; preds = %for.body73.i, %csroa.if.end24.i413
  %.phi20.i414 = phi i16 [ %.phi25.i412, %csroa.if.end24.i413 ], [ %K.4.i.3, %for.body73.i ]
  br label %csroa.if.end14.i417

csroa.if.end14.i417:                              ; preds = %for.body73.i, %csroa.if.end19.i415
  %.phi15.i416 = phi i16 [ %.phi20.i414, %csroa.if.end19.i415 ], [ %K.3.i.3, %for.body73.i ]
  br label %csroa.if.end9.i419

csroa.if.end9.i419:                               ; preds = %for.body73.i, %csroa.if.end14.i417
  %.phi10.i418 = phi i16 [ %.phi15.i416, %csroa.if.end14.i417 ], [ %K.2.i.3, %for.body73.i ]
  br label %__non_const_wrapper__.26.exit

__non_const_wrapper__.26.exit:                    ; preds = %for.body73.i, %csroa.if.end9.i419
  %.phi5.i420 = phi i16 [ %.phi10.i418, %csroa.if.end9.i419 ], [ %K.1.i.3, %for.body73.i ]
  switch i32 %r.addr.1.phi42.i, label %__non_const_wrapper__.27.exit [
    i32 0, label %csroa.if.then.i424
    i32 1, label %__non_const_wrapper__.27.exit.sink.split
    i32 2, label %csroa.if.then7.i430
    i32 3, label %csroa.if.then12.i433
    i32 4, label %csroa.if.then17.i436
    i32 5, label %csroa.if.then22.i439
    i32 6, label %csroa.if.then27.i442
    i32 7, label %csroa.if.then32.i445
  ]

csroa.if.then.i424:                               ; preds = %__non_const_wrapper__.26.exit
  br label %__non_const_wrapper__.27.exit.sink.split

csroa.if.then7.i430:                              ; preds = %__non_const_wrapper__.26.exit
  br label %__non_const_wrapper__.27.exit.sink.split

csroa.if.then12.i433:                             ; preds = %__non_const_wrapper__.26.exit
  br label %__non_const_wrapper__.27.exit.sink.split

csroa.if.then17.i436:                             ; preds = %__non_const_wrapper__.26.exit
  br label %__non_const_wrapper__.27.exit.sink.split

csroa.if.then22.i439:                             ; preds = %__non_const_wrapper__.26.exit
  br label %__non_const_wrapper__.27.exit.sink.split

csroa.if.then27.i442:                             ; preds = %__non_const_wrapper__.26.exit
  br label %__non_const_wrapper__.27.exit.sink.split

csroa.if.then32.i445:                             ; preds = %__non_const_wrapper__.26.exit
  br label %__non_const_wrapper__.27.exit.sink.split

__non_const_wrapper__.27.exit.sink.split:         ; preds = %__non_const_wrapper__.26.exit, %csroa.if.then.i424, %csroa.if.then7.i430, %csroa.if.then17.i436, %csroa.if.then27.i442, %csroa.if.then32.i445, %csroa.if.then22.i439, %csroa.if.then12.i433
  %LARc.1.sink5 = phi i16* [ %LARc.3, %csroa.if.then12.i433 ], [ %LARc.5, %csroa.if.then22.i439 ], [ %LARc.7, %csroa.if.then32.i445 ], [ %LARc.6, %csroa.if.then27.i442 ], [ %LARc.4, %csroa.if.then17.i436 ], [ %LARc.2, %csroa.if.then7.i430 ], [ %LARc.0, %csroa.if.then.i424 ], [ %LARc.1, %__non_const_wrapper__.26.exit ]
  %13 = load i16, i16* %LARc.1.sink5, align 2
  br label %__non_const_wrapper__.27.exit

__non_const_wrapper__.27.exit:                    ; preds = %__non_const_wrapper__.27.exit.sink.split, %__non_const_wrapper__.26.exit
  %.phi.i461 = phi i16 [ undef, %__non_const_wrapper__.26.exit ], [ %13, %__non_const_wrapper__.27.exit.sink.split ]
  %call75.c.i.c = tail call i16 @gsm_mult_r.v0.C.c.c(i16 %.phi5.i420, i16 %.phi.i461)
  %.mul.x.add38.i = add nuw nsw i32 %m.040.i, 1
  switch i32 %m.040.i, label %__non_const_wrapper__.28.exit [
    i32 1, label %__non_const_wrapper__.28.exit.thread
    i32 2, label %__non_const_wrapper__.28.exit.thread116
    i32 3, label %__non_const_wrapper__.28.exit.thread119
    i32 4, label %__non_const_wrapper__.28.exit.thread122
    i32 5, label %__non_const_wrapper__.28.exit.thread125
    i32 6, label %__non_const_wrapper__.28.exit.thread128
  ]

__non_const_wrapper__.28.exit.thread128:          ; preds = %__non_const_wrapper__.27.exit
  %call77.c.i.c129 = tail call i16 @gsm_add.v0.C.c.c(i16 %P.7.i.3, i16 %call75.c.i.c)
  br label %__non_const_wrapper__.30.exit

__non_const_wrapper__.28.exit.thread125:          ; preds = %__non_const_wrapper__.27.exit
  %call77.c.i.c126 = tail call i16 @gsm_add.v0.C.c.c(i16 %P.6.i.3, i16 %call75.c.i.c)
  br label %__non_const_wrapper__.30.exit

__non_const_wrapper__.28.exit.thread122:          ; preds = %__non_const_wrapper__.27.exit
  %call77.c.i.c123 = tail call i16 @gsm_add.v0.C.c.c(i16 %P.5.i.3, i16 %call75.c.i.c)
  br label %__non_const_wrapper__.30.exit

__non_const_wrapper__.28.exit.thread119:          ; preds = %__non_const_wrapper__.27.exit
  %call77.c.i.c120 = tail call i16 @gsm_add.v0.C.c.c(i16 %P.4.i.3, i16 %call75.c.i.c)
  br label %__non_const_wrapper__.30.exit

__non_const_wrapper__.28.exit.thread116:          ; preds = %__non_const_wrapper__.27.exit
  %call77.c.i.c117 = tail call i16 @gsm_add.v0.C.c.c(i16 %P.3.i.3, i16 %call75.c.i.c)
  br label %__non_const_wrapper__.30.exit

__non_const_wrapper__.28.exit.thread:             ; preds = %__non_const_wrapper__.27.exit
  %call77.c.i.c114 = tail call i16 @gsm_add.v0.C.c.c(i16 %P.2.i.3, i16 %call75.c.i.c)
  br label %__non_const_wrapper__.30.exit

__non_const_wrapper__.28.exit:                    ; preds = %__non_const_wrapper__.27.exit
  %call77.c.i.c = tail call i16 @gsm_add.v0.C.c.c(i16 %P.8.i.3, i16 %call75.c.i.c)
  switch i32 %m.040.i, label %__non_const_wrapper__.29.exit [
    i32 7, label %__non_const_wrapper__.30.exit
    i32 8, label %csroa.if.then30.i525
  ]

csroa.if.then30.i525:                             ; preds = %__non_const_wrapper__.28.exit
  br label %__non_const_wrapper__.30.exit

__non_const_wrapper__.29.exit:                    ; preds = %__non_const_wrapper__.28.exit
  br label %__non_const_wrapper__.30.exit

__non_const_wrapper__.30.exit:                    ; preds = %__non_const_wrapper__.28.exit.thread116, %__non_const_wrapper__.28.exit.thread122, %__non_const_wrapper__.28.exit.thread128, %__non_const_wrapper__.29.exit, %__non_const_wrapper__.28.exit, %csroa.if.then30.i525, %__non_const_wrapper__.28.exit.thread125, %__non_const_wrapper__.28.exit.thread119, %__non_const_wrapper__.28.exit.thread
  %P.1.i.4185 = phi i16 [ %call77.c.i.c114, %__non_const_wrapper__.28.exit.thread ], [ %P.1.i.3, %__non_const_wrapper__.28.exit.thread119 ], [ %P.1.i.3, %__non_const_wrapper__.28.exit.thread125 ], [ %P.1.i.3, %csroa.if.then30.i525 ], [ %P.1.i.3, %__non_const_wrapper__.28.exit ], [ %P.1.i.3, %__non_const_wrapper__.29.exit ], [ %P.1.i.3, %__non_const_wrapper__.28.exit.thread128 ], [ %P.1.i.3, %__non_const_wrapper__.28.exit.thread122 ], [ %P.1.i.3, %__non_const_wrapper__.28.exit.thread116 ]
  %P.2.i.4178 = phi i16 [ %P.2.i.3, %__non_const_wrapper__.28.exit.thread ], [ %P.2.i.3, %__non_const_wrapper__.28.exit.thread119 ], [ %P.2.i.3, %__non_const_wrapper__.28.exit.thread125 ], [ %P.2.i.3, %csroa.if.then30.i525 ], [ %P.2.i.3, %__non_const_wrapper__.28.exit ], [ %P.2.i.3, %__non_const_wrapper__.29.exit ], [ %P.2.i.3, %__non_const_wrapper__.28.exit.thread128 ], [ %P.2.i.3, %__non_const_wrapper__.28.exit.thread122 ], [ %call77.c.i.c117, %__non_const_wrapper__.28.exit.thread116 ]
  %P.3.i.4171 = phi i16 [ %P.3.i.3, %__non_const_wrapper__.28.exit.thread ], [ %call77.c.i.c120, %__non_const_wrapper__.28.exit.thread119 ], [ %P.3.i.3, %__non_const_wrapper__.28.exit.thread125 ], [ %P.3.i.3, %csroa.if.then30.i525 ], [ %P.3.i.3, %__non_const_wrapper__.28.exit ], [ %P.3.i.3, %__non_const_wrapper__.29.exit ], [ %P.3.i.3, %__non_const_wrapper__.28.exit.thread128 ], [ %P.3.i.3, %__non_const_wrapper__.28.exit.thread122 ], [ %P.3.i.3, %__non_const_wrapper__.28.exit.thread116 ]
  %P.4.i.4164 = phi i16 [ %P.4.i.3, %__non_const_wrapper__.28.exit.thread ], [ %P.4.i.3, %__non_const_wrapper__.28.exit.thread119 ], [ %P.4.i.3, %__non_const_wrapper__.28.exit.thread125 ], [ %P.4.i.3, %csroa.if.then30.i525 ], [ %P.4.i.3, %__non_const_wrapper__.28.exit ], [ %P.4.i.3, %__non_const_wrapper__.29.exit ], [ %P.4.i.3, %__non_const_wrapper__.28.exit.thread128 ], [ %call77.c.i.c123, %__non_const_wrapper__.28.exit.thread122 ], [ %P.4.i.3, %__non_const_wrapper__.28.exit.thread116 ]
  %P.5.i.4157 = phi i16 [ %P.5.i.3, %__non_const_wrapper__.28.exit.thread ], [ %P.5.i.3, %__non_const_wrapper__.28.exit.thread119 ], [ %call77.c.i.c126, %__non_const_wrapper__.28.exit.thread125 ], [ %P.5.i.3, %csroa.if.then30.i525 ], [ %P.5.i.3, %__non_const_wrapper__.28.exit ], [ %P.5.i.3, %__non_const_wrapper__.29.exit ], [ %P.5.i.3, %__non_const_wrapper__.28.exit.thread128 ], [ %P.5.i.3, %__non_const_wrapper__.28.exit.thread122 ], [ %P.5.i.3, %__non_const_wrapper__.28.exit.thread116 ]
  %P.6.i.4150 = phi i16 [ %P.6.i.3, %__non_const_wrapper__.28.exit.thread ], [ %P.6.i.3, %__non_const_wrapper__.28.exit.thread119 ], [ %P.6.i.3, %__non_const_wrapper__.28.exit.thread125 ], [ %P.6.i.3, %csroa.if.then30.i525 ], [ %P.6.i.3, %__non_const_wrapper__.28.exit ], [ %P.6.i.3, %__non_const_wrapper__.29.exit ], [ %call77.c.i.c129, %__non_const_wrapper__.28.exit.thread128 ], [ %P.6.i.3, %__non_const_wrapper__.28.exit.thread122 ], [ %P.6.i.3, %__non_const_wrapper__.28.exit.thread116 ]
  %P.7.i.4143 = phi i16 [ %P.7.i.3, %__non_const_wrapper__.28.exit.thread ], [ %P.7.i.3, %__non_const_wrapper__.28.exit.thread119 ], [ %P.7.i.3, %__non_const_wrapper__.28.exit.thread125 ], [ %P.7.i.3, %csroa.if.then30.i525 ], [ %call77.c.i.c, %__non_const_wrapper__.28.exit ], [ %P.7.i.3, %__non_const_wrapper__.29.exit ], [ %P.7.i.3, %__non_const_wrapper__.28.exit.thread128 ], [ %P.7.i.3, %__non_const_wrapper__.28.exit.thread122 ], [ %P.7.i.3, %__non_const_wrapper__.28.exit.thread116 ]
  %P.8.i.4137 = phi i16 [ %P.8.i.3, %__non_const_wrapper__.28.exit.thread ], [ %P.8.i.3, %__non_const_wrapper__.28.exit.thread119 ], [ %P.8.i.3, %__non_const_wrapper__.28.exit.thread125 ], [ %call77.c.i.c, %csroa.if.then30.i525 ], [ %P.8.i.3, %__non_const_wrapper__.28.exit ], [ %P.8.i.3, %__non_const_wrapper__.29.exit ], [ %P.8.i.3, %__non_const_wrapper__.28.exit.thread128 ], [ %P.8.i.3, %__non_const_wrapper__.28.exit.thread122 ], [ %P.8.i.3, %__non_const_wrapper__.28.exit.thread116 ]
  %.phi10.i570 = phi i16 [ %P.2.i.3, %__non_const_wrapper__.28.exit.thread ], [ %P.4.i.3, %__non_const_wrapper__.28.exit.thread119 ], [ %P.6.i.3, %__non_const_wrapper__.28.exit.thread125 ], [ %call77.c.i.c, %csroa.if.then30.i525 ], [ %P.8.i.3, %__non_const_wrapper__.28.exit ], [ %P.8.i.3, %__non_const_wrapper__.29.exit ], [ %P.7.i.3, %__non_const_wrapper__.28.exit.thread128 ], [ %P.5.i.3, %__non_const_wrapper__.28.exit.thread122 ], [ %P.3.i.3, %__non_const_wrapper__.28.exit.thread116 ]
  switch i32 %r.addr.1.phi42.i, label %__non_const_wrapper__.31.exit [
    i32 0, label %csroa.if.then.i576
    i32 1, label %__non_const_wrapper__.31.exit.sink.split
    i32 2, label %csroa.if.then7.i582
    i32 3, label %csroa.if.then12.i585
    i32 4, label %csroa.if.then17.i588
    i32 5, label %csroa.if.then22.i591
    i32 6, label %csroa.if.then27.i594
    i32 7, label %csroa.if.then32.i597
  ]

csroa.if.then.i576:                               ; preds = %__non_const_wrapper__.30.exit
  br label %__non_const_wrapper__.31.exit.sink.split

csroa.if.then7.i582:                              ; preds = %__non_const_wrapper__.30.exit
  br label %__non_const_wrapper__.31.exit.sink.split

csroa.if.then12.i585:                             ; preds = %__non_const_wrapper__.30.exit
  br label %__non_const_wrapper__.31.exit.sink.split

csroa.if.then17.i588:                             ; preds = %__non_const_wrapper__.30.exit
  br label %__non_const_wrapper__.31.exit.sink.split

csroa.if.then22.i591:                             ; preds = %__non_const_wrapper__.30.exit
  br label %__non_const_wrapper__.31.exit.sink.split

csroa.if.then27.i594:                             ; preds = %__non_const_wrapper__.30.exit
  br label %__non_const_wrapper__.31.exit.sink.split

csroa.if.then32.i597:                             ; preds = %__non_const_wrapper__.30.exit
  br label %__non_const_wrapper__.31.exit.sink.split

__non_const_wrapper__.31.exit.sink.split:         ; preds = %__non_const_wrapper__.30.exit, %csroa.if.then.i576, %csroa.if.then7.i582, %csroa.if.then17.i588, %csroa.if.then27.i594, %csroa.if.then32.i597, %csroa.if.then22.i591, %csroa.if.then12.i585
  %LARc.1.sink6 = phi i16* [ %LARc.3, %csroa.if.then12.i585 ], [ %LARc.5, %csroa.if.then22.i591 ], [ %LARc.7, %csroa.if.then32.i597 ], [ %LARc.6, %csroa.if.then27.i594 ], [ %LARc.4, %csroa.if.then17.i588 ], [ %LARc.2, %csroa.if.then7.i582 ], [ %LARc.0, %csroa.if.then.i576 ], [ %LARc.1, %__non_const_wrapper__.30.exit ]
  %14 = load i16, i16* %LARc.1.sink6, align 2
  br label %__non_const_wrapper__.31.exit

__non_const_wrapper__.31.exit:                    ; preds = %__non_const_wrapper__.31.exit.sink.split, %__non_const_wrapper__.30.exit
  %.phi.i613 = phi i16 [ undef, %__non_const_wrapper__.30.exit ], [ %14, %__non_const_wrapper__.31.exit.sink.split ]
  %call81.c.i.c = tail call i16 @gsm_mult_r.v0.C.c.c(i16 %.phi10.i570, i16 %.phi.i613)
  switch i32 %m.040.i, label %__non_const_wrapper__.33.exit [
    i32 1, label %__non_const_wrapper__.32.exit.thread
    i32 2, label %__non_const_wrapper__.32.exit.thread195
    i32 3, label %__non_const_wrapper__.32.exit.thread198
    i32 4, label %__non_const_wrapper__.32.exit.thread201
    i32 5, label %__non_const_wrapper__.32.exit.thread204
    i32 6, label %__non_const_wrapper__.32.exit.thread207
    i32 7, label %__non_const_wrapper__.32.exit.thread210
  ]

__non_const_wrapper__.32.exit.thread210:          ; preds = %__non_const_wrapper__.31.exit
  %call83.c.i.c211 = tail call i16 @gsm_add.v0.C.c.c(i16 %K.7.i.3, i16 %call81.c.i.c)
  br label %__non_const_wrapper__.33.exit

__non_const_wrapper__.32.exit.thread207:          ; preds = %__non_const_wrapper__.31.exit
  %call83.c.i.c208 = tail call i16 @gsm_add.v0.C.c.c(i16 %K.6.i.3, i16 %call81.c.i.c)
  br label %__non_const_wrapper__.33.exit

__non_const_wrapper__.32.exit.thread204:          ; preds = %__non_const_wrapper__.31.exit
  %call83.c.i.c205 = tail call i16 @gsm_add.v0.C.c.c(i16 %K.5.i.3, i16 %call81.c.i.c)
  br label %__non_const_wrapper__.33.exit

__non_const_wrapper__.32.exit.thread201:          ; preds = %__non_const_wrapper__.31.exit
  %call83.c.i.c202 = tail call i16 @gsm_add.v0.C.c.c(i16 %K.4.i.3, i16 %call81.c.i.c)
  br label %__non_const_wrapper__.33.exit

__non_const_wrapper__.32.exit.thread198:          ; preds = %__non_const_wrapper__.31.exit
  %call83.c.i.c199 = tail call i16 @gsm_add.v0.C.c.c(i16 %K.3.i.3, i16 %call81.c.i.c)
  br label %__non_const_wrapper__.33.exit

__non_const_wrapper__.32.exit.thread195:          ; preds = %__non_const_wrapper__.31.exit
  %call83.c.i.c196 = tail call i16 @gsm_add.v0.C.c.c(i16 %K.2.i.3, i16 %call81.c.i.c)
  br label %__non_const_wrapper__.33.exit

__non_const_wrapper__.32.exit.thread:             ; preds = %__non_const_wrapper__.31.exit
  %call83.c.i.c193 = tail call i16 @gsm_add.v0.C.c.c(i16 %K.1.i.3, i16 %call81.c.i.c)
  br label %__non_const_wrapper__.33.exit

__non_const_wrapper__.33.exit:                    ; preds = %__non_const_wrapper__.31.exit, %__non_const_wrapper__.32.exit.thread195, %__non_const_wrapper__.32.exit.thread201, %__non_const_wrapper__.32.exit.thread207, %__non_const_wrapper__.32.exit.thread210, %__non_const_wrapper__.32.exit.thread204, %__non_const_wrapper__.32.exit.thread198, %__non_const_wrapper__.32.exit.thread
  %K.7.i.4 = phi i16 [ %call83.c.i.c211, %__non_const_wrapper__.32.exit.thread210 ], [ %K.7.i.3, %__non_const_wrapper__.32.exit.thread207 ], [ %K.7.i.3, %__non_const_wrapper__.32.exit.thread204 ], [ %K.7.i.3, %__non_const_wrapper__.32.exit.thread201 ], [ %K.7.i.3, %__non_const_wrapper__.32.exit.thread198 ], [ %K.7.i.3, %__non_const_wrapper__.32.exit.thread195 ], [ %K.7.i.3, %__non_const_wrapper__.32.exit.thread ], [ %K.7.i.3, %__non_const_wrapper__.31.exit ]
  %K.6.i.4 = phi i16 [ %K.6.i.3, %__non_const_wrapper__.32.exit.thread210 ], [ %call83.c.i.c208, %__non_const_wrapper__.32.exit.thread207 ], [ %K.6.i.3, %__non_const_wrapper__.32.exit.thread204 ], [ %K.6.i.3, %__non_const_wrapper__.32.exit.thread201 ], [ %K.6.i.3, %__non_const_wrapper__.32.exit.thread198 ], [ %K.6.i.3, %__non_const_wrapper__.32.exit.thread195 ], [ %K.6.i.3, %__non_const_wrapper__.32.exit.thread ], [ %K.6.i.3, %__non_const_wrapper__.31.exit ]
  %K.5.i.4 = phi i16 [ %K.5.i.3, %__non_const_wrapper__.32.exit.thread210 ], [ %K.5.i.3, %__non_const_wrapper__.32.exit.thread207 ], [ %call83.c.i.c205, %__non_const_wrapper__.32.exit.thread204 ], [ %K.5.i.3, %__non_const_wrapper__.32.exit.thread201 ], [ %K.5.i.3, %__non_const_wrapper__.32.exit.thread198 ], [ %K.5.i.3, %__non_const_wrapper__.32.exit.thread195 ], [ %K.5.i.3, %__non_const_wrapper__.32.exit.thread ], [ %K.5.i.3, %__non_const_wrapper__.31.exit ]
  %K.4.i.4 = phi i16 [ %K.4.i.3, %__non_const_wrapper__.32.exit.thread210 ], [ %K.4.i.3, %__non_const_wrapper__.32.exit.thread207 ], [ %K.4.i.3, %__non_const_wrapper__.32.exit.thread204 ], [ %call83.c.i.c202, %__non_const_wrapper__.32.exit.thread201 ], [ %K.4.i.3, %__non_const_wrapper__.32.exit.thread198 ], [ %K.4.i.3, %__non_const_wrapper__.32.exit.thread195 ], [ %K.4.i.3, %__non_const_wrapper__.32.exit.thread ], [ %K.4.i.3, %__non_const_wrapper__.31.exit ]
  %K.3.i.4 = phi i16 [ %K.3.i.3, %__non_const_wrapper__.32.exit.thread210 ], [ %K.3.i.3, %__non_const_wrapper__.32.exit.thread207 ], [ %K.3.i.3, %__non_const_wrapper__.32.exit.thread204 ], [ %K.3.i.3, %__non_const_wrapper__.32.exit.thread201 ], [ %call83.c.i.c199, %__non_const_wrapper__.32.exit.thread198 ], [ %K.3.i.3, %__non_const_wrapper__.32.exit.thread195 ], [ %K.3.i.3, %__non_const_wrapper__.32.exit.thread ], [ %K.3.i.3, %__non_const_wrapper__.31.exit ]
  %K.2.i.4 = phi i16 [ %K.2.i.3, %__non_const_wrapper__.32.exit.thread210 ], [ %K.2.i.3, %__non_const_wrapper__.32.exit.thread207 ], [ %K.2.i.3, %__non_const_wrapper__.32.exit.thread204 ], [ %K.2.i.3, %__non_const_wrapper__.32.exit.thread201 ], [ %K.2.i.3, %__non_const_wrapper__.32.exit.thread198 ], [ %call83.c.i.c196, %__non_const_wrapper__.32.exit.thread195 ], [ %K.2.i.3, %__non_const_wrapper__.32.exit.thread ], [ %K.2.i.3, %__non_const_wrapper__.31.exit ]
  %K.1.i.4 = phi i16 [ %K.1.i.3, %__non_const_wrapper__.32.exit.thread210 ], [ %K.1.i.3, %__non_const_wrapper__.32.exit.thread207 ], [ %K.1.i.3, %__non_const_wrapper__.32.exit.thread204 ], [ %K.1.i.3, %__non_const_wrapper__.32.exit.thread201 ], [ %K.1.i.3, %__non_const_wrapper__.32.exit.thread198 ], [ %K.1.i.3, %__non_const_wrapper__.32.exit.thread195 ], [ %call83.c.i.c193, %__non_const_wrapper__.32.exit.thread ], [ %K.1.i.3, %__non_const_wrapper__.31.exit ]
  %exitcond = icmp eq i32 %.mul.x.add38.i, %indvars.iv
  br i1 %exitcond, label %for.inc88.i.loopexit, label %for.body73.i

for.inc88.i.loopexit:                             ; preds = %__non_const_wrapper__.33.exit
  br label %for.inc88.i

for.inc88.i:                                      ; preds = %for.inc88.i.loopexit, %__non_const_wrapper__.25.exit
  %K.7.i.5 = phi i16 [ %K.7.i.2, %__non_const_wrapper__.25.exit ], [ %K.7.i.4, %for.inc88.i.loopexit ]
  %K.6.i.5 = phi i16 [ %K.6.i.2, %__non_const_wrapper__.25.exit ], [ %K.6.i.4, %for.inc88.i.loopexit ]
  %K.5.i.5 = phi i16 [ %K.5.i.2, %__non_const_wrapper__.25.exit ], [ %K.5.i.4, %for.inc88.i.loopexit ]
  %K.4.i.5 = phi i16 [ %K.4.i.2, %__non_const_wrapper__.25.exit ], [ %K.4.i.4, %for.inc88.i.loopexit ]
  %K.3.i.5 = phi i16 [ %K.3.i.2, %__non_const_wrapper__.25.exit ], [ %K.3.i.4, %for.inc88.i.loopexit ]
  %K.2.i.5 = phi i16 [ %K.2.i.2, %__non_const_wrapper__.25.exit ], [ %K.2.i.4, %for.inc88.i.loopexit ]
  %K.1.i.5 = phi i16 [ %K.1.i.2, %__non_const_wrapper__.25.exit ], [ %K.1.i.4, %for.inc88.i.loopexit ]
  %P.8.i.5 = phi i16 [ %P.8.i.2, %__non_const_wrapper__.25.exit ], [ %P.8.i.4137, %for.inc88.i.loopexit ]
  %P.7.i.5 = phi i16 [ %P.7.i.2, %__non_const_wrapper__.25.exit ], [ %P.7.i.4143, %for.inc88.i.loopexit ]
  %P.6.i.5 = phi i16 [ %P.6.i.2, %__non_const_wrapper__.25.exit ], [ %P.6.i.4150, %for.inc88.i.loopexit ]
  %P.5.i.5 = phi i16 [ %P.5.i.2, %__non_const_wrapper__.25.exit ], [ %P.5.i.4157, %for.inc88.i.loopexit ]
  %P.4.i.5 = phi i16 [ %P.4.i.2, %__non_const_wrapper__.25.exit ], [ %P.4.i.4164, %for.inc88.i.loopexit ]
  %P.3.i.5 = phi i16 [ %P.3.i.2, %__non_const_wrapper__.25.exit ], [ %P.3.i.4171, %for.inc88.i.loopexit ]
  %P.2.i.5 = phi i16 [ %P.2.i.2, %__non_const_wrapper__.25.exit ], [ %P.2.i.4178, %for.inc88.i.loopexit ]
  %P.1.i.5 = phi i16 [ %P.1.i.2, %__non_const_wrapper__.25.exit ], [ %P.1.i.4185, %for.inc88.i.loopexit ]
  %inc89.i = add nuw nsw i32 %n.041.i, 1
  %incdec.ptr90.add.i = add nuw nsw i32 %r.addr.1.phi42.i, 1
  %cmp30.i = icmp slt i32 %inc89.i, 9
  %indvars.iv.next = add nsw i32 %indvars.iv, -1
  br i1 %cmp30.i, label %for.body32.i, label %for.body.i690.preheader.loopexit337

for.body.i690.preheader.loopexit:                 ; preds = %__non_const_wrapper__.14.exit
  br label %for.body.i690.preheader

for.body.i690.preheader.loopexit336:              ; preds = %__non_const_wrapper__.21.exit
  br label %for.body.i690.preheader

for.body.i690.preheader.loopexit337:              ; preds = %for.inc88.i, %if.end59.i
  br label %for.body.i690.preheader

for.body.i690.preheader:                          ; preds = %for.body.i690.preheader.loopexit337, %for.body.i690.preheader.loopexit336, %for.body.i690.preheader.loopexit
  br label %for.body.i690

for.body.i690:                                    ; preds = %for.body.i690.preheader, %__non_const_wrapper__.13.exit
  %r.addr.0.phi5.i = phi i32 [ %incdec.ptr.add.i696, %__non_const_wrapper__.13.exit ], [ 0, %for.body.i690.preheader ]
  switch i32 %r.addr.0.phi5.i, label %if.else.i [
    i32 0, label %csroa.if.then.i699
    i32 1, label %__non_const_wrapper__.exit
    i32 2, label %csroa.if.then7.i705
    i32 3, label %csroa.if.then12.i708
    i32 4, label %csroa.if.then17.i711
    i32 5, label %csroa.if.then22.i714
    i32 6, label %csroa.if.then27.i717
    i32 7, label %csroa.if.then32.i720
  ]

csroa.if.then.i699:                               ; preds = %for.body.i690
  br label %__non_const_wrapper__.exit

csroa.if.then7.i705:                              ; preds = %for.body.i690
  br label %__non_const_wrapper__.exit

csroa.if.then12.i708:                             ; preds = %for.body.i690
  br label %__non_const_wrapper__.exit

csroa.if.then17.i711:                             ; preds = %for.body.i690
  br label %__non_const_wrapper__.exit

csroa.if.then22.i714:                             ; preds = %for.body.i690
  br label %__non_const_wrapper__.exit

csroa.if.then27.i717:                             ; preds = %for.body.i690
  br label %__non_const_wrapper__.exit

csroa.if.then32.i720:                             ; preds = %for.body.i690
  br label %__non_const_wrapper__.exit

__non_const_wrapper__.exit:                       ; preds = %csroa.if.then12.i708, %csroa.if.then22.i714, %csroa.if.then32.i720, %csroa.if.then27.i717, %csroa.if.then17.i711, %csroa.if.then7.i705, %csroa.if.then.i699, %for.body.i690
  %LARc.1.sink7 = phi i16* [ %LARc.3, %csroa.if.then12.i708 ], [ %LARc.5, %csroa.if.then22.i714 ], [ %LARc.7, %csroa.if.then32.i720 ], [ %LARc.6, %csroa.if.then27.i717 ], [ %LARc.4, %csroa.if.then17.i711 ], [ %LARc.2, %csroa.if.then7.i705 ], [ %LARc.0, %csroa.if.then.i699 ], [ %LARc.1, %for.body.i690 ]
  %15 = load i16, i16* %LARc.1.sink7, align 2
  %cmp.i737 = icmp slt i16 %15, 0
  br i1 %cmp.i737, label %cond.true.i741, label %gsm_abs.v0.C.c.exit743

cond.true.i741:                                   ; preds = %__non_const_wrapper__.exit
  %cmp3.i738 = icmp eq i16 %15, -32768
  %sub.i739 = sub i16 0, %15
  br i1 %cmp3.i738, label %if.else.i, label %gsm_abs.v0.C.c.exit743

gsm_abs.v0.C.c.exit743:                           ; preds = %cond.true.i741, %__non_const_wrapper__.exit
  %cond10.i742 = phi i16 [ %sub.i739, %cond.true.i741 ], [ %15, %__non_const_wrapper__.exit ]
  %cmp1.i689 = icmp slt i16 %cond10.i742, 22118
  br i1 %cmp1.i689, label %if.then.i692, label %if.else.i

if.then.i692:                                     ; preds = %gsm_abs.v0.C.c.exit743
  %shr3.i691 = ashr i16 %cond10.i742, 1
  br label %if.end17.i

if.else.i:                                        ; preds = %cond.true.i741, %for.body.i690, %gsm_abs.v0.C.c.exit743
  %cond10.i742215 = phi i16 [ %cond10.i742, %gsm_abs.v0.C.c.exit743 ], [ undef, %for.body.i690 ], [ 32767, %cond.true.i741 ]
  %cmp6.i = icmp slt i16 %cond10.i742215, 31130
  %sub.i693 = add i16 %cond10.i742215, -11059
  %sub13.i = shl i16 %cond10.i742215, 2
  %shl.i694 = add i16 %sub13.i, 26624
  %temp.0.i = select i1 %cmp6.i, i16 %sub.i693, i16 %shl.i694
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.else.i, %if.then.i692
  %temp.1.i = phi i16 [ %shr3.i691, %if.then.i692 ], [ %temp.0.i, %if.else.i ]
  switch i32 %r.addr.0.phi5.i, label %__non_const_wrapper__.12.exit [
    i32 0, label %csroa.if.then.i745
    i32 1, label %__non_const_wrapper__.12.exit.sink.split
    i32 2, label %csroa.if.then7.i751
    i32 3, label %csroa.if.then12.i754
    i32 4, label %csroa.if.then17.i757
    i32 5, label %csroa.if.then22.i760
    i32 6, label %csroa.if.then27.i763
    i32 7, label %csroa.if.then32.i766
  ]

csroa.if.then.i745:                               ; preds = %if.end17.i
  br label %__non_const_wrapper__.12.exit.sink.split

csroa.if.then7.i751:                              ; preds = %if.end17.i
  br label %__non_const_wrapper__.12.exit.sink.split

csroa.if.then12.i754:                             ; preds = %if.end17.i
  br label %__non_const_wrapper__.12.exit.sink.split

csroa.if.then17.i757:                             ; preds = %if.end17.i
  br label %__non_const_wrapper__.12.exit.sink.split

csroa.if.then22.i760:                             ; preds = %if.end17.i
  br label %__non_const_wrapper__.12.exit.sink.split

csroa.if.then27.i763:                             ; preds = %if.end17.i
  br label %__non_const_wrapper__.12.exit.sink.split

csroa.if.then32.i766:                             ; preds = %if.end17.i
  br label %__non_const_wrapper__.12.exit.sink.split

__non_const_wrapper__.12.exit.sink.split:         ; preds = %if.end17.i, %csroa.if.then.i745, %csroa.if.then7.i751, %csroa.if.then17.i757, %csroa.if.then27.i763, %csroa.if.then32.i766, %csroa.if.then22.i760, %csroa.if.then12.i754
  %LARc.1.sink8 = phi i16* [ %LARc.3, %csroa.if.then12.i754 ], [ %LARc.5, %csroa.if.then22.i760 ], [ %LARc.7, %csroa.if.then32.i766 ], [ %LARc.6, %csroa.if.then27.i763 ], [ %LARc.4, %csroa.if.then17.i757 ], [ %LARc.2, %csroa.if.then7.i751 ], [ %LARc.0, %csroa.if.then.i745 ], [ %LARc.1, %if.end17.i ]
  %16 = load i16, i16* %LARc.1.sink8, align 2
  br label %__non_const_wrapper__.12.exit

__non_const_wrapper__.12.exit:                    ; preds = %__non_const_wrapper__.12.exit.sink.split, %if.end17.i
  %.phi.i782 = phi i16 [ undef, %if.end17.i ], [ %16, %__non_const_wrapper__.12.exit.sink.split ]
  %cmp19.i = icmp slt i16 %.phi.i782, 0
  %sub22.i = sub i16 0, %temp.1.i
  %cond.i695 = select i1 %cmp19.i, i16 %sub22.i, i16 %temp.1.i
  switch i32 %r.addr.0.phi5.i, label %__non_const_wrapper__.13.exit [
    i32 0, label %csroa.if.then.i784
    i32 1, label %__non_const_wrapper__.13.exit.sink.split
    i32 2, label %csroa.if.then6.i790
    i32 3, label %csroa.if.then10.i793
    i32 4, label %csroa.if.then14.i796
    i32 5, label %csroa.if.then18.i799
    i32 6, label %csroa.if.then22.i802
    i32 7, label %csroa.if.then26.i805
  ]

csroa.if.then.i784:                               ; preds = %__non_const_wrapper__.12.exit
  br label %__non_const_wrapper__.13.exit.sink.split

csroa.if.then6.i790:                              ; preds = %__non_const_wrapper__.12.exit
  br label %__non_const_wrapper__.13.exit.sink.split

csroa.if.then10.i793:                             ; preds = %__non_const_wrapper__.12.exit
  br label %__non_const_wrapper__.13.exit.sink.split

csroa.if.then14.i796:                             ; preds = %__non_const_wrapper__.12.exit
  br label %__non_const_wrapper__.13.exit.sink.split

csroa.if.then18.i799:                             ; preds = %__non_const_wrapper__.12.exit
  br label %__non_const_wrapper__.13.exit.sink.split

csroa.if.then22.i802:                             ; preds = %__non_const_wrapper__.12.exit
  br label %__non_const_wrapper__.13.exit.sink.split

csroa.if.then26.i805:                             ; preds = %__non_const_wrapper__.12.exit
  br label %__non_const_wrapper__.13.exit.sink.split

__non_const_wrapper__.13.exit.sink.split:         ; preds = %__non_const_wrapper__.12.exit, %csroa.if.then.i784, %csroa.if.then6.i790, %csroa.if.then14.i796, %csroa.if.then22.i802, %csroa.if.then26.i805, %csroa.if.then18.i799, %csroa.if.then10.i793
  %LARc.1.sink9 = phi i16* [ %LARc.3, %csroa.if.then10.i793 ], [ %LARc.5, %csroa.if.then18.i799 ], [ %LARc.7, %csroa.if.then26.i805 ], [ %LARc.6, %csroa.if.then22.i802 ], [ %LARc.4, %csroa.if.then14.i796 ], [ %LARc.2, %csroa.if.then6.i790 ], [ %LARc.0, %csroa.if.then.i784 ], [ %LARc.1, %__non_const_wrapper__.12.exit ]
  store i16 %cond.i695, i16* %LARc.1.sink9, align 2
  br label %__non_const_wrapper__.13.exit

__non_const_wrapper__.13.exit:                    ; preds = %__non_const_wrapper__.13.exit.sink.split, %__non_const_wrapper__.12.exit
  %incdec.ptr.add.i696 = add nuw nsw i32 %r.addr.0.phi5.i, 1
  %exitcond.i697 = icmp eq i32 %incdec.ptr.add.i696, 8
  br i1 %exitcond.i697, label %Transformation_to_Log_Area_Ratios.v0.C.c.exit, label %for.body.i690

Transformation_to_Log_Area_Ratios.v0.C.c.exit:    ; preds = %__non_const_wrapper__.13.exit
  %17 = load i16, i16* %LARc.0, align 2
  %call.c.i.c = tail call i16 @gsm_mult.v0.C.c.c(i16 20480, i16 %17)
  %call1.c.i.c = tail call i16 @gsm_add.v0.C.c.c(i16 %call.c.i.c, i16 0)
  %call2.c.i.c = tail call i16 @gsm_add.v0.C.c.c(i16 %call1.c.i.c, i16 256)
  %conv.i814 = sext i16 %call2.c.i.c to i32
  %shr1.i = lshr i32 %conv.i814, 9
  %18 = trunc i32 %shr1.i to i16
  %cmp.i815 = icmp sgt i16 %18, 31
  br i1 %cmp.i815, label %cond.end12.i, label %cond.false.i

cond.false.i:                                     ; preds = %Transformation_to_Log_Area_Ratios.v0.C.c.exit
  %cmp7.i816 = icmp slt i16 %18, -32
  br i1 %cmp7.i816, label %cond.end12.i, label %cond.false10.i

cond.false10.i:                                   ; preds = %cond.false.i
  %sub.i817 = add nuw nsw i32 %shr1.i, 32
  %phitmp.i = trunc i32 %sub.i817 to i16
  br label %cond.end12.i

cond.end12.i:                                     ; preds = %cond.false10.i, %cond.false.i, %Transformation_to_Log_Area_Ratios.v0.C.c.exit
  %cond13.i = phi i16 [ 63, %Transformation_to_Log_Area_Ratios.v0.C.c.exit ], [ %phitmp.i, %cond.false10.i ], [ 0, %cond.false.i ]
  store i16 %cond13.i, i16* %LARc.0, align 2
  %19 = load i16, i16* %LARc.1, align 2
  %call15.c.i.c = tail call i16 @gsm_mult.v0.C.c.c(i16 20480, i16 %19)
  %call16.c.i.c = tail call i16 @gsm_add.v0.C.c.c(i16 %call15.c.i.c, i16 0)
  %call17.c.i.c = tail call i16 @gsm_add.v0.C.c.c(i16 %call16.c.i.c, i16 256)
  %conv18.i = sext i16 %call17.c.i.c to i32
  %shr194.i = lshr i32 %conv18.i, 9
  %20 = trunc i32 %shr194.i to i16
  %cmp22.i = icmp sgt i16 %20, 31
  br i1 %cmp22.i, label %cond.end35.i, label %cond.false25.i

cond.false25.i:                                   ; preds = %cond.end12.i
  %cmp27.i = icmp slt i16 %20, -32
  br i1 %cmp27.i, label %cond.end35.i, label %cond.false30.i

cond.false30.i:                                   ; preds = %cond.false25.i
  %sub32.i = add nuw nsw i32 %shr194.i, 32
  %phitmp33.i = trunc i32 %sub32.i to i16
  br label %cond.end35.i

cond.end35.i:                                     ; preds = %cond.false30.i, %cond.false25.i, %cond.end12.i
  %cond36.i = phi i16 [ 63, %cond.end12.i ], [ %phitmp33.i, %cond.false30.i ], [ 0, %cond.false25.i ]
  store i16 %cond36.i, i16* %LARc.1, align 2
  %21 = load i16, i16* %LARc.2, align 2
  %call39.c.i.c = tail call i16 @gsm_mult.v0.C.c.c(i16 20480, i16 %21)
  %call40.c.i.c = tail call i16 @gsm_add.v0.C.c.c(i16 %call39.c.i.c, i16 2048)
  %call41.c.i.c = tail call i16 @gsm_add.v0.C.c.c(i16 %call40.c.i.c, i16 256)
  %conv42.i = sext i16 %call41.c.i.c to i32
  %shr438.i = lshr i32 %conv42.i, 9
  %22 = trunc i32 %shr438.i to i16
  %cmp46.i = icmp sgt i16 %22, 15
  br i1 %cmp46.i, label %cond.end59.i, label %cond.false49.i

cond.false49.i:                                   ; preds = %cond.end35.i
  %cmp51.i = icmp slt i16 %22, -16
  br i1 %cmp51.i, label %cond.end59.i, label %cond.false54.i

cond.false54.i:                                   ; preds = %cond.false49.i
  %sub56.i = add nuw nsw i32 %shr438.i, 16
  %phitmp35.i = trunc i32 %sub56.i to i16
  br label %cond.end59.i

cond.end59.i:                                     ; preds = %cond.false54.i, %cond.false49.i, %cond.end35.i
  %cond60.i = phi i16 [ 31, %cond.end35.i ], [ %phitmp35.i, %cond.false54.i ], [ 0, %cond.false49.i ]
  store i16 %cond60.i, i16* %LARc.2, align 2
  %23 = load i16, i16* %LARc.3, align 2
  %call63.c.i.c = tail call i16 @gsm_mult.v0.C.c.c(i16 20480, i16 %23)
  %call64.c.i.c = tail call i16 @gsm_add.v0.C.c.c(i16 %call63.c.i.c, i16 -2560)
  %call65.c.i818.c = tail call i16 @gsm_add.v0.C.c.c(i16 %call64.c.i.c, i16 256)
  %conv66.i = sext i16 %call65.c.i818.c to i32
  %shr6712.i = lshr i32 %conv66.i, 9
  %24 = trunc i32 %shr6712.i to i16
  %cmp70.i = icmp sgt i16 %24, 15
  br i1 %cmp70.i, label %cond.end83.i, label %cond.false73.i

cond.false73.i:                                   ; preds = %cond.end59.i
  %cmp75.i = icmp slt i16 %24, -16
  br i1 %cmp75.i, label %cond.end83.i, label %cond.false78.i

cond.false78.i:                                   ; preds = %cond.false73.i
  %sub80.i = add nuw nsw i32 %shr6712.i, 16
  %phitmp37.i = trunc i32 %sub80.i to i16
  br label %cond.end83.i

cond.end83.i:                                     ; preds = %cond.false78.i, %cond.false73.i, %cond.end59.i
  %cond84.i = phi i16 [ 31, %cond.end59.i ], [ %phitmp37.i, %cond.false78.i ], [ 0, %cond.false73.i ]
  store i16 %cond84.i, i16* %LARc.3, align 2
  %25 = load i16, i16* %LARc.4, align 2
  %call87.c.i.c = tail call i16 @gsm_mult.v0.C.c.c(i16 13964, i16 %25)
  %call88.c.i.c = tail call i16 @gsm_add.v0.C.c.c(i16 %call87.c.i.c, i16 94)
  %call89.c.i.c = tail call i16 @gsm_add.v0.C.c.c(i16 %call88.c.i.c, i16 256)
  %conv90.i = sext i16 %call89.c.i.c to i32
  %shr9116.i = lshr i32 %conv90.i, 9
  %26 = trunc i32 %shr9116.i to i16
  %cmp94.i = icmp sgt i16 %26, 7
  br i1 %cmp94.i, label %cond.end107.i, label %cond.false97.i

cond.false97.i:                                   ; preds = %cond.end83.i
  %cmp99.i = icmp slt i16 %26, -8
  br i1 %cmp99.i, label %cond.end107.i, label %cond.false102.i

cond.false102.i:                                  ; preds = %cond.false97.i
  %sub104.i = add nuw nsw i32 %shr9116.i, 8
  %phitmp39.i = trunc i32 %sub104.i to i16
  br label %cond.end107.i

cond.end107.i:                                    ; preds = %cond.false102.i, %cond.false97.i, %cond.end83.i
  %cond108.i = phi i16 [ 15, %cond.end83.i ], [ %phitmp39.i, %cond.false102.i ], [ 0, %cond.false97.i ]
  store i16 %cond108.i, i16* %LARc.4, align 2
  %27 = load i16, i16* %LARc.5, align 2
  %call111.c.i.c = tail call i16 @gsm_mult.v0.C.c.c(i16 15360, i16 %27)
  %call112.c.i.c = tail call i16 @gsm_add.v0.C.c.c(i16 %call111.c.i.c, i16 -1792)
  %call113.c.i.c = tail call i16 @gsm_add.v0.C.c.c(i16 %call112.c.i.c, i16 256)
  %conv114.i = sext i16 %call113.c.i.c to i32
  %shr11520.i = lshr i32 %conv114.i, 9
  %28 = trunc i32 %shr11520.i to i16
  %cmp118.i = icmp sgt i16 %28, 7
  br i1 %cmp118.i, label %cond.end131.i, label %cond.false121.i

cond.false121.i:                                  ; preds = %cond.end107.i
  %cmp123.i = icmp slt i16 %28, -8
  br i1 %cmp123.i, label %cond.end131.i, label %cond.false126.i

cond.false126.i:                                  ; preds = %cond.false121.i
  %sub128.i = add nuw nsw i32 %shr11520.i, 8
  %phitmp41.i = trunc i32 %sub128.i to i16
  br label %cond.end131.i

cond.end131.i:                                    ; preds = %cond.false126.i, %cond.false121.i, %cond.end107.i
  %cond132.i = phi i16 [ 15, %cond.end107.i ], [ %phitmp41.i, %cond.false126.i ], [ 0, %cond.false121.i ]
  store i16 %cond132.i, i16* %LARc.5, align 2
  %29 = load i16, i16* %LARc.6, align 2
  %call135.c.i.c = tail call i16 @gsm_mult.v0.C.c.c(i16 8534, i16 %29)
  %call136.c.i.c = tail call i16 @gsm_add.v0.C.c.c(i16 %call135.c.i.c, i16 -341)
  %call137.c.i.c = tail call i16 @gsm_add.v0.C.c.c(i16 %call136.c.i.c, i16 256)
  %conv138.i = sext i16 %call137.c.i.c to i32
  %shr13924.i = lshr i32 %conv138.i, 9
  %30 = trunc i32 %shr13924.i to i16
  %cmp142.i = icmp sgt i16 %30, 3
  br i1 %cmp142.i, label %cond.end155.i, label %cond.false145.i

cond.false145.i:                                  ; preds = %cond.end131.i
  %cmp147.i = icmp slt i16 %30, -4
  br i1 %cmp147.i, label %cond.end155.i, label %cond.false150.i

cond.false150.i:                                  ; preds = %cond.false145.i
  %sub152.i = add nuw nsw i32 %shr13924.i, 4
  %phitmp43.i = trunc i32 %sub152.i to i16
  br label %cond.end155.i

cond.end155.i:                                    ; preds = %cond.false150.i, %cond.false145.i, %cond.end131.i
  %cond156.i = phi i16 [ 7, %cond.end131.i ], [ %phitmp43.i, %cond.false150.i ], [ 0, %cond.false145.i ]
  store i16 %cond156.i, i16* %LARc.6, align 2
  %31 = load i16, i16* %LARc.7, align 2
  %call159.c.i.c = tail call i16 @gsm_mult.v0.C.c.c(i16 9036, i16 %31)
  %call160.c.i.c = tail call i16 @gsm_add.v0.C.c.c(i16 %call159.c.i.c, i16 -1144)
  %call161.c.i.c = tail call i16 @gsm_add.v0.C.c.c(i16 %call160.c.i.c, i16 256)
  %conv162.i = sext i16 %call161.c.i.c to i32
  %shr16328.i = lshr i32 %conv162.i, 9
  %32 = trunc i32 %shr16328.i to i16
  %cmp166.i = icmp sgt i16 %32, 3
  br i1 %cmp166.i, label %Quantization_and_coding.v0.C.c.exit, label %cond.false169.i

cond.false169.i:                                  ; preds = %cond.end155.i
  %cmp171.i = icmp slt i16 %32, -4
  br i1 %cmp171.i, label %Quantization_and_coding.v0.C.c.exit, label %cond.false174.i

cond.false174.i:                                  ; preds = %cond.false169.i
  %sub176.i = add nuw nsw i32 %shr16328.i, 4
  %phitmp45.i = trunc i32 %sub176.i to i16
  br label %Quantization_and_coding.v0.C.c.exit

Quantization_and_coding.v0.C.c.exit:              ; preds = %cond.end155.i, %cond.false169.i, %cond.false174.i
  %cond180.i = phi i16 [ 7, %cond.end155.i ], [ %phitmp45.i, %cond.false174.i ], [ 0, %cond.false169.i ]
  store i16 %cond180.i, i16* %LARc.7, align 2
  ret void
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

; Function Attrs: noinline norecurse nounwind
define void @Autocorrelation.v0.C.c.c(i16* nocapture %s, i32* nocapture %L_ACF.0, i32* nocapture %L_ACF.1, i32* nocapture %L_ACF.2, i32* nocapture %L_ACF.3, i32* nocapture %L_ACF.4, i32* nocapture %L_ACF.5, i32* nocapture %L_ACF.6, i32* nocapture %L_ACF.7, i32* nocapture %L_ACF.8) local_unnamed_addr #5 {
entry:
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %k.018 = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  %smax.017 = phi i16 [ 0, %entry ], [ %call.c.smax.0, %for.body ]
  %arrayidx = getelementptr inbounds i16, i16* %s, i32 %k.018
  %0 = load i16, i16* %arrayidx, align 2
  %call.c = tail call i16 @gsm_abs.v0.C.c(i16 %0)
  %cmp2 = icmp sgt i16 %call.c, %smax.017
  %call.c.smax.0 = select i1 %cmp2, i16 %call.c, i16 %smax.017
  %inc = add nuw nsw i32 %k.018, 1
  %exitcond21 = icmp eq i32 %inc, 160
  br i1 %exitcond21, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  %cmp5 = icmp eq i16 %call.c.smax.0, 0
  br i1 %cmp5, label %if.end33, label %if.end12

if.end12:                                         ; preds = %for.end
  %conv81 = zext i16 %call.c.smax.0 to i32
  %shl = shl nuw i32 %conv81, 16
  %call9.c = tail call i16 @gsm_norm.v0.C.c(i32 %shl)
  %sub = sub i16 4, %call9.c
  %phitmp = sext i16 %sub to i32
  %cmp14 = icmp sgt i16 %sub, 0
  %sub.off = add i16 %sub, -1
  %1 = icmp ult i16 %sub.off, 4
  br i1 %1, label %for.cond20.preheader, label %if.end33

for.cond20.preheader:                             ; preds = %if.end12
  %sub26 = add nsw i32 %phitmp, -1
  %shr = lshr i32 16384, %sub26
  %conv27 = trunc i32 %shr to i16
  br label %for.body23

for.body23:                                       ; preds = %for.body23, %for.cond20.preheader
  %k.116 = phi i32 [ 0, %for.cond20.preheader ], [ %inc31, %for.body23 ]
  %arrayidx24 = getelementptr inbounds i16, i16* %s, i32 %k.116
  %2 = load i16, i16* %arrayidx24, align 2
  %call28.c.c = tail call i16 @gsm_mult_r.v0.C.c.c(i16 %2, i16 %conv27)
  store i16 %call28.c.c, i16* %arrayidx24, align 2
  %inc31 = add nuw nsw i32 %k.116, 1
  %exitcond20 = icmp eq i32 %inc31, 160
  br i1 %exitcond20, label %if.end33.loopexit, label %for.body23

if.end33.loopexit:                                ; preds = %for.body23
  br label %if.end33

if.end33:                                         ; preds = %if.end33.loopexit, %for.end, %if.end12
  %cmp148 = phi i1 [ %cmp14, %if.end12 ], [ false, %for.end ], [ %cmp14, %if.end33.loopexit ]
  %scalauto.07 = phi i32 [ %phitmp, %if.end12 ], [ 0, %for.end ], [ %phitmp, %if.end33.loopexit ]
  %3 = load i16, i16* %s, align 2
  br label %for.body37

for.body37:                                       ; preds = %if.end33, %__non_const_wrapper__.34.exit
  %k.215 = phi i32 [ 8, %if.end33 ], [ %dec, %__non_const_wrapper__.34.exit ]
  switch i32 %k.215, label %__non_const_wrapper__.34.exit [
    i32 0, label %csroa.if.then.i
    i32 1, label %__non_const_wrapper__.34.exit.sink.split
    i32 2, label %csroa.if.then6.i
    i32 3, label %csroa.if.then10.i
    i32 4, label %csroa.if.then14.i
    i32 5, label %csroa.if.then18.i
    i32 6, label %csroa.if.then22.i
    i32 7, label %csroa.if.then26.i
    i32 8, label %csroa.if.then30.i
  ]

csroa.if.then.i:                                  ; preds = %for.body37
  br label %__non_const_wrapper__.34.exit.sink.split

csroa.if.then6.i:                                 ; preds = %for.body37
  br label %__non_const_wrapper__.34.exit.sink.split

csroa.if.then10.i:                                ; preds = %for.body37
  br label %__non_const_wrapper__.34.exit.sink.split

csroa.if.then14.i:                                ; preds = %for.body37
  br label %__non_const_wrapper__.34.exit.sink.split

csroa.if.then18.i:                                ; preds = %for.body37
  br label %__non_const_wrapper__.34.exit.sink.split

csroa.if.then22.i:                                ; preds = %for.body37
  br label %__non_const_wrapper__.34.exit.sink.split

csroa.if.then26.i:                                ; preds = %for.body37
  br label %__non_const_wrapper__.34.exit.sink.split

csroa.if.then30.i:                                ; preds = %for.body37
  br label %__non_const_wrapper__.34.exit.sink.split

__non_const_wrapper__.34.exit.sink.split:         ; preds = %for.body37, %csroa.if.then.i, %csroa.if.then6.i, %csroa.if.then14.i, %csroa.if.then22.i, %csroa.if.then30.i, %csroa.if.then26.i, %csroa.if.then18.i, %csroa.if.then10.i
  %L_ACF.1.sink = phi i32* [ %L_ACF.3, %csroa.if.then10.i ], [ %L_ACF.5, %csroa.if.then18.i ], [ %L_ACF.7, %csroa.if.then26.i ], [ %L_ACF.8, %csroa.if.then30.i ], [ %L_ACF.6, %csroa.if.then22.i ], [ %L_ACF.4, %csroa.if.then14.i ], [ %L_ACF.2, %csroa.if.then6.i ], [ %L_ACF.0, %csroa.if.then.i ], [ %L_ACF.1, %for.body37 ]
  store i32 0, i32* %L_ACF.1.sink, align 4
  br label %__non_const_wrapper__.34.exit

__non_const_wrapper__.34.exit:                    ; preds = %__non_const_wrapper__.34.exit.sink.split, %for.body37
  %dec = add nsw i32 %k.215, -1
  %cmp35 = icmp sgt i32 %k.215, 0
  br i1 %cmp35, label %for.body37, label %for.end40

for.end40:                                        ; preds = %__non_const_wrapper__.34.exit
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
  %sp.0.phi13 = phi i32 [ 0, %for.end40 ], [ %incdec.ptr265.add, %for.body264 ]
  %incdec.ptr265.add = add nuw nsw i32 %sp.0.phi13, 1
  %incdec.ptr265.gepi = getelementptr inbounds i16, i16* %incdec.ptr212, i32 %incdec.ptr265.add
  %75 = load i16, i16* %incdec.ptr265.gepi, align 2
  %conv266 = sext i16 %75 to i32
  %mul269 = mul nsw i32 %conv266, %conv266
  %76 = load i32, i32* %L_ACF.0, align 4
  %add271 = add nsw i32 %mul269, %76
  store i32 %add271, i32* %L_ACF.0, align 4
  %arrayidx273.gepi = getelementptr inbounds i16, i16* %incdec.ptr212, i32 %sp.0.phi13
  %77 = load i16, i16* %arrayidx273.gepi, align 2
  %conv274 = sext i16 %77 to i32
  %mul275 = mul nsw i32 %conv274, %conv266
  %78 = load i32, i32* %L_ACF.1, align 4
  %add277 = add nsw i32 %mul275, %78
  store i32 %add277, i32* %L_ACF.1, align 4
  %arrayidx279.add = add nsw i32 %sp.0.phi13, -1
  %arrayidx279.gepi = getelementptr inbounds i16, i16* %incdec.ptr212, i32 %arrayidx279.add
  %79 = load i16, i16* %arrayidx279.gepi, align 2
  %conv280 = sext i16 %79 to i32
  %mul281 = mul nsw i32 %conv280, %conv266
  %80 = load i32, i32* %L_ACF.2, align 4
  %add283 = add nsw i32 %mul281, %80
  store i32 %add283, i32* %L_ACF.2, align 4
  %arrayidx285.add = add nsw i32 %sp.0.phi13, -2
  %arrayidx285.gepi = getelementptr inbounds i16, i16* %incdec.ptr212, i32 %arrayidx285.add
  %81 = load i16, i16* %arrayidx285.gepi, align 2
  %conv286 = sext i16 %81 to i32
  %mul287 = mul nsw i32 %conv286, %conv266
  %82 = load i32, i32* %L_ACF.3, align 4
  %add289 = add nsw i32 %mul287, %82
  store i32 %add289, i32* %L_ACF.3, align 4
  %arrayidx291.add = add nsw i32 %sp.0.phi13, -3
  %arrayidx291.gepi = getelementptr inbounds i16, i16* %incdec.ptr212, i32 %arrayidx291.add
  %83 = load i16, i16* %arrayidx291.gepi, align 2
  %conv292 = sext i16 %83 to i32
  %mul293 = mul nsw i32 %conv292, %conv266
  %84 = load i32, i32* %L_ACF.4, align 4
  %add295 = add nsw i32 %mul293, %84
  store i32 %add295, i32* %L_ACF.4, align 4
  %arrayidx297.add = add nsw i32 %sp.0.phi13, -4
  %arrayidx297.gepi = getelementptr inbounds i16, i16* %incdec.ptr212, i32 %arrayidx297.add
  %85 = load i16, i16* %arrayidx297.gepi, align 2
  %conv298 = sext i16 %85 to i32
  %mul299 = mul nsw i32 %conv298, %conv266
  %86 = load i32, i32* %L_ACF.5, align 4
  %add301 = add nsw i32 %mul299, %86
  store i32 %add301, i32* %L_ACF.5, align 4
  %arrayidx303.add = add nsw i32 %sp.0.phi13, -5
  %arrayidx303.gepi = getelementptr inbounds i16, i16* %incdec.ptr212, i32 %arrayidx303.add
  %87 = load i16, i16* %arrayidx303.gepi, align 2
  %conv304 = sext i16 %87 to i32
  %mul305 = mul nsw i32 %conv304, %conv266
  %88 = load i32, i32* %L_ACF.6, align 4
  %add307 = add nsw i32 %mul305, %88
  store i32 %add307, i32* %L_ACF.6, align 4
  %arrayidx309.add = add nsw i32 %sp.0.phi13, -6
  %arrayidx309.gepi = getelementptr inbounds i16, i16* %incdec.ptr212, i32 %arrayidx309.add
  %89 = load i16, i16* %arrayidx309.gepi, align 2
  %conv310 = sext i16 %89 to i32
  %mul311 = mul nsw i32 %conv310, %conv266
  %90 = load i32, i32* %L_ACF.7, align 4
  %add313 = add nsw i32 %mul311, %90
  store i32 %add313, i32* %L_ACF.7, align 4
  %arrayidx315.add = add nsw i32 %sp.0.phi13, -7
  %arrayidx315.gepi = getelementptr inbounds i16, i16* %incdec.ptr212, i32 %arrayidx315.add
  %91 = load i16, i16* %arrayidx315.gepi, align 2
  %conv316 = sext i16 %91 to i32
  %mul317 = mul nsw i32 %conv316, %conv266
  %92 = load i32, i32* %L_ACF.8, align 4
  %add319 = add nsw i32 %mul317, %92
  store i32 %add319, i32* %L_ACF.8, align 4
  %exitcond19 = icmp eq i32 %incdec.ptr265.add, 152
  br i1 %exitcond19, label %for.body326.preheader, label %for.body264

for.body326.preheader:                            ; preds = %for.body264
  br label %for.body326

for.body326:                                      ; preds = %for.body326.preheader, %__non_const_wrapper__.36.exit
  %k.312 = phi i32 [ %dec330, %__non_const_wrapper__.36.exit ], [ 8, %for.body326.preheader ]
  switch i32 %k.312, label %__non_const_wrapper__.35.exit [
    i32 0, label %csroa.if.then.i23
    i32 1, label %__non_const_wrapper__.35.exit.sink.split
    i32 2, label %csroa.if.then7.i
    i32 3, label %csroa.if.then12.i
    i32 4, label %csroa.if.then17.i
    i32 5, label %csroa.if.then22.i29
    i32 6, label %csroa.if.then27.i
    i32 7, label %csroa.if.then32.i
    i32 8, label %csroa.if.then37.i
  ]

csroa.if.then.i23:                                ; preds = %for.body326
  br label %__non_const_wrapper__.35.exit.sink.split

csroa.if.then7.i:                                 ; preds = %for.body326
  br label %__non_const_wrapper__.35.exit.sink.split

csroa.if.then12.i:                                ; preds = %for.body326
  br label %__non_const_wrapper__.35.exit.sink.split

csroa.if.then17.i:                                ; preds = %for.body326
  br label %__non_const_wrapper__.35.exit.sink.split

csroa.if.then22.i29:                              ; preds = %for.body326
  br label %__non_const_wrapper__.35.exit.sink.split

csroa.if.then27.i:                                ; preds = %for.body326
  br label %__non_const_wrapper__.35.exit.sink.split

csroa.if.then32.i:                                ; preds = %for.body326
  br label %__non_const_wrapper__.35.exit.sink.split

csroa.if.then37.i:                                ; preds = %for.body326
  br label %__non_const_wrapper__.35.exit.sink.split

__non_const_wrapper__.35.exit.sink.split:         ; preds = %for.body326, %csroa.if.then.i23, %csroa.if.then7.i, %csroa.if.then17.i, %csroa.if.then27.i, %csroa.if.then37.i, %csroa.if.then32.i, %csroa.if.then22.i29, %csroa.if.then12.i
  %L_ACF.1.sink1 = phi i32* [ %L_ACF.3, %csroa.if.then12.i ], [ %L_ACF.5, %csroa.if.then22.i29 ], [ %L_ACF.7, %csroa.if.then32.i ], [ %L_ACF.8, %csroa.if.then37.i ], [ %L_ACF.6, %csroa.if.then27.i ], [ %L_ACF.4, %csroa.if.then17.i ], [ %L_ACF.2, %csroa.if.then7.i ], [ %L_ACF.0, %csroa.if.then.i23 ], [ %L_ACF.1, %for.body326 ]
  %93 = load i32, i32* %L_ACF.1.sink1, align 4
  br label %__non_const_wrapper__.35.exit

__non_const_wrapper__.35.exit:                    ; preds = %__non_const_wrapper__.35.exit.sink.split, %for.body326
  %.phi.i = phi i32 [ undef, %for.body326 ], [ %93, %__non_const_wrapper__.35.exit.sink.split ]
  %shl328 = shl i32 %.phi.i, 1
  switch i32 %k.312, label %__non_const_wrapper__.36.exit [
    i32 0, label %csroa.if.then.i34
    i32 1, label %__non_const_wrapper__.36.exit.sink.split
    i32 2, label %csroa.if.then6.i40
    i32 3, label %csroa.if.then10.i43
    i32 4, label %csroa.if.then14.i46
    i32 5, label %csroa.if.then18.i49
    i32 6, label %csroa.if.then22.i52
    i32 7, label %csroa.if.then26.i55
    i32 8, label %csroa.if.then30.i58
  ]

csroa.if.then.i34:                                ; preds = %__non_const_wrapper__.35.exit
  br label %__non_const_wrapper__.36.exit.sink.split

csroa.if.then6.i40:                               ; preds = %__non_const_wrapper__.35.exit
  br label %__non_const_wrapper__.36.exit.sink.split

csroa.if.then10.i43:                              ; preds = %__non_const_wrapper__.35.exit
  br label %__non_const_wrapper__.36.exit.sink.split

csroa.if.then14.i46:                              ; preds = %__non_const_wrapper__.35.exit
  br label %__non_const_wrapper__.36.exit.sink.split

csroa.if.then18.i49:                              ; preds = %__non_const_wrapper__.35.exit
  br label %__non_const_wrapper__.36.exit.sink.split

csroa.if.then22.i52:                              ; preds = %__non_const_wrapper__.35.exit
  br label %__non_const_wrapper__.36.exit.sink.split

csroa.if.then26.i55:                              ; preds = %__non_const_wrapper__.35.exit
  br label %__non_const_wrapper__.36.exit.sink.split

csroa.if.then30.i58:                              ; preds = %__non_const_wrapper__.35.exit
  br label %__non_const_wrapper__.36.exit.sink.split

__non_const_wrapper__.36.exit.sink.split:         ; preds = %__non_const_wrapper__.35.exit, %csroa.if.then.i34, %csroa.if.then6.i40, %csroa.if.then14.i46, %csroa.if.then22.i52, %csroa.if.then30.i58, %csroa.if.then26.i55, %csroa.if.then18.i49, %csroa.if.then10.i43
  %L_ACF.1.sink2 = phi i32* [ %L_ACF.3, %csroa.if.then10.i43 ], [ %L_ACF.5, %csroa.if.then18.i49 ], [ %L_ACF.7, %csroa.if.then26.i55 ], [ %L_ACF.8, %csroa.if.then30.i58 ], [ %L_ACF.6, %csroa.if.then22.i52 ], [ %L_ACF.4, %csroa.if.then14.i46 ], [ %L_ACF.2, %csroa.if.then6.i40 ], [ %L_ACF.0, %csroa.if.then.i34 ], [ %L_ACF.1, %__non_const_wrapper__.35.exit ]
  store i32 %shl328, i32* %L_ACF.1.sink2, align 4
  br label %__non_const_wrapper__.36.exit

__non_const_wrapper__.36.exit:                    ; preds = %__non_const_wrapper__.36.exit.sink.split, %__non_const_wrapper__.35.exit
  %dec330 = add nsw i32 %k.312, -1
  %cmp324 = icmp sgt i32 %k.312, 0
  br i1 %cmp324, label %for.body326, label %for.end331

for.end331:                                       ; preds = %__non_const_wrapper__.36.exit
  br i1 %cmp148, label %for.body339.preheader, label %if.end348

for.body339.preheader:                            ; preds = %for.end331
  br label %for.body339

for.body339:                                      ; preds = %for.body339.preheader, %for.body339
  %s.addr.0.firstgepi.gepi11 = phi i16* [ %s.addr.0.firstgepi.gepi, %for.body339 ], [ %s, %for.body339.preheader ]
  %s.addr.0.phi10 = phi i32 [ %incdec.ptr341.add, %for.body339 ], [ 0, %for.body339.preheader ]
  %94 = load i16, i16* %s.addr.0.firstgepi.gepi11, align 2
  %conv342 = sext i16 %94 to i32
  %shl343 = shl i32 %conv342, %scalauto.07
  %conv344 = trunc i32 %shl343 to i16
  store i16 %conv344, i16* %s.addr.0.firstgepi.gepi11, align 2
  %incdec.ptr341.add = add nuw nsw i32 %s.addr.0.phi10, 1
  %s.addr.0.firstgepi.gepi = getelementptr inbounds i16, i16* %s, i32 %incdec.ptr341.add
  %exitcond = icmp eq i32 %incdec.ptr341.add, 160
  br i1 %exitcond, label %if.end348.loopexit, label %for.body339

if.end348.loopexit:                               ; preds = %for.body339
  br label %if.end348

if.end348:                                        ; preds = %if.end348.loopexit, %for.end331
  ret void
}

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
