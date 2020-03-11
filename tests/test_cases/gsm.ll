; ModuleID = 'gsm.c'
source_filename = "gsm.c"
target datalayout = "e-m:o-p:32:32-f64:32:64-f80:128-n8:16:32-S128"
target triple = "i386-apple-macosx10.13.0"

@bitoff = constant [256 x i8] c"\08\07\06\06\05\05\05\05\04\04\04\04\04\04\04\04\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 1
@inData = constant [160 x i16] [i16 81, i16 10854, i16 1893, i16 -10291, i16 7614, i16 29718, i16 20475, i16 -29215, i16 -18949, i16 -29806, i16 -32017, i16 1596, i16 15744, i16 -3088, i16 -17413, i16 -22123, i16 6798, i16 -13276, i16 3819, i16 -16273, i16 -1573, i16 -12523, i16 -27103, i16 -193, i16 -25588, i16 4698, i16 -30436, i16 15264, i16 -1393, i16 11418, i16 11370, i16 4986, i16 7869, i16 -1903, i16 9123, i16 -31726, i16 -25237, i16 -14155, i16 17982, i16 32427, i16 -12439, i16 -15931, i16 -21622, i16 7896, i16 1689, i16 28113, i16 3615, i16 22131, i16 -5572, i16 -20110, i16 12387, i16 9177, i16 -24544, i16 12480, i16 21546, i16 -17842, i16 -13645, i16 20277, i16 9987, i16 17652, i16 -11464, i16 -17326, i16 -10552, i16 -27100, i16 207, i16 27612, i16 2517, i16 7167, i16 -29734, i16 -22441, i16 30039, i16 -2368, i16 12813, i16 300, i16 -25555, i16 9087, i16 29022, i16 -6559, i16 -20311, i16 -14347, i16 -7555, i16 -21709, i16 -3676, i16 -30082, i16 -3190, i16 -30979, i16 8580, i16 27126, i16 3414, i16 -4603, i16 -22303, i16 -17143, i16 13788, i16 -1096, i16 -14617, i16 22071, i16 -13552, i16 32646, i16 16689, i16 -8473, i16 -12733, i16 10503, i16 20745, i16 6696, i16 -26842, i16 -31015, i16 3792, i16 -19864, i16 -20431, i16 -30307, i16 32421, i16 -13237, i16 9006, i16 18249, i16 2403, i16 -7996, i16 -14827, i16 -5860, i16 7122, i16 29817, i16 -31894, i16 17955, i16 28836, i16 -31297, i16 31821, i16 -27502, i16 12276, i16 -5587, i16 -22105, i16 9192, i16 -22549, i16 15675, i16 -12265, i16 7212, i16 -23749, i16 -12856, i16 -5857, i16 7521, i16 17349, i16 13773, i16 -3091, i16 -17812, i16 -9655, i16 26667, i16 7902, i16 2487, i16 3177, i16 29412, i16 -20224, i16 -2776, i16 24084, i16 -7963, i16 -10438, i16 -11938, i16 -14833, i16 -6658, i16 32058, i16 4020, i16 10461, i16 15159], align 2
@outData = constant [160 x i16] [i16 80, i16 10848, i16 1888, i16 -10288, i16 7616, i16 29712, i16 20480, i16 -29216, i16 -18944, i16 -29808, i16 -32016, i16 1600, i16 15744, i16 -3088, i16 -17408, i16 -22128, i16 6800, i16 -13280, i16 3824, i16 -16272, i16 -1568, i16 -12528, i16 -27104, i16 -192, i16 -25584, i16 4704, i16 -30432, i16 15264, i16 -1392, i16 11424, i16 11376, i16 4992, i16 7872, i16 -1904, i16 9120, i16 -31728, i16 -25232, i16 -14160, i16 17984, i16 32432, i16 -12432, i16 -15936, i16 -21616, i16 7904, i16 1696, i16 28112, i16 3616, i16 22128, i16 -5568, i16 -20112, i16 12384, i16 9184, i16 -24544, i16 12480, i16 21552, i16 -17840, i16 -13648, i16 20272, i16 9984, i16 17648, i16 -11456, i16 -17328, i16 -10544, i16 -27104, i16 208, i16 27616, i16 2512, i16 7168, i16 -29728, i16 -22448, i16 30032, i16 -2368, i16 12816, i16 304, i16 -25552, i16 9088, i16 29024, i16 -6560, i16 -20304, i16 -14352, i16 -7552, i16 -21712, i16 -3680, i16 -30080, i16 -3184, i16 -30976, i16 8576, i16 27120, i16 3408, i16 -4608, i16 -22304, i16 -17136, i16 13792, i16 -1088, i16 -14624, i16 22064, i16 -13552, i16 32640, i16 16688, i16 -8480, i16 -12736, i16 10496, i16 20752, i16 6704, i16 -26848, i16 -31008, i16 3792, i16 -19856, i16 -20432, i16 -30304, i16 32416, i16 -13232, i16 9008, i16 18256, i16 2400, i16 -8000, i16 -14832, i16 -5856, i16 7120, i16 29824, i16 -31888, i16 17952, i16 28832, i16 -31296, i16 31824, i16 -27504, i16 12272, i16 -5584, i16 -22112, i16 9200, i16 -22544, i16 15680, i16 -12272, i16 7216, i16 -23744, i16 -12848, i16 -5856, i16 7520, i16 17344, i16 13776, i16 -3088, i16 -17808, i16 -9648, i16 26672, i16 7904, i16 2480, i16 3184, i16 29408, i16 -20224, i16 -2768, i16 24080, i16 -7968, i16 -10432, i16 -11936, i16 -14832, i16 -6656, i16 32064, i16 4016, i16 10464, i16 15152], align 2
@outLARc = constant [8 x i16] [i16 32, i16 33, i16 22, i16 13, i16 7, i16 5, i16 3, i16 2], align 2
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind ssp
define signext i16 @gsm_add(i16 signext %a, i16 signext %b) #0 {
entry:
  %a.addr = alloca i16, align 2
  %b.addr = alloca i16, align 2
  %sum = alloca i32, align 4
  store i16 %a, i16* %a.addr, align 2
  store i16 %b, i16* %b.addr, align 2
  %0 = load i16, i16* %a.addr, align 2
  %conv = sext i16 %0 to i32
  %1 = load i16, i16* %b.addr, align 2
  %conv1 = sext i16 %1 to i32
  %add = add nsw i32 %conv, %conv1
  store i32 %add, i32* %sum, align 4
  %2 = load i32, i32* %sum, align 4
  %cmp = icmp slt i32 %2, -32768
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end7

cond.false:                                       ; preds = %entry
  %3 = load i32, i32* %sum, align 4
  %cmp3 = icmp sgt i32 %3, 32767
  br i1 %cmp3, label %cond.true5, label %cond.false6

cond.true5:                                       ; preds = %cond.false
  br label %cond.end

cond.false6:                                      ; preds = %cond.false
  %4 = load i32, i32* %sum, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false6, %cond.true5
  %cond = phi i32 [ 32767, %cond.true5 ], [ %4, %cond.false6 ]
  br label %cond.end7

cond.end7:                                        ; preds = %cond.end, %cond.true
  %cond8 = phi i32 [ -32768, %cond.true ], [ %cond, %cond.end ]
  %conv9 = trunc i32 %cond8 to i16
  ret i16 %conv9
}

; Function Attrs: noinline nounwind ssp
define signext i16 @gsm_mult(i16 signext %a, i16 signext %b) #0 {
entry:
  %retval = alloca i16, align 2
  %a.addr = alloca i16, align 2
  %b.addr = alloca i16, align 2
  store i16 %a, i16* %a.addr, align 2
  store i16 %b, i16* %b.addr, align 2
  %0 = load i16, i16* %a.addr, align 2
  %conv = sext i16 %0 to i32
  %cmp = icmp eq i32 %conv, -32768
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load i16, i16* %b.addr, align 2
  %conv2 = sext i16 %1 to i32
  %cmp3 = icmp eq i32 %conv2, -32768
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  store i16 32767, i16* %retval, align 2
  br label %return

if.else:                                          ; preds = %land.lhs.true, %entry
  %2 = load i16, i16* %a.addr, align 2
  %conv5 = sext i16 %2 to i32
  %3 = load i16, i16* %b.addr, align 2
  %conv6 = sext i16 %3 to i32
  %mul = mul nsw i32 %conv5, %conv6
  %shr = ashr i32 %mul, 15
  %conv7 = trunc i32 %shr to i16
  store i16 %conv7, i16* %retval, align 2
  br label %return

return:                                           ; preds = %if.else, %if.then
  %4 = load i16, i16* %retval, align 2
  ret i16 %4
}

; Function Attrs: noinline nounwind ssp
define signext i16 @gsm_mult_r(i16 signext %a, i16 signext %b) #0 {
entry:
  %retval = alloca i16, align 2
  %a.addr = alloca i16, align 2
  %b.addr = alloca i16, align 2
  %prod = alloca i32, align 4
  store i16 %a, i16* %a.addr, align 2
  store i16 %b, i16* %b.addr, align 2
  %0 = load i16, i16* %b.addr, align 2
  %conv = sext i16 %0 to i32
  %cmp = icmp eq i32 %conv, -32768
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load i16, i16* %a.addr, align 2
  %conv2 = sext i16 %1 to i32
  %cmp3 = icmp eq i32 %conv2, -32768
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  store i16 32767, i16* %retval, align 2
  br label %return

if.else:                                          ; preds = %land.lhs.true, %entry
  %2 = load i16, i16* %a.addr, align 2
  %conv5 = sext i16 %2 to i32
  %3 = load i16, i16* %b.addr, align 2
  %conv6 = sext i16 %3 to i32
  %mul = mul nsw i32 %conv5, %conv6
  %add = add nsw i32 %mul, 16384
  store i32 %add, i32* %prod, align 4
  %4 = load i32, i32* %prod, align 4
  %shr = ashr i32 %4, 15
  store i32 %shr, i32* %prod, align 4
  %5 = load i32, i32* %prod, align 4
  %and = and i32 %5, 65535
  %conv7 = trunc i32 %and to i16
  store i16 %conv7, i16* %retval, align 2
  br label %return

return:                                           ; preds = %if.else, %if.then
  %6 = load i16, i16* %retval, align 2
  ret i16 %6
}

; Function Attrs: noinline nounwind ssp
define signext i16 @gsm_abs(i16 signext %a) #0 {
entry:
  %a.addr = alloca i16, align 2
  store i16 %a, i16* %a.addr, align 2
  %0 = load i16, i16* %a.addr, align 2
  %conv = sext i16 %0 to i32
  %cmp = icmp slt i32 %conv, 0
  br i1 %cmp, label %cond.true, label %cond.false7

cond.true:                                        ; preds = %entry
  %1 = load i16, i16* %a.addr, align 2
  %conv2 = sext i16 %1 to i32
  %cmp3 = icmp eq i32 %conv2, -32768
  br i1 %cmp3, label %cond.true5, label %cond.false

cond.true5:                                       ; preds = %cond.true
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %2 = load i16, i16* %a.addr, align 2
  %conv6 = sext i16 %2 to i32
  %sub = sub nsw i32 0, %conv6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true5
  %cond = phi i32 [ 32767, %cond.true5 ], [ %sub, %cond.false ]
  br label %cond.end9

cond.false7:                                      ; preds = %entry
  %3 = load i16, i16* %a.addr, align 2
  %conv8 = sext i16 %3 to i32
  br label %cond.end9

cond.end9:                                        ; preds = %cond.false7, %cond.end
  %cond10 = phi i32 [ %cond, %cond.end ], [ %conv8, %cond.false7 ]
  %conv11 = trunc i32 %cond10 to i16
  ret i16 %conv11
}

; Function Attrs: noinline nounwind ssp
define signext i16 @gsm_norm(i32 %a) #0 {
entry:
  %retval = alloca i16, align 2
  %a.addr = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  %0 = load i32, i32* %a.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %a.addr, align 4
  %cmp1 = icmp sle i32 %1, -1073741824
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  store i16 0, i16* %retval, align 2
  br label %return

if.end:                                           ; preds = %if.then
  %2 = load i32, i32* %a.addr, align 4
  %neg = xor i32 %2, -1
  store i32 %neg, i32* %a.addr, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.end, %entry
  %3 = load i32, i32* %a.addr, align 4
  %and = and i32 %3, -65536
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.true, label %cond.false13

cond.true:                                        ; preds = %if.end3
  %4 = load i32, i32* %a.addr, align 4
  %and4 = and i32 %4, -16777216
  %tobool5 = icmp ne i32 %and4, 0
  br i1 %tobool5, label %cond.true6, label %cond.false

cond.true6:                                       ; preds = %cond.true
  %5 = load i32, i32* %a.addr, align 4
  %shr = ashr i32 %5, 24
  %and7 = and i32 255, %shr
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* @bitoff, i32 0, i32 %and7
  %6 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %6 to i32
  %add = add nsw i32 -1, %conv
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %7 = load i32, i32* %a.addr, align 4
  %shr8 = ashr i32 %7, 16
  %and9 = and i32 255, %shr8
  %arrayidx10 = getelementptr inbounds [256 x i8], [256 x i8]* @bitoff, i32 0, i32 %and9
  %8 = load i8, i8* %arrayidx10, align 1
  %conv11 = zext i8 %8 to i32
  %add12 = add nsw i32 7, %conv11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true6
  %cond = phi i32 [ %add, %cond.true6 ], [ %add12, %cond.false ]
  br label %cond.end29

cond.false13:                                     ; preds = %if.end3
  %9 = load i32, i32* %a.addr, align 4
  %and14 = and i32 %9, 65280
  %tobool15 = icmp ne i32 %and14, 0
  br i1 %tobool15, label %cond.true16, label %cond.false22

cond.true16:                                      ; preds = %cond.false13
  %10 = load i32, i32* %a.addr, align 4
  %shr17 = ashr i32 %10, 8
  %and18 = and i32 255, %shr17
  %arrayidx19 = getelementptr inbounds [256 x i8], [256 x i8]* @bitoff, i32 0, i32 %and18
  %11 = load i8, i8* %arrayidx19, align 1
  %conv20 = zext i8 %11 to i32
  %add21 = add nsw i32 15, %conv20
  br label %cond.end27

cond.false22:                                     ; preds = %cond.false13
  %12 = load i32, i32* %a.addr, align 4
  %and23 = and i32 255, %12
  %arrayidx24 = getelementptr inbounds [256 x i8], [256 x i8]* @bitoff, i32 0, i32 %and23
  %13 = load i8, i8* %arrayidx24, align 1
  %conv25 = zext i8 %13 to i32
  %add26 = add nsw i32 23, %conv25
  br label %cond.end27

cond.end27:                                       ; preds = %cond.false22, %cond.true16
  %cond28 = phi i32 [ %add21, %cond.true16 ], [ %add26, %cond.false22 ]
  br label %cond.end29

cond.end29:                                       ; preds = %cond.end27, %cond.end
  %cond30 = phi i32 [ %cond, %cond.end ], [ %cond28, %cond.end27 ]
  %conv31 = trunc i32 %cond30 to i16
  store i16 %conv31, i16* %retval, align 2
  br label %return

return:                                           ; preds = %cond.end29, %if.then2
  %14 = load i16, i16* %retval, align 2
  ret i16 %14
}

; Function Attrs: noinline nounwind ssp
define signext i16 @gsm_div(i16 signext %num, i16 signext %denum) #0 {
entry:
  %retval = alloca i16, align 2
  %num.addr = alloca i16, align 2
  %denum.addr = alloca i16, align 2
  %L_num = alloca i32, align 4
  %L_denum = alloca i32, align 4
  %div = alloca i16, align 2
  %k = alloca i32, align 4
  store i16 %num, i16* %num.addr, align 2
  store i16 %denum, i16* %denum.addr, align 2
  %0 = load i16, i16* %num.addr, align 2
  %conv = sext i16 %0 to i32
  store i32 %conv, i32* %L_num, align 4
  %1 = load i16, i16* %denum.addr, align 2
  %conv1 = sext i16 %1 to i32
  store i32 %conv1, i32* %L_denum, align 4
  store i16 0, i16* %div, align 2
  store i32 15, i32* %k, align 4
  %2 = load i16, i16* %num.addr, align 2
  %conv2 = sext i16 %2 to i32
  %cmp = icmp eq i32 %conv2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i16 0, i16* %retval, align 2
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end10, %if.end
  %3 = load i32, i32* %k, align 4
  %dec = add nsw i32 %3, -1
  store i32 %dec, i32* %k, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i16, i16* %div, align 2
  %conv4 = sext i16 %4 to i32
  %shl = shl i32 %conv4, 1
  %conv5 = trunc i32 %shl to i16
  store i16 %conv5, i16* %div, align 2
  %5 = load i32, i32* %L_num, align 4
  %shl6 = shl i32 %5, 1
  store i32 %shl6, i32* %L_num, align 4
  %6 = load i32, i32* %L_num, align 4
  %7 = load i32, i32* %L_denum, align 4
  %cmp7 = icmp sge i32 %6, %7
  br i1 %cmp7, label %if.then9, label %if.end10

if.then9:                                         ; preds = %while.body
  %8 = load i32, i32* %L_denum, align 4
  %9 = load i32, i32* %L_num, align 4
  %sub = sub nsw i32 %9, %8
  store i32 %sub, i32* %L_num, align 4
  %10 = load i16, i16* %div, align 2
  %inc = add i16 %10, 1
  store i16 %inc, i16* %div, align 2
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %11 = load i16, i16* %div, align 2
  store i16 %11, i16* %retval, align 2
  br label %return

return:                                           ; preds = %while.end, %if.then
  %12 = load i16, i16* %retval, align 2
  ret i16 %12
}

; Function Attrs: noinline nounwind ssp
define void @Autocorrelation(i16* %s, i32* %L_ACF) #0 {
entry:
  %s.addr = alloca i16*, align 4
  %L_ACF.addr = alloca i32*, align 4
  %k = alloca i32, align 4
  %i = alloca i32, align 4
  %temp = alloca i16, align 2
  %smax = alloca i16, align 2
  %scalauto = alloca i16, align 2
  %n = alloca i16, align 2
  %sp = alloca i16*, align 4
  %sl = alloca i16, align 2
  store i16* %s, i16** %s.addr, align 4
  store i32* %L_ACF, i32** %L_ACF.addr, align 4
  store i16 0, i16* %smax, align 2
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %k, align 4
  %cmp = icmp sle i32 %0, 159
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i16*, i16** %s.addr, align 4
  %2 = load i32, i32* %k, align 4
  %arrayidx = getelementptr inbounds i16, i16* %1, i32 %2
  %3 = load i16, i16* %arrayidx, align 2
  %call = call signext i16 @gsm_abs(i16 signext %3)
  store i16 %call, i16* %temp, align 2
  %4 = load i16, i16* %temp, align 2
  %conv = sext i16 %4 to i32
  %5 = load i16, i16* %smax, align 2
  %conv1 = sext i16 %5 to i32
  %cmp2 = icmp sgt i32 %conv, %conv1
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %6 = load i16, i16* %temp, align 2
  store i16 %6, i16* %smax, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load i32, i32* %k, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load i16, i16* %smax, align 2
  %conv4 = sext i16 %8 to i32
  %cmp5 = icmp eq i32 %conv4, 0
  br i1 %cmp5, label %if.then7, label %if.else

if.then7:                                         ; preds = %for.end
  store i16 0, i16* %scalauto, align 2
  br label %if.end12

if.else:                                          ; preds = %for.end
  %9 = load i16, i16* %smax, align 2
  %conv8 = sext i16 %9 to i32
  %shl = shl i32 %conv8, 16
  %call9 = call signext i16 @gsm_norm(i32 %shl)
  %conv10 = sext i16 %call9 to i32
  %sub = sub nsw i32 4, %conv10
  %conv11 = trunc i32 %sub to i16
  store i16 %conv11, i16* %scalauto, align 2
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then7
  %10 = load i16, i16* %scalauto, align 2
  %conv13 = sext i16 %10 to i32
  %cmp14 = icmp sgt i32 %conv13, 0
  br i1 %cmp14, label %land.lhs.true, label %if.end33

land.lhs.true:                                    ; preds = %if.end12
  %11 = load i16, i16* %scalauto, align 2
  %conv16 = sext i16 %11 to i32
  %cmp17 = icmp sle i32 %conv16, 4
  br i1 %cmp17, label %if.then19, label %if.end33

if.then19:                                        ; preds = %land.lhs.true
  %12 = load i16, i16* %scalauto, align 2
  store i16 %12, i16* %n, align 2
  store i32 0, i32* %k, align 4
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc30, %if.then19
  %13 = load i32, i32* %k, align 4
  %cmp21 = icmp sle i32 %13, 159
  br i1 %cmp21, label %for.body23, label %for.end32

for.body23:                                       ; preds = %for.cond20
  %14 = load i16*, i16** %s.addr, align 4
  %15 = load i32, i32* %k, align 4
  %arrayidx24 = getelementptr inbounds i16, i16* %14, i32 %15
  %16 = load i16, i16* %arrayidx24, align 2
  %17 = load i16, i16* %n, align 2
  %conv25 = sext i16 %17 to i32
  %sub26 = sub nsw i32 %conv25, 1
  %shr = ashr i32 16384, %sub26
  %conv27 = trunc i32 %shr to i16
  %call28 = call signext i16 @gsm_mult_r(i16 signext %16, i16 signext %conv27)
  %18 = load i16*, i16** %s.addr, align 4
  %19 = load i32, i32* %k, align 4
  %arrayidx29 = getelementptr inbounds i16, i16* %18, i32 %19
  store i16 %call28, i16* %arrayidx29, align 2
  br label %for.inc30

for.inc30:                                        ; preds = %for.body23
  %20 = load i32, i32* %k, align 4
  %inc31 = add nsw i32 %20, 1
  store i32 %inc31, i32* %k, align 4
  br label %for.cond20

for.end32:                                        ; preds = %for.cond20
  br label %if.end33

if.end33:                                         ; preds = %for.end32, %land.lhs.true, %if.end12
  %21 = load i16*, i16** %s.addr, align 4
  store i16* %21, i16** %sp, align 4
  %22 = load i16*, i16** %sp, align 4
  %23 = load i16, i16* %22, align 2
  store i16 %23, i16* %sl, align 2
  store i32 8, i32* %k, align 4
  br label %for.cond34

for.cond34:                                       ; preds = %for.inc39, %if.end33
  %24 = load i32, i32* %k, align 4
  %cmp35 = icmp sge i32 %24, 0
  br i1 %cmp35, label %for.body37, label %for.end40

for.body37:                                       ; preds = %for.cond34
  %25 = load i32*, i32** %L_ACF.addr, align 4
  %26 = load i32, i32* %k, align 4
  %arrayidx38 = getelementptr inbounds i32, i32* %25, i32 %26
  store i32 0, i32* %arrayidx38, align 4
  br label %for.inc39

for.inc39:                                        ; preds = %for.body37
  %27 = load i32, i32* %k, align 4
  %dec = add nsw i32 %27, -1
  store i32 %dec, i32* %k, align 4
  br label %for.cond34

for.end40:                                        ; preds = %for.cond34
  %28 = load i16, i16* %sl, align 2
  %conv41 = sext i16 %28 to i32
  %29 = load i16*, i16** %sp, align 4
  %arrayidx42 = getelementptr inbounds i16, i16* %29, i32 0
  %30 = load i16, i16* %arrayidx42, align 2
  %conv43 = sext i16 %30 to i32
  %mul = mul nsw i32 %conv41, %conv43
  %31 = load i32*, i32** %L_ACF.addr, align 4
  %arrayidx44 = getelementptr inbounds i32, i32* %31, i32 0
  %32 = load i32, i32* %arrayidx44, align 4
  %add = add nsw i32 %32, %mul
  store i32 %add, i32* %arrayidx44, align 4
  %33 = load i16*, i16** %sp, align 4
  %incdec.ptr = getelementptr inbounds i16, i16* %33, i32 1
  store i16* %incdec.ptr, i16** %sp, align 4
  %34 = load i16, i16* %incdec.ptr, align 2
  store i16 %34, i16* %sl, align 2
  %35 = load i16, i16* %sl, align 2
  %conv45 = sext i16 %35 to i32
  %36 = load i16*, i16** %sp, align 4
  %arrayidx46 = getelementptr inbounds i16, i16* %36, i32 0
  %37 = load i16, i16* %arrayidx46, align 2
  %conv47 = sext i16 %37 to i32
  %mul48 = mul nsw i32 %conv45, %conv47
  %38 = load i32*, i32** %L_ACF.addr, align 4
  %arrayidx49 = getelementptr inbounds i32, i32* %38, i32 0
  %39 = load i32, i32* %arrayidx49, align 4
  %add50 = add nsw i32 %39, %mul48
  store i32 %add50, i32* %arrayidx49, align 4
  %40 = load i16, i16* %sl, align 2
  %conv51 = sext i16 %40 to i32
  %41 = load i16*, i16** %sp, align 4
  %arrayidx52 = getelementptr inbounds i16, i16* %41, i32 -1
  %42 = load i16, i16* %arrayidx52, align 2
  %conv53 = sext i16 %42 to i32
  %mul54 = mul nsw i32 %conv51, %conv53
  %43 = load i32*, i32** %L_ACF.addr, align 4
  %arrayidx55 = getelementptr inbounds i32, i32* %43, i32 1
  %44 = load i32, i32* %arrayidx55, align 4
  %add56 = add nsw i32 %44, %mul54
  store i32 %add56, i32* %arrayidx55, align 4
  %45 = load i16*, i16** %sp, align 4
  %incdec.ptr57 = getelementptr inbounds i16, i16* %45, i32 1
  store i16* %incdec.ptr57, i16** %sp, align 4
  %46 = load i16, i16* %incdec.ptr57, align 2
  store i16 %46, i16* %sl, align 2
  %47 = load i16, i16* %sl, align 2
  %conv58 = sext i16 %47 to i32
  %48 = load i16*, i16** %sp, align 4
  %arrayidx59 = getelementptr inbounds i16, i16* %48, i32 0
  %49 = load i16, i16* %arrayidx59, align 2
  %conv60 = sext i16 %49 to i32
  %mul61 = mul nsw i32 %conv58, %conv60
  %50 = load i32*, i32** %L_ACF.addr, align 4
  %arrayidx62 = getelementptr inbounds i32, i32* %50, i32 0
  %51 = load i32, i32* %arrayidx62, align 4
  %add63 = add nsw i32 %51, %mul61
  store i32 %add63, i32* %arrayidx62, align 4
  %52 = load i16, i16* %sl, align 2
  %conv64 = sext i16 %52 to i32
  %53 = load i16*, i16** %sp, align 4
  %arrayidx65 = getelementptr inbounds i16, i16* %53, i32 -1
  %54 = load i16, i16* %arrayidx65, align 2
  %conv66 = sext i16 %54 to i32
  %mul67 = mul nsw i32 %conv64, %conv66
  %55 = load i32*, i32** %L_ACF.addr, align 4
  %arrayidx68 = getelementptr inbounds i32, i32* %55, i32 1
  %56 = load i32, i32* %arrayidx68, align 4
  %add69 = add nsw i32 %56, %mul67
  store i32 %add69, i32* %arrayidx68, align 4
  %57 = load i16, i16* %sl, align 2
  %conv70 = sext i16 %57 to i32
  %58 = load i16*, i16** %sp, align 4
  %arrayidx71 = getelementptr inbounds i16, i16* %58, i32 -2
  %59 = load i16, i16* %arrayidx71, align 2
  %conv72 = sext i16 %59 to i32
  %mul73 = mul nsw i32 %conv70, %conv72
  %60 = load i32*, i32** %L_ACF.addr, align 4
  %arrayidx74 = getelementptr inbounds i32, i32* %60, i32 2
  %61 = load i32, i32* %arrayidx74, align 4
  %add75 = add nsw i32 %61, %mul73
  store i32 %add75, i32* %arrayidx74, align 4
  %62 = load i16*, i16** %sp, align 4
  %incdec.ptr76 = getelementptr inbounds i16, i16* %62, i32 1
  store i16* %incdec.ptr76, i16** %sp, align 4
  %63 = load i16, i16* %incdec.ptr76, align 2
  store i16 %63, i16* %sl, align 2
  %64 = load i16, i16* %sl, align 2
  %conv77 = sext i16 %64 to i32
  %65 = load i16*, i16** %sp, align 4
  %arrayidx78 = getelementptr inbounds i16, i16* %65, i32 0
  %66 = load i16, i16* %arrayidx78, align 2
  %conv79 = sext i16 %66 to i32
  %mul80 = mul nsw i32 %conv77, %conv79
  %67 = load i32*, i32** %L_ACF.addr, align 4
  %arrayidx81 = getelementptr inbounds i32, i32* %67, i32 0
  %68 = load i32, i32* %arrayidx81, align 4
  %add82 = add nsw i32 %68, %mul80
  store i32 %add82, i32* %arrayidx81, align 4
  %69 = load i16, i16* %sl, align 2
  %conv83 = sext i16 %69 to i32
  %70 = load i16*, i16** %sp, align 4
  %arrayidx84 = getelementptr inbounds i16, i16* %70, i32 -1
  %71 = load i16, i16* %arrayidx84, align 2
  %conv85 = sext i16 %71 to i32
  %mul86 = mul nsw i32 %conv83, %conv85
  %72 = load i32*, i32** %L_ACF.addr, align 4
  %arrayidx87 = getelementptr inbounds i32, i32* %72, i32 1
  %73 = load i32, i32* %arrayidx87, align 4
  %add88 = add nsw i32 %73, %mul86
  store i32 %add88, i32* %arrayidx87, align 4
  %74 = load i16, i16* %sl, align 2
  %conv89 = sext i16 %74 to i32
  %75 = load i16*, i16** %sp, align 4
  %arrayidx90 = getelementptr inbounds i16, i16* %75, i32 -2
  %76 = load i16, i16* %arrayidx90, align 2
  %conv91 = sext i16 %76 to i32
  %mul92 = mul nsw i32 %conv89, %conv91
  %77 = load i32*, i32** %L_ACF.addr, align 4
  %arrayidx93 = getelementptr inbounds i32, i32* %77, i32 2
  %78 = load i32, i32* %arrayidx93, align 4
  %add94 = add nsw i32 %78, %mul92
  store i32 %add94, i32* %arrayidx93, align 4
  %79 = load i16, i16* %sl, align 2
  %conv95 = sext i16 %79 to i32
  %80 = load i16*, i16** %sp, align 4
  %arrayidx96 = getelementptr inbounds i16, i16* %80, i32 -3
  %81 = load i16, i16* %arrayidx96, align 2
  %conv97 = sext i16 %81 to i32
  %mul98 = mul nsw i32 %conv95, %conv97
  %82 = load i32*, i32** %L_ACF.addr, align 4
  %arrayidx99 = getelementptr inbounds i32, i32* %82, i32 3
  %83 = load i32, i32* %arrayidx99, align 4
  %add100 = add nsw i32 %83, %mul98
  store i32 %add100, i32* %arrayidx99, align 4
  %84 = load i16*, i16** %sp, align 4
  %incdec.ptr101 = getelementptr inbounds i16, i16* %84, i32 1
  store i16* %incdec.ptr101, i16** %sp, align 4
  %85 = load i16, i16* %incdec.ptr101, align 2
  store i16 %85, i16* %sl, align 2
  %86 = load i16, i16* %sl, align 2
  %conv102 = sext i16 %86 to i32
  %87 = load i16*, i16** %sp, align 4
  %arrayidx103 = getelementptr inbounds i16, i16* %87, i32 0
  %88 = load i16, i16* %arrayidx103, align 2
  %conv104 = sext i16 %88 to i32
  %mul105 = mul nsw i32 %conv102, %conv104
  %89 = load i32*, i32** %L_ACF.addr, align 4
  %arrayidx106 = getelementptr inbounds i32, i32* %89, i32 0
  %90 = load i32, i32* %arrayidx106, align 4
  %add107 = add nsw i32 %90, %mul105
  store i32 %add107, i32* %arrayidx106, align 4
  %91 = load i16, i16* %sl, align 2
  %conv108 = sext i16 %91 to i32
  %92 = load i16*, i16** %sp, align 4
  %arrayidx109 = getelementptr inbounds i16, i16* %92, i32 -1
  %93 = load i16, i16* %arrayidx109, align 2
  %conv110 = sext i16 %93 to i32
  %mul111 = mul nsw i32 %conv108, %conv110
  %94 = load i32*, i32** %L_ACF.addr, align 4
  %arrayidx112 = getelementptr inbounds i32, i32* %94, i32 1
  %95 = load i32, i32* %arrayidx112, align 4
  %add113 = add nsw i32 %95, %mul111
  store i32 %add113, i32* %arrayidx112, align 4
  %96 = load i16, i16* %sl, align 2
  %conv114 = sext i16 %96 to i32
  %97 = load i16*, i16** %sp, align 4
  %arrayidx115 = getelementptr inbounds i16, i16* %97, i32 -2
  %98 = load i16, i16* %arrayidx115, align 2
  %conv116 = sext i16 %98 to i32
  %mul117 = mul nsw i32 %conv114, %conv116
  %99 = load i32*, i32** %L_ACF.addr, align 4
  %arrayidx118 = getelementptr inbounds i32, i32* %99, i32 2
  %100 = load i32, i32* %arrayidx118, align 4
  %add119 = add nsw i32 %100, %mul117
  store i32 %add119, i32* %arrayidx118, align 4
  %101 = load i16, i16* %sl, align 2
  %conv120 = sext i16 %101 to i32
  %102 = load i16*, i16** %sp, align 4
  %arrayidx121 = getelementptr inbounds i16, i16* %102, i32 -3
  %103 = load i16, i16* %arrayidx121, align 2
  %conv122 = sext i16 %103 to i32
  %mul123 = mul nsw i32 %conv120, %conv122
  %104 = load i32*, i32** %L_ACF.addr, align 4
  %arrayidx124 = getelementptr inbounds i32, i32* %104, i32 3
  %105 = load i32, i32* %arrayidx124, align 4
  %add125 = add nsw i32 %105, %mul123
  store i32 %add125, i32* %arrayidx124, align 4
  %106 = load i16, i16* %sl, align 2
  %conv126 = sext i16 %106 to i32
  %107 = load i16*, i16** %sp, align 4
  %arrayidx127 = getelementptr inbounds i16, i16* %107, i32 -4
  %108 = load i16, i16* %arrayidx127, align 2
  %conv128 = sext i16 %108 to i32
  %mul129 = mul nsw i32 %conv126, %conv128
  %109 = load i32*, i32** %L_ACF.addr, align 4
  %arrayidx130 = getelementptr inbounds i32, i32* %109, i32 4
  %110 = load i32, i32* %arrayidx130, align 4
  %add131 = add nsw i32 %110, %mul129
  store i32 %add131, i32* %arrayidx130, align 4
  %111 = load i16*, i16** %sp, align 4
  %incdec.ptr132 = getelementptr inbounds i16, i16* %111, i32 1
  store i16* %incdec.ptr132, i16** %sp, align 4
  %112 = load i16, i16* %incdec.ptr132, align 2
  store i16 %112, i16* %sl, align 2
  %113 = load i16, i16* %sl, align 2
  %conv133 = sext i16 %113 to i32
  %114 = load i16*, i16** %sp, align 4
  %arrayidx134 = getelementptr inbounds i16, i16* %114, i32 0
  %115 = load i16, i16* %arrayidx134, align 2
  %conv135 = sext i16 %115 to i32
  %mul136 = mul nsw i32 %conv133, %conv135
  %116 = load i32*, i32** %L_ACF.addr, align 4
  %arrayidx137 = getelementptr inbounds i32, i32* %116, i32 0
  %117 = load i32, i32* %arrayidx137, align 4
  %add138 = add nsw i32 %117, %mul136
  store i32 %add138, i32* %arrayidx137, align 4
  %118 = load i16, i16* %sl, align 2
  %conv139 = sext i16 %118 to i32
  %119 = load i16*, i16** %sp, align 4
  %arrayidx140 = getelementptr inbounds i16, i16* %119, i32 -1
  %120 = load i16, i16* %arrayidx140, align 2
  %conv141 = sext i16 %120 to i32
  %mul142 = mul nsw i32 %conv139, %conv141
  %121 = load i32*, i32** %L_ACF.addr, align 4
  %arrayidx143 = getelementptr inbounds i32, i32* %121, i32 1
  %122 = load i32, i32* %arrayidx143, align 4
  %add144 = add nsw i32 %122, %mul142
  store i32 %add144, i32* %arrayidx143, align 4
  %123 = load i16, i16* %sl, align 2
  %conv145 = sext i16 %123 to i32
  %124 = load i16*, i16** %sp, align 4
  %arrayidx146 = getelementptr inbounds i16, i16* %124, i32 -2
  %125 = load i16, i16* %arrayidx146, align 2
  %conv147 = sext i16 %125 to i32
  %mul148 = mul nsw i32 %conv145, %conv147
  %126 = load i32*, i32** %L_ACF.addr, align 4
  %arrayidx149 = getelementptr inbounds i32, i32* %126, i32 2
  %127 = load i32, i32* %arrayidx149, align 4
  %add150 = add nsw i32 %127, %mul148
  store i32 %add150, i32* %arrayidx149, align 4
  %128 = load i16, i16* %sl, align 2
  %conv151 = sext i16 %128 to i32
  %129 = load i16*, i16** %sp, align 4
  %arrayidx152 = getelementptr inbounds i16, i16* %129, i32 -3
  %130 = load i16, i16* %arrayidx152, align 2
  %conv153 = sext i16 %130 to i32
  %mul154 = mul nsw i32 %conv151, %conv153
  %131 = load i32*, i32** %L_ACF.addr, align 4
  %arrayidx155 = getelementptr inbounds i32, i32* %131, i32 3
  %132 = load i32, i32* %arrayidx155, align 4
  %add156 = add nsw i32 %132, %mul154
  store i32 %add156, i32* %arrayidx155, align 4
  %133 = load i16, i16* %sl, align 2
  %conv157 = sext i16 %133 to i32
  %134 = load i16*, i16** %sp, align 4
  %arrayidx158 = getelementptr inbounds i16, i16* %134, i32 -4
  %135 = load i16, i16* %arrayidx158, align 2
  %conv159 = sext i16 %135 to i32
  %mul160 = mul nsw i32 %conv157, %conv159
  %136 = load i32*, i32** %L_ACF.addr, align 4
  %arrayidx161 = getelementptr inbounds i32, i32* %136, i32 4
  %137 = load i32, i32* %arrayidx161, align 4
  %add162 = add nsw i32 %137, %mul160
  store i32 %add162, i32* %arrayidx161, align 4
  %138 = load i16, i16* %sl, align 2
  %conv163 = sext i16 %138 to i32
  %139 = load i16*, i16** %sp, align 4
  %arrayidx164 = getelementptr inbounds i16, i16* %139, i32 -5
  %140 = load i16, i16* %arrayidx164, align 2
  %conv165 = sext i16 %140 to i32
  %mul166 = mul nsw i32 %conv163, %conv165
  %141 = load i32*, i32** %L_ACF.addr, align 4
  %arrayidx167 = getelementptr inbounds i32, i32* %141, i32 5
  %142 = load i32, i32* %arrayidx167, align 4
  %add168 = add nsw i32 %142, %mul166
  store i32 %add168, i32* %arrayidx167, align 4
  %143 = load i16*, i16** %sp, align 4
  %incdec.ptr169 = getelementptr inbounds i16, i16* %143, i32 1
  store i16* %incdec.ptr169, i16** %sp, align 4
  %144 = load i16, i16* %incdec.ptr169, align 2
  store i16 %144, i16* %sl, align 2
  %145 = load i16, i16* %sl, align 2
  %conv170 = sext i16 %145 to i32
  %146 = load i16*, i16** %sp, align 4
  %arrayidx171 = getelementptr inbounds i16, i16* %146, i32 0
  %147 = load i16, i16* %arrayidx171, align 2
  %conv172 = sext i16 %147 to i32
  %mul173 = mul nsw i32 %conv170, %conv172
  %148 = load i32*, i32** %L_ACF.addr, align 4
  %arrayidx174 = getelementptr inbounds i32, i32* %148, i32 0
  %149 = load i32, i32* %arrayidx174, align 4
  %add175 = add nsw i32 %149, %mul173
  store i32 %add175, i32* %arrayidx174, align 4
  %150 = load i16, i16* %sl, align 2
  %conv176 = sext i16 %150 to i32
  %151 = load i16*, i16** %sp, align 4
  %arrayidx177 = getelementptr inbounds i16, i16* %151, i32 -1
  %152 = load i16, i16* %arrayidx177, align 2
  %conv178 = sext i16 %152 to i32
  %mul179 = mul nsw i32 %conv176, %conv178
  %153 = load i32*, i32** %L_ACF.addr, align 4
  %arrayidx180 = getelementptr inbounds i32, i32* %153, i32 1
  %154 = load i32, i32* %arrayidx180, align 4
  %add181 = add nsw i32 %154, %mul179
  store i32 %add181, i32* %arrayidx180, align 4
  %155 = load i16, i16* %sl, align 2
  %conv182 = sext i16 %155 to i32
  %156 = load i16*, i16** %sp, align 4
  %arrayidx183 = getelementptr inbounds i16, i16* %156, i32 -2
  %157 = load i16, i16* %arrayidx183, align 2
  %conv184 = sext i16 %157 to i32
  %mul185 = mul nsw i32 %conv182, %conv184
  %158 = load i32*, i32** %L_ACF.addr, align 4
  %arrayidx186 = getelementptr inbounds i32, i32* %158, i32 2
  %159 = load i32, i32* %arrayidx186, align 4
  %add187 = add nsw i32 %159, %mul185
  store i32 %add187, i32* %arrayidx186, align 4
  %160 = load i16, i16* %sl, align 2
  %conv188 = sext i16 %160 to i32
  %161 = load i16*, i16** %sp, align 4
  %arrayidx189 = getelementptr inbounds i16, i16* %161, i32 -3
  %162 = load i16, i16* %arrayidx189, align 2
  %conv190 = sext i16 %162 to i32
  %mul191 = mul nsw i32 %conv188, %conv190
  %163 = load i32*, i32** %L_ACF.addr, align 4
  %arrayidx192 = getelementptr inbounds i32, i32* %163, i32 3
  %164 = load i32, i32* %arrayidx192, align 4
  %add193 = add nsw i32 %164, %mul191
  store i32 %add193, i32* %arrayidx192, align 4
  %165 = load i16, i16* %sl, align 2
  %conv194 = sext i16 %165 to i32
  %166 = load i16*, i16** %sp, align 4
  %arrayidx195 = getelementptr inbounds i16, i16* %166, i32 -4
  %167 = load i16, i16* %arrayidx195, align 2
  %conv196 = sext i16 %167 to i32
  %mul197 = mul nsw i32 %conv194, %conv196
  %168 = load i32*, i32** %L_ACF.addr, align 4
  %arrayidx198 = getelementptr inbounds i32, i32* %168, i32 4
  %169 = load i32, i32* %arrayidx198, align 4
  %add199 = add nsw i32 %169, %mul197
  store i32 %add199, i32* %arrayidx198, align 4
  %170 = load i16, i16* %sl, align 2
  %conv200 = sext i16 %170 to i32
  %171 = load i16*, i16** %sp, align 4
  %arrayidx201 = getelementptr inbounds i16, i16* %171, i32 -5
  %172 = load i16, i16* %arrayidx201, align 2
  %conv202 = sext i16 %172 to i32
  %mul203 = mul nsw i32 %conv200, %conv202
  %173 = load i32*, i32** %L_ACF.addr, align 4
  %arrayidx204 = getelementptr inbounds i32, i32* %173, i32 5
  %174 = load i32, i32* %arrayidx204, align 4
  %add205 = add nsw i32 %174, %mul203
  store i32 %add205, i32* %arrayidx204, align 4
  %175 = load i16, i16* %sl, align 2
  %conv206 = sext i16 %175 to i32
  %176 = load i16*, i16** %sp, align 4
  %arrayidx207 = getelementptr inbounds i16, i16* %176, i32 -6
  %177 = load i16, i16* %arrayidx207, align 2
  %conv208 = sext i16 %177 to i32
  %mul209 = mul nsw i32 %conv206, %conv208
  %178 = load i32*, i32** %L_ACF.addr, align 4
  %arrayidx210 = getelementptr inbounds i32, i32* %178, i32 6
  %179 = load i32, i32* %arrayidx210, align 4
  %add211 = add nsw i32 %179, %mul209
  store i32 %add211, i32* %arrayidx210, align 4
  %180 = load i16*, i16** %sp, align 4
  %incdec.ptr212 = getelementptr inbounds i16, i16* %180, i32 1
  store i16* %incdec.ptr212, i16** %sp, align 4
  %181 = load i16, i16* %incdec.ptr212, align 2
  store i16 %181, i16* %sl, align 2
  %182 = load i16, i16* %sl, align 2
  %conv213 = sext i16 %182 to i32
  %183 = load i16*, i16** %sp, align 4
  %arrayidx214 = getelementptr inbounds i16, i16* %183, i32 0
  %184 = load i16, i16* %arrayidx214, align 2
  %conv215 = sext i16 %184 to i32
  %mul216 = mul nsw i32 %conv213, %conv215
  %185 = load i32*, i32** %L_ACF.addr, align 4
  %arrayidx217 = getelementptr inbounds i32, i32* %185, i32 0
  %186 = load i32, i32* %arrayidx217, align 4
  %add218 = add nsw i32 %186, %mul216
  store i32 %add218, i32* %arrayidx217, align 4
  %187 = load i16, i16* %sl, align 2
  %conv219 = sext i16 %187 to i32
  %188 = load i16*, i16** %sp, align 4
  %arrayidx220 = getelementptr inbounds i16, i16* %188, i32 -1
  %189 = load i16, i16* %arrayidx220, align 2
  %conv221 = sext i16 %189 to i32
  %mul222 = mul nsw i32 %conv219, %conv221
  %190 = load i32*, i32** %L_ACF.addr, align 4
  %arrayidx223 = getelementptr inbounds i32, i32* %190, i32 1
  %191 = load i32, i32* %arrayidx223, align 4
  %add224 = add nsw i32 %191, %mul222
  store i32 %add224, i32* %arrayidx223, align 4
  %192 = load i16, i16* %sl, align 2
  %conv225 = sext i16 %192 to i32
  %193 = load i16*, i16** %sp, align 4
  %arrayidx226 = getelementptr inbounds i16, i16* %193, i32 -2
  %194 = load i16, i16* %arrayidx226, align 2
  %conv227 = sext i16 %194 to i32
  %mul228 = mul nsw i32 %conv225, %conv227
  %195 = load i32*, i32** %L_ACF.addr, align 4
  %arrayidx229 = getelementptr inbounds i32, i32* %195, i32 2
  %196 = load i32, i32* %arrayidx229, align 4
  %add230 = add nsw i32 %196, %mul228
  store i32 %add230, i32* %arrayidx229, align 4
  %197 = load i16, i16* %sl, align 2
  %conv231 = sext i16 %197 to i32
  %198 = load i16*, i16** %sp, align 4
  %arrayidx232 = getelementptr inbounds i16, i16* %198, i32 -3
  %199 = load i16, i16* %arrayidx232, align 2
  %conv233 = sext i16 %199 to i32
  %mul234 = mul nsw i32 %conv231, %conv233
  %200 = load i32*, i32** %L_ACF.addr, align 4
  %arrayidx235 = getelementptr inbounds i32, i32* %200, i32 3
  %201 = load i32, i32* %arrayidx235, align 4
  %add236 = add nsw i32 %201, %mul234
  store i32 %add236, i32* %arrayidx235, align 4
  %202 = load i16, i16* %sl, align 2
  %conv237 = sext i16 %202 to i32
  %203 = load i16*, i16** %sp, align 4
  %arrayidx238 = getelementptr inbounds i16, i16* %203, i32 -4
  %204 = load i16, i16* %arrayidx238, align 2
  %conv239 = sext i16 %204 to i32
  %mul240 = mul nsw i32 %conv237, %conv239
  %205 = load i32*, i32** %L_ACF.addr, align 4
  %arrayidx241 = getelementptr inbounds i32, i32* %205, i32 4
  %206 = load i32, i32* %arrayidx241, align 4
  %add242 = add nsw i32 %206, %mul240
  store i32 %add242, i32* %arrayidx241, align 4
  %207 = load i16, i16* %sl, align 2
  %conv243 = sext i16 %207 to i32
  %208 = load i16*, i16** %sp, align 4
  %arrayidx244 = getelementptr inbounds i16, i16* %208, i32 -5
  %209 = load i16, i16* %arrayidx244, align 2
  %conv245 = sext i16 %209 to i32
  %mul246 = mul nsw i32 %conv243, %conv245
  %210 = load i32*, i32** %L_ACF.addr, align 4
  %arrayidx247 = getelementptr inbounds i32, i32* %210, i32 5
  %211 = load i32, i32* %arrayidx247, align 4
  %add248 = add nsw i32 %211, %mul246
  store i32 %add248, i32* %arrayidx247, align 4
  %212 = load i16, i16* %sl, align 2
  %conv249 = sext i16 %212 to i32
  %213 = load i16*, i16** %sp, align 4
  %arrayidx250 = getelementptr inbounds i16, i16* %213, i32 -6
  %214 = load i16, i16* %arrayidx250, align 2
  %conv251 = sext i16 %214 to i32
  %mul252 = mul nsw i32 %conv249, %conv251
  %215 = load i32*, i32** %L_ACF.addr, align 4
  %arrayidx253 = getelementptr inbounds i32, i32* %215, i32 6
  %216 = load i32, i32* %arrayidx253, align 4
  %add254 = add nsw i32 %216, %mul252
  store i32 %add254, i32* %arrayidx253, align 4
  %217 = load i16, i16* %sl, align 2
  %conv255 = sext i16 %217 to i32
  %218 = load i16*, i16** %sp, align 4
  %arrayidx256 = getelementptr inbounds i16, i16* %218, i32 -7
  %219 = load i16, i16* %arrayidx256, align 2
  %conv257 = sext i16 %219 to i32
  %mul258 = mul nsw i32 %conv255, %conv257
  %220 = load i32*, i32** %L_ACF.addr, align 4
  %arrayidx259 = getelementptr inbounds i32, i32* %220, i32 7
  %221 = load i32, i32* %arrayidx259, align 4
  %add260 = add nsw i32 %221, %mul258
  store i32 %add260, i32* %arrayidx259, align 4
  store i32 8, i32* %i, align 4
  br label %for.cond261

for.cond261:                                      ; preds = %for.inc320, %for.end40
  %222 = load i32, i32* %i, align 4
  %cmp262 = icmp sle i32 %222, 159
  br i1 %cmp262, label %for.body264, label %for.end322

for.body264:                                      ; preds = %for.cond261
  %223 = load i16*, i16** %sp, align 4
  %incdec.ptr265 = getelementptr inbounds i16, i16* %223, i32 1
  store i16* %incdec.ptr265, i16** %sp, align 4
  %224 = load i16, i16* %incdec.ptr265, align 2
  store i16 %224, i16* %sl, align 2
  %225 = load i16, i16* %sl, align 2
  %conv266 = sext i16 %225 to i32
  %226 = load i16*, i16** %sp, align 4
  %arrayidx267 = getelementptr inbounds i16, i16* %226, i32 0
  %227 = load i16, i16* %arrayidx267, align 2
  %conv268 = sext i16 %227 to i32
  %mul269 = mul nsw i32 %conv266, %conv268
  %228 = load i32*, i32** %L_ACF.addr, align 4
  %arrayidx270 = getelementptr inbounds i32, i32* %228, i32 0
  %229 = load i32, i32* %arrayidx270, align 4
  %add271 = add nsw i32 %229, %mul269
  store i32 %add271, i32* %arrayidx270, align 4
  %230 = load i16, i16* %sl, align 2
  %conv272 = sext i16 %230 to i32
  %231 = load i16*, i16** %sp, align 4
  %arrayidx273 = getelementptr inbounds i16, i16* %231, i32 -1
  %232 = load i16, i16* %arrayidx273, align 2
  %conv274 = sext i16 %232 to i32
  %mul275 = mul nsw i32 %conv272, %conv274
  %233 = load i32*, i32** %L_ACF.addr, align 4
  %arrayidx276 = getelementptr inbounds i32, i32* %233, i32 1
  %234 = load i32, i32* %arrayidx276, align 4
  %add277 = add nsw i32 %234, %mul275
  store i32 %add277, i32* %arrayidx276, align 4
  %235 = load i16, i16* %sl, align 2
  %conv278 = sext i16 %235 to i32
  %236 = load i16*, i16** %sp, align 4
  %arrayidx279 = getelementptr inbounds i16, i16* %236, i32 -2
  %237 = load i16, i16* %arrayidx279, align 2
  %conv280 = sext i16 %237 to i32
  %mul281 = mul nsw i32 %conv278, %conv280
  %238 = load i32*, i32** %L_ACF.addr, align 4
  %arrayidx282 = getelementptr inbounds i32, i32* %238, i32 2
  %239 = load i32, i32* %arrayidx282, align 4
  %add283 = add nsw i32 %239, %mul281
  store i32 %add283, i32* %arrayidx282, align 4
  %240 = load i16, i16* %sl, align 2
  %conv284 = sext i16 %240 to i32
  %241 = load i16*, i16** %sp, align 4
  %arrayidx285 = getelementptr inbounds i16, i16* %241, i32 -3
  %242 = load i16, i16* %arrayidx285, align 2
  %conv286 = sext i16 %242 to i32
  %mul287 = mul nsw i32 %conv284, %conv286
  %243 = load i32*, i32** %L_ACF.addr, align 4
  %arrayidx288 = getelementptr inbounds i32, i32* %243, i32 3
  %244 = load i32, i32* %arrayidx288, align 4
  %add289 = add nsw i32 %244, %mul287
  store i32 %add289, i32* %arrayidx288, align 4
  %245 = load i16, i16* %sl, align 2
  %conv290 = sext i16 %245 to i32
  %246 = load i16*, i16** %sp, align 4
  %arrayidx291 = getelementptr inbounds i16, i16* %246, i32 -4
  %247 = load i16, i16* %arrayidx291, align 2
  %conv292 = sext i16 %247 to i32
  %mul293 = mul nsw i32 %conv290, %conv292
  %248 = load i32*, i32** %L_ACF.addr, align 4
  %arrayidx294 = getelementptr inbounds i32, i32* %248, i32 4
  %249 = load i32, i32* %arrayidx294, align 4
  %add295 = add nsw i32 %249, %mul293
  store i32 %add295, i32* %arrayidx294, align 4
  %250 = load i16, i16* %sl, align 2
  %conv296 = sext i16 %250 to i32
  %251 = load i16*, i16** %sp, align 4
  %arrayidx297 = getelementptr inbounds i16, i16* %251, i32 -5
  %252 = load i16, i16* %arrayidx297, align 2
  %conv298 = sext i16 %252 to i32
  %mul299 = mul nsw i32 %conv296, %conv298
  %253 = load i32*, i32** %L_ACF.addr, align 4
  %arrayidx300 = getelementptr inbounds i32, i32* %253, i32 5
  %254 = load i32, i32* %arrayidx300, align 4
  %add301 = add nsw i32 %254, %mul299
  store i32 %add301, i32* %arrayidx300, align 4
  %255 = load i16, i16* %sl, align 2
  %conv302 = sext i16 %255 to i32
  %256 = load i16*, i16** %sp, align 4
  %arrayidx303 = getelementptr inbounds i16, i16* %256, i32 -6
  %257 = load i16, i16* %arrayidx303, align 2
  %conv304 = sext i16 %257 to i32
  %mul305 = mul nsw i32 %conv302, %conv304
  %258 = load i32*, i32** %L_ACF.addr, align 4
  %arrayidx306 = getelementptr inbounds i32, i32* %258, i32 6
  %259 = load i32, i32* %arrayidx306, align 4
  %add307 = add nsw i32 %259, %mul305
  store i32 %add307, i32* %arrayidx306, align 4
  %260 = load i16, i16* %sl, align 2
  %conv308 = sext i16 %260 to i32
  %261 = load i16*, i16** %sp, align 4
  %arrayidx309 = getelementptr inbounds i16, i16* %261, i32 -7
  %262 = load i16, i16* %arrayidx309, align 2
  %conv310 = sext i16 %262 to i32
  %mul311 = mul nsw i32 %conv308, %conv310
  %263 = load i32*, i32** %L_ACF.addr, align 4
  %arrayidx312 = getelementptr inbounds i32, i32* %263, i32 7
  %264 = load i32, i32* %arrayidx312, align 4
  %add313 = add nsw i32 %264, %mul311
  store i32 %add313, i32* %arrayidx312, align 4
  %265 = load i16, i16* %sl, align 2
  %conv314 = sext i16 %265 to i32
  %266 = load i16*, i16** %sp, align 4
  %arrayidx315 = getelementptr inbounds i16, i16* %266, i32 -8
  %267 = load i16, i16* %arrayidx315, align 2
  %conv316 = sext i16 %267 to i32
  %mul317 = mul nsw i32 %conv314, %conv316
  %268 = load i32*, i32** %L_ACF.addr, align 4
  %arrayidx318 = getelementptr inbounds i32, i32* %268, i32 8
  %269 = load i32, i32* %arrayidx318, align 4
  %add319 = add nsw i32 %269, %mul317
  store i32 %add319, i32* %arrayidx318, align 4
  br label %for.inc320

for.inc320:                                       ; preds = %for.body264
  %270 = load i32, i32* %i, align 4
  %inc321 = add nsw i32 %270, 1
  store i32 %inc321, i32* %i, align 4
  br label %for.cond261

for.end322:                                       ; preds = %for.cond261
  store i32 8, i32* %k, align 4
  br label %for.cond323

for.cond323:                                      ; preds = %for.inc329, %for.end322
  %271 = load i32, i32* %k, align 4
  %cmp324 = icmp sge i32 %271, 0
  br i1 %cmp324, label %for.body326, label %for.end331

for.body326:                                      ; preds = %for.cond323
  %272 = load i32*, i32** %L_ACF.addr, align 4
  %273 = load i32, i32* %k, align 4
  %arrayidx327 = getelementptr inbounds i32, i32* %272, i32 %273
  %274 = load i32, i32* %arrayidx327, align 4
  %shl328 = shl i32 %274, 1
  store i32 %shl328, i32* %arrayidx327, align 4
  br label %for.inc329

for.inc329:                                       ; preds = %for.body326
  %275 = load i32, i32* %k, align 4
  %dec330 = add nsw i32 %275, -1
  store i32 %dec330, i32* %k, align 4
  br label %for.cond323

for.end331:                                       ; preds = %for.cond323
  %276 = load i16, i16* %scalauto, align 2
  %conv332 = sext i16 %276 to i32
  %cmp333 = icmp sgt i32 %conv332, 0
  br i1 %cmp333, label %if.then335, label %if.end348

if.then335:                                       ; preds = %for.end331
  store i32 159, i32* %k, align 4
  br label %for.cond336

for.cond336:                                      ; preds = %for.inc345, %if.then335
  %277 = load i32, i32* %k, align 4
  %cmp337 = icmp sge i32 %277, 0
  br i1 %cmp337, label %for.body339, label %for.end347

for.body339:                                      ; preds = %for.cond336
  %278 = load i16, i16* %scalauto, align 2
  %conv340 = sext i16 %278 to i32
  %279 = load i16*, i16** %s.addr, align 4
  %incdec.ptr341 = getelementptr inbounds i16, i16* %279, i32 1
  store i16* %incdec.ptr341, i16** %s.addr, align 4
  %280 = load i16, i16* %279, align 2
  %conv342 = sext i16 %280 to i32
  %shl343 = shl i32 %conv342, %conv340
  %conv344 = trunc i32 %shl343 to i16
  store i16 %conv344, i16* %279, align 2
  br label %for.inc345

for.inc345:                                       ; preds = %for.body339
  %281 = load i32, i32* %k, align 4
  %dec346 = add nsw i32 %281, -1
  store i32 %dec346, i32* %k, align 4
  br label %for.cond336

for.end347:                                       ; preds = %for.cond336
  br label %if.end348

if.end348:                                        ; preds = %for.end347, %for.end331
  ret void
}

; Function Attrs: noinline nounwind ssp
define void @Reflection_coefficients(i32* %L_ACF, i16* %r) #0 {
entry:
  %L_ACF.addr = alloca i32*, align 4
  %r.addr = alloca i16*, align 4
  %i = alloca i32, align 4
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  %temp = alloca i16, align 2
  %ACF = alloca [9 x i16], align 2
  %P = alloca [9 x i16], align 2
  %K = alloca [9 x i16], align 2
  store i32* %L_ACF, i32** %L_ACF.addr, align 4
  store i16* %r, i16** %r.addr, align 4
  %0 = load i32*, i32** %L_ACF.addr, align 4
  %arrayidx = getelementptr inbounds i32, i32* %0, i32 0
  %1 = load i32, i32* %arrayidx, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 8, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i32, i32* %i, align 4
  %cmp1 = icmp sgt i32 %2, 0
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i16*, i16** %r.addr, align 4
  %incdec.ptr = getelementptr inbounds i16, i16* %3, i32 1
  store i16* %incdec.ptr, i16** %r.addr, align 4
  store i16 0, i16* %3, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %dec = add nsw i32 %4, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %for.end91

if.end:                                           ; preds = %entry
  %5 = load i32*, i32** %L_ACF.addr, align 4
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i32 0
  %6 = load i32, i32* %arrayidx2, align 4
  %call = call signext i16 @gsm_norm(i32 %6)
  store i16 %call, i16* %temp, align 2
  store i32 0, i32* %i, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc9, %if.end
  %7 = load i32, i32* %i, align 4
  %cmp4 = icmp sle i32 %7, 8
  br i1 %cmp4, label %for.body5, label %for.end10

for.body5:                                        ; preds = %for.cond3
  %8 = load i32*, i32** %L_ACF.addr, align 4
  %9 = load i32, i32* %i, align 4
  %arrayidx6 = getelementptr inbounds i32, i32* %8, i32 %9
  %10 = load i32, i32* %arrayidx6, align 4
  %11 = load i16, i16* %temp, align 2
  %conv = sext i16 %11 to i32
  %shl = shl i32 %10, %conv
  %shr = ashr i32 %shl, 16
  %conv7 = trunc i32 %shr to i16
  %12 = load i32, i32* %i, align 4
  %arrayidx8 = getelementptr inbounds [9 x i16], [9 x i16]* %ACF, i32 0, i32 %12
  store i16 %conv7, i16* %arrayidx8, align 2
  br label %for.inc9

for.inc9:                                         ; preds = %for.body5
  %13 = load i32, i32* %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond3

for.end10:                                        ; preds = %for.cond3
  store i32 1, i32* %i, align 4
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc17, %for.end10
  %14 = load i32, i32* %i, align 4
  %cmp12 = icmp sle i32 %14, 7
  br i1 %cmp12, label %for.body14, label %for.end19

for.body14:                                       ; preds = %for.cond11
  %15 = load i32, i32* %i, align 4
  %arrayidx15 = getelementptr inbounds [9 x i16], [9 x i16]* %ACF, i32 0, i32 %15
  %16 = load i16, i16* %arrayidx15, align 2
  %17 = load i32, i32* %i, align 4
  %arrayidx16 = getelementptr inbounds [9 x i16], [9 x i16]* %K, i32 0, i32 %17
  store i16 %16, i16* %arrayidx16, align 2
  br label %for.inc17

for.inc17:                                        ; preds = %for.body14
  %18 = load i32, i32* %i, align 4
  %inc18 = add nsw i32 %18, 1
  store i32 %inc18, i32* %i, align 4
  br label %for.cond11

for.end19:                                        ; preds = %for.cond11
  store i32 0, i32* %i, align 4
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc26, %for.end19
  %19 = load i32, i32* %i, align 4
  %cmp21 = icmp sle i32 %19, 8
  br i1 %cmp21, label %for.body23, label %for.end28

for.body23:                                       ; preds = %for.cond20
  %20 = load i32, i32* %i, align 4
  %arrayidx24 = getelementptr inbounds [9 x i16], [9 x i16]* %ACF, i32 0, i32 %20
  %21 = load i16, i16* %arrayidx24, align 2
  %22 = load i32, i32* %i, align 4
  %arrayidx25 = getelementptr inbounds [9 x i16], [9 x i16]* %P, i32 0, i32 %22
  store i16 %21, i16* %arrayidx25, align 2
  br label %for.inc26

for.inc26:                                        ; preds = %for.body23
  %23 = load i32, i32* %i, align 4
  %inc27 = add nsw i32 %23, 1
  store i32 %inc27, i32* %i, align 4
  br label %for.cond20

for.end28:                                        ; preds = %for.cond20
  store i32 1, i32* %n, align 4
  br label %for.cond29

for.cond29:                                       ; preds = %for.inc88, %for.end28
  %24 = load i32, i32* %n, align 4
  %cmp30 = icmp sle i32 %24, 8
  br i1 %cmp30, label %for.body32, label %for.end91

for.body32:                                       ; preds = %for.cond29
  %arrayidx33 = getelementptr inbounds [9 x i16], [9 x i16]* %P, i32 0, i32 1
  %25 = load i16, i16* %arrayidx33, align 2
  store i16 %25, i16* %temp, align 2
  %26 = load i16, i16* %temp, align 2
  %call34 = call signext i16 @gsm_abs(i16 signext %26)
  store i16 %call34, i16* %temp, align 2
  %arrayidx35 = getelementptr inbounds [9 x i16], [9 x i16]* %P, i32 0, i32 0
  %27 = load i16, i16* %arrayidx35, align 2
  %conv36 = sext i16 %27 to i32
  %28 = load i16, i16* %temp, align 2
  %conv37 = sext i16 %28 to i32
  %cmp38 = icmp slt i32 %conv36, %conv37
  br i1 %cmp38, label %if.then40, label %if.end49

if.then40:                                        ; preds = %for.body32
  %29 = load i32, i32* %n, align 4
  store i32 %29, i32* %i, align 4
  br label %for.cond41

for.cond41:                                       ; preds = %for.inc46, %if.then40
  %30 = load i32, i32* %i, align 4
  %cmp42 = icmp sle i32 %30, 8
  br i1 %cmp42, label %for.body44, label %for.end48

for.body44:                                       ; preds = %for.cond41
  %31 = load i16*, i16** %r.addr, align 4
  %incdec.ptr45 = getelementptr inbounds i16, i16* %31, i32 1
  store i16* %incdec.ptr45, i16** %r.addr, align 4
  store i16 0, i16* %31, align 2
  br label %for.inc46

for.inc46:                                        ; preds = %for.body44
  %32 = load i32, i32* %i, align 4
  %inc47 = add nsw i32 %32, 1
  store i32 %inc47, i32* %i, align 4
  br label %for.cond41

for.end48:                                        ; preds = %for.cond41
  br label %for.end91

if.end49:                                         ; preds = %for.body32
  %33 = load i16, i16* %temp, align 2
  %arrayidx50 = getelementptr inbounds [9 x i16], [9 x i16]* %P, i32 0, i32 0
  %34 = load i16, i16* %arrayidx50, align 2
  %call51 = call signext i16 @gsm_div(i16 signext %33, i16 signext %34)
  %35 = load i16*, i16** %r.addr, align 4
  store i16 %call51, i16* %35, align 2
  %arrayidx52 = getelementptr inbounds [9 x i16], [9 x i16]* %P, i32 0, i32 1
  %36 = load i16, i16* %arrayidx52, align 2
  %conv53 = sext i16 %36 to i32
  %cmp54 = icmp sgt i32 %conv53, 0
  br i1 %cmp54, label %if.then56, label %if.end59

if.then56:                                        ; preds = %if.end49
  %37 = load i16*, i16** %r.addr, align 4
  %38 = load i16, i16* %37, align 2
  %conv57 = sext i16 %38 to i32
  %sub = sub nsw i32 0, %conv57
  %conv58 = trunc i32 %sub to i16
  %39 = load i16*, i16** %r.addr, align 4
  store i16 %conv58, i16* %39, align 2
  br label %if.end59

if.end59:                                         ; preds = %if.then56, %if.end49
  %40 = load i32, i32* %n, align 4
  %cmp60 = icmp eq i32 %40, 8
  br i1 %cmp60, label %if.then62, label %if.end63

if.then62:                                        ; preds = %if.end59
  br label %for.end91

if.end63:                                         ; preds = %if.end59
  %arrayidx64 = getelementptr inbounds [9 x i16], [9 x i16]* %P, i32 0, i32 1
  %41 = load i16, i16* %arrayidx64, align 2
  %42 = load i16*, i16** %r.addr, align 4
  %43 = load i16, i16* %42, align 2
  %call65 = call signext i16 @gsm_mult_r(i16 signext %41, i16 signext %43)
  store i16 %call65, i16* %temp, align 2
  %arrayidx66 = getelementptr inbounds [9 x i16], [9 x i16]* %P, i32 0, i32 0
  %44 = load i16, i16* %arrayidx66, align 2
  %45 = load i16, i16* %temp, align 2
  %call67 = call signext i16 @gsm_add(i16 signext %44, i16 signext %45)
  %arrayidx68 = getelementptr inbounds [9 x i16], [9 x i16]* %P, i32 0, i32 0
  store i16 %call67, i16* %arrayidx68, align 2
  store i32 1, i32* %m, align 4
  br label %for.cond69

for.cond69:                                       ; preds = %for.inc85, %if.end63
  %46 = load i32, i32* %m, align 4
  %47 = load i32, i32* %n, align 4
  %sub70 = sub nsw i32 8, %47
  %cmp71 = icmp sle i32 %46, %sub70
  br i1 %cmp71, label %for.body73, label %for.end87

for.body73:                                       ; preds = %for.cond69
  %48 = load i32, i32* %m, align 4
  %arrayidx74 = getelementptr inbounds [9 x i16], [9 x i16]* %K, i32 0, i32 %48
  %49 = load i16, i16* %arrayidx74, align 2
  %50 = load i16*, i16** %r.addr, align 4
  %51 = load i16, i16* %50, align 2
  %call75 = call signext i16 @gsm_mult_r(i16 signext %49, i16 signext %51)
  store i16 %call75, i16* %temp, align 2
  %52 = load i32, i32* %m, align 4
  %add = add nsw i32 %52, 1
  %arrayidx76 = getelementptr inbounds [9 x i16], [9 x i16]* %P, i32 0, i32 %add
  %53 = load i16, i16* %arrayidx76, align 2
  %54 = load i16, i16* %temp, align 2
  %call77 = call signext i16 @gsm_add(i16 signext %53, i16 signext %54)
  %55 = load i32, i32* %m, align 4
  %arrayidx78 = getelementptr inbounds [9 x i16], [9 x i16]* %P, i32 0, i32 %55
  store i16 %call77, i16* %arrayidx78, align 2
  %56 = load i32, i32* %m, align 4
  %add79 = add nsw i32 %56, 1
  %arrayidx80 = getelementptr inbounds [9 x i16], [9 x i16]* %P, i32 0, i32 %add79
  %57 = load i16, i16* %arrayidx80, align 2
  %58 = load i16*, i16** %r.addr, align 4
  %59 = load i16, i16* %58, align 2
  %call81 = call signext i16 @gsm_mult_r(i16 signext %57, i16 signext %59)
  store i16 %call81, i16* %temp, align 2
  %60 = load i32, i32* %m, align 4
  %arrayidx82 = getelementptr inbounds [9 x i16], [9 x i16]* %K, i32 0, i32 %60
  %61 = load i16, i16* %arrayidx82, align 2
  %62 = load i16, i16* %temp, align 2
  %call83 = call signext i16 @gsm_add(i16 signext %61, i16 signext %62)
  %63 = load i32, i32* %m, align 4
  %arrayidx84 = getelementptr inbounds [9 x i16], [9 x i16]* %K, i32 0, i32 %63
  store i16 %call83, i16* %arrayidx84, align 2
  br label %for.inc85

for.inc85:                                        ; preds = %for.body73
  %64 = load i32, i32* %m, align 4
  %inc86 = add nsw i32 %64, 1
  store i32 %inc86, i32* %m, align 4
  br label %for.cond69

for.end87:                                        ; preds = %for.cond69
  br label %for.inc88

for.inc88:                                        ; preds = %for.end87
  %65 = load i32, i32* %n, align 4
  %inc89 = add nsw i32 %65, 1
  store i32 %inc89, i32* %n, align 4
  %66 = load i16*, i16** %r.addr, align 4
  %incdec.ptr90 = getelementptr inbounds i16, i16* %66, i32 1
  store i16* %incdec.ptr90, i16** %r.addr, align 4
  br label %for.cond29

for.end91:                                        ; preds = %for.end, %for.end48, %if.then62, %for.cond29
  ret void
}

; Function Attrs: noinline nounwind ssp
define void @Transformation_to_Log_Area_Ratios(i16* %r) #0 {
entry:
  %r.addr = alloca i16*, align 4
  %temp = alloca i16, align 2
  %i = alloca i32, align 4
  store i16* %r, i16** %r.addr, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp sle i32 %0, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i16*, i16** %r.addr, align 4
  %2 = load i16, i16* %1, align 2
  store i16 %2, i16* %temp, align 2
  %3 = load i16, i16* %temp, align 2
  %call = call signext i16 @gsm_abs(i16 signext %3)
  store i16 %call, i16* %temp, align 2
  %4 = load i16, i16* %temp, align 2
  %conv = sext i16 %4 to i32
  %cmp1 = icmp slt i32 %conv, 22118
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %5 = load i16, i16* %temp, align 2
  %conv3 = sext i16 %5 to i32
  %shr = ashr i32 %conv3, 1
  %conv4 = trunc i32 %shr to i16
  store i16 %conv4, i16* %temp, align 2
  br label %if.end17

if.else:                                          ; preds = %for.body
  %6 = load i16, i16* %temp, align 2
  %conv5 = sext i16 %6 to i32
  %cmp6 = icmp slt i32 %conv5, 31130
  br i1 %cmp6, label %if.then8, label %if.else11

if.then8:                                         ; preds = %if.else
  %7 = load i16, i16* %temp, align 2
  %conv9 = sext i16 %7 to i32
  %sub = sub nsw i32 %conv9, 11059
  %conv10 = trunc i32 %sub to i16
  store i16 %conv10, i16* %temp, align 2
  br label %if.end

if.else11:                                        ; preds = %if.else
  %8 = load i16, i16* %temp, align 2
  %conv12 = sext i16 %8 to i32
  %sub13 = sub nsw i32 %conv12, 26112
  %conv14 = trunc i32 %sub13 to i16
  store i16 %conv14, i16* %temp, align 2
  %9 = load i16, i16* %temp, align 2
  %conv15 = sext i16 %9 to i32
  %shl = shl i32 %conv15, 2
  %conv16 = trunc i32 %shl to i16
  store i16 %conv16, i16* %temp, align 2
  br label %if.end

if.end:                                           ; preds = %if.else11, %if.then8
  br label %if.end17

if.end17:                                         ; preds = %if.end, %if.then
  %10 = load i16*, i16** %r.addr, align 4
  %11 = load i16, i16* %10, align 2
  %conv18 = sext i16 %11 to i32
  %cmp19 = icmp slt i32 %conv18, 0
  br i1 %cmp19, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end17
  %12 = load i16, i16* %temp, align 2
  %conv21 = sext i16 %12 to i32
  %sub22 = sub nsw i32 0, %conv21
  br label %cond.end

cond.false:                                       ; preds = %if.end17
  %13 = load i16, i16* %temp, align 2
  %conv23 = sext i16 %13 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub22, %cond.true ], [ %conv23, %cond.false ]
  %conv24 = trunc i32 %cond to i16
  %14 = load i16*, i16** %r.addr, align 4
  store i16 %conv24, i16* %14, align 2
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %15 = load i32, i32* %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4
  %16 = load i16*, i16** %r.addr, align 4
  %incdec.ptr = getelementptr inbounds i16, i16* %16, i32 1
  store i16* %incdec.ptr, i16** %r.addr, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind ssp
define void @Quantization_and_coding(i16* %LAR) #0 {
entry:
  %LAR.addr = alloca i16*, align 4
  %temp = alloca i16, align 2
  store i16* %LAR, i16** %LAR.addr, align 4
  %0 = load i16*, i16** %LAR.addr, align 4
  %1 = load i16, i16* %0, align 2
  %call = call signext i16 @gsm_mult(i16 signext 20480, i16 signext %1)
  store i16 %call, i16* %temp, align 2
  %2 = load i16, i16* %temp, align 2
  %call1 = call signext i16 @gsm_add(i16 signext %2, i16 signext 0)
  store i16 %call1, i16* %temp, align 2
  %3 = load i16, i16* %temp, align 2
  %call2 = call signext i16 @gsm_add(i16 signext %3, i16 signext 256)
  store i16 %call2, i16* %temp, align 2
  %4 = load i16, i16* %temp, align 2
  %conv = sext i16 %4 to i32
  %shr = ashr i32 %conv, 9
  %conv3 = trunc i32 %shr to i16
  store i16 %conv3, i16* %temp, align 2
  %5 = load i16, i16* %temp, align 2
  %conv4 = sext i16 %5 to i32
  %cmp = icmp sgt i32 %conv4, 31
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end12

cond.false:                                       ; preds = %entry
  %6 = load i16, i16* %temp, align 2
  %conv6 = sext i16 %6 to i32
  %cmp7 = icmp slt i32 %conv6, -32
  br i1 %cmp7, label %cond.true9, label %cond.false10

cond.true9:                                       ; preds = %cond.false
  br label %cond.end

cond.false10:                                     ; preds = %cond.false
  %7 = load i16, i16* %temp, align 2
  %conv11 = sext i16 %7 to i32
  %sub = sub nsw i32 %conv11, -32
  br label %cond.end

cond.end:                                         ; preds = %cond.false10, %cond.true9
  %cond = phi i32 [ 0, %cond.true9 ], [ %sub, %cond.false10 ]
  br label %cond.end12

cond.end12:                                       ; preds = %cond.end, %cond.true
  %cond13 = phi i32 [ 63, %cond.true ], [ %cond, %cond.end ]
  %conv14 = trunc i32 %cond13 to i16
  %8 = load i16*, i16** %LAR.addr, align 4
  store i16 %conv14, i16* %8, align 2
  %9 = load i16*, i16** %LAR.addr, align 4
  %incdec.ptr = getelementptr inbounds i16, i16* %9, i32 1
  store i16* %incdec.ptr, i16** %LAR.addr, align 4
  %10 = load i16*, i16** %LAR.addr, align 4
  %11 = load i16, i16* %10, align 2
  %call15 = call signext i16 @gsm_mult(i16 signext 20480, i16 signext %11)
  store i16 %call15, i16* %temp, align 2
  %12 = load i16, i16* %temp, align 2
  %call16 = call signext i16 @gsm_add(i16 signext %12, i16 signext 0)
  store i16 %call16, i16* %temp, align 2
  %13 = load i16, i16* %temp, align 2
  %call17 = call signext i16 @gsm_add(i16 signext %13, i16 signext 256)
  store i16 %call17, i16* %temp, align 2
  %14 = load i16, i16* %temp, align 2
  %conv18 = sext i16 %14 to i32
  %shr19 = ashr i32 %conv18, 9
  %conv20 = trunc i32 %shr19 to i16
  store i16 %conv20, i16* %temp, align 2
  %15 = load i16, i16* %temp, align 2
  %conv21 = sext i16 %15 to i32
  %cmp22 = icmp sgt i32 %conv21, 31
  br i1 %cmp22, label %cond.true24, label %cond.false25

cond.true24:                                      ; preds = %cond.end12
  br label %cond.end35

cond.false25:                                     ; preds = %cond.end12
  %16 = load i16, i16* %temp, align 2
  %conv26 = sext i16 %16 to i32
  %cmp27 = icmp slt i32 %conv26, -32
  br i1 %cmp27, label %cond.true29, label %cond.false30

cond.true29:                                      ; preds = %cond.false25
  br label %cond.end33

cond.false30:                                     ; preds = %cond.false25
  %17 = load i16, i16* %temp, align 2
  %conv31 = sext i16 %17 to i32
  %sub32 = sub nsw i32 %conv31, -32
  br label %cond.end33

cond.end33:                                       ; preds = %cond.false30, %cond.true29
  %cond34 = phi i32 [ 0, %cond.true29 ], [ %sub32, %cond.false30 ]
  br label %cond.end35

cond.end35:                                       ; preds = %cond.end33, %cond.true24
  %cond36 = phi i32 [ 63, %cond.true24 ], [ %cond34, %cond.end33 ]
  %conv37 = trunc i32 %cond36 to i16
  %18 = load i16*, i16** %LAR.addr, align 4
  store i16 %conv37, i16* %18, align 2
  %19 = load i16*, i16** %LAR.addr, align 4
  %incdec.ptr38 = getelementptr inbounds i16, i16* %19, i32 1
  store i16* %incdec.ptr38, i16** %LAR.addr, align 4
  %20 = load i16*, i16** %LAR.addr, align 4
  %21 = load i16, i16* %20, align 2
  %call39 = call signext i16 @gsm_mult(i16 signext 20480, i16 signext %21)
  store i16 %call39, i16* %temp, align 2
  %22 = load i16, i16* %temp, align 2
  %call40 = call signext i16 @gsm_add(i16 signext %22, i16 signext 2048)
  store i16 %call40, i16* %temp, align 2
  %23 = load i16, i16* %temp, align 2
  %call41 = call signext i16 @gsm_add(i16 signext %23, i16 signext 256)
  store i16 %call41, i16* %temp, align 2
  %24 = load i16, i16* %temp, align 2
  %conv42 = sext i16 %24 to i32
  %shr43 = ashr i32 %conv42, 9
  %conv44 = trunc i32 %shr43 to i16
  store i16 %conv44, i16* %temp, align 2
  %25 = load i16, i16* %temp, align 2
  %conv45 = sext i16 %25 to i32
  %cmp46 = icmp sgt i32 %conv45, 15
  br i1 %cmp46, label %cond.true48, label %cond.false49

cond.true48:                                      ; preds = %cond.end35
  br label %cond.end59

cond.false49:                                     ; preds = %cond.end35
  %26 = load i16, i16* %temp, align 2
  %conv50 = sext i16 %26 to i32
  %cmp51 = icmp slt i32 %conv50, -16
  br i1 %cmp51, label %cond.true53, label %cond.false54

cond.true53:                                      ; preds = %cond.false49
  br label %cond.end57

cond.false54:                                     ; preds = %cond.false49
  %27 = load i16, i16* %temp, align 2
  %conv55 = sext i16 %27 to i32
  %sub56 = sub nsw i32 %conv55, -16
  br label %cond.end57

cond.end57:                                       ; preds = %cond.false54, %cond.true53
  %cond58 = phi i32 [ 0, %cond.true53 ], [ %sub56, %cond.false54 ]
  br label %cond.end59

cond.end59:                                       ; preds = %cond.end57, %cond.true48
  %cond60 = phi i32 [ 31, %cond.true48 ], [ %cond58, %cond.end57 ]
  %conv61 = trunc i32 %cond60 to i16
  %28 = load i16*, i16** %LAR.addr, align 4
  store i16 %conv61, i16* %28, align 2
  %29 = load i16*, i16** %LAR.addr, align 4
  %incdec.ptr62 = getelementptr inbounds i16, i16* %29, i32 1
  store i16* %incdec.ptr62, i16** %LAR.addr, align 4
  %30 = load i16*, i16** %LAR.addr, align 4
  %31 = load i16, i16* %30, align 2
  %call63 = call signext i16 @gsm_mult(i16 signext 20480, i16 signext %31)
  store i16 %call63, i16* %temp, align 2
  %32 = load i16, i16* %temp, align 2
  %call64 = call signext i16 @gsm_add(i16 signext %32, i16 signext -2560)
  store i16 %call64, i16* %temp, align 2
  %33 = load i16, i16* %temp, align 2
  %call65 = call signext i16 @gsm_add(i16 signext %33, i16 signext 256)
  store i16 %call65, i16* %temp, align 2
  %34 = load i16, i16* %temp, align 2
  %conv66 = sext i16 %34 to i32
  %shr67 = ashr i32 %conv66, 9
  %conv68 = trunc i32 %shr67 to i16
  store i16 %conv68, i16* %temp, align 2
  %35 = load i16, i16* %temp, align 2
  %conv69 = sext i16 %35 to i32
  %cmp70 = icmp sgt i32 %conv69, 15
  br i1 %cmp70, label %cond.true72, label %cond.false73

cond.true72:                                      ; preds = %cond.end59
  br label %cond.end83

cond.false73:                                     ; preds = %cond.end59
  %36 = load i16, i16* %temp, align 2
  %conv74 = sext i16 %36 to i32
  %cmp75 = icmp slt i32 %conv74, -16
  br i1 %cmp75, label %cond.true77, label %cond.false78

cond.true77:                                      ; preds = %cond.false73
  br label %cond.end81

cond.false78:                                     ; preds = %cond.false73
  %37 = load i16, i16* %temp, align 2
  %conv79 = sext i16 %37 to i32
  %sub80 = sub nsw i32 %conv79, -16
  br label %cond.end81

cond.end81:                                       ; preds = %cond.false78, %cond.true77
  %cond82 = phi i32 [ 0, %cond.true77 ], [ %sub80, %cond.false78 ]
  br label %cond.end83

cond.end83:                                       ; preds = %cond.end81, %cond.true72
  %cond84 = phi i32 [ 31, %cond.true72 ], [ %cond82, %cond.end81 ]
  %conv85 = trunc i32 %cond84 to i16
  %38 = load i16*, i16** %LAR.addr, align 4
  store i16 %conv85, i16* %38, align 2
  %39 = load i16*, i16** %LAR.addr, align 4
  %incdec.ptr86 = getelementptr inbounds i16, i16* %39, i32 1
  store i16* %incdec.ptr86, i16** %LAR.addr, align 4
  %40 = load i16*, i16** %LAR.addr, align 4
  %41 = load i16, i16* %40, align 2
  %call87 = call signext i16 @gsm_mult(i16 signext 13964, i16 signext %41)
  store i16 %call87, i16* %temp, align 2
  %42 = load i16, i16* %temp, align 2
  %call88 = call signext i16 @gsm_add(i16 signext %42, i16 signext 94)
  store i16 %call88, i16* %temp, align 2
  %43 = load i16, i16* %temp, align 2
  %call89 = call signext i16 @gsm_add(i16 signext %43, i16 signext 256)
  store i16 %call89, i16* %temp, align 2
  %44 = load i16, i16* %temp, align 2
  %conv90 = sext i16 %44 to i32
  %shr91 = ashr i32 %conv90, 9
  %conv92 = trunc i32 %shr91 to i16
  store i16 %conv92, i16* %temp, align 2
  %45 = load i16, i16* %temp, align 2
  %conv93 = sext i16 %45 to i32
  %cmp94 = icmp sgt i32 %conv93, 7
  br i1 %cmp94, label %cond.true96, label %cond.false97

cond.true96:                                      ; preds = %cond.end83
  br label %cond.end107

cond.false97:                                     ; preds = %cond.end83
  %46 = load i16, i16* %temp, align 2
  %conv98 = sext i16 %46 to i32
  %cmp99 = icmp slt i32 %conv98, -8
  br i1 %cmp99, label %cond.true101, label %cond.false102

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end105

cond.false102:                                    ; preds = %cond.false97
  %47 = load i16, i16* %temp, align 2
  %conv103 = sext i16 %47 to i32
  %sub104 = sub nsw i32 %conv103, -8
  br label %cond.end105

cond.end105:                                      ; preds = %cond.false102, %cond.true101
  %cond106 = phi i32 [ 0, %cond.true101 ], [ %sub104, %cond.false102 ]
  br label %cond.end107

cond.end107:                                      ; preds = %cond.end105, %cond.true96
  %cond108 = phi i32 [ 15, %cond.true96 ], [ %cond106, %cond.end105 ]
  %conv109 = trunc i32 %cond108 to i16
  %48 = load i16*, i16** %LAR.addr, align 4
  store i16 %conv109, i16* %48, align 2
  %49 = load i16*, i16** %LAR.addr, align 4
  %incdec.ptr110 = getelementptr inbounds i16, i16* %49, i32 1
  store i16* %incdec.ptr110, i16** %LAR.addr, align 4
  %50 = load i16*, i16** %LAR.addr, align 4
  %51 = load i16, i16* %50, align 2
  %call111 = call signext i16 @gsm_mult(i16 signext 15360, i16 signext %51)
  store i16 %call111, i16* %temp, align 2
  %52 = load i16, i16* %temp, align 2
  %call112 = call signext i16 @gsm_add(i16 signext %52, i16 signext -1792)
  store i16 %call112, i16* %temp, align 2
  %53 = load i16, i16* %temp, align 2
  %call113 = call signext i16 @gsm_add(i16 signext %53, i16 signext 256)
  store i16 %call113, i16* %temp, align 2
  %54 = load i16, i16* %temp, align 2
  %conv114 = sext i16 %54 to i32
  %shr115 = ashr i32 %conv114, 9
  %conv116 = trunc i32 %shr115 to i16
  store i16 %conv116, i16* %temp, align 2
  %55 = load i16, i16* %temp, align 2
  %conv117 = sext i16 %55 to i32
  %cmp118 = icmp sgt i32 %conv117, 7
  br i1 %cmp118, label %cond.true120, label %cond.false121

cond.true120:                                     ; preds = %cond.end107
  br label %cond.end131

cond.false121:                                    ; preds = %cond.end107
  %56 = load i16, i16* %temp, align 2
  %conv122 = sext i16 %56 to i32
  %cmp123 = icmp slt i32 %conv122, -8
  br i1 %cmp123, label %cond.true125, label %cond.false126

cond.true125:                                     ; preds = %cond.false121
  br label %cond.end129

cond.false126:                                    ; preds = %cond.false121
  %57 = load i16, i16* %temp, align 2
  %conv127 = sext i16 %57 to i32
  %sub128 = sub nsw i32 %conv127, -8
  br label %cond.end129

cond.end129:                                      ; preds = %cond.false126, %cond.true125
  %cond130 = phi i32 [ 0, %cond.true125 ], [ %sub128, %cond.false126 ]
  br label %cond.end131

cond.end131:                                      ; preds = %cond.end129, %cond.true120
  %cond132 = phi i32 [ 15, %cond.true120 ], [ %cond130, %cond.end129 ]
  %conv133 = trunc i32 %cond132 to i16
  %58 = load i16*, i16** %LAR.addr, align 4
  store i16 %conv133, i16* %58, align 2
  %59 = load i16*, i16** %LAR.addr, align 4
  %incdec.ptr134 = getelementptr inbounds i16, i16* %59, i32 1
  store i16* %incdec.ptr134, i16** %LAR.addr, align 4
  %60 = load i16*, i16** %LAR.addr, align 4
  %61 = load i16, i16* %60, align 2
  %call135 = call signext i16 @gsm_mult(i16 signext 8534, i16 signext %61)
  store i16 %call135, i16* %temp, align 2
  %62 = load i16, i16* %temp, align 2
  %call136 = call signext i16 @gsm_add(i16 signext %62, i16 signext -341)
  store i16 %call136, i16* %temp, align 2
  %63 = load i16, i16* %temp, align 2
  %call137 = call signext i16 @gsm_add(i16 signext %63, i16 signext 256)
  store i16 %call137, i16* %temp, align 2
  %64 = load i16, i16* %temp, align 2
  %conv138 = sext i16 %64 to i32
  %shr139 = ashr i32 %conv138, 9
  %conv140 = trunc i32 %shr139 to i16
  store i16 %conv140, i16* %temp, align 2
  %65 = load i16, i16* %temp, align 2
  %conv141 = sext i16 %65 to i32
  %cmp142 = icmp sgt i32 %conv141, 3
  br i1 %cmp142, label %cond.true144, label %cond.false145

cond.true144:                                     ; preds = %cond.end131
  br label %cond.end155

cond.false145:                                    ; preds = %cond.end131
  %66 = load i16, i16* %temp, align 2
  %conv146 = sext i16 %66 to i32
  %cmp147 = icmp slt i32 %conv146, -4
  br i1 %cmp147, label %cond.true149, label %cond.false150

cond.true149:                                     ; preds = %cond.false145
  br label %cond.end153

cond.false150:                                    ; preds = %cond.false145
  %67 = load i16, i16* %temp, align 2
  %conv151 = sext i16 %67 to i32
  %sub152 = sub nsw i32 %conv151, -4
  br label %cond.end153

cond.end153:                                      ; preds = %cond.false150, %cond.true149
  %cond154 = phi i32 [ 0, %cond.true149 ], [ %sub152, %cond.false150 ]
  br label %cond.end155

cond.end155:                                      ; preds = %cond.end153, %cond.true144
  %cond156 = phi i32 [ 7, %cond.true144 ], [ %cond154, %cond.end153 ]
  %conv157 = trunc i32 %cond156 to i16
  %68 = load i16*, i16** %LAR.addr, align 4
  store i16 %conv157, i16* %68, align 2
  %69 = load i16*, i16** %LAR.addr, align 4
  %incdec.ptr158 = getelementptr inbounds i16, i16* %69, i32 1
  store i16* %incdec.ptr158, i16** %LAR.addr, align 4
  %70 = load i16*, i16** %LAR.addr, align 4
  %71 = load i16, i16* %70, align 2
  %call159 = call signext i16 @gsm_mult(i16 signext 9036, i16 signext %71)
  store i16 %call159, i16* %temp, align 2
  %72 = load i16, i16* %temp, align 2
  %call160 = call signext i16 @gsm_add(i16 signext %72, i16 signext -1144)
  store i16 %call160, i16* %temp, align 2
  %73 = load i16, i16* %temp, align 2
  %call161 = call signext i16 @gsm_add(i16 signext %73, i16 signext 256)
  store i16 %call161, i16* %temp, align 2
  %74 = load i16, i16* %temp, align 2
  %conv162 = sext i16 %74 to i32
  %shr163 = ashr i32 %conv162, 9
  %conv164 = trunc i32 %shr163 to i16
  store i16 %conv164, i16* %temp, align 2
  %75 = load i16, i16* %temp, align 2
  %conv165 = sext i16 %75 to i32
  %cmp166 = icmp sgt i32 %conv165, 3
  br i1 %cmp166, label %cond.true168, label %cond.false169

cond.true168:                                     ; preds = %cond.end155
  br label %cond.end179

cond.false169:                                    ; preds = %cond.end155
  %76 = load i16, i16* %temp, align 2
  %conv170 = sext i16 %76 to i32
  %cmp171 = icmp slt i32 %conv170, -4
  br i1 %cmp171, label %cond.true173, label %cond.false174

cond.true173:                                     ; preds = %cond.false169
  br label %cond.end177

cond.false174:                                    ; preds = %cond.false169
  %77 = load i16, i16* %temp, align 2
  %conv175 = sext i16 %77 to i32
  %sub176 = sub nsw i32 %conv175, -4
  br label %cond.end177

cond.end177:                                      ; preds = %cond.false174, %cond.true173
  %cond178 = phi i32 [ 0, %cond.true173 ], [ %sub176, %cond.false174 ]
  br label %cond.end179

cond.end179:                                      ; preds = %cond.end177, %cond.true168
  %cond180 = phi i32 [ 7, %cond.true168 ], [ %cond178, %cond.end177 ]
  %conv181 = trunc i32 %cond180 to i16
  %78 = load i16*, i16** %LAR.addr, align 4
  store i16 %conv181, i16* %78, align 2
  %79 = load i16*, i16** %LAR.addr, align 4
  %incdec.ptr182 = getelementptr inbounds i16, i16* %79, i32 1
  store i16* %incdec.ptr182, i16** %LAR.addr, align 4
  ret void
}

; Function Attrs: noinline nounwind ssp
define void @Gsm_LPC_Analysis(i16* %s, i16* %LARc) #0 {
entry:
  %s.addr = alloca i16*, align 4
  %LARc.addr = alloca i16*, align 4
  %L_ACF = alloca [9 x i32], align 4
  store i16* %s, i16** %s.addr, align 4
  store i16* %LARc, i16** %LARc.addr, align 4
  %0 = load i16*, i16** %s.addr, align 4
  %arraydecay = getelementptr inbounds [9 x i32], [9 x i32]* %L_ACF, i32 0, i32 0
  call void @Autocorrelation(i16* %0, i32* %arraydecay)
  %arraydecay1 = getelementptr inbounds [9 x i32], [9 x i32]* %L_ACF, i32 0, i32 0
  %1 = load i16*, i16** %LARc.addr, align 4
  call void @Reflection_coefficients(i32* %arraydecay1, i16* %1)
  %2 = load i16*, i16** %LARc.addr, align 4
  call void @Transformation_to_Log_Area_Ratios(i16* %2)
  %3 = load i16*, i16** %LARc.addr, align 4
  call void @Quantization_and_coding(i16* %3)
  ret void
}

; Function Attrs: noinline nounwind ssp
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %main_result = alloca i32, align 4
  %so = alloca [160 x i16], align 2
  %LARc = alloca [8 x i16], align 2
  store i32 0, i32* %retval, align 4
  store i32 0, i32* %main_result, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 160
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds [160 x i16], [160 x i16]* @inData, i32 0, i32 %1
  %2 = load i16, i16* %arrayidx, align 2
  %3 = load i32, i32* %i, align 4
  %arrayidx1 = getelementptr inbounds [160 x i16], [160 x i16]* %so, i32 0, i32 %3
  store i16 %2, i16* %arrayidx1, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arraydecay = getelementptr inbounds [160 x i16], [160 x i16]* %so, i32 0, i32 0
  %arraydecay2 = getelementptr inbounds [8 x i16], [8 x i16]* %LARc, i32 0, i32 0
  call void @Gsm_LPC_Analysis(i16* %arraydecay, i16* %arraydecay2)
  store i32 0, i32* %i, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc11, %for.end
  %5 = load i32, i32* %i, align 4
  %cmp4 = icmp slt i32 %5, 160
  br i1 %cmp4, label %for.body5, label %for.end13

for.body5:                                        ; preds = %for.cond3
  %6 = load i32, i32* %i, align 4
  %arrayidx6 = getelementptr inbounds [160 x i16], [160 x i16]* %so, i32 0, i32 %6
  %7 = load i16, i16* %arrayidx6, align 2
  %conv = sext i16 %7 to i32
  %8 = load i32, i32* %i, align 4
  %arrayidx7 = getelementptr inbounds [160 x i16], [160 x i16]* @outData, i32 0, i32 %8
  %9 = load i16, i16* %arrayidx7, align 2
  %conv8 = sext i16 %9 to i32
  %cmp9 = icmp ne i32 %conv, %conv8
  %conv10 = zext i1 %cmp9 to i32
  %10 = load i32, i32* %main_result, align 4
  %add = add nsw i32 %10, %conv10
  store i32 %add, i32* %main_result, align 4
  br label %for.inc11

for.inc11:                                        ; preds = %for.body5
  %11 = load i32, i32* %i, align 4
  %inc12 = add nsw i32 %11, 1
  store i32 %inc12, i32* %i, align 4
  br label %for.cond3

for.end13:                                        ; preds = %for.cond3
  store i32 0, i32* %i, align 4
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc25, %for.end13
  %12 = load i32, i32* %i, align 4
  %cmp15 = icmp slt i32 %12, 8
  br i1 %cmp15, label %for.body17, label %for.end27

for.body17:                                       ; preds = %for.cond14
  %13 = load i32, i32* %i, align 4
  %arrayidx18 = getelementptr inbounds [8 x i16], [8 x i16]* %LARc, i32 0, i32 %13
  %14 = load i16, i16* %arrayidx18, align 2
  %conv19 = sext i16 %14 to i32
  %15 = load i32, i32* %i, align 4
  %arrayidx20 = getelementptr inbounds [8 x i16], [8 x i16]* @outLARc, i32 0, i32 %15
  %16 = load i16, i16* %arrayidx20, align 2
  %conv21 = sext i16 %16 to i32
  %cmp22 = icmp ne i32 %conv19, %conv21
  %conv23 = zext i1 %cmp22 to i32
  %17 = load i32, i32* %main_result, align 4
  %add24 = add nsw i32 %17, %conv23
  store i32 %add24, i32* %main_result, align 4
  br label %for.inc25

for.inc25:                                        ; preds = %for.body17
  %18 = load i32, i32* %i, align 4
  %inc26 = add nsw i32 %18, 1
  store i32 %inc26, i32* %i, align 4
  br label %for.cond14

for.end27:                                        ; preds = %for.cond14
  %19 = load i32, i32* %main_result, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 %19)
  %20 = load i32, i32* %main_result, align 4
  ret i32 %20
}

declare i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind ssp "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
