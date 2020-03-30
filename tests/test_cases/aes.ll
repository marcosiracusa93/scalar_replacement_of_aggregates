; ModuleID = 'aes/aes.c'
source_filename = "aes/aes.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

@encrypt.out_enc_statemt = internal constant [16 x i32] [i32 57, i32 37, i32 132, i32 29, i32 2, i32 220, i32 9, i32 251, i32 220, i32 17, i32 133, i32 151, i32 25, i32 106, i32 11, i32 50], align 16
@round_val = common global i32 0, align 4
@nb = common global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"encrypted message \09\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%x\00", align 1
@main_result = common global i32 0, align 4
@decrypt.out_dec_statemt = internal constant [16 x i32] [i32 50, i32 67, i32 246, i32 168, i32 136, i32 90, i32 48, i32 141, i32 49, i32 49, i32 152, i32 162, i32 224, i32 55, i32 7, i32 52], align 16
@.str.3 = private unnamed_addr constant [19 x i8] c"\0Adecrypto message\09\00", align 1
@Rcon0 = constant [30 x i32] [i32 1, i32 2, i32 4, i32 8, i32 16, i32 32, i32 64, i32 128, i32 27, i32 54, i32 108, i32 216, i32 171, i32 77, i32 154, i32 47, i32 94, i32 188, i32 99, i32 198, i32 151, i32 53, i32 106, i32 212, i32 179, i32 125, i32 250, i32 239, i32 197, i32 145], align 16
@word = common global [4 x [120 x i32]] zeroinitializer, align 16
@Sbox = constant [16 x [16 x i32]] [[16 x i32] [i32 99, i32 124, i32 119, i32 123, i32 242, i32 107, i32 111, i32 197, i32 48, i32 1, i32 103, i32 43, i32 254, i32 215, i32 171, i32 118], [16 x i32] [i32 202, i32 130, i32 201, i32 125, i32 250, i32 89, i32 71, i32 240, i32 173, i32 212, i32 162, i32 175, i32 156, i32 164, i32 114, i32 192], [16 x i32] [i32 183, i32 253, i32 147, i32 38, i32 54, i32 63, i32 247, i32 204, i32 52, i32 165, i32 229, i32 241, i32 113, i32 216, i32 49, i32 21], [16 x i32] [i32 4, i32 199, i32 35, i32 195, i32 24, i32 150, i32 5, i32 154, i32 7, i32 18, i32 128, i32 226, i32 235, i32 39, i32 178, i32 117], [16 x i32] [i32 9, i32 131, i32 44, i32 26, i32 27, i32 110, i32 90, i32 160, i32 82, i32 59, i32 214, i32 179, i32 41, i32 227, i32 47, i32 132], [16 x i32] [i32 83, i32 209, i32 0, i32 237, i32 32, i32 252, i32 177, i32 91, i32 106, i32 203, i32 190, i32 57, i32 74, i32 76, i32 88, i32 207], [16 x i32] [i32 208, i32 239, i32 170, i32 251, i32 67, i32 77, i32 51, i32 133, i32 69, i32 249, i32 2, i32 127, i32 80, i32 60, i32 159, i32 168], [16 x i32] [i32 81, i32 163, i32 64, i32 143, i32 146, i32 157, i32 56, i32 245, i32 188, i32 182, i32 218, i32 33, i32 16, i32 255, i32 243, i32 210], [16 x i32] [i32 205, i32 12, i32 19, i32 236, i32 95, i32 151, i32 68, i32 23, i32 196, i32 167, i32 126, i32 61, i32 100, i32 93, i32 25, i32 115], [16 x i32] [i32 96, i32 129, i32 79, i32 220, i32 34, i32 42, i32 144, i32 136, i32 70, i32 238, i32 184, i32 20, i32 222, i32 94, i32 11, i32 219], [16 x i32] [i32 224, i32 50, i32 58, i32 10, i32 73, i32 6, i32 36, i32 92, i32 194, i32 211, i32 172, i32 98, i32 145, i32 149, i32 228, i32 121], [16 x i32] [i32 231, i32 200, i32 55, i32 109, i32 141, i32 213, i32 78, i32 169, i32 108, i32 86, i32 244, i32 234, i32 101, i32 122, i32 174, i32 8], [16 x i32] [i32 186, i32 120, i32 37, i32 46, i32 28, i32 166, i32 180, i32 198, i32 232, i32 221, i32 116, i32 31, i32 75, i32 189, i32 139, i32 138], [16 x i32] [i32 112, i32 62, i32 181, i32 102, i32 72, i32 3, i32 246, i32 14, i32 97, i32 53, i32 87, i32 185, i32 134, i32 193, i32 29, i32 158], [16 x i32] [i32 225, i32 248, i32 152, i32 17, i32 105, i32 217, i32 142, i32 148, i32 155, i32 30, i32 135, i32 233, i32 206, i32 85, i32 40, i32 223], [16 x i32] [i32 140, i32 161, i32 137, i32 13, i32 191, i32 230, i32 66, i32 104, i32 65, i32 153, i32 45, i32 15, i32 176, i32 84, i32 187, i32 22]], align 16
@invSbox = constant [16 x [16 x i32]] [[16 x i32] [i32 82, i32 9, i32 106, i32 213, i32 48, i32 54, i32 165, i32 56, i32 191, i32 64, i32 163, i32 158, i32 129, i32 243, i32 215, i32 251], [16 x i32] [i32 124, i32 227, i32 57, i32 130, i32 155, i32 47, i32 255, i32 135, i32 52, i32 142, i32 67, i32 68, i32 196, i32 222, i32 233, i32 203], [16 x i32] [i32 84, i32 123, i32 148, i32 50, i32 166, i32 194, i32 35, i32 61, i32 238, i32 76, i32 149, i32 11, i32 66, i32 250, i32 195, i32 78], [16 x i32] [i32 8, i32 46, i32 161, i32 102, i32 40, i32 217, i32 36, i32 178, i32 118, i32 91, i32 162, i32 73, i32 109, i32 139, i32 209, i32 37], [16 x i32] [i32 114, i32 248, i32 246, i32 100, i32 134, i32 104, i32 152, i32 22, i32 212, i32 164, i32 92, i32 204, i32 93, i32 101, i32 182, i32 146], [16 x i32] [i32 108, i32 112, i32 72, i32 80, i32 253, i32 237, i32 185, i32 218, i32 94, i32 21, i32 70, i32 87, i32 167, i32 141, i32 157, i32 132], [16 x i32] [i32 144, i32 216, i32 171, i32 0, i32 140, i32 188, i32 211, i32 10, i32 247, i32 228, i32 88, i32 5, i32 184, i32 179, i32 69, i32 6], [16 x i32] [i32 208, i32 44, i32 30, i32 143, i32 202, i32 63, i32 15, i32 2, i32 193, i32 175, i32 189, i32 3, i32 1, i32 19, i32 138, i32 107], [16 x i32] [i32 58, i32 145, i32 17, i32 65, i32 79, i32 103, i32 220, i32 234, i32 151, i32 242, i32 207, i32 206, i32 240, i32 180, i32 230, i32 115], [16 x i32] [i32 150, i32 172, i32 116, i32 34, i32 231, i32 173, i32 53, i32 133, i32 226, i32 249, i32 55, i32 232, i32 28, i32 117, i32 223, i32 110], [16 x i32] [i32 71, i32 241, i32 26, i32 113, i32 29, i32 41, i32 197, i32 137, i32 111, i32 183, i32 98, i32 14, i32 170, i32 24, i32 190, i32 27], [16 x i32] [i32 252, i32 86, i32 62, i32 75, i32 198, i32 210, i32 121, i32 32, i32 154, i32 219, i32 192, i32 254, i32 120, i32 205, i32 90, i32 244], [16 x i32] [i32 31, i32 221, i32 168, i32 51, i32 136, i32 7, i32 199, i32 49, i32 177, i32 18, i32 16, i32 89, i32 39, i32 128, i32 236, i32 95], [16 x i32] [i32 96, i32 81, i32 127, i32 169, i32 25, i32 181, i32 74, i32 13, i32 45, i32 229, i32 122, i32 159, i32 147, i32 201, i32 156, i32 239], [16 x i32] [i32 160, i32 224, i32 59, i32 77, i32 174, i32 42, i32 245, i32 176, i32 200, i32 235, i32 187, i32 60, i32 131, i32 83, i32 153, i32 97], [16 x i32] [i32 23, i32 43, i32 4, i32 126, i32 186, i32 119, i32 214, i32 38, i32 225, i32 105, i32 20, i32 99, i32 85, i32 33, i32 12, i32 125]], align 16
@statemt = common global [32 x i32] zeroinitializer, align 16
@key = common global [32 x i32] zeroinitializer, align 16
@.str.4 = private unnamed_addr constant [5 x i8] c"\0A%d\0A\00", align 1
@type = common global i32 0, align 4

; Function Attrs: noinline nounwind ssp uwtable
define i32 @encrypt(i32* %statemt, i32* %key, i32 %type) #0 {
entry:
  %statemt.addr = alloca i32*, align 8
  %key.addr = alloca i32*, align 8
  %type.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32* %statemt, i32** %statemt.addr, align 8
  store i32* %key, i32** %key.addr, align 8
  store i32 %type, i32* %type.addr, align 4
  %0 = load i32, i32* %type.addr, align 4
  %1 = load i32*, i32** %key.addr, align 8
  %call = call i32 @KeySchedule(i32 %0, i32* %1)
  %2 = load i32, i32* %type.addr, align 4
  switch i32 %2, label %sw.epilog [
    i32 128128, label %sw.bb
    i32 192128, label %sw.bb1
    i32 256128, label %sw.bb2
    i32 128192, label %sw.bb3
    i32 192192, label %sw.bb3
    i32 256192, label %sw.bb4
    i32 128256, label %sw.bb5
    i32 192256, label %sw.bb5
    i32 256256, label %sw.bb5
  ]

sw.bb:                                            ; preds = %entry
  store i32 0, i32* @round_val, align 4
  store i32 4, i32* @nb, align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  store i32 2, i32* @round_val, align 4
  store i32 4, i32* @nb, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  store i32 4, i32* @round_val, align 4
  store i32 4, i32* @nb, align 4
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry, %entry
  store i32 2, i32* @round_val, align 4
  store i32 6, i32* @nb, align 4
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  store i32 4, i32* @round_val, align 4
  store i32 6, i32* @nb, align 4
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry, %entry, %entry
  store i32 4, i32* @round_val, align 4
  store i32 8, i32* @nb, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %3 = load i32*, i32** %statemt.addr, align 8
  %4 = load i32, i32* %type.addr, align 4
  %call6 = call i32 @AddRoundKey(i32* %3, i32 %4, i32 0)
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.epilog
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* @round_val, align 4
  %add = add nsw i32 %6, 9
  %cmp = icmp sle i32 %5, %add
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32*, i32** %statemt.addr, align 8
  %8 = load i32, i32* @nb, align 4
  call void @ByteSub_ShiftRow(i32* %7, i32 %8)
  %9 = load i32*, i32** %statemt.addr, align 8
  %10 = load i32, i32* @nb, align 4
  %11 = load i32, i32* %i, align 4
  %call7 = call i32 @MixColumn_AddRoundKey(i32* %9, i32 %10, i32 %11)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load i32*, i32** %statemt.addr, align 8
  %14 = load i32, i32* @nb, align 4
  call void @ByteSub_ShiftRow(i32* %13, i32 %14)
  %15 = load i32*, i32** %statemt.addr, align 8
  %16 = load i32, i32* %type.addr, align 4
  %17 = load i32, i32* %i, align 4
  %call8 = call i32 @AddRoundKey(i32* %15, i32 %16, i32 %17)
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc18, %for.end
  %18 = load i32, i32* %i, align 4
  %19 = load i32, i32* @nb, align 4
  %mul = mul nsw i32 %19, 4
  %cmp11 = icmp slt i32 %18, %mul
  br i1 %cmp11, label %for.body12, label %for.end20

for.body12:                                       ; preds = %for.cond10
  %20 = load i32*, i32** %statemt.addr, align 8
  %21 = load i32, i32* %i, align 4
  %idxprom = sext i32 %21 to i64
  %arrayidx = getelementptr inbounds i32, i32* %20, i64 %idxprom
  %22 = load i32, i32* %arrayidx, align 4
  %cmp13 = icmp slt i32 %22, 16
  br i1 %cmp13, label %if.then, label %if.end

if.then:                                          ; preds = %for.body12
  %call14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body12
  %23 = load i32*, i32** %statemt.addr, align 8
  %24 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %24 to i64
  %arrayidx16 = getelementptr inbounds i32, i32* %23, i64 %idxprom15
  %25 = load i32, i32* %arrayidx16, align 4
  %call17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i32 %25)
  br label %for.inc18

for.inc18:                                        ; preds = %if.end
  %26 = load i32, i32* %i, align 4
  %inc19 = add nsw i32 %26, 1
  store i32 %inc19, i32* %i, align 4
  br label %for.cond10

for.end20:                                        ; preds = %for.cond10
  store i32 0, i32* %i, align 4
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc30, %for.end20
  %27 = load i32, i32* %i, align 4
  %cmp22 = icmp slt i32 %27, 16
  br i1 %cmp22, label %for.body23, label %for.end32

for.body23:                                       ; preds = %for.cond21
  %28 = load i32*, i32** %statemt.addr, align 8
  %29 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %29 to i64
  %arrayidx25 = getelementptr inbounds i32, i32* %28, i64 %idxprom24
  %30 = load i32, i32* %arrayidx25, align 4
  %31 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %31 to i64
  %arrayidx27 = getelementptr inbounds [16 x i32], [16 x i32]* @encrypt.out_enc_statemt, i64 0, i64 %idxprom26
  %32 = load i32, i32* %arrayidx27, align 4
  %cmp28 = icmp ne i32 %30, %32
  %conv = zext i1 %cmp28 to i32
  %33 = load i32, i32* @main_result, align 4
  %add29 = add nsw i32 %33, %conv
  store i32 %add29, i32* @main_result, align 4
  br label %for.inc30

for.inc30:                                        ; preds = %for.body23
  %34 = load i32, i32* %i, align 4
  %inc31 = add nsw i32 %34, 1
  store i32 %inc31, i32* %i, align 4
  br label %for.cond21

for.end32:                                        ; preds = %for.cond21
  ret i32 0
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @KeySchedule(i32 %type, i32* %key) #0 {
entry:
  %retval = alloca i32, align 4
  %type.addr = alloca i32, align 4
  %key.addr = alloca i32*, align 8
  %nk = alloca i32, align 4
  %nb = alloca i32, align 4
  %round_val = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %temp = alloca [4 x i32], align 16
  store i32 %type, i32* %type.addr, align 4
  store i32* %key, i32** %key.addr, align 8
  %0 = load i32, i32* %type.addr, align 4
  switch i32 %0, label %sw.default [
    i32 128128, label %sw.bb
    i32 128192, label %sw.bb1
    i32 128256, label %sw.bb2
    i32 192128, label %sw.bb3
    i32 192192, label %sw.bb4
    i32 192256, label %sw.bb5
    i32 256128, label %sw.bb6
    i32 256192, label %sw.bb7
    i32 256256, label %sw.bb8
  ]

sw.bb:                                            ; preds = %entry
  store i32 4, i32* %nk, align 4
  store i32 4, i32* %nb, align 4
  store i32 10, i32* %round_val, align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  store i32 4, i32* %nk, align 4
  store i32 6, i32* %nb, align 4
  store i32 12, i32* %round_val, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  store i32 4, i32* %nk, align 4
  store i32 8, i32* %nb, align 4
  store i32 14, i32* %round_val, align 4
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  store i32 6, i32* %nk, align 4
  store i32 4, i32* %nb, align 4
  store i32 12, i32* %round_val, align 4
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  store i32 6, i32* %nk, align 4
  store i32 6, i32* %nb, align 4
  store i32 12, i32* %round_val, align 4
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  store i32 6, i32* %nk, align 4
  store i32 8, i32* %nb, align 4
  store i32 14, i32* %round_val, align 4
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  store i32 8, i32* %nk, align 4
  store i32 4, i32* %nb, align 4
  store i32 14, i32* %round_val, align 4
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  store i32 8, i32* %nk, align 4
  store i32 6, i32* %nb, align 4
  store i32 14, i32* %round_val, align 4
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  store i32 8, i32* %nk, align 4
  store i32 8, i32* %nb, align 4
  store i32 14, i32* %round_val, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  store i32 -1, i32* %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc16, %sw.epilog
  %1 = load i32, i32* %j, align 4
  %2 = load i32, i32* %nk, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end18

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc, %for.body
  %3 = load i32, i32* %i, align 4
  %cmp10 = icmp slt i32 %3, 4
  br i1 %cmp10, label %for.body11, label %for.end

for.body11:                                       ; preds = %for.cond9
  %4 = load i32*, i32** %key.addr, align 8
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %j, align 4
  %mul = mul nsw i32 %6, 4
  %add = add nsw i32 %5, %mul
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom
  %7 = load i32, i32* %arrayidx, align 4
  %8 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %8 to i64
  %arrayidx13 = getelementptr inbounds [4 x [120 x i32]], [4 x [120 x i32]]* @word, i64 0, i64 %idxprom12
  %9 = load i32, i32* %j, align 4
  %idxprom14 = sext i32 %9 to i64
  %arrayidx15 = getelementptr inbounds [120 x i32], [120 x i32]* %arrayidx13, i64 0, i64 %idxprom14
  store i32 %7, i32* %arrayidx15, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body11
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond9

for.end:                                          ; preds = %for.cond9
  br label %for.inc16

for.inc16:                                        ; preds = %for.end
  %11 = load i32, i32* %j, align 4
  %inc17 = add nsw i32 %11, 1
  store i32 %inc17, i32* %j, align 4
  br label %for.cond

for.end18:                                        ; preds = %for.cond
  %12 = load i32, i32* %nk, align 4
  store i32 %12, i32* %j, align 4
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc100, %for.end18
  %13 = load i32, i32* %j, align 4
  %14 = load i32, i32* %nb, align 4
  %15 = load i32, i32* %round_val, align 4
  %add20 = add nsw i32 %15, 1
  %mul21 = mul nsw i32 %14, %add20
  %cmp22 = icmp slt i32 %13, %mul21
  br i1 %cmp22, label %for.body23, label %for.end102

for.body23:                                       ; preds = %for.cond19
  %16 = load i32, i32* %j, align 4
  %17 = load i32, i32* %nk, align 4
  %rem = srem i32 %16, %17
  %cmp24 = icmp eq i32 %rem, 0
  br i1 %cmp24, label %if.then, label %if.end

if.then:                                          ; preds = %for.body23
  %18 = load i32, i32* %j, align 4
  %sub = sub nsw i32 %18, 1
  %idxprom25 = sext i32 %sub to i64
  %arrayidx26 = getelementptr inbounds [120 x i32], [120 x i32]* getelementptr inbounds ([4 x [120 x i32]], [4 x [120 x i32]]* @word, i64 0, i64 1), i64 0, i64 %idxprom25
  %19 = load i32, i32* %arrayidx26, align 4
  %call = call i32 @SubByte(i32 %19)
  %20 = load i32, i32* %j, align 4
  %21 = load i32, i32* %nk, align 4
  %div = sdiv i32 %20, %21
  %sub27 = sub nsw i32 %div, 1
  %idxprom28 = sext i32 %sub27 to i64
  %arrayidx29 = getelementptr inbounds [30 x i32], [30 x i32]* @Rcon0, i64 0, i64 %idxprom28
  %22 = load i32, i32* %arrayidx29, align 4
  %xor = xor i32 %call, %22
  %arrayidx30 = getelementptr inbounds [4 x i32], [4 x i32]* %temp, i64 0, i64 0
  store i32 %xor, i32* %arrayidx30, align 16
  %23 = load i32, i32* %j, align 4
  %sub31 = sub nsw i32 %23, 1
  %idxprom32 = sext i32 %sub31 to i64
  %arrayidx33 = getelementptr inbounds [120 x i32], [120 x i32]* getelementptr inbounds ([4 x [120 x i32]], [4 x [120 x i32]]* @word, i64 0, i64 2), i64 0, i64 %idxprom32
  %24 = load i32, i32* %arrayidx33, align 4
  %call34 = call i32 @SubByte(i32 %24)
  %arrayidx35 = getelementptr inbounds [4 x i32], [4 x i32]* %temp, i64 0, i64 1
  store i32 %call34, i32* %arrayidx35, align 4
  %25 = load i32, i32* %j, align 4
  %sub36 = sub nsw i32 %25, 1
  %idxprom37 = sext i32 %sub36 to i64
  %arrayidx38 = getelementptr inbounds [120 x i32], [120 x i32]* getelementptr inbounds ([4 x [120 x i32]], [4 x [120 x i32]]* @word, i64 0, i64 3), i64 0, i64 %idxprom37
  %26 = load i32, i32* %arrayidx38, align 4
  %call39 = call i32 @SubByte(i32 %26)
  %arrayidx40 = getelementptr inbounds [4 x i32], [4 x i32]* %temp, i64 0, i64 2
  store i32 %call39, i32* %arrayidx40, align 8
  %27 = load i32, i32* %j, align 4
  %sub41 = sub nsw i32 %27, 1
  %idxprom42 = sext i32 %sub41 to i64
  %arrayidx43 = getelementptr inbounds [120 x i32], [120 x i32]* getelementptr inbounds ([4 x [120 x i32]], [4 x [120 x i32]]* @word, i64 0, i64 0), i64 0, i64 %idxprom42
  %28 = load i32, i32* %arrayidx43, align 4
  %call44 = call i32 @SubByte(i32 %28)
  %arrayidx45 = getelementptr inbounds [4 x i32], [4 x i32]* %temp, i64 0, i64 3
  store i32 %call44, i32* %arrayidx45, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body23
  %29 = load i32, i32* %j, align 4
  %30 = load i32, i32* %nk, align 4
  %rem46 = srem i32 %29, %30
  %cmp47 = icmp ne i32 %rem46, 0
  br i1 %cmp47, label %if.then48, label %if.end65

if.then48:                                        ; preds = %if.end
  %31 = load i32, i32* %j, align 4
  %sub49 = sub nsw i32 %31, 1
  %idxprom50 = sext i32 %sub49 to i64
  %arrayidx51 = getelementptr inbounds [120 x i32], [120 x i32]* getelementptr inbounds ([4 x [120 x i32]], [4 x [120 x i32]]* @word, i64 0, i64 0), i64 0, i64 %idxprom50
  %32 = load i32, i32* %arrayidx51, align 4
  %arrayidx52 = getelementptr inbounds [4 x i32], [4 x i32]* %temp, i64 0, i64 0
  store i32 %32, i32* %arrayidx52, align 16
  %33 = load i32, i32* %j, align 4
  %sub53 = sub nsw i32 %33, 1
  %idxprom54 = sext i32 %sub53 to i64
  %arrayidx55 = getelementptr inbounds [120 x i32], [120 x i32]* getelementptr inbounds ([4 x [120 x i32]], [4 x [120 x i32]]* @word, i64 0, i64 1), i64 0, i64 %idxprom54
  %34 = load i32, i32* %arrayidx55, align 4
  %arrayidx56 = getelementptr inbounds [4 x i32], [4 x i32]* %temp, i64 0, i64 1
  store i32 %34, i32* %arrayidx56, align 4
  %35 = load i32, i32* %j, align 4
  %sub57 = sub nsw i32 %35, 1
  %idxprom58 = sext i32 %sub57 to i64
  %arrayidx59 = getelementptr inbounds [120 x i32], [120 x i32]* getelementptr inbounds ([4 x [120 x i32]], [4 x [120 x i32]]* @word, i64 0, i64 2), i64 0, i64 %idxprom58
  %36 = load i32, i32* %arrayidx59, align 4
  %arrayidx60 = getelementptr inbounds [4 x i32], [4 x i32]* %temp, i64 0, i64 2
  store i32 %36, i32* %arrayidx60, align 8
  %37 = load i32, i32* %j, align 4
  %sub61 = sub nsw i32 %37, 1
  %idxprom62 = sext i32 %sub61 to i64
  %arrayidx63 = getelementptr inbounds [120 x i32], [120 x i32]* getelementptr inbounds ([4 x [120 x i32]], [4 x [120 x i32]]* @word, i64 0, i64 3), i64 0, i64 %idxprom62
  %38 = load i32, i32* %arrayidx63, align 4
  %arrayidx64 = getelementptr inbounds [4 x i32], [4 x i32]* %temp, i64 0, i64 3
  store i32 %38, i32* %arrayidx64, align 4
  br label %if.end65

if.end65:                                         ; preds = %if.then48, %if.end
  %39 = load i32, i32* %nk, align 4
  %cmp66 = icmp sgt i32 %39, 6
  br i1 %cmp66, label %land.lhs.true, label %if.end81

land.lhs.true:                                    ; preds = %if.end65
  %40 = load i32, i32* %j, align 4
  %41 = load i32, i32* %nk, align 4
  %rem67 = srem i32 %40, %41
  %cmp68 = icmp eq i32 %rem67, 4
  br i1 %cmp68, label %if.then69, label %if.end81

if.then69:                                        ; preds = %land.lhs.true
  store i32 0, i32* %i, align 4
  br label %for.cond70

for.cond70:                                       ; preds = %for.inc78, %if.then69
  %42 = load i32, i32* %i, align 4
  %cmp71 = icmp slt i32 %42, 4
  br i1 %cmp71, label %for.body72, label %for.end80

for.body72:                                       ; preds = %for.cond70
  %43 = load i32, i32* %i, align 4
  %idxprom73 = sext i32 %43 to i64
  %arrayidx74 = getelementptr inbounds [4 x i32], [4 x i32]* %temp, i64 0, i64 %idxprom73
  %44 = load i32, i32* %arrayidx74, align 4
  %call75 = call i32 @SubByte(i32 %44)
  %45 = load i32, i32* %i, align 4
  %idxprom76 = sext i32 %45 to i64
  %arrayidx77 = getelementptr inbounds [4 x i32], [4 x i32]* %temp, i64 0, i64 %idxprom76
  store i32 %call75, i32* %arrayidx77, align 4
  br label %for.inc78

for.inc78:                                        ; preds = %for.body72
  %46 = load i32, i32* %i, align 4
  %inc79 = add nsw i32 %46, 1
  store i32 %inc79, i32* %i, align 4
  br label %for.cond70

for.end80:                                        ; preds = %for.cond70
  br label %if.end81

if.end81:                                         ; preds = %for.end80, %land.lhs.true, %if.end65
  store i32 0, i32* %i, align 4
  br label %for.cond82

for.cond82:                                       ; preds = %for.inc97, %if.end81
  %47 = load i32, i32* %i, align 4
  %cmp83 = icmp slt i32 %47, 4
  br i1 %cmp83, label %for.body84, label %for.end99

for.body84:                                       ; preds = %for.cond82
  %48 = load i32, i32* %i, align 4
  %idxprom85 = sext i32 %48 to i64
  %arrayidx86 = getelementptr inbounds [4 x [120 x i32]], [4 x [120 x i32]]* @word, i64 0, i64 %idxprom85
  %49 = load i32, i32* %j, align 4
  %50 = load i32, i32* %nk, align 4
  %sub87 = sub nsw i32 %49, %50
  %idxprom88 = sext i32 %sub87 to i64
  %arrayidx89 = getelementptr inbounds [120 x i32], [120 x i32]* %arrayidx86, i64 0, i64 %idxprom88
  %51 = load i32, i32* %arrayidx89, align 4
  %52 = load i32, i32* %i, align 4
  %idxprom90 = sext i32 %52 to i64
  %arrayidx91 = getelementptr inbounds [4 x i32], [4 x i32]* %temp, i64 0, i64 %idxprom90
  %53 = load i32, i32* %arrayidx91, align 4
  %xor92 = xor i32 %51, %53
  %54 = load i32, i32* %i, align 4
  %idxprom93 = sext i32 %54 to i64
  %arrayidx94 = getelementptr inbounds [4 x [120 x i32]], [4 x [120 x i32]]* @word, i64 0, i64 %idxprom93
  %55 = load i32, i32* %j, align 4
  %idxprom95 = sext i32 %55 to i64
  %arrayidx96 = getelementptr inbounds [120 x i32], [120 x i32]* %arrayidx94, i64 0, i64 %idxprom95
  store i32 %xor92, i32* %arrayidx96, align 4
  br label %for.inc97

for.inc97:                                        ; preds = %for.body84
  %56 = load i32, i32* %i, align 4
  %inc98 = add nsw i32 %56, 1
  store i32 %inc98, i32* %i, align 4
  br label %for.cond82

for.end99:                                        ; preds = %for.cond82
  br label %for.inc100

for.inc100:                                       ; preds = %for.end99
  %57 = load i32, i32* %j, align 4
  %inc101 = add nsw i32 %57, 1
  store i32 %inc101, i32* %j, align 4
  br label %for.cond19

for.end102:                                       ; preds = %for.cond19
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end102, %sw.default
  %58 = load i32, i32* %retval, align 4
  ret i32 %58
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @AddRoundKey(i32* %statemt, i32 %type, i32 %n) #0 {
entry:
  %statemt.addr = alloca i32*, align 8
  %type.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %j = alloca i32, align 4
  %nb = alloca i32, align 4
  store i32* %statemt, i32** %statemt.addr, align 8
  store i32 %type, i32* %type.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  %0 = load i32, i32* %type.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 128128, label %sw.bb
    i32 192128, label %sw.bb
    i32 256128, label %sw.bb
    i32 128192, label %sw.bb1
    i32 192192, label %sw.bb1
    i32 256192, label %sw.bb1
    i32 128256, label %sw.bb2
    i32 192256, label %sw.bb2
    i32 256256, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry
  store i32 4, i32* %nb, align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry, %entry, %entry
  store i32 6, i32* %nb, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry, %entry, %entry
  store i32 8, i32* %nb, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb2, %sw.bb1, %sw.bb
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.epilog
  %1 = load i32, i32* %j, align 4
  %2 = load i32, i32* %nb, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %j, align 4
  %4 = load i32, i32* %nb, align 4
  %5 = load i32, i32* %n.addr, align 4
  %mul = mul nsw i32 %4, %5
  %add = add nsw i32 %3, %mul
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds [120 x i32], [120 x i32]* getelementptr inbounds ([4 x [120 x i32]], [4 x [120 x i32]]* @word, i64 0, i64 0), i64 0, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4
  %7 = load i32*, i32** %statemt.addr, align 8
  %8 = load i32, i32* %j, align 4
  %mul3 = mul nsw i32 %8, 4
  %idxprom4 = sext i32 %mul3 to i64
  %arrayidx5 = getelementptr inbounds i32, i32* %7, i64 %idxprom4
  %9 = load i32, i32* %arrayidx5, align 4
  %xor = xor i32 %9, %6
  store i32 %xor, i32* %arrayidx5, align 4
  %10 = load i32, i32* %j, align 4
  %11 = load i32, i32* %nb, align 4
  %12 = load i32, i32* %n.addr, align 4
  %mul6 = mul nsw i32 %11, %12
  %add7 = add nsw i32 %10, %mul6
  %idxprom8 = sext i32 %add7 to i64
  %arrayidx9 = getelementptr inbounds [120 x i32], [120 x i32]* getelementptr inbounds ([4 x [120 x i32]], [4 x [120 x i32]]* @word, i64 0, i64 1), i64 0, i64 %idxprom8
  %13 = load i32, i32* %arrayidx9, align 4
  %14 = load i32*, i32** %statemt.addr, align 8
  %15 = load i32, i32* %j, align 4
  %mul10 = mul nsw i32 %15, 4
  %add11 = add nsw i32 1, %mul10
  %idxprom12 = sext i32 %add11 to i64
  %arrayidx13 = getelementptr inbounds i32, i32* %14, i64 %idxprom12
  %16 = load i32, i32* %arrayidx13, align 4
  %xor14 = xor i32 %16, %13
  store i32 %xor14, i32* %arrayidx13, align 4
  %17 = load i32, i32* %j, align 4
  %18 = load i32, i32* %nb, align 4
  %19 = load i32, i32* %n.addr, align 4
  %mul15 = mul nsw i32 %18, %19
  %add16 = add nsw i32 %17, %mul15
  %idxprom17 = sext i32 %add16 to i64
  %arrayidx18 = getelementptr inbounds [120 x i32], [120 x i32]* getelementptr inbounds ([4 x [120 x i32]], [4 x [120 x i32]]* @word, i64 0, i64 2), i64 0, i64 %idxprom17
  %20 = load i32, i32* %arrayidx18, align 4
  %21 = load i32*, i32** %statemt.addr, align 8
  %22 = load i32, i32* %j, align 4
  %mul19 = mul nsw i32 %22, 4
  %add20 = add nsw i32 2, %mul19
  %idxprom21 = sext i32 %add20 to i64
  %arrayidx22 = getelementptr inbounds i32, i32* %21, i64 %idxprom21
  %23 = load i32, i32* %arrayidx22, align 4
  %xor23 = xor i32 %23, %20
  store i32 %xor23, i32* %arrayidx22, align 4
  %24 = load i32, i32* %j, align 4
  %25 = load i32, i32* %nb, align 4
  %26 = load i32, i32* %n.addr, align 4
  %mul24 = mul nsw i32 %25, %26
  %add25 = add nsw i32 %24, %mul24
  %idxprom26 = sext i32 %add25 to i64
  %arrayidx27 = getelementptr inbounds [120 x i32], [120 x i32]* getelementptr inbounds ([4 x [120 x i32]], [4 x [120 x i32]]* @word, i64 0, i64 3), i64 0, i64 %idxprom26
  %27 = load i32, i32* %arrayidx27, align 4
  %28 = load i32*, i32** %statemt.addr, align 8
  %29 = load i32, i32* %j, align 4
  %mul28 = mul nsw i32 %29, 4
  %add29 = add nsw i32 3, %mul28
  %idxprom30 = sext i32 %add29 to i64
  %arrayidx31 = getelementptr inbounds i32, i32* %28, i64 %idxprom30
  %30 = load i32, i32* %arrayidx31, align 4
  %xor32 = xor i32 %30, %27
  store i32 %xor32, i32* %arrayidx31, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %31 = load i32, i32* %j, align 4
  %inc = add nsw i32 %31, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret i32 0
}

; Function Attrs: noinline nounwind ssp uwtable
define void @ByteSub_ShiftRow(i32* %statemt, i32 %nb) #0 {
entry:
  %statemt.addr = alloca i32*, align 8
  %nb.addr = alloca i32, align 4
  %temp = alloca i32, align 4
  store i32* %statemt, i32** %statemt.addr, align 8
  store i32 %nb, i32* %nb.addr, align 4
  %0 = load i32, i32* %nb.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 4, label %sw.bb
    i32 6, label %sw.bb141
    i32 8, label %sw.bb358
  ]

sw.bb:                                            ; preds = %entry
  %1 = load i32*, i32** %statemt.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 1
  %2 = load i32, i32* %arrayidx, align 4
  %shr = ashr i32 %2, 4
  %idxprom = sext i32 %shr to i64
  %arrayidx1 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i64 0, i64 %idxprom
  %3 = load i32*, i32** %statemt.addr, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %3, i64 1
  %4 = load i32, i32* %arrayidx2, align 4
  %and = and i32 %4, 15
  %idxprom3 = sext i32 %and to i64
  %arrayidx4 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx1, i64 0, i64 %idxprom3
  %5 = load i32, i32* %arrayidx4, align 4
  store i32 %5, i32* %temp, align 4
  %6 = load i32*, i32** %statemt.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %6, i64 5
  %7 = load i32, i32* %arrayidx5, align 4
  %shr6 = ashr i32 %7, 4
  %idxprom7 = sext i32 %shr6 to i64
  %arrayidx8 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i64 0, i64 %idxprom7
  %8 = load i32*, i32** %statemt.addr, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %8, i64 5
  %9 = load i32, i32* %arrayidx9, align 4
  %and10 = and i32 %9, 15
  %idxprom11 = sext i32 %and10 to i64
  %arrayidx12 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx8, i64 0, i64 %idxprom11
  %10 = load i32, i32* %arrayidx12, align 4
  %11 = load i32*, i32** %statemt.addr, align 8
  %arrayidx13 = getelementptr inbounds i32, i32* %11, i64 1
  store i32 %10, i32* %arrayidx13, align 4
  %12 = load i32*, i32** %statemt.addr, align 8
  %arrayidx14 = getelementptr inbounds i32, i32* %12, i64 9
  %13 = load i32, i32* %arrayidx14, align 4
  %shr15 = ashr i32 %13, 4
  %idxprom16 = sext i32 %shr15 to i64
  %arrayidx17 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i64 0, i64 %idxprom16
  %14 = load i32*, i32** %statemt.addr, align 8
  %arrayidx18 = getelementptr inbounds i32, i32* %14, i64 9
  %15 = load i32, i32* %arrayidx18, align 4
  %and19 = and i32 %15, 15
  %idxprom20 = sext i32 %and19 to i64
  %arrayidx21 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx17, i64 0, i64 %idxprom20
  %16 = load i32, i32* %arrayidx21, align 4
  %17 = load i32*, i32** %statemt.addr, align 8
  %arrayidx22 = getelementptr inbounds i32, i32* %17, i64 5
  store i32 %16, i32* %arrayidx22, align 4
  %18 = load i32*, i32** %statemt.addr, align 8
  %arrayidx23 = getelementptr inbounds i32, i32* %18, i64 13
  %19 = load i32, i32* %arrayidx23, align 4
  %shr24 = ashr i32 %19, 4
  %idxprom25 = sext i32 %shr24 to i64
  %arrayidx26 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i64 0, i64 %idxprom25
  %20 = load i32*, i32** %statemt.addr, align 8
  %arrayidx27 = getelementptr inbounds i32, i32* %20, i64 13
  %21 = load i32, i32* %arrayidx27, align 4
  %and28 = and i32 %21, 15
  %idxprom29 = sext i32 %and28 to i64
  %arrayidx30 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx26, i64 0, i64 %idxprom29
  %22 = load i32, i32* %arrayidx30, align 4
  %23 = load i32*, i32** %statemt.addr, align 8
  %arrayidx31 = getelementptr inbounds i32, i32* %23, i64 9
  store i32 %22, i32* %arrayidx31, align 4
  %24 = load i32, i32* %temp, align 4
  %25 = load i32*, i32** %statemt.addr, align 8
  %arrayidx32 = getelementptr inbounds i32, i32* %25, i64 13
  store i32 %24, i32* %arrayidx32, align 4
  %26 = load i32*, i32** %statemt.addr, align 8
  %arrayidx33 = getelementptr inbounds i32, i32* %26, i64 2
  %27 = load i32, i32* %arrayidx33, align 4
  %shr34 = ashr i32 %27, 4
  %idxprom35 = sext i32 %shr34 to i64
  %arrayidx36 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i64 0, i64 %idxprom35
  %28 = load i32*, i32** %statemt.addr, align 8
  %arrayidx37 = getelementptr inbounds i32, i32* %28, i64 2
  %29 = load i32, i32* %arrayidx37, align 4
  %and38 = and i32 %29, 15
  %idxprom39 = sext i32 %and38 to i64
  %arrayidx40 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx36, i64 0, i64 %idxprom39
  %30 = load i32, i32* %arrayidx40, align 4
  store i32 %30, i32* %temp, align 4
  %31 = load i32*, i32** %statemt.addr, align 8
  %arrayidx41 = getelementptr inbounds i32, i32* %31, i64 10
  %32 = load i32, i32* %arrayidx41, align 4
  %shr42 = ashr i32 %32, 4
  %idxprom43 = sext i32 %shr42 to i64
  %arrayidx44 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i64 0, i64 %idxprom43
  %33 = load i32*, i32** %statemt.addr, align 8
  %arrayidx45 = getelementptr inbounds i32, i32* %33, i64 10
  %34 = load i32, i32* %arrayidx45, align 4
  %and46 = and i32 %34, 15
  %idxprom47 = sext i32 %and46 to i64
  %arrayidx48 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx44, i64 0, i64 %idxprom47
  %35 = load i32, i32* %arrayidx48, align 4
  %36 = load i32*, i32** %statemt.addr, align 8
  %arrayidx49 = getelementptr inbounds i32, i32* %36, i64 2
  store i32 %35, i32* %arrayidx49, align 4
  %37 = load i32, i32* %temp, align 4
  %38 = load i32*, i32** %statemt.addr, align 8
  %arrayidx50 = getelementptr inbounds i32, i32* %38, i64 10
  store i32 %37, i32* %arrayidx50, align 4
  %39 = load i32*, i32** %statemt.addr, align 8
  %arrayidx51 = getelementptr inbounds i32, i32* %39, i64 6
  %40 = load i32, i32* %arrayidx51, align 4
  %shr52 = ashr i32 %40, 4
  %idxprom53 = sext i32 %shr52 to i64
  %arrayidx54 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i64 0, i64 %idxprom53
  %41 = load i32*, i32** %statemt.addr, align 8
  %arrayidx55 = getelementptr inbounds i32, i32* %41, i64 6
  %42 = load i32, i32* %arrayidx55, align 4
  %and56 = and i32 %42, 15
  %idxprom57 = sext i32 %and56 to i64
  %arrayidx58 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx54, i64 0, i64 %idxprom57
  %43 = load i32, i32* %arrayidx58, align 4
  store i32 %43, i32* %temp, align 4
  %44 = load i32*, i32** %statemt.addr, align 8
  %arrayidx59 = getelementptr inbounds i32, i32* %44, i64 14
  %45 = load i32, i32* %arrayidx59, align 4
  %shr60 = ashr i32 %45, 4
  %idxprom61 = sext i32 %shr60 to i64
  %arrayidx62 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i64 0, i64 %idxprom61
  %46 = load i32*, i32** %statemt.addr, align 8
  %arrayidx63 = getelementptr inbounds i32, i32* %46, i64 14
  %47 = load i32, i32* %arrayidx63, align 4
  %and64 = and i32 %47, 15
  %idxprom65 = sext i32 %and64 to i64
  %arrayidx66 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx62, i64 0, i64 %idxprom65
  %48 = load i32, i32* %arrayidx66, align 4
  %49 = load i32*, i32** %statemt.addr, align 8
  %arrayidx67 = getelementptr inbounds i32, i32* %49, i64 6
  store i32 %48, i32* %arrayidx67, align 4
  %50 = load i32, i32* %temp, align 4
  %51 = load i32*, i32** %statemt.addr, align 8
  %arrayidx68 = getelementptr inbounds i32, i32* %51, i64 14
  store i32 %50, i32* %arrayidx68, align 4
  %52 = load i32*, i32** %statemt.addr, align 8
  %arrayidx69 = getelementptr inbounds i32, i32* %52, i64 3
  %53 = load i32, i32* %arrayidx69, align 4
  %shr70 = ashr i32 %53, 4
  %idxprom71 = sext i32 %shr70 to i64
  %arrayidx72 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i64 0, i64 %idxprom71
  %54 = load i32*, i32** %statemt.addr, align 8
  %arrayidx73 = getelementptr inbounds i32, i32* %54, i64 3
  %55 = load i32, i32* %arrayidx73, align 4
  %and74 = and i32 %55, 15
  %idxprom75 = sext i32 %and74 to i64
  %arrayidx76 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx72, i64 0, i64 %idxprom75
  %56 = load i32, i32* %arrayidx76, align 4
  store i32 %56, i32* %temp, align 4
  %57 = load i32*, i32** %statemt.addr, align 8
  %arrayidx77 = getelementptr inbounds i32, i32* %57, i64 15
  %58 = load i32, i32* %arrayidx77, align 4
  %shr78 = ashr i32 %58, 4
  %idxprom79 = sext i32 %shr78 to i64
  %arrayidx80 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i64 0, i64 %idxprom79
  %59 = load i32*, i32** %statemt.addr, align 8
  %arrayidx81 = getelementptr inbounds i32, i32* %59, i64 15
  %60 = load i32, i32* %arrayidx81, align 4
  %and82 = and i32 %60, 15
  %idxprom83 = sext i32 %and82 to i64
  %arrayidx84 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx80, i64 0, i64 %idxprom83
  %61 = load i32, i32* %arrayidx84, align 4
  %62 = load i32*, i32** %statemt.addr, align 8
  %arrayidx85 = getelementptr inbounds i32, i32* %62, i64 3
  store i32 %61, i32* %arrayidx85, align 4
  %63 = load i32*, i32** %statemt.addr, align 8
  %arrayidx86 = getelementptr inbounds i32, i32* %63, i64 11
  %64 = load i32, i32* %arrayidx86, align 4
  %shr87 = ashr i32 %64, 4
  %idxprom88 = sext i32 %shr87 to i64
  %arrayidx89 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i64 0, i64 %idxprom88
  %65 = load i32*, i32** %statemt.addr, align 8
  %arrayidx90 = getelementptr inbounds i32, i32* %65, i64 11
  %66 = load i32, i32* %arrayidx90, align 4
  %and91 = and i32 %66, 15
  %idxprom92 = sext i32 %and91 to i64
  %arrayidx93 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx89, i64 0, i64 %idxprom92
  %67 = load i32, i32* %arrayidx93, align 4
  %68 = load i32*, i32** %statemt.addr, align 8
  %arrayidx94 = getelementptr inbounds i32, i32* %68, i64 15
  store i32 %67, i32* %arrayidx94, align 4
  %69 = load i32*, i32** %statemt.addr, align 8
  %arrayidx95 = getelementptr inbounds i32, i32* %69, i64 7
  %70 = load i32, i32* %arrayidx95, align 4
  %shr96 = ashr i32 %70, 4
  %idxprom97 = sext i32 %shr96 to i64
  %arrayidx98 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i64 0, i64 %idxprom97
  %71 = load i32*, i32** %statemt.addr, align 8
  %arrayidx99 = getelementptr inbounds i32, i32* %71, i64 7
  %72 = load i32, i32* %arrayidx99, align 4
  %and100 = and i32 %72, 15
  %idxprom101 = sext i32 %and100 to i64
  %arrayidx102 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx98, i64 0, i64 %idxprom101
  %73 = load i32, i32* %arrayidx102, align 4
  %74 = load i32*, i32** %statemt.addr, align 8
  %arrayidx103 = getelementptr inbounds i32, i32* %74, i64 11
  store i32 %73, i32* %arrayidx103, align 4
  %75 = load i32, i32* %temp, align 4
  %76 = load i32*, i32** %statemt.addr, align 8
  %arrayidx104 = getelementptr inbounds i32, i32* %76, i64 7
  store i32 %75, i32* %arrayidx104, align 4
  %77 = load i32*, i32** %statemt.addr, align 8
  %arrayidx105 = getelementptr inbounds i32, i32* %77, i64 0
  %78 = load i32, i32* %arrayidx105, align 4
  %shr106 = ashr i32 %78, 4
  %idxprom107 = sext i32 %shr106 to i64
  %arrayidx108 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i64 0, i64 %idxprom107
  %79 = load i32*, i32** %statemt.addr, align 8
  %arrayidx109 = getelementptr inbounds i32, i32* %79, i64 0
  %80 = load i32, i32* %arrayidx109, align 4
  %and110 = and i32 %80, 15
  %idxprom111 = sext i32 %and110 to i64
  %arrayidx112 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx108, i64 0, i64 %idxprom111
  %81 = load i32, i32* %arrayidx112, align 4
  %82 = load i32*, i32** %statemt.addr, align 8
  %arrayidx113 = getelementptr inbounds i32, i32* %82, i64 0
  store i32 %81, i32* %arrayidx113, align 4
  %83 = load i32*, i32** %statemt.addr, align 8
  %arrayidx114 = getelementptr inbounds i32, i32* %83, i64 4
  %84 = load i32, i32* %arrayidx114, align 4
  %shr115 = ashr i32 %84, 4
  %idxprom116 = sext i32 %shr115 to i64
  %arrayidx117 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i64 0, i64 %idxprom116
  %85 = load i32*, i32** %statemt.addr, align 8
  %arrayidx118 = getelementptr inbounds i32, i32* %85, i64 4
  %86 = load i32, i32* %arrayidx118, align 4
  %and119 = and i32 %86, 15
  %idxprom120 = sext i32 %and119 to i64
  %arrayidx121 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx117, i64 0, i64 %idxprom120
  %87 = load i32, i32* %arrayidx121, align 4
  %88 = load i32*, i32** %statemt.addr, align 8
  %arrayidx122 = getelementptr inbounds i32, i32* %88, i64 4
  store i32 %87, i32* %arrayidx122, align 4
  %89 = load i32*, i32** %statemt.addr, align 8
  %arrayidx123 = getelementptr inbounds i32, i32* %89, i64 8
  %90 = load i32, i32* %arrayidx123, align 4
  %shr124 = ashr i32 %90, 4
  %idxprom125 = sext i32 %shr124 to i64
  %arrayidx126 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i64 0, i64 %idxprom125
  %91 = load i32*, i32** %statemt.addr, align 8
  %arrayidx127 = getelementptr inbounds i32, i32* %91, i64 8
  %92 = load i32, i32* %arrayidx127, align 4
  %and128 = and i32 %92, 15
  %idxprom129 = sext i32 %and128 to i64
  %arrayidx130 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx126, i64 0, i64 %idxprom129
  %93 = load i32, i32* %arrayidx130, align 4
  %94 = load i32*, i32** %statemt.addr, align 8
  %arrayidx131 = getelementptr inbounds i32, i32* %94, i64 8
  store i32 %93, i32* %arrayidx131, align 4
  %95 = load i32*, i32** %statemt.addr, align 8
  %arrayidx132 = getelementptr inbounds i32, i32* %95, i64 12
  %96 = load i32, i32* %arrayidx132, align 4
  %shr133 = ashr i32 %96, 4
  %idxprom134 = sext i32 %shr133 to i64
  %arrayidx135 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i64 0, i64 %idxprom134
  %97 = load i32*, i32** %statemt.addr, align 8
  %arrayidx136 = getelementptr inbounds i32, i32* %97, i64 12
  %98 = load i32, i32* %arrayidx136, align 4
  %and137 = and i32 %98, 15
  %idxprom138 = sext i32 %and137 to i64
  %arrayidx139 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx135, i64 0, i64 %idxprom138
  %99 = load i32, i32* %arrayidx139, align 4
  %100 = load i32*, i32** %statemt.addr, align 8
  %arrayidx140 = getelementptr inbounds i32, i32* %100, i64 12
  store i32 %99, i32* %arrayidx140, align 4
  br label %sw.epilog

sw.bb141:                                         ; preds = %entry
  %101 = load i32*, i32** %statemt.addr, align 8
  %arrayidx142 = getelementptr inbounds i32, i32* %101, i64 1
  %102 = load i32, i32* %arrayidx142, align 4
  %shr143 = ashr i32 %102, 4
  %idxprom144 = sext i32 %shr143 to i64
  %arrayidx145 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i64 0, i64 %idxprom144
  %103 = load i32*, i32** %statemt.addr, align 8
  %arrayidx146 = getelementptr inbounds i32, i32* %103, i64 1
  %104 = load i32, i32* %arrayidx146, align 4
  %and147 = and i32 %104, 15
  %idxprom148 = sext i32 %and147 to i64
  %arrayidx149 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx145, i64 0, i64 %idxprom148
  %105 = load i32, i32* %arrayidx149, align 4
  store i32 %105, i32* %temp, align 4
  %106 = load i32*, i32** %statemt.addr, align 8
  %arrayidx150 = getelementptr inbounds i32, i32* %106, i64 5
  %107 = load i32, i32* %arrayidx150, align 4
  %shr151 = ashr i32 %107, 4
  %idxprom152 = sext i32 %shr151 to i64
  %arrayidx153 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i64 0, i64 %idxprom152
  %108 = load i32*, i32** %statemt.addr, align 8
  %arrayidx154 = getelementptr inbounds i32, i32* %108, i64 5
  %109 = load i32, i32* %arrayidx154, align 4
  %and155 = and i32 %109, 15
  %idxprom156 = sext i32 %and155 to i64
  %arrayidx157 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx153, i64 0, i64 %idxprom156
  %110 = load i32, i32* %arrayidx157, align 4
  %111 = load i32*, i32** %statemt.addr, align 8
  %arrayidx158 = getelementptr inbounds i32, i32* %111, i64 1
  store i32 %110, i32* %arrayidx158, align 4
  %112 = load i32*, i32** %statemt.addr, align 8
  %arrayidx159 = getelementptr inbounds i32, i32* %112, i64 9
  %113 = load i32, i32* %arrayidx159, align 4
  %shr160 = ashr i32 %113, 4
  %idxprom161 = sext i32 %shr160 to i64
  %arrayidx162 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i64 0, i64 %idxprom161
  %114 = load i32*, i32** %statemt.addr, align 8
  %arrayidx163 = getelementptr inbounds i32, i32* %114, i64 9
  %115 = load i32, i32* %arrayidx163, align 4
  %and164 = and i32 %115, 15
  %idxprom165 = sext i32 %and164 to i64
  %arrayidx166 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx162, i64 0, i64 %idxprom165
  %116 = load i32, i32* %arrayidx166, align 4
  %117 = load i32*, i32** %statemt.addr, align 8
  %arrayidx167 = getelementptr inbounds i32, i32* %117, i64 5
  store i32 %116, i32* %arrayidx167, align 4
  %118 = load i32*, i32** %statemt.addr, align 8
  %arrayidx168 = getelementptr inbounds i32, i32* %118, i64 13
  %119 = load i32, i32* %arrayidx168, align 4
  %shr169 = ashr i32 %119, 4
  %idxprom170 = sext i32 %shr169 to i64
  %arrayidx171 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i64 0, i64 %idxprom170
  %120 = load i32*, i32** %statemt.addr, align 8
  %arrayidx172 = getelementptr inbounds i32, i32* %120, i64 13
  %121 = load i32, i32* %arrayidx172, align 4
  %and173 = and i32 %121, 15
  %idxprom174 = sext i32 %and173 to i64
  %arrayidx175 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx171, i64 0, i64 %idxprom174
  %122 = load i32, i32* %arrayidx175, align 4
  %123 = load i32*, i32** %statemt.addr, align 8
  %arrayidx176 = getelementptr inbounds i32, i32* %123, i64 9
  store i32 %122, i32* %arrayidx176, align 4
  %124 = load i32*, i32** %statemt.addr, align 8
  %arrayidx177 = getelementptr inbounds i32, i32* %124, i64 17
  %125 = load i32, i32* %arrayidx177, align 4
  %shr178 = ashr i32 %125, 4
  %idxprom179 = sext i32 %shr178 to i64
  %arrayidx180 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i64 0, i64 %idxprom179
  %126 = load i32*, i32** %statemt.addr, align 8
  %arrayidx181 = getelementptr inbounds i32, i32* %126, i64 17
  %127 = load i32, i32* %arrayidx181, align 4
  %and182 = and i32 %127, 15
  %idxprom183 = sext i32 %and182 to i64
  %arrayidx184 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx180, i64 0, i64 %idxprom183
  %128 = load i32, i32* %arrayidx184, align 4
  %129 = load i32*, i32** %statemt.addr, align 8
  %arrayidx185 = getelementptr inbounds i32, i32* %129, i64 13
  store i32 %128, i32* %arrayidx185, align 4
  %130 = load i32*, i32** %statemt.addr, align 8
  %arrayidx186 = getelementptr inbounds i32, i32* %130, i64 21
  %131 = load i32, i32* %arrayidx186, align 4
  %shr187 = ashr i32 %131, 4
  %idxprom188 = sext i32 %shr187 to i64
  %arrayidx189 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i64 0, i64 %idxprom188
  %132 = load i32*, i32** %statemt.addr, align 8
  %arrayidx190 = getelementptr inbounds i32, i32* %132, i64 21
  %133 = load i32, i32* %arrayidx190, align 4
  %and191 = and i32 %133, 15
  %idxprom192 = sext i32 %and191 to i64
  %arrayidx193 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx189, i64 0, i64 %idxprom192
  %134 = load i32, i32* %arrayidx193, align 4
  %135 = load i32*, i32** %statemt.addr, align 8
  %arrayidx194 = getelementptr inbounds i32, i32* %135, i64 17
  store i32 %134, i32* %arrayidx194, align 4
  %136 = load i32, i32* %temp, align 4
  %137 = load i32*, i32** %statemt.addr, align 8
  %arrayidx195 = getelementptr inbounds i32, i32* %137, i64 21
  store i32 %136, i32* %arrayidx195, align 4
  %138 = load i32*, i32** %statemt.addr, align 8
  %arrayidx196 = getelementptr inbounds i32, i32* %138, i64 2
  %139 = load i32, i32* %arrayidx196, align 4
  %shr197 = ashr i32 %139, 4
  %idxprom198 = sext i32 %shr197 to i64
  %arrayidx199 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i64 0, i64 %idxprom198
  %140 = load i32*, i32** %statemt.addr, align 8
  %arrayidx200 = getelementptr inbounds i32, i32* %140, i64 2
  %141 = load i32, i32* %arrayidx200, align 4
  %and201 = and i32 %141, 15
  %idxprom202 = sext i32 %and201 to i64
  %arrayidx203 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx199, i64 0, i64 %idxprom202
  %142 = load i32, i32* %arrayidx203, align 4
  store i32 %142, i32* %temp, align 4
  %143 = load i32*, i32** %statemt.addr, align 8
  %arrayidx204 = getelementptr inbounds i32, i32* %143, i64 10
  %144 = load i32, i32* %arrayidx204, align 4
  %shr205 = ashr i32 %144, 4
  %idxprom206 = sext i32 %shr205 to i64
  %arrayidx207 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i64 0, i64 %idxprom206
  %145 = load i32*, i32** %statemt.addr, align 8
  %arrayidx208 = getelementptr inbounds i32, i32* %145, i64 10
  %146 = load i32, i32* %arrayidx208, align 4
  %and209 = and i32 %146, 15
  %idxprom210 = sext i32 %and209 to i64
  %arrayidx211 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx207, i64 0, i64 %idxprom210
  %147 = load i32, i32* %arrayidx211, align 4
  %148 = load i32*, i32** %statemt.addr, align 8
  %arrayidx212 = getelementptr inbounds i32, i32* %148, i64 2
  store i32 %147, i32* %arrayidx212, align 4
  %149 = load i32*, i32** %statemt.addr, align 8
  %arrayidx213 = getelementptr inbounds i32, i32* %149, i64 18
  %150 = load i32, i32* %arrayidx213, align 4
  %shr214 = ashr i32 %150, 4
  %idxprom215 = sext i32 %shr214 to i64
  %arrayidx216 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i64 0, i64 %idxprom215
  %151 = load i32*, i32** %statemt.addr, align 8
  %arrayidx217 = getelementptr inbounds i32, i32* %151, i64 18
  %152 = load i32, i32* %arrayidx217, align 4
  %and218 = and i32 %152, 15
  %idxprom219 = sext i32 %and218 to i64
  %arrayidx220 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx216, i64 0, i64 %idxprom219
  %153 = load i32, i32* %arrayidx220, align 4
  %154 = load i32*, i32** %statemt.addr, align 8
  %arrayidx221 = getelementptr inbounds i32, i32* %154, i64 10
  store i32 %153, i32* %arrayidx221, align 4
  %155 = load i32, i32* %temp, align 4
  %156 = load i32*, i32** %statemt.addr, align 8
  %arrayidx222 = getelementptr inbounds i32, i32* %156, i64 18
  store i32 %155, i32* %arrayidx222, align 4
  %157 = load i32*, i32** %statemt.addr, align 8
  %arrayidx223 = getelementptr inbounds i32, i32* %157, i64 6
  %158 = load i32, i32* %arrayidx223, align 4
  %shr224 = ashr i32 %158, 4
  %idxprom225 = sext i32 %shr224 to i64
  %arrayidx226 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i64 0, i64 %idxprom225
  %159 = load i32*, i32** %statemt.addr, align 8
  %arrayidx227 = getelementptr inbounds i32, i32* %159, i64 6
  %160 = load i32, i32* %arrayidx227, align 4
  %and228 = and i32 %160, 15
  %idxprom229 = sext i32 %and228 to i64
  %arrayidx230 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx226, i64 0, i64 %idxprom229
  %161 = load i32, i32* %arrayidx230, align 4
  store i32 %161, i32* %temp, align 4
  %162 = load i32*, i32** %statemt.addr, align 8
  %arrayidx231 = getelementptr inbounds i32, i32* %162, i64 14
  %163 = load i32, i32* %arrayidx231, align 4
  %shr232 = ashr i32 %163, 4
  %idxprom233 = sext i32 %shr232 to i64
  %arrayidx234 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i64 0, i64 %idxprom233
  %164 = load i32*, i32** %statemt.addr, align 8
  %arrayidx235 = getelementptr inbounds i32, i32* %164, i64 14
  %165 = load i32, i32* %arrayidx235, align 4
  %and236 = and i32 %165, 15
  %idxprom237 = sext i32 %and236 to i64
  %arrayidx238 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx234, i64 0, i64 %idxprom237
  %166 = load i32, i32* %arrayidx238, align 4
  %167 = load i32*, i32** %statemt.addr, align 8
  %arrayidx239 = getelementptr inbounds i32, i32* %167, i64 6
  store i32 %166, i32* %arrayidx239, align 4
  %168 = load i32*, i32** %statemt.addr, align 8
  %arrayidx240 = getelementptr inbounds i32, i32* %168, i64 22
  %169 = load i32, i32* %arrayidx240, align 4
  %shr241 = ashr i32 %169, 4
  %idxprom242 = sext i32 %shr241 to i64
  %arrayidx243 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i64 0, i64 %idxprom242
  %170 = load i32*, i32** %statemt.addr, align 8
  %arrayidx244 = getelementptr inbounds i32, i32* %170, i64 22
  %171 = load i32, i32* %arrayidx244, align 4
  %and245 = and i32 %171, 15
  %idxprom246 = sext i32 %and245 to i64
  %arrayidx247 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx243, i64 0, i64 %idxprom246
  %172 = load i32, i32* %arrayidx247, align 4
  %173 = load i32*, i32** %statemt.addr, align 8
  %arrayidx248 = getelementptr inbounds i32, i32* %173, i64 14
  store i32 %172, i32* %arrayidx248, align 4
  %174 = load i32, i32* %temp, align 4
  %175 = load i32*, i32** %statemt.addr, align 8
  %arrayidx249 = getelementptr inbounds i32, i32* %175, i64 22
  store i32 %174, i32* %arrayidx249, align 4
  %176 = load i32*, i32** %statemt.addr, align 8
  %arrayidx250 = getelementptr inbounds i32, i32* %176, i64 3
  %177 = load i32, i32* %arrayidx250, align 4
  %shr251 = ashr i32 %177, 4
  %idxprom252 = sext i32 %shr251 to i64
  %arrayidx253 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i64 0, i64 %idxprom252
  %178 = load i32*, i32** %statemt.addr, align 8
  %arrayidx254 = getelementptr inbounds i32, i32* %178, i64 3
  %179 = load i32, i32* %arrayidx254, align 4
  %and255 = and i32 %179, 15
  %idxprom256 = sext i32 %and255 to i64
  %arrayidx257 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx253, i64 0, i64 %idxprom256
  %180 = load i32, i32* %arrayidx257, align 4
  store i32 %180, i32* %temp, align 4
  %181 = load i32*, i32** %statemt.addr, align 8
  %arrayidx258 = getelementptr inbounds i32, i32* %181, i64 15
  %182 = load i32, i32* %arrayidx258, align 4
  %shr259 = ashr i32 %182, 4
  %idxprom260 = sext i32 %shr259 to i64
  %arrayidx261 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i64 0, i64 %idxprom260
  %183 = load i32*, i32** %statemt.addr, align 8
  %arrayidx262 = getelementptr inbounds i32, i32* %183, i64 15
  %184 = load i32, i32* %arrayidx262, align 4
  %and263 = and i32 %184, 15
  %idxprom264 = sext i32 %and263 to i64
  %arrayidx265 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx261, i64 0, i64 %idxprom264
  %185 = load i32, i32* %arrayidx265, align 4
  %186 = load i32*, i32** %statemt.addr, align 8
  %arrayidx266 = getelementptr inbounds i32, i32* %186, i64 3
  store i32 %185, i32* %arrayidx266, align 4
  %187 = load i32, i32* %temp, align 4
  %188 = load i32*, i32** %statemt.addr, align 8
  %arrayidx267 = getelementptr inbounds i32, i32* %188, i64 15
  store i32 %187, i32* %arrayidx267, align 4
  %189 = load i32*, i32** %statemt.addr, align 8
  %arrayidx268 = getelementptr inbounds i32, i32* %189, i64 7
  %190 = load i32, i32* %arrayidx268, align 4
  %shr269 = ashr i32 %190, 4
  %idxprom270 = sext i32 %shr269 to i64
  %arrayidx271 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i64 0, i64 %idxprom270
  %191 = load i32*, i32** %statemt.addr, align 8
  %arrayidx272 = getelementptr inbounds i32, i32* %191, i64 7
  %192 = load i32, i32* %arrayidx272, align 4
  %and273 = and i32 %192, 15
  %idxprom274 = sext i32 %and273 to i64
  %arrayidx275 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx271, i64 0, i64 %idxprom274
  %193 = load i32, i32* %arrayidx275, align 4
  store i32 %193, i32* %temp, align 4
  %194 = load i32*, i32** %statemt.addr, align 8
  %arrayidx276 = getelementptr inbounds i32, i32* %194, i64 19
  %195 = load i32, i32* %arrayidx276, align 4
  %shr277 = ashr i32 %195, 4
  %idxprom278 = sext i32 %shr277 to i64
  %arrayidx279 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i64 0, i64 %idxprom278
  %196 = load i32*, i32** %statemt.addr, align 8
  %arrayidx280 = getelementptr inbounds i32, i32* %196, i64 19
  %197 = load i32, i32* %arrayidx280, align 4
  %and281 = and i32 %197, 15
  %idxprom282 = sext i32 %and281 to i64
  %arrayidx283 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx279, i64 0, i64 %idxprom282
  %198 = load i32, i32* %arrayidx283, align 4
  %199 = load i32*, i32** %statemt.addr, align 8
  %arrayidx284 = getelementptr inbounds i32, i32* %199, i64 7
  store i32 %198, i32* %arrayidx284, align 4
  %200 = load i32, i32* %temp, align 4
  %201 = load i32*, i32** %statemt.addr, align 8
  %arrayidx285 = getelementptr inbounds i32, i32* %201, i64 19
  store i32 %200, i32* %arrayidx285, align 4
  %202 = load i32*, i32** %statemt.addr, align 8
  %arrayidx286 = getelementptr inbounds i32, i32* %202, i64 11
  %203 = load i32, i32* %arrayidx286, align 4
  %shr287 = ashr i32 %203, 4
  %idxprom288 = sext i32 %shr287 to i64
  %arrayidx289 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i64 0, i64 %idxprom288
  %204 = load i32*, i32** %statemt.addr, align 8
  %arrayidx290 = getelementptr inbounds i32, i32* %204, i64 11
  %205 = load i32, i32* %arrayidx290, align 4
  %and291 = and i32 %205, 15
  %idxprom292 = sext i32 %and291 to i64
  %arrayidx293 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx289, i64 0, i64 %idxprom292
  %206 = load i32, i32* %arrayidx293, align 4
  store i32 %206, i32* %temp, align 4
  %207 = load i32*, i32** %statemt.addr, align 8
  %arrayidx294 = getelementptr inbounds i32, i32* %207, i64 23
  %208 = load i32, i32* %arrayidx294, align 4
  %shr295 = ashr i32 %208, 4
  %idxprom296 = sext i32 %shr295 to i64
  %arrayidx297 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i64 0, i64 %idxprom296
  %209 = load i32*, i32** %statemt.addr, align 8
  %arrayidx298 = getelementptr inbounds i32, i32* %209, i64 23
  %210 = load i32, i32* %arrayidx298, align 4
  %and299 = and i32 %210, 15
  %idxprom300 = sext i32 %and299 to i64
  %arrayidx301 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx297, i64 0, i64 %idxprom300
  %211 = load i32, i32* %arrayidx301, align 4
  %212 = load i32*, i32** %statemt.addr, align 8
  %arrayidx302 = getelementptr inbounds i32, i32* %212, i64 11
  store i32 %211, i32* %arrayidx302, align 4
  %213 = load i32, i32* %temp, align 4
  %214 = load i32*, i32** %statemt.addr, align 8
  %arrayidx303 = getelementptr inbounds i32, i32* %214, i64 23
  store i32 %213, i32* %arrayidx303, align 4
  %215 = load i32*, i32** %statemt.addr, align 8
  %arrayidx304 = getelementptr inbounds i32, i32* %215, i64 0
  %216 = load i32, i32* %arrayidx304, align 4
  %shr305 = ashr i32 %216, 4
  %idxprom306 = sext i32 %shr305 to i64
  %arrayidx307 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i64 0, i64 %idxprom306
  %217 = load i32*, i32** %statemt.addr, align 8
  %arrayidx308 = getelementptr inbounds i32, i32* %217, i64 0
  %218 = load i32, i32* %arrayidx308, align 4
  %and309 = and i32 %218, 15
  %idxprom310 = sext i32 %and309 to i64
  %arrayidx311 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx307, i64 0, i64 %idxprom310
  %219 = load i32, i32* %arrayidx311, align 4
  %220 = load i32*, i32** %statemt.addr, align 8
  %arrayidx312 = getelementptr inbounds i32, i32* %220, i64 0
  store i32 %219, i32* %arrayidx312, align 4
  %221 = load i32*, i32** %statemt.addr, align 8
  %arrayidx313 = getelementptr inbounds i32, i32* %221, i64 4
  %222 = load i32, i32* %arrayidx313, align 4
  %shr314 = ashr i32 %222, 4
  %idxprom315 = sext i32 %shr314 to i64
  %arrayidx316 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i64 0, i64 %idxprom315
  %223 = load i32*, i32** %statemt.addr, align 8
  %arrayidx317 = getelementptr inbounds i32, i32* %223, i64 4
  %224 = load i32, i32* %arrayidx317, align 4
  %and318 = and i32 %224, 15
  %idxprom319 = sext i32 %and318 to i64
  %arrayidx320 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx316, i64 0, i64 %idxprom319
  %225 = load i32, i32* %arrayidx320, align 4
  %226 = load i32*, i32** %statemt.addr, align 8
  %arrayidx321 = getelementptr inbounds i32, i32* %226, i64 4
  store i32 %225, i32* %arrayidx321, align 4
  %227 = load i32*, i32** %statemt.addr, align 8
  %arrayidx322 = getelementptr inbounds i32, i32* %227, i64 8
  %228 = load i32, i32* %arrayidx322, align 4
  %shr323 = ashr i32 %228, 4
  %idxprom324 = sext i32 %shr323 to i64
  %arrayidx325 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i64 0, i64 %idxprom324
  %229 = load i32*, i32** %statemt.addr, align 8
  %arrayidx326 = getelementptr inbounds i32, i32* %229, i64 8
  %230 = load i32, i32* %arrayidx326, align 4
  %and327 = and i32 %230, 15
  %idxprom328 = sext i32 %and327 to i64
  %arrayidx329 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx325, i64 0, i64 %idxprom328
  %231 = load i32, i32* %arrayidx329, align 4
  %232 = load i32*, i32** %statemt.addr, align 8
  %arrayidx330 = getelementptr inbounds i32, i32* %232, i64 8
  store i32 %231, i32* %arrayidx330, align 4
  %233 = load i32*, i32** %statemt.addr, align 8
  %arrayidx331 = getelementptr inbounds i32, i32* %233, i64 12
  %234 = load i32, i32* %arrayidx331, align 4
  %shr332 = ashr i32 %234, 4
  %idxprom333 = sext i32 %shr332 to i64
  %arrayidx334 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i64 0, i64 %idxprom333
  %235 = load i32*, i32** %statemt.addr, align 8
  %arrayidx335 = getelementptr inbounds i32, i32* %235, i64 12
  %236 = load i32, i32* %arrayidx335, align 4
  %and336 = and i32 %236, 15
  %idxprom337 = sext i32 %and336 to i64
  %arrayidx338 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx334, i64 0, i64 %idxprom337
  %237 = load i32, i32* %arrayidx338, align 4
  %238 = load i32*, i32** %statemt.addr, align 8
  %arrayidx339 = getelementptr inbounds i32, i32* %238, i64 12
  store i32 %237, i32* %arrayidx339, align 4
  %239 = load i32*, i32** %statemt.addr, align 8
  %arrayidx340 = getelementptr inbounds i32, i32* %239, i64 16
  %240 = load i32, i32* %arrayidx340, align 4
  %shr341 = ashr i32 %240, 4
  %idxprom342 = sext i32 %shr341 to i64
  %arrayidx343 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i64 0, i64 %idxprom342
  %241 = load i32*, i32** %statemt.addr, align 8
  %arrayidx344 = getelementptr inbounds i32, i32* %241, i64 16
  %242 = load i32, i32* %arrayidx344, align 4
  %and345 = and i32 %242, 15
  %idxprom346 = sext i32 %and345 to i64
  %arrayidx347 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx343, i64 0, i64 %idxprom346
  %243 = load i32, i32* %arrayidx347, align 4
  %244 = load i32*, i32** %statemt.addr, align 8
  %arrayidx348 = getelementptr inbounds i32, i32* %244, i64 16
  store i32 %243, i32* %arrayidx348, align 4
  %245 = load i32*, i32** %statemt.addr, align 8
  %arrayidx349 = getelementptr inbounds i32, i32* %245, i64 20
  %246 = load i32, i32* %arrayidx349, align 4
  %shr350 = ashr i32 %246, 4
  %idxprom351 = sext i32 %shr350 to i64
  %arrayidx352 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i64 0, i64 %idxprom351
  %247 = load i32*, i32** %statemt.addr, align 8
  %arrayidx353 = getelementptr inbounds i32, i32* %247, i64 20
  %248 = load i32, i32* %arrayidx353, align 4
  %and354 = and i32 %248, 15
  %idxprom355 = sext i32 %and354 to i64
  %arrayidx356 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx352, i64 0, i64 %idxprom355
  %249 = load i32, i32* %arrayidx356, align 4
  %250 = load i32*, i32** %statemt.addr, align 8
  %arrayidx357 = getelementptr inbounds i32, i32* %250, i64 20
  store i32 %249, i32* %arrayidx357, align 4
  br label %sw.epilog

sw.bb358:                                         ; preds = %entry
  %251 = load i32*, i32** %statemt.addr, align 8
  %arrayidx359 = getelementptr inbounds i32, i32* %251, i64 1
  %252 = load i32, i32* %arrayidx359, align 4
  %shr360 = ashr i32 %252, 4
  %idxprom361 = sext i32 %shr360 to i64
  %arrayidx362 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i64 0, i64 %idxprom361
  %253 = load i32*, i32** %statemt.addr, align 8
  %arrayidx363 = getelementptr inbounds i32, i32* %253, i64 1
  %254 = load i32, i32* %arrayidx363, align 4
  %and364 = and i32 %254, 15
  %idxprom365 = sext i32 %and364 to i64
  %arrayidx366 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx362, i64 0, i64 %idxprom365
  %255 = load i32, i32* %arrayidx366, align 4
  store i32 %255, i32* %temp, align 4
  %256 = load i32*, i32** %statemt.addr, align 8
  %arrayidx367 = getelementptr inbounds i32, i32* %256, i64 5
  %257 = load i32, i32* %arrayidx367, align 4
  %shr368 = ashr i32 %257, 4
  %idxprom369 = sext i32 %shr368 to i64
  %arrayidx370 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i64 0, i64 %idxprom369
  %258 = load i32*, i32** %statemt.addr, align 8
  %arrayidx371 = getelementptr inbounds i32, i32* %258, i64 5
  %259 = load i32, i32* %arrayidx371, align 4
  %and372 = and i32 %259, 15
  %idxprom373 = sext i32 %and372 to i64
  %arrayidx374 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx370, i64 0, i64 %idxprom373
  %260 = load i32, i32* %arrayidx374, align 4
  %261 = load i32*, i32** %statemt.addr, align 8
  %arrayidx375 = getelementptr inbounds i32, i32* %261, i64 1
  store i32 %260, i32* %arrayidx375, align 4
  %262 = load i32*, i32** %statemt.addr, align 8
  %arrayidx376 = getelementptr inbounds i32, i32* %262, i64 9
  %263 = load i32, i32* %arrayidx376, align 4
  %shr377 = ashr i32 %263, 4
  %idxprom378 = sext i32 %shr377 to i64
  %arrayidx379 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i64 0, i64 %idxprom378
  %264 = load i32*, i32** %statemt.addr, align 8
  %arrayidx380 = getelementptr inbounds i32, i32* %264, i64 9
  %265 = load i32, i32* %arrayidx380, align 4
  %and381 = and i32 %265, 15
  %idxprom382 = sext i32 %and381 to i64
  %arrayidx383 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx379, i64 0, i64 %idxprom382
  %266 = load i32, i32* %arrayidx383, align 4
  %267 = load i32*, i32** %statemt.addr, align 8
  %arrayidx384 = getelementptr inbounds i32, i32* %267, i64 5
  store i32 %266, i32* %arrayidx384, align 4
  %268 = load i32*, i32** %statemt.addr, align 8
  %arrayidx385 = getelementptr inbounds i32, i32* %268, i64 13
  %269 = load i32, i32* %arrayidx385, align 4
  %shr386 = ashr i32 %269, 4
  %idxprom387 = sext i32 %shr386 to i64
  %arrayidx388 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i64 0, i64 %idxprom387
  %270 = load i32*, i32** %statemt.addr, align 8
  %arrayidx389 = getelementptr inbounds i32, i32* %270, i64 13
  %271 = load i32, i32* %arrayidx389, align 4
  %and390 = and i32 %271, 15
  %idxprom391 = sext i32 %and390 to i64
  %arrayidx392 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx388, i64 0, i64 %idxprom391
  %272 = load i32, i32* %arrayidx392, align 4
  %273 = load i32*, i32** %statemt.addr, align 8
  %arrayidx393 = getelementptr inbounds i32, i32* %273, i64 9
  store i32 %272, i32* %arrayidx393, align 4
  %274 = load i32*, i32** %statemt.addr, align 8
  %arrayidx394 = getelementptr inbounds i32, i32* %274, i64 17
  %275 = load i32, i32* %arrayidx394, align 4
  %shr395 = ashr i32 %275, 4
  %idxprom396 = sext i32 %shr395 to i64
  %arrayidx397 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i64 0, i64 %idxprom396
  %276 = load i32*, i32** %statemt.addr, align 8
  %arrayidx398 = getelementptr inbounds i32, i32* %276, i64 17
  %277 = load i32, i32* %arrayidx398, align 4
  %and399 = and i32 %277, 15
  %idxprom400 = sext i32 %and399 to i64
  %arrayidx401 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx397, i64 0, i64 %idxprom400
  %278 = load i32, i32* %arrayidx401, align 4
  %279 = load i32*, i32** %statemt.addr, align 8
  %arrayidx402 = getelementptr inbounds i32, i32* %279, i64 13
  store i32 %278, i32* %arrayidx402, align 4
  %280 = load i32*, i32** %statemt.addr, align 8
  %arrayidx403 = getelementptr inbounds i32, i32* %280, i64 21
  %281 = load i32, i32* %arrayidx403, align 4
  %shr404 = ashr i32 %281, 4
  %idxprom405 = sext i32 %shr404 to i64
  %arrayidx406 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i64 0, i64 %idxprom405
  %282 = load i32*, i32** %statemt.addr, align 8
  %arrayidx407 = getelementptr inbounds i32, i32* %282, i64 21
  %283 = load i32, i32* %arrayidx407, align 4
  %and408 = and i32 %283, 15
  %idxprom409 = sext i32 %and408 to i64
  %arrayidx410 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx406, i64 0, i64 %idxprom409
  %284 = load i32, i32* %arrayidx410, align 4
  %285 = load i32*, i32** %statemt.addr, align 8
  %arrayidx411 = getelementptr inbounds i32, i32* %285, i64 17
  store i32 %284, i32* %arrayidx411, align 4
  %286 = load i32*, i32** %statemt.addr, align 8
  %arrayidx412 = getelementptr inbounds i32, i32* %286, i64 25
  %287 = load i32, i32* %arrayidx412, align 4
  %shr413 = ashr i32 %287, 4
  %idxprom414 = sext i32 %shr413 to i64
  %arrayidx415 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i64 0, i64 %idxprom414
  %288 = load i32*, i32** %statemt.addr, align 8
  %arrayidx416 = getelementptr inbounds i32, i32* %288, i64 25
  %289 = load i32, i32* %arrayidx416, align 4
  %and417 = and i32 %289, 15
  %idxprom418 = sext i32 %and417 to i64
  %arrayidx419 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx415, i64 0, i64 %idxprom418
  %290 = load i32, i32* %arrayidx419, align 4
  %291 = load i32*, i32** %statemt.addr, align 8
  %arrayidx420 = getelementptr inbounds i32, i32* %291, i64 21
  store i32 %290, i32* %arrayidx420, align 4
  %292 = load i32*, i32** %statemt.addr, align 8
  %arrayidx421 = getelementptr inbounds i32, i32* %292, i64 29
  %293 = load i32, i32* %arrayidx421, align 4
  %shr422 = ashr i32 %293, 4
  %idxprom423 = sext i32 %shr422 to i64
  %arrayidx424 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i64 0, i64 %idxprom423
  %294 = load i32*, i32** %statemt.addr, align 8
  %arrayidx425 = getelementptr inbounds i32, i32* %294, i64 29
  %295 = load i32, i32* %arrayidx425, align 4
  %and426 = and i32 %295, 15
  %idxprom427 = sext i32 %and426 to i64
  %arrayidx428 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx424, i64 0, i64 %idxprom427
  %296 = load i32, i32* %arrayidx428, align 4
  %297 = load i32*, i32** %statemt.addr, align 8
  %arrayidx429 = getelementptr inbounds i32, i32* %297, i64 25
  store i32 %296, i32* %arrayidx429, align 4
  %298 = load i32, i32* %temp, align 4
  %299 = load i32*, i32** %statemt.addr, align 8
  %arrayidx430 = getelementptr inbounds i32, i32* %299, i64 29
  store i32 %298, i32* %arrayidx430, align 4
  %300 = load i32*, i32** %statemt.addr, align 8
  %arrayidx431 = getelementptr inbounds i32, i32* %300, i64 2
  %301 = load i32, i32* %arrayidx431, align 4
  %shr432 = ashr i32 %301, 4
  %idxprom433 = sext i32 %shr432 to i64
  %arrayidx434 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i64 0, i64 %idxprom433
  %302 = load i32*, i32** %statemt.addr, align 8
  %arrayidx435 = getelementptr inbounds i32, i32* %302, i64 2
  %303 = load i32, i32* %arrayidx435, align 4
  %and436 = and i32 %303, 15
  %idxprom437 = sext i32 %and436 to i64
  %arrayidx438 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx434, i64 0, i64 %idxprom437
  %304 = load i32, i32* %arrayidx438, align 4
  store i32 %304, i32* %temp, align 4
  %305 = load i32*, i32** %statemt.addr, align 8
  %arrayidx439 = getelementptr inbounds i32, i32* %305, i64 14
  %306 = load i32, i32* %arrayidx439, align 4
  %shr440 = ashr i32 %306, 4
  %idxprom441 = sext i32 %shr440 to i64
  %arrayidx442 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i64 0, i64 %idxprom441
  %307 = load i32*, i32** %statemt.addr, align 8
  %arrayidx443 = getelementptr inbounds i32, i32* %307, i64 14
  %308 = load i32, i32* %arrayidx443, align 4
  %and444 = and i32 %308, 15
  %idxprom445 = sext i32 %and444 to i64
  %arrayidx446 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx442, i64 0, i64 %idxprom445
  %309 = load i32, i32* %arrayidx446, align 4
  %310 = load i32*, i32** %statemt.addr, align 8
  %arrayidx447 = getelementptr inbounds i32, i32* %310, i64 2
  store i32 %309, i32* %arrayidx447, align 4
  %311 = load i32*, i32** %statemt.addr, align 8
  %arrayidx448 = getelementptr inbounds i32, i32* %311, i64 26
  %312 = load i32, i32* %arrayidx448, align 4
  %shr449 = ashr i32 %312, 4
  %idxprom450 = sext i32 %shr449 to i64
  %arrayidx451 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i64 0, i64 %idxprom450
  %313 = load i32*, i32** %statemt.addr, align 8
  %arrayidx452 = getelementptr inbounds i32, i32* %313, i64 26
  %314 = load i32, i32* %arrayidx452, align 4
  %and453 = and i32 %314, 15
  %idxprom454 = sext i32 %and453 to i64
  %arrayidx455 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx451, i64 0, i64 %idxprom454
  %315 = load i32, i32* %arrayidx455, align 4
  %316 = load i32*, i32** %statemt.addr, align 8
  %arrayidx456 = getelementptr inbounds i32, i32* %316, i64 14
  store i32 %315, i32* %arrayidx456, align 4
  %317 = load i32*, i32** %statemt.addr, align 8
  %arrayidx457 = getelementptr inbounds i32, i32* %317, i64 6
  %318 = load i32, i32* %arrayidx457, align 4
  %shr458 = ashr i32 %318, 4
  %idxprom459 = sext i32 %shr458 to i64
  %arrayidx460 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i64 0, i64 %idxprom459
  %319 = load i32*, i32** %statemt.addr, align 8
  %arrayidx461 = getelementptr inbounds i32, i32* %319, i64 6
  %320 = load i32, i32* %arrayidx461, align 4
  %and462 = and i32 %320, 15
  %idxprom463 = sext i32 %and462 to i64
  %arrayidx464 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx460, i64 0, i64 %idxprom463
  %321 = load i32, i32* %arrayidx464, align 4
  %322 = load i32*, i32** %statemt.addr, align 8
  %arrayidx465 = getelementptr inbounds i32, i32* %322, i64 26
  store i32 %321, i32* %arrayidx465, align 4
  %323 = load i32*, i32** %statemt.addr, align 8
  %arrayidx466 = getelementptr inbounds i32, i32* %323, i64 18
  %324 = load i32, i32* %arrayidx466, align 4
  %shr467 = ashr i32 %324, 4
  %idxprom468 = sext i32 %shr467 to i64
  %arrayidx469 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i64 0, i64 %idxprom468
  %325 = load i32*, i32** %statemt.addr, align 8
  %arrayidx470 = getelementptr inbounds i32, i32* %325, i64 18
  %326 = load i32, i32* %arrayidx470, align 4
  %and471 = and i32 %326, 15
  %idxprom472 = sext i32 %and471 to i64
  %arrayidx473 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx469, i64 0, i64 %idxprom472
  %327 = load i32, i32* %arrayidx473, align 4
  %328 = load i32*, i32** %statemt.addr, align 8
  %arrayidx474 = getelementptr inbounds i32, i32* %328, i64 6
  store i32 %327, i32* %arrayidx474, align 4
  %329 = load i32*, i32** %statemt.addr, align 8
  %arrayidx475 = getelementptr inbounds i32, i32* %329, i64 30
  %330 = load i32, i32* %arrayidx475, align 4
  %shr476 = ashr i32 %330, 4
  %idxprom477 = sext i32 %shr476 to i64
  %arrayidx478 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i64 0, i64 %idxprom477
  %331 = load i32*, i32** %statemt.addr, align 8
  %arrayidx479 = getelementptr inbounds i32, i32* %331, i64 30
  %332 = load i32, i32* %arrayidx479, align 4
  %and480 = and i32 %332, 15
  %idxprom481 = sext i32 %and480 to i64
  %arrayidx482 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx478, i64 0, i64 %idxprom481
  %333 = load i32, i32* %arrayidx482, align 4
  %334 = load i32*, i32** %statemt.addr, align 8
  %arrayidx483 = getelementptr inbounds i32, i32* %334, i64 18
  store i32 %333, i32* %arrayidx483, align 4
  %335 = load i32*, i32** %statemt.addr, align 8
  %arrayidx484 = getelementptr inbounds i32, i32* %335, i64 10
  %336 = load i32, i32* %arrayidx484, align 4
  %shr485 = ashr i32 %336, 4
  %idxprom486 = sext i32 %shr485 to i64
  %arrayidx487 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i64 0, i64 %idxprom486
  %337 = load i32*, i32** %statemt.addr, align 8
  %arrayidx488 = getelementptr inbounds i32, i32* %337, i64 10
  %338 = load i32, i32* %arrayidx488, align 4
  %and489 = and i32 %338, 15
  %idxprom490 = sext i32 %and489 to i64
  %arrayidx491 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx487, i64 0, i64 %idxprom490
  %339 = load i32, i32* %arrayidx491, align 4
  %340 = load i32*, i32** %statemt.addr, align 8
  %arrayidx492 = getelementptr inbounds i32, i32* %340, i64 30
  store i32 %339, i32* %arrayidx492, align 4
  %341 = load i32*, i32** %statemt.addr, align 8
  %arrayidx493 = getelementptr inbounds i32, i32* %341, i64 22
  %342 = load i32, i32* %arrayidx493, align 4
  %shr494 = ashr i32 %342, 4
  %idxprom495 = sext i32 %shr494 to i64
  %arrayidx496 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i64 0, i64 %idxprom495
  %343 = load i32*, i32** %statemt.addr, align 8
  %arrayidx497 = getelementptr inbounds i32, i32* %343, i64 22
  %344 = load i32, i32* %arrayidx497, align 4
  %and498 = and i32 %344, 15
  %idxprom499 = sext i32 %and498 to i64
  %arrayidx500 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx496, i64 0, i64 %idxprom499
  %345 = load i32, i32* %arrayidx500, align 4
  %346 = load i32*, i32** %statemt.addr, align 8
  %arrayidx501 = getelementptr inbounds i32, i32* %346, i64 10
  store i32 %345, i32* %arrayidx501, align 4
  %347 = load i32, i32* %temp, align 4
  %348 = load i32*, i32** %statemt.addr, align 8
  %arrayidx502 = getelementptr inbounds i32, i32* %348, i64 22
  store i32 %347, i32* %arrayidx502, align 4
  %349 = load i32*, i32** %statemt.addr, align 8
  %arrayidx503 = getelementptr inbounds i32, i32* %349, i64 3
  %350 = load i32, i32* %arrayidx503, align 4
  %shr504 = ashr i32 %350, 4
  %idxprom505 = sext i32 %shr504 to i64
  %arrayidx506 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i64 0, i64 %idxprom505
  %351 = load i32*, i32** %statemt.addr, align 8
  %arrayidx507 = getelementptr inbounds i32, i32* %351, i64 3
  %352 = load i32, i32* %arrayidx507, align 4
  %and508 = and i32 %352, 15
  %idxprom509 = sext i32 %and508 to i64
  %arrayidx510 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx506, i64 0, i64 %idxprom509
  %353 = load i32, i32* %arrayidx510, align 4
  store i32 %353, i32* %temp, align 4
  %354 = load i32*, i32** %statemt.addr, align 8
  %arrayidx511 = getelementptr inbounds i32, i32* %354, i64 19
  %355 = load i32, i32* %arrayidx511, align 4
  %shr512 = ashr i32 %355, 4
  %idxprom513 = sext i32 %shr512 to i64
  %arrayidx514 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i64 0, i64 %idxprom513
  %356 = load i32*, i32** %statemt.addr, align 8
  %arrayidx515 = getelementptr inbounds i32, i32* %356, i64 19
  %357 = load i32, i32* %arrayidx515, align 4
  %and516 = and i32 %357, 15
  %idxprom517 = sext i32 %and516 to i64
  %arrayidx518 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx514, i64 0, i64 %idxprom517
  %358 = load i32, i32* %arrayidx518, align 4
  %359 = load i32*, i32** %statemt.addr, align 8
  %arrayidx519 = getelementptr inbounds i32, i32* %359, i64 3
  store i32 %358, i32* %arrayidx519, align 4
  %360 = load i32, i32* %temp, align 4
  %361 = load i32*, i32** %statemt.addr, align 8
  %arrayidx520 = getelementptr inbounds i32, i32* %361, i64 19
  store i32 %360, i32* %arrayidx520, align 4
  %362 = load i32*, i32** %statemt.addr, align 8
  %arrayidx521 = getelementptr inbounds i32, i32* %362, i64 7
  %363 = load i32, i32* %arrayidx521, align 4
  %shr522 = ashr i32 %363, 4
  %idxprom523 = sext i32 %shr522 to i64
  %arrayidx524 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i64 0, i64 %idxprom523
  %364 = load i32*, i32** %statemt.addr, align 8
  %arrayidx525 = getelementptr inbounds i32, i32* %364, i64 7
  %365 = load i32, i32* %arrayidx525, align 4
  %and526 = and i32 %365, 15
  %idxprom527 = sext i32 %and526 to i64
  %arrayidx528 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx524, i64 0, i64 %idxprom527
  %366 = load i32, i32* %arrayidx528, align 4
  store i32 %366, i32* %temp, align 4
  %367 = load i32*, i32** %statemt.addr, align 8
  %arrayidx529 = getelementptr inbounds i32, i32* %367, i64 23
  %368 = load i32, i32* %arrayidx529, align 4
  %shr530 = ashr i32 %368, 4
  %idxprom531 = sext i32 %shr530 to i64
  %arrayidx532 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i64 0, i64 %idxprom531
  %369 = load i32*, i32** %statemt.addr, align 8
  %arrayidx533 = getelementptr inbounds i32, i32* %369, i64 23
  %370 = load i32, i32* %arrayidx533, align 4
  %and534 = and i32 %370, 15
  %idxprom535 = sext i32 %and534 to i64
  %arrayidx536 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx532, i64 0, i64 %idxprom535
  %371 = load i32, i32* %arrayidx536, align 4
  %372 = load i32*, i32** %statemt.addr, align 8
  %arrayidx537 = getelementptr inbounds i32, i32* %372, i64 7
  store i32 %371, i32* %arrayidx537, align 4
  %373 = load i32, i32* %temp, align 4
  %374 = load i32*, i32** %statemt.addr, align 8
  %arrayidx538 = getelementptr inbounds i32, i32* %374, i64 23
  store i32 %373, i32* %arrayidx538, align 4
  %375 = load i32*, i32** %statemt.addr, align 8
  %arrayidx539 = getelementptr inbounds i32, i32* %375, i64 11
  %376 = load i32, i32* %arrayidx539, align 4
  %shr540 = ashr i32 %376, 4
  %idxprom541 = sext i32 %shr540 to i64
  %arrayidx542 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i64 0, i64 %idxprom541
  %377 = load i32*, i32** %statemt.addr, align 8
  %arrayidx543 = getelementptr inbounds i32, i32* %377, i64 11
  %378 = load i32, i32* %arrayidx543, align 4
  %and544 = and i32 %378, 15
  %idxprom545 = sext i32 %and544 to i64
  %arrayidx546 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx542, i64 0, i64 %idxprom545
  %379 = load i32, i32* %arrayidx546, align 4
  store i32 %379, i32* %temp, align 4
  %380 = load i32*, i32** %statemt.addr, align 8
  %arrayidx547 = getelementptr inbounds i32, i32* %380, i64 27
  %381 = load i32, i32* %arrayidx547, align 4
  %shr548 = ashr i32 %381, 4
  %idxprom549 = sext i32 %shr548 to i64
  %arrayidx550 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i64 0, i64 %idxprom549
  %382 = load i32*, i32** %statemt.addr, align 8
  %arrayidx551 = getelementptr inbounds i32, i32* %382, i64 27
  %383 = load i32, i32* %arrayidx551, align 4
  %and552 = and i32 %383, 15
  %idxprom553 = sext i32 %and552 to i64
  %arrayidx554 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx550, i64 0, i64 %idxprom553
  %384 = load i32, i32* %arrayidx554, align 4
  %385 = load i32*, i32** %statemt.addr, align 8
  %arrayidx555 = getelementptr inbounds i32, i32* %385, i64 11
  store i32 %384, i32* %arrayidx555, align 4
  %386 = load i32, i32* %temp, align 4
  %387 = load i32*, i32** %statemt.addr, align 8
  %arrayidx556 = getelementptr inbounds i32, i32* %387, i64 27
  store i32 %386, i32* %arrayidx556, align 4
  %388 = load i32*, i32** %statemt.addr, align 8
  %arrayidx557 = getelementptr inbounds i32, i32* %388, i64 15
  %389 = load i32, i32* %arrayidx557, align 4
  %shr558 = ashr i32 %389, 4
  %idxprom559 = sext i32 %shr558 to i64
  %arrayidx560 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i64 0, i64 %idxprom559
  %390 = load i32*, i32** %statemt.addr, align 8
  %arrayidx561 = getelementptr inbounds i32, i32* %390, i64 15
  %391 = load i32, i32* %arrayidx561, align 4
  %and562 = and i32 %391, 15
  %idxprom563 = sext i32 %and562 to i64
  %arrayidx564 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx560, i64 0, i64 %idxprom563
  %392 = load i32, i32* %arrayidx564, align 4
  store i32 %392, i32* %temp, align 4
  %393 = load i32*, i32** %statemt.addr, align 8
  %arrayidx565 = getelementptr inbounds i32, i32* %393, i64 31
  %394 = load i32, i32* %arrayidx565, align 4
  %shr566 = ashr i32 %394, 4
  %idxprom567 = sext i32 %shr566 to i64
  %arrayidx568 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i64 0, i64 %idxprom567
  %395 = load i32*, i32** %statemt.addr, align 8
  %arrayidx569 = getelementptr inbounds i32, i32* %395, i64 31
  %396 = load i32, i32* %arrayidx569, align 4
  %and570 = and i32 %396, 15
  %idxprom571 = sext i32 %and570 to i64
  %arrayidx572 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx568, i64 0, i64 %idxprom571
  %397 = load i32, i32* %arrayidx572, align 4
  %398 = load i32*, i32** %statemt.addr, align 8
  %arrayidx573 = getelementptr inbounds i32, i32* %398, i64 15
  store i32 %397, i32* %arrayidx573, align 4
  %399 = load i32, i32* %temp, align 4
  %400 = load i32*, i32** %statemt.addr, align 8
  %arrayidx574 = getelementptr inbounds i32, i32* %400, i64 31
  store i32 %399, i32* %arrayidx574, align 4
  %401 = load i32*, i32** %statemt.addr, align 8
  %arrayidx575 = getelementptr inbounds i32, i32* %401, i64 0
  %402 = load i32, i32* %arrayidx575, align 4
  %shr576 = ashr i32 %402, 4
  %idxprom577 = sext i32 %shr576 to i64
  %arrayidx578 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i64 0, i64 %idxprom577
  %403 = load i32*, i32** %statemt.addr, align 8
  %arrayidx579 = getelementptr inbounds i32, i32* %403, i64 0
  %404 = load i32, i32* %arrayidx579, align 4
  %and580 = and i32 %404, 15
  %idxprom581 = sext i32 %and580 to i64
  %arrayidx582 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx578, i64 0, i64 %idxprom581
  %405 = load i32, i32* %arrayidx582, align 4
  %406 = load i32*, i32** %statemt.addr, align 8
  %arrayidx583 = getelementptr inbounds i32, i32* %406, i64 0
  store i32 %405, i32* %arrayidx583, align 4
  %407 = load i32*, i32** %statemt.addr, align 8
  %arrayidx584 = getelementptr inbounds i32, i32* %407, i64 4
  %408 = load i32, i32* %arrayidx584, align 4
  %shr585 = ashr i32 %408, 4
  %idxprom586 = sext i32 %shr585 to i64
  %arrayidx587 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i64 0, i64 %idxprom586
  %409 = load i32*, i32** %statemt.addr, align 8
  %arrayidx588 = getelementptr inbounds i32, i32* %409, i64 4
  %410 = load i32, i32* %arrayidx588, align 4
  %and589 = and i32 %410, 15
  %idxprom590 = sext i32 %and589 to i64
  %arrayidx591 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx587, i64 0, i64 %idxprom590
  %411 = load i32, i32* %arrayidx591, align 4
  %412 = load i32*, i32** %statemt.addr, align 8
  %arrayidx592 = getelementptr inbounds i32, i32* %412, i64 4
  store i32 %411, i32* %arrayidx592, align 4
  %413 = load i32*, i32** %statemt.addr, align 8
  %arrayidx593 = getelementptr inbounds i32, i32* %413, i64 8
  %414 = load i32, i32* %arrayidx593, align 4
  %shr594 = ashr i32 %414, 4
  %idxprom595 = sext i32 %shr594 to i64
  %arrayidx596 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i64 0, i64 %idxprom595
  %415 = load i32*, i32** %statemt.addr, align 8
  %arrayidx597 = getelementptr inbounds i32, i32* %415, i64 8
  %416 = load i32, i32* %arrayidx597, align 4
  %and598 = and i32 %416, 15
  %idxprom599 = sext i32 %and598 to i64
  %arrayidx600 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx596, i64 0, i64 %idxprom599
  %417 = load i32, i32* %arrayidx600, align 4
  %418 = load i32*, i32** %statemt.addr, align 8
  %arrayidx601 = getelementptr inbounds i32, i32* %418, i64 8
  store i32 %417, i32* %arrayidx601, align 4
  %419 = load i32*, i32** %statemt.addr, align 8
  %arrayidx602 = getelementptr inbounds i32, i32* %419, i64 12
  %420 = load i32, i32* %arrayidx602, align 4
  %shr603 = ashr i32 %420, 4
  %idxprom604 = sext i32 %shr603 to i64
  %arrayidx605 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i64 0, i64 %idxprom604
  %421 = load i32*, i32** %statemt.addr, align 8
  %arrayidx606 = getelementptr inbounds i32, i32* %421, i64 12
  %422 = load i32, i32* %arrayidx606, align 4
  %and607 = and i32 %422, 15
  %idxprom608 = sext i32 %and607 to i64
  %arrayidx609 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx605, i64 0, i64 %idxprom608
  %423 = load i32, i32* %arrayidx609, align 4
  %424 = load i32*, i32** %statemt.addr, align 8
  %arrayidx610 = getelementptr inbounds i32, i32* %424, i64 12
  store i32 %423, i32* %arrayidx610, align 4
  %425 = load i32*, i32** %statemt.addr, align 8
  %arrayidx611 = getelementptr inbounds i32, i32* %425, i64 16
  %426 = load i32, i32* %arrayidx611, align 4
  %shr612 = ashr i32 %426, 4
  %idxprom613 = sext i32 %shr612 to i64
  %arrayidx614 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i64 0, i64 %idxprom613
  %427 = load i32*, i32** %statemt.addr, align 8
  %arrayidx615 = getelementptr inbounds i32, i32* %427, i64 16
  %428 = load i32, i32* %arrayidx615, align 4
  %and616 = and i32 %428, 15
  %idxprom617 = sext i32 %and616 to i64
  %arrayidx618 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx614, i64 0, i64 %idxprom617
  %429 = load i32, i32* %arrayidx618, align 4
  %430 = load i32*, i32** %statemt.addr, align 8
  %arrayidx619 = getelementptr inbounds i32, i32* %430, i64 16
  store i32 %429, i32* %arrayidx619, align 4
  %431 = load i32*, i32** %statemt.addr, align 8
  %arrayidx620 = getelementptr inbounds i32, i32* %431, i64 20
  %432 = load i32, i32* %arrayidx620, align 4
  %shr621 = ashr i32 %432, 4
  %idxprom622 = sext i32 %shr621 to i64
  %arrayidx623 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i64 0, i64 %idxprom622
  %433 = load i32*, i32** %statemt.addr, align 8
  %arrayidx624 = getelementptr inbounds i32, i32* %433, i64 20
  %434 = load i32, i32* %arrayidx624, align 4
  %and625 = and i32 %434, 15
  %idxprom626 = sext i32 %and625 to i64
  %arrayidx627 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx623, i64 0, i64 %idxprom626
  %435 = load i32, i32* %arrayidx627, align 4
  %436 = load i32*, i32** %statemt.addr, align 8
  %arrayidx628 = getelementptr inbounds i32, i32* %436, i64 20
  store i32 %435, i32* %arrayidx628, align 4
  %437 = load i32*, i32** %statemt.addr, align 8
  %arrayidx629 = getelementptr inbounds i32, i32* %437, i64 24
  %438 = load i32, i32* %arrayidx629, align 4
  %shr630 = ashr i32 %438, 4
  %idxprom631 = sext i32 %shr630 to i64
  %arrayidx632 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i64 0, i64 %idxprom631
  %439 = load i32*, i32** %statemt.addr, align 8
  %arrayidx633 = getelementptr inbounds i32, i32* %439, i64 24
  %440 = load i32, i32* %arrayidx633, align 4
  %and634 = and i32 %440, 15
  %idxprom635 = sext i32 %and634 to i64
  %arrayidx636 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx632, i64 0, i64 %idxprom635
  %441 = load i32, i32* %arrayidx636, align 4
  %442 = load i32*, i32** %statemt.addr, align 8
  %arrayidx637 = getelementptr inbounds i32, i32* %442, i64 24
  store i32 %441, i32* %arrayidx637, align 4
  %443 = load i32*, i32** %statemt.addr, align 8
  %arrayidx638 = getelementptr inbounds i32, i32* %443, i64 28
  %444 = load i32, i32* %arrayidx638, align 4
  %shr639 = ashr i32 %444, 4
  %idxprom640 = sext i32 %shr639 to i64
  %arrayidx641 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i64 0, i64 %idxprom640
  %445 = load i32*, i32** %statemt.addr, align 8
  %arrayidx642 = getelementptr inbounds i32, i32* %445, i64 28
  %446 = load i32, i32* %arrayidx642, align 4
  %and643 = and i32 %446, 15
  %idxprom644 = sext i32 %and643 to i64
  %arrayidx645 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx641, i64 0, i64 %idxprom644
  %447 = load i32, i32* %arrayidx645, align 4
  %448 = load i32*, i32** %statemt.addr, align 8
  %arrayidx646 = getelementptr inbounds i32, i32* %448, i64 28
  store i32 %447, i32* %arrayidx646, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb358, %sw.bb141, %sw.bb
  ret void
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @MixColumn_AddRoundKey(i32* %statemt, i32 %nb, i32 %n) #0 {
entry:
  %statemt.addr = alloca i32*, align 8
  %nb.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %ret = alloca [32 x i32], align 16
  %j = alloca i32, align 4
  %x = alloca i32, align 4
  store i32* %statemt, i32** %statemt.addr, align 8
  store i32 %nb, i32* %nb.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %j, align 4
  %1 = load i32, i32* %nb.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32*, i32** %statemt.addr, align 8
  %3 = load i32, i32* %j, align 4
  %mul = mul nsw i32 %3, 4
  %idxprom = sext i32 %mul to i64
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %shl = shl i32 %4, 1
  %5 = load i32, i32* %j, align 4
  %mul1 = mul nsw i32 %5, 4
  %idxprom2 = sext i32 %mul1 to i64
  %arrayidx3 = getelementptr inbounds [32 x i32], [32 x i32]* %ret, i64 0, i64 %idxprom2
  store i32 %shl, i32* %arrayidx3, align 4
  %6 = load i32, i32* %j, align 4
  %mul4 = mul nsw i32 %6, 4
  %idxprom5 = sext i32 %mul4 to i64
  %arrayidx6 = getelementptr inbounds [32 x i32], [32 x i32]* %ret, i64 0, i64 %idxprom5
  %7 = load i32, i32* %arrayidx6, align 4
  %shr = ashr i32 %7, 8
  %cmp7 = icmp eq i32 %shr, 1
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load i32, i32* %j, align 4
  %mul8 = mul nsw i32 %8, 4
  %idxprom9 = sext i32 %mul8 to i64
  %arrayidx10 = getelementptr inbounds [32 x i32], [32 x i32]* %ret, i64 0, i64 %idxprom9
  %9 = load i32, i32* %arrayidx10, align 4
  %xor = xor i32 %9, 283
  store i32 %xor, i32* %arrayidx10, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %10 = load i32*, i32** %statemt.addr, align 8
  %11 = load i32, i32* %j, align 4
  %mul11 = mul nsw i32 %11, 4
  %add = add nsw i32 1, %mul11
  %idxprom12 = sext i32 %add to i64
  %arrayidx13 = getelementptr inbounds i32, i32* %10, i64 %idxprom12
  %12 = load i32, i32* %arrayidx13, align 4
  store i32 %12, i32* %x, align 4
  %13 = load i32, i32* %x, align 4
  %shl14 = shl i32 %13, 1
  %14 = load i32, i32* %x, align 4
  %xor15 = xor i32 %14, %shl14
  store i32 %xor15, i32* %x, align 4
  %15 = load i32, i32* %x, align 4
  %shr16 = ashr i32 %15, 8
  %cmp17 = icmp eq i32 %shr16, 1
  br i1 %cmp17, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.end
  %16 = load i32, i32* %x, align 4
  %xor19 = xor i32 %16, 283
  %17 = load i32, i32* %j, align 4
  %mul20 = mul nsw i32 %17, 4
  %idxprom21 = sext i32 %mul20 to i64
  %arrayidx22 = getelementptr inbounds [32 x i32], [32 x i32]* %ret, i64 0, i64 %idxprom21
  %18 = load i32, i32* %arrayidx22, align 4
  %xor23 = xor i32 %18, %xor19
  store i32 %xor23, i32* %arrayidx22, align 4
  br label %if.end28

if.else:                                          ; preds = %if.end
  %19 = load i32, i32* %x, align 4
  %20 = load i32, i32* %j, align 4
  %mul24 = mul nsw i32 %20, 4
  %idxprom25 = sext i32 %mul24 to i64
  %arrayidx26 = getelementptr inbounds [32 x i32], [32 x i32]* %ret, i64 0, i64 %idxprom25
  %21 = load i32, i32* %arrayidx26, align 4
  %xor27 = xor i32 %21, %19
  store i32 %xor27, i32* %arrayidx26, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.else, %if.then18
  %22 = load i32*, i32** %statemt.addr, align 8
  %23 = load i32, i32* %j, align 4
  %mul29 = mul nsw i32 %23, 4
  %add30 = add nsw i32 2, %mul29
  %idxprom31 = sext i32 %add30 to i64
  %arrayidx32 = getelementptr inbounds i32, i32* %22, i64 %idxprom31
  %24 = load i32, i32* %arrayidx32, align 4
  %25 = load i32*, i32** %statemt.addr, align 8
  %26 = load i32, i32* %j, align 4
  %mul33 = mul nsw i32 %26, 4
  %add34 = add nsw i32 3, %mul33
  %idxprom35 = sext i32 %add34 to i64
  %arrayidx36 = getelementptr inbounds i32, i32* %25, i64 %idxprom35
  %27 = load i32, i32* %arrayidx36, align 4
  %xor37 = xor i32 %24, %27
  %28 = load i32, i32* %j, align 4
  %29 = load i32, i32* %nb.addr, align 4
  %30 = load i32, i32* %n.addr, align 4
  %mul38 = mul nsw i32 %29, %30
  %add39 = add nsw i32 %28, %mul38
  %idxprom40 = sext i32 %add39 to i64
  %arrayidx41 = getelementptr inbounds [120 x i32], [120 x i32]* getelementptr inbounds ([4 x [120 x i32]], [4 x [120 x i32]]* @word, i64 0, i64 0), i64 0, i64 %idxprom40
  %31 = load i32, i32* %arrayidx41, align 4
  %xor42 = xor i32 %xor37, %31
  %32 = load i32, i32* %j, align 4
  %mul43 = mul nsw i32 %32, 4
  %idxprom44 = sext i32 %mul43 to i64
  %arrayidx45 = getelementptr inbounds [32 x i32], [32 x i32]* %ret, i64 0, i64 %idxprom44
  %33 = load i32, i32* %arrayidx45, align 4
  %xor46 = xor i32 %33, %xor42
  store i32 %xor46, i32* %arrayidx45, align 4
  %34 = load i32*, i32** %statemt.addr, align 8
  %35 = load i32, i32* %j, align 4
  %mul47 = mul nsw i32 %35, 4
  %add48 = add nsw i32 1, %mul47
  %idxprom49 = sext i32 %add48 to i64
  %arrayidx50 = getelementptr inbounds i32, i32* %34, i64 %idxprom49
  %36 = load i32, i32* %arrayidx50, align 4
  %shl51 = shl i32 %36, 1
  %37 = load i32, i32* %j, align 4
  %mul52 = mul nsw i32 %37, 4
  %add53 = add nsw i32 1, %mul52
  %idxprom54 = sext i32 %add53 to i64
  %arrayidx55 = getelementptr inbounds [32 x i32], [32 x i32]* %ret, i64 0, i64 %idxprom54
  store i32 %shl51, i32* %arrayidx55, align 4
  %38 = load i32, i32* %j, align 4
  %mul56 = mul nsw i32 %38, 4
  %add57 = add nsw i32 1, %mul56
  %idxprom58 = sext i32 %add57 to i64
  %arrayidx59 = getelementptr inbounds [32 x i32], [32 x i32]* %ret, i64 0, i64 %idxprom58
  %39 = load i32, i32* %arrayidx59, align 4
  %shr60 = ashr i32 %39, 8
  %cmp61 = icmp eq i32 %shr60, 1
  br i1 %cmp61, label %if.then62, label %if.end68

if.then62:                                        ; preds = %if.end28
  %40 = load i32, i32* %j, align 4
  %mul63 = mul nsw i32 %40, 4
  %add64 = add nsw i32 1, %mul63
  %idxprom65 = sext i32 %add64 to i64
  %arrayidx66 = getelementptr inbounds [32 x i32], [32 x i32]* %ret, i64 0, i64 %idxprom65
  %41 = load i32, i32* %arrayidx66, align 4
  %xor67 = xor i32 %41, 283
  store i32 %xor67, i32* %arrayidx66, align 4
  br label %if.end68

if.end68:                                         ; preds = %if.then62, %if.end28
  %42 = load i32*, i32** %statemt.addr, align 8
  %43 = load i32, i32* %j, align 4
  %mul69 = mul nsw i32 %43, 4
  %add70 = add nsw i32 2, %mul69
  %idxprom71 = sext i32 %add70 to i64
  %arrayidx72 = getelementptr inbounds i32, i32* %42, i64 %idxprom71
  %44 = load i32, i32* %arrayidx72, align 4
  store i32 %44, i32* %x, align 4
  %45 = load i32, i32* %x, align 4
  %shl73 = shl i32 %45, 1
  %46 = load i32, i32* %x, align 4
  %xor74 = xor i32 %46, %shl73
  store i32 %xor74, i32* %x, align 4
  %47 = load i32, i32* %x, align 4
  %shr75 = ashr i32 %47, 8
  %cmp76 = icmp eq i32 %shr75, 1
  br i1 %cmp76, label %if.then77, label %if.else84

if.then77:                                        ; preds = %if.end68
  %48 = load i32, i32* %x, align 4
  %xor78 = xor i32 %48, 283
  %49 = load i32, i32* %j, align 4
  %mul79 = mul nsw i32 %49, 4
  %add80 = add nsw i32 1, %mul79
  %idxprom81 = sext i32 %add80 to i64
  %arrayidx82 = getelementptr inbounds [32 x i32], [32 x i32]* %ret, i64 0, i64 %idxprom81
  %50 = load i32, i32* %arrayidx82, align 4
  %xor83 = xor i32 %50, %xor78
  store i32 %xor83, i32* %arrayidx82, align 4
  br label %if.end90

if.else84:                                        ; preds = %if.end68
  %51 = load i32, i32* %x, align 4
  %52 = load i32, i32* %j, align 4
  %mul85 = mul nsw i32 %52, 4
  %add86 = add nsw i32 1, %mul85
  %idxprom87 = sext i32 %add86 to i64
  %arrayidx88 = getelementptr inbounds [32 x i32], [32 x i32]* %ret, i64 0, i64 %idxprom87
  %53 = load i32, i32* %arrayidx88, align 4
  %xor89 = xor i32 %53, %51
  store i32 %xor89, i32* %arrayidx88, align 4
  br label %if.end90

if.end90:                                         ; preds = %if.else84, %if.then77
  %54 = load i32*, i32** %statemt.addr, align 8
  %55 = load i32, i32* %j, align 4
  %mul91 = mul nsw i32 %55, 4
  %add92 = add nsw i32 3, %mul91
  %idxprom93 = sext i32 %add92 to i64
  %arrayidx94 = getelementptr inbounds i32, i32* %54, i64 %idxprom93
  %56 = load i32, i32* %arrayidx94, align 4
  %57 = load i32*, i32** %statemt.addr, align 8
  %58 = load i32, i32* %j, align 4
  %mul95 = mul nsw i32 %58, 4
  %idxprom96 = sext i32 %mul95 to i64
  %arrayidx97 = getelementptr inbounds i32, i32* %57, i64 %idxprom96
  %59 = load i32, i32* %arrayidx97, align 4
  %xor98 = xor i32 %56, %59
  %60 = load i32, i32* %j, align 4
  %61 = load i32, i32* %nb.addr, align 4
  %62 = load i32, i32* %n.addr, align 4
  %mul99 = mul nsw i32 %61, %62
  %add100 = add nsw i32 %60, %mul99
  %idxprom101 = sext i32 %add100 to i64
  %arrayidx102 = getelementptr inbounds [120 x i32], [120 x i32]* getelementptr inbounds ([4 x [120 x i32]], [4 x [120 x i32]]* @word, i64 0, i64 1), i64 0, i64 %idxprom101
  %63 = load i32, i32* %arrayidx102, align 4
  %xor103 = xor i32 %xor98, %63
  %64 = load i32, i32* %j, align 4
  %mul104 = mul nsw i32 %64, 4
  %add105 = add nsw i32 1, %mul104
  %idxprom106 = sext i32 %add105 to i64
  %arrayidx107 = getelementptr inbounds [32 x i32], [32 x i32]* %ret, i64 0, i64 %idxprom106
  %65 = load i32, i32* %arrayidx107, align 4
  %xor108 = xor i32 %65, %xor103
  store i32 %xor108, i32* %arrayidx107, align 4
  %66 = load i32*, i32** %statemt.addr, align 8
  %67 = load i32, i32* %j, align 4
  %mul109 = mul nsw i32 %67, 4
  %add110 = add nsw i32 2, %mul109
  %idxprom111 = sext i32 %add110 to i64
  %arrayidx112 = getelementptr inbounds i32, i32* %66, i64 %idxprom111
  %68 = load i32, i32* %arrayidx112, align 4
  %shl113 = shl i32 %68, 1
  %69 = load i32, i32* %j, align 4
  %mul114 = mul nsw i32 %69, 4
  %add115 = add nsw i32 2, %mul114
  %idxprom116 = sext i32 %add115 to i64
  %arrayidx117 = getelementptr inbounds [32 x i32], [32 x i32]* %ret, i64 0, i64 %idxprom116
  store i32 %shl113, i32* %arrayidx117, align 4
  %70 = load i32, i32* %j, align 4
  %mul118 = mul nsw i32 %70, 4
  %add119 = add nsw i32 2, %mul118
  %idxprom120 = sext i32 %add119 to i64
  %arrayidx121 = getelementptr inbounds [32 x i32], [32 x i32]* %ret, i64 0, i64 %idxprom120
  %71 = load i32, i32* %arrayidx121, align 4
  %shr122 = ashr i32 %71, 8
  %cmp123 = icmp eq i32 %shr122, 1
  br i1 %cmp123, label %if.then124, label %if.end130

if.then124:                                       ; preds = %if.end90
  %72 = load i32, i32* %j, align 4
  %mul125 = mul nsw i32 %72, 4
  %add126 = add nsw i32 2, %mul125
  %idxprom127 = sext i32 %add126 to i64
  %arrayidx128 = getelementptr inbounds [32 x i32], [32 x i32]* %ret, i64 0, i64 %idxprom127
  %73 = load i32, i32* %arrayidx128, align 4
  %xor129 = xor i32 %73, 283
  store i32 %xor129, i32* %arrayidx128, align 4
  br label %if.end130

if.end130:                                        ; preds = %if.then124, %if.end90
  %74 = load i32*, i32** %statemt.addr, align 8
  %75 = load i32, i32* %j, align 4
  %mul131 = mul nsw i32 %75, 4
  %add132 = add nsw i32 3, %mul131
  %idxprom133 = sext i32 %add132 to i64
  %arrayidx134 = getelementptr inbounds i32, i32* %74, i64 %idxprom133
  %76 = load i32, i32* %arrayidx134, align 4
  store i32 %76, i32* %x, align 4
  %77 = load i32, i32* %x, align 4
  %shl135 = shl i32 %77, 1
  %78 = load i32, i32* %x, align 4
  %xor136 = xor i32 %78, %shl135
  store i32 %xor136, i32* %x, align 4
  %79 = load i32, i32* %x, align 4
  %shr137 = ashr i32 %79, 8
  %cmp138 = icmp eq i32 %shr137, 1
  br i1 %cmp138, label %if.then139, label %if.else146

if.then139:                                       ; preds = %if.end130
  %80 = load i32, i32* %x, align 4
  %xor140 = xor i32 %80, 283
  %81 = load i32, i32* %j, align 4
  %mul141 = mul nsw i32 %81, 4
  %add142 = add nsw i32 2, %mul141
  %idxprom143 = sext i32 %add142 to i64
  %arrayidx144 = getelementptr inbounds [32 x i32], [32 x i32]* %ret, i64 0, i64 %idxprom143
  %82 = load i32, i32* %arrayidx144, align 4
  %xor145 = xor i32 %82, %xor140
  store i32 %xor145, i32* %arrayidx144, align 4
  br label %if.end152

if.else146:                                       ; preds = %if.end130
  %83 = load i32, i32* %x, align 4
  %84 = load i32, i32* %j, align 4
  %mul147 = mul nsw i32 %84, 4
  %add148 = add nsw i32 2, %mul147
  %idxprom149 = sext i32 %add148 to i64
  %arrayidx150 = getelementptr inbounds [32 x i32], [32 x i32]* %ret, i64 0, i64 %idxprom149
  %85 = load i32, i32* %arrayidx150, align 4
  %xor151 = xor i32 %85, %83
  store i32 %xor151, i32* %arrayidx150, align 4
  br label %if.end152

if.end152:                                        ; preds = %if.else146, %if.then139
  %86 = load i32*, i32** %statemt.addr, align 8
  %87 = load i32, i32* %j, align 4
  %mul153 = mul nsw i32 %87, 4
  %idxprom154 = sext i32 %mul153 to i64
  %arrayidx155 = getelementptr inbounds i32, i32* %86, i64 %idxprom154
  %88 = load i32, i32* %arrayidx155, align 4
  %89 = load i32*, i32** %statemt.addr, align 8
  %90 = load i32, i32* %j, align 4
  %mul156 = mul nsw i32 %90, 4
  %add157 = add nsw i32 1, %mul156
  %idxprom158 = sext i32 %add157 to i64
  %arrayidx159 = getelementptr inbounds i32, i32* %89, i64 %idxprom158
  %91 = load i32, i32* %arrayidx159, align 4
  %xor160 = xor i32 %88, %91
  %92 = load i32, i32* %j, align 4
  %93 = load i32, i32* %nb.addr, align 4
  %94 = load i32, i32* %n.addr, align 4
  %mul161 = mul nsw i32 %93, %94
  %add162 = add nsw i32 %92, %mul161
  %idxprom163 = sext i32 %add162 to i64
  %arrayidx164 = getelementptr inbounds [120 x i32], [120 x i32]* getelementptr inbounds ([4 x [120 x i32]], [4 x [120 x i32]]* @word, i64 0, i64 2), i64 0, i64 %idxprom163
  %95 = load i32, i32* %arrayidx164, align 4
  %xor165 = xor i32 %xor160, %95
  %96 = load i32, i32* %j, align 4
  %mul166 = mul nsw i32 %96, 4
  %add167 = add nsw i32 2, %mul166
  %idxprom168 = sext i32 %add167 to i64
  %arrayidx169 = getelementptr inbounds [32 x i32], [32 x i32]* %ret, i64 0, i64 %idxprom168
  %97 = load i32, i32* %arrayidx169, align 4
  %xor170 = xor i32 %97, %xor165
  store i32 %xor170, i32* %arrayidx169, align 4
  %98 = load i32*, i32** %statemt.addr, align 8
  %99 = load i32, i32* %j, align 4
  %mul171 = mul nsw i32 %99, 4
  %add172 = add nsw i32 3, %mul171
  %idxprom173 = sext i32 %add172 to i64
  %arrayidx174 = getelementptr inbounds i32, i32* %98, i64 %idxprom173
  %100 = load i32, i32* %arrayidx174, align 4
  %shl175 = shl i32 %100, 1
  %101 = load i32, i32* %j, align 4
  %mul176 = mul nsw i32 %101, 4
  %add177 = add nsw i32 3, %mul176
  %idxprom178 = sext i32 %add177 to i64
  %arrayidx179 = getelementptr inbounds [32 x i32], [32 x i32]* %ret, i64 0, i64 %idxprom178
  store i32 %shl175, i32* %arrayidx179, align 4
  %102 = load i32, i32* %j, align 4
  %mul180 = mul nsw i32 %102, 4
  %add181 = add nsw i32 3, %mul180
  %idxprom182 = sext i32 %add181 to i64
  %arrayidx183 = getelementptr inbounds [32 x i32], [32 x i32]* %ret, i64 0, i64 %idxprom182
  %103 = load i32, i32* %arrayidx183, align 4
  %shr184 = ashr i32 %103, 8
  %cmp185 = icmp eq i32 %shr184, 1
  br i1 %cmp185, label %if.then186, label %if.end192

if.then186:                                       ; preds = %if.end152
  %104 = load i32, i32* %j, align 4
  %mul187 = mul nsw i32 %104, 4
  %add188 = add nsw i32 3, %mul187
  %idxprom189 = sext i32 %add188 to i64
  %arrayidx190 = getelementptr inbounds [32 x i32], [32 x i32]* %ret, i64 0, i64 %idxprom189
  %105 = load i32, i32* %arrayidx190, align 4
  %xor191 = xor i32 %105, 283
  store i32 %xor191, i32* %arrayidx190, align 4
  br label %if.end192

if.end192:                                        ; preds = %if.then186, %if.end152
  %106 = load i32*, i32** %statemt.addr, align 8
  %107 = load i32, i32* %j, align 4
  %mul193 = mul nsw i32 %107, 4
  %idxprom194 = sext i32 %mul193 to i64
  %arrayidx195 = getelementptr inbounds i32, i32* %106, i64 %idxprom194
  %108 = load i32, i32* %arrayidx195, align 4
  store i32 %108, i32* %x, align 4
  %109 = load i32, i32* %x, align 4
  %shl196 = shl i32 %109, 1
  %110 = load i32, i32* %x, align 4
  %xor197 = xor i32 %110, %shl196
  store i32 %xor197, i32* %x, align 4
  %111 = load i32, i32* %x, align 4
  %shr198 = ashr i32 %111, 8
  %cmp199 = icmp eq i32 %shr198, 1
  br i1 %cmp199, label %if.then200, label %if.else207

if.then200:                                       ; preds = %if.end192
  %112 = load i32, i32* %x, align 4
  %xor201 = xor i32 %112, 283
  %113 = load i32, i32* %j, align 4
  %mul202 = mul nsw i32 %113, 4
  %add203 = add nsw i32 3, %mul202
  %idxprom204 = sext i32 %add203 to i64
  %arrayidx205 = getelementptr inbounds [32 x i32], [32 x i32]* %ret, i64 0, i64 %idxprom204
  %114 = load i32, i32* %arrayidx205, align 4
  %xor206 = xor i32 %114, %xor201
  store i32 %xor206, i32* %arrayidx205, align 4
  br label %if.end213

if.else207:                                       ; preds = %if.end192
  %115 = load i32, i32* %x, align 4
  %116 = load i32, i32* %j, align 4
  %mul208 = mul nsw i32 %116, 4
  %add209 = add nsw i32 3, %mul208
  %idxprom210 = sext i32 %add209 to i64
  %arrayidx211 = getelementptr inbounds [32 x i32], [32 x i32]* %ret, i64 0, i64 %idxprom210
  %117 = load i32, i32* %arrayidx211, align 4
  %xor212 = xor i32 %117, %115
  store i32 %xor212, i32* %arrayidx211, align 4
  br label %if.end213

if.end213:                                        ; preds = %if.else207, %if.then200
  %118 = load i32*, i32** %statemt.addr, align 8
  %119 = load i32, i32* %j, align 4
  %mul214 = mul nsw i32 %119, 4
  %add215 = add nsw i32 1, %mul214
  %idxprom216 = sext i32 %add215 to i64
  %arrayidx217 = getelementptr inbounds i32, i32* %118, i64 %idxprom216
  %120 = load i32, i32* %arrayidx217, align 4
  %121 = load i32*, i32** %statemt.addr, align 8
  %122 = load i32, i32* %j, align 4
  %mul218 = mul nsw i32 %122, 4
  %add219 = add nsw i32 2, %mul218
  %idxprom220 = sext i32 %add219 to i64
  %arrayidx221 = getelementptr inbounds i32, i32* %121, i64 %idxprom220
  %123 = load i32, i32* %arrayidx221, align 4
  %xor222 = xor i32 %120, %123
  %124 = load i32, i32* %j, align 4
  %125 = load i32, i32* %nb.addr, align 4
  %126 = load i32, i32* %n.addr, align 4
  %mul223 = mul nsw i32 %125, %126
  %add224 = add nsw i32 %124, %mul223
  %idxprom225 = sext i32 %add224 to i64
  %arrayidx226 = getelementptr inbounds [120 x i32], [120 x i32]* getelementptr inbounds ([4 x [120 x i32]], [4 x [120 x i32]]* @word, i64 0, i64 3), i64 0, i64 %idxprom225
  %127 = load i32, i32* %arrayidx226, align 4
  %xor227 = xor i32 %xor222, %127
  %128 = load i32, i32* %j, align 4
  %mul228 = mul nsw i32 %128, 4
  %add229 = add nsw i32 3, %mul228
  %idxprom230 = sext i32 %add229 to i64
  %arrayidx231 = getelementptr inbounds [32 x i32], [32 x i32]* %ret, i64 0, i64 %idxprom230
  %129 = load i32, i32* %arrayidx231, align 4
  %xor232 = xor i32 %129, %xor227
  store i32 %xor232, i32* %arrayidx231, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end213
  %130 = load i32, i32* %j, align 4
  %inc = add nsw i32 %130, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond233

for.cond233:                                      ; preds = %for.inc266, %for.end
  %131 = load i32, i32* %j, align 4
  %132 = load i32, i32* %nb.addr, align 4
  %cmp234 = icmp slt i32 %131, %132
  br i1 %cmp234, label %for.body235, label %for.end268

for.body235:                                      ; preds = %for.cond233
  %133 = load i32, i32* %j, align 4
  %mul236 = mul nsw i32 %133, 4
  %idxprom237 = sext i32 %mul236 to i64
  %arrayidx238 = getelementptr inbounds [32 x i32], [32 x i32]* %ret, i64 0, i64 %idxprom237
  %134 = load i32, i32* %arrayidx238, align 4
  %135 = load i32*, i32** %statemt.addr, align 8
  %136 = load i32, i32* %j, align 4
  %mul239 = mul nsw i32 %136, 4
  %idxprom240 = sext i32 %mul239 to i64
  %arrayidx241 = getelementptr inbounds i32, i32* %135, i64 %idxprom240
  store i32 %134, i32* %arrayidx241, align 4
  %137 = load i32, i32* %j, align 4
  %mul242 = mul nsw i32 %137, 4
  %add243 = add nsw i32 1, %mul242
  %idxprom244 = sext i32 %add243 to i64
  %arrayidx245 = getelementptr inbounds [32 x i32], [32 x i32]* %ret, i64 0, i64 %idxprom244
  %138 = load i32, i32* %arrayidx245, align 4
  %139 = load i32*, i32** %statemt.addr, align 8
  %140 = load i32, i32* %j, align 4
  %mul246 = mul nsw i32 %140, 4
  %add247 = add nsw i32 1, %mul246
  %idxprom248 = sext i32 %add247 to i64
  %arrayidx249 = getelementptr inbounds i32, i32* %139, i64 %idxprom248
  store i32 %138, i32* %arrayidx249, align 4
  %141 = load i32, i32* %j, align 4
  %mul250 = mul nsw i32 %141, 4
  %add251 = add nsw i32 2, %mul250
  %idxprom252 = sext i32 %add251 to i64
  %arrayidx253 = getelementptr inbounds [32 x i32], [32 x i32]* %ret, i64 0, i64 %idxprom252
  %142 = load i32, i32* %arrayidx253, align 4
  %143 = load i32*, i32** %statemt.addr, align 8
  %144 = load i32, i32* %j, align 4
  %mul254 = mul nsw i32 %144, 4
  %add255 = add nsw i32 2, %mul254
  %idxprom256 = sext i32 %add255 to i64
  %arrayidx257 = getelementptr inbounds i32, i32* %143, i64 %idxprom256
  store i32 %142, i32* %arrayidx257, align 4
  %145 = load i32, i32* %j, align 4
  %mul258 = mul nsw i32 %145, 4
  %add259 = add nsw i32 3, %mul258
  %idxprom260 = sext i32 %add259 to i64
  %arrayidx261 = getelementptr inbounds [32 x i32], [32 x i32]* %ret, i64 0, i64 %idxprom260
  %146 = load i32, i32* %arrayidx261, align 4
  %147 = load i32*, i32** %statemt.addr, align 8
  %148 = load i32, i32* %j, align 4
  %mul262 = mul nsw i32 %148, 4
  %add263 = add nsw i32 3, %mul262
  %idxprom264 = sext i32 %add263 to i64
  %arrayidx265 = getelementptr inbounds i32, i32* %147, i64 %idxprom264
  store i32 %146, i32* %arrayidx265, align 4
  br label %for.inc266

for.inc266:                                       ; preds = %for.body235
  %149 = load i32, i32* %j, align 4
  %inc267 = add nsw i32 %149, 1
  store i32 %inc267, i32* %j, align 4
  br label %for.cond233

for.end268:                                       ; preds = %for.cond233
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind ssp uwtable
define i32 @decrypt(i32* %statemt, i32* %key, i32 %type) #0 {
entry:
  %statemt.addr = alloca i32*, align 8
  %key.addr = alloca i32*, align 8
  %type.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32* %statemt, i32** %statemt.addr, align 8
  store i32* %key, i32** %key.addr, align 8
  store i32 %type, i32* %type.addr, align 4
  %0 = load i32, i32* %type.addr, align 4
  %1 = load i32*, i32** %key.addr, align 8
  %call = call i32 @KeySchedule(i32 %0, i32* %1)
  %2 = load i32, i32* %type.addr, align 4
  switch i32 %2, label %sw.epilog [
    i32 128128, label %sw.bb
    i32 128192, label %sw.bb1
    i32 192192, label %sw.bb1
    i32 192128, label %sw.bb2
    i32 128256, label %sw.bb3
    i32 192256, label %sw.bb3
    i32 256128, label %sw.bb4
    i32 256192, label %sw.bb5
    i32 256256, label %sw.bb6
  ]

sw.bb:                                            ; preds = %entry
  store i32 10, i32* @round_val, align 4
  store i32 4, i32* @nb, align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry, %entry
  store i32 12, i32* @round_val, align 4
  store i32 6, i32* @nb, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  store i32 12, i32* @round_val, align 4
  store i32 4, i32* @nb, align 4
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry, %entry
  store i32 14, i32* @round_val, align 4
  store i32 8, i32* @nb, align 4
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  store i32 14, i32* @round_val, align 4
  store i32 4, i32* @nb, align 4
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  store i32 14, i32* @round_val, align 4
  store i32 6, i32* @nb, align 4
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  store i32 14, i32* @round_val, align 4
  store i32 8, i32* @nb, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %3 = load i32*, i32** %statemt.addr, align 8
  %4 = load i32, i32* %type.addr, align 4
  %5 = load i32, i32* @round_val, align 4
  %call7 = call i32 @AddRoundKey(i32* %3, i32 %4, i32 %5)
  %6 = load i32*, i32** %statemt.addr, align 8
  %7 = load i32, i32* @nb, align 4
  call void @InversShiftRow_ByteSub(i32* %6, i32 %7)
  %8 = load i32, i32* @round_val, align 4
  %sub = sub nsw i32 %8, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.epilog
  %9 = load i32, i32* %i, align 4
  %cmp = icmp sge i32 %9, 1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32*, i32** %statemt.addr, align 8
  %11 = load i32, i32* @nb, align 4
  %12 = load i32, i32* %i, align 4
  %call8 = call i32 @AddRoundKey_InversMixColumn(i32* %10, i32 %11, i32 %12)
  %13 = load i32*, i32** %statemt.addr, align 8
  %14 = load i32, i32* @nb, align 4
  call void @InversShiftRow_ByteSub(i32* %13, i32 %14)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4
  %dec = add nsw i32 %15, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load i32*, i32** %statemt.addr, align 8
  %17 = load i32, i32* %type.addr, align 4
  %call9 = call i32 @AddRoundKey(i32* %16, i32 %17, i32 0)
  %call10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc19, %for.end
  %18 = load i32, i32* %i, align 4
  %19 = load i32, i32* %type.addr, align 4
  %rem = srem i32 %19, 1000
  %div = sdiv i32 %rem, 8
  %cmp12 = icmp slt i32 %18, %div
  br i1 %cmp12, label %for.body13, label %for.end20

for.body13:                                       ; preds = %for.cond11
  %20 = load i32*, i32** %statemt.addr, align 8
  %21 = load i32, i32* %i, align 4
  %idxprom = sext i32 %21 to i64
  %arrayidx = getelementptr inbounds i32, i32* %20, i64 %idxprom
  %22 = load i32, i32* %arrayidx, align 4
  %cmp14 = icmp slt i32 %22, 16
  br i1 %cmp14, label %if.then, label %if.end

if.then:                                          ; preds = %for.body13
  %call15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body13
  %23 = load i32*, i32** %statemt.addr, align 8
  %24 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %24 to i64
  %arrayidx17 = getelementptr inbounds i32, i32* %23, i64 %idxprom16
  %25 = load i32, i32* %arrayidx17, align 4
  %call18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i32 %25)
  br label %for.inc19

for.inc19:                                        ; preds = %if.end
  %26 = load i32, i32* %i, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond11

for.end20:                                        ; preds = %for.cond11
  store i32 0, i32* %i, align 4
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc29, %for.end20
  %27 = load i32, i32* %i, align 4
  %cmp22 = icmp slt i32 %27, 16
  br i1 %cmp22, label %for.body23, label %for.end31

for.body23:                                       ; preds = %for.cond21
  %28 = load i32*, i32** %statemt.addr, align 8
  %29 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %29 to i64
  %arrayidx25 = getelementptr inbounds i32, i32* %28, i64 %idxprom24
  %30 = load i32, i32* %arrayidx25, align 4
  %31 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %31 to i64
  %arrayidx27 = getelementptr inbounds [16 x i32], [16 x i32]* @decrypt.out_dec_statemt, i64 0, i64 %idxprom26
  %32 = load i32, i32* %arrayidx27, align 4
  %cmp28 = icmp ne i32 %30, %32
  %conv = zext i1 %cmp28 to i32
  %33 = load i32, i32* @main_result, align 4
  %add = add nsw i32 %33, %conv
  store i32 %add, i32* @main_result, align 4
  br label %for.inc29

for.inc29:                                        ; preds = %for.body23
  %34 = load i32, i32* %i, align 4
  %inc30 = add nsw i32 %34, 1
  store i32 %inc30, i32* %i, align 4
  br label %for.cond21

for.end31:                                        ; preds = %for.cond21
  ret i32 0
}

; Function Attrs: noinline nounwind ssp uwtable
define void @InversShiftRow_ByteSub(i32* %statemt, i32 %nb) #0 {
entry:
  %statemt.addr = alloca i32*, align 8
  %nb.addr = alloca i32, align 4
  %temp = alloca i32, align 4
  store i32* %statemt, i32** %statemt.addr, align 8
  store i32 %nb, i32* %nb.addr, align 4
  %0 = load i32, i32* %nb.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 4, label %sw.bb
    i32 6, label %sw.bb141
    i32 8, label %sw.bb358
  ]

sw.bb:                                            ; preds = %entry
  %1 = load i32*, i32** %statemt.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 13
  %2 = load i32, i32* %arrayidx, align 4
  %shr = ashr i32 %2, 4
  %idxprom = sext i32 %shr to i64
  %arrayidx1 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i64 0, i64 %idxprom
  %3 = load i32*, i32** %statemt.addr, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %3, i64 13
  %4 = load i32, i32* %arrayidx2, align 4
  %and = and i32 %4, 15
  %idxprom3 = sext i32 %and to i64
  %arrayidx4 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx1, i64 0, i64 %idxprom3
  %5 = load i32, i32* %arrayidx4, align 4
  store i32 %5, i32* %temp, align 4
  %6 = load i32*, i32** %statemt.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %6, i64 9
  %7 = load i32, i32* %arrayidx5, align 4
  %shr6 = ashr i32 %7, 4
  %idxprom7 = sext i32 %shr6 to i64
  %arrayidx8 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i64 0, i64 %idxprom7
  %8 = load i32*, i32** %statemt.addr, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %8, i64 9
  %9 = load i32, i32* %arrayidx9, align 4
  %and10 = and i32 %9, 15
  %idxprom11 = sext i32 %and10 to i64
  %arrayidx12 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx8, i64 0, i64 %idxprom11
  %10 = load i32, i32* %arrayidx12, align 4
  %11 = load i32*, i32** %statemt.addr, align 8
  %arrayidx13 = getelementptr inbounds i32, i32* %11, i64 13
  store i32 %10, i32* %arrayidx13, align 4
  %12 = load i32*, i32** %statemt.addr, align 8
  %arrayidx14 = getelementptr inbounds i32, i32* %12, i64 5
  %13 = load i32, i32* %arrayidx14, align 4
  %shr15 = ashr i32 %13, 4
  %idxprom16 = sext i32 %shr15 to i64
  %arrayidx17 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i64 0, i64 %idxprom16
  %14 = load i32*, i32** %statemt.addr, align 8
  %arrayidx18 = getelementptr inbounds i32, i32* %14, i64 5
  %15 = load i32, i32* %arrayidx18, align 4
  %and19 = and i32 %15, 15
  %idxprom20 = sext i32 %and19 to i64
  %arrayidx21 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx17, i64 0, i64 %idxprom20
  %16 = load i32, i32* %arrayidx21, align 4
  %17 = load i32*, i32** %statemt.addr, align 8
  %arrayidx22 = getelementptr inbounds i32, i32* %17, i64 9
  store i32 %16, i32* %arrayidx22, align 4
  %18 = load i32*, i32** %statemt.addr, align 8
  %arrayidx23 = getelementptr inbounds i32, i32* %18, i64 1
  %19 = load i32, i32* %arrayidx23, align 4
  %shr24 = ashr i32 %19, 4
  %idxprom25 = sext i32 %shr24 to i64
  %arrayidx26 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i64 0, i64 %idxprom25
  %20 = load i32*, i32** %statemt.addr, align 8
  %arrayidx27 = getelementptr inbounds i32, i32* %20, i64 1
  %21 = load i32, i32* %arrayidx27, align 4
  %and28 = and i32 %21, 15
  %idxprom29 = sext i32 %and28 to i64
  %arrayidx30 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx26, i64 0, i64 %idxprom29
  %22 = load i32, i32* %arrayidx30, align 4
  %23 = load i32*, i32** %statemt.addr, align 8
  %arrayidx31 = getelementptr inbounds i32, i32* %23, i64 5
  store i32 %22, i32* %arrayidx31, align 4
  %24 = load i32, i32* %temp, align 4
  %25 = load i32*, i32** %statemt.addr, align 8
  %arrayidx32 = getelementptr inbounds i32, i32* %25, i64 1
  store i32 %24, i32* %arrayidx32, align 4
  %26 = load i32*, i32** %statemt.addr, align 8
  %arrayidx33 = getelementptr inbounds i32, i32* %26, i64 14
  %27 = load i32, i32* %arrayidx33, align 4
  %shr34 = ashr i32 %27, 4
  %idxprom35 = sext i32 %shr34 to i64
  %arrayidx36 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i64 0, i64 %idxprom35
  %28 = load i32*, i32** %statemt.addr, align 8
  %arrayidx37 = getelementptr inbounds i32, i32* %28, i64 14
  %29 = load i32, i32* %arrayidx37, align 4
  %and38 = and i32 %29, 15
  %idxprom39 = sext i32 %and38 to i64
  %arrayidx40 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx36, i64 0, i64 %idxprom39
  %30 = load i32, i32* %arrayidx40, align 4
  store i32 %30, i32* %temp, align 4
  %31 = load i32*, i32** %statemt.addr, align 8
  %arrayidx41 = getelementptr inbounds i32, i32* %31, i64 6
  %32 = load i32, i32* %arrayidx41, align 4
  %shr42 = ashr i32 %32, 4
  %idxprom43 = sext i32 %shr42 to i64
  %arrayidx44 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i64 0, i64 %idxprom43
  %33 = load i32*, i32** %statemt.addr, align 8
  %arrayidx45 = getelementptr inbounds i32, i32* %33, i64 6
  %34 = load i32, i32* %arrayidx45, align 4
  %and46 = and i32 %34, 15
  %idxprom47 = sext i32 %and46 to i64
  %arrayidx48 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx44, i64 0, i64 %idxprom47
  %35 = load i32, i32* %arrayidx48, align 4
  %36 = load i32*, i32** %statemt.addr, align 8
  %arrayidx49 = getelementptr inbounds i32, i32* %36, i64 14
  store i32 %35, i32* %arrayidx49, align 4
  %37 = load i32, i32* %temp, align 4
  %38 = load i32*, i32** %statemt.addr, align 8
  %arrayidx50 = getelementptr inbounds i32, i32* %38, i64 6
  store i32 %37, i32* %arrayidx50, align 4
  %39 = load i32*, i32** %statemt.addr, align 8
  %arrayidx51 = getelementptr inbounds i32, i32* %39, i64 2
  %40 = load i32, i32* %arrayidx51, align 4
  %shr52 = ashr i32 %40, 4
  %idxprom53 = sext i32 %shr52 to i64
  %arrayidx54 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i64 0, i64 %idxprom53
  %41 = load i32*, i32** %statemt.addr, align 8
  %arrayidx55 = getelementptr inbounds i32, i32* %41, i64 2
  %42 = load i32, i32* %arrayidx55, align 4
  %and56 = and i32 %42, 15
  %idxprom57 = sext i32 %and56 to i64
  %arrayidx58 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx54, i64 0, i64 %idxprom57
  %43 = load i32, i32* %arrayidx58, align 4
  store i32 %43, i32* %temp, align 4
  %44 = load i32*, i32** %statemt.addr, align 8
  %arrayidx59 = getelementptr inbounds i32, i32* %44, i64 10
  %45 = load i32, i32* %arrayidx59, align 4
  %shr60 = ashr i32 %45, 4
  %idxprom61 = sext i32 %shr60 to i64
  %arrayidx62 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i64 0, i64 %idxprom61
  %46 = load i32*, i32** %statemt.addr, align 8
  %arrayidx63 = getelementptr inbounds i32, i32* %46, i64 10
  %47 = load i32, i32* %arrayidx63, align 4
  %and64 = and i32 %47, 15
  %idxprom65 = sext i32 %and64 to i64
  %arrayidx66 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx62, i64 0, i64 %idxprom65
  %48 = load i32, i32* %arrayidx66, align 4
  %49 = load i32*, i32** %statemt.addr, align 8
  %arrayidx67 = getelementptr inbounds i32, i32* %49, i64 2
  store i32 %48, i32* %arrayidx67, align 4
  %50 = load i32, i32* %temp, align 4
  %51 = load i32*, i32** %statemt.addr, align 8
  %arrayidx68 = getelementptr inbounds i32, i32* %51, i64 10
  store i32 %50, i32* %arrayidx68, align 4
  %52 = load i32*, i32** %statemt.addr, align 8
  %arrayidx69 = getelementptr inbounds i32, i32* %52, i64 15
  %53 = load i32, i32* %arrayidx69, align 4
  %shr70 = ashr i32 %53, 4
  %idxprom71 = sext i32 %shr70 to i64
  %arrayidx72 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i64 0, i64 %idxprom71
  %54 = load i32*, i32** %statemt.addr, align 8
  %arrayidx73 = getelementptr inbounds i32, i32* %54, i64 15
  %55 = load i32, i32* %arrayidx73, align 4
  %and74 = and i32 %55, 15
  %idxprom75 = sext i32 %and74 to i64
  %arrayidx76 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx72, i64 0, i64 %idxprom75
  %56 = load i32, i32* %arrayidx76, align 4
  store i32 %56, i32* %temp, align 4
  %57 = load i32*, i32** %statemt.addr, align 8
  %arrayidx77 = getelementptr inbounds i32, i32* %57, i64 3
  %58 = load i32, i32* %arrayidx77, align 4
  %shr78 = ashr i32 %58, 4
  %idxprom79 = sext i32 %shr78 to i64
  %arrayidx80 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i64 0, i64 %idxprom79
  %59 = load i32*, i32** %statemt.addr, align 8
  %arrayidx81 = getelementptr inbounds i32, i32* %59, i64 3
  %60 = load i32, i32* %arrayidx81, align 4
  %and82 = and i32 %60, 15
  %idxprom83 = sext i32 %and82 to i64
  %arrayidx84 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx80, i64 0, i64 %idxprom83
  %61 = load i32, i32* %arrayidx84, align 4
  %62 = load i32*, i32** %statemt.addr, align 8
  %arrayidx85 = getelementptr inbounds i32, i32* %62, i64 15
  store i32 %61, i32* %arrayidx85, align 4
  %63 = load i32*, i32** %statemt.addr, align 8
  %arrayidx86 = getelementptr inbounds i32, i32* %63, i64 7
  %64 = load i32, i32* %arrayidx86, align 4
  %shr87 = ashr i32 %64, 4
  %idxprom88 = sext i32 %shr87 to i64
  %arrayidx89 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i64 0, i64 %idxprom88
  %65 = load i32*, i32** %statemt.addr, align 8
  %arrayidx90 = getelementptr inbounds i32, i32* %65, i64 7
  %66 = load i32, i32* %arrayidx90, align 4
  %and91 = and i32 %66, 15
  %idxprom92 = sext i32 %and91 to i64
  %arrayidx93 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx89, i64 0, i64 %idxprom92
  %67 = load i32, i32* %arrayidx93, align 4
  %68 = load i32*, i32** %statemt.addr, align 8
  %arrayidx94 = getelementptr inbounds i32, i32* %68, i64 3
  store i32 %67, i32* %arrayidx94, align 4
  %69 = load i32*, i32** %statemt.addr, align 8
  %arrayidx95 = getelementptr inbounds i32, i32* %69, i64 11
  %70 = load i32, i32* %arrayidx95, align 4
  %shr96 = ashr i32 %70, 4
  %idxprom97 = sext i32 %shr96 to i64
  %arrayidx98 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i64 0, i64 %idxprom97
  %71 = load i32*, i32** %statemt.addr, align 8
  %arrayidx99 = getelementptr inbounds i32, i32* %71, i64 11
  %72 = load i32, i32* %arrayidx99, align 4
  %and100 = and i32 %72, 15
  %idxprom101 = sext i32 %and100 to i64
  %arrayidx102 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx98, i64 0, i64 %idxprom101
  %73 = load i32, i32* %arrayidx102, align 4
  %74 = load i32*, i32** %statemt.addr, align 8
  %arrayidx103 = getelementptr inbounds i32, i32* %74, i64 7
  store i32 %73, i32* %arrayidx103, align 4
  %75 = load i32, i32* %temp, align 4
  %76 = load i32*, i32** %statemt.addr, align 8
  %arrayidx104 = getelementptr inbounds i32, i32* %76, i64 11
  store i32 %75, i32* %arrayidx104, align 4
  %77 = load i32*, i32** %statemt.addr, align 8
  %arrayidx105 = getelementptr inbounds i32, i32* %77, i64 0
  %78 = load i32, i32* %arrayidx105, align 4
  %shr106 = ashr i32 %78, 4
  %idxprom107 = sext i32 %shr106 to i64
  %arrayidx108 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i64 0, i64 %idxprom107
  %79 = load i32*, i32** %statemt.addr, align 8
  %arrayidx109 = getelementptr inbounds i32, i32* %79, i64 0
  %80 = load i32, i32* %arrayidx109, align 4
  %and110 = and i32 %80, 15
  %idxprom111 = sext i32 %and110 to i64
  %arrayidx112 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx108, i64 0, i64 %idxprom111
  %81 = load i32, i32* %arrayidx112, align 4
  %82 = load i32*, i32** %statemt.addr, align 8
  %arrayidx113 = getelementptr inbounds i32, i32* %82, i64 0
  store i32 %81, i32* %arrayidx113, align 4
  %83 = load i32*, i32** %statemt.addr, align 8
  %arrayidx114 = getelementptr inbounds i32, i32* %83, i64 4
  %84 = load i32, i32* %arrayidx114, align 4
  %shr115 = ashr i32 %84, 4
  %idxprom116 = sext i32 %shr115 to i64
  %arrayidx117 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i64 0, i64 %idxprom116
  %85 = load i32*, i32** %statemt.addr, align 8
  %arrayidx118 = getelementptr inbounds i32, i32* %85, i64 4
  %86 = load i32, i32* %arrayidx118, align 4
  %and119 = and i32 %86, 15
  %idxprom120 = sext i32 %and119 to i64
  %arrayidx121 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx117, i64 0, i64 %idxprom120
  %87 = load i32, i32* %arrayidx121, align 4
  %88 = load i32*, i32** %statemt.addr, align 8
  %arrayidx122 = getelementptr inbounds i32, i32* %88, i64 4
  store i32 %87, i32* %arrayidx122, align 4
  %89 = load i32*, i32** %statemt.addr, align 8
  %arrayidx123 = getelementptr inbounds i32, i32* %89, i64 8
  %90 = load i32, i32* %arrayidx123, align 4
  %shr124 = ashr i32 %90, 4
  %idxprom125 = sext i32 %shr124 to i64
  %arrayidx126 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i64 0, i64 %idxprom125
  %91 = load i32*, i32** %statemt.addr, align 8
  %arrayidx127 = getelementptr inbounds i32, i32* %91, i64 8
  %92 = load i32, i32* %arrayidx127, align 4
  %and128 = and i32 %92, 15
  %idxprom129 = sext i32 %and128 to i64
  %arrayidx130 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx126, i64 0, i64 %idxprom129
  %93 = load i32, i32* %arrayidx130, align 4
  %94 = load i32*, i32** %statemt.addr, align 8
  %arrayidx131 = getelementptr inbounds i32, i32* %94, i64 8
  store i32 %93, i32* %arrayidx131, align 4
  %95 = load i32*, i32** %statemt.addr, align 8
  %arrayidx132 = getelementptr inbounds i32, i32* %95, i64 12
  %96 = load i32, i32* %arrayidx132, align 4
  %shr133 = ashr i32 %96, 4
  %idxprom134 = sext i32 %shr133 to i64
  %arrayidx135 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i64 0, i64 %idxprom134
  %97 = load i32*, i32** %statemt.addr, align 8
  %arrayidx136 = getelementptr inbounds i32, i32* %97, i64 12
  %98 = load i32, i32* %arrayidx136, align 4
  %and137 = and i32 %98, 15
  %idxprom138 = sext i32 %and137 to i64
  %arrayidx139 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx135, i64 0, i64 %idxprom138
  %99 = load i32, i32* %arrayidx139, align 4
  %100 = load i32*, i32** %statemt.addr, align 8
  %arrayidx140 = getelementptr inbounds i32, i32* %100, i64 12
  store i32 %99, i32* %arrayidx140, align 4
  br label %sw.epilog

sw.bb141:                                         ; preds = %entry
  %101 = load i32*, i32** %statemt.addr, align 8
  %arrayidx142 = getelementptr inbounds i32, i32* %101, i64 21
  %102 = load i32, i32* %arrayidx142, align 4
  %shr143 = ashr i32 %102, 4
  %idxprom144 = sext i32 %shr143 to i64
  %arrayidx145 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i64 0, i64 %idxprom144
  %103 = load i32*, i32** %statemt.addr, align 8
  %arrayidx146 = getelementptr inbounds i32, i32* %103, i64 21
  %104 = load i32, i32* %arrayidx146, align 4
  %and147 = and i32 %104, 15
  %idxprom148 = sext i32 %and147 to i64
  %arrayidx149 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx145, i64 0, i64 %idxprom148
  %105 = load i32, i32* %arrayidx149, align 4
  store i32 %105, i32* %temp, align 4
  %106 = load i32*, i32** %statemt.addr, align 8
  %arrayidx150 = getelementptr inbounds i32, i32* %106, i64 17
  %107 = load i32, i32* %arrayidx150, align 4
  %shr151 = ashr i32 %107, 4
  %idxprom152 = sext i32 %shr151 to i64
  %arrayidx153 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i64 0, i64 %idxprom152
  %108 = load i32*, i32** %statemt.addr, align 8
  %arrayidx154 = getelementptr inbounds i32, i32* %108, i64 17
  %109 = load i32, i32* %arrayidx154, align 4
  %and155 = and i32 %109, 15
  %idxprom156 = sext i32 %and155 to i64
  %arrayidx157 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx153, i64 0, i64 %idxprom156
  %110 = load i32, i32* %arrayidx157, align 4
  %111 = load i32*, i32** %statemt.addr, align 8
  %arrayidx158 = getelementptr inbounds i32, i32* %111, i64 21
  store i32 %110, i32* %arrayidx158, align 4
  %112 = load i32*, i32** %statemt.addr, align 8
  %arrayidx159 = getelementptr inbounds i32, i32* %112, i64 13
  %113 = load i32, i32* %arrayidx159, align 4
  %shr160 = ashr i32 %113, 4
  %idxprom161 = sext i32 %shr160 to i64
  %arrayidx162 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i64 0, i64 %idxprom161
  %114 = load i32*, i32** %statemt.addr, align 8
  %arrayidx163 = getelementptr inbounds i32, i32* %114, i64 13
  %115 = load i32, i32* %arrayidx163, align 4
  %and164 = and i32 %115, 15
  %idxprom165 = sext i32 %and164 to i64
  %arrayidx166 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx162, i64 0, i64 %idxprom165
  %116 = load i32, i32* %arrayidx166, align 4
  %117 = load i32*, i32** %statemt.addr, align 8
  %arrayidx167 = getelementptr inbounds i32, i32* %117, i64 17
  store i32 %116, i32* %arrayidx167, align 4
  %118 = load i32*, i32** %statemt.addr, align 8
  %arrayidx168 = getelementptr inbounds i32, i32* %118, i64 9
  %119 = load i32, i32* %arrayidx168, align 4
  %shr169 = ashr i32 %119, 4
  %idxprom170 = sext i32 %shr169 to i64
  %arrayidx171 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i64 0, i64 %idxprom170
  %120 = load i32*, i32** %statemt.addr, align 8
  %arrayidx172 = getelementptr inbounds i32, i32* %120, i64 9
  %121 = load i32, i32* %arrayidx172, align 4
  %and173 = and i32 %121, 15
  %idxprom174 = sext i32 %and173 to i64
  %arrayidx175 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx171, i64 0, i64 %idxprom174
  %122 = load i32, i32* %arrayidx175, align 4
  %123 = load i32*, i32** %statemt.addr, align 8
  %arrayidx176 = getelementptr inbounds i32, i32* %123, i64 13
  store i32 %122, i32* %arrayidx176, align 4
  %124 = load i32*, i32** %statemt.addr, align 8
  %arrayidx177 = getelementptr inbounds i32, i32* %124, i64 5
  %125 = load i32, i32* %arrayidx177, align 4
  %shr178 = ashr i32 %125, 4
  %idxprom179 = sext i32 %shr178 to i64
  %arrayidx180 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i64 0, i64 %idxprom179
  %126 = load i32*, i32** %statemt.addr, align 8
  %arrayidx181 = getelementptr inbounds i32, i32* %126, i64 5
  %127 = load i32, i32* %arrayidx181, align 4
  %and182 = and i32 %127, 15
  %idxprom183 = sext i32 %and182 to i64
  %arrayidx184 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx180, i64 0, i64 %idxprom183
  %128 = load i32, i32* %arrayidx184, align 4
  %129 = load i32*, i32** %statemt.addr, align 8
  %arrayidx185 = getelementptr inbounds i32, i32* %129, i64 9
  store i32 %128, i32* %arrayidx185, align 4
  %130 = load i32*, i32** %statemt.addr, align 8
  %arrayidx186 = getelementptr inbounds i32, i32* %130, i64 1
  %131 = load i32, i32* %arrayidx186, align 4
  %shr187 = ashr i32 %131, 4
  %idxprom188 = sext i32 %shr187 to i64
  %arrayidx189 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i64 0, i64 %idxprom188
  %132 = load i32*, i32** %statemt.addr, align 8
  %arrayidx190 = getelementptr inbounds i32, i32* %132, i64 1
  %133 = load i32, i32* %arrayidx190, align 4
  %and191 = and i32 %133, 15
  %idxprom192 = sext i32 %and191 to i64
  %arrayidx193 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx189, i64 0, i64 %idxprom192
  %134 = load i32, i32* %arrayidx193, align 4
  %135 = load i32*, i32** %statemt.addr, align 8
  %arrayidx194 = getelementptr inbounds i32, i32* %135, i64 5
  store i32 %134, i32* %arrayidx194, align 4
  %136 = load i32, i32* %temp, align 4
  %137 = load i32*, i32** %statemt.addr, align 8
  %arrayidx195 = getelementptr inbounds i32, i32* %137, i64 1
  store i32 %136, i32* %arrayidx195, align 4
  %138 = load i32*, i32** %statemt.addr, align 8
  %arrayidx196 = getelementptr inbounds i32, i32* %138, i64 22
  %139 = load i32, i32* %arrayidx196, align 4
  %shr197 = ashr i32 %139, 4
  %idxprom198 = sext i32 %shr197 to i64
  %arrayidx199 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i64 0, i64 %idxprom198
  %140 = load i32*, i32** %statemt.addr, align 8
  %arrayidx200 = getelementptr inbounds i32, i32* %140, i64 22
  %141 = load i32, i32* %arrayidx200, align 4
  %and201 = and i32 %141, 15
  %idxprom202 = sext i32 %and201 to i64
  %arrayidx203 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx199, i64 0, i64 %idxprom202
  %142 = load i32, i32* %arrayidx203, align 4
  store i32 %142, i32* %temp, align 4
  %143 = load i32*, i32** %statemt.addr, align 8
  %arrayidx204 = getelementptr inbounds i32, i32* %143, i64 14
  %144 = load i32, i32* %arrayidx204, align 4
  %shr205 = ashr i32 %144, 4
  %idxprom206 = sext i32 %shr205 to i64
  %arrayidx207 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i64 0, i64 %idxprom206
  %145 = load i32*, i32** %statemt.addr, align 8
  %arrayidx208 = getelementptr inbounds i32, i32* %145, i64 14
  %146 = load i32, i32* %arrayidx208, align 4
  %and209 = and i32 %146, 15
  %idxprom210 = sext i32 %and209 to i64
  %arrayidx211 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx207, i64 0, i64 %idxprom210
  %147 = load i32, i32* %arrayidx211, align 4
  %148 = load i32*, i32** %statemt.addr, align 8
  %arrayidx212 = getelementptr inbounds i32, i32* %148, i64 22
  store i32 %147, i32* %arrayidx212, align 4
  %149 = load i32*, i32** %statemt.addr, align 8
  %arrayidx213 = getelementptr inbounds i32, i32* %149, i64 6
  %150 = load i32, i32* %arrayidx213, align 4
  %shr214 = ashr i32 %150, 4
  %idxprom215 = sext i32 %shr214 to i64
  %arrayidx216 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i64 0, i64 %idxprom215
  %151 = load i32*, i32** %statemt.addr, align 8
  %arrayidx217 = getelementptr inbounds i32, i32* %151, i64 6
  %152 = load i32, i32* %arrayidx217, align 4
  %and218 = and i32 %152, 15
  %idxprom219 = sext i32 %and218 to i64
  %arrayidx220 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx216, i64 0, i64 %idxprom219
  %153 = load i32, i32* %arrayidx220, align 4
  %154 = load i32*, i32** %statemt.addr, align 8
  %arrayidx221 = getelementptr inbounds i32, i32* %154, i64 14
  store i32 %153, i32* %arrayidx221, align 4
  %155 = load i32, i32* %temp, align 4
  %156 = load i32*, i32** %statemt.addr, align 8
  %arrayidx222 = getelementptr inbounds i32, i32* %156, i64 6
  store i32 %155, i32* %arrayidx222, align 4
  %157 = load i32*, i32** %statemt.addr, align 8
  %arrayidx223 = getelementptr inbounds i32, i32* %157, i64 18
  %158 = load i32, i32* %arrayidx223, align 4
  %shr224 = ashr i32 %158, 4
  %idxprom225 = sext i32 %shr224 to i64
  %arrayidx226 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i64 0, i64 %idxprom225
  %159 = load i32*, i32** %statemt.addr, align 8
  %arrayidx227 = getelementptr inbounds i32, i32* %159, i64 18
  %160 = load i32, i32* %arrayidx227, align 4
  %and228 = and i32 %160, 15
  %idxprom229 = sext i32 %and228 to i64
  %arrayidx230 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx226, i64 0, i64 %idxprom229
  %161 = load i32, i32* %arrayidx230, align 4
  store i32 %161, i32* %temp, align 4
  %162 = load i32*, i32** %statemt.addr, align 8
  %arrayidx231 = getelementptr inbounds i32, i32* %162, i64 10
  %163 = load i32, i32* %arrayidx231, align 4
  %shr232 = ashr i32 %163, 4
  %idxprom233 = sext i32 %shr232 to i64
  %arrayidx234 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i64 0, i64 %idxprom233
  %164 = load i32*, i32** %statemt.addr, align 8
  %arrayidx235 = getelementptr inbounds i32, i32* %164, i64 10
  %165 = load i32, i32* %arrayidx235, align 4
  %and236 = and i32 %165, 15
  %idxprom237 = sext i32 %and236 to i64
  %arrayidx238 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx234, i64 0, i64 %idxprom237
  %166 = load i32, i32* %arrayidx238, align 4
  %167 = load i32*, i32** %statemt.addr, align 8
  %arrayidx239 = getelementptr inbounds i32, i32* %167, i64 18
  store i32 %166, i32* %arrayidx239, align 4
  %168 = load i32*, i32** %statemt.addr, align 8
  %arrayidx240 = getelementptr inbounds i32, i32* %168, i64 2
  %169 = load i32, i32* %arrayidx240, align 4
  %shr241 = ashr i32 %169, 4
  %idxprom242 = sext i32 %shr241 to i64
  %arrayidx243 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i64 0, i64 %idxprom242
  %170 = load i32*, i32** %statemt.addr, align 8
  %arrayidx244 = getelementptr inbounds i32, i32* %170, i64 2
  %171 = load i32, i32* %arrayidx244, align 4
  %and245 = and i32 %171, 15
  %idxprom246 = sext i32 %and245 to i64
  %arrayidx247 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx243, i64 0, i64 %idxprom246
  %172 = load i32, i32* %arrayidx247, align 4
  %173 = load i32*, i32** %statemt.addr, align 8
  %arrayidx248 = getelementptr inbounds i32, i32* %173, i64 10
  store i32 %172, i32* %arrayidx248, align 4
  %174 = load i32, i32* %temp, align 4
  %175 = load i32*, i32** %statemt.addr, align 8
  %arrayidx249 = getelementptr inbounds i32, i32* %175, i64 2
  store i32 %174, i32* %arrayidx249, align 4
  %176 = load i32*, i32** %statemt.addr, align 8
  %arrayidx250 = getelementptr inbounds i32, i32* %176, i64 15
  %177 = load i32, i32* %arrayidx250, align 4
  %shr251 = ashr i32 %177, 4
  %idxprom252 = sext i32 %shr251 to i64
  %arrayidx253 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i64 0, i64 %idxprom252
  %178 = load i32*, i32** %statemt.addr, align 8
  %arrayidx254 = getelementptr inbounds i32, i32* %178, i64 15
  %179 = load i32, i32* %arrayidx254, align 4
  %and255 = and i32 %179, 15
  %idxprom256 = sext i32 %and255 to i64
  %arrayidx257 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx253, i64 0, i64 %idxprom256
  %180 = load i32, i32* %arrayidx257, align 4
  store i32 %180, i32* %temp, align 4
  %181 = load i32*, i32** %statemt.addr, align 8
  %arrayidx258 = getelementptr inbounds i32, i32* %181, i64 3
  %182 = load i32, i32* %arrayidx258, align 4
  %shr259 = ashr i32 %182, 4
  %idxprom260 = sext i32 %shr259 to i64
  %arrayidx261 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i64 0, i64 %idxprom260
  %183 = load i32*, i32** %statemt.addr, align 8
  %arrayidx262 = getelementptr inbounds i32, i32* %183, i64 3
  %184 = load i32, i32* %arrayidx262, align 4
  %and263 = and i32 %184, 15
  %idxprom264 = sext i32 %and263 to i64
  %arrayidx265 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx261, i64 0, i64 %idxprom264
  %185 = load i32, i32* %arrayidx265, align 4
  %186 = load i32*, i32** %statemt.addr, align 8
  %arrayidx266 = getelementptr inbounds i32, i32* %186, i64 15
  store i32 %185, i32* %arrayidx266, align 4
  %187 = load i32, i32* %temp, align 4
  %188 = load i32*, i32** %statemt.addr, align 8
  %arrayidx267 = getelementptr inbounds i32, i32* %188, i64 3
  store i32 %187, i32* %arrayidx267, align 4
  %189 = load i32*, i32** %statemt.addr, align 8
  %arrayidx268 = getelementptr inbounds i32, i32* %189, i64 19
  %190 = load i32, i32* %arrayidx268, align 4
  %shr269 = ashr i32 %190, 4
  %idxprom270 = sext i32 %shr269 to i64
  %arrayidx271 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i64 0, i64 %idxprom270
  %191 = load i32*, i32** %statemt.addr, align 8
  %arrayidx272 = getelementptr inbounds i32, i32* %191, i64 19
  %192 = load i32, i32* %arrayidx272, align 4
  %and273 = and i32 %192, 15
  %idxprom274 = sext i32 %and273 to i64
  %arrayidx275 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx271, i64 0, i64 %idxprom274
  %193 = load i32, i32* %arrayidx275, align 4
  store i32 %193, i32* %temp, align 4
  %194 = load i32*, i32** %statemt.addr, align 8
  %arrayidx276 = getelementptr inbounds i32, i32* %194, i64 7
  %195 = load i32, i32* %arrayidx276, align 4
  %shr277 = ashr i32 %195, 4
  %idxprom278 = sext i32 %shr277 to i64
  %arrayidx279 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i64 0, i64 %idxprom278
  %196 = load i32*, i32** %statemt.addr, align 8
  %arrayidx280 = getelementptr inbounds i32, i32* %196, i64 7
  %197 = load i32, i32* %arrayidx280, align 4
  %and281 = and i32 %197, 15
  %idxprom282 = sext i32 %and281 to i64
  %arrayidx283 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx279, i64 0, i64 %idxprom282
  %198 = load i32, i32* %arrayidx283, align 4
  %199 = load i32*, i32** %statemt.addr, align 8
  %arrayidx284 = getelementptr inbounds i32, i32* %199, i64 19
  store i32 %198, i32* %arrayidx284, align 4
  %200 = load i32, i32* %temp, align 4
  %201 = load i32*, i32** %statemt.addr, align 8
  %arrayidx285 = getelementptr inbounds i32, i32* %201, i64 7
  store i32 %200, i32* %arrayidx285, align 4
  %202 = load i32*, i32** %statemt.addr, align 8
  %arrayidx286 = getelementptr inbounds i32, i32* %202, i64 23
  %203 = load i32, i32* %arrayidx286, align 4
  %shr287 = ashr i32 %203, 4
  %idxprom288 = sext i32 %shr287 to i64
  %arrayidx289 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i64 0, i64 %idxprom288
  %204 = load i32*, i32** %statemt.addr, align 8
  %arrayidx290 = getelementptr inbounds i32, i32* %204, i64 23
  %205 = load i32, i32* %arrayidx290, align 4
  %and291 = and i32 %205, 15
  %idxprom292 = sext i32 %and291 to i64
  %arrayidx293 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx289, i64 0, i64 %idxprom292
  %206 = load i32, i32* %arrayidx293, align 4
  store i32 %206, i32* %temp, align 4
  %207 = load i32*, i32** %statemt.addr, align 8
  %arrayidx294 = getelementptr inbounds i32, i32* %207, i64 11
  %208 = load i32, i32* %arrayidx294, align 4
  %shr295 = ashr i32 %208, 4
  %idxprom296 = sext i32 %shr295 to i64
  %arrayidx297 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i64 0, i64 %idxprom296
  %209 = load i32*, i32** %statemt.addr, align 8
  %arrayidx298 = getelementptr inbounds i32, i32* %209, i64 11
  %210 = load i32, i32* %arrayidx298, align 4
  %and299 = and i32 %210, 15
  %idxprom300 = sext i32 %and299 to i64
  %arrayidx301 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx297, i64 0, i64 %idxprom300
  %211 = load i32, i32* %arrayidx301, align 4
  %212 = load i32*, i32** %statemt.addr, align 8
  %arrayidx302 = getelementptr inbounds i32, i32* %212, i64 23
  store i32 %211, i32* %arrayidx302, align 4
  %213 = load i32, i32* %temp, align 4
  %214 = load i32*, i32** %statemt.addr, align 8
  %arrayidx303 = getelementptr inbounds i32, i32* %214, i64 11
  store i32 %213, i32* %arrayidx303, align 4
  %215 = load i32*, i32** %statemt.addr, align 8
  %arrayidx304 = getelementptr inbounds i32, i32* %215, i64 0
  %216 = load i32, i32* %arrayidx304, align 4
  %shr305 = ashr i32 %216, 4
  %idxprom306 = sext i32 %shr305 to i64
  %arrayidx307 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i64 0, i64 %idxprom306
  %217 = load i32*, i32** %statemt.addr, align 8
  %arrayidx308 = getelementptr inbounds i32, i32* %217, i64 0
  %218 = load i32, i32* %arrayidx308, align 4
  %and309 = and i32 %218, 15
  %idxprom310 = sext i32 %and309 to i64
  %arrayidx311 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx307, i64 0, i64 %idxprom310
  %219 = load i32, i32* %arrayidx311, align 4
  %220 = load i32*, i32** %statemt.addr, align 8
  %arrayidx312 = getelementptr inbounds i32, i32* %220, i64 0
  store i32 %219, i32* %arrayidx312, align 4
  %221 = load i32*, i32** %statemt.addr, align 8
  %arrayidx313 = getelementptr inbounds i32, i32* %221, i64 4
  %222 = load i32, i32* %arrayidx313, align 4
  %shr314 = ashr i32 %222, 4
  %idxprom315 = sext i32 %shr314 to i64
  %arrayidx316 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i64 0, i64 %idxprom315
  %223 = load i32*, i32** %statemt.addr, align 8
  %arrayidx317 = getelementptr inbounds i32, i32* %223, i64 4
  %224 = load i32, i32* %arrayidx317, align 4
  %and318 = and i32 %224, 15
  %idxprom319 = sext i32 %and318 to i64
  %arrayidx320 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx316, i64 0, i64 %idxprom319
  %225 = load i32, i32* %arrayidx320, align 4
  %226 = load i32*, i32** %statemt.addr, align 8
  %arrayidx321 = getelementptr inbounds i32, i32* %226, i64 4
  store i32 %225, i32* %arrayidx321, align 4
  %227 = load i32*, i32** %statemt.addr, align 8
  %arrayidx322 = getelementptr inbounds i32, i32* %227, i64 8
  %228 = load i32, i32* %arrayidx322, align 4
  %shr323 = ashr i32 %228, 4
  %idxprom324 = sext i32 %shr323 to i64
  %arrayidx325 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i64 0, i64 %idxprom324
  %229 = load i32*, i32** %statemt.addr, align 8
  %arrayidx326 = getelementptr inbounds i32, i32* %229, i64 8
  %230 = load i32, i32* %arrayidx326, align 4
  %and327 = and i32 %230, 15
  %idxprom328 = sext i32 %and327 to i64
  %arrayidx329 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx325, i64 0, i64 %idxprom328
  %231 = load i32, i32* %arrayidx329, align 4
  %232 = load i32*, i32** %statemt.addr, align 8
  %arrayidx330 = getelementptr inbounds i32, i32* %232, i64 8
  store i32 %231, i32* %arrayidx330, align 4
  %233 = load i32*, i32** %statemt.addr, align 8
  %arrayidx331 = getelementptr inbounds i32, i32* %233, i64 12
  %234 = load i32, i32* %arrayidx331, align 4
  %shr332 = ashr i32 %234, 4
  %idxprom333 = sext i32 %shr332 to i64
  %arrayidx334 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i64 0, i64 %idxprom333
  %235 = load i32*, i32** %statemt.addr, align 8
  %arrayidx335 = getelementptr inbounds i32, i32* %235, i64 12
  %236 = load i32, i32* %arrayidx335, align 4
  %and336 = and i32 %236, 15
  %idxprom337 = sext i32 %and336 to i64
  %arrayidx338 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx334, i64 0, i64 %idxprom337
  %237 = load i32, i32* %arrayidx338, align 4
  %238 = load i32*, i32** %statemt.addr, align 8
  %arrayidx339 = getelementptr inbounds i32, i32* %238, i64 12
  store i32 %237, i32* %arrayidx339, align 4
  %239 = load i32*, i32** %statemt.addr, align 8
  %arrayidx340 = getelementptr inbounds i32, i32* %239, i64 16
  %240 = load i32, i32* %arrayidx340, align 4
  %shr341 = ashr i32 %240, 4
  %idxprom342 = sext i32 %shr341 to i64
  %arrayidx343 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i64 0, i64 %idxprom342
  %241 = load i32*, i32** %statemt.addr, align 8
  %arrayidx344 = getelementptr inbounds i32, i32* %241, i64 16
  %242 = load i32, i32* %arrayidx344, align 4
  %and345 = and i32 %242, 15
  %idxprom346 = sext i32 %and345 to i64
  %arrayidx347 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx343, i64 0, i64 %idxprom346
  %243 = load i32, i32* %arrayidx347, align 4
  %244 = load i32*, i32** %statemt.addr, align 8
  %arrayidx348 = getelementptr inbounds i32, i32* %244, i64 16
  store i32 %243, i32* %arrayidx348, align 4
  %245 = load i32*, i32** %statemt.addr, align 8
  %arrayidx349 = getelementptr inbounds i32, i32* %245, i64 20
  %246 = load i32, i32* %arrayidx349, align 4
  %shr350 = ashr i32 %246, 4
  %idxprom351 = sext i32 %shr350 to i64
  %arrayidx352 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i64 0, i64 %idxprom351
  %247 = load i32*, i32** %statemt.addr, align 8
  %arrayidx353 = getelementptr inbounds i32, i32* %247, i64 20
  %248 = load i32, i32* %arrayidx353, align 4
  %and354 = and i32 %248, 15
  %idxprom355 = sext i32 %and354 to i64
  %arrayidx356 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx352, i64 0, i64 %idxprom355
  %249 = load i32, i32* %arrayidx356, align 4
  %250 = load i32*, i32** %statemt.addr, align 8
  %arrayidx357 = getelementptr inbounds i32, i32* %250, i64 20
  store i32 %249, i32* %arrayidx357, align 4
  br label %sw.epilog

sw.bb358:                                         ; preds = %entry
  %251 = load i32*, i32** %statemt.addr, align 8
  %arrayidx359 = getelementptr inbounds i32, i32* %251, i64 29
  %252 = load i32, i32* %arrayidx359, align 4
  %shr360 = ashr i32 %252, 4
  %idxprom361 = sext i32 %shr360 to i64
  %arrayidx362 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i64 0, i64 %idxprom361
  %253 = load i32*, i32** %statemt.addr, align 8
  %arrayidx363 = getelementptr inbounds i32, i32* %253, i64 29
  %254 = load i32, i32* %arrayidx363, align 4
  %and364 = and i32 %254, 15
  %idxprom365 = sext i32 %and364 to i64
  %arrayidx366 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx362, i64 0, i64 %idxprom365
  %255 = load i32, i32* %arrayidx366, align 4
  store i32 %255, i32* %temp, align 4
  %256 = load i32*, i32** %statemt.addr, align 8
  %arrayidx367 = getelementptr inbounds i32, i32* %256, i64 25
  %257 = load i32, i32* %arrayidx367, align 4
  %shr368 = ashr i32 %257, 4
  %idxprom369 = sext i32 %shr368 to i64
  %arrayidx370 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i64 0, i64 %idxprom369
  %258 = load i32*, i32** %statemt.addr, align 8
  %arrayidx371 = getelementptr inbounds i32, i32* %258, i64 25
  %259 = load i32, i32* %arrayidx371, align 4
  %and372 = and i32 %259, 15
  %idxprom373 = sext i32 %and372 to i64
  %arrayidx374 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx370, i64 0, i64 %idxprom373
  %260 = load i32, i32* %arrayidx374, align 4
  %261 = load i32*, i32** %statemt.addr, align 8
  %arrayidx375 = getelementptr inbounds i32, i32* %261, i64 29
  store i32 %260, i32* %arrayidx375, align 4
  %262 = load i32*, i32** %statemt.addr, align 8
  %arrayidx376 = getelementptr inbounds i32, i32* %262, i64 21
  %263 = load i32, i32* %arrayidx376, align 4
  %shr377 = ashr i32 %263, 4
  %idxprom378 = sext i32 %shr377 to i64
  %arrayidx379 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i64 0, i64 %idxprom378
  %264 = load i32*, i32** %statemt.addr, align 8
  %arrayidx380 = getelementptr inbounds i32, i32* %264, i64 21
  %265 = load i32, i32* %arrayidx380, align 4
  %and381 = and i32 %265, 15
  %idxprom382 = sext i32 %and381 to i64
  %arrayidx383 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx379, i64 0, i64 %idxprom382
  %266 = load i32, i32* %arrayidx383, align 4
  %267 = load i32*, i32** %statemt.addr, align 8
  %arrayidx384 = getelementptr inbounds i32, i32* %267, i64 25
  store i32 %266, i32* %arrayidx384, align 4
  %268 = load i32*, i32** %statemt.addr, align 8
  %arrayidx385 = getelementptr inbounds i32, i32* %268, i64 17
  %269 = load i32, i32* %arrayidx385, align 4
  %shr386 = ashr i32 %269, 4
  %idxprom387 = sext i32 %shr386 to i64
  %arrayidx388 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i64 0, i64 %idxprom387
  %270 = load i32*, i32** %statemt.addr, align 8
  %arrayidx389 = getelementptr inbounds i32, i32* %270, i64 17
  %271 = load i32, i32* %arrayidx389, align 4
  %and390 = and i32 %271, 15
  %idxprom391 = sext i32 %and390 to i64
  %arrayidx392 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx388, i64 0, i64 %idxprom391
  %272 = load i32, i32* %arrayidx392, align 4
  %273 = load i32*, i32** %statemt.addr, align 8
  %arrayidx393 = getelementptr inbounds i32, i32* %273, i64 21
  store i32 %272, i32* %arrayidx393, align 4
  %274 = load i32*, i32** %statemt.addr, align 8
  %arrayidx394 = getelementptr inbounds i32, i32* %274, i64 13
  %275 = load i32, i32* %arrayidx394, align 4
  %shr395 = ashr i32 %275, 4
  %idxprom396 = sext i32 %shr395 to i64
  %arrayidx397 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i64 0, i64 %idxprom396
  %276 = load i32*, i32** %statemt.addr, align 8
  %arrayidx398 = getelementptr inbounds i32, i32* %276, i64 13
  %277 = load i32, i32* %arrayidx398, align 4
  %and399 = and i32 %277, 15
  %idxprom400 = sext i32 %and399 to i64
  %arrayidx401 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx397, i64 0, i64 %idxprom400
  %278 = load i32, i32* %arrayidx401, align 4
  %279 = load i32*, i32** %statemt.addr, align 8
  %arrayidx402 = getelementptr inbounds i32, i32* %279, i64 17
  store i32 %278, i32* %arrayidx402, align 4
  %280 = load i32*, i32** %statemt.addr, align 8
  %arrayidx403 = getelementptr inbounds i32, i32* %280, i64 9
  %281 = load i32, i32* %arrayidx403, align 4
  %shr404 = ashr i32 %281, 4
  %idxprom405 = sext i32 %shr404 to i64
  %arrayidx406 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i64 0, i64 %idxprom405
  %282 = load i32*, i32** %statemt.addr, align 8
  %arrayidx407 = getelementptr inbounds i32, i32* %282, i64 9
  %283 = load i32, i32* %arrayidx407, align 4
  %and408 = and i32 %283, 15
  %idxprom409 = sext i32 %and408 to i64
  %arrayidx410 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx406, i64 0, i64 %idxprom409
  %284 = load i32, i32* %arrayidx410, align 4
  %285 = load i32*, i32** %statemt.addr, align 8
  %arrayidx411 = getelementptr inbounds i32, i32* %285, i64 13
  store i32 %284, i32* %arrayidx411, align 4
  %286 = load i32*, i32** %statemt.addr, align 8
  %arrayidx412 = getelementptr inbounds i32, i32* %286, i64 5
  %287 = load i32, i32* %arrayidx412, align 4
  %shr413 = ashr i32 %287, 4
  %idxprom414 = sext i32 %shr413 to i64
  %arrayidx415 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i64 0, i64 %idxprom414
  %288 = load i32*, i32** %statemt.addr, align 8
  %arrayidx416 = getelementptr inbounds i32, i32* %288, i64 5
  %289 = load i32, i32* %arrayidx416, align 4
  %and417 = and i32 %289, 15
  %idxprom418 = sext i32 %and417 to i64
  %arrayidx419 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx415, i64 0, i64 %idxprom418
  %290 = load i32, i32* %arrayidx419, align 4
  %291 = load i32*, i32** %statemt.addr, align 8
  %arrayidx420 = getelementptr inbounds i32, i32* %291, i64 9
  store i32 %290, i32* %arrayidx420, align 4
  %292 = load i32*, i32** %statemt.addr, align 8
  %arrayidx421 = getelementptr inbounds i32, i32* %292, i64 1
  %293 = load i32, i32* %arrayidx421, align 4
  %shr422 = ashr i32 %293, 4
  %idxprom423 = sext i32 %shr422 to i64
  %arrayidx424 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i64 0, i64 %idxprom423
  %294 = load i32*, i32** %statemt.addr, align 8
  %arrayidx425 = getelementptr inbounds i32, i32* %294, i64 1
  %295 = load i32, i32* %arrayidx425, align 4
  %and426 = and i32 %295, 15
  %idxprom427 = sext i32 %and426 to i64
  %arrayidx428 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx424, i64 0, i64 %idxprom427
  %296 = load i32, i32* %arrayidx428, align 4
  %297 = load i32*, i32** %statemt.addr, align 8
  %arrayidx429 = getelementptr inbounds i32, i32* %297, i64 5
  store i32 %296, i32* %arrayidx429, align 4
  %298 = load i32, i32* %temp, align 4
  %299 = load i32*, i32** %statemt.addr, align 8
  %arrayidx430 = getelementptr inbounds i32, i32* %299, i64 1
  store i32 %298, i32* %arrayidx430, align 4
  %300 = load i32*, i32** %statemt.addr, align 8
  %arrayidx431 = getelementptr inbounds i32, i32* %300, i64 30
  %301 = load i32, i32* %arrayidx431, align 4
  %shr432 = ashr i32 %301, 4
  %idxprom433 = sext i32 %shr432 to i64
  %arrayidx434 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i64 0, i64 %idxprom433
  %302 = load i32*, i32** %statemt.addr, align 8
  %arrayidx435 = getelementptr inbounds i32, i32* %302, i64 30
  %303 = load i32, i32* %arrayidx435, align 4
  %and436 = and i32 %303, 15
  %idxprom437 = sext i32 %and436 to i64
  %arrayidx438 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx434, i64 0, i64 %idxprom437
  %304 = load i32, i32* %arrayidx438, align 4
  store i32 %304, i32* %temp, align 4
  %305 = load i32*, i32** %statemt.addr, align 8
  %arrayidx439 = getelementptr inbounds i32, i32* %305, i64 18
  %306 = load i32, i32* %arrayidx439, align 4
  %shr440 = ashr i32 %306, 4
  %idxprom441 = sext i32 %shr440 to i64
  %arrayidx442 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i64 0, i64 %idxprom441
  %307 = load i32*, i32** %statemt.addr, align 8
  %arrayidx443 = getelementptr inbounds i32, i32* %307, i64 18
  %308 = load i32, i32* %arrayidx443, align 4
  %and444 = and i32 %308, 15
  %idxprom445 = sext i32 %and444 to i64
  %arrayidx446 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx442, i64 0, i64 %idxprom445
  %309 = load i32, i32* %arrayidx446, align 4
  %310 = load i32*, i32** %statemt.addr, align 8
  %arrayidx447 = getelementptr inbounds i32, i32* %310, i64 30
  store i32 %309, i32* %arrayidx447, align 4
  %311 = load i32*, i32** %statemt.addr, align 8
  %arrayidx448 = getelementptr inbounds i32, i32* %311, i64 6
  %312 = load i32, i32* %arrayidx448, align 4
  %shr449 = ashr i32 %312, 4
  %idxprom450 = sext i32 %shr449 to i64
  %arrayidx451 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i64 0, i64 %idxprom450
  %313 = load i32*, i32** %statemt.addr, align 8
  %arrayidx452 = getelementptr inbounds i32, i32* %313, i64 6
  %314 = load i32, i32* %arrayidx452, align 4
  %and453 = and i32 %314, 15
  %idxprom454 = sext i32 %and453 to i64
  %arrayidx455 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx451, i64 0, i64 %idxprom454
  %315 = load i32, i32* %arrayidx455, align 4
  %316 = load i32*, i32** %statemt.addr, align 8
  %arrayidx456 = getelementptr inbounds i32, i32* %316, i64 18
  store i32 %315, i32* %arrayidx456, align 4
  %317 = load i32*, i32** %statemt.addr, align 8
  %arrayidx457 = getelementptr inbounds i32, i32* %317, i64 26
  %318 = load i32, i32* %arrayidx457, align 4
  %shr458 = ashr i32 %318, 4
  %idxprom459 = sext i32 %shr458 to i64
  %arrayidx460 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i64 0, i64 %idxprom459
  %319 = load i32*, i32** %statemt.addr, align 8
  %arrayidx461 = getelementptr inbounds i32, i32* %319, i64 26
  %320 = load i32, i32* %arrayidx461, align 4
  %and462 = and i32 %320, 15
  %idxprom463 = sext i32 %and462 to i64
  %arrayidx464 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx460, i64 0, i64 %idxprom463
  %321 = load i32, i32* %arrayidx464, align 4
  %322 = load i32*, i32** %statemt.addr, align 8
  %arrayidx465 = getelementptr inbounds i32, i32* %322, i64 6
  store i32 %321, i32* %arrayidx465, align 4
  %323 = load i32*, i32** %statemt.addr, align 8
  %arrayidx466 = getelementptr inbounds i32, i32* %323, i64 14
  %324 = load i32, i32* %arrayidx466, align 4
  %shr467 = ashr i32 %324, 4
  %idxprom468 = sext i32 %shr467 to i64
  %arrayidx469 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i64 0, i64 %idxprom468
  %325 = load i32*, i32** %statemt.addr, align 8
  %arrayidx470 = getelementptr inbounds i32, i32* %325, i64 14
  %326 = load i32, i32* %arrayidx470, align 4
  %and471 = and i32 %326, 15
  %idxprom472 = sext i32 %and471 to i64
  %arrayidx473 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx469, i64 0, i64 %idxprom472
  %327 = load i32, i32* %arrayidx473, align 4
  %328 = load i32*, i32** %statemt.addr, align 8
  %arrayidx474 = getelementptr inbounds i32, i32* %328, i64 26
  store i32 %327, i32* %arrayidx474, align 4
  %329 = load i32*, i32** %statemt.addr, align 8
  %arrayidx475 = getelementptr inbounds i32, i32* %329, i64 2
  %330 = load i32, i32* %arrayidx475, align 4
  %shr476 = ashr i32 %330, 4
  %idxprom477 = sext i32 %shr476 to i64
  %arrayidx478 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i64 0, i64 %idxprom477
  %331 = load i32*, i32** %statemt.addr, align 8
  %arrayidx479 = getelementptr inbounds i32, i32* %331, i64 2
  %332 = load i32, i32* %arrayidx479, align 4
  %and480 = and i32 %332, 15
  %idxprom481 = sext i32 %and480 to i64
  %arrayidx482 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx478, i64 0, i64 %idxprom481
  %333 = load i32, i32* %arrayidx482, align 4
  %334 = load i32*, i32** %statemt.addr, align 8
  %arrayidx483 = getelementptr inbounds i32, i32* %334, i64 14
  store i32 %333, i32* %arrayidx483, align 4
  %335 = load i32*, i32** %statemt.addr, align 8
  %arrayidx484 = getelementptr inbounds i32, i32* %335, i64 22
  %336 = load i32, i32* %arrayidx484, align 4
  %shr485 = ashr i32 %336, 4
  %idxprom486 = sext i32 %shr485 to i64
  %arrayidx487 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i64 0, i64 %idxprom486
  %337 = load i32*, i32** %statemt.addr, align 8
  %arrayidx488 = getelementptr inbounds i32, i32* %337, i64 22
  %338 = load i32, i32* %arrayidx488, align 4
  %and489 = and i32 %338, 15
  %idxprom490 = sext i32 %and489 to i64
  %arrayidx491 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx487, i64 0, i64 %idxprom490
  %339 = load i32, i32* %arrayidx491, align 4
  %340 = load i32*, i32** %statemt.addr, align 8
  %arrayidx492 = getelementptr inbounds i32, i32* %340, i64 2
  store i32 %339, i32* %arrayidx492, align 4
  %341 = load i32*, i32** %statemt.addr, align 8
  %arrayidx493 = getelementptr inbounds i32, i32* %341, i64 10
  %342 = load i32, i32* %arrayidx493, align 4
  %shr494 = ashr i32 %342, 4
  %idxprom495 = sext i32 %shr494 to i64
  %arrayidx496 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i64 0, i64 %idxprom495
  %343 = load i32*, i32** %statemt.addr, align 8
  %arrayidx497 = getelementptr inbounds i32, i32* %343, i64 10
  %344 = load i32, i32* %arrayidx497, align 4
  %and498 = and i32 %344, 15
  %idxprom499 = sext i32 %and498 to i64
  %arrayidx500 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx496, i64 0, i64 %idxprom499
  %345 = load i32, i32* %arrayidx500, align 4
  %346 = load i32*, i32** %statemt.addr, align 8
  %arrayidx501 = getelementptr inbounds i32, i32* %346, i64 22
  store i32 %345, i32* %arrayidx501, align 4
  %347 = load i32, i32* %temp, align 4
  %348 = load i32*, i32** %statemt.addr, align 8
  %arrayidx502 = getelementptr inbounds i32, i32* %348, i64 10
  store i32 %347, i32* %arrayidx502, align 4
  %349 = load i32*, i32** %statemt.addr, align 8
  %arrayidx503 = getelementptr inbounds i32, i32* %349, i64 31
  %350 = load i32, i32* %arrayidx503, align 4
  %shr504 = ashr i32 %350, 4
  %idxprom505 = sext i32 %shr504 to i64
  %arrayidx506 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i64 0, i64 %idxprom505
  %351 = load i32*, i32** %statemt.addr, align 8
  %arrayidx507 = getelementptr inbounds i32, i32* %351, i64 31
  %352 = load i32, i32* %arrayidx507, align 4
  %and508 = and i32 %352, 15
  %idxprom509 = sext i32 %and508 to i64
  %arrayidx510 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx506, i64 0, i64 %idxprom509
  %353 = load i32, i32* %arrayidx510, align 4
  store i32 %353, i32* %temp, align 4
  %354 = load i32*, i32** %statemt.addr, align 8
  %arrayidx511 = getelementptr inbounds i32, i32* %354, i64 15
  %355 = load i32, i32* %arrayidx511, align 4
  %shr512 = ashr i32 %355, 4
  %idxprom513 = sext i32 %shr512 to i64
  %arrayidx514 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i64 0, i64 %idxprom513
  %356 = load i32*, i32** %statemt.addr, align 8
  %arrayidx515 = getelementptr inbounds i32, i32* %356, i64 15
  %357 = load i32, i32* %arrayidx515, align 4
  %and516 = and i32 %357, 15
  %idxprom517 = sext i32 %and516 to i64
  %arrayidx518 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx514, i64 0, i64 %idxprom517
  %358 = load i32, i32* %arrayidx518, align 4
  %359 = load i32*, i32** %statemt.addr, align 8
  %arrayidx519 = getelementptr inbounds i32, i32* %359, i64 31
  store i32 %358, i32* %arrayidx519, align 4
  %360 = load i32, i32* %temp, align 4
  %361 = load i32*, i32** %statemt.addr, align 8
  %arrayidx520 = getelementptr inbounds i32, i32* %361, i64 15
  store i32 %360, i32* %arrayidx520, align 4
  %362 = load i32*, i32** %statemt.addr, align 8
  %arrayidx521 = getelementptr inbounds i32, i32* %362, i64 27
  %363 = load i32, i32* %arrayidx521, align 4
  %shr522 = ashr i32 %363, 4
  %idxprom523 = sext i32 %shr522 to i64
  %arrayidx524 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i64 0, i64 %idxprom523
  %364 = load i32*, i32** %statemt.addr, align 8
  %arrayidx525 = getelementptr inbounds i32, i32* %364, i64 27
  %365 = load i32, i32* %arrayidx525, align 4
  %and526 = and i32 %365, 15
  %idxprom527 = sext i32 %and526 to i64
  %arrayidx528 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx524, i64 0, i64 %idxprom527
  %366 = load i32, i32* %arrayidx528, align 4
  store i32 %366, i32* %temp, align 4
  %367 = load i32*, i32** %statemt.addr, align 8
  %arrayidx529 = getelementptr inbounds i32, i32* %367, i64 11
  %368 = load i32, i32* %arrayidx529, align 4
  %shr530 = ashr i32 %368, 4
  %idxprom531 = sext i32 %shr530 to i64
  %arrayidx532 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i64 0, i64 %idxprom531
  %369 = load i32*, i32** %statemt.addr, align 8
  %arrayidx533 = getelementptr inbounds i32, i32* %369, i64 11
  %370 = load i32, i32* %arrayidx533, align 4
  %and534 = and i32 %370, 15
  %idxprom535 = sext i32 %and534 to i64
  %arrayidx536 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx532, i64 0, i64 %idxprom535
  %371 = load i32, i32* %arrayidx536, align 4
  %372 = load i32*, i32** %statemt.addr, align 8
  %arrayidx537 = getelementptr inbounds i32, i32* %372, i64 27
  store i32 %371, i32* %arrayidx537, align 4
  %373 = load i32, i32* %temp, align 4
  %374 = load i32*, i32** %statemt.addr, align 8
  %arrayidx538 = getelementptr inbounds i32, i32* %374, i64 11
  store i32 %373, i32* %arrayidx538, align 4
  %375 = load i32*, i32** %statemt.addr, align 8
  %arrayidx539 = getelementptr inbounds i32, i32* %375, i64 23
  %376 = load i32, i32* %arrayidx539, align 4
  %shr540 = ashr i32 %376, 4
  %idxprom541 = sext i32 %shr540 to i64
  %arrayidx542 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i64 0, i64 %idxprom541
  %377 = load i32*, i32** %statemt.addr, align 8
  %arrayidx543 = getelementptr inbounds i32, i32* %377, i64 23
  %378 = load i32, i32* %arrayidx543, align 4
  %and544 = and i32 %378, 15
  %idxprom545 = sext i32 %and544 to i64
  %arrayidx546 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx542, i64 0, i64 %idxprom545
  %379 = load i32, i32* %arrayidx546, align 4
  store i32 %379, i32* %temp, align 4
  %380 = load i32*, i32** %statemt.addr, align 8
  %arrayidx547 = getelementptr inbounds i32, i32* %380, i64 7
  %381 = load i32, i32* %arrayidx547, align 4
  %shr548 = ashr i32 %381, 4
  %idxprom549 = sext i32 %shr548 to i64
  %arrayidx550 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i64 0, i64 %idxprom549
  %382 = load i32*, i32** %statemt.addr, align 8
  %arrayidx551 = getelementptr inbounds i32, i32* %382, i64 7
  %383 = load i32, i32* %arrayidx551, align 4
  %and552 = and i32 %383, 15
  %idxprom553 = sext i32 %and552 to i64
  %arrayidx554 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx550, i64 0, i64 %idxprom553
  %384 = load i32, i32* %arrayidx554, align 4
  %385 = load i32*, i32** %statemt.addr, align 8
  %arrayidx555 = getelementptr inbounds i32, i32* %385, i64 23
  store i32 %384, i32* %arrayidx555, align 4
  %386 = load i32, i32* %temp, align 4
  %387 = load i32*, i32** %statemt.addr, align 8
  %arrayidx556 = getelementptr inbounds i32, i32* %387, i64 7
  store i32 %386, i32* %arrayidx556, align 4
  %388 = load i32*, i32** %statemt.addr, align 8
  %arrayidx557 = getelementptr inbounds i32, i32* %388, i64 19
  %389 = load i32, i32* %arrayidx557, align 4
  %shr558 = ashr i32 %389, 4
  %idxprom559 = sext i32 %shr558 to i64
  %arrayidx560 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i64 0, i64 %idxprom559
  %390 = load i32*, i32** %statemt.addr, align 8
  %arrayidx561 = getelementptr inbounds i32, i32* %390, i64 19
  %391 = load i32, i32* %arrayidx561, align 4
  %and562 = and i32 %391, 15
  %idxprom563 = sext i32 %and562 to i64
  %arrayidx564 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx560, i64 0, i64 %idxprom563
  %392 = load i32, i32* %arrayidx564, align 4
  store i32 %392, i32* %temp, align 4
  %393 = load i32*, i32** %statemt.addr, align 8
  %arrayidx565 = getelementptr inbounds i32, i32* %393, i64 3
  %394 = load i32, i32* %arrayidx565, align 4
  %shr566 = ashr i32 %394, 4
  %idxprom567 = sext i32 %shr566 to i64
  %arrayidx568 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i64 0, i64 %idxprom567
  %395 = load i32*, i32** %statemt.addr, align 8
  %arrayidx569 = getelementptr inbounds i32, i32* %395, i64 3
  %396 = load i32, i32* %arrayidx569, align 4
  %and570 = and i32 %396, 15
  %idxprom571 = sext i32 %and570 to i64
  %arrayidx572 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx568, i64 0, i64 %idxprom571
  %397 = load i32, i32* %arrayidx572, align 4
  %398 = load i32*, i32** %statemt.addr, align 8
  %arrayidx573 = getelementptr inbounds i32, i32* %398, i64 19
  store i32 %397, i32* %arrayidx573, align 4
  %399 = load i32, i32* %temp, align 4
  %400 = load i32*, i32** %statemt.addr, align 8
  %arrayidx574 = getelementptr inbounds i32, i32* %400, i64 3
  store i32 %399, i32* %arrayidx574, align 4
  %401 = load i32*, i32** %statemt.addr, align 8
  %arrayidx575 = getelementptr inbounds i32, i32* %401, i64 0
  %402 = load i32, i32* %arrayidx575, align 4
  %shr576 = ashr i32 %402, 4
  %idxprom577 = sext i32 %shr576 to i64
  %arrayidx578 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i64 0, i64 %idxprom577
  %403 = load i32*, i32** %statemt.addr, align 8
  %arrayidx579 = getelementptr inbounds i32, i32* %403, i64 0
  %404 = load i32, i32* %arrayidx579, align 4
  %and580 = and i32 %404, 15
  %idxprom581 = sext i32 %and580 to i64
  %arrayidx582 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx578, i64 0, i64 %idxprom581
  %405 = load i32, i32* %arrayidx582, align 4
  %406 = load i32*, i32** %statemt.addr, align 8
  %arrayidx583 = getelementptr inbounds i32, i32* %406, i64 0
  store i32 %405, i32* %arrayidx583, align 4
  %407 = load i32*, i32** %statemt.addr, align 8
  %arrayidx584 = getelementptr inbounds i32, i32* %407, i64 4
  %408 = load i32, i32* %arrayidx584, align 4
  %shr585 = ashr i32 %408, 4
  %idxprom586 = sext i32 %shr585 to i64
  %arrayidx587 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i64 0, i64 %idxprom586
  %409 = load i32*, i32** %statemt.addr, align 8
  %arrayidx588 = getelementptr inbounds i32, i32* %409, i64 4
  %410 = load i32, i32* %arrayidx588, align 4
  %and589 = and i32 %410, 15
  %idxprom590 = sext i32 %and589 to i64
  %arrayidx591 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx587, i64 0, i64 %idxprom590
  %411 = load i32, i32* %arrayidx591, align 4
  %412 = load i32*, i32** %statemt.addr, align 8
  %arrayidx592 = getelementptr inbounds i32, i32* %412, i64 4
  store i32 %411, i32* %arrayidx592, align 4
  %413 = load i32*, i32** %statemt.addr, align 8
  %arrayidx593 = getelementptr inbounds i32, i32* %413, i64 8
  %414 = load i32, i32* %arrayidx593, align 4
  %shr594 = ashr i32 %414, 4
  %idxprom595 = sext i32 %shr594 to i64
  %arrayidx596 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i64 0, i64 %idxprom595
  %415 = load i32*, i32** %statemt.addr, align 8
  %arrayidx597 = getelementptr inbounds i32, i32* %415, i64 8
  %416 = load i32, i32* %arrayidx597, align 4
  %and598 = and i32 %416, 15
  %idxprom599 = sext i32 %and598 to i64
  %arrayidx600 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx596, i64 0, i64 %idxprom599
  %417 = load i32, i32* %arrayidx600, align 4
  %418 = load i32*, i32** %statemt.addr, align 8
  %arrayidx601 = getelementptr inbounds i32, i32* %418, i64 8
  store i32 %417, i32* %arrayidx601, align 4
  %419 = load i32*, i32** %statemt.addr, align 8
  %arrayidx602 = getelementptr inbounds i32, i32* %419, i64 12
  %420 = load i32, i32* %arrayidx602, align 4
  %shr603 = ashr i32 %420, 4
  %idxprom604 = sext i32 %shr603 to i64
  %arrayidx605 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i64 0, i64 %idxprom604
  %421 = load i32*, i32** %statemt.addr, align 8
  %arrayidx606 = getelementptr inbounds i32, i32* %421, i64 12
  %422 = load i32, i32* %arrayidx606, align 4
  %and607 = and i32 %422, 15
  %idxprom608 = sext i32 %and607 to i64
  %arrayidx609 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx605, i64 0, i64 %idxprom608
  %423 = load i32, i32* %arrayidx609, align 4
  %424 = load i32*, i32** %statemt.addr, align 8
  %arrayidx610 = getelementptr inbounds i32, i32* %424, i64 12
  store i32 %423, i32* %arrayidx610, align 4
  %425 = load i32*, i32** %statemt.addr, align 8
  %arrayidx611 = getelementptr inbounds i32, i32* %425, i64 16
  %426 = load i32, i32* %arrayidx611, align 4
  %shr612 = ashr i32 %426, 4
  %idxprom613 = sext i32 %shr612 to i64
  %arrayidx614 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i64 0, i64 %idxprom613
  %427 = load i32*, i32** %statemt.addr, align 8
  %arrayidx615 = getelementptr inbounds i32, i32* %427, i64 16
  %428 = load i32, i32* %arrayidx615, align 4
  %and616 = and i32 %428, 15
  %idxprom617 = sext i32 %and616 to i64
  %arrayidx618 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx614, i64 0, i64 %idxprom617
  %429 = load i32, i32* %arrayidx618, align 4
  %430 = load i32*, i32** %statemt.addr, align 8
  %arrayidx619 = getelementptr inbounds i32, i32* %430, i64 16
  store i32 %429, i32* %arrayidx619, align 4
  %431 = load i32*, i32** %statemt.addr, align 8
  %arrayidx620 = getelementptr inbounds i32, i32* %431, i64 20
  %432 = load i32, i32* %arrayidx620, align 4
  %shr621 = ashr i32 %432, 4
  %idxprom622 = sext i32 %shr621 to i64
  %arrayidx623 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i64 0, i64 %idxprom622
  %433 = load i32*, i32** %statemt.addr, align 8
  %arrayidx624 = getelementptr inbounds i32, i32* %433, i64 20
  %434 = load i32, i32* %arrayidx624, align 4
  %and625 = and i32 %434, 15
  %idxprom626 = sext i32 %and625 to i64
  %arrayidx627 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx623, i64 0, i64 %idxprom626
  %435 = load i32, i32* %arrayidx627, align 4
  %436 = load i32*, i32** %statemt.addr, align 8
  %arrayidx628 = getelementptr inbounds i32, i32* %436, i64 20
  store i32 %435, i32* %arrayidx628, align 4
  %437 = load i32*, i32** %statemt.addr, align 8
  %arrayidx629 = getelementptr inbounds i32, i32* %437, i64 24
  %438 = load i32, i32* %arrayidx629, align 4
  %shr630 = ashr i32 %438, 4
  %idxprom631 = sext i32 %shr630 to i64
  %arrayidx632 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i64 0, i64 %idxprom631
  %439 = load i32*, i32** %statemt.addr, align 8
  %arrayidx633 = getelementptr inbounds i32, i32* %439, i64 24
  %440 = load i32, i32* %arrayidx633, align 4
  %and634 = and i32 %440, 15
  %idxprom635 = sext i32 %and634 to i64
  %arrayidx636 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx632, i64 0, i64 %idxprom635
  %441 = load i32, i32* %arrayidx636, align 4
  %442 = load i32*, i32** %statemt.addr, align 8
  %arrayidx637 = getelementptr inbounds i32, i32* %442, i64 24
  store i32 %441, i32* %arrayidx637, align 4
  %443 = load i32*, i32** %statemt.addr, align 8
  %arrayidx638 = getelementptr inbounds i32, i32* %443, i64 28
  %444 = load i32, i32* %arrayidx638, align 4
  %shr639 = ashr i32 %444, 4
  %idxprom640 = sext i32 %shr639 to i64
  %arrayidx641 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i64 0, i64 %idxprom640
  %445 = load i32*, i32** %statemt.addr, align 8
  %arrayidx642 = getelementptr inbounds i32, i32* %445, i64 28
  %446 = load i32, i32* %arrayidx642, align 4
  %and643 = and i32 %446, 15
  %idxprom644 = sext i32 %and643 to i64
  %arrayidx645 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx641, i64 0, i64 %idxprom644
  %447 = load i32, i32* %arrayidx645, align 4
  %448 = load i32*, i32** %statemt.addr, align 8
  %arrayidx646 = getelementptr inbounds i32, i32* %448, i64 28
  store i32 %447, i32* %arrayidx646, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb358, %sw.bb141, %sw.bb
  ret void
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @AddRoundKey_InversMixColumn(i32* %statemt, i32 %nb, i32 %n) #0 {
entry:
  %statemt.addr = alloca i32*, align 8
  %nb.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %ret = alloca [32 x i32], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %x = alloca i32, align 4
  store i32* %statemt, i32** %statemt.addr, align 8
  store i32 %nb, i32* %nb.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %j, align 4
  %1 = load i32, i32* %nb.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %nb.addr, align 4
  %4 = load i32, i32* %n.addr, align 4
  %mul = mul nsw i32 %3, %4
  %add = add nsw i32 %2, %mul
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds [120 x i32], [120 x i32]* getelementptr inbounds ([4 x [120 x i32]], [4 x [120 x i32]]* @word, i64 0, i64 0), i64 0, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  %6 = load i32*, i32** %statemt.addr, align 8
  %7 = load i32, i32* %j, align 4
  %mul1 = mul nsw i32 %7, 4
  %idxprom2 = sext i32 %mul1 to i64
  %arrayidx3 = getelementptr inbounds i32, i32* %6, i64 %idxprom2
  %8 = load i32, i32* %arrayidx3, align 4
  %xor = xor i32 %8, %5
  store i32 %xor, i32* %arrayidx3, align 4
  %9 = load i32, i32* %j, align 4
  %10 = load i32, i32* %nb.addr, align 4
  %11 = load i32, i32* %n.addr, align 4
  %mul4 = mul nsw i32 %10, %11
  %add5 = add nsw i32 %9, %mul4
  %idxprom6 = sext i32 %add5 to i64
  %arrayidx7 = getelementptr inbounds [120 x i32], [120 x i32]* getelementptr inbounds ([4 x [120 x i32]], [4 x [120 x i32]]* @word, i64 0, i64 1), i64 0, i64 %idxprom6
  %12 = load i32, i32* %arrayidx7, align 4
  %13 = load i32*, i32** %statemt.addr, align 8
  %14 = load i32, i32* %j, align 4
  %mul8 = mul nsw i32 %14, 4
  %add9 = add nsw i32 1, %mul8
  %idxprom10 = sext i32 %add9 to i64
  %arrayidx11 = getelementptr inbounds i32, i32* %13, i64 %idxprom10
  %15 = load i32, i32* %arrayidx11, align 4
  %xor12 = xor i32 %15, %12
  store i32 %xor12, i32* %arrayidx11, align 4
  %16 = load i32, i32* %j, align 4
  %17 = load i32, i32* %nb.addr, align 4
  %18 = load i32, i32* %n.addr, align 4
  %mul13 = mul nsw i32 %17, %18
  %add14 = add nsw i32 %16, %mul13
  %idxprom15 = sext i32 %add14 to i64
  %arrayidx16 = getelementptr inbounds [120 x i32], [120 x i32]* getelementptr inbounds ([4 x [120 x i32]], [4 x [120 x i32]]* @word, i64 0, i64 2), i64 0, i64 %idxprom15
  %19 = load i32, i32* %arrayidx16, align 4
  %20 = load i32*, i32** %statemt.addr, align 8
  %21 = load i32, i32* %j, align 4
  %mul17 = mul nsw i32 %21, 4
  %add18 = add nsw i32 2, %mul17
  %idxprom19 = sext i32 %add18 to i64
  %arrayidx20 = getelementptr inbounds i32, i32* %20, i64 %idxprom19
  %22 = load i32, i32* %arrayidx20, align 4
  %xor21 = xor i32 %22, %19
  store i32 %xor21, i32* %arrayidx20, align 4
  %23 = load i32, i32* %j, align 4
  %24 = load i32, i32* %nb.addr, align 4
  %25 = load i32, i32* %n.addr, align 4
  %mul22 = mul nsw i32 %24, %25
  %add23 = add nsw i32 %23, %mul22
  %idxprom24 = sext i32 %add23 to i64
  %arrayidx25 = getelementptr inbounds [120 x i32], [120 x i32]* getelementptr inbounds ([4 x [120 x i32]], [4 x [120 x i32]]* @word, i64 0, i64 3), i64 0, i64 %idxprom24
  %26 = load i32, i32* %arrayidx25, align 4
  %27 = load i32*, i32** %statemt.addr, align 8
  %28 = load i32, i32* %j, align 4
  %mul26 = mul nsw i32 %28, 4
  %add27 = add nsw i32 3, %mul26
  %idxprom28 = sext i32 %add27 to i64
  %arrayidx29 = getelementptr inbounds i32, i32* %27, i64 %idxprom28
  %29 = load i32, i32* %arrayidx29, align 4
  %xor30 = xor i32 %29, %26
  store i32 %xor30, i32* %arrayidx29, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %30 = load i32, i32* %j, align 4
  %inc = add nsw i32 %30, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond31

for.cond31:                                       ; preds = %for.inc193, %for.end
  %31 = load i32, i32* %j, align 4
  %32 = load i32, i32* %nb.addr, align 4
  %cmp32 = icmp slt i32 %31, %32
  br i1 %cmp32, label %for.body33, label %for.end195

for.body33:                                       ; preds = %for.cond31
  store i32 0, i32* %i, align 4
  br label %for.cond34

for.cond34:                                       ; preds = %for.inc190, %for.body33
  %33 = load i32, i32* %i, align 4
  %cmp35 = icmp slt i32 %33, 4
  br i1 %cmp35, label %for.body36, label %for.end192

for.body36:                                       ; preds = %for.cond34
  %34 = load i32*, i32** %statemt.addr, align 8
  %35 = load i32, i32* %i, align 4
  %36 = load i32, i32* %j, align 4
  %mul37 = mul nsw i32 %36, 4
  %add38 = add nsw i32 %35, %mul37
  %idxprom39 = sext i32 %add38 to i64
  %arrayidx40 = getelementptr inbounds i32, i32* %34, i64 %idxprom39
  %37 = load i32, i32* %arrayidx40, align 4
  %shl = shl i32 %37, 1
  store i32 %shl, i32* %x, align 4
  %38 = load i32, i32* %x, align 4
  %shr = ashr i32 %38, 8
  %cmp41 = icmp eq i32 %shr, 1
  br i1 %cmp41, label %if.then, label %if.end

if.then:                                          ; preds = %for.body36
  %39 = load i32, i32* %x, align 4
  %xor42 = xor i32 %39, 283
  store i32 %xor42, i32* %x, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body36
  %40 = load i32*, i32** %statemt.addr, align 8
  %41 = load i32, i32* %i, align 4
  %42 = load i32, i32* %j, align 4
  %mul43 = mul nsw i32 %42, 4
  %add44 = add nsw i32 %41, %mul43
  %idxprom45 = sext i32 %add44 to i64
  %arrayidx46 = getelementptr inbounds i32, i32* %40, i64 %idxprom45
  %43 = load i32, i32* %arrayidx46, align 4
  %44 = load i32, i32* %x, align 4
  %xor47 = xor i32 %44, %43
  store i32 %xor47, i32* %x, align 4
  %45 = load i32, i32* %x, align 4
  %shl48 = shl i32 %45, 1
  store i32 %shl48, i32* %x, align 4
  %46 = load i32, i32* %x, align 4
  %shr49 = ashr i32 %46, 8
  %cmp50 = icmp eq i32 %shr49, 1
  br i1 %cmp50, label %if.then51, label %if.end53

if.then51:                                        ; preds = %if.end
  %47 = load i32, i32* %x, align 4
  %xor52 = xor i32 %47, 283
  store i32 %xor52, i32* %x, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.then51, %if.end
  %48 = load i32*, i32** %statemt.addr, align 8
  %49 = load i32, i32* %i, align 4
  %50 = load i32, i32* %j, align 4
  %mul54 = mul nsw i32 %50, 4
  %add55 = add nsw i32 %49, %mul54
  %idxprom56 = sext i32 %add55 to i64
  %arrayidx57 = getelementptr inbounds i32, i32* %48, i64 %idxprom56
  %51 = load i32, i32* %arrayidx57, align 4
  %52 = load i32, i32* %x, align 4
  %xor58 = xor i32 %52, %51
  store i32 %xor58, i32* %x, align 4
  %53 = load i32, i32* %x, align 4
  %shl59 = shl i32 %53, 1
  store i32 %shl59, i32* %x, align 4
  %54 = load i32, i32* %x, align 4
  %shr60 = ashr i32 %54, 8
  %cmp61 = icmp eq i32 %shr60, 1
  br i1 %cmp61, label %if.then62, label %if.end64

if.then62:                                        ; preds = %if.end53
  %55 = load i32, i32* %x, align 4
  %xor63 = xor i32 %55, 283
  store i32 %xor63, i32* %x, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.then62, %if.end53
  %56 = load i32, i32* %x, align 4
  %57 = load i32, i32* %i, align 4
  %58 = load i32, i32* %j, align 4
  %mul65 = mul nsw i32 %58, 4
  %add66 = add nsw i32 %57, %mul65
  %idxprom67 = sext i32 %add66 to i64
  %arrayidx68 = getelementptr inbounds [32 x i32], [32 x i32]* %ret, i64 0, i64 %idxprom67
  store i32 %56, i32* %arrayidx68, align 4
  %59 = load i32*, i32** %statemt.addr, align 8
  %60 = load i32, i32* %i, align 4
  %add69 = add nsw i32 %60, 1
  %rem = srem i32 %add69, 4
  %61 = load i32, i32* %j, align 4
  %mul70 = mul nsw i32 %61, 4
  %add71 = add nsw i32 %rem, %mul70
  %idxprom72 = sext i32 %add71 to i64
  %arrayidx73 = getelementptr inbounds i32, i32* %59, i64 %idxprom72
  %62 = load i32, i32* %arrayidx73, align 4
  %shl74 = shl i32 %62, 1
  store i32 %shl74, i32* %x, align 4
  %63 = load i32, i32* %x, align 4
  %shr75 = ashr i32 %63, 8
  %cmp76 = icmp eq i32 %shr75, 1
  br i1 %cmp76, label %if.then77, label %if.end79

if.then77:                                        ; preds = %if.end64
  %64 = load i32, i32* %x, align 4
  %xor78 = xor i32 %64, 283
  store i32 %xor78, i32* %x, align 4
  br label %if.end79

if.end79:                                         ; preds = %if.then77, %if.end64
  %65 = load i32, i32* %x, align 4
  %shl80 = shl i32 %65, 1
  store i32 %shl80, i32* %x, align 4
  %66 = load i32, i32* %x, align 4
  %shr81 = ashr i32 %66, 8
  %cmp82 = icmp eq i32 %shr81, 1
  br i1 %cmp82, label %if.then83, label %if.end85

if.then83:                                        ; preds = %if.end79
  %67 = load i32, i32* %x, align 4
  %xor84 = xor i32 %67, 283
  store i32 %xor84, i32* %x, align 4
  br label %if.end85

if.end85:                                         ; preds = %if.then83, %if.end79
  %68 = load i32*, i32** %statemt.addr, align 8
  %69 = load i32, i32* %i, align 4
  %add86 = add nsw i32 %69, 1
  %rem87 = srem i32 %add86, 4
  %70 = load i32, i32* %j, align 4
  %mul88 = mul nsw i32 %70, 4
  %add89 = add nsw i32 %rem87, %mul88
  %idxprom90 = sext i32 %add89 to i64
  %arrayidx91 = getelementptr inbounds i32, i32* %68, i64 %idxprom90
  %71 = load i32, i32* %arrayidx91, align 4
  %72 = load i32, i32* %x, align 4
  %xor92 = xor i32 %72, %71
  store i32 %xor92, i32* %x, align 4
  %73 = load i32, i32* %x, align 4
  %shl93 = shl i32 %73, 1
  store i32 %shl93, i32* %x, align 4
  %74 = load i32, i32* %x, align 4
  %shr94 = ashr i32 %74, 8
  %cmp95 = icmp eq i32 %shr94, 1
  br i1 %cmp95, label %if.then96, label %if.end98

if.then96:                                        ; preds = %if.end85
  %75 = load i32, i32* %x, align 4
  %xor97 = xor i32 %75, 283
  store i32 %xor97, i32* %x, align 4
  br label %if.end98

if.end98:                                         ; preds = %if.then96, %if.end85
  %76 = load i32*, i32** %statemt.addr, align 8
  %77 = load i32, i32* %i, align 4
  %add99 = add nsw i32 %77, 1
  %rem100 = srem i32 %add99, 4
  %78 = load i32, i32* %j, align 4
  %mul101 = mul nsw i32 %78, 4
  %add102 = add nsw i32 %rem100, %mul101
  %idxprom103 = sext i32 %add102 to i64
  %arrayidx104 = getelementptr inbounds i32, i32* %76, i64 %idxprom103
  %79 = load i32, i32* %arrayidx104, align 4
  %80 = load i32, i32* %x, align 4
  %xor105 = xor i32 %80, %79
  store i32 %xor105, i32* %x, align 4
  %81 = load i32, i32* %x, align 4
  %82 = load i32, i32* %i, align 4
  %83 = load i32, i32* %j, align 4
  %mul106 = mul nsw i32 %83, 4
  %add107 = add nsw i32 %82, %mul106
  %idxprom108 = sext i32 %add107 to i64
  %arrayidx109 = getelementptr inbounds [32 x i32], [32 x i32]* %ret, i64 0, i64 %idxprom108
  %84 = load i32, i32* %arrayidx109, align 4
  %xor110 = xor i32 %84, %81
  store i32 %xor110, i32* %arrayidx109, align 4
  %85 = load i32*, i32** %statemt.addr, align 8
  %86 = load i32, i32* %i, align 4
  %add111 = add nsw i32 %86, 2
  %rem112 = srem i32 %add111, 4
  %87 = load i32, i32* %j, align 4
  %mul113 = mul nsw i32 %87, 4
  %add114 = add nsw i32 %rem112, %mul113
  %idxprom115 = sext i32 %add114 to i64
  %arrayidx116 = getelementptr inbounds i32, i32* %85, i64 %idxprom115
  %88 = load i32, i32* %arrayidx116, align 4
  %shl117 = shl i32 %88, 1
  store i32 %shl117, i32* %x, align 4
  %89 = load i32, i32* %x, align 4
  %shr118 = ashr i32 %89, 8
  %cmp119 = icmp eq i32 %shr118, 1
  br i1 %cmp119, label %if.then120, label %if.end122

if.then120:                                       ; preds = %if.end98
  %90 = load i32, i32* %x, align 4
  %xor121 = xor i32 %90, 283
  store i32 %xor121, i32* %x, align 4
  br label %if.end122

if.end122:                                        ; preds = %if.then120, %if.end98
  %91 = load i32*, i32** %statemt.addr, align 8
  %92 = load i32, i32* %i, align 4
  %add123 = add nsw i32 %92, 2
  %rem124 = srem i32 %add123, 4
  %93 = load i32, i32* %j, align 4
  %mul125 = mul nsw i32 %93, 4
  %add126 = add nsw i32 %rem124, %mul125
  %idxprom127 = sext i32 %add126 to i64
  %arrayidx128 = getelementptr inbounds i32, i32* %91, i64 %idxprom127
  %94 = load i32, i32* %arrayidx128, align 4
  %95 = load i32, i32* %x, align 4
  %xor129 = xor i32 %95, %94
  store i32 %xor129, i32* %x, align 4
  %96 = load i32, i32* %x, align 4
  %shl130 = shl i32 %96, 1
  store i32 %shl130, i32* %x, align 4
  %97 = load i32, i32* %x, align 4
  %shr131 = ashr i32 %97, 8
  %cmp132 = icmp eq i32 %shr131, 1
  br i1 %cmp132, label %if.then133, label %if.end135

if.then133:                                       ; preds = %if.end122
  %98 = load i32, i32* %x, align 4
  %xor134 = xor i32 %98, 283
  store i32 %xor134, i32* %x, align 4
  br label %if.end135

if.end135:                                        ; preds = %if.then133, %if.end122
  %99 = load i32, i32* %x, align 4
  %shl136 = shl i32 %99, 1
  store i32 %shl136, i32* %x, align 4
  %100 = load i32, i32* %x, align 4
  %shr137 = ashr i32 %100, 8
  %cmp138 = icmp eq i32 %shr137, 1
  br i1 %cmp138, label %if.then139, label %if.end141

if.then139:                                       ; preds = %if.end135
  %101 = load i32, i32* %x, align 4
  %xor140 = xor i32 %101, 283
  store i32 %xor140, i32* %x, align 4
  br label %if.end141

if.end141:                                        ; preds = %if.then139, %if.end135
  %102 = load i32*, i32** %statemt.addr, align 8
  %103 = load i32, i32* %i, align 4
  %add142 = add nsw i32 %103, 2
  %rem143 = srem i32 %add142, 4
  %104 = load i32, i32* %j, align 4
  %mul144 = mul nsw i32 %104, 4
  %add145 = add nsw i32 %rem143, %mul144
  %idxprom146 = sext i32 %add145 to i64
  %arrayidx147 = getelementptr inbounds i32, i32* %102, i64 %idxprom146
  %105 = load i32, i32* %arrayidx147, align 4
  %106 = load i32, i32* %x, align 4
  %xor148 = xor i32 %106, %105
  store i32 %xor148, i32* %x, align 4
  %107 = load i32, i32* %x, align 4
  %108 = load i32, i32* %i, align 4
  %109 = load i32, i32* %j, align 4
  %mul149 = mul nsw i32 %109, 4
  %add150 = add nsw i32 %108, %mul149
  %idxprom151 = sext i32 %add150 to i64
  %arrayidx152 = getelementptr inbounds [32 x i32], [32 x i32]* %ret, i64 0, i64 %idxprom151
  %110 = load i32, i32* %arrayidx152, align 4
  %xor153 = xor i32 %110, %107
  store i32 %xor153, i32* %arrayidx152, align 4
  %111 = load i32*, i32** %statemt.addr, align 8
  %112 = load i32, i32* %i, align 4
  %add154 = add nsw i32 %112, 3
  %rem155 = srem i32 %add154, 4
  %113 = load i32, i32* %j, align 4
  %mul156 = mul nsw i32 %113, 4
  %add157 = add nsw i32 %rem155, %mul156
  %idxprom158 = sext i32 %add157 to i64
  %arrayidx159 = getelementptr inbounds i32, i32* %111, i64 %idxprom158
  %114 = load i32, i32* %arrayidx159, align 4
  %shl160 = shl i32 %114, 1
  store i32 %shl160, i32* %x, align 4
  %115 = load i32, i32* %x, align 4
  %shr161 = ashr i32 %115, 8
  %cmp162 = icmp eq i32 %shr161, 1
  br i1 %cmp162, label %if.then163, label %if.end165

if.then163:                                       ; preds = %if.end141
  %116 = load i32, i32* %x, align 4
  %xor164 = xor i32 %116, 283
  store i32 %xor164, i32* %x, align 4
  br label %if.end165

if.end165:                                        ; preds = %if.then163, %if.end141
  %117 = load i32, i32* %x, align 4
  %shl166 = shl i32 %117, 1
  store i32 %shl166, i32* %x, align 4
  %118 = load i32, i32* %x, align 4
  %shr167 = ashr i32 %118, 8
  %cmp168 = icmp eq i32 %shr167, 1
  br i1 %cmp168, label %if.then169, label %if.end171

if.then169:                                       ; preds = %if.end165
  %119 = load i32, i32* %x, align 4
  %xor170 = xor i32 %119, 283
  store i32 %xor170, i32* %x, align 4
  br label %if.end171

if.end171:                                        ; preds = %if.then169, %if.end165
  %120 = load i32, i32* %x, align 4
  %shl172 = shl i32 %120, 1
  store i32 %shl172, i32* %x, align 4
  %121 = load i32, i32* %x, align 4
  %shr173 = ashr i32 %121, 8
  %cmp174 = icmp eq i32 %shr173, 1
  br i1 %cmp174, label %if.then175, label %if.end177

if.then175:                                       ; preds = %if.end171
  %122 = load i32, i32* %x, align 4
  %xor176 = xor i32 %122, 283
  store i32 %xor176, i32* %x, align 4
  br label %if.end177

if.end177:                                        ; preds = %if.then175, %if.end171
  %123 = load i32*, i32** %statemt.addr, align 8
  %124 = load i32, i32* %i, align 4
  %add178 = add nsw i32 %124, 3
  %rem179 = srem i32 %add178, 4
  %125 = load i32, i32* %j, align 4
  %mul180 = mul nsw i32 %125, 4
  %add181 = add nsw i32 %rem179, %mul180
  %idxprom182 = sext i32 %add181 to i64
  %arrayidx183 = getelementptr inbounds i32, i32* %123, i64 %idxprom182
  %126 = load i32, i32* %arrayidx183, align 4
  %127 = load i32, i32* %x, align 4
  %xor184 = xor i32 %127, %126
  store i32 %xor184, i32* %x, align 4
  %128 = load i32, i32* %x, align 4
  %129 = load i32, i32* %i, align 4
  %130 = load i32, i32* %j, align 4
  %mul185 = mul nsw i32 %130, 4
  %add186 = add nsw i32 %129, %mul185
  %idxprom187 = sext i32 %add186 to i64
  %arrayidx188 = getelementptr inbounds [32 x i32], [32 x i32]* %ret, i64 0, i64 %idxprom187
  %131 = load i32, i32* %arrayidx188, align 4
  %xor189 = xor i32 %131, %128
  store i32 %xor189, i32* %arrayidx188, align 4
  br label %for.inc190

for.inc190:                                       ; preds = %if.end177
  %132 = load i32, i32* %i, align 4
  %inc191 = add nsw i32 %132, 1
  store i32 %inc191, i32* %i, align 4
  br label %for.cond34

for.end192:                                       ; preds = %for.cond34
  br label %for.inc193

for.inc193:                                       ; preds = %for.end192
  %133 = load i32, i32* %j, align 4
  %inc194 = add nsw i32 %133, 1
  store i32 %inc194, i32* %j, align 4
  br label %for.cond31

for.end195:                                       ; preds = %for.cond31
  store i32 0, i32* %i, align 4
  br label %for.cond196

for.cond196:                                      ; preds = %for.inc229, %for.end195
  %134 = load i32, i32* %i, align 4
  %135 = load i32, i32* %nb.addr, align 4
  %cmp197 = icmp slt i32 %134, %135
  br i1 %cmp197, label %for.body198, label %for.end231

for.body198:                                      ; preds = %for.cond196
  %136 = load i32, i32* %i, align 4
  %mul199 = mul nsw i32 %136, 4
  %idxprom200 = sext i32 %mul199 to i64
  %arrayidx201 = getelementptr inbounds [32 x i32], [32 x i32]* %ret, i64 0, i64 %idxprom200
  %137 = load i32, i32* %arrayidx201, align 4
  %138 = load i32*, i32** %statemt.addr, align 8
  %139 = load i32, i32* %i, align 4
  %mul202 = mul nsw i32 %139, 4
  %idxprom203 = sext i32 %mul202 to i64
  %arrayidx204 = getelementptr inbounds i32, i32* %138, i64 %idxprom203
  store i32 %137, i32* %arrayidx204, align 4
  %140 = load i32, i32* %i, align 4
  %mul205 = mul nsw i32 %140, 4
  %add206 = add nsw i32 1, %mul205
  %idxprom207 = sext i32 %add206 to i64
  %arrayidx208 = getelementptr inbounds [32 x i32], [32 x i32]* %ret, i64 0, i64 %idxprom207
  %141 = load i32, i32* %arrayidx208, align 4
  %142 = load i32*, i32** %statemt.addr, align 8
  %143 = load i32, i32* %i, align 4
  %mul209 = mul nsw i32 %143, 4
  %add210 = add nsw i32 1, %mul209
  %idxprom211 = sext i32 %add210 to i64
  %arrayidx212 = getelementptr inbounds i32, i32* %142, i64 %idxprom211
  store i32 %141, i32* %arrayidx212, align 4
  %144 = load i32, i32* %i, align 4
  %mul213 = mul nsw i32 %144, 4
  %add214 = add nsw i32 2, %mul213
  %idxprom215 = sext i32 %add214 to i64
  %arrayidx216 = getelementptr inbounds [32 x i32], [32 x i32]* %ret, i64 0, i64 %idxprom215
  %145 = load i32, i32* %arrayidx216, align 4
  %146 = load i32*, i32** %statemt.addr, align 8
  %147 = load i32, i32* %i, align 4
  %mul217 = mul nsw i32 %147, 4
  %add218 = add nsw i32 2, %mul217
  %idxprom219 = sext i32 %add218 to i64
  %arrayidx220 = getelementptr inbounds i32, i32* %146, i64 %idxprom219
  store i32 %145, i32* %arrayidx220, align 4
  %148 = load i32, i32* %i, align 4
  %mul221 = mul nsw i32 %148, 4
  %add222 = add nsw i32 3, %mul221
  %idxprom223 = sext i32 %add222 to i64
  %arrayidx224 = getelementptr inbounds [32 x i32], [32 x i32]* %ret, i64 0, i64 %idxprom223
  %149 = load i32, i32* %arrayidx224, align 4
  %150 = load i32*, i32** %statemt.addr, align 8
  %151 = load i32, i32* %i, align 4
  %mul225 = mul nsw i32 %151, 4
  %add226 = add nsw i32 3, %mul225
  %idxprom227 = sext i32 %add226 to i64
  %arrayidx228 = getelementptr inbounds i32, i32* %150, i64 %idxprom227
  store i32 %149, i32* %arrayidx228, align 4
  br label %for.inc229

for.inc229:                                       ; preds = %for.body198
  %152 = load i32, i32* %i, align 4
  %inc230 = add nsw i32 %152, 1
  store i32 %inc230, i32* %i, align 4
  br label %for.cond196

for.end231:                                       ; preds = %for.cond196
  ret i32 0
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @SubByte(i32 %in) #0 {
entry:
  %in.addr = alloca i32, align 4
  store i32 %in, i32* %in.addr, align 4
  %0 = load i32, i32* %in.addr, align 4
  %div = sdiv i32 %0, 16
  %idxprom = sext i32 %div to i64
  %arrayidx = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i64 0, i64 %idxprom
  %1 = load i32, i32* %in.addr, align 4
  %rem = srem i32 %1, 16
  %idxprom1 = sext i32 %rem to i64
  %arrayidx2 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx, i64 0, i64 %idxprom1
  %2 = load i32, i32* %arrayidx2, align 4
  ret i32 %2
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @aes_main() #0 {
entry:
  store i32 50, i32* getelementptr inbounds ([32 x i32], [32 x i32]* @statemt, i64 0, i64 0), align 16
  store i32 67, i32* getelementptr inbounds ([32 x i32], [32 x i32]* @statemt, i64 0, i64 1), align 4
  store i32 246, i32* getelementptr inbounds ([32 x i32], [32 x i32]* @statemt, i64 0, i64 2), align 8
  store i32 168, i32* getelementptr inbounds ([32 x i32], [32 x i32]* @statemt, i64 0, i64 3), align 4
  store i32 136, i32* getelementptr inbounds ([32 x i32], [32 x i32]* @statemt, i64 0, i64 4), align 16
  store i32 90, i32* getelementptr inbounds ([32 x i32], [32 x i32]* @statemt, i64 0, i64 5), align 4
  store i32 48, i32* getelementptr inbounds ([32 x i32], [32 x i32]* @statemt, i64 0, i64 6), align 8
  store i32 141, i32* getelementptr inbounds ([32 x i32], [32 x i32]* @statemt, i64 0, i64 7), align 4
  store i32 49, i32* getelementptr inbounds ([32 x i32], [32 x i32]* @statemt, i64 0, i64 8), align 16
  store i32 49, i32* getelementptr inbounds ([32 x i32], [32 x i32]* @statemt, i64 0, i64 9), align 4
  store i32 152, i32* getelementptr inbounds ([32 x i32], [32 x i32]* @statemt, i64 0, i64 10), align 8
  store i32 162, i32* getelementptr inbounds ([32 x i32], [32 x i32]* @statemt, i64 0, i64 11), align 4
  store i32 224, i32* getelementptr inbounds ([32 x i32], [32 x i32]* @statemt, i64 0, i64 12), align 16
  store i32 55, i32* getelementptr inbounds ([32 x i32], [32 x i32]* @statemt, i64 0, i64 13), align 4
  store i32 7, i32* getelementptr inbounds ([32 x i32], [32 x i32]* @statemt, i64 0, i64 14), align 8
  store i32 52, i32* getelementptr inbounds ([32 x i32], [32 x i32]* @statemt, i64 0, i64 15), align 4
  store i32 43, i32* getelementptr inbounds ([32 x i32], [32 x i32]* @key, i64 0, i64 0), align 16
  store i32 126, i32* getelementptr inbounds ([32 x i32], [32 x i32]* @key, i64 0, i64 1), align 4
  store i32 21, i32* getelementptr inbounds ([32 x i32], [32 x i32]* @key, i64 0, i64 2), align 8
  store i32 22, i32* getelementptr inbounds ([32 x i32], [32 x i32]* @key, i64 0, i64 3), align 4
  store i32 40, i32* getelementptr inbounds ([32 x i32], [32 x i32]* @key, i64 0, i64 4), align 16
  store i32 174, i32* getelementptr inbounds ([32 x i32], [32 x i32]* @key, i64 0, i64 5), align 4
  store i32 210, i32* getelementptr inbounds ([32 x i32], [32 x i32]* @key, i64 0, i64 6), align 8
  store i32 166, i32* getelementptr inbounds ([32 x i32], [32 x i32]* @key, i64 0, i64 7), align 4
  store i32 171, i32* getelementptr inbounds ([32 x i32], [32 x i32]* @key, i64 0, i64 8), align 16
  store i32 247, i32* getelementptr inbounds ([32 x i32], [32 x i32]* @key, i64 0, i64 9), align 4
  store i32 21, i32* getelementptr inbounds ([32 x i32], [32 x i32]* @key, i64 0, i64 10), align 8
  store i32 136, i32* getelementptr inbounds ([32 x i32], [32 x i32]* @key, i64 0, i64 11), align 4
  store i32 9, i32* getelementptr inbounds ([32 x i32], [32 x i32]* @key, i64 0, i64 12), align 16
  store i32 207, i32* getelementptr inbounds ([32 x i32], [32 x i32]* @key, i64 0, i64 13), align 4
  store i32 79, i32* getelementptr inbounds ([32 x i32], [32 x i32]* @key, i64 0, i64 14), align 8
  store i32 60, i32* getelementptr inbounds ([32 x i32], [32 x i32]* @key, i64 0, i64 15), align 4
  %call = call i32 @encrypt(i32* getelementptr inbounds ([32 x i32], [32 x i32]* @statemt, i32 0, i32 0), i32* getelementptr inbounds ([32 x i32], [32 x i32]* @key, i32 0, i32 0), i32 128128)
  %call1 = call i32 @decrypt(i32* getelementptr inbounds ([32 x i32], [32 x i32]* @statemt, i32 0, i32 0), i32* getelementptr inbounds ([32 x i32], [32 x i32]* @key, i32 0, i32 0), i32 128128)
  ret i32 0
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 0, i32* @main_result, align 4
  %call = call i32 @aes_main()
  %0 = load i32, i32* @main_result, align 4
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 %0)
  %1 = load i32, i32* @main_result, align 4
  ret i32 %1
}

attributes #0 = { noinline nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
