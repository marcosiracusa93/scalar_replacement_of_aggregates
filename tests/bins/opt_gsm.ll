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
  %so8 = bitcast [160 x i16]* %so to i8*
  %LARc = alloca [8 x i16], align 2
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %so8, i8* bitcast ([160 x i16]* @inData to i8*), i32 320, i32 2, i1 false)
  %arraydecay = getelementptr inbounds [160 x i16], [160 x i16]* %so, i32 0, i32 0
  %arraydecay2 = getelementptr inbounds [8 x i16], [8 x i16]* %LARc, i32 0, i32 0
  call void @Gsm_LPC_Analysis.v0.C.c.c(i16* nonnull %arraydecay, i16* nonnull %arraydecay2) #6
  br label %for.inc11

for.inc11:                                        ; preds = %for.inc11, %entry
  %main_result.04 = phi i32 [ 0, %entry ], [ %add, %for.inc11 ]
  %i.13 = phi i32 [ 0, %entry ], [ %inc12, %for.inc11 ]
  %arrayidx6 = getelementptr inbounds [160 x i16], [160 x i16]* %so, i32 0, i32 %i.13
  %0 = load i16, i16* %arrayidx6, align 2
  %arrayidx7 = getelementptr inbounds [160 x i16], [160 x i16]* @outData, i32 0, i32 %i.13
  %1 = load i16, i16* %arrayidx7, align 2
  %cmp9 = icmp ne i16 %0, %1
  %conv10 = zext i1 %cmp9 to i32
  %add = add nsw i32 %conv10, %main_result.04
  %inc12 = add nuw nsw i32 %i.13, 1
  %exitcond6 = icmp eq i32 %inc12, 160
  br i1 %exitcond6, label %for.body17.preheader, label %for.inc11

for.body17.preheader:                             ; preds = %for.inc11
  br label %for.body17

for.body17:                                       ; preds = %for.body17.backedge, %for.body17.preheader
  %main_result.12 = phi i32 [ %add, %for.body17.preheader ], [ %main_result.12.be, %for.body17.backedge ]
  %i.21 = phi i32 [ 0, %for.body17.preheader ], [ %i.21.be, %for.body17.backedge ]
  %arrayidx18 = getelementptr inbounds [8 x i16], [8 x i16]* %LARc, i32 0, i32 %i.21
  %2 = load i16, i16* %arrayidx18, align 2
  switch i32 %i.21, label %__non_const_wrapper__.exit [
    i32 0, label %__non_const_wrapper__.exit.thread
    i32 1, label %__non_const_wrapper__.exit.thread14
    i32 2, label %__non_const_wrapper__.exit.thread20
    i32 3, label %__non_const_wrapper__.exit.thread26
    i32 4, label %__non_const_wrapper__.exit.thread32
    i32 5, label %__non_const_wrapper__.exit.thread38
    i32 6, label %__non_const_wrapper__.exit.thread44
  ]

__non_const_wrapper__.exit.thread44:              ; preds = %for.body17
  %cmp2245 = icmp ne i16 %2, 3
  %conv2346 = zext i1 %cmp2245 to i32
  %add2447 = add nsw i32 %conv2346, %main_result.12
  br label %for.body17.backedge

__non_const_wrapper__.exit.thread38:              ; preds = %for.body17
  %cmp2239 = icmp ne i16 %2, 5
  %conv2340 = zext i1 %cmp2239 to i32
  %add2441 = add nsw i32 %conv2340, %main_result.12
  br label %for.body17.backedge

__non_const_wrapper__.exit.thread32:              ; preds = %for.body17
  %cmp2233 = icmp ne i16 %2, 7
  %conv2334 = zext i1 %cmp2233 to i32
  %add2435 = add nsw i32 %conv2334, %main_result.12
  br label %for.body17.backedge

__non_const_wrapper__.exit.thread26:              ; preds = %for.body17
  %cmp2227 = icmp ne i16 %2, 13
  %conv2328 = zext i1 %cmp2227 to i32
  %add2429 = add nsw i32 %conv2328, %main_result.12
  br label %for.body17.backedge

__non_const_wrapper__.exit.thread20:              ; preds = %for.body17
  %cmp2221 = icmp ne i16 %2, 22
  %conv2322 = zext i1 %cmp2221 to i32
  %add2423 = add nsw i32 %conv2322, %main_result.12
  br label %for.body17.backedge

__non_const_wrapper__.exit.thread14:              ; preds = %for.body17
  %cmp2215 = icmp ne i16 %2, 33
  %conv2316 = zext i1 %cmp2215 to i32
  %add2417 = add nsw i32 %conv2316, %main_result.12
  br label %for.body17.backedge

__non_const_wrapper__.exit.thread:                ; preds = %for.body17
  %cmp229 = icmp ne i16 %2, 32
  %conv2310 = zext i1 %cmp229 to i32
  %add2411 = add nsw i32 %conv2310, %main_result.12
  br label %for.body17.backedge

__non_const_wrapper__.exit:                       ; preds = %for.body17
  %cmp22 = icmp ne i16 %2, 2
  %conv23 = zext i1 %cmp22 to i32
  %add24 = add nsw i32 %conv23, %main_result.12
  %inc26 = add nuw nsw i32 %i.21, 1
  %exitcond = icmp eq i32 %inc26, 8
  br i1 %exitcond, label %for.end27, label %for.body17.backedge

for.body17.backedge:                              ; preds = %__non_const_wrapper__.exit, %__non_const_wrapper__.exit.thread, %__non_const_wrapper__.exit.thread14, %__non_const_wrapper__.exit.thread20, %__non_const_wrapper__.exit.thread26, %__non_const_wrapper__.exit.thread32, %__non_const_wrapper__.exit.thread38, %__non_const_wrapper__.exit.thread44
  %main_result.12.be = phi i32 [ %add24, %__non_const_wrapper__.exit ], [ %add2411, %__non_const_wrapper__.exit.thread ], [ %add2417, %__non_const_wrapper__.exit.thread14 ], [ %add2423, %__non_const_wrapper__.exit.thread20 ], [ %add2429, %__non_const_wrapper__.exit.thread26 ], [ %add2435, %__non_const_wrapper__.exit.thread32 ], [ %add2441, %__non_const_wrapper__.exit.thread38 ], [ %add2447, %__non_const_wrapper__.exit.thread44 ]
  %i.21.be = phi i32 [ %inc26, %__non_const_wrapper__.exit ], [ 1, %__non_const_wrapper__.exit.thread ], [ 2, %__non_const_wrapper__.exit.thread14 ], [ 3, %__non_const_wrapper__.exit.thread20 ], [ 4, %__non_const_wrapper__.exit.thread26 ], [ 5, %__non_const_wrapper__.exit.thread32 ], [ 6, %__non_const_wrapper__.exit.thread38 ], [ 7, %__non_const_wrapper__.exit.thread44 ]
  br label %for.body17

for.end27:                                        ; preds = %__non_const_wrapper__.exit
  %call = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 %add24)
  ret i32 %add24
}

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #1

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

; Function Attrs: norecurse nounwind readnone
define i16 @gsm_mult_r.v0.C.c(i16 %a, i16 %b) local_unnamed_addr #2 {
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
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i32, i1) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

; Function Attrs: noinline nounwind
define void @Autocorrelation.v0.C.c.c(i16* nocapture %s, i32* %L_ACF) local_unnamed_addr #4 {
entry:
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %k.017 = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  %smax.016 = phi i16 [ 0, %entry ], [ %call.c.smax.0, %for.body ]
  %arrayidx = getelementptr inbounds i16, i16* %s, i32 %k.017
  %0 = load i16, i16* %arrayidx, align 2
  %call.c = tail call i16 @gsm_abs.v0.C.c(i16 %0)
  %cmp2 = icmp sgt i16 %call.c, %smax.016
  %call.c.smax.0 = select i1 %cmp2, i16 %call.c, i16 %smax.016
  %inc = add nuw nsw i32 %k.017, 1
  %exitcond20 = icmp eq i32 %inc, 160
  br i1 %exitcond20, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  %L_ACF18 = bitcast i32* %L_ACF to i8*
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
  %k.115 = phi i32 [ 0, %for.cond20.preheader ], [ %inc31, %for.body23 ]
  %arrayidx24 = getelementptr inbounds i16, i16* %s, i32 %k.115
  %2 = load i16, i16* %arrayidx24, align 2
  %call28.c = tail call i16 @gsm_mult_r.v0.C.c(i16 %2, i16 %conv27)
  store i16 %call28.c, i16* %arrayidx24, align 2
  %inc31 = add nuw nsw i32 %k.115, 1
  %exitcond19 = icmp eq i32 %inc31, 160
  br i1 %exitcond19, label %if.end33.loopexit, label %for.body23

if.end33.loopexit:                                ; preds = %for.body23
  br label %if.end33

if.end33:                                         ; preds = %if.end33.loopexit, %for.end, %if.end12
  %cmp148 = phi i1 [ %cmp14, %if.end12 ], [ false, %for.end ], [ %cmp14, %if.end33.loopexit ]
  %scalauto.07 = phi i32 [ %phitmp, %if.end12 ], [ 0, %for.end ], [ %phitmp, %if.end33.loopexit ]
  %3 = load i16, i16* %s, align 2
  tail call void @llvm.memset.p0i8.i32(i8* %L_ACF18, i8 0, i32 36, i32 4, i1 false)
  %conv41 = sext i16 %3 to i32
  %4 = load i16, i16* %s, align 2
  %conv43 = sext i16 %4 to i32
  %mul = mul nsw i32 %conv43, %conv41
  store i32 %mul, i32* %L_ACF, align 4
  %incdec.ptr = getelementptr inbounds i16, i16* %s, i32 1
  %5 = load i16, i16* %incdec.ptr, align 2
  %conv45 = sext i16 %5 to i32
  %mul48 = mul nsw i32 %conv45, %conv45
  %add50 = add nsw i32 %mul48, %mul
  store i32 %add50, i32* %L_ACF, align 4
  %6 = load i16, i16* %s, align 2
  %conv53 = sext i16 %6 to i32
  %mul54 = mul nsw i32 %conv53, %conv45
  %arrayidx55 = getelementptr inbounds i32, i32* %L_ACF, i32 1
  store i32 %mul54, i32* %arrayidx55, align 4
  %incdec.ptr57 = getelementptr inbounds i16, i16* %s, i32 2
  %7 = load i16, i16* %incdec.ptr57, align 2
  %conv58 = sext i16 %7 to i32
  %mul61 = mul nsw i32 %conv58, %conv58
  %add63 = add nsw i32 %mul61, %add50
  store i32 %add63, i32* %L_ACF, align 4
  %8 = load i16, i16* %incdec.ptr, align 2
  %conv66 = sext i16 %8 to i32
  %mul67 = mul nsw i32 %conv66, %conv58
  %add69 = add nsw i32 %mul67, %mul54
  store i32 %add69, i32* %arrayidx55, align 4
  %9 = load i16, i16* %s, align 2
  %conv72 = sext i16 %9 to i32
  %mul73 = mul nsw i32 %conv72, %conv58
  %arrayidx74 = getelementptr inbounds i32, i32* %L_ACF, i32 2
  store i32 %mul73, i32* %arrayidx74, align 4
  %incdec.ptr76 = getelementptr inbounds i16, i16* %s, i32 3
  %10 = load i16, i16* %incdec.ptr76, align 2
  %conv77 = sext i16 %10 to i32
  %mul80 = mul nsw i32 %conv77, %conv77
  %add82 = add nsw i32 %mul80, %add63
  store i32 %add82, i32* %L_ACF, align 4
  %11 = load i16, i16* %incdec.ptr57, align 2
  %conv85 = sext i16 %11 to i32
  %mul86 = mul nsw i32 %conv85, %conv77
  %add88 = add nsw i32 %mul86, %add69
  store i32 %add88, i32* %arrayidx55, align 4
  %12 = load i16, i16* %incdec.ptr, align 2
  %conv91 = sext i16 %12 to i32
  %mul92 = mul nsw i32 %conv91, %conv77
  %add94 = add nsw i32 %mul92, %mul73
  store i32 %add94, i32* %arrayidx74, align 4
  %13 = load i16, i16* %s, align 2
  %conv97 = sext i16 %13 to i32
  %mul98 = mul nsw i32 %conv97, %conv77
  %arrayidx99 = getelementptr inbounds i32, i32* %L_ACF, i32 3
  store i32 %mul98, i32* %arrayidx99, align 4
  %incdec.ptr101 = getelementptr inbounds i16, i16* %s, i32 4
  %14 = load i16, i16* %incdec.ptr101, align 2
  %conv102 = sext i16 %14 to i32
  %mul105 = mul nsw i32 %conv102, %conv102
  %add107 = add nsw i32 %mul105, %add82
  store i32 %add107, i32* %L_ACF, align 4
  %15 = load i16, i16* %incdec.ptr76, align 2
  %conv110 = sext i16 %15 to i32
  %mul111 = mul nsw i32 %conv110, %conv102
  %add113 = add nsw i32 %mul111, %add88
  store i32 %add113, i32* %arrayidx55, align 4
  %16 = load i16, i16* %incdec.ptr57, align 2
  %conv116 = sext i16 %16 to i32
  %mul117 = mul nsw i32 %conv116, %conv102
  %add119 = add nsw i32 %mul117, %add94
  store i32 %add119, i32* %arrayidx74, align 4
  %17 = load i16, i16* %incdec.ptr, align 2
  %conv122 = sext i16 %17 to i32
  %mul123 = mul nsw i32 %conv122, %conv102
  %add125 = add nsw i32 %mul123, %mul98
  store i32 %add125, i32* %arrayidx99, align 4
  %18 = load i16, i16* %s, align 2
  %conv128 = sext i16 %18 to i32
  %mul129 = mul nsw i32 %conv128, %conv102
  %arrayidx130 = getelementptr inbounds i32, i32* %L_ACF, i32 4
  store i32 %mul129, i32* %arrayidx130, align 4
  %incdec.ptr132 = getelementptr inbounds i16, i16* %s, i32 5
  %19 = load i16, i16* %incdec.ptr132, align 2
  %conv133 = sext i16 %19 to i32
  %mul136 = mul nsw i32 %conv133, %conv133
  %add138 = add nsw i32 %mul136, %add107
  store i32 %add138, i32* %L_ACF, align 4
  %20 = load i16, i16* %incdec.ptr101, align 2
  %conv141 = sext i16 %20 to i32
  %mul142 = mul nsw i32 %conv141, %conv133
  %add144 = add nsw i32 %mul142, %add113
  store i32 %add144, i32* %arrayidx55, align 4
  %21 = load i16, i16* %incdec.ptr76, align 2
  %conv147 = sext i16 %21 to i32
  %mul148 = mul nsw i32 %conv147, %conv133
  %add150 = add nsw i32 %mul148, %add119
  store i32 %add150, i32* %arrayidx74, align 4
  %22 = load i16, i16* %incdec.ptr57, align 2
  %conv153 = sext i16 %22 to i32
  %mul154 = mul nsw i32 %conv153, %conv133
  %add156 = add nsw i32 %mul154, %add125
  store i32 %add156, i32* %arrayidx99, align 4
  %23 = load i16, i16* %incdec.ptr, align 2
  %conv159 = sext i16 %23 to i32
  %mul160 = mul nsw i32 %conv159, %conv133
  %add162 = add nsw i32 %mul160, %mul129
  store i32 %add162, i32* %arrayidx130, align 4
  %24 = load i16, i16* %s, align 2
  %conv165 = sext i16 %24 to i32
  %mul166 = mul nsw i32 %conv165, %conv133
  %arrayidx167 = getelementptr inbounds i32, i32* %L_ACF, i32 5
  %25 = load i32, i32* %arrayidx167, align 4
  %add168 = add nsw i32 %mul166, %25
  store i32 %add168, i32* %arrayidx167, align 4
  %incdec.ptr169 = getelementptr inbounds i16, i16* %s, i32 6
  %26 = load i16, i16* %incdec.ptr169, align 2
  %conv170 = sext i16 %26 to i32
  %mul173 = mul nsw i32 %conv170, %conv170
  %add175 = add nsw i32 %mul173, %add138
  store i32 %add175, i32* %L_ACF, align 4
  %27 = load i16, i16* %incdec.ptr132, align 2
  %conv178 = sext i16 %27 to i32
  %mul179 = mul nsw i32 %conv178, %conv170
  %add181 = add nsw i32 %mul179, %add144
  store i32 %add181, i32* %arrayidx55, align 4
  %28 = load i16, i16* %incdec.ptr101, align 2
  %conv184 = sext i16 %28 to i32
  %mul185 = mul nsw i32 %conv184, %conv170
  %add187 = add nsw i32 %mul185, %add150
  store i32 %add187, i32* %arrayidx74, align 4
  %29 = load i16, i16* %incdec.ptr76, align 2
  %conv190 = sext i16 %29 to i32
  %mul191 = mul nsw i32 %conv190, %conv170
  %add193 = add nsw i32 %mul191, %add156
  store i32 %add193, i32* %arrayidx99, align 4
  %30 = load i16, i16* %incdec.ptr57, align 2
  %conv196 = sext i16 %30 to i32
  %mul197 = mul nsw i32 %conv196, %conv170
  %add199 = add nsw i32 %mul197, %add162
  store i32 %add199, i32* %arrayidx130, align 4
  %31 = load i16, i16* %incdec.ptr, align 2
  %conv202 = sext i16 %31 to i32
  %mul203 = mul nsw i32 %conv202, %conv170
  %add205 = add nsw i32 %mul203, %add168
  store i32 %add205, i32* %arrayidx167, align 4
  %32 = load i16, i16* %s, align 2
  %conv208 = sext i16 %32 to i32
  %mul209 = mul nsw i32 %conv208, %conv170
  %arrayidx210 = getelementptr inbounds i32, i32* %L_ACF, i32 6
  %33 = load i32, i32* %arrayidx210, align 4
  %add211 = add nsw i32 %mul209, %33
  store i32 %add211, i32* %arrayidx210, align 4
  %incdec.ptr212 = getelementptr inbounds i16, i16* %s, i32 7
  %34 = load i16, i16* %incdec.ptr212, align 2
  %conv213 = sext i16 %34 to i32
  %mul216 = mul nsw i32 %conv213, %conv213
  %add218 = add nsw i32 %mul216, %add175
  store i32 %add218, i32* %L_ACF, align 4
  %35 = load i16, i16* %incdec.ptr169, align 2
  %conv221 = sext i16 %35 to i32
  %mul222 = mul nsw i32 %conv221, %conv213
  %add224 = add nsw i32 %mul222, %add181
  store i32 %add224, i32* %arrayidx55, align 4
  %36 = load i16, i16* %incdec.ptr132, align 2
  %conv227 = sext i16 %36 to i32
  %mul228 = mul nsw i32 %conv227, %conv213
  %add230 = add nsw i32 %mul228, %add187
  store i32 %add230, i32* %arrayidx74, align 4
  %37 = load i16, i16* %incdec.ptr101, align 2
  %conv233 = sext i16 %37 to i32
  %mul234 = mul nsw i32 %conv233, %conv213
  %add236 = add nsw i32 %mul234, %add193
  store i32 %add236, i32* %arrayidx99, align 4
  %38 = load i16, i16* %incdec.ptr76, align 2
  %conv239 = sext i16 %38 to i32
  %mul240 = mul nsw i32 %conv239, %conv213
  %add242 = add nsw i32 %mul240, %add199
  store i32 %add242, i32* %arrayidx130, align 4
  %39 = load i16, i16* %incdec.ptr57, align 2
  %conv245 = sext i16 %39 to i32
  %mul246 = mul nsw i32 %conv245, %conv213
  %add248 = add nsw i32 %mul246, %add205
  store i32 %add248, i32* %arrayidx167, align 4
  %40 = load i16, i16* %incdec.ptr, align 2
  %conv251 = sext i16 %40 to i32
  %mul252 = mul nsw i32 %conv251, %conv213
  %add254 = add nsw i32 %mul252, %add211
  store i32 %add254, i32* %arrayidx210, align 4
  %41 = load i16, i16* %s, align 2
  %conv257 = sext i16 %41 to i32
  %mul258 = mul nsw i32 %conv257, %conv213
  %arrayidx259 = getelementptr inbounds i32, i32* %L_ACF, i32 7
  %42 = load i32, i32* %arrayidx259, align 4
  %add260 = add nsw i32 %mul258, %42
  store i32 %add260, i32* %arrayidx259, align 4
  %arrayidx318 = getelementptr inbounds i32, i32* %L_ACF, i32 8
  %.pre = load i32, i32* %arrayidx318, align 4
  br label %for.body264

for.body264:                                      ; preds = %for.body264, %if.end33
  %43 = phi i32 [ %.pre, %if.end33 ], [ %add319, %for.body264 ]
  %44 = phi i32 [ %add260, %if.end33 ], [ %add313, %for.body264 ]
  %45 = phi i32 [ %add254, %if.end33 ], [ %add307, %for.body264 ]
  %46 = phi i32 [ %add248, %if.end33 ], [ %add301, %for.body264 ]
  %47 = phi i32 [ %add242, %if.end33 ], [ %add295, %for.body264 ]
  %48 = phi i32 [ %add236, %if.end33 ], [ %add289, %for.body264 ]
  %49 = phi i32 [ %add230, %if.end33 ], [ %add283, %for.body264 ]
  %50 = phi i32 [ %add224, %if.end33 ], [ %add277, %for.body264 ]
  %51 = phi i32 [ %add218, %if.end33 ], [ %add271, %for.body264 ]
  %i.013 = phi i32 [ 8, %if.end33 ], [ %inc321, %for.body264 ]
  %sp.012 = phi i16* [ %incdec.ptr212, %if.end33 ], [ %incdec.ptr265, %for.body264 ]
  %incdec.ptr265 = getelementptr inbounds i16, i16* %sp.012, i32 1
  %52 = load i16, i16* %incdec.ptr265, align 2
  %conv266 = sext i16 %52 to i32
  %mul269 = mul nsw i32 %conv266, %conv266
  %add271 = add nsw i32 %mul269, %51
  store i32 %add271, i32* %L_ACF, align 4
  %53 = load i16, i16* %sp.012, align 2
  %conv274 = sext i16 %53 to i32
  %mul275 = mul nsw i32 %conv274, %conv266
  %add277 = add nsw i32 %mul275, %50
  store i32 %add277, i32* %arrayidx55, align 4
  %arrayidx279 = getelementptr inbounds i16, i16* %sp.012, i32 -1
  %54 = load i16, i16* %arrayidx279, align 2
  %conv280 = sext i16 %54 to i32
  %mul281 = mul nsw i32 %conv280, %conv266
  %add283 = add nsw i32 %mul281, %49
  store i32 %add283, i32* %arrayidx74, align 4
  %arrayidx285 = getelementptr inbounds i16, i16* %sp.012, i32 -2
  %55 = load i16, i16* %arrayidx285, align 2
  %conv286 = sext i16 %55 to i32
  %mul287 = mul nsw i32 %conv286, %conv266
  %add289 = add nsw i32 %mul287, %48
  store i32 %add289, i32* %arrayidx99, align 4
  %arrayidx291 = getelementptr inbounds i16, i16* %sp.012, i32 -3
  %56 = load i16, i16* %arrayidx291, align 2
  %conv292 = sext i16 %56 to i32
  %mul293 = mul nsw i32 %conv292, %conv266
  %add295 = add nsw i32 %mul293, %47
  store i32 %add295, i32* %arrayidx130, align 4
  %arrayidx297 = getelementptr inbounds i16, i16* %sp.012, i32 -4
  %57 = load i16, i16* %arrayidx297, align 2
  %conv298 = sext i16 %57 to i32
  %mul299 = mul nsw i32 %conv298, %conv266
  %add301 = add nsw i32 %mul299, %46
  store i32 %add301, i32* %arrayidx167, align 4
  %arrayidx303 = getelementptr inbounds i16, i16* %sp.012, i32 -5
  %58 = load i16, i16* %arrayidx303, align 2
  %conv304 = sext i16 %58 to i32
  %mul305 = mul nsw i32 %conv304, %conv266
  %add307 = add nsw i32 %mul305, %45
  store i32 %add307, i32* %arrayidx210, align 4
  %arrayidx309 = getelementptr inbounds i16, i16* %sp.012, i32 -6
  %59 = load i16, i16* %arrayidx309, align 2
  %conv310 = sext i16 %59 to i32
  %mul311 = mul nsw i32 %conv310, %conv266
  %add313 = add nsw i32 %mul311, %44
  store i32 %add313, i32* %arrayidx259, align 4
  %arrayidx315 = getelementptr inbounds i16, i16* %sp.012, i32 -7
  %60 = load i16, i16* %arrayidx315, align 2
  %conv316 = sext i16 %60 to i32
  %mul317 = mul nsw i32 %conv316, %conv266
  %add319 = add nsw i32 %mul317, %43
  store i32 %add319, i32* %arrayidx318, align 4
  %inc321 = add nuw nsw i32 %i.013, 1
  %exitcond = icmp eq i32 %inc321, 160
  br i1 %exitcond, label %for.body326.preheader, label %for.body264

for.body326.preheader:                            ; preds = %for.body264
  %shl32823 = shl i32 %add319, 1
  store i32 %shl32823, i32* %arrayidx318, align 4
  %arrayidx327.phi.trans.insert2 = getelementptr inbounds i32, i32* %L_ACF, i32 7
  %shl3283 = shl i32 %add313, 1
  store i32 %shl3283, i32* %arrayidx327.phi.trans.insert2, align 4
  br label %for.body326.for.body326_crit_edge.for.body326.for.body326_crit_edge_crit_edge

for.body326.for.body326_crit_edge.for.body326.for.body326_crit_edge_crit_edge: ; preds = %for.body326.preheader, %for.body326.for.body326_crit_edge.for.body326.for.body326_crit_edge_crit_edge
  %dec3304 = phi i32 [ 6, %for.body326.preheader ], [ %dec330, %for.body326.for.body326_crit_edge.for.body326.for.body326_crit_edge_crit_edge ]
  %arrayidx327.phi.trans.insert.phi.trans.insert = getelementptr inbounds i32, i32* %L_ACF, i32 %dec3304
  %.pre21.pre = load i32, i32* %arrayidx327.phi.trans.insert.phi.trans.insert, align 4
  %arrayidx327.phi.trans.insert = getelementptr inbounds i32, i32* %L_ACF, i32 %dec3304
  %shl328 = shl i32 %.pre21.pre, 1
  store i32 %shl328, i32* %arrayidx327.phi.trans.insert, align 4
  %dec330 = add nsw i32 %dec3304, -1
  %cmp324 = icmp sgt i32 %dec3304, 0
  br i1 %cmp324, label %for.body326.for.body326_crit_edge.for.body326.for.body326_crit_edge_crit_edge, label %for.end331

for.end331:                                       ; preds = %for.body326.for.body326_crit_edge.for.body326.for.body326_crit_edge_crit_edge
  br i1 %cmp148, label %for.body339.preheader, label %if.end348

for.body339.preheader:                            ; preds = %for.end331
  br label %for.body339

for.body339:                                      ; preds = %for.body339.preheader, %for.body339
  %s.addr.010 = phi i16* [ %incdec.ptr341, %for.body339 ], [ %s, %for.body339.preheader ]
  %k.49 = phi i32 [ %dec346, %for.body339 ], [ 159, %for.body339.preheader ]
  %61 = load i16, i16* %s.addr.010, align 2
  %conv342 = sext i16 %61 to i32
  %shl343 = shl i32 %conv342, %scalauto.07
  %conv344 = trunc i32 %shl343 to i16
  store i16 %conv344, i16* %s.addr.010, align 2
  %incdec.ptr341 = getelementptr inbounds i16, i16* %s.addr.010, i32 1
  %dec346 = add nsw i32 %k.49, -1
  %cmp337 = icmp sgt i32 %k.49, 0
  br i1 %cmp337, label %for.body339, label %if.end348.loopexit

if.end348.loopexit:                               ; preds = %for.body339
  br label %if.end348

if.end348:                                        ; preds = %if.end348.loopexit, %for.end331
  ret void
}

; Function Attrs: noinline nounwind
define void @Gsm_LPC_Analysis.v0.C.c.c(i16* nocapture %s, i16* nocapture %LARc) local_unnamed_addr #4 {
entry:
  %ACF.i = alloca [9 x i16], align 2
  %P.i = alloca [9 x i16], align 2
  %K.i = alloca [9 x i16], align 2
  %L_ACF = alloca [9 x i32], align 4
  %arraydecay = getelementptr inbounds [9 x i32], [9 x i32]* %L_ACF, i32 0, i32 0
  call void @Autocorrelation.v0.C.c.c(i16* %s, i32* nonnull %arraydecay)
  %0 = bitcast [9 x i16]* %ACF.i to i8*
  call void @llvm.lifetime.start(i64 18, i8* nonnull %0)
  %1 = bitcast [9 x i16]* %P.i to i8*
  call void @llvm.lifetime.start(i64 18, i8* nonnull %1)
  %2 = bitcast [9 x i16]* %K.i to i8*
  call void @llvm.lifetime.start(i64 18, i8* nonnull %2)
  %3 = load i32, i32* %arraydecay, align 4
  %cmp.i = icmp eq i32 %3, 0
  br i1 %cmp.i, label %for.body.preheader.i, label %if.end.i

for.body.preheader.i:                             ; preds = %entry
  %r28.i = bitcast i16* %LARc to i8*
  call void @llvm.memset.p0i8.i32(i8* %r28.i, i8 0, i32 16, i32 2, i1 false) #6
  br label %Reflection_coefficients.v0.C.c.exit

if.end.i:                                         ; preds = %entry
  %cmp.i.i = icmp slt i32 %3, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end3.i.i

if.then.i.i:                                      ; preds = %if.end.i
  %cmp1.i.i = icmp slt i32 %3, -1073741823
  br i1 %cmp1.i.i, label %gsm_norm.v0.C.c.exit.i, label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i
  %neg.i.i = xor i32 %3, -1
  br label %if.end3.i.i

if.end3.i.i:                                      ; preds = %if.end.i.i, %if.end.i
  %a.addr.0.i.i = phi i32 [ %neg.i.i, %if.end.i.i ], [ %3, %if.end.i ]
  %tobool.i.i = icmp ugt i32 %a.addr.0.i.i, 65535
  br i1 %tobool.i.i, label %cond.true.i.i, label %cond.false13.i.i

cond.true.i.i:                                    ; preds = %if.end3.i.i
  %tobool5.i.i = icmp ugt i32 %a.addr.0.i.i, 16777215
  %shr82.i.i = lshr i32 %a.addr.0.i.i, 16
  %and9.i.i = and i32 %shr82.i.i, 255
  %shr3.i.i = lshr i32 %a.addr.0.i.i, 24
  %and9.sink.i.i = select i1 %tobool5.i.i, i32 %shr3.i.i, i32 %and9.i.i
  %.sink.i.i = select i1 %tobool5.i.i, i32 -1, i32 7
  br label %cond.end29.i.i

cond.false13.i.i:                                 ; preds = %if.end3.i.i
  %and14.i.i = and i32 %a.addr.0.i.i, 65280
  %tobool15.i.i = icmp eq i32 %and14.i.i, 0
  %shr171.i.i = lshr i32 %a.addr.0.i.i, 8
  %a.addr.0.sink.i.i = select i1 %tobool15.i.i, i32 %a.addr.0.i.i, i32 %shr171.i.i
  %.sink5.i.i = select i1 %tobool15.i.i, i32 23, i32 15
  %and23.i.i = and i32 %a.addr.0.sink.i.i, 255
  br label %cond.end29.i.i

cond.end29.i.i:                                   ; preds = %cond.false13.i.i, %cond.true.i.i
  %and23.sink.i.i = phi i32 [ %and23.i.i, %cond.false13.i.i ], [ %and9.sink.i.i, %cond.true.i.i ]
  %.sink5.sink.i.i = phi i32 [ %.sink5.i.i, %cond.false13.i.i ], [ %.sink.i.i, %cond.true.i.i ]
  %arrayidx24.i.i = getelementptr inbounds [256 x i8], [256 x i8]* @bitoff, i32 0, i32 %and23.sink.i.i
  %4 = load i8, i8* %arrayidx24.i.i, align 1
  %conv25.i.i = zext i8 %4 to i32
  %add26.i.i = add nsw i32 %conv25.i.i, %.sink5.sink.i.i
  br label %gsm_norm.v0.C.c.exit.i

gsm_norm.v0.C.c.exit.i:                           ; preds = %cond.end29.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %add26.i.i, %cond.end29.i.i ], [ 0, %if.then.i.i ]
  %shl44.i = shl i32 %3, %retval.0.i.i
  %shr245.i = lshr i32 %shl44.i, 16
  %conv746.i = trunc i32 %shr245.i to i16
  %arrayidx847.i = getelementptr inbounds [9 x i16], [9 x i16]* %ACF.i, i32 0, i32 0
  store i16 %conv746.i, i16* %arrayidx847.i, align 2
  br label %for.body5.for.body5_crit_edge.i

for.body5.for.body5_crit_edge.i:                  ; preds = %for.body5.for.body5_crit_edge.i, %gsm_norm.v0.C.c.exit.i
  %inc48.i = phi i32 [ 1, %gsm_norm.v0.C.c.exit.i ], [ %inc.i, %for.body5.for.body5_crit_edge.i ]
  %arrayidx6.phi.trans.insert.i = getelementptr inbounds [9 x i32], [9 x i32]* %L_ACF, i32 0, i32 %inc48.i
  %.pre.i = load i32, i32* %arrayidx6.phi.trans.insert.i, align 4
  %shl.i = shl i32 %.pre.i, %retval.0.i.i
  %shr2.i = lshr i32 %shl.i, 16
  %conv7.i = trunc i32 %shr2.i to i16
  %arrayidx8.i = getelementptr inbounds [9 x i16], [9 x i16]* %ACF.i, i32 0, i32 %inc48.i
  store i16 %conv7.i, i16* %arrayidx8.i, align 2
  %inc.i = add nuw nsw i32 %inc48.i, 1
  %exitcond37.i = icmp eq i32 %inc.i, 9
  br i1 %exitcond37.i, label %for.body14.preheader.i, label %for.body5.for.body5_crit_edge.i

for.body14.preheader.i:                           ; preds = %for.body5.for.body5_crit_edge.i
  %scevgep.i = getelementptr inbounds [9 x i16], [9 x i16]* %K.i, i32 0, i32 1
  %scevgep34.i = bitcast i16* %scevgep.i to i8*
  %scevgep35.i = getelementptr inbounds [9 x i16], [9 x i16]* %ACF.i, i32 0, i32 1
  %scevgep3536.i = bitcast i16* %scevgep35.i to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %scevgep34.i, i8* %scevgep3536.i, i32 14, i32 2, i1 false) #6
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %1, i8* nonnull %0, i32 18, i32 2, i1 false) #6
  %arrayidx33.i = getelementptr inbounds [9 x i16], [9 x i16]* %P.i, i32 0, i32 1
  %arrayidx35.i = getelementptr inbounds [9 x i16], [9 x i16]* %P.i, i32 0, i32 0
  br label %for.body32.i

for.body32.i:                                     ; preds = %for.inc88.i, %for.body14.preheader.i
  %indvars.iv.i = phi i32 [ 8, %for.body14.preheader.i ], [ %indvars.iv.next.i, %for.inc88.i ]
  %r.addr.119.i = phi i16* [ %LARc, %for.body14.preheader.i ], [ %incdec.ptr90.i, %for.inc88.i ]
  %n.018.i = phi i32 [ 1, %for.body14.preheader.i ], [ %inc89.i, %for.inc88.i ]
  %5 = load i16, i16* %arrayidx33.i, align 2
  %cmp.i51.i = icmp slt i16 %5, 0
  br i1 %cmp.i51.i, label %cond.true.i52.i, label %gsm_abs.v0.C.c.exit.i

cond.true.i52.i:                                  ; preds = %for.body32.i
  %cmp3.i.i = icmp eq i16 %5, -32768
  %sub.i.i = sub i16 0, %5
  %cond.i.i = select i1 %cmp3.i.i, i16 32767, i16 %sub.i.i
  br label %gsm_abs.v0.C.c.exit.i

gsm_abs.v0.C.c.exit.i:                            ; preds = %cond.true.i52.i, %for.body32.i
  %cond10.i.i = phi i16 [ %cond.i.i, %cond.true.i52.i ], [ %5, %for.body32.i ]
  %6 = load i16, i16* %arrayidx35.i, align 2
  %cmp38.i = icmp slt i16 %6, %cond10.i.i
  br i1 %cmp38.i, label %for.body44.preheader.i, label %if.end49.i

for.body44.preheader.i:                           ; preds = %gsm_abs.v0.C.c.exit.i
  %r.addr.119.lcssa29.i = bitcast i16* %r.addr.119.i to i8*
  %7 = shl i32 %n.018.i, 1
  %8 = sub i32 18, %7
  call void @llvm.memset.p0i8.i32(i8* %r.addr.119.lcssa29.i, i8 0, i32 %8, i32 2, i1 false) #6
  br label %Reflection_coefficients.v0.C.c.exit

if.end49.i:                                       ; preds = %gsm_abs.v0.C.c.exit.i
  %conv1.i.i = sext i16 %6 to i32
  %cmp.i53.i = icmp eq i16 %cond10.i.i, 0
  br i1 %cmp.i53.i, label %gsm_div.v0.C.c.exit.i, label %if.end.i54.i

if.end.i54.i:                                     ; preds = %if.end49.i
  %conv.i.i = sext i16 %cond10.i.i to i32
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i, %if.end.i54.i
  %k.03.i.i = phi i32 [ 15, %if.end.i54.i ], [ %dec.i.i, %while.body.i.i ]
  %div.02.i.i = phi i16 [ 0, %if.end.i54.i ], [ %div.1.i.i, %while.body.i.i ]
  %L_num.01.i.i = phi i32 [ %conv.i.i, %if.end.i54.i ], [ %L_num.1.i.i, %while.body.i.i ]
  %dec.i.i = add nsw i32 %k.03.i.i, -1
  %shl.i.i = shl i16 %div.02.i.i, 1
  %shl6.i.i = shl i32 %L_num.01.i.i, 1
  %cmp7.i.i = icmp slt i32 %shl6.i.i, %conv1.i.i
  %sub.i55.i = select i1 %cmp7.i.i, i32 0, i32 %conv1.i.i
  %L_num.1.i.i = sub nsw i32 %shl6.i.i, %sub.i55.i
  %not.cmp7.i.i = xor i1 %cmp7.i.i, true
  %inc.i.i = zext i1 %not.cmp7.i.i to i16
  %div.1.i.i = or i16 %inc.i.i, %shl.i.i
  %tobool.i56.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool.i56.i, label %gsm_div.v0.C.c.exit.i.loopexit, label %while.body.i.i

gsm_div.v0.C.c.exit.i.loopexit:                   ; preds = %while.body.i.i
  br label %gsm_div.v0.C.c.exit.i

gsm_div.v0.C.c.exit.i:                            ; preds = %gsm_div.v0.C.c.exit.i.loopexit, %if.end49.i
  %retval.0.i57.i = phi i16 [ 0, %if.end49.i ], [ %div.1.i.i, %gsm_div.v0.C.c.exit.i.loopexit ]
  %cmp54.i = icmp sgt i16 %5, 0
  %sub.i = sub i16 0, %retval.0.i57.i
  %sub.call51.c.i = select i1 %cmp54.i, i16 %sub.i, i16 %retval.0.i57.i
  store i16 %sub.call51.c.i, i16* %r.addr.119.i, align 2
  %cmp60.i = icmp eq i32 %n.018.i, 8
  br i1 %cmp60.i, label %Reflection_coefficients.v0.C.c.exit.loopexit, label %for.cond69.preheader.i

for.cond69.preheader.i:                           ; preds = %gsm_div.v0.C.c.exit.i
  %cmp.i58.i = icmp eq i16 %sub.call51.c.i, -32768
  %cmp3.i59.i = icmp eq i16 %5, -32768
  %or.cond.i.i = and i1 %cmp3.i59.i, %cmp.i58.i
  br i1 %or.cond.i.i, label %gsm_mult_r.v0.C.c.exit.i, label %if.else.i.i

if.else.i.i:                                      ; preds = %for.cond69.preheader.i
  %conv5.i.i = sext i16 %5 to i32
  %conv6.i.i = sext i16 %sub.call51.c.i to i32
  %mul.i.i = mul nsw i32 %conv6.i.i, %conv5.i.i
  %add.i.i = add nsw i32 %mul.i.i, 16384
  %shr1.i.i = lshr i32 %add.i.i, 15
  %conv7.i.i = trunc i32 %shr1.i.i to i16
  br label %gsm_mult_r.v0.C.c.exit.i

gsm_mult_r.v0.C.c.exit.i:                         ; preds = %if.else.i.i, %for.cond69.preheader.i
  %retval.0.i60.i = phi i16 [ %conv7.i.i, %if.else.i.i ], [ 32767, %for.cond69.preheader.i ]
  %call83.c15.i.c = call i16 @gsm_add.v0.C.c.c(i16 %6, i16 %retval.0.i60.i)
  store i16 %call83.c15.i.c, i16* %arrayidx35.i, align 2
  %cmp7116.i = icmp sgt i32 %n.018.i, 7
  br i1 %cmp7116.i, label %for.inc88.i, label %for.body73.i.preheader

for.body73.i.preheader:                           ; preds = %gsm_mult_r.v0.C.c.exit.i
  br label %for.body73.i

for.body73.i:                                     ; preds = %for.body73.i.preheader, %for.body73.for.body73_crit_edge.i
  %9 = phi i16 [ %.pre38.i, %for.body73.for.body73_crit_edge.i ], [ %sub.call51.c.i, %for.body73.i.preheader ]
  %m.017.i = phi i32 [ %add.i, %for.body73.for.body73_crit_edge.i ], [ 1, %for.body73.i.preheader ]
  %arrayidx74.i = getelementptr inbounds [9 x i16], [9 x i16]* %K.i, i32 0, i32 %m.017.i
  %10 = load i16, i16* %arrayidx74.i, align 2
  %cmp.i61.i = icmp eq i16 %9, -32768
  %cmp3.i62.i = icmp eq i16 %10, -32768
  %or.cond.i63.i = and i1 %cmp.i61.i, %cmp3.i62.i
  br i1 %or.cond.i63.i, label %gsm_mult_r.v0.C.c.exit72.i, label %if.else.i70.i

if.else.i70.i:                                    ; preds = %for.body73.i
  %conv5.i64.i = sext i16 %10 to i32
  %conv6.i65.i = sext i16 %9 to i32
  %mul.i66.i = mul nsw i32 %conv5.i64.i, %conv6.i65.i
  %add.i67.i = add nsw i32 %mul.i66.i, 16384
  %shr1.i68.i = lshr i32 %add.i67.i, 15
  %conv7.i69.i = trunc i32 %shr1.i68.i to i16
  br label %gsm_mult_r.v0.C.c.exit72.i

gsm_mult_r.v0.C.c.exit72.i:                       ; preds = %if.else.i70.i, %for.body73.i
  %retval.0.i71.i = phi i16 [ %conv7.i69.i, %if.else.i70.i ], [ 32767, %for.body73.i ]
  %add.i = add nuw nsw i32 %m.017.i, 1
  %arrayidx76.i = getelementptr inbounds [9 x i16], [9 x i16]* %P.i, i32 0, i32 %add.i
  %11 = load i16, i16* %arrayidx76.i, align 2
  %call77.c.i.c = call i16 @gsm_add.v0.C.c.c(i16 %11, i16 %retval.0.i71.i)
  %arrayidx78.i = getelementptr inbounds [9 x i16], [9 x i16]* %P.i, i32 0, i32 %m.017.i
  store i16 %call77.c.i.c, i16* %arrayidx78.i, align 2
  %12 = load i16, i16* %r.addr.119.i, align 2
  %cmp.i73.i = icmp eq i16 %12, -32768
  %cmp3.i74.i = icmp eq i16 %11, -32768
  %or.cond.i75.i = and i1 %cmp3.i74.i, %cmp.i73.i
  br i1 %or.cond.i75.i, label %gsm_mult_r.v0.C.c.exit84.i, label %if.else.i82.i

if.else.i82.i:                                    ; preds = %gsm_mult_r.v0.C.c.exit72.i
  %conv5.i76.i = sext i16 %11 to i32
  %conv6.i77.i = sext i16 %12 to i32
  %mul.i78.i = mul nsw i32 %conv6.i77.i, %conv5.i76.i
  %add.i79.i = add nsw i32 %mul.i78.i, 16384
  %shr1.i80.i = lshr i32 %add.i79.i, 15
  %conv7.i81.i = trunc i32 %shr1.i80.i to i16
  br label %gsm_mult_r.v0.C.c.exit84.i

gsm_mult_r.v0.C.c.exit84.i:                       ; preds = %if.else.i82.i, %gsm_mult_r.v0.C.c.exit72.i
  %retval.0.i83.i = phi i16 [ %conv7.i81.i, %if.else.i82.i ], [ 32767, %gsm_mult_r.v0.C.c.exit72.i ]
  %call83.c.i.c = call i16 @gsm_add.v0.C.c.c(i16 %10, i16 %retval.0.i83.i)
  store i16 %call83.c.i.c, i16* %arrayidx74.i, align 2
  %exitcond.i = icmp eq i32 %add.i, %indvars.iv.i
  br i1 %exitcond.i, label %for.inc88.i.loopexit, label %for.body73.for.body73_crit_edge.i

for.body73.for.body73_crit_edge.i:                ; preds = %gsm_mult_r.v0.C.c.exit84.i
  %.pre38.i = load i16, i16* %r.addr.119.i, align 2
  br label %for.body73.i

for.inc88.i.loopexit:                             ; preds = %gsm_mult_r.v0.C.c.exit84.i
  br label %for.inc88.i

for.inc88.i:                                      ; preds = %for.inc88.i.loopexit, %gsm_mult_r.v0.C.c.exit.i
  %inc89.i = add nuw nsw i32 %n.018.i, 1
  %incdec.ptr90.i = getelementptr inbounds i16, i16* %r.addr.119.i, i32 1
  %cmp30.i = icmp slt i32 %inc89.i, 9
  %indvars.iv.next.i = add nsw i32 %indvars.iv.i, -1
  br i1 %cmp30.i, label %for.body32.i, label %Reflection_coefficients.v0.C.c.exit.loopexit

Reflection_coefficients.v0.C.c.exit.loopexit:     ; preds = %for.inc88.i, %gsm_div.v0.C.c.exit.i
  br label %Reflection_coefficients.v0.C.c.exit

Reflection_coefficients.v0.C.c.exit:              ; preds = %Reflection_coefficients.v0.C.c.exit.loopexit, %for.body.preheader.i, %for.body44.preheader.i
  call void @llvm.lifetime.end(i64 18, i8* nonnull %0)
  call void @llvm.lifetime.end(i64 18, i8* nonnull %1)
  call void @llvm.lifetime.end(i64 18, i8* nonnull %2)
  br label %for.body.i

for.body.i:                                       ; preds = %if.end17.i, %Reflection_coefficients.v0.C.c.exit
  %r.addr.05.i = phi i16* [ %LARc, %Reflection_coefficients.v0.C.c.exit ], [ %incdec.ptr.i, %if.end17.i ]
  %i.04.i = phi i32 [ 1, %Reflection_coefficients.v0.C.c.exit ], [ %inc.i3, %if.end17.i ]
  %13 = load i16, i16* %r.addr.05.i, align 2
  %cmp.i5 = icmp slt i16 %13, 0
  br i1 %cmp.i5, label %cond.true.i, label %gsm_abs.v0.C.c.exit

cond.true.i:                                      ; preds = %for.body.i
  %cmp3.i = icmp eq i16 %13, -32768
  %sub.i6 = sub i16 0, %13
  br i1 %cmp3.i, label %if.else.i, label %gsm_abs.v0.C.c.exit

gsm_abs.v0.C.c.exit:                              ; preds = %cond.true.i, %for.body.i
  %cond10.i = phi i16 [ %sub.i6, %cond.true.i ], [ %13, %for.body.i ]
  %cmp1.i = icmp slt i16 %cond10.i, 22118
  br i1 %cmp1.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %gsm_abs.v0.C.c.exit
  %shr3.i = ashr i16 %cond10.i, 1
  br label %if.end17.i

if.else.i:                                        ; preds = %cond.true.i, %gsm_abs.v0.C.c.exit
  %cond10.i2 = phi i16 [ %cond10.i, %gsm_abs.v0.C.c.exit ], [ 32767, %cond.true.i ]
  %cmp6.i = icmp slt i16 %cond10.i2, 31130
  %sub.i1 = add i16 %cond10.i2, -11059
  %sub13.i = shl i16 %cond10.i2, 2
  %shl.i2 = add i16 %sub13.i, 26624
  %temp.0.i = select i1 %cmp6.i, i16 %sub.i1, i16 %shl.i2
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.else.i, %if.then.i
  %temp.1.i = phi i16 [ %shr3.i, %if.then.i ], [ %temp.0.i, %if.else.i ]
  %sub22.i = sub i16 0, %temp.1.i
  %cond.i = select i1 %cmp.i5, i16 %sub22.i, i16 %temp.1.i
  store i16 %cond.i, i16* %r.addr.05.i, align 2
  %inc.i3 = add nuw nsw i32 %i.04.i, 1
  %incdec.ptr.i = getelementptr inbounds i16, i16* %r.addr.05.i, i32 1
  %exitcond.i4 = icmp eq i32 %inc.i3, 9
  br i1 %exitcond.i4, label %Transformation_to_Log_Area_Ratios.v0.C.c.exit, label %for.body.i

Transformation_to_Log_Area_Ratios.v0.C.c.exit:    ; preds = %if.end17.i
  %14 = load i16, i16* %LARc, align 2
  %call.c.i.c = call i16 @gsm_mult.v0.C.c.c(i16 20480, i16 %14)
  %call1.c.i.c = call i16 @gsm_add.v0.C.c.c(i16 %call.c.i.c, i16 0)
  %call2.c.i.c = call i16 @gsm_add.v0.C.c.c(i16 %call1.c.i.c, i16 256)
  %conv.i8 = sext i16 %call2.c.i.c to i32
  %shr1.i = lshr i32 %conv.i8, 9
  %15 = trunc i32 %shr1.i to i16
  %cmp.i9 = icmp sgt i16 %15, 31
  br i1 %cmp.i9, label %cond.end12.i, label %cond.false.i

cond.false.i:                                     ; preds = %Transformation_to_Log_Area_Ratios.v0.C.c.exit
  %cmp7.i = icmp slt i16 %15, -32
  br i1 %cmp7.i, label %cond.end12.i, label %cond.false10.i

cond.false10.i:                                   ; preds = %cond.false.i
  %sub.i10 = add nuw nsw i32 %shr1.i, 32
  %phitmp.i = trunc i32 %sub.i10 to i16
  br label %cond.end12.i

cond.end12.i:                                     ; preds = %cond.false10.i, %cond.false.i, %Transformation_to_Log_Area_Ratios.v0.C.c.exit
  %cond13.i = phi i16 [ 63, %Transformation_to_Log_Area_Ratios.v0.C.c.exit ], [ %phitmp.i, %cond.false10.i ], [ 0, %cond.false.i ]
  store i16 %cond13.i, i16* %LARc, align 2
  %incdec.ptr.i11 = getelementptr inbounds i16, i16* %LARc, i32 1
  %16 = load i16, i16* %incdec.ptr.i11, align 2
  %call15.c.i.c = call i16 @gsm_mult.v0.C.c.c(i16 20480, i16 %16)
  %call16.c.i.c = call i16 @gsm_add.v0.C.c.c(i16 %call15.c.i.c, i16 0)
  %call17.c.i.c = call i16 @gsm_add.v0.C.c.c(i16 %call16.c.i.c, i16 256)
  %conv18.i = sext i16 %call17.c.i.c to i32
  %shr194.i = lshr i32 %conv18.i, 9
  %17 = trunc i32 %shr194.i to i16
  %cmp22.i = icmp sgt i16 %17, 31
  br i1 %cmp22.i, label %cond.end35.i, label %cond.false25.i

cond.false25.i:                                   ; preds = %cond.end12.i
  %cmp27.i = icmp slt i16 %17, -32
  br i1 %cmp27.i, label %cond.end35.i, label %cond.false30.i

cond.false30.i:                                   ; preds = %cond.false25.i
  %sub32.i = add nuw nsw i32 %shr194.i, 32
  %phitmp33.i = trunc i32 %sub32.i to i16
  br label %cond.end35.i

cond.end35.i:                                     ; preds = %cond.false30.i, %cond.false25.i, %cond.end12.i
  %cond36.i = phi i16 [ 63, %cond.end12.i ], [ %phitmp33.i, %cond.false30.i ], [ 0, %cond.false25.i ]
  store i16 %cond36.i, i16* %incdec.ptr.i11, align 2
  %incdec.ptr38.i = getelementptr inbounds i16, i16* %LARc, i32 2
  %18 = load i16, i16* %incdec.ptr38.i, align 2
  %call39.c.i.c = call i16 @gsm_mult.v0.C.c.c(i16 20480, i16 %18)
  %call40.c.i.c = call i16 @gsm_add.v0.C.c.c(i16 %call39.c.i.c, i16 2048)
  %call41.c.i.c = call i16 @gsm_add.v0.C.c.c(i16 %call40.c.i.c, i16 256)
  %conv42.i = sext i16 %call41.c.i.c to i32
  %shr438.i = lshr i32 %conv42.i, 9
  %19 = trunc i32 %shr438.i to i16
  %cmp46.i = icmp sgt i16 %19, 15
  br i1 %cmp46.i, label %cond.end59.i, label %cond.false49.i

cond.false49.i:                                   ; preds = %cond.end35.i
  %cmp51.i = icmp slt i16 %19, -16
  br i1 %cmp51.i, label %cond.end59.i, label %cond.false54.i

cond.false54.i:                                   ; preds = %cond.false49.i
  %sub56.i = add nuw nsw i32 %shr438.i, 16
  %phitmp35.i = trunc i32 %sub56.i to i16
  br label %cond.end59.i

cond.end59.i:                                     ; preds = %cond.false54.i, %cond.false49.i, %cond.end35.i
  %cond60.i = phi i16 [ 31, %cond.end35.i ], [ %phitmp35.i, %cond.false54.i ], [ 0, %cond.false49.i ]
  store i16 %cond60.i, i16* %incdec.ptr38.i, align 2
  %incdec.ptr62.i = getelementptr inbounds i16, i16* %LARc, i32 3
  %20 = load i16, i16* %incdec.ptr62.i, align 2
  %call63.c.i.c = call i16 @gsm_mult.v0.C.c.c(i16 20480, i16 %20)
  %call64.c.i.c = call i16 @gsm_add.v0.C.c.c(i16 %call63.c.i.c, i16 -2560)
  %call65.c.i.c = call i16 @gsm_add.v0.C.c.c(i16 %call64.c.i.c, i16 256)
  %conv66.i = sext i16 %call65.c.i.c to i32
  %shr6712.i = lshr i32 %conv66.i, 9
  %21 = trunc i32 %shr6712.i to i16
  %cmp70.i = icmp sgt i16 %21, 15
  br i1 %cmp70.i, label %cond.end83.i, label %cond.false73.i

cond.false73.i:                                   ; preds = %cond.end59.i
  %cmp75.i = icmp slt i16 %21, -16
  br i1 %cmp75.i, label %cond.end83.i, label %cond.false78.i

cond.false78.i:                                   ; preds = %cond.false73.i
  %sub80.i = add nuw nsw i32 %shr6712.i, 16
  %phitmp37.i = trunc i32 %sub80.i to i16
  br label %cond.end83.i

cond.end83.i:                                     ; preds = %cond.false78.i, %cond.false73.i, %cond.end59.i
  %cond84.i = phi i16 [ 31, %cond.end59.i ], [ %phitmp37.i, %cond.false78.i ], [ 0, %cond.false73.i ]
  store i16 %cond84.i, i16* %incdec.ptr62.i, align 2
  %incdec.ptr86.i = getelementptr inbounds i16, i16* %LARc, i32 4
  %22 = load i16, i16* %incdec.ptr86.i, align 2
  %call87.c.i.c = call i16 @gsm_mult.v0.C.c.c(i16 13964, i16 %22)
  %call88.c.i.c = call i16 @gsm_add.v0.C.c.c(i16 %call87.c.i.c, i16 94)
  %call89.c.i.c = call i16 @gsm_add.v0.C.c.c(i16 %call88.c.i.c, i16 256)
  %conv90.i = sext i16 %call89.c.i.c to i32
  %shr9116.i = lshr i32 %conv90.i, 9
  %23 = trunc i32 %shr9116.i to i16
  %cmp94.i = icmp sgt i16 %23, 7
  br i1 %cmp94.i, label %cond.end107.i, label %cond.false97.i

cond.false97.i:                                   ; preds = %cond.end83.i
  %cmp99.i = icmp slt i16 %23, -8
  br i1 %cmp99.i, label %cond.end107.i, label %cond.false102.i

cond.false102.i:                                  ; preds = %cond.false97.i
  %sub104.i = add nuw nsw i32 %shr9116.i, 8
  %phitmp39.i = trunc i32 %sub104.i to i16
  br label %cond.end107.i

cond.end107.i:                                    ; preds = %cond.false102.i, %cond.false97.i, %cond.end83.i
  %cond108.i = phi i16 [ 15, %cond.end83.i ], [ %phitmp39.i, %cond.false102.i ], [ 0, %cond.false97.i ]
  store i16 %cond108.i, i16* %incdec.ptr86.i, align 2
  %incdec.ptr110.i = getelementptr inbounds i16, i16* %LARc, i32 5
  %24 = load i16, i16* %incdec.ptr110.i, align 2
  %call111.c.i.c = call i16 @gsm_mult.v0.C.c.c(i16 15360, i16 %24)
  %call112.c.i.c = call i16 @gsm_add.v0.C.c.c(i16 %call111.c.i.c, i16 -1792)
  %call113.c.i.c = call i16 @gsm_add.v0.C.c.c(i16 %call112.c.i.c, i16 256)
  %conv114.i = sext i16 %call113.c.i.c to i32
  %shr11520.i = lshr i32 %conv114.i, 9
  %25 = trunc i32 %shr11520.i to i16
  %cmp118.i = icmp sgt i16 %25, 7
  br i1 %cmp118.i, label %cond.end131.i, label %cond.false121.i

cond.false121.i:                                  ; preds = %cond.end107.i
  %cmp123.i = icmp slt i16 %25, -8
  br i1 %cmp123.i, label %cond.end131.i, label %cond.false126.i

cond.false126.i:                                  ; preds = %cond.false121.i
  %sub128.i = add nuw nsw i32 %shr11520.i, 8
  %phitmp41.i = trunc i32 %sub128.i to i16
  br label %cond.end131.i

cond.end131.i:                                    ; preds = %cond.false126.i, %cond.false121.i, %cond.end107.i
  %cond132.i = phi i16 [ 15, %cond.end107.i ], [ %phitmp41.i, %cond.false126.i ], [ 0, %cond.false121.i ]
  store i16 %cond132.i, i16* %incdec.ptr110.i, align 2
  %incdec.ptr134.i = getelementptr inbounds i16, i16* %LARc, i32 6
  %26 = load i16, i16* %incdec.ptr134.i, align 2
  %call135.c.i.c = call i16 @gsm_mult.v0.C.c.c(i16 8534, i16 %26)
  %call136.c.i.c = call i16 @gsm_add.v0.C.c.c(i16 %call135.c.i.c, i16 -341)
  %call137.c.i.c = call i16 @gsm_add.v0.C.c.c(i16 %call136.c.i.c, i16 256)
  %conv138.i = sext i16 %call137.c.i.c to i32
  %shr13924.i = lshr i32 %conv138.i, 9
  %27 = trunc i32 %shr13924.i to i16
  %cmp142.i = icmp sgt i16 %27, 3
  br i1 %cmp142.i, label %cond.end155.i, label %cond.false145.i

cond.false145.i:                                  ; preds = %cond.end131.i
  %cmp147.i = icmp slt i16 %27, -4
  br i1 %cmp147.i, label %cond.end155.i, label %cond.false150.i

cond.false150.i:                                  ; preds = %cond.false145.i
  %sub152.i = add nuw nsw i32 %shr13924.i, 4
  %phitmp43.i = trunc i32 %sub152.i to i16
  br label %cond.end155.i

cond.end155.i:                                    ; preds = %cond.false150.i, %cond.false145.i, %cond.end131.i
  %cond156.i = phi i16 [ 7, %cond.end131.i ], [ %phitmp43.i, %cond.false150.i ], [ 0, %cond.false145.i ]
  store i16 %cond156.i, i16* %incdec.ptr134.i, align 2
  %incdec.ptr158.i = getelementptr inbounds i16, i16* %LARc, i32 7
  %28 = load i16, i16* %incdec.ptr158.i, align 2
  %call159.c.i.c = call i16 @gsm_mult.v0.C.c.c(i16 9036, i16 %28)
  %call160.c.i.c = call i16 @gsm_add.v0.C.c.c(i16 %call159.c.i.c, i16 -1144)
  %call161.c.i.c = call i16 @gsm_add.v0.C.c.c(i16 %call160.c.i.c, i16 256)
  %conv162.i = sext i16 %call161.c.i.c to i32
  %shr16328.i = lshr i32 %conv162.i, 9
  %29 = trunc i32 %shr16328.i to i16
  %cmp166.i = icmp sgt i16 %29, 3
  br i1 %cmp166.i, label %Quantization_and_coding.v0.C.c.exit, label %cond.false169.i

cond.false169.i:                                  ; preds = %cond.end155.i
  %cmp171.i = icmp slt i16 %29, -4
  br i1 %cmp171.i, label %Quantization_and_coding.v0.C.c.exit, label %cond.false174.i

cond.false174.i:                                  ; preds = %cond.false169.i
  %sub176.i = add nuw nsw i32 %shr16328.i, 4
  %phitmp45.i = trunc i32 %sub176.i to i16
  br label %Quantization_and_coding.v0.C.c.exit

Quantization_and_coding.v0.C.c.exit:              ; preds = %cond.end155.i, %cond.false169.i, %cond.false174.i
  %cond180.i = phi i16 [ 7, %cond.end155.i ], [ %phitmp45.i, %cond.false174.i ], [ 0, %cond.false169.i ]
  store i16 %cond180.i, i16* %incdec.ptr158.i, align 2
  ret void
}

; Function Attrs: noinline norecurse nounwind readnone
define i16 @gsm_mult.v0.C.c.c(i16 %a, i16 %b) local_unnamed_addr #5 {
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
define i16 @gsm_add.v0.C.c.c(i16 %a, i16 %b) local_unnamed_addr #5 {
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

attributes #0 = { noinline nounwind ssp "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { norecurse nounwind readnone }
attributes #3 = { argmemonly nounwind }
attributes #4 = { noinline nounwind }
attributes #5 = { noinline norecurse nounwind readnone }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
