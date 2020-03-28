; ModuleID = 'gsm/gsm.c'
source_filename = "gsm/gsm.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

%struct.timeval = type { i64, i32 }

@bitoff = constant [256 x i8] c"\08\07\06\06\05\05\05\05\04\04\04\04\04\04\04\04\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@inData = constant [160 x i16] [i16 81, i16 10854, i16 1893, i16 -10291, i16 7614, i16 29718, i16 20475, i16 -29215, i16 -18949, i16 -29806, i16 -32017, i16 1596, i16 15744, i16 -3088, i16 -17413, i16 -22123, i16 6798, i16 -13276, i16 3819, i16 -16273, i16 -1573, i16 -12523, i16 -27103, i16 -193, i16 -25588, i16 4698, i16 -30436, i16 15264, i16 -1393, i16 11418, i16 11370, i16 4986, i16 7869, i16 -1903, i16 9123, i16 -31726, i16 -25237, i16 -14155, i16 17982, i16 32427, i16 -12439, i16 -15931, i16 -21622, i16 7896, i16 1689, i16 28113, i16 3615, i16 22131, i16 -5572, i16 -20110, i16 12387, i16 9177, i16 -24544, i16 12480, i16 21546, i16 -17842, i16 -13645, i16 20277, i16 9987, i16 17652, i16 -11464, i16 -17326, i16 -10552, i16 -27100, i16 207, i16 27612, i16 2517, i16 7167, i16 -29734, i16 -22441, i16 30039, i16 -2368, i16 12813, i16 300, i16 -25555, i16 9087, i16 29022, i16 -6559, i16 -20311, i16 -14347, i16 -7555, i16 -21709, i16 -3676, i16 -30082, i16 -3190, i16 -30979, i16 8580, i16 27126, i16 3414, i16 -4603, i16 -22303, i16 -17143, i16 13788, i16 -1096, i16 -14617, i16 22071, i16 -13552, i16 32646, i16 16689, i16 -8473, i16 -12733, i16 10503, i16 20745, i16 6696, i16 -26842, i16 -31015, i16 3792, i16 -19864, i16 -20431, i16 -30307, i16 32421, i16 -13237, i16 9006, i16 18249, i16 2403, i16 -7996, i16 -14827, i16 -5860, i16 7122, i16 29817, i16 -31894, i16 17955, i16 28836, i16 -31297, i16 31821, i16 -27502, i16 12276, i16 -5587, i16 -22105, i16 9192, i16 -22549, i16 15675, i16 -12265, i16 7212, i16 -23749, i16 -12856, i16 -5857, i16 7521, i16 17349, i16 13773, i16 -3091, i16 -17812, i16 -9655, i16 26667, i16 7902, i16 2487, i16 3177, i16 29412, i16 -20224, i16 -2776, i16 24084, i16 -7963, i16 -10438, i16 -11938, i16 -14833, i16 -6658, i16 32058, i16 4020, i16 10461, i16 15159], align 16
@outData = constant [160 x i16] [i16 80, i16 10848, i16 1888, i16 -10288, i16 7616, i16 29712, i16 20480, i16 -29216, i16 -18944, i16 -29808, i16 -32016, i16 1600, i16 15744, i16 -3088, i16 -17408, i16 -22128, i16 6800, i16 -13280, i16 3824, i16 -16272, i16 -1568, i16 -12528, i16 -27104, i16 -192, i16 -25584, i16 4704, i16 -30432, i16 15264, i16 -1392, i16 11424, i16 11376, i16 4992, i16 7872, i16 -1904, i16 9120, i16 -31728, i16 -25232, i16 -14160, i16 17984, i16 32432, i16 -12432, i16 -15936, i16 -21616, i16 7904, i16 1696, i16 28112, i16 3616, i16 22128, i16 -5568, i16 -20112, i16 12384, i16 9184, i16 -24544, i16 12480, i16 21552, i16 -17840, i16 -13648, i16 20272, i16 9984, i16 17648, i16 -11456, i16 -17328, i16 -10544, i16 -27104, i16 208, i16 27616, i16 2512, i16 7168, i16 -29728, i16 -22448, i16 30032, i16 -2368, i16 12816, i16 304, i16 -25552, i16 9088, i16 29024, i16 -6560, i16 -20304, i16 -14352, i16 -7552, i16 -21712, i16 -3680, i16 -30080, i16 -3184, i16 -30976, i16 8576, i16 27120, i16 3408, i16 -4608, i16 -22304, i16 -17136, i16 13792, i16 -1088, i16 -14624, i16 22064, i16 -13552, i16 32640, i16 16688, i16 -8480, i16 -12736, i16 10496, i16 20752, i16 6704, i16 -26848, i16 -31008, i16 3792, i16 -19856, i16 -20432, i16 -30304, i16 32416, i16 -13232, i16 9008, i16 18256, i16 2400, i16 -8000, i16 -14832, i16 -5856, i16 7120, i16 29824, i16 -31888, i16 17952, i16 28832, i16 -31296, i16 31824, i16 -27504, i16 12272, i16 -5584, i16 -22112, i16 9200, i16 -22544, i16 15680, i16 -12272, i16 7216, i16 -23744, i16 -12848, i16 -5856, i16 7520, i16 17344, i16 13776, i16 -3088, i16 -17808, i16 -9648, i16 26672, i16 7904, i16 2480, i16 3184, i16 29408, i16 -20224, i16 -2768, i16 24080, i16 -7968, i16 -10432, i16 -11936, i16 -14832, i16 -6656, i16 32064, i16 4016, i16 10464, i16 15152], align 16
@outLARc = constant [8 x i16] [i16 32, i16 33, i16 22, i16 13, i16 7, i16 5, i16 3, i16 2], align 16
@.str = private unnamed_addr constant [11 x i8] c"\0ATime: %f\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"\0AResult: %d\0A\00", align 1

; Function Attrs: noinline nounwind ssp uwtable
define signext i16 @gsm_add(i16 signext %a, i16 signext %b) #0 {
entry:
  %a.addr = alloca i16, align 2
  %b.addr = alloca i16, align 2
  %sum = alloca i64, align 8
  store i16 %a, i16* %a.addr, align 2
  store i16 %b, i16* %b.addr, align 2
  %0 = load i16, i16* %a.addr, align 2
  %conv = sext i16 %0 to i64
  %1 = load i16, i16* %b.addr, align 2
  %conv1 = sext i16 %1 to i64
  %add = add nsw i64 %conv, %conv1
  store i64 %add, i64* %sum, align 8
  %2 = load i64, i64* %sum, align 8
  %cmp = icmp slt i64 %2, -32768
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end7

cond.false:                                       ; preds = %entry
  %3 = load i64, i64* %sum, align 8
  %cmp3 = icmp sgt i64 %3, 32767
  br i1 %cmp3, label %cond.true5, label %cond.false6

cond.true5:                                       ; preds = %cond.false
  br label %cond.end

cond.false6:                                      ; preds = %cond.false
  %4 = load i64, i64* %sum, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false6, %cond.true5
  %cond = phi i64 [ 32767, %cond.true5 ], [ %4, %cond.false6 ]
  br label %cond.end7

cond.end7:                                        ; preds = %cond.end, %cond.true
  %cond8 = phi i64 [ -32768, %cond.true ], [ %cond, %cond.end ]
  %conv9 = trunc i64 %cond8 to i16
  ret i16 %conv9
}

; Function Attrs: noinline nounwind ssp uwtable
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
  %conv5 = sext i16 %2 to i64
  %3 = load i16, i16* %b.addr, align 2
  %conv6 = sext i16 %3 to i64
  %mul = mul nsw i64 %conv5, %conv6
  %shr = ashr i64 %mul, 15
  %conv7 = trunc i64 %shr to i16
  store i16 %conv7, i16* %retval, align 2
  br label %return

return:                                           ; preds = %if.else, %if.then
  %4 = load i16, i16* %retval, align 2
  ret i16 %4
}

; Function Attrs: noinline nounwind ssp uwtable
define signext i16 @gsm_mult_r(i16 signext %a, i16 signext %b) #0 {
entry:
  %retval = alloca i16, align 2
  %a.addr = alloca i16, align 2
  %b.addr = alloca i16, align 2
  %prod = alloca i64, align 8
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
  %conv5 = sext i16 %2 to i64
  %3 = load i16, i16* %b.addr, align 2
  %conv6 = sext i16 %3 to i64
  %mul = mul nsw i64 %conv5, %conv6
  %add = add nsw i64 %mul, 16384
  store i64 %add, i64* %prod, align 8
  %4 = load i64, i64* %prod, align 8
  %shr = ashr i64 %4, 15
  store i64 %shr, i64* %prod, align 8
  %5 = load i64, i64* %prod, align 8
  %and = and i64 %5, 65535
  %conv7 = trunc i64 %and to i16
  store i16 %conv7, i16* %retval, align 2
  br label %return

return:                                           ; preds = %if.else, %if.then
  %6 = load i16, i16* %retval, align 2
  ret i16 %6
}

; Function Attrs: noinline nounwind ssp uwtable
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

; Function Attrs: noinline nounwind ssp uwtable
define signext i16 @gsm_norm(i64 %a) #0 {
entry:
  %retval = alloca i16, align 2
  %a.addr = alloca i64, align 8
  store i64 %a, i64* %a.addr, align 8
  %0 = load i64, i64* %a.addr, align 8
  %cmp = icmp slt i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %1 = load i64, i64* %a.addr, align 8
  %cmp1 = icmp sle i64 %1, -1073741824
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  store i16 0, i16* %retval, align 2
  br label %return

if.end:                                           ; preds = %if.then
  %2 = load i64, i64* %a.addr, align 8
  %neg = xor i64 %2, -1
  store i64 %neg, i64* %a.addr, align 8
  br label %if.end3

if.end3:                                          ; preds = %if.end, %entry
  %3 = load i64, i64* %a.addr, align 8
  %and = and i64 %3, 4294901760
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %cond.true, label %cond.false13

cond.true:                                        ; preds = %if.end3
  %4 = load i64, i64* %a.addr, align 8
  %and4 = and i64 %4, 4278190080
  %tobool5 = icmp ne i64 %and4, 0
  br i1 %tobool5, label %cond.true6, label %cond.false

cond.true6:                                       ; preds = %cond.true
  %5 = load i64, i64* %a.addr, align 8
  %shr = ashr i64 %5, 24
  %and7 = and i64 255, %shr
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* @bitoff, i64 0, i64 %and7
  %6 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %6 to i32
  %add = add nsw i32 -1, %conv
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %7 = load i64, i64* %a.addr, align 8
  %shr8 = ashr i64 %7, 16
  %and9 = and i64 255, %shr8
  %arrayidx10 = getelementptr inbounds [256 x i8], [256 x i8]* @bitoff, i64 0, i64 %and9
  %8 = load i8, i8* %arrayidx10, align 1
  %conv11 = zext i8 %8 to i32
  %add12 = add nsw i32 7, %conv11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true6
  %cond = phi i32 [ %add, %cond.true6 ], [ %add12, %cond.false ]
  br label %cond.end29

cond.false13:                                     ; preds = %if.end3
  %9 = load i64, i64* %a.addr, align 8
  %and14 = and i64 %9, 65280
  %tobool15 = icmp ne i64 %and14, 0
  br i1 %tobool15, label %cond.true16, label %cond.false22

cond.true16:                                      ; preds = %cond.false13
  %10 = load i64, i64* %a.addr, align 8
  %shr17 = ashr i64 %10, 8
  %and18 = and i64 255, %shr17
  %arrayidx19 = getelementptr inbounds [256 x i8], [256 x i8]* @bitoff, i64 0, i64 %and18
  %11 = load i8, i8* %arrayidx19, align 1
  %conv20 = zext i8 %11 to i32
  %add21 = add nsw i32 15, %conv20
  br label %cond.end27

cond.false22:                                     ; preds = %cond.false13
  %12 = load i64, i64* %a.addr, align 8
  %and23 = and i64 255, %12
  %arrayidx24 = getelementptr inbounds [256 x i8], [256 x i8]* @bitoff, i64 0, i64 %and23
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

; Function Attrs: noinline nounwind ssp uwtable
define signext i16 @gsm_div(i16 signext %num, i16 signext %denum) #0 {
entry:
  %retval = alloca i16, align 2
  %num.addr = alloca i16, align 2
  %denum.addr = alloca i16, align 2
  %L_num = alloca i64, align 8
  %L_denum = alloca i64, align 8
  %div = alloca i16, align 2
  %k = alloca i32, align 4
  store i16 %num, i16* %num.addr, align 2
  store i16 %denum, i16* %denum.addr, align 2
  %0 = load i16, i16* %num.addr, align 2
  %conv = sext i16 %0 to i64
  store i64 %conv, i64* %L_num, align 8
  %1 = load i16, i16* %denum.addr, align 2
  %conv1 = sext i16 %1 to i64
  store i64 %conv1, i64* %L_denum, align 8
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
  %5 = load i64, i64* %L_num, align 8
  %shl6 = shl i64 %5, 1
  store i64 %shl6, i64* %L_num, align 8
  %6 = load i64, i64* %L_num, align 8
  %7 = load i64, i64* %L_denum, align 8
  %cmp7 = icmp sge i64 %6, %7
  br i1 %cmp7, label %if.then9, label %if.end10

if.then9:                                         ; preds = %while.body
  %8 = load i64, i64* %L_denum, align 8
  %9 = load i64, i64* %L_num, align 8
  %sub = sub nsw i64 %9, %8
  store i64 %sub, i64* %L_num, align 8
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

; Function Attrs: noinline nounwind ssp uwtable
define void @Autocorrelation(i16* %s, i64* %L_ACF) #0 {
entry:
  %s.addr = alloca i16*, align 8
  %L_ACF.addr = alloca i64*, align 8
  %k = alloca i32, align 4
  %i = alloca i32, align 4
  %temp = alloca i16, align 2
  %smax = alloca i16, align 2
  %scalauto = alloca i16, align 2
  %n = alloca i16, align 2
  %sp = alloca i16*, align 8
  %sl = alloca i16, align 2
  store i16* %s, i16** %s.addr, align 8
  store i64* %L_ACF, i64** %L_ACF.addr, align 8
  store i16 0, i16* %smax, align 2
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %k, align 4
  %cmp = icmp sle i32 %0, 159
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i16*, i16** %s.addr, align 8
  %2 = load i32, i32* %k, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds i16, i16* %1, i64 %idxprom
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
  %conv8 = sext i16 %9 to i64
  %shl = shl i64 %conv8, 16
  %call9 = call signext i16 @gsm_norm(i64 %shl)
  %conv10 = sext i16 %call9 to i32
  %sub = sub nsw i32 4, %conv10
  %conv11 = trunc i32 %sub to i16
  store i16 %conv11, i16* %scalauto, align 2
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then7
  %10 = load i16, i16* %scalauto, align 2
  %conv13 = sext i16 %10 to i32
  %cmp14 = icmp sgt i32 %conv13, 0
  br i1 %cmp14, label %land.lhs.true, label %if.end35

land.lhs.true:                                    ; preds = %if.end12
  %11 = load i16, i16* %scalauto, align 2
  %conv16 = sext i16 %11 to i32
  %cmp17 = icmp sle i32 %conv16, 4
  br i1 %cmp17, label %if.then19, label %if.end35

if.then19:                                        ; preds = %land.lhs.true
  %12 = load i16, i16* %scalauto, align 2
  store i16 %12, i16* %n, align 2
  store i32 0, i32* %k, align 4
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc32, %if.then19
  %13 = load i32, i32* %k, align 4
  %cmp21 = icmp sle i32 %13, 159
  br i1 %cmp21, label %for.body23, label %for.end34

for.body23:                                       ; preds = %for.cond20
  %14 = load i16*, i16** %s.addr, align 8
  %15 = load i32, i32* %k, align 4
  %idxprom24 = sext i32 %15 to i64
  %arrayidx25 = getelementptr inbounds i16, i16* %14, i64 %idxprom24
  %16 = load i16, i16* %arrayidx25, align 2
  %17 = load i16, i16* %n, align 2
  %conv26 = sext i16 %17 to i32
  %sub27 = sub nsw i32 %conv26, 1
  %shr = ashr i32 16384, %sub27
  %conv28 = trunc i32 %shr to i16
  %call29 = call signext i16 @gsm_mult_r(i16 signext %16, i16 signext %conv28)
  %18 = load i16*, i16** %s.addr, align 8
  %19 = load i32, i32* %k, align 4
  %idxprom30 = sext i32 %19 to i64
  %arrayidx31 = getelementptr inbounds i16, i16* %18, i64 %idxprom30
  store i16 %call29, i16* %arrayidx31, align 2
  br label %for.inc32

for.inc32:                                        ; preds = %for.body23
  %20 = load i32, i32* %k, align 4
  %inc33 = add nsw i32 %20, 1
  store i32 %inc33, i32* %k, align 4
  br label %for.cond20

for.end34:                                        ; preds = %for.cond20
  br label %if.end35

if.end35:                                         ; preds = %for.end34, %land.lhs.true, %if.end12
  %21 = load i16*, i16** %s.addr, align 8
  store i16* %21, i16** %sp, align 8
  %22 = load i16*, i16** %sp, align 8
  %23 = load i16, i16* %22, align 2
  store i16 %23, i16* %sl, align 2
  store i32 8, i32* %k, align 4
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc42, %if.end35
  %24 = load i32, i32* %k, align 4
  %cmp37 = icmp sge i32 %24, 0
  br i1 %cmp37, label %for.body39, label %for.end43

for.body39:                                       ; preds = %for.cond36
  %25 = load i64*, i64** %L_ACF.addr, align 8
  %26 = load i32, i32* %k, align 4
  %idxprom40 = sext i32 %26 to i64
  %arrayidx41 = getelementptr inbounds i64, i64* %25, i64 %idxprom40
  store i64 0, i64* %arrayidx41, align 8
  br label %for.inc42

for.inc42:                                        ; preds = %for.body39
  %27 = load i32, i32* %k, align 4
  %dec = add nsw i32 %27, -1
  store i32 %dec, i32* %k, align 4
  br label %for.cond36

for.end43:                                        ; preds = %for.cond36
  %28 = load i16, i16* %sl, align 2
  %conv44 = sext i16 %28 to i64
  %29 = load i16*, i16** %sp, align 8
  %arrayidx45 = getelementptr inbounds i16, i16* %29, i64 0
  %30 = load i16, i16* %arrayidx45, align 2
  %conv46 = sext i16 %30 to i64
  %mul = mul nsw i64 %conv44, %conv46
  %31 = load i64*, i64** %L_ACF.addr, align 8
  %arrayidx47 = getelementptr inbounds i64, i64* %31, i64 0
  %32 = load i64, i64* %arrayidx47, align 8
  %add = add nsw i64 %32, %mul
  store i64 %add, i64* %arrayidx47, align 8
  %33 = load i16*, i16** %sp, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %33, i32 1
  store i16* %incdec.ptr, i16** %sp, align 8
  %34 = load i16, i16* %incdec.ptr, align 2
  store i16 %34, i16* %sl, align 2
  %35 = load i16, i16* %sl, align 2
  %conv48 = sext i16 %35 to i64
  %36 = load i16*, i16** %sp, align 8
  %arrayidx49 = getelementptr inbounds i16, i16* %36, i64 0
  %37 = load i16, i16* %arrayidx49, align 2
  %conv50 = sext i16 %37 to i64
  %mul51 = mul nsw i64 %conv48, %conv50
  %38 = load i64*, i64** %L_ACF.addr, align 8
  %arrayidx52 = getelementptr inbounds i64, i64* %38, i64 0
  %39 = load i64, i64* %arrayidx52, align 8
  %add53 = add nsw i64 %39, %mul51
  store i64 %add53, i64* %arrayidx52, align 8
  %40 = load i16, i16* %sl, align 2
  %conv54 = sext i16 %40 to i64
  %41 = load i16*, i16** %sp, align 8
  %arrayidx55 = getelementptr inbounds i16, i16* %41, i64 -1
  %42 = load i16, i16* %arrayidx55, align 2
  %conv56 = sext i16 %42 to i64
  %mul57 = mul nsw i64 %conv54, %conv56
  %43 = load i64*, i64** %L_ACF.addr, align 8
  %arrayidx58 = getelementptr inbounds i64, i64* %43, i64 1
  %44 = load i64, i64* %arrayidx58, align 8
  %add59 = add nsw i64 %44, %mul57
  store i64 %add59, i64* %arrayidx58, align 8
  %45 = load i16*, i16** %sp, align 8
  %incdec.ptr60 = getelementptr inbounds i16, i16* %45, i32 1
  store i16* %incdec.ptr60, i16** %sp, align 8
  %46 = load i16, i16* %incdec.ptr60, align 2
  store i16 %46, i16* %sl, align 2
  %47 = load i16, i16* %sl, align 2
  %conv61 = sext i16 %47 to i64
  %48 = load i16*, i16** %sp, align 8
  %arrayidx62 = getelementptr inbounds i16, i16* %48, i64 0
  %49 = load i16, i16* %arrayidx62, align 2
  %conv63 = sext i16 %49 to i64
  %mul64 = mul nsw i64 %conv61, %conv63
  %50 = load i64*, i64** %L_ACF.addr, align 8
  %arrayidx65 = getelementptr inbounds i64, i64* %50, i64 0
  %51 = load i64, i64* %arrayidx65, align 8
  %add66 = add nsw i64 %51, %mul64
  store i64 %add66, i64* %arrayidx65, align 8
  %52 = load i16, i16* %sl, align 2
  %conv67 = sext i16 %52 to i64
  %53 = load i16*, i16** %sp, align 8
  %arrayidx68 = getelementptr inbounds i16, i16* %53, i64 -1
  %54 = load i16, i16* %arrayidx68, align 2
  %conv69 = sext i16 %54 to i64
  %mul70 = mul nsw i64 %conv67, %conv69
  %55 = load i64*, i64** %L_ACF.addr, align 8
  %arrayidx71 = getelementptr inbounds i64, i64* %55, i64 1
  %56 = load i64, i64* %arrayidx71, align 8
  %add72 = add nsw i64 %56, %mul70
  store i64 %add72, i64* %arrayidx71, align 8
  %57 = load i16, i16* %sl, align 2
  %conv73 = sext i16 %57 to i64
  %58 = load i16*, i16** %sp, align 8
  %arrayidx74 = getelementptr inbounds i16, i16* %58, i64 -2
  %59 = load i16, i16* %arrayidx74, align 2
  %conv75 = sext i16 %59 to i64
  %mul76 = mul nsw i64 %conv73, %conv75
  %60 = load i64*, i64** %L_ACF.addr, align 8
  %arrayidx77 = getelementptr inbounds i64, i64* %60, i64 2
  %61 = load i64, i64* %arrayidx77, align 8
  %add78 = add nsw i64 %61, %mul76
  store i64 %add78, i64* %arrayidx77, align 8
  %62 = load i16*, i16** %sp, align 8
  %incdec.ptr79 = getelementptr inbounds i16, i16* %62, i32 1
  store i16* %incdec.ptr79, i16** %sp, align 8
  %63 = load i16, i16* %incdec.ptr79, align 2
  store i16 %63, i16* %sl, align 2
  %64 = load i16, i16* %sl, align 2
  %conv80 = sext i16 %64 to i64
  %65 = load i16*, i16** %sp, align 8
  %arrayidx81 = getelementptr inbounds i16, i16* %65, i64 0
  %66 = load i16, i16* %arrayidx81, align 2
  %conv82 = sext i16 %66 to i64
  %mul83 = mul nsw i64 %conv80, %conv82
  %67 = load i64*, i64** %L_ACF.addr, align 8
  %arrayidx84 = getelementptr inbounds i64, i64* %67, i64 0
  %68 = load i64, i64* %arrayidx84, align 8
  %add85 = add nsw i64 %68, %mul83
  store i64 %add85, i64* %arrayidx84, align 8
  %69 = load i16, i16* %sl, align 2
  %conv86 = sext i16 %69 to i64
  %70 = load i16*, i16** %sp, align 8
  %arrayidx87 = getelementptr inbounds i16, i16* %70, i64 -1
  %71 = load i16, i16* %arrayidx87, align 2
  %conv88 = sext i16 %71 to i64
  %mul89 = mul nsw i64 %conv86, %conv88
  %72 = load i64*, i64** %L_ACF.addr, align 8
  %arrayidx90 = getelementptr inbounds i64, i64* %72, i64 1
  %73 = load i64, i64* %arrayidx90, align 8
  %add91 = add nsw i64 %73, %mul89
  store i64 %add91, i64* %arrayidx90, align 8
  %74 = load i16, i16* %sl, align 2
  %conv92 = sext i16 %74 to i64
  %75 = load i16*, i16** %sp, align 8
  %arrayidx93 = getelementptr inbounds i16, i16* %75, i64 -2
  %76 = load i16, i16* %arrayidx93, align 2
  %conv94 = sext i16 %76 to i64
  %mul95 = mul nsw i64 %conv92, %conv94
  %77 = load i64*, i64** %L_ACF.addr, align 8
  %arrayidx96 = getelementptr inbounds i64, i64* %77, i64 2
  %78 = load i64, i64* %arrayidx96, align 8
  %add97 = add nsw i64 %78, %mul95
  store i64 %add97, i64* %arrayidx96, align 8
  %79 = load i16, i16* %sl, align 2
  %conv98 = sext i16 %79 to i64
  %80 = load i16*, i16** %sp, align 8
  %arrayidx99 = getelementptr inbounds i16, i16* %80, i64 -3
  %81 = load i16, i16* %arrayidx99, align 2
  %conv100 = sext i16 %81 to i64
  %mul101 = mul nsw i64 %conv98, %conv100
  %82 = load i64*, i64** %L_ACF.addr, align 8
  %arrayidx102 = getelementptr inbounds i64, i64* %82, i64 3
  %83 = load i64, i64* %arrayidx102, align 8
  %add103 = add nsw i64 %83, %mul101
  store i64 %add103, i64* %arrayidx102, align 8
  %84 = load i16*, i16** %sp, align 8
  %incdec.ptr104 = getelementptr inbounds i16, i16* %84, i32 1
  store i16* %incdec.ptr104, i16** %sp, align 8
  %85 = load i16, i16* %incdec.ptr104, align 2
  store i16 %85, i16* %sl, align 2
  %86 = load i16, i16* %sl, align 2
  %conv105 = sext i16 %86 to i64
  %87 = load i16*, i16** %sp, align 8
  %arrayidx106 = getelementptr inbounds i16, i16* %87, i64 0
  %88 = load i16, i16* %arrayidx106, align 2
  %conv107 = sext i16 %88 to i64
  %mul108 = mul nsw i64 %conv105, %conv107
  %89 = load i64*, i64** %L_ACF.addr, align 8
  %arrayidx109 = getelementptr inbounds i64, i64* %89, i64 0
  %90 = load i64, i64* %arrayidx109, align 8
  %add110 = add nsw i64 %90, %mul108
  store i64 %add110, i64* %arrayidx109, align 8
  %91 = load i16, i16* %sl, align 2
  %conv111 = sext i16 %91 to i64
  %92 = load i16*, i16** %sp, align 8
  %arrayidx112 = getelementptr inbounds i16, i16* %92, i64 -1
  %93 = load i16, i16* %arrayidx112, align 2
  %conv113 = sext i16 %93 to i64
  %mul114 = mul nsw i64 %conv111, %conv113
  %94 = load i64*, i64** %L_ACF.addr, align 8
  %arrayidx115 = getelementptr inbounds i64, i64* %94, i64 1
  %95 = load i64, i64* %arrayidx115, align 8
  %add116 = add nsw i64 %95, %mul114
  store i64 %add116, i64* %arrayidx115, align 8
  %96 = load i16, i16* %sl, align 2
  %conv117 = sext i16 %96 to i64
  %97 = load i16*, i16** %sp, align 8
  %arrayidx118 = getelementptr inbounds i16, i16* %97, i64 -2
  %98 = load i16, i16* %arrayidx118, align 2
  %conv119 = sext i16 %98 to i64
  %mul120 = mul nsw i64 %conv117, %conv119
  %99 = load i64*, i64** %L_ACF.addr, align 8
  %arrayidx121 = getelementptr inbounds i64, i64* %99, i64 2
  %100 = load i64, i64* %arrayidx121, align 8
  %add122 = add nsw i64 %100, %mul120
  store i64 %add122, i64* %arrayidx121, align 8
  %101 = load i16, i16* %sl, align 2
  %conv123 = sext i16 %101 to i64
  %102 = load i16*, i16** %sp, align 8
  %arrayidx124 = getelementptr inbounds i16, i16* %102, i64 -3
  %103 = load i16, i16* %arrayidx124, align 2
  %conv125 = sext i16 %103 to i64
  %mul126 = mul nsw i64 %conv123, %conv125
  %104 = load i64*, i64** %L_ACF.addr, align 8
  %arrayidx127 = getelementptr inbounds i64, i64* %104, i64 3
  %105 = load i64, i64* %arrayidx127, align 8
  %add128 = add nsw i64 %105, %mul126
  store i64 %add128, i64* %arrayidx127, align 8
  %106 = load i16, i16* %sl, align 2
  %conv129 = sext i16 %106 to i64
  %107 = load i16*, i16** %sp, align 8
  %arrayidx130 = getelementptr inbounds i16, i16* %107, i64 -4
  %108 = load i16, i16* %arrayidx130, align 2
  %conv131 = sext i16 %108 to i64
  %mul132 = mul nsw i64 %conv129, %conv131
  %109 = load i64*, i64** %L_ACF.addr, align 8
  %arrayidx133 = getelementptr inbounds i64, i64* %109, i64 4
  %110 = load i64, i64* %arrayidx133, align 8
  %add134 = add nsw i64 %110, %mul132
  store i64 %add134, i64* %arrayidx133, align 8
  %111 = load i16*, i16** %sp, align 8
  %incdec.ptr135 = getelementptr inbounds i16, i16* %111, i32 1
  store i16* %incdec.ptr135, i16** %sp, align 8
  %112 = load i16, i16* %incdec.ptr135, align 2
  store i16 %112, i16* %sl, align 2
  %113 = load i16, i16* %sl, align 2
  %conv136 = sext i16 %113 to i64
  %114 = load i16*, i16** %sp, align 8
  %arrayidx137 = getelementptr inbounds i16, i16* %114, i64 0
  %115 = load i16, i16* %arrayidx137, align 2
  %conv138 = sext i16 %115 to i64
  %mul139 = mul nsw i64 %conv136, %conv138
  %116 = load i64*, i64** %L_ACF.addr, align 8
  %arrayidx140 = getelementptr inbounds i64, i64* %116, i64 0
  %117 = load i64, i64* %arrayidx140, align 8
  %add141 = add nsw i64 %117, %mul139
  store i64 %add141, i64* %arrayidx140, align 8
  %118 = load i16, i16* %sl, align 2
  %conv142 = sext i16 %118 to i64
  %119 = load i16*, i16** %sp, align 8
  %arrayidx143 = getelementptr inbounds i16, i16* %119, i64 -1
  %120 = load i16, i16* %arrayidx143, align 2
  %conv144 = sext i16 %120 to i64
  %mul145 = mul nsw i64 %conv142, %conv144
  %121 = load i64*, i64** %L_ACF.addr, align 8
  %arrayidx146 = getelementptr inbounds i64, i64* %121, i64 1
  %122 = load i64, i64* %arrayidx146, align 8
  %add147 = add nsw i64 %122, %mul145
  store i64 %add147, i64* %arrayidx146, align 8
  %123 = load i16, i16* %sl, align 2
  %conv148 = sext i16 %123 to i64
  %124 = load i16*, i16** %sp, align 8
  %arrayidx149 = getelementptr inbounds i16, i16* %124, i64 -2
  %125 = load i16, i16* %arrayidx149, align 2
  %conv150 = sext i16 %125 to i64
  %mul151 = mul nsw i64 %conv148, %conv150
  %126 = load i64*, i64** %L_ACF.addr, align 8
  %arrayidx152 = getelementptr inbounds i64, i64* %126, i64 2
  %127 = load i64, i64* %arrayidx152, align 8
  %add153 = add nsw i64 %127, %mul151
  store i64 %add153, i64* %arrayidx152, align 8
  %128 = load i16, i16* %sl, align 2
  %conv154 = sext i16 %128 to i64
  %129 = load i16*, i16** %sp, align 8
  %arrayidx155 = getelementptr inbounds i16, i16* %129, i64 -3
  %130 = load i16, i16* %arrayidx155, align 2
  %conv156 = sext i16 %130 to i64
  %mul157 = mul nsw i64 %conv154, %conv156
  %131 = load i64*, i64** %L_ACF.addr, align 8
  %arrayidx158 = getelementptr inbounds i64, i64* %131, i64 3
  %132 = load i64, i64* %arrayidx158, align 8
  %add159 = add nsw i64 %132, %mul157
  store i64 %add159, i64* %arrayidx158, align 8
  %133 = load i16, i16* %sl, align 2
  %conv160 = sext i16 %133 to i64
  %134 = load i16*, i16** %sp, align 8
  %arrayidx161 = getelementptr inbounds i16, i16* %134, i64 -4
  %135 = load i16, i16* %arrayidx161, align 2
  %conv162 = sext i16 %135 to i64
  %mul163 = mul nsw i64 %conv160, %conv162
  %136 = load i64*, i64** %L_ACF.addr, align 8
  %arrayidx164 = getelementptr inbounds i64, i64* %136, i64 4
  %137 = load i64, i64* %arrayidx164, align 8
  %add165 = add nsw i64 %137, %mul163
  store i64 %add165, i64* %arrayidx164, align 8
  %138 = load i16, i16* %sl, align 2
  %conv166 = sext i16 %138 to i64
  %139 = load i16*, i16** %sp, align 8
  %arrayidx167 = getelementptr inbounds i16, i16* %139, i64 -5
  %140 = load i16, i16* %arrayidx167, align 2
  %conv168 = sext i16 %140 to i64
  %mul169 = mul nsw i64 %conv166, %conv168
  %141 = load i64*, i64** %L_ACF.addr, align 8
  %arrayidx170 = getelementptr inbounds i64, i64* %141, i64 5
  %142 = load i64, i64* %arrayidx170, align 8
  %add171 = add nsw i64 %142, %mul169
  store i64 %add171, i64* %arrayidx170, align 8
  %143 = load i16*, i16** %sp, align 8
  %incdec.ptr172 = getelementptr inbounds i16, i16* %143, i32 1
  store i16* %incdec.ptr172, i16** %sp, align 8
  %144 = load i16, i16* %incdec.ptr172, align 2
  store i16 %144, i16* %sl, align 2
  %145 = load i16, i16* %sl, align 2
  %conv173 = sext i16 %145 to i64
  %146 = load i16*, i16** %sp, align 8
  %arrayidx174 = getelementptr inbounds i16, i16* %146, i64 0
  %147 = load i16, i16* %arrayidx174, align 2
  %conv175 = sext i16 %147 to i64
  %mul176 = mul nsw i64 %conv173, %conv175
  %148 = load i64*, i64** %L_ACF.addr, align 8
  %arrayidx177 = getelementptr inbounds i64, i64* %148, i64 0
  %149 = load i64, i64* %arrayidx177, align 8
  %add178 = add nsw i64 %149, %mul176
  store i64 %add178, i64* %arrayidx177, align 8
  %150 = load i16, i16* %sl, align 2
  %conv179 = sext i16 %150 to i64
  %151 = load i16*, i16** %sp, align 8
  %arrayidx180 = getelementptr inbounds i16, i16* %151, i64 -1
  %152 = load i16, i16* %arrayidx180, align 2
  %conv181 = sext i16 %152 to i64
  %mul182 = mul nsw i64 %conv179, %conv181
  %153 = load i64*, i64** %L_ACF.addr, align 8
  %arrayidx183 = getelementptr inbounds i64, i64* %153, i64 1
  %154 = load i64, i64* %arrayidx183, align 8
  %add184 = add nsw i64 %154, %mul182
  store i64 %add184, i64* %arrayidx183, align 8
  %155 = load i16, i16* %sl, align 2
  %conv185 = sext i16 %155 to i64
  %156 = load i16*, i16** %sp, align 8
  %arrayidx186 = getelementptr inbounds i16, i16* %156, i64 -2
  %157 = load i16, i16* %arrayidx186, align 2
  %conv187 = sext i16 %157 to i64
  %mul188 = mul nsw i64 %conv185, %conv187
  %158 = load i64*, i64** %L_ACF.addr, align 8
  %arrayidx189 = getelementptr inbounds i64, i64* %158, i64 2
  %159 = load i64, i64* %arrayidx189, align 8
  %add190 = add nsw i64 %159, %mul188
  store i64 %add190, i64* %arrayidx189, align 8
  %160 = load i16, i16* %sl, align 2
  %conv191 = sext i16 %160 to i64
  %161 = load i16*, i16** %sp, align 8
  %arrayidx192 = getelementptr inbounds i16, i16* %161, i64 -3
  %162 = load i16, i16* %arrayidx192, align 2
  %conv193 = sext i16 %162 to i64
  %mul194 = mul nsw i64 %conv191, %conv193
  %163 = load i64*, i64** %L_ACF.addr, align 8
  %arrayidx195 = getelementptr inbounds i64, i64* %163, i64 3
  %164 = load i64, i64* %arrayidx195, align 8
  %add196 = add nsw i64 %164, %mul194
  store i64 %add196, i64* %arrayidx195, align 8
  %165 = load i16, i16* %sl, align 2
  %conv197 = sext i16 %165 to i64
  %166 = load i16*, i16** %sp, align 8
  %arrayidx198 = getelementptr inbounds i16, i16* %166, i64 -4
  %167 = load i16, i16* %arrayidx198, align 2
  %conv199 = sext i16 %167 to i64
  %mul200 = mul nsw i64 %conv197, %conv199
  %168 = load i64*, i64** %L_ACF.addr, align 8
  %arrayidx201 = getelementptr inbounds i64, i64* %168, i64 4
  %169 = load i64, i64* %arrayidx201, align 8
  %add202 = add nsw i64 %169, %mul200
  store i64 %add202, i64* %arrayidx201, align 8
  %170 = load i16, i16* %sl, align 2
  %conv203 = sext i16 %170 to i64
  %171 = load i16*, i16** %sp, align 8
  %arrayidx204 = getelementptr inbounds i16, i16* %171, i64 -5
  %172 = load i16, i16* %arrayidx204, align 2
  %conv205 = sext i16 %172 to i64
  %mul206 = mul nsw i64 %conv203, %conv205
  %173 = load i64*, i64** %L_ACF.addr, align 8
  %arrayidx207 = getelementptr inbounds i64, i64* %173, i64 5
  %174 = load i64, i64* %arrayidx207, align 8
  %add208 = add nsw i64 %174, %mul206
  store i64 %add208, i64* %arrayidx207, align 8
  %175 = load i16, i16* %sl, align 2
  %conv209 = sext i16 %175 to i64
  %176 = load i16*, i16** %sp, align 8
  %arrayidx210 = getelementptr inbounds i16, i16* %176, i64 -6
  %177 = load i16, i16* %arrayidx210, align 2
  %conv211 = sext i16 %177 to i64
  %mul212 = mul nsw i64 %conv209, %conv211
  %178 = load i64*, i64** %L_ACF.addr, align 8
  %arrayidx213 = getelementptr inbounds i64, i64* %178, i64 6
  %179 = load i64, i64* %arrayidx213, align 8
  %add214 = add nsw i64 %179, %mul212
  store i64 %add214, i64* %arrayidx213, align 8
  %180 = load i16*, i16** %sp, align 8
  %incdec.ptr215 = getelementptr inbounds i16, i16* %180, i32 1
  store i16* %incdec.ptr215, i16** %sp, align 8
  %181 = load i16, i16* %incdec.ptr215, align 2
  store i16 %181, i16* %sl, align 2
  %182 = load i16, i16* %sl, align 2
  %conv216 = sext i16 %182 to i64
  %183 = load i16*, i16** %sp, align 8
  %arrayidx217 = getelementptr inbounds i16, i16* %183, i64 0
  %184 = load i16, i16* %arrayidx217, align 2
  %conv218 = sext i16 %184 to i64
  %mul219 = mul nsw i64 %conv216, %conv218
  %185 = load i64*, i64** %L_ACF.addr, align 8
  %arrayidx220 = getelementptr inbounds i64, i64* %185, i64 0
  %186 = load i64, i64* %arrayidx220, align 8
  %add221 = add nsw i64 %186, %mul219
  store i64 %add221, i64* %arrayidx220, align 8
  %187 = load i16, i16* %sl, align 2
  %conv222 = sext i16 %187 to i64
  %188 = load i16*, i16** %sp, align 8
  %arrayidx223 = getelementptr inbounds i16, i16* %188, i64 -1
  %189 = load i16, i16* %arrayidx223, align 2
  %conv224 = sext i16 %189 to i64
  %mul225 = mul nsw i64 %conv222, %conv224
  %190 = load i64*, i64** %L_ACF.addr, align 8
  %arrayidx226 = getelementptr inbounds i64, i64* %190, i64 1
  %191 = load i64, i64* %arrayidx226, align 8
  %add227 = add nsw i64 %191, %mul225
  store i64 %add227, i64* %arrayidx226, align 8
  %192 = load i16, i16* %sl, align 2
  %conv228 = sext i16 %192 to i64
  %193 = load i16*, i16** %sp, align 8
  %arrayidx229 = getelementptr inbounds i16, i16* %193, i64 -2
  %194 = load i16, i16* %arrayidx229, align 2
  %conv230 = sext i16 %194 to i64
  %mul231 = mul nsw i64 %conv228, %conv230
  %195 = load i64*, i64** %L_ACF.addr, align 8
  %arrayidx232 = getelementptr inbounds i64, i64* %195, i64 2
  %196 = load i64, i64* %arrayidx232, align 8
  %add233 = add nsw i64 %196, %mul231
  store i64 %add233, i64* %arrayidx232, align 8
  %197 = load i16, i16* %sl, align 2
  %conv234 = sext i16 %197 to i64
  %198 = load i16*, i16** %sp, align 8
  %arrayidx235 = getelementptr inbounds i16, i16* %198, i64 -3
  %199 = load i16, i16* %arrayidx235, align 2
  %conv236 = sext i16 %199 to i64
  %mul237 = mul nsw i64 %conv234, %conv236
  %200 = load i64*, i64** %L_ACF.addr, align 8
  %arrayidx238 = getelementptr inbounds i64, i64* %200, i64 3
  %201 = load i64, i64* %arrayidx238, align 8
  %add239 = add nsw i64 %201, %mul237
  store i64 %add239, i64* %arrayidx238, align 8
  %202 = load i16, i16* %sl, align 2
  %conv240 = sext i16 %202 to i64
  %203 = load i16*, i16** %sp, align 8
  %arrayidx241 = getelementptr inbounds i16, i16* %203, i64 -4
  %204 = load i16, i16* %arrayidx241, align 2
  %conv242 = sext i16 %204 to i64
  %mul243 = mul nsw i64 %conv240, %conv242
  %205 = load i64*, i64** %L_ACF.addr, align 8
  %arrayidx244 = getelementptr inbounds i64, i64* %205, i64 4
  %206 = load i64, i64* %arrayidx244, align 8
  %add245 = add nsw i64 %206, %mul243
  store i64 %add245, i64* %arrayidx244, align 8
  %207 = load i16, i16* %sl, align 2
  %conv246 = sext i16 %207 to i64
  %208 = load i16*, i16** %sp, align 8
  %arrayidx247 = getelementptr inbounds i16, i16* %208, i64 -5
  %209 = load i16, i16* %arrayidx247, align 2
  %conv248 = sext i16 %209 to i64
  %mul249 = mul nsw i64 %conv246, %conv248
  %210 = load i64*, i64** %L_ACF.addr, align 8
  %arrayidx250 = getelementptr inbounds i64, i64* %210, i64 5
  %211 = load i64, i64* %arrayidx250, align 8
  %add251 = add nsw i64 %211, %mul249
  store i64 %add251, i64* %arrayidx250, align 8
  %212 = load i16, i16* %sl, align 2
  %conv252 = sext i16 %212 to i64
  %213 = load i16*, i16** %sp, align 8
  %arrayidx253 = getelementptr inbounds i16, i16* %213, i64 -6
  %214 = load i16, i16* %arrayidx253, align 2
  %conv254 = sext i16 %214 to i64
  %mul255 = mul nsw i64 %conv252, %conv254
  %215 = load i64*, i64** %L_ACF.addr, align 8
  %arrayidx256 = getelementptr inbounds i64, i64* %215, i64 6
  %216 = load i64, i64* %arrayidx256, align 8
  %add257 = add nsw i64 %216, %mul255
  store i64 %add257, i64* %arrayidx256, align 8
  %217 = load i16, i16* %sl, align 2
  %conv258 = sext i16 %217 to i64
  %218 = load i16*, i16** %sp, align 8
  %arrayidx259 = getelementptr inbounds i16, i16* %218, i64 -7
  %219 = load i16, i16* %arrayidx259, align 2
  %conv260 = sext i16 %219 to i64
  %mul261 = mul nsw i64 %conv258, %conv260
  %220 = load i64*, i64** %L_ACF.addr, align 8
  %arrayidx262 = getelementptr inbounds i64, i64* %220, i64 7
  %221 = load i64, i64* %arrayidx262, align 8
  %add263 = add nsw i64 %221, %mul261
  store i64 %add263, i64* %arrayidx262, align 8
  store i32 8, i32* %i, align 4
  br label %for.cond264

for.cond264:                                      ; preds = %for.inc323, %for.end43
  %222 = load i32, i32* %i, align 4
  %cmp265 = icmp sle i32 %222, 159
  br i1 %cmp265, label %for.body267, label %for.end325

for.body267:                                      ; preds = %for.cond264
  %223 = load i16*, i16** %sp, align 8
  %incdec.ptr268 = getelementptr inbounds i16, i16* %223, i32 1
  store i16* %incdec.ptr268, i16** %sp, align 8
  %224 = load i16, i16* %incdec.ptr268, align 2
  store i16 %224, i16* %sl, align 2
  %225 = load i16, i16* %sl, align 2
  %conv269 = sext i16 %225 to i64
  %226 = load i16*, i16** %sp, align 8
  %arrayidx270 = getelementptr inbounds i16, i16* %226, i64 0
  %227 = load i16, i16* %arrayidx270, align 2
  %conv271 = sext i16 %227 to i64
  %mul272 = mul nsw i64 %conv269, %conv271
  %228 = load i64*, i64** %L_ACF.addr, align 8
  %arrayidx273 = getelementptr inbounds i64, i64* %228, i64 0
  %229 = load i64, i64* %arrayidx273, align 8
  %add274 = add nsw i64 %229, %mul272
  store i64 %add274, i64* %arrayidx273, align 8
  %230 = load i16, i16* %sl, align 2
  %conv275 = sext i16 %230 to i64
  %231 = load i16*, i16** %sp, align 8
  %arrayidx276 = getelementptr inbounds i16, i16* %231, i64 -1
  %232 = load i16, i16* %arrayidx276, align 2
  %conv277 = sext i16 %232 to i64
  %mul278 = mul nsw i64 %conv275, %conv277
  %233 = load i64*, i64** %L_ACF.addr, align 8
  %arrayidx279 = getelementptr inbounds i64, i64* %233, i64 1
  %234 = load i64, i64* %arrayidx279, align 8
  %add280 = add nsw i64 %234, %mul278
  store i64 %add280, i64* %arrayidx279, align 8
  %235 = load i16, i16* %sl, align 2
  %conv281 = sext i16 %235 to i64
  %236 = load i16*, i16** %sp, align 8
  %arrayidx282 = getelementptr inbounds i16, i16* %236, i64 -2
  %237 = load i16, i16* %arrayidx282, align 2
  %conv283 = sext i16 %237 to i64
  %mul284 = mul nsw i64 %conv281, %conv283
  %238 = load i64*, i64** %L_ACF.addr, align 8
  %arrayidx285 = getelementptr inbounds i64, i64* %238, i64 2
  %239 = load i64, i64* %arrayidx285, align 8
  %add286 = add nsw i64 %239, %mul284
  store i64 %add286, i64* %arrayidx285, align 8
  %240 = load i16, i16* %sl, align 2
  %conv287 = sext i16 %240 to i64
  %241 = load i16*, i16** %sp, align 8
  %arrayidx288 = getelementptr inbounds i16, i16* %241, i64 -3
  %242 = load i16, i16* %arrayidx288, align 2
  %conv289 = sext i16 %242 to i64
  %mul290 = mul nsw i64 %conv287, %conv289
  %243 = load i64*, i64** %L_ACF.addr, align 8
  %arrayidx291 = getelementptr inbounds i64, i64* %243, i64 3
  %244 = load i64, i64* %arrayidx291, align 8
  %add292 = add nsw i64 %244, %mul290
  store i64 %add292, i64* %arrayidx291, align 8
  %245 = load i16, i16* %sl, align 2
  %conv293 = sext i16 %245 to i64
  %246 = load i16*, i16** %sp, align 8
  %arrayidx294 = getelementptr inbounds i16, i16* %246, i64 -4
  %247 = load i16, i16* %arrayidx294, align 2
  %conv295 = sext i16 %247 to i64
  %mul296 = mul nsw i64 %conv293, %conv295
  %248 = load i64*, i64** %L_ACF.addr, align 8
  %arrayidx297 = getelementptr inbounds i64, i64* %248, i64 4
  %249 = load i64, i64* %arrayidx297, align 8
  %add298 = add nsw i64 %249, %mul296
  store i64 %add298, i64* %arrayidx297, align 8
  %250 = load i16, i16* %sl, align 2
  %conv299 = sext i16 %250 to i64
  %251 = load i16*, i16** %sp, align 8
  %arrayidx300 = getelementptr inbounds i16, i16* %251, i64 -5
  %252 = load i16, i16* %arrayidx300, align 2
  %conv301 = sext i16 %252 to i64
  %mul302 = mul nsw i64 %conv299, %conv301
  %253 = load i64*, i64** %L_ACF.addr, align 8
  %arrayidx303 = getelementptr inbounds i64, i64* %253, i64 5
  %254 = load i64, i64* %arrayidx303, align 8
  %add304 = add nsw i64 %254, %mul302
  store i64 %add304, i64* %arrayidx303, align 8
  %255 = load i16, i16* %sl, align 2
  %conv305 = sext i16 %255 to i64
  %256 = load i16*, i16** %sp, align 8
  %arrayidx306 = getelementptr inbounds i16, i16* %256, i64 -6
  %257 = load i16, i16* %arrayidx306, align 2
  %conv307 = sext i16 %257 to i64
  %mul308 = mul nsw i64 %conv305, %conv307
  %258 = load i64*, i64** %L_ACF.addr, align 8
  %arrayidx309 = getelementptr inbounds i64, i64* %258, i64 6
  %259 = load i64, i64* %arrayidx309, align 8
  %add310 = add nsw i64 %259, %mul308
  store i64 %add310, i64* %arrayidx309, align 8
  %260 = load i16, i16* %sl, align 2
  %conv311 = sext i16 %260 to i64
  %261 = load i16*, i16** %sp, align 8
  %arrayidx312 = getelementptr inbounds i16, i16* %261, i64 -7
  %262 = load i16, i16* %arrayidx312, align 2
  %conv313 = sext i16 %262 to i64
  %mul314 = mul nsw i64 %conv311, %conv313
  %263 = load i64*, i64** %L_ACF.addr, align 8
  %arrayidx315 = getelementptr inbounds i64, i64* %263, i64 7
  %264 = load i64, i64* %arrayidx315, align 8
  %add316 = add nsw i64 %264, %mul314
  store i64 %add316, i64* %arrayidx315, align 8
  %265 = load i16, i16* %sl, align 2
  %conv317 = sext i16 %265 to i64
  %266 = load i16*, i16** %sp, align 8
  %arrayidx318 = getelementptr inbounds i16, i16* %266, i64 -8
  %267 = load i16, i16* %arrayidx318, align 2
  %conv319 = sext i16 %267 to i64
  %mul320 = mul nsw i64 %conv317, %conv319
  %268 = load i64*, i64** %L_ACF.addr, align 8
  %arrayidx321 = getelementptr inbounds i64, i64* %268, i64 8
  %269 = load i64, i64* %arrayidx321, align 8
  %add322 = add nsw i64 %269, %mul320
  store i64 %add322, i64* %arrayidx321, align 8
  br label %for.inc323

for.inc323:                                       ; preds = %for.body267
  %270 = load i32, i32* %i, align 4
  %inc324 = add nsw i32 %270, 1
  store i32 %inc324, i32* %i, align 4
  br label %for.cond264

for.end325:                                       ; preds = %for.cond264
  store i32 8, i32* %k, align 4
  br label %for.cond326

for.cond326:                                      ; preds = %for.inc333, %for.end325
  %271 = load i32, i32* %k, align 4
  %cmp327 = icmp sge i32 %271, 0
  br i1 %cmp327, label %for.body329, label %for.end335

for.body329:                                      ; preds = %for.cond326
  %272 = load i64*, i64** %L_ACF.addr, align 8
  %273 = load i32, i32* %k, align 4
  %idxprom330 = sext i32 %273 to i64
  %arrayidx331 = getelementptr inbounds i64, i64* %272, i64 %idxprom330
  %274 = load i64, i64* %arrayidx331, align 8
  %shl332 = shl i64 %274, 1
  store i64 %shl332, i64* %arrayidx331, align 8
  br label %for.inc333

for.inc333:                                       ; preds = %for.body329
  %275 = load i32, i32* %k, align 4
  %dec334 = add nsw i32 %275, -1
  store i32 %dec334, i32* %k, align 4
  br label %for.cond326

for.end335:                                       ; preds = %for.cond326
  %276 = load i16, i16* %scalauto, align 2
  %conv336 = sext i16 %276 to i32
  %cmp337 = icmp sgt i32 %conv336, 0
  br i1 %cmp337, label %if.then339, label %if.end352

if.then339:                                       ; preds = %for.end335
  store i32 159, i32* %k, align 4
  br label %for.cond340

for.cond340:                                      ; preds = %for.inc349, %if.then339
  %277 = load i32, i32* %k, align 4
  %cmp341 = icmp sge i32 %277, 0
  br i1 %cmp341, label %for.body343, label %for.end351

for.body343:                                      ; preds = %for.cond340
  %278 = load i16, i16* %scalauto, align 2
  %conv344 = sext i16 %278 to i32
  %279 = load i16*, i16** %s.addr, align 8
  %incdec.ptr345 = getelementptr inbounds i16, i16* %279, i32 1
  store i16* %incdec.ptr345, i16** %s.addr, align 8
  %280 = load i16, i16* %279, align 2
  %conv346 = sext i16 %280 to i32
  %shl347 = shl i32 %conv346, %conv344
  %conv348 = trunc i32 %shl347 to i16
  store i16 %conv348, i16* %279, align 2
  br label %for.inc349

for.inc349:                                       ; preds = %for.body343
  %281 = load i32, i32* %k, align 4
  %dec350 = add nsw i32 %281, -1
  store i32 %dec350, i32* %k, align 4
  br label %for.cond340

for.end351:                                       ; preds = %for.cond340
  br label %if.end352

if.end352:                                        ; preds = %for.end351, %for.end335
  ret void
}

; Function Attrs: noinline nounwind ssp uwtable
define void @Reflection_coefficients(i64* %L_ACF, i16* %r) #0 {
entry:
  %L_ACF.addr = alloca i64*, align 8
  %r.addr = alloca i16*, align 8
  %i = alloca i32, align 4
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  %temp = alloca i16, align 2
  %ACF = alloca [9 x i16], align 16
  %P = alloca [9 x i16], align 16
  %K = alloca [9 x i16], align 16
  store i64* %L_ACF, i64** %L_ACF.addr, align 8
  store i16* %r, i16** %r.addr, align 8
  %0 = load i64*, i64** %L_ACF.addr, align 8
  %arrayidx = getelementptr inbounds i64, i64* %0, i64 0
  %1 = load i64, i64* %arrayidx, align 8
  %cmp = icmp eq i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 8, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i32, i32* %i, align 4
  %cmp1 = icmp sgt i32 %2, 0
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i16*, i16** %r.addr, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %3, i32 1
  store i16* %incdec.ptr, i16** %r.addr, align 8
  store i16 0, i16* %3, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %dec = add nsw i32 %4, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %for.end102

if.end:                                           ; preds = %entry
  %5 = load i64*, i64** %L_ACF.addr, align 8
  %arrayidx2 = getelementptr inbounds i64, i64* %5, i64 0
  %6 = load i64, i64* %arrayidx2, align 8
  %call = call signext i16 @gsm_norm(i64 %6)
  store i16 %call, i16* %temp, align 2
  store i32 0, i32* %i, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc10, %if.end
  %7 = load i32, i32* %i, align 4
  %cmp4 = icmp sle i32 %7, 8
  br i1 %cmp4, label %for.body5, label %for.end11

for.body5:                                        ; preds = %for.cond3
  %8 = load i64*, i64** %L_ACF.addr, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx6 = getelementptr inbounds i64, i64* %8, i64 %idxprom
  %10 = load i64, i64* %arrayidx6, align 8
  %11 = load i16, i16* %temp, align 2
  %conv = sext i16 %11 to i32
  %sh_prom = zext i32 %conv to i64
  %shl = shl i64 %10, %sh_prom
  %shr = ashr i64 %shl, 16
  %conv7 = trunc i64 %shr to i16
  %12 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %12 to i64
  %arrayidx9 = getelementptr inbounds [9 x i16], [9 x i16]* %ACF, i64 0, i64 %idxprom8
  store i16 %conv7, i16* %arrayidx9, align 2
  br label %for.inc10

for.inc10:                                        ; preds = %for.body5
  %13 = load i32, i32* %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond3

for.end11:                                        ; preds = %for.cond3
  store i32 1, i32* %i, align 4
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc20, %for.end11
  %14 = load i32, i32* %i, align 4
  %cmp13 = icmp sle i32 %14, 7
  br i1 %cmp13, label %for.body15, label %for.end22

for.body15:                                       ; preds = %for.cond12
  %15 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %15 to i64
  %arrayidx17 = getelementptr inbounds [9 x i16], [9 x i16]* %ACF, i64 0, i64 %idxprom16
  %16 = load i16, i16* %arrayidx17, align 2
  %17 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %17 to i64
  %arrayidx19 = getelementptr inbounds [9 x i16], [9 x i16]* %K, i64 0, i64 %idxprom18
  store i16 %16, i16* %arrayidx19, align 2
  br label %for.inc20

for.inc20:                                        ; preds = %for.body15
  %18 = load i32, i32* %i, align 4
  %inc21 = add nsw i32 %18, 1
  store i32 %inc21, i32* %i, align 4
  br label %for.cond12

for.end22:                                        ; preds = %for.cond12
  store i32 0, i32* %i, align 4
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc31, %for.end22
  %19 = load i32, i32* %i, align 4
  %cmp24 = icmp sle i32 %19, 8
  br i1 %cmp24, label %for.body26, label %for.end33

for.body26:                                       ; preds = %for.cond23
  %20 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %20 to i64
  %arrayidx28 = getelementptr inbounds [9 x i16], [9 x i16]* %ACF, i64 0, i64 %idxprom27
  %21 = load i16, i16* %arrayidx28, align 2
  %22 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %22 to i64
  %arrayidx30 = getelementptr inbounds [9 x i16], [9 x i16]* %P, i64 0, i64 %idxprom29
  store i16 %21, i16* %arrayidx30, align 2
  br label %for.inc31

for.inc31:                                        ; preds = %for.body26
  %23 = load i32, i32* %i, align 4
  %inc32 = add nsw i32 %23, 1
  store i32 %inc32, i32* %i, align 4
  br label %for.cond23

for.end33:                                        ; preds = %for.cond23
  store i32 1, i32* %n, align 4
  br label %for.cond34

for.cond34:                                       ; preds = %for.inc99, %for.end33
  %24 = load i32, i32* %n, align 4
  %cmp35 = icmp sle i32 %24, 8
  br i1 %cmp35, label %for.body37, label %for.end102

for.body37:                                       ; preds = %for.cond34
  %arrayidx38 = getelementptr inbounds [9 x i16], [9 x i16]* %P, i64 0, i64 1
  %25 = load i16, i16* %arrayidx38, align 2
  store i16 %25, i16* %temp, align 2
  %26 = load i16, i16* %temp, align 2
  %call39 = call signext i16 @gsm_abs(i16 signext %26)
  store i16 %call39, i16* %temp, align 2
  %arrayidx40 = getelementptr inbounds [9 x i16], [9 x i16]* %P, i64 0, i64 0
  %27 = load i16, i16* %arrayidx40, align 16
  %conv41 = sext i16 %27 to i32
  %28 = load i16, i16* %temp, align 2
  %conv42 = sext i16 %28 to i32
  %cmp43 = icmp slt i32 %conv41, %conv42
  br i1 %cmp43, label %if.then45, label %if.end54

if.then45:                                        ; preds = %for.body37
  %29 = load i32, i32* %n, align 4
  store i32 %29, i32* %i, align 4
  br label %for.cond46

for.cond46:                                       ; preds = %for.inc51, %if.then45
  %30 = load i32, i32* %i, align 4
  %cmp47 = icmp sle i32 %30, 8
  br i1 %cmp47, label %for.body49, label %for.end53

for.body49:                                       ; preds = %for.cond46
  %31 = load i16*, i16** %r.addr, align 8
  %incdec.ptr50 = getelementptr inbounds i16, i16* %31, i32 1
  store i16* %incdec.ptr50, i16** %r.addr, align 8
  store i16 0, i16* %31, align 2
  br label %for.inc51

for.inc51:                                        ; preds = %for.body49
  %32 = load i32, i32* %i, align 4
  %inc52 = add nsw i32 %32, 1
  store i32 %inc52, i32* %i, align 4
  br label %for.cond46

for.end53:                                        ; preds = %for.cond46
  br label %for.end102

if.end54:                                         ; preds = %for.body37
  %33 = load i16, i16* %temp, align 2
  %arrayidx55 = getelementptr inbounds [9 x i16], [9 x i16]* %P, i64 0, i64 0
  %34 = load i16, i16* %arrayidx55, align 16
  %call56 = call signext i16 @gsm_div(i16 signext %33, i16 signext %34)
  %35 = load i16*, i16** %r.addr, align 8
  store i16 %call56, i16* %35, align 2
  %arrayidx57 = getelementptr inbounds [9 x i16], [9 x i16]* %P, i64 0, i64 1
  %36 = load i16, i16* %arrayidx57, align 2
  %conv58 = sext i16 %36 to i32
  %cmp59 = icmp sgt i32 %conv58, 0
  br i1 %cmp59, label %if.then61, label %if.end64

if.then61:                                        ; preds = %if.end54
  %37 = load i16*, i16** %r.addr, align 8
  %38 = load i16, i16* %37, align 2
  %conv62 = sext i16 %38 to i32
  %sub = sub nsw i32 0, %conv62
  %conv63 = trunc i32 %sub to i16
  %39 = load i16*, i16** %r.addr, align 8
  store i16 %conv63, i16* %39, align 2
  br label %if.end64

if.end64:                                         ; preds = %if.then61, %if.end54
  %40 = load i32, i32* %n, align 4
  %cmp65 = icmp eq i32 %40, 8
  br i1 %cmp65, label %if.then67, label %if.end68

if.then67:                                        ; preds = %if.end64
  br label %for.end102

if.end68:                                         ; preds = %if.end64
  %arrayidx69 = getelementptr inbounds [9 x i16], [9 x i16]* %P, i64 0, i64 1
  %41 = load i16, i16* %arrayidx69, align 2
  %42 = load i16*, i16** %r.addr, align 8
  %43 = load i16, i16* %42, align 2
  %call70 = call signext i16 @gsm_mult_r(i16 signext %41, i16 signext %43)
  store i16 %call70, i16* %temp, align 2
  %arrayidx71 = getelementptr inbounds [9 x i16], [9 x i16]* %P, i64 0, i64 0
  %44 = load i16, i16* %arrayidx71, align 16
  %45 = load i16, i16* %temp, align 2
  %call72 = call signext i16 @gsm_add(i16 signext %44, i16 signext %45)
  %arrayidx73 = getelementptr inbounds [9 x i16], [9 x i16]* %P, i64 0, i64 0
  store i16 %call72, i16* %arrayidx73, align 16
  store i32 1, i32* %m, align 4
  br label %for.cond74

for.cond74:                                       ; preds = %for.inc96, %if.end68
  %46 = load i32, i32* %m, align 4
  %47 = load i32, i32* %n, align 4
  %sub75 = sub nsw i32 8, %47
  %cmp76 = icmp sle i32 %46, %sub75
  br i1 %cmp76, label %for.body78, label %for.end98

for.body78:                                       ; preds = %for.cond74
  %48 = load i32, i32* %m, align 4
  %idxprom79 = sext i32 %48 to i64
  %arrayidx80 = getelementptr inbounds [9 x i16], [9 x i16]* %K, i64 0, i64 %idxprom79
  %49 = load i16, i16* %arrayidx80, align 2
  %50 = load i16*, i16** %r.addr, align 8
  %51 = load i16, i16* %50, align 2
  %call81 = call signext i16 @gsm_mult_r(i16 signext %49, i16 signext %51)
  store i16 %call81, i16* %temp, align 2
  %52 = load i32, i32* %m, align 4
  %add = add nsw i32 %52, 1
  %idxprom82 = sext i32 %add to i64
  %arrayidx83 = getelementptr inbounds [9 x i16], [9 x i16]* %P, i64 0, i64 %idxprom82
  %53 = load i16, i16* %arrayidx83, align 2
  %54 = load i16, i16* %temp, align 2
  %call84 = call signext i16 @gsm_add(i16 signext %53, i16 signext %54)
  %55 = load i32, i32* %m, align 4
  %idxprom85 = sext i32 %55 to i64
  %arrayidx86 = getelementptr inbounds [9 x i16], [9 x i16]* %P, i64 0, i64 %idxprom85
  store i16 %call84, i16* %arrayidx86, align 2
  %56 = load i32, i32* %m, align 4
  %add87 = add nsw i32 %56, 1
  %idxprom88 = sext i32 %add87 to i64
  %arrayidx89 = getelementptr inbounds [9 x i16], [9 x i16]* %P, i64 0, i64 %idxprom88
  %57 = load i16, i16* %arrayidx89, align 2
  %58 = load i16*, i16** %r.addr, align 8
  %59 = load i16, i16* %58, align 2
  %call90 = call signext i16 @gsm_mult_r(i16 signext %57, i16 signext %59)
  store i16 %call90, i16* %temp, align 2
  %60 = load i32, i32* %m, align 4
  %idxprom91 = sext i32 %60 to i64
  %arrayidx92 = getelementptr inbounds [9 x i16], [9 x i16]* %K, i64 0, i64 %idxprom91
  %61 = load i16, i16* %arrayidx92, align 2
  %62 = load i16, i16* %temp, align 2
  %call93 = call signext i16 @gsm_add(i16 signext %61, i16 signext %62)
  %63 = load i32, i32* %m, align 4
  %idxprom94 = sext i32 %63 to i64
  %arrayidx95 = getelementptr inbounds [9 x i16], [9 x i16]* %K, i64 0, i64 %idxprom94
  store i16 %call93, i16* %arrayidx95, align 2
  br label %for.inc96

for.inc96:                                        ; preds = %for.body78
  %64 = load i32, i32* %m, align 4
  %inc97 = add nsw i32 %64, 1
  store i32 %inc97, i32* %m, align 4
  br label %for.cond74

for.end98:                                        ; preds = %for.cond74
  br label %for.inc99

for.inc99:                                        ; preds = %for.end98
  %65 = load i32, i32* %n, align 4
  %inc100 = add nsw i32 %65, 1
  store i32 %inc100, i32* %n, align 4
  %66 = load i16*, i16** %r.addr, align 8
  %incdec.ptr101 = getelementptr inbounds i16, i16* %66, i32 1
  store i16* %incdec.ptr101, i16** %r.addr, align 8
  br label %for.cond34

for.end102:                                       ; preds = %for.end, %for.end53, %if.then67, %for.cond34
  ret void
}

; Function Attrs: noinline nounwind ssp uwtable
define void @Transformation_to_Log_Area_Ratios(i16* %r) #0 {
entry:
  %r.addr = alloca i16*, align 8
  %temp = alloca i16, align 2
  %i = alloca i32, align 4
  store i16* %r, i16** %r.addr, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp sle i32 %0, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i16*, i16** %r.addr, align 8
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
  %10 = load i16*, i16** %r.addr, align 8
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
  %14 = load i16*, i16** %r.addr, align 8
  store i16 %conv24, i16* %14, align 2
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %15 = load i32, i32* %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4
  %16 = load i16*, i16** %r.addr, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %16, i32 1
  store i16* %incdec.ptr, i16** %r.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind ssp uwtable
define void @Quantization_and_coding(i16* %LAR) #0 {
entry:
  %LAR.addr = alloca i16*, align 8
  %temp = alloca i16, align 2
  store i16* %LAR, i16** %LAR.addr, align 8
  %0 = load i16*, i16** %LAR.addr, align 8
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
  %8 = load i16*, i16** %LAR.addr, align 8
  store i16 %conv14, i16* %8, align 2
  %9 = load i16*, i16** %LAR.addr, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %9, i32 1
  store i16* %incdec.ptr, i16** %LAR.addr, align 8
  %10 = load i16*, i16** %LAR.addr, align 8
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
  %18 = load i16*, i16** %LAR.addr, align 8
  store i16 %conv37, i16* %18, align 2
  %19 = load i16*, i16** %LAR.addr, align 8
  %incdec.ptr38 = getelementptr inbounds i16, i16* %19, i32 1
  store i16* %incdec.ptr38, i16** %LAR.addr, align 8
  %20 = load i16*, i16** %LAR.addr, align 8
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
  %28 = load i16*, i16** %LAR.addr, align 8
  store i16 %conv61, i16* %28, align 2
  %29 = load i16*, i16** %LAR.addr, align 8
  %incdec.ptr62 = getelementptr inbounds i16, i16* %29, i32 1
  store i16* %incdec.ptr62, i16** %LAR.addr, align 8
  %30 = load i16*, i16** %LAR.addr, align 8
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
  %38 = load i16*, i16** %LAR.addr, align 8
  store i16 %conv85, i16* %38, align 2
  %39 = load i16*, i16** %LAR.addr, align 8
  %incdec.ptr86 = getelementptr inbounds i16, i16* %39, i32 1
  store i16* %incdec.ptr86, i16** %LAR.addr, align 8
  %40 = load i16*, i16** %LAR.addr, align 8
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
  %48 = load i16*, i16** %LAR.addr, align 8
  store i16 %conv109, i16* %48, align 2
  %49 = load i16*, i16** %LAR.addr, align 8
  %incdec.ptr110 = getelementptr inbounds i16, i16* %49, i32 1
  store i16* %incdec.ptr110, i16** %LAR.addr, align 8
  %50 = load i16*, i16** %LAR.addr, align 8
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
  %58 = load i16*, i16** %LAR.addr, align 8
  store i16 %conv133, i16* %58, align 2
  %59 = load i16*, i16** %LAR.addr, align 8
  %incdec.ptr134 = getelementptr inbounds i16, i16* %59, i32 1
  store i16* %incdec.ptr134, i16** %LAR.addr, align 8
  %60 = load i16*, i16** %LAR.addr, align 8
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
  %68 = load i16*, i16** %LAR.addr, align 8
  store i16 %conv157, i16* %68, align 2
  %69 = load i16*, i16** %LAR.addr, align 8
  %incdec.ptr158 = getelementptr inbounds i16, i16* %69, i32 1
  store i16* %incdec.ptr158, i16** %LAR.addr, align 8
  %70 = load i16*, i16** %LAR.addr, align 8
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
  %78 = load i16*, i16** %LAR.addr, align 8
  store i16 %conv181, i16* %78, align 2
  %79 = load i16*, i16** %LAR.addr, align 8
  %incdec.ptr182 = getelementptr inbounds i16, i16* %79, i32 1
  store i16* %incdec.ptr182, i16** %LAR.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind ssp uwtable
define void @Gsm_LPC_Analysis(i16* %s, i16* %LARc) #0 {
entry:
  %s.addr = alloca i16*, align 8
  %LARc.addr = alloca i16*, align 8
  %L_ACF = alloca [9 x i64], align 16
  store i16* %s, i16** %s.addr, align 8
  store i16* %LARc, i16** %LARc.addr, align 8
  %0 = load i16*, i16** %s.addr, align 8
  %arraydecay = getelementptr inbounds [9 x i64], [9 x i64]* %L_ACF, i32 0, i32 0
  call void @Autocorrelation(i16* %0, i64* %arraydecay)
  %arraydecay1 = getelementptr inbounds [9 x i64], [9 x i64]* %L_ACF, i32 0, i32 0
  %1 = load i16*, i16** %LARc.addr, align 8
  call void @Reflection_coefficients(i64* %arraydecay1, i16* %1)
  %2 = load i16*, i16** %LARc.addr, align 8
  call void @Transformation_to_Log_Area_Ratios(i16* %2)
  %3 = load i16*, i16** %LARc.addr, align 8
  call void @Quantization_and_coding(i16* %3)
  ret void
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %main_result = alloca i32, align 4
  %start = alloca %struct.timeval, align 8
  %iters = alloca i32, align 4
  %idx = alloca i32, align 4
  %i = alloca i32, align 4
  %so = alloca [160 x i16], align 16
  %LARc = alloca [8 x i16], align 16
  %end = alloca %struct.timeval, align 8
  %time_taken = alloca double, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 0, i32* %main_result, align 4
  %call = call i32 @gettimeofday(%struct.timeval* %start, i8* null)
  %0 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %0, i64 1
  %1 = load i8*, i8** %arrayidx, align 8
  %call1 = call i32 @atoi(i8* %1)
  store i32 %call1, i32* %iters, align 4
  store i32 0, i32* %idx, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc38, %entry
  %2 = load i32, i32* %idx, align 4
  %3 = load i32, i32* %iters, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end40

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %main_result, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %4 = load i32, i32* %i, align 4
  %cmp3 = icmp slt i32 %4, 160
  br i1 %cmp3, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond2
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx5 = getelementptr inbounds [160 x i16], [160 x i16]* @inData, i64 0, i64 %idxprom
  %6 = load i16, i16* %arrayidx5, align 2
  %7 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %7 to i64
  %arrayidx7 = getelementptr inbounds [160 x i16], [160 x i16]* %so, i64 0, i64 %idxprom6
  store i16 %6, i16* %arrayidx7, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body4
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond2

for.end:                                          ; preds = %for.cond2
  %arraydecay = getelementptr inbounds [160 x i16], [160 x i16]* %so, i32 0, i32 0
  %arraydecay8 = getelementptr inbounds [8 x i16], [8 x i16]* %LARc, i32 0, i32 0
  call void @Gsm_LPC_Analysis(i16* %arraydecay, i16* %arraydecay8)
  store i32 0, i32* %i, align 4
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc19, %for.end
  %9 = load i32, i32* %i, align 4
  %cmp10 = icmp slt i32 %9, 160
  br i1 %cmp10, label %for.body11, label %for.end21

for.body11:                                       ; preds = %for.cond9
  %10 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %10 to i64
  %arrayidx13 = getelementptr inbounds [160 x i16], [160 x i16]* %so, i64 0, i64 %idxprom12
  %11 = load i16, i16* %arrayidx13, align 2
  %conv = sext i16 %11 to i32
  %12 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %12 to i64
  %arrayidx15 = getelementptr inbounds [160 x i16], [160 x i16]* @outData, i64 0, i64 %idxprom14
  %13 = load i16, i16* %arrayidx15, align 2
  %conv16 = sext i16 %13 to i32
  %cmp17 = icmp ne i32 %conv, %conv16
  %conv18 = zext i1 %cmp17 to i32
  %14 = load i32, i32* %main_result, align 4
  %add = add nsw i32 %14, %conv18
  store i32 %add, i32* %main_result, align 4
  br label %for.inc19

for.inc19:                                        ; preds = %for.body11
  %15 = load i32, i32* %i, align 4
  %inc20 = add nsw i32 %15, 1
  store i32 %inc20, i32* %i, align 4
  br label %for.cond9

for.end21:                                        ; preds = %for.cond9
  store i32 0, i32* %i, align 4
  br label %for.cond22

for.cond22:                                       ; preds = %for.inc35, %for.end21
  %16 = load i32, i32* %i, align 4
  %cmp23 = icmp slt i32 %16, 8
  br i1 %cmp23, label %for.body25, label %for.end37

for.body25:                                       ; preds = %for.cond22
  %17 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %17 to i64
  %arrayidx27 = getelementptr inbounds [8 x i16], [8 x i16]* %LARc, i64 0, i64 %idxprom26
  %18 = load i16, i16* %arrayidx27, align 2
  %conv28 = sext i16 %18 to i32
  %19 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %19 to i64
  %arrayidx30 = getelementptr inbounds [8 x i16], [8 x i16]* @outLARc, i64 0, i64 %idxprom29
  %20 = load i16, i16* %arrayidx30, align 2
  %conv31 = sext i16 %20 to i32
  %cmp32 = icmp ne i32 %conv28, %conv31
  %conv33 = zext i1 %cmp32 to i32
  %21 = load i32, i32* %main_result, align 4
  %add34 = add nsw i32 %21, %conv33
  store i32 %add34, i32* %main_result, align 4
  br label %for.inc35

for.inc35:                                        ; preds = %for.body25
  %22 = load i32, i32* %i, align 4
  %inc36 = add nsw i32 %22, 1
  store i32 %inc36, i32* %i, align 4
  br label %for.cond22

for.end37:                                        ; preds = %for.cond22
  br label %for.inc38

for.inc38:                                        ; preds = %for.end37
  %23 = load i32, i32* %idx, align 4
  %inc39 = add nsw i32 %23, 1
  store i32 %inc39, i32* %idx, align 4
  br label %for.cond

for.end40:                                        ; preds = %for.cond
  %call41 = call i32 @gettimeofday(%struct.timeval* %end, i8* null)
  %tv_sec = getelementptr inbounds %struct.timeval, %struct.timeval* %end, i32 0, i32 0
  %24 = load i64, i64* %tv_sec, align 8
  %tv_sec42 = getelementptr inbounds %struct.timeval, %struct.timeval* %start, i32 0, i32 0
  %25 = load i64, i64* %tv_sec42, align 8
  %sub = sub nsw i64 %24, %25
  %conv43 = sitofp i64 %sub to double
  %mul = fmul double %conv43, 1.000000e+06
  store double %mul, double* %time_taken, align 8
  %26 = load double, double* %time_taken, align 8
  %tv_usec = getelementptr inbounds %struct.timeval, %struct.timeval* %end, i32 0, i32 1
  %27 = load i32, i32* %tv_usec, align 8
  %tv_usec44 = getelementptr inbounds %struct.timeval, %struct.timeval* %start, i32 0, i32 1
  %28 = load i32, i32* %tv_usec44, align 8
  %sub45 = sub nsw i32 %27, %28
  %conv46 = sitofp i32 %sub45 to double
  %add47 = fadd double %26, %conv46
  %mul48 = fmul double %add47, 1.000000e-06
  store double %mul48, double* %time_taken, align 8
  %29 = load i32, i32* %iters, align 4
  %conv49 = sitofp i32 %29 to double
  %30 = load double, double* %time_taken, align 8
  %div = fdiv double %30, %conv49
  store double %div, double* %time_taken, align 8
  %31 = load double, double* %time_taken, align 8
  %call50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), double %31)
  %32 = load i32, i32* %main_result, align 4
  %call51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 %32)
  %33 = load i32, i32* %main_result, align 4
  ret i32 %33
}

declare i32 @gettimeofday(%struct.timeval*, i8*) #1

declare i32 @atoi(i8*) #1

declare i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
