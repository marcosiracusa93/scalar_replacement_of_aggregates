; ModuleID = 'adpcm.c'
source_filename = "adpcm.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

@h = constant [24 x i32] [i32 12, i32 -44, i32 -44, i32 212, i32 48, i32 -624, i32 128, i32 1448, i32 -840, i32 -3220, i32 3804, i32 15504, i32 15504, i32 3804, i32 -3220, i32 -840, i32 1448, i32 128, i32 -624, i32 48, i32 212, i32 -44, i32 -44, i32 12], align 16
@qq4_code4_table = constant [16 x i32] [i32 0, i32 -20456, i32 -12896, i32 -8968, i32 -6288, i32 -4240, i32 -2584, i32 -1200, i32 20456, i32 12896, i32 8968, i32 6288, i32 4240, i32 2584, i32 1200, i32 0], align 16
@qq6_code6_table = constant [64 x i32] [i32 -136, i32 -136, i32 -136, i32 -136, i32 -24808, i32 -21904, i32 -19008, i32 -16704, i32 -14984, i32 -13512, i32 -12280, i32 -11192, i32 -10232, i32 -9360, i32 -8576, i32 -7856, i32 -7192, i32 -6576, i32 -6000, i32 -5456, i32 -4944, i32 -4464, i32 -4008, i32 -3576, i32 -3168, i32 -2776, i32 -2400, i32 -2032, i32 -1688, i32 -1360, i32 -1040, i32 -728, i32 24808, i32 21904, i32 19008, i32 16704, i32 14984, i32 13512, i32 12280, i32 11192, i32 10232, i32 9360, i32 8576, i32 7856, i32 7192, i32 6576, i32 6000, i32 5456, i32 4944, i32 4464, i32 4008, i32 3576, i32 3168, i32 2776, i32 2400, i32 2032, i32 1688, i32 1360, i32 1040, i32 728, i32 432, i32 136, i32 -432, i32 -136], align 16
@wl_code_table = constant [16 x i32] [i32 -60, i32 3042, i32 1198, i32 538, i32 334, i32 172, i32 58, i32 -30, i32 3042, i32 1198, i32 538, i32 334, i32 172, i32 58, i32 -30, i32 -60], align 16
@ilb_table = constant [32 x i32] [i32 2048, i32 2093, i32 2139, i32 2186, i32 2233, i32 2282, i32 2332, i32 2383, i32 2435, i32 2489, i32 2543, i32 2599, i32 2656, i32 2714, i32 2774, i32 2834, i32 2896, i32 2960, i32 3025, i32 3091, i32 3158, i32 3228, i32 3298, i32 3371, i32 3444, i32 3520, i32 3597, i32 3676, i32 3756, i32 3838, i32 3922, i32 4008], align 16
@decis_levl = constant [30 x i32] [i32 280, i32 576, i32 880, i32 1200, i32 1520, i32 1864, i32 2208, i32 2584, i32 2960, i32 3376, i32 3784, i32 4240, i32 4696, i32 5200, i32 5712, i32 6288, i32 6864, i32 7520, i32 8184, i32 8968, i32 9752, i32 10712, i32 11664, i32 12896, i32 14120, i32 15840, i32 17560, i32 20456, i32 23352, i32 32767], align 16
@quant26bt_pos = constant [31 x i32] [i32 61, i32 60, i32 59, i32 58, i32 57, i32 56, i32 55, i32 54, i32 53, i32 52, i32 51, i32 50, i32 49, i32 48, i32 47, i32 46, i32 45, i32 44, i32 43, i32 42, i32 41, i32 40, i32 39, i32 38, i32 37, i32 36, i32 35, i32 34, i32 33, i32 32, i32 32], align 16
@quant26bt_neg = constant [31 x i32] [i32 63, i32 62, i32 31, i32 30, i32 29, i32 28, i32 27, i32 26, i32 25, i32 24, i32 23, i32 22, i32 21, i32 20, i32 19, i32 18, i32 17, i32 16, i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 4], align 16
@qq2_code2_table = constant [4 x i32] [i32 -7408, i32 -1616, i32 7408, i32 1616], align 16
@wh_code_table = constant [4 x i32] [i32 798, i32 -214, i32 798, i32 -214], align 16
@tqmf = common global [24 x i32] zeroinitializer, align 16
@xl = common global i32 0, align 4
@xh = common global i32 0, align 4
@delay_bpl = common global [6 x i32] zeroinitializer, align 16
@delay_dltx = common global [6 x i32] zeroinitializer, align 16
@szl = common global i32 0, align 4
@rlt1 = common global i32 0, align 4
@al1 = common global i32 0, align 4
@rlt2 = common global i32 0, align 4
@al2 = common global i32 0, align 4
@spl = common global i32 0, align 4
@sl = common global i32 0, align 4
@el = common global i32 0, align 4
@detl = common global i32 0, align 4
@il = common global i32 0, align 4
@dlt = common global i32 0, align 4
@nbl = common global i32 0, align 4
@plt = common global i32 0, align 4
@plt1 = common global i32 0, align 4
@plt2 = common global i32 0, align 4
@rlt = common global i32 0, align 4
@delay_bph = common global [6 x i32] zeroinitializer, align 16
@delay_dhx = common global [6 x i32] zeroinitializer, align 16
@szh = common global i32 0, align 4
@rh1 = common global i32 0, align 4
@ah1 = common global i32 0, align 4
@rh2 = common global i32 0, align 4
@ah2 = common global i32 0, align 4
@sph = common global i32 0, align 4
@sh = common global i32 0, align 4
@eh = common global i32 0, align 4
@ih = common global i32 0, align 4
@deth = common global i32 0, align 4
@dh = common global i32 0, align 4
@nbh = common global i32 0, align 4
@ph = common global i32 0, align 4
@ph1 = common global i32 0, align 4
@ph2 = common global i32 0, align 4
@yh = common global i32 0, align 4
@ilr = common global i32 0, align 4
@dec_del_bpl = common global [6 x i32] zeroinitializer, align 16
@dec_del_dltx = common global [6 x i32] zeroinitializer, align 16
@dec_szl = common global i32 0, align 4
@dec_rlt1 = common global i32 0, align 4
@dec_al1 = common global i32 0, align 4
@dec_rlt2 = common global i32 0, align 4
@dec_al2 = common global i32 0, align 4
@dec_spl = common global i32 0, align 4
@dec_sl = common global i32 0, align 4
@dec_detl = common global i32 0, align 4
@dec_dlt = common global i32 0, align 4
@dl = common global i32 0, align 4
@rl = common global i32 0, align 4
@dec_nbl = common global i32 0, align 4
@dec_plt = common global i32 0, align 4
@dec_plt1 = common global i32 0, align 4
@dec_plt2 = common global i32 0, align 4
@dec_rlt = common global i32 0, align 4
@dec_del_bph = common global [6 x i32] zeroinitializer, align 16
@dec_del_dhx = common global [6 x i32] zeroinitializer, align 16
@dec_szh = common global i32 0, align 4
@dec_rh1 = common global i32 0, align 4
@dec_ah1 = common global i32 0, align 4
@dec_rh2 = common global i32 0, align 4
@dec_ah2 = common global i32 0, align 4
@dec_sph = common global i32 0, align 4
@dec_sh = common global i32 0, align 4
@dec_deth = common global i32 0, align 4
@dec_dh = common global i32 0, align 4
@dec_nbh = common global i32 0, align 4
@dec_ph = common global i32 0, align 4
@dec_ph1 = common global i32 0, align 4
@dec_ph2 = common global i32 0, align 4
@rh = common global i32 0, align 4
@xd = common global i32 0, align 4
@xs = common global i32 0, align 4
@accumc = common global [11 x i32] zeroinitializer, align 16
@accumd = common global [11 x i32] zeroinitializer, align 16
@xout1 = common global i32 0, align 4
@xout2 = common global i32 0, align 4
@test_data = constant [100 x i32] [i32 68, i32 68, i32 68, i32 68, i32 68, i32 68, i32 68, i32 68, i32 68, i32 68, i32 68, i32 68, i32 68, i32 68, i32 68, i32 68, i32 68, i32 67, i32 67, i32 67, i32 67, i32 67, i32 67, i32 67, i32 66, i32 66, i32 66, i32 66, i32 66, i32 66, i32 65, i32 65, i32 65, i32 65, i32 65, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 63, i32 63, i32 63, i32 63, i32 63, i32 62, i32 62, i32 62, i32 62, i32 62, i32 62, i32 61, i32 61, i32 61, i32 61, i32 61, i32 61, i32 60, i32 60, i32 60, i32 60, i32 60, i32 60, i32 60, i32 60, i32 60, i32 59, i32 59, i32 59, i32 59, i32 59, i32 59, i32 59, i32 59, i32 59, i32 59, i32 59, i32 59, i32 59, i32 59, i32 59, i32 59, i32 59, i32 59, i32 59, i32 59, i32 59, i32 59, i32 59, i32 60, i32 60, i32 60, i32 60, i32 60, i32 60, i32 60, i32 60], align 16
@test_compressed = constant [100 x i32] [i32 253, i32 222, i32 119, i32 186, i32 242, i32 144, i32 32, i32 160, i32 236, i32 237, i32 239, i32 241, i32 243, i32 244, i32 245, i32 245, i32 245, i32 245, i32 246, i32 246, i32 246, i32 247, i32 248, i32 247, i32 248, i32 247, i32 249, i32 248, i32 247, i32 249, i32 248, i32 248, i32 246, i32 248, i32 248, i32 247, i32 249, i32 249, i32 249, i32 248, i32 247, i32 250, i32 248, i32 248, i32 247, i32 251, i32 250, i32 249, i32 248, i32 248, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@test_result = constant [100 x i32] [i32 0, i32 -1, i32 -1, i32 0, i32 0, i32 -1, i32 0, i32 0, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 1, i32 0, i32 -2, i32 -1, i32 -2, i32 0, i32 -4, i32 1, i32 1, i32 1, i32 -5, i32 2, i32 2, i32 3, i32 11, i32 20, i32 20, i32 22, i32 24, i32 32, i32 33, i32 38, i32 39, i32 46, i32 47, i32 51, i32 50, i32 53, i32 51, i32 54, i32 52, i32 55, i32 52, i32 55, i32 53, i32 56, i32 54, i32 57, i32 56, i32 59, i32 58, i32 63, i32 63, i32 64, i32 58, i32 61, i32 62, i32 65, i32 60, i32 62, i32 63, i32 66, i32 62, i32 59, i32 55, i32 59, i32 62, i32 65, i32 59, i32 59, i32 58, i32 59, i32 54, i32 57, i32 59, i32 63, i32 60, i32 59, i32 55, i32 59, i32 61, i32 65, i32 61, i32 62, i32 60, i32 62, i32 59, i32 58, i32 55, i32 59, i32 62, i32 65, i32 60, i32 59, i32 57, i32 58, i32 54], align 16
@compressed = common global [100 x i32] zeroinitializer, align 16
@result = common global [100 x i32] zeroinitializer, align 16
@.str = private unnamed_addr constant [12 x i8] c"Result: %d\0A\00", align 1

; Function Attrs: noinline nounwind readnone ssp uwtable
define i32 @abs(i32 %n) #0 {
entry:
  %n.addr = alloca i32, align 4
  %m = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %n.addr, align 4
  store i32 %1, i32* %m, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load i32, i32* %n.addr, align 4
  %sub = sub nsw i32 0, %2
  store i32 %sub, i32* %m, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i32, i32* %m, align 4
  ret i32 %3
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @encode(i32 %xin1, i32 %xin2) #1 {
entry:
  %xin1.addr = alloca i32, align 4
  %xin2.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %h_ptr = alloca i32*, align 8
  %tqmf_ptr = alloca i32*, align 8
  %tqmf_ptr1 = alloca i32*, align 8
  %xa = alloca i64, align 8
  %xb = alloca i64, align 8
  %decis = alloca i32, align 4
  store i32 %xin1, i32* %xin1.addr, align 4
  store i32 %xin2, i32* %xin2.addr, align 4
  store i32* getelementptr inbounds ([24 x i32], [24 x i32]* @h, i32 0, i32 0), i32** %h_ptr, align 8
  store i32* getelementptr inbounds ([24 x i32], [24 x i32]* @tqmf, i32 0, i32 0), i32** %tqmf_ptr, align 8
  %0 = load i32*, i32** %tqmf_ptr, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %0, i32 1
  store i32* %incdec.ptr, i32** %tqmf_ptr, align 8
  %1 = load i32, i32* %0, align 4
  %conv = sext i32 %1 to i64
  %2 = load i32*, i32** %h_ptr, align 8
  %incdec.ptr1 = getelementptr inbounds i32, i32* %2, i32 1
  store i32* %incdec.ptr1, i32** %h_ptr, align 8
  %3 = load i32, i32* %2, align 4
  %conv2 = sext i32 %3 to i64
  %mul = mul nsw i64 %conv, %conv2
  store i64 %mul, i64* %xa, align 8
  %4 = load i32*, i32** %tqmf_ptr, align 8
  %incdec.ptr3 = getelementptr inbounds i32, i32* %4, i32 1
  store i32* %incdec.ptr3, i32** %tqmf_ptr, align 8
  %5 = load i32, i32* %4, align 4
  %conv4 = sext i32 %5 to i64
  %6 = load i32*, i32** %h_ptr, align 8
  %incdec.ptr5 = getelementptr inbounds i32, i32* %6, i32 1
  store i32* %incdec.ptr5, i32** %h_ptr, align 8
  %7 = load i32, i32* %6, align 4
  %conv6 = sext i32 %7 to i64
  %mul7 = mul nsw i64 %conv4, %conv6
  store i64 %mul7, i64* %xb, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %8, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32*, i32** %tqmf_ptr, align 8
  %incdec.ptr9 = getelementptr inbounds i32, i32* %9, i32 1
  store i32* %incdec.ptr9, i32** %tqmf_ptr, align 8
  %10 = load i32, i32* %9, align 4
  %conv10 = sext i32 %10 to i64
  %11 = load i32*, i32** %h_ptr, align 8
  %incdec.ptr11 = getelementptr inbounds i32, i32* %11, i32 1
  store i32* %incdec.ptr11, i32** %h_ptr, align 8
  %12 = load i32, i32* %11, align 4
  %conv12 = sext i32 %12 to i64
  %mul13 = mul nsw i64 %conv10, %conv12
  %13 = load i64, i64* %xa, align 8
  %add = add nsw i64 %13, %mul13
  store i64 %add, i64* %xa, align 8
  %14 = load i32*, i32** %tqmf_ptr, align 8
  %incdec.ptr14 = getelementptr inbounds i32, i32* %14, i32 1
  store i32* %incdec.ptr14, i32** %tqmf_ptr, align 8
  %15 = load i32, i32* %14, align 4
  %conv15 = sext i32 %15 to i64
  %16 = load i32*, i32** %h_ptr, align 8
  %incdec.ptr16 = getelementptr inbounds i32, i32* %16, i32 1
  store i32* %incdec.ptr16, i32** %h_ptr, align 8
  %17 = load i32, i32* %16, align 4
  %conv17 = sext i32 %17 to i64
  %mul18 = mul nsw i64 %conv15, %conv17
  %18 = load i64, i64* %xb, align 8
  %add19 = add nsw i64 %18, %mul18
  store i64 %add19, i64* %xb, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %19 = load i32, i32* %i, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %20 = load i32*, i32** %tqmf_ptr, align 8
  %incdec.ptr20 = getelementptr inbounds i32, i32* %20, i32 1
  store i32* %incdec.ptr20, i32** %tqmf_ptr, align 8
  %21 = load i32, i32* %20, align 4
  %conv21 = sext i32 %21 to i64
  %22 = load i32*, i32** %h_ptr, align 8
  %incdec.ptr22 = getelementptr inbounds i32, i32* %22, i32 1
  store i32* %incdec.ptr22, i32** %h_ptr, align 8
  %23 = load i32, i32* %22, align 4
  %conv23 = sext i32 %23 to i64
  %mul24 = mul nsw i64 %conv21, %conv23
  %24 = load i64, i64* %xa, align 8
  %add25 = add nsw i64 %24, %mul24
  store i64 %add25, i64* %xa, align 8
  %25 = load i32*, i32** %tqmf_ptr, align 8
  %26 = load i32, i32* %25, align 4
  %conv26 = sext i32 %26 to i64
  %27 = load i32*, i32** %h_ptr, align 8
  %incdec.ptr27 = getelementptr inbounds i32, i32* %27, i32 1
  store i32* %incdec.ptr27, i32** %h_ptr, align 8
  %28 = load i32, i32* %27, align 4
  %conv28 = sext i32 %28 to i64
  %mul29 = mul nsw i64 %conv26, %conv28
  %29 = load i64, i64* %xb, align 8
  %add30 = add nsw i64 %29, %mul29
  store i64 %add30, i64* %xb, align 8
  %30 = load i32*, i32** %tqmf_ptr, align 8
  %add.ptr = getelementptr inbounds i32, i32* %30, i64 -2
  store i32* %add.ptr, i32** %tqmf_ptr1, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond31

for.cond31:                                       ; preds = %for.inc37, %for.end
  %31 = load i32, i32* %i, align 4
  %cmp32 = icmp slt i32 %31, 22
  br i1 %cmp32, label %for.body34, label %for.end39

for.body34:                                       ; preds = %for.cond31
  %32 = load i32*, i32** %tqmf_ptr1, align 8
  %incdec.ptr35 = getelementptr inbounds i32, i32* %32, i32 -1
  store i32* %incdec.ptr35, i32** %tqmf_ptr1, align 8
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** %tqmf_ptr, align 8
  %incdec.ptr36 = getelementptr inbounds i32, i32* %34, i32 -1
  store i32* %incdec.ptr36, i32** %tqmf_ptr, align 8
  store i32 %33, i32* %34, align 4
  br label %for.inc37

for.inc37:                                        ; preds = %for.body34
  %35 = load i32, i32* %i, align 4
  %inc38 = add nsw i32 %35, 1
  store i32 %inc38, i32* %i, align 4
  br label %for.cond31

for.end39:                                        ; preds = %for.cond31
  %36 = load i32, i32* %xin1.addr, align 4
  %37 = load i32*, i32** %tqmf_ptr, align 8
  %incdec.ptr40 = getelementptr inbounds i32, i32* %37, i32 -1
  store i32* %incdec.ptr40, i32** %tqmf_ptr, align 8
  store i32 %36, i32* %37, align 4
  %38 = load i32, i32* %xin2.addr, align 4
  %39 = load i32*, i32** %tqmf_ptr, align 8
  store i32 %38, i32* %39, align 4
  %40 = load i64, i64* %xa, align 8
  %41 = load i64, i64* %xb, align 8
  %add41 = add nsw i64 %40, %41
  %shr = ashr i64 %add41, 15
  %conv42 = trunc i64 %shr to i32
  store i32 %conv42, i32* @xl, align 4
  %42 = load i64, i64* %xa, align 8
  %43 = load i64, i64* %xb, align 8
  %sub = sub nsw i64 %42, %43
  %shr43 = ashr i64 %sub, 15
  %conv44 = trunc i64 %shr43 to i32
  store i32 %conv44, i32* @xh, align 4
  %call = call i32 @filtez(i32* getelementptr inbounds ([6 x i32], [6 x i32]* @delay_bpl, i32 0, i32 0), i32* getelementptr inbounds ([6 x i32], [6 x i32]* @delay_dltx, i32 0, i32 0))
  store i32 %call, i32* @szl, align 4
  %44 = load i32, i32* @rlt1, align 4
  %45 = load i32, i32* @al1, align 4
  %46 = load i32, i32* @rlt2, align 4
  %47 = load i32, i32* @al2, align 4
  %call45 = call i32 @filtep(i32 %44, i32 %45, i32 %46, i32 %47)
  store i32 %call45, i32* @spl, align 4
  %48 = load i32, i32* @szl, align 4
  %49 = load i32, i32* @spl, align 4
  %add46 = add nsw i32 %48, %49
  store i32 %add46, i32* @sl, align 4
  %50 = load i32, i32* @xl, align 4
  %51 = load i32, i32* @sl, align 4
  %sub47 = sub nsw i32 %50, %51
  store i32 %sub47, i32* @el, align 4
  %52 = load i32, i32* @el, align 4
  %53 = load i32, i32* @detl, align 4
  %call48 = call i32 @quantl(i32 %52, i32 %53)
  store i32 %call48, i32* @il, align 4
  %54 = load i32, i32* @detl, align 4
  %conv49 = sext i32 %54 to i64
  %55 = load i32, i32* @il, align 4
  %shr50 = ashr i32 %55, 2
  %idxprom = sext i32 %shr50 to i64
  %arrayidx = getelementptr inbounds [16 x i32], [16 x i32]* @qq4_code4_table, i64 0, i64 %idxprom
  %56 = load i32, i32* %arrayidx, align 4
  %conv51 = sext i32 %56 to i64
  %mul52 = mul nsw i64 %conv49, %conv51
  %shr53 = ashr i64 %mul52, 15
  %conv54 = trunc i64 %shr53 to i32
  store i32 %conv54, i32* @dlt, align 4
  %57 = load i32, i32* @il, align 4
  %58 = load i32, i32* @nbl, align 4
  %call55 = call i32 @logscl(i32 %57, i32 %58)
  store i32 %call55, i32* @nbl, align 4
  %59 = load i32, i32* @nbl, align 4
  %call56 = call i32 @scalel(i32 %59, i32 8)
  store i32 %call56, i32* @detl, align 4
  %60 = load i32, i32* @dlt, align 4
  %61 = load i32, i32* @szl, align 4
  %add57 = add nsw i32 %60, %61
  store i32 %add57, i32* @plt, align 4
  %62 = load i32, i32* @dlt, align 4
  call void @upzero(i32 %62, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @delay_dltx, i32 0, i32 0), i32* getelementptr inbounds ([6 x i32], [6 x i32]* @delay_bpl, i32 0, i32 0))
  %63 = load i32, i32* @al1, align 4
  %64 = load i32, i32* @al2, align 4
  %65 = load i32, i32* @plt, align 4
  %66 = load i32, i32* @plt1, align 4
  %67 = load i32, i32* @plt2, align 4
  %call58 = call i32 @uppol2(i32 %63, i32 %64, i32 %65, i32 %66, i32 %67)
  store i32 %call58, i32* @al2, align 4
  %68 = load i32, i32* @al1, align 4
  %69 = load i32, i32* @al2, align 4
  %70 = load i32, i32* @plt, align 4
  %71 = load i32, i32* @plt1, align 4
  %call59 = call i32 @uppol1(i32 %68, i32 %69, i32 %70, i32 %71)
  store i32 %call59, i32* @al1, align 4
  %72 = load i32, i32* @sl, align 4
  %73 = load i32, i32* @dlt, align 4
  %add60 = add nsw i32 %72, %73
  store i32 %add60, i32* @rlt, align 4
  %74 = load i32, i32* @rlt1, align 4
  store i32 %74, i32* @rlt2, align 4
  %75 = load i32, i32* @rlt, align 4
  store i32 %75, i32* @rlt1, align 4
  %76 = load i32, i32* @plt1, align 4
  store i32 %76, i32* @plt2, align 4
  %77 = load i32, i32* @plt, align 4
  store i32 %77, i32* @plt1, align 4
  %call61 = call i32 @filtez(i32* getelementptr inbounds ([6 x i32], [6 x i32]* @delay_bph, i32 0, i32 0), i32* getelementptr inbounds ([6 x i32], [6 x i32]* @delay_dhx, i32 0, i32 0))
  store i32 %call61, i32* @szh, align 4
  %78 = load i32, i32* @rh1, align 4
  %79 = load i32, i32* @ah1, align 4
  %80 = load i32, i32* @rh2, align 4
  %81 = load i32, i32* @ah2, align 4
  %call62 = call i32 @filtep(i32 %78, i32 %79, i32 %80, i32 %81)
  store i32 %call62, i32* @sph, align 4
  %82 = load i32, i32* @sph, align 4
  %83 = load i32, i32* @szh, align 4
  %add63 = add nsw i32 %82, %83
  store i32 %add63, i32* @sh, align 4
  %84 = load i32, i32* @xh, align 4
  %85 = load i32, i32* @sh, align 4
  %sub64 = sub nsw i32 %84, %85
  store i32 %sub64, i32* @eh, align 4
  %86 = load i32, i32* @eh, align 4
  %cmp65 = icmp sge i32 %86, 0
  br i1 %cmp65, label %if.then, label %if.else

if.then:                                          ; preds = %for.end39
  store i32 3, i32* @ih, align 4
  br label %if.end

if.else:                                          ; preds = %for.end39
  store i32 1, i32* @ih, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %87 = load i32, i32* @deth, align 4
  %conv67 = sext i32 %87 to i64
  %mul68 = mul nsw i64 564, %conv67
  %shr69 = ashr i64 %mul68, 12
  %conv70 = trunc i64 %shr69 to i32
  store i32 %conv70, i32* %decis, align 4
  %88 = load i32, i32* @eh, align 4
  %call71 = call i32 @abs(i32 %88) #3
  %89 = load i32, i32* %decis, align 4
  %cmp72 = icmp sgt i32 %call71, %89
  br i1 %cmp72, label %if.then74, label %if.end75

if.then74:                                        ; preds = %if.end
  %90 = load i32, i32* @ih, align 4
  %dec = add nsw i32 %90, -1
  store i32 %dec, i32* @ih, align 4
  br label %if.end75

if.end75:                                         ; preds = %if.then74, %if.end
  %91 = load i32, i32* @deth, align 4
  %conv76 = sext i32 %91 to i64
  %92 = load i32, i32* @ih, align 4
  %idxprom77 = sext i32 %92 to i64
  %arrayidx78 = getelementptr inbounds [4 x i32], [4 x i32]* @qq2_code2_table, i64 0, i64 %idxprom77
  %93 = load i32, i32* %arrayidx78, align 4
  %conv79 = sext i32 %93 to i64
  %mul80 = mul nsw i64 %conv76, %conv79
  %shr81 = ashr i64 %mul80, 15
  %conv82 = trunc i64 %shr81 to i32
  store i32 %conv82, i32* @dh, align 4
  %94 = load i32, i32* @ih, align 4
  %95 = load i32, i32* @nbh, align 4
  %call83 = call i32 @logsch(i32 %94, i32 %95)
  store i32 %call83, i32* @nbh, align 4
  %96 = load i32, i32* @nbh, align 4
  %call84 = call i32 @scalel(i32 %96, i32 10)
  store i32 %call84, i32* @deth, align 4
  %97 = load i32, i32* @dh, align 4
  %98 = load i32, i32* @szh, align 4
  %add85 = add nsw i32 %97, %98
  store i32 %add85, i32* @ph, align 4
  %99 = load i32, i32* @dh, align 4
  call void @upzero(i32 %99, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @delay_dhx, i32 0, i32 0), i32* getelementptr inbounds ([6 x i32], [6 x i32]* @delay_bph, i32 0, i32 0))
  %100 = load i32, i32* @ah1, align 4
  %101 = load i32, i32* @ah2, align 4
  %102 = load i32, i32* @ph, align 4
  %103 = load i32, i32* @ph1, align 4
  %104 = load i32, i32* @ph2, align 4
  %call86 = call i32 @uppol2(i32 %100, i32 %101, i32 %102, i32 %103, i32 %104)
  store i32 %call86, i32* @ah2, align 4
  %105 = load i32, i32* @ah1, align 4
  %106 = load i32, i32* @ah2, align 4
  %107 = load i32, i32* @ph, align 4
  %108 = load i32, i32* @ph1, align 4
  %call87 = call i32 @uppol1(i32 %105, i32 %106, i32 %107, i32 %108)
  store i32 %call87, i32* @ah1, align 4
  %109 = load i32, i32* @sh, align 4
  %110 = load i32, i32* @dh, align 4
  %add88 = add nsw i32 %109, %110
  store i32 %add88, i32* @yh, align 4
  %111 = load i32, i32* @rh1, align 4
  store i32 %111, i32* @rh2, align 4
  %112 = load i32, i32* @yh, align 4
  store i32 %112, i32* @rh1, align 4
  %113 = load i32, i32* @ph1, align 4
  store i32 %113, i32* @ph2, align 4
  %114 = load i32, i32* @ph, align 4
  store i32 %114, i32* @ph1, align 4
  %115 = load i32, i32* @il, align 4
  %116 = load i32, i32* @ih, align 4
  %shl = shl i32 %116, 6
  %or = or i32 %115, %shl
  ret i32 %or
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @filtez(i32* %bpl, i32* %dlt) #1 {
entry:
  %bpl.addr = alloca i32*, align 8
  %dlt.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %zl = alloca i64, align 8
  store i32* %bpl, i32** %bpl.addr, align 8
  store i32* %dlt, i32** %dlt.addr, align 8
  %0 = load i32*, i32** %bpl.addr, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %0, i32 1
  store i32* %incdec.ptr, i32** %bpl.addr, align 8
  %1 = load i32, i32* %0, align 4
  %conv = sext i32 %1 to i64
  %2 = load i32*, i32** %dlt.addr, align 8
  %incdec.ptr1 = getelementptr inbounds i32, i32* %2, i32 1
  store i32* %incdec.ptr1, i32** %dlt.addr, align 8
  %3 = load i32, i32* %2, align 4
  %conv2 = sext i32 %3 to i64
  %mul = mul nsw i64 %conv, %conv2
  store i64 %mul, i64* %zl, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %4, 6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32*, i32** %bpl.addr, align 8
  %incdec.ptr4 = getelementptr inbounds i32, i32* %5, i32 1
  store i32* %incdec.ptr4, i32** %bpl.addr, align 8
  %6 = load i32, i32* %5, align 4
  %conv5 = sext i32 %6 to i64
  %7 = load i32*, i32** %dlt.addr, align 8
  %incdec.ptr6 = getelementptr inbounds i32, i32* %7, i32 1
  store i32* %incdec.ptr6, i32** %dlt.addr, align 8
  %8 = load i32, i32* %7, align 4
  %conv7 = sext i32 %8 to i64
  %mul8 = mul nsw i64 %conv5, %conv7
  %9 = load i64, i64* %zl, align 8
  %add = add nsw i64 %9, %mul8
  store i64 %add, i64* %zl, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load i64, i64* %zl, align 8
  %shr = ashr i64 %11, 14
  %conv9 = trunc i64 %shr to i32
  ret i32 %conv9
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @filtep(i32 %rlt1, i32 %al1, i32 %rlt2, i32 %al2) #1 {
entry:
  %rlt1.addr = alloca i32, align 4
  %al1.addr = alloca i32, align 4
  %rlt2.addr = alloca i32, align 4
  %al2.addr = alloca i32, align 4
  %pl = alloca i64, align 8
  %pl2 = alloca i64, align 8
  store i32 %rlt1, i32* %rlt1.addr, align 4
  store i32 %al1, i32* %al1.addr, align 4
  store i32 %rlt2, i32* %rlt2.addr, align 4
  store i32 %al2, i32* %al2.addr, align 4
  %0 = load i32, i32* %rlt1.addr, align 4
  %mul = mul nsw i32 2, %0
  %conv = sext i32 %mul to i64
  store i64 %conv, i64* %pl, align 8
  %1 = load i32, i32* %al1.addr, align 4
  %conv1 = sext i32 %1 to i64
  %2 = load i64, i64* %pl, align 8
  %mul2 = mul nsw i64 %conv1, %2
  store i64 %mul2, i64* %pl, align 8
  %3 = load i32, i32* %rlt2.addr, align 4
  %mul3 = mul nsw i32 2, %3
  %conv4 = sext i32 %mul3 to i64
  store i64 %conv4, i64* %pl2, align 8
  %4 = load i32, i32* %al2.addr, align 4
  %conv5 = sext i32 %4 to i64
  %5 = load i64, i64* %pl2, align 8
  %mul6 = mul nsw i64 %conv5, %5
  %6 = load i64, i64* %pl, align 8
  %add = add nsw i64 %6, %mul6
  store i64 %add, i64* %pl, align 8
  %7 = load i64, i64* %pl, align 8
  %shr = ashr i64 %7, 15
  %conv7 = trunc i64 %shr to i32
  ret i32 %conv7
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @quantl(i32 %el, i32 %detl) #1 {
entry:
  %el.addr = alloca i32, align 4
  %detl.addr = alloca i32, align 4
  %ril = alloca i32, align 4
  %mil = alloca i32, align 4
  %wd = alloca i64, align 8
  %decis = alloca i64, align 8
  store i32 %el, i32* %el.addr, align 4
  store i32 %detl, i32* %detl.addr, align 4
  %0 = load i32, i32* %el.addr, align 4
  %call = call i32 @abs(i32 %0) #3
  %conv = sext i32 %call to i64
  store i64 %conv, i64* %wd, align 8
  store i32 0, i32* %mil, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %mil, align 4
  %cmp = icmp slt i32 %1, 30
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %mil, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [30 x i32], [30 x i32]* @decis_levl, i64 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %conv2 = sext i32 %3 to i64
  %4 = load i32, i32* %detl.addr, align 4
  %conv3 = sext i32 %4 to i64
  %mul = mul nsw i64 %conv2, %conv3
  %shr = ashr i64 %mul, 15
  store i64 %shr, i64* %decis, align 8
  %5 = load i64, i64* %wd, align 8
  %6 = load i64, i64* %decis, align 8
  %cmp4 = icmp sle i64 %5, %6
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load i32, i32* %mil, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %mil, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %8 = load i32, i32* %el.addr, align 4
  %cmp6 = icmp sge i32 %8, 0
  br i1 %cmp6, label %if.then8, label %if.else

if.then8:                                         ; preds = %for.end
  %9 = load i32, i32* %mil, align 4
  %idxprom9 = sext i32 %9 to i64
  %arrayidx10 = getelementptr inbounds [31 x i32], [31 x i32]* @quant26bt_pos, i64 0, i64 %idxprom9
  %10 = load i32, i32* %arrayidx10, align 4
  store i32 %10, i32* %ril, align 4
  br label %if.end13

if.else:                                          ; preds = %for.end
  %11 = load i32, i32* %mil, align 4
  %idxprom11 = sext i32 %11 to i64
  %arrayidx12 = getelementptr inbounds [31 x i32], [31 x i32]* @quant26bt_neg, i64 0, i64 %idxprom11
  %12 = load i32, i32* %arrayidx12, align 4
  store i32 %12, i32* %ril, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then8
  %13 = load i32, i32* %ril, align 4
  ret i32 %13
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @logscl(i32 %il, i32 %nbl) #1 {
entry:
  %il.addr = alloca i32, align 4
  %nbl.addr = alloca i32, align 4
  %wd = alloca i64, align 8
  store i32 %il, i32* %il.addr, align 4
  store i32 %nbl, i32* %nbl.addr, align 4
  %0 = load i32, i32* %nbl.addr, align 4
  %conv = sext i32 %0 to i64
  %mul = mul nsw i64 %conv, 127
  %shr = ashr i64 %mul, 7
  store i64 %shr, i64* %wd, align 8
  %1 = load i64, i64* %wd, align 8
  %conv1 = trunc i64 %1 to i32
  %2 = load i32, i32* %il.addr, align 4
  %shr2 = ashr i32 %2, 2
  %idxprom = sext i32 %shr2 to i64
  %arrayidx = getelementptr inbounds [16 x i32], [16 x i32]* @wl_code_table, i64 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %add = add nsw i32 %conv1, %3
  store i32 %add, i32* %nbl.addr, align 4
  %4 = load i32, i32* %nbl.addr, align 4
  %cmp = icmp slt i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %nbl.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, i32* %nbl.addr, align 4
  %cmp4 = icmp sgt i32 %5, 18432
  br i1 %cmp4, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  store i32 18432, i32* %nbl.addr, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end
  %6 = load i32, i32* %nbl.addr, align 4
  ret i32 %6
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @scalel(i32 %nbl, i32 %shift_constant) #1 {
entry:
  %nbl.addr = alloca i32, align 4
  %shift_constant.addr = alloca i32, align 4
  %wd1 = alloca i32, align 4
  %wd2 = alloca i32, align 4
  %wd3 = alloca i32, align 4
  store i32 %nbl, i32* %nbl.addr, align 4
  store i32 %shift_constant, i32* %shift_constant.addr, align 4
  %0 = load i32, i32* %nbl.addr, align 4
  %shr = ashr i32 %0, 6
  %and = and i32 %shr, 31
  store i32 %and, i32* %wd1, align 4
  %1 = load i32, i32* %nbl.addr, align 4
  %shr1 = ashr i32 %1, 11
  store i32 %shr1, i32* %wd2, align 4
  %2 = load i32, i32* %wd1, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [32 x i32], [32 x i32]* @ilb_table, i64 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32, i32* %shift_constant.addr, align 4
  %add = add nsw i32 %4, 1
  %5 = load i32, i32* %wd2, align 4
  %sub = sub nsw i32 %add, %5
  %shr2 = ashr i32 %3, %sub
  store i32 %shr2, i32* %wd3, align 4
  %6 = load i32, i32* %wd3, align 4
  %shl = shl i32 %6, 3
  ret i32 %shl
}

; Function Attrs: noinline nounwind ssp uwtable
define void @upzero(i32 %dlt, i32* %dlti, i32* %bli) #1 {
entry:
  %dlt.addr = alloca i32, align 4
  %dlti.addr = alloca i32*, align 8
  %bli.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %wd2 = alloca i32, align 4
  %wd3 = alloca i32, align 4
  store i32 %dlt, i32* %dlt.addr, align 4
  store i32* %dlti, i32** %dlti.addr, align 8
  store i32* %bli, i32** %bli.addr, align 8
  %0 = load i32, i32* %dlt.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4
  %cmp1 = icmp slt i32 %1, 6
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32*, i32** %bli.addr, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %conv = sext i32 %4 to i64
  %mul = mul nsw i64 255, %conv
  %shr = ashr i64 %mul, 8
  %conv2 = trunc i64 %shr to i32
  %5 = load i32*, i32** %bli.addr, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %6 to i64
  %arrayidx4 = getelementptr inbounds i32, i32* %5, i64 %idxprom3
  store i32 %conv2, i32* %arrayidx4, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end29

if.else:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc26, %if.else
  %8 = load i32, i32* %i, align 4
  %cmp6 = icmp slt i32 %8, 6
  br i1 %cmp6, label %for.body8, label %for.end28

for.body8:                                        ; preds = %for.cond5
  %9 = load i32, i32* %dlt.addr, align 4
  %conv9 = sext i32 %9 to i64
  %10 = load i32*, i32** %dlti.addr, align 8
  %11 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %11 to i64
  %arrayidx11 = getelementptr inbounds i32, i32* %10, i64 %idxprom10
  %12 = load i32, i32* %arrayidx11, align 4
  %conv12 = sext i32 %12 to i64
  %mul13 = mul nsw i64 %conv9, %conv12
  %cmp14 = icmp sge i64 %mul13, 0
  br i1 %cmp14, label %if.then16, label %if.else17

if.then16:                                        ; preds = %for.body8
  store i32 128, i32* %wd2, align 4
  br label %if.end

if.else17:                                        ; preds = %for.body8
  store i32 -128, i32* %wd2, align 4
  br label %if.end

if.end:                                           ; preds = %if.else17, %if.then16
  %13 = load i32*, i32** %bli.addr, align 8
  %14 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %14 to i64
  %arrayidx19 = getelementptr inbounds i32, i32* %13, i64 %idxprom18
  %15 = load i32, i32* %arrayidx19, align 4
  %conv20 = sext i32 %15 to i64
  %mul21 = mul nsw i64 255, %conv20
  %shr22 = ashr i64 %mul21, 8
  %conv23 = trunc i64 %shr22 to i32
  store i32 %conv23, i32* %wd3, align 4
  %16 = load i32, i32* %wd2, align 4
  %17 = load i32, i32* %wd3, align 4
  %add = add nsw i32 %16, %17
  %18 = load i32*, i32** %bli.addr, align 8
  %19 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %19 to i64
  %arrayidx25 = getelementptr inbounds i32, i32* %18, i64 %idxprom24
  store i32 %add, i32* %arrayidx25, align 4
  br label %for.inc26

for.inc26:                                        ; preds = %if.end
  %20 = load i32, i32* %i, align 4
  %inc27 = add nsw i32 %20, 1
  store i32 %inc27, i32* %i, align 4
  br label %for.cond5

for.end28:                                        ; preds = %for.cond5
  br label %if.end29

if.end29:                                         ; preds = %for.end28, %for.end
  %21 = load i32*, i32** %dlti.addr, align 8
  %arrayidx30 = getelementptr inbounds i32, i32* %21, i64 4
  %22 = load i32, i32* %arrayidx30, align 4
  %23 = load i32*, i32** %dlti.addr, align 8
  %arrayidx31 = getelementptr inbounds i32, i32* %23, i64 5
  store i32 %22, i32* %arrayidx31, align 4
  %24 = load i32*, i32** %dlti.addr, align 8
  %arrayidx32 = getelementptr inbounds i32, i32* %24, i64 3
  %25 = load i32, i32* %arrayidx32, align 4
  %26 = load i32*, i32** %dlti.addr, align 8
  %arrayidx33 = getelementptr inbounds i32, i32* %26, i64 4
  store i32 %25, i32* %arrayidx33, align 4
  %27 = load i32*, i32** %dlti.addr, align 8
  %arrayidx34 = getelementptr inbounds i32, i32* %27, i64 2
  %28 = load i32, i32* %arrayidx34, align 4
  %29 = load i32*, i32** %dlti.addr, align 8
  %arrayidx35 = getelementptr inbounds i32, i32* %29, i64 3
  store i32 %28, i32* %arrayidx35, align 4
  %30 = load i32*, i32** %dlti.addr, align 8
  %arrayidx36 = getelementptr inbounds i32, i32* %30, i64 1
  %31 = load i32, i32* %arrayidx36, align 4
  %32 = load i32*, i32** %dlti.addr, align 8
  %arrayidx37 = getelementptr inbounds i32, i32* %32, i64 2
  store i32 %31, i32* %arrayidx37, align 4
  %33 = load i32*, i32** %dlti.addr, align 8
  %arrayidx38 = getelementptr inbounds i32, i32* %33, i64 0
  %34 = load i32, i32* %arrayidx38, align 4
  %35 = load i32*, i32** %dlti.addr, align 8
  %arrayidx39 = getelementptr inbounds i32, i32* %35, i64 1
  store i32 %34, i32* %arrayidx39, align 4
  %36 = load i32, i32* %dlt.addr, align 4
  %37 = load i32*, i32** %dlti.addr, align 8
  %arrayidx40 = getelementptr inbounds i32, i32* %37, i64 0
  store i32 %36, i32* %arrayidx40, align 4
  ret void
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @uppol2(i32 %al1, i32 %al2, i32 %plt, i32 %plt1, i32 %plt2) #1 {
entry:
  %al1.addr = alloca i32, align 4
  %al2.addr = alloca i32, align 4
  %plt.addr = alloca i32, align 4
  %plt1.addr = alloca i32, align 4
  %plt2.addr = alloca i32, align 4
  %wd2 = alloca i64, align 8
  %wd4 = alloca i64, align 8
  %apl2 = alloca i32, align 4
  store i32 %al1, i32* %al1.addr, align 4
  store i32 %al2, i32* %al2.addr, align 4
  store i32 %plt, i32* %plt.addr, align 4
  store i32 %plt1, i32* %plt1.addr, align 4
  store i32 %plt2, i32* %plt2.addr, align 4
  %0 = load i32, i32* %al1.addr, align 4
  %conv = sext i32 %0 to i64
  %mul = mul nsw i64 4, %conv
  store i64 %mul, i64* %wd2, align 8
  %1 = load i32, i32* %plt.addr, align 4
  %conv1 = sext i32 %1 to i64
  %2 = load i32, i32* %plt1.addr, align 4
  %conv2 = sext i32 %2 to i64
  %mul3 = mul nsw i64 %conv1, %conv2
  %cmp = icmp sge i64 %mul3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i64, i64* %wd2, align 8
  %sub = sub nsw i64 0, %3
  store i64 %sub, i64* %wd2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i64, i64* %wd2, align 8
  %shr = ashr i64 %4, 7
  store i64 %shr, i64* %wd2, align 8
  %5 = load i32, i32* %plt.addr, align 4
  %conv5 = sext i32 %5 to i64
  %6 = load i32, i32* %plt2.addr, align 4
  %conv6 = sext i32 %6 to i64
  %mul7 = mul nsw i64 %conv5, %conv6
  %cmp8 = icmp sge i64 %mul7, 0
  br i1 %cmp8, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.end
  %7 = load i64, i64* %wd2, align 8
  %add = add nsw i64 %7, 128
  store i64 %add, i64* %wd4, align 8
  br label %if.end12

if.else:                                          ; preds = %if.end
  %8 = load i64, i64* %wd2, align 8
  %sub11 = sub nsw i64 %8, 128
  store i64 %sub11, i64* %wd4, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then10
  %9 = load i64, i64* %wd4, align 8
  %10 = load i32, i32* %al2.addr, align 4
  %conv13 = sext i32 %10 to i64
  %mul14 = mul nsw i64 127, %conv13
  %shr15 = ashr i64 %mul14, 7
  %add16 = add nsw i64 %9, %shr15
  %conv17 = trunc i64 %add16 to i32
  store i32 %conv17, i32* %apl2, align 4
  %11 = load i32, i32* %apl2, align 4
  %cmp18 = icmp sgt i32 %11, 12288
  br i1 %cmp18, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end12
  store i32 12288, i32* %apl2, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end12
  %12 = load i32, i32* %apl2, align 4
  %cmp22 = icmp slt i32 %12, -12288
  br i1 %cmp22, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end21
  store i32 -12288, i32* %apl2, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end21
  %13 = load i32, i32* %apl2, align 4
  ret i32 %13
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @uppol1(i32 %al1, i32 %apl2, i32 %plt, i32 %plt1) #1 {
entry:
  %al1.addr = alloca i32, align 4
  %apl2.addr = alloca i32, align 4
  %plt.addr = alloca i32, align 4
  %plt1.addr = alloca i32, align 4
  %wd2 = alloca i64, align 8
  %wd3 = alloca i32, align 4
  %apl1 = alloca i32, align 4
  store i32 %al1, i32* %al1.addr, align 4
  store i32 %apl2, i32* %apl2.addr, align 4
  store i32 %plt, i32* %plt.addr, align 4
  store i32 %plt1, i32* %plt1.addr, align 4
  %0 = load i32, i32* %al1.addr, align 4
  %conv = sext i32 %0 to i64
  %mul = mul nsw i64 %conv, 255
  %shr = ashr i64 %mul, 8
  store i64 %shr, i64* %wd2, align 8
  %1 = load i32, i32* %plt.addr, align 4
  %conv1 = sext i32 %1 to i64
  %2 = load i32, i32* %plt1.addr, align 4
  %conv2 = sext i32 %2 to i64
  %mul3 = mul nsw i64 %conv1, %conv2
  %cmp = icmp sge i64 %mul3, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i64, i64* %wd2, align 8
  %conv5 = trunc i64 %3 to i32
  %add = add nsw i32 %conv5, 192
  store i32 %add, i32* %apl1, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load i64, i64* %wd2, align 8
  %conv6 = trunc i64 %4 to i32
  %sub = sub nsw i32 %conv6, 192
  store i32 %sub, i32* %apl1, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i32, i32* %apl2.addr, align 4
  %sub7 = sub nsw i32 15360, %5
  store i32 %sub7, i32* %wd3, align 4
  %6 = load i32, i32* %apl1, align 4
  %7 = load i32, i32* %wd3, align 4
  %cmp8 = icmp sgt i32 %6, %7
  br i1 %cmp8, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end
  %8 = load i32, i32* %wd3, align 4
  store i32 %8, i32* %apl1, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end
  %9 = load i32, i32* %apl1, align 4
  %10 = load i32, i32* %wd3, align 4
  %sub12 = sub nsw i32 0, %10
  %cmp13 = icmp slt i32 %9, %sub12
  br i1 %cmp13, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.end11
  %11 = load i32, i32* %wd3, align 4
  %sub16 = sub nsw i32 0, %11
  store i32 %sub16, i32* %apl1, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.end11
  %12 = load i32, i32* %apl1, align 4
  ret i32 %12
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @logsch(i32 %ih, i32 %nbh) #1 {
entry:
  %ih.addr = alloca i32, align 4
  %nbh.addr = alloca i32, align 4
  %wd = alloca i32, align 4
  store i32 %ih, i32* %ih.addr, align 4
  store i32 %nbh, i32* %nbh.addr, align 4
  %0 = load i32, i32* %nbh.addr, align 4
  %conv = sext i32 %0 to i64
  %mul = mul nsw i64 %conv, 127
  %shr = ashr i64 %mul, 7
  %conv1 = trunc i64 %shr to i32
  store i32 %conv1, i32* %wd, align 4
  %1 = load i32, i32* %wd, align 4
  %2 = load i32, i32* %ih.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* @wh_code_table, i64 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %add = add nsw i32 %1, %3
  store i32 %add, i32* %nbh.addr, align 4
  %4 = load i32, i32* %nbh.addr, align 4
  %cmp = icmp slt i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %nbh.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, i32* %nbh.addr, align 4
  %cmp3 = icmp sgt i32 %5, 22528
  br i1 %cmp3, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  store i32 22528, i32* %nbh.addr, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end
  %6 = load i32, i32* %nbh.addr, align 4
  ret i32 %6
}

; Function Attrs: noinline nounwind ssp uwtable
define void @decode(i32 %input) #1 {
entry:
  %input.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %xa1 = alloca i64, align 8
  %xa2 = alloca i64, align 8
  %h_ptr = alloca i32*, align 8
  %ac_ptr = alloca i32*, align 8
  %ac_ptr1 = alloca i32*, align 8
  %ad_ptr = alloca i32*, align 8
  %ad_ptr1 = alloca i32*, align 8
  store i32 %input, i32* %input.addr, align 4
  %0 = load i32, i32* %input.addr, align 4
  %and = and i32 %0, 63
  store i32 %and, i32* @ilr, align 4
  %1 = load i32, i32* %input.addr, align 4
  %shr = ashr i32 %1, 6
  store i32 %shr, i32* @ih, align 4
  %call = call i32 @filtez(i32* getelementptr inbounds ([6 x i32], [6 x i32]* @dec_del_bpl, i32 0, i32 0), i32* getelementptr inbounds ([6 x i32], [6 x i32]* @dec_del_dltx, i32 0, i32 0))
  store i32 %call, i32* @dec_szl, align 4
  %2 = load i32, i32* @dec_rlt1, align 4
  %3 = load i32, i32* @dec_al1, align 4
  %4 = load i32, i32* @dec_rlt2, align 4
  %5 = load i32, i32* @dec_al2, align 4
  %call1 = call i32 @filtep(i32 %2, i32 %3, i32 %4, i32 %5)
  store i32 %call1, i32* @dec_spl, align 4
  %6 = load i32, i32* @dec_spl, align 4
  %7 = load i32, i32* @dec_szl, align 4
  %add = add nsw i32 %6, %7
  store i32 %add, i32* @dec_sl, align 4
  %8 = load i32, i32* @dec_detl, align 4
  %conv = sext i32 %8 to i64
  %9 = load i32, i32* @ilr, align 4
  %shr2 = ashr i32 %9, 2
  %idxprom = sext i32 %shr2 to i64
  %arrayidx = getelementptr inbounds [16 x i32], [16 x i32]* @qq4_code4_table, i64 0, i64 %idxprom
  %10 = load i32, i32* %arrayidx, align 4
  %conv3 = sext i32 %10 to i64
  %mul = mul nsw i64 %conv, %conv3
  %shr4 = ashr i64 %mul, 15
  %conv5 = trunc i64 %shr4 to i32
  store i32 %conv5, i32* @dec_dlt, align 4
  %11 = load i32, i32* @dec_detl, align 4
  %conv6 = sext i32 %11 to i64
  %12 = load i32, i32* @il, align 4
  %idxprom7 = sext i32 %12 to i64
  %arrayidx8 = getelementptr inbounds [64 x i32], [64 x i32]* @qq6_code6_table, i64 0, i64 %idxprom7
  %13 = load i32, i32* %arrayidx8, align 4
  %conv9 = sext i32 %13 to i64
  %mul10 = mul nsw i64 %conv6, %conv9
  %shr11 = ashr i64 %mul10, 15
  %conv12 = trunc i64 %shr11 to i32
  store i32 %conv12, i32* @dl, align 4
  %14 = load i32, i32* @dl, align 4
  %15 = load i32, i32* @dec_sl, align 4
  %add13 = add nsw i32 %14, %15
  store i32 %add13, i32* @rl, align 4
  %16 = load i32, i32* @ilr, align 4
  %17 = load i32, i32* @dec_nbl, align 4
  %call14 = call i32 @logscl(i32 %16, i32 %17)
  store i32 %call14, i32* @dec_nbl, align 4
  %18 = load i32, i32* @dec_nbl, align 4
  %call15 = call i32 @scalel(i32 %18, i32 8)
  store i32 %call15, i32* @dec_detl, align 4
  %19 = load i32, i32* @dec_dlt, align 4
  %20 = load i32, i32* @dec_szl, align 4
  %add16 = add nsw i32 %19, %20
  store i32 %add16, i32* @dec_plt, align 4
  %21 = load i32, i32* @dec_dlt, align 4
  call void @upzero(i32 %21, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @dec_del_dltx, i32 0, i32 0), i32* getelementptr inbounds ([6 x i32], [6 x i32]* @dec_del_bpl, i32 0, i32 0))
  %22 = load i32, i32* @dec_al1, align 4
  %23 = load i32, i32* @dec_al2, align 4
  %24 = load i32, i32* @dec_plt, align 4
  %25 = load i32, i32* @dec_plt1, align 4
  %26 = load i32, i32* @dec_plt2, align 4
  %call17 = call i32 @uppol2(i32 %22, i32 %23, i32 %24, i32 %25, i32 %26)
  store i32 %call17, i32* @dec_al2, align 4
  %27 = load i32, i32* @dec_al1, align 4
  %28 = load i32, i32* @dec_al2, align 4
  %29 = load i32, i32* @dec_plt, align 4
  %30 = load i32, i32* @dec_plt1, align 4
  %call18 = call i32 @uppol1(i32 %27, i32 %28, i32 %29, i32 %30)
  store i32 %call18, i32* @dec_al1, align 4
  %31 = load i32, i32* @dec_sl, align 4
  %32 = load i32, i32* @dec_dlt, align 4
  %add19 = add nsw i32 %31, %32
  store i32 %add19, i32* @dec_rlt, align 4
  %33 = load i32, i32* @dec_rlt1, align 4
  store i32 %33, i32* @dec_rlt2, align 4
  %34 = load i32, i32* @dec_rlt, align 4
  store i32 %34, i32* @dec_rlt1, align 4
  %35 = load i32, i32* @dec_plt1, align 4
  store i32 %35, i32* @dec_plt2, align 4
  %36 = load i32, i32* @dec_plt, align 4
  store i32 %36, i32* @dec_plt1, align 4
  %call20 = call i32 @filtez(i32* getelementptr inbounds ([6 x i32], [6 x i32]* @dec_del_bph, i32 0, i32 0), i32* getelementptr inbounds ([6 x i32], [6 x i32]* @dec_del_dhx, i32 0, i32 0))
  store i32 %call20, i32* @dec_szh, align 4
  %37 = load i32, i32* @dec_rh1, align 4
  %38 = load i32, i32* @dec_ah1, align 4
  %39 = load i32, i32* @dec_rh2, align 4
  %40 = load i32, i32* @dec_ah2, align 4
  %call21 = call i32 @filtep(i32 %37, i32 %38, i32 %39, i32 %40)
  store i32 %call21, i32* @dec_sph, align 4
  %41 = load i32, i32* @dec_sph, align 4
  %42 = load i32, i32* @dec_szh, align 4
  %add22 = add nsw i32 %41, %42
  store i32 %add22, i32* @dec_sh, align 4
  %43 = load i32, i32* @dec_deth, align 4
  %conv23 = sext i32 %43 to i64
  %44 = load i32, i32* @ih, align 4
  %idxprom24 = sext i32 %44 to i64
  %arrayidx25 = getelementptr inbounds [4 x i32], [4 x i32]* @qq2_code2_table, i64 0, i64 %idxprom24
  %45 = load i32, i32* %arrayidx25, align 4
  %conv26 = sext i32 %45 to i64
  %mul27 = mul nsw i64 %conv23, %conv26
  %shr28 = ashr i64 %mul27, 15
  %conv29 = trunc i64 %shr28 to i32
  store i32 %conv29, i32* @dec_dh, align 4
  %46 = load i32, i32* @ih, align 4
  %47 = load i32, i32* @dec_nbh, align 4
  %call30 = call i32 @logsch(i32 %46, i32 %47)
  store i32 %call30, i32* @dec_nbh, align 4
  %48 = load i32, i32* @dec_nbh, align 4
  %call31 = call i32 @scalel(i32 %48, i32 10)
  store i32 %call31, i32* @dec_deth, align 4
  %49 = load i32, i32* @dec_dh, align 4
  %50 = load i32, i32* @dec_szh, align 4
  %add32 = add nsw i32 %49, %50
  store i32 %add32, i32* @dec_ph, align 4
  %51 = load i32, i32* @dec_dh, align 4
  call void @upzero(i32 %51, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @dec_del_dhx, i32 0, i32 0), i32* getelementptr inbounds ([6 x i32], [6 x i32]* @dec_del_bph, i32 0, i32 0))
  %52 = load i32, i32* @dec_ah1, align 4
  %53 = load i32, i32* @dec_ah2, align 4
  %54 = load i32, i32* @dec_ph, align 4
  %55 = load i32, i32* @dec_ph1, align 4
  %56 = load i32, i32* @dec_ph2, align 4
  %call33 = call i32 @uppol2(i32 %52, i32 %53, i32 %54, i32 %55, i32 %56)
  store i32 %call33, i32* @dec_ah2, align 4
  %57 = load i32, i32* @dec_ah1, align 4
  %58 = load i32, i32* @dec_ah2, align 4
  %59 = load i32, i32* @dec_ph, align 4
  %60 = load i32, i32* @dec_ph1, align 4
  %call34 = call i32 @uppol1(i32 %57, i32 %58, i32 %59, i32 %60)
  store i32 %call34, i32* @dec_ah1, align 4
  %61 = load i32, i32* @dec_sh, align 4
  %62 = load i32, i32* @dec_dh, align 4
  %add35 = add nsw i32 %61, %62
  store i32 %add35, i32* @rh, align 4
  %63 = load i32, i32* @dec_rh1, align 4
  store i32 %63, i32* @dec_rh2, align 4
  %64 = load i32, i32* @rh, align 4
  store i32 %64, i32* @dec_rh1, align 4
  %65 = load i32, i32* @dec_ph1, align 4
  store i32 %65, i32* @dec_ph2, align 4
  %66 = load i32, i32* @dec_ph, align 4
  store i32 %66, i32* @dec_ph1, align 4
  %67 = load i32, i32* @rl, align 4
  %68 = load i32, i32* @rh, align 4
  %sub = sub nsw i32 %67, %68
  store i32 %sub, i32* @xd, align 4
  %69 = load i32, i32* @rl, align 4
  %70 = load i32, i32* @rh, align 4
  %add36 = add nsw i32 %69, %70
  store i32 %add36, i32* @xs, align 4
  store i32* getelementptr inbounds ([24 x i32], [24 x i32]* @h, i32 0, i32 0), i32** %h_ptr, align 8
  store i32* getelementptr inbounds ([11 x i32], [11 x i32]* @accumc, i32 0, i32 0), i32** %ac_ptr, align 8
  store i32* getelementptr inbounds ([11 x i32], [11 x i32]* @accumd, i32 0, i32 0), i32** %ad_ptr, align 8
  %71 = load i32, i32* @xd, align 4
  %conv37 = sext i32 %71 to i64
  %72 = load i32*, i32** %h_ptr, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %72, i32 1
  store i32* %incdec.ptr, i32** %h_ptr, align 8
  %73 = load i32, i32* %72, align 4
  %conv38 = sext i32 %73 to i64
  %mul39 = mul nsw i64 %conv37, %conv38
  store i64 %mul39, i64* %xa1, align 8
  %74 = load i32, i32* @xs, align 4
  %conv40 = sext i32 %74 to i64
  %75 = load i32*, i32** %h_ptr, align 8
  %incdec.ptr41 = getelementptr inbounds i32, i32* %75, i32 1
  store i32* %incdec.ptr41, i32** %h_ptr, align 8
  %76 = load i32, i32* %75, align 4
  %conv42 = sext i32 %76 to i64
  %mul43 = mul nsw i64 %conv40, %conv42
  store i64 %mul43, i64* %xa2, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %77 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %77, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %78 = load i32*, i32** %ac_ptr, align 8
  %incdec.ptr45 = getelementptr inbounds i32, i32* %78, i32 1
  store i32* %incdec.ptr45, i32** %ac_ptr, align 8
  %79 = load i32, i32* %78, align 4
  %conv46 = sext i32 %79 to i64
  %80 = load i32*, i32** %h_ptr, align 8
  %incdec.ptr47 = getelementptr inbounds i32, i32* %80, i32 1
  store i32* %incdec.ptr47, i32** %h_ptr, align 8
  %81 = load i32, i32* %80, align 4
  %conv48 = sext i32 %81 to i64
  %mul49 = mul nsw i64 %conv46, %conv48
  %82 = load i64, i64* %xa1, align 8
  %add50 = add nsw i64 %82, %mul49
  store i64 %add50, i64* %xa1, align 8
  %83 = load i32*, i32** %ad_ptr, align 8
  %incdec.ptr51 = getelementptr inbounds i32, i32* %83, i32 1
  store i32* %incdec.ptr51, i32** %ad_ptr, align 8
  %84 = load i32, i32* %83, align 4
  %conv52 = sext i32 %84 to i64
  %85 = load i32*, i32** %h_ptr, align 8
  %incdec.ptr53 = getelementptr inbounds i32, i32* %85, i32 1
  store i32* %incdec.ptr53, i32** %h_ptr, align 8
  %86 = load i32, i32* %85, align 4
  %conv54 = sext i32 %86 to i64
  %mul55 = mul nsw i64 %conv52, %conv54
  %87 = load i64, i64* %xa2, align 8
  %add56 = add nsw i64 %87, %mul55
  store i64 %add56, i64* %xa2, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %88 = load i32, i32* %i, align 4
  %inc = add nsw i32 %88, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %89 = load i32*, i32** %ac_ptr, align 8
  %90 = load i32, i32* %89, align 4
  %conv57 = sext i32 %90 to i64
  %91 = load i32*, i32** %h_ptr, align 8
  %incdec.ptr58 = getelementptr inbounds i32, i32* %91, i32 1
  store i32* %incdec.ptr58, i32** %h_ptr, align 8
  %92 = load i32, i32* %91, align 4
  %conv59 = sext i32 %92 to i64
  %mul60 = mul nsw i64 %conv57, %conv59
  %93 = load i64, i64* %xa1, align 8
  %add61 = add nsw i64 %93, %mul60
  store i64 %add61, i64* %xa1, align 8
  %94 = load i32*, i32** %ad_ptr, align 8
  %95 = load i32, i32* %94, align 4
  %conv62 = sext i32 %95 to i64
  %96 = load i32*, i32** %h_ptr, align 8
  %incdec.ptr63 = getelementptr inbounds i32, i32* %96, i32 1
  store i32* %incdec.ptr63, i32** %h_ptr, align 8
  %97 = load i32, i32* %96, align 4
  %conv64 = sext i32 %97 to i64
  %mul65 = mul nsw i64 %conv62, %conv64
  %98 = load i64, i64* %xa2, align 8
  %add66 = add nsw i64 %98, %mul65
  store i64 %add66, i64* %xa2, align 8
  %99 = load i64, i64* %xa1, align 8
  %shr67 = ashr i64 %99, 14
  %conv68 = trunc i64 %shr67 to i32
  store i32 %conv68, i32* @xout1, align 4
  %100 = load i64, i64* %xa2, align 8
  %shr69 = ashr i64 %100, 14
  %conv70 = trunc i64 %shr69 to i32
  store i32 %conv70, i32* @xout2, align 4
  %101 = load i32*, i32** %ac_ptr, align 8
  %add.ptr = getelementptr inbounds i32, i32* %101, i64 -1
  store i32* %add.ptr, i32** %ac_ptr1, align 8
  %102 = load i32*, i32** %ad_ptr, align 8
  %add.ptr71 = getelementptr inbounds i32, i32* %102, i64 -1
  store i32* %add.ptr71, i32** %ad_ptr1, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond72

for.cond72:                                       ; preds = %for.inc80, %for.end
  %103 = load i32, i32* %i, align 4
  %cmp73 = icmp slt i32 %103, 10
  br i1 %cmp73, label %for.body75, label %for.end82

for.body75:                                       ; preds = %for.cond72
  %104 = load i32*, i32** %ac_ptr1, align 8
  %incdec.ptr76 = getelementptr inbounds i32, i32* %104, i32 -1
  store i32* %incdec.ptr76, i32** %ac_ptr1, align 8
  %105 = load i32, i32* %104, align 4
  %106 = load i32*, i32** %ac_ptr, align 8
  %incdec.ptr77 = getelementptr inbounds i32, i32* %106, i32 -1
  store i32* %incdec.ptr77, i32** %ac_ptr, align 8
  store i32 %105, i32* %106, align 4
  %107 = load i32*, i32** %ad_ptr1, align 8
  %incdec.ptr78 = getelementptr inbounds i32, i32* %107, i32 -1
  store i32* %incdec.ptr78, i32** %ad_ptr1, align 8
  %108 = load i32, i32* %107, align 4
  %109 = load i32*, i32** %ad_ptr, align 8
  %incdec.ptr79 = getelementptr inbounds i32, i32* %109, i32 -1
  store i32* %incdec.ptr79, i32** %ad_ptr, align 8
  store i32 %108, i32* %109, align 4
  br label %for.inc80

for.inc80:                                        ; preds = %for.body75
  %110 = load i32, i32* %i, align 4
  %inc81 = add nsw i32 %110, 1
  store i32 %inc81, i32* %i, align 4
  br label %for.cond72

for.end82:                                        ; preds = %for.cond72
  %111 = load i32, i32* @xd, align 4
  %112 = load i32*, i32** %ac_ptr, align 8
  store i32 %111, i32* %112, align 4
  %113 = load i32, i32* @xs, align 4
  %114 = load i32*, i32** %ad_ptr, align 8
  store i32 %113, i32* %114, align 4
  ret void
}

; Function Attrs: noinline nounwind ssp uwtable
define void @reset() #1 {
entry:
  %i = alloca i32, align 4
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
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [6 x i32], [6 x i32]* @delay_dltx, i64 0, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  %2 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds [6 x i32], [6 x i32]* @delay_dhx, i64 0, i64 %idxprom1
  store i32 0, i32* %arrayidx2, align 4
  %3 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %3 to i64
  %arrayidx4 = getelementptr inbounds [6 x i32], [6 x i32]* @dec_del_dltx, i64 0, i64 %idxprom3
  store i32 0, i32* %arrayidx4, align 4
  %4 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %4 to i64
  %arrayidx6 = getelementptr inbounds [6 x i32], [6 x i32]* @dec_del_dhx, i64 0, i64 %idxprom5
  store i32 0, i32* %arrayidx6, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc18, %for.end
  %6 = load i32, i32* %i, align 4
  %cmp8 = icmp slt i32 %6, 6
  br i1 %cmp8, label %for.body9, label %for.end20

for.body9:                                        ; preds = %for.cond7
  %7 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %7 to i64
  %arrayidx11 = getelementptr inbounds [6 x i32], [6 x i32]* @delay_bpl, i64 0, i64 %idxprom10
  store i32 0, i32* %arrayidx11, align 4
  %8 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %8 to i64
  %arrayidx13 = getelementptr inbounds [6 x i32], [6 x i32]* @delay_bph, i64 0, i64 %idxprom12
  store i32 0, i32* %arrayidx13, align 4
  %9 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %9 to i64
  %arrayidx15 = getelementptr inbounds [6 x i32], [6 x i32]* @dec_del_bpl, i64 0, i64 %idxprom14
  store i32 0, i32* %arrayidx15, align 4
  %10 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %10 to i64
  %arrayidx17 = getelementptr inbounds [6 x i32], [6 x i32]* @dec_del_bph, i64 0, i64 %idxprom16
  store i32 0, i32* %arrayidx17, align 4
  br label %for.inc18

for.inc18:                                        ; preds = %for.body9
  %11 = load i32, i32* %i, align 4
  %inc19 = add nsw i32 %11, 1
  store i32 %inc19, i32* %i, align 4
  br label %for.cond7

for.end20:                                        ; preds = %for.cond7
  store i32 0, i32* %i, align 4
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc26, %for.end20
  %12 = load i32, i32* %i, align 4
  %cmp22 = icmp slt i32 %12, 24
  br i1 %cmp22, label %for.body23, label %for.end28

for.body23:                                       ; preds = %for.cond21
  %13 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %13 to i64
  %arrayidx25 = getelementptr inbounds [24 x i32], [24 x i32]* @tqmf, i64 0, i64 %idxprom24
  store i32 0, i32* %arrayidx25, align 4
  br label %for.inc26

for.inc26:                                        ; preds = %for.body23
  %14 = load i32, i32* %i, align 4
  %inc27 = add nsw i32 %14, 1
  store i32 %inc27, i32* %i, align 4
  br label %for.cond21

for.end28:                                        ; preds = %for.cond21
  store i32 0, i32* %i, align 4
  br label %for.cond29

for.cond29:                                       ; preds = %for.inc36, %for.end28
  %15 = load i32, i32* %i, align 4
  %cmp30 = icmp slt i32 %15, 11
  br i1 %cmp30, label %for.body31, label %for.end38

for.body31:                                       ; preds = %for.cond29
  %16 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %16 to i64
  %arrayidx33 = getelementptr inbounds [11 x i32], [11 x i32]* @accumc, i64 0, i64 %idxprom32
  store i32 0, i32* %arrayidx33, align 4
  %17 = load i32, i32* %i, align 4
  %idxprom34 = sext i32 %17 to i64
  %arrayidx35 = getelementptr inbounds [11 x i32], [11 x i32]* @accumd, i64 0, i64 %idxprom34
  store i32 0, i32* %arrayidx35, align 4
  br label %for.inc36

for.inc36:                                        ; preds = %for.body31
  %18 = load i32, i32* %i, align 4
  %inc37 = add nsw i32 %18, 1
  store i32 %inc37, i32* %i, align 4
  br label %for.cond29

for.end38:                                        ; preds = %for.cond29
  ret void
}

; Function Attrs: noinline nounwind ssp uwtable
define void @adpcm_main() #1 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  call void @reset()
  store i32 10, i32* %j, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 100
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [100 x i32], [100 x i32]* @test_data, i64 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %3 = load i32, i32* %i, align 4
  %add = add nsw i32 %3, 1
  %idxprom1 = sext i32 %add to i64
  %arrayidx2 = getelementptr inbounds [100 x i32], [100 x i32]* @test_data, i64 0, i64 %idxprom1
  %4 = load i32, i32* %arrayidx2, align 4
  %call = call i32 @encode(i32 %2, i32 %4)
  %5 = load i32, i32* %i, align 4
  %div = sdiv i32 %5, 2
  %idxprom3 = sext i32 %div to i64
  %arrayidx4 = getelementptr inbounds [100 x i32], [100 x i32]* @compressed, i64 0, i64 %idxprom3
  store i32 %call, i32* %arrayidx4, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %add5 = add nsw i32 %6, 2
  store i32 %add5, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc17, %for.end
  %7 = load i32, i32* %i, align 4
  %cmp7 = icmp slt i32 %7, 100
  br i1 %cmp7, label %for.body8, label %for.end19

for.body8:                                        ; preds = %for.cond6
  %8 = load i32, i32* %i, align 4
  %div9 = sdiv i32 %8, 2
  %idxprom10 = sext i32 %div9 to i64
  %arrayidx11 = getelementptr inbounds [100 x i32], [100 x i32]* @compressed, i64 0, i64 %idxprom10
  %9 = load i32, i32* %arrayidx11, align 4
  call void @decode(i32 %9)
  %10 = load i32, i32* @xout1, align 4
  %11 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %11 to i64
  %arrayidx13 = getelementptr inbounds [100 x i32], [100 x i32]* @result, i64 0, i64 %idxprom12
  store i32 %10, i32* %arrayidx13, align 4
  %12 = load i32, i32* @xout2, align 4
  %13 = load i32, i32* %i, align 4
  %add14 = add nsw i32 %13, 1
  %idxprom15 = sext i32 %add14 to i64
  %arrayidx16 = getelementptr inbounds [100 x i32], [100 x i32]* @result, i64 0, i64 %idxprom15
  store i32 %12, i32* %arrayidx16, align 4
  br label %for.inc17

for.inc17:                                        ; preds = %for.body8
  %14 = load i32, i32* %i, align 4
  %add18 = add nsw i32 %14, 2
  store i32 %add18, i32* %i, align 4
  br label %for.cond6

for.end19:                                        ; preds = %for.cond6
  ret void
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @main() #1 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %main_result = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 0, i32* %main_result, align 4
  call void @adpcm_main()
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 50
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [100 x i32], [100 x i32]* @compressed, i64 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %3 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [100 x i32], [100 x i32]* @test_compressed, i64 0, i64 %idxprom1
  %4 = load i32, i32* %arrayidx2, align 4
  %cmp3 = icmp ne i32 %2, %4
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load i32, i32* %main_result, align 4
  %add = add nsw i32 %5, 1
  store i32 %add, i32* %main_result, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc15, %for.end
  %7 = load i32, i32* %i, align 4
  %cmp5 = icmp slt i32 %7, 100
  br i1 %cmp5, label %for.body6, label %for.end17

for.body6:                                        ; preds = %for.cond4
  %8 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %8 to i64
  %arrayidx8 = getelementptr inbounds [100 x i32], [100 x i32]* @result, i64 0, i64 %idxprom7
  %9 = load i32, i32* %arrayidx8, align 4
  %10 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %10 to i64
  %arrayidx10 = getelementptr inbounds [100 x i32], [100 x i32]* @test_result, i64 0, i64 %idxprom9
  %11 = load i32, i32* %arrayidx10, align 4
  %cmp11 = icmp ne i32 %9, %11
  br i1 %cmp11, label %if.then12, label %if.end14

if.then12:                                        ; preds = %for.body6
  %12 = load i32, i32* %main_result, align 4
  %add13 = add nsw i32 %12, 1
  store i32 %add13, i32* %main_result, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %for.body6
  br label %for.inc15

for.inc15:                                        ; preds = %if.end14
  %13 = load i32, i32* %i, align 4
  %inc16 = add nsw i32 %13, 1
  store i32 %inc16, i32* %i, align 4
  br label %for.cond4

for.end17:                                        ; preds = %for.cond4
  %14 = load i32, i32* %main_result, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i32 %14)
  %15 = load i32, i32* %main_result, align 4
  ret i32 %15
}

declare i32 @printf(i8*, ...) #2

attributes #0 = { noinline nounwind readnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
