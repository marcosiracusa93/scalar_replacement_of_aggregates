; ModuleID = 'aes.c'
source_filename = "aes.c"
target datalayout = "e-m:o-p:32:32-f64:32:64-f80:128-n8:16:32-S128"
target triple = "i386-apple-macosx10.13.0"

@encrypt.out_enc_statemt = internal constant [16 x i32] [i32 57, i32 37, i32 132, i32 29, i32 2, i32 220, i32 9, i32 251, i32 220, i32 17, i32 133, i32 151, i32 25, i32 106, i32 11, i32 50], align 4
@round_val = common global i32 0, align 4
@nb = common global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"encrypted message \09\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%x\00", align 1
@main_result = common global i32 0, align 4
@decrypt.out_dec_statemt = internal constant [16 x i32] [i32 50, i32 67, i32 246, i32 168, i32 136, i32 90, i32 48, i32 141, i32 49, i32 49, i32 152, i32 162, i32 224, i32 55, i32 7, i32 52], align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"\0Adecrypto message\09\00", align 1
@Rcon0 = constant [30 x i32] [i32 1, i32 2, i32 4, i32 8, i32 16, i32 32, i32 64, i32 128, i32 27, i32 54, i32 108, i32 216, i32 171, i32 77, i32 154, i32 47, i32 94, i32 188, i32 99, i32 198, i32 151, i32 53, i32 106, i32 212, i32 179, i32 125, i32 250, i32 239, i32 197, i32 145], align 4
@word = common global [4 x [120 x i32]] zeroinitializer, align 4
@Sbox = constant [16 x [16 x i32]] [[16 x i32] [i32 99, i32 124, i32 119, i32 123, i32 242, i32 107, i32 111, i32 197, i32 48, i32 1, i32 103, i32 43, i32 254, i32 215, i32 171, i32 118], [16 x i32] [i32 202, i32 130, i32 201, i32 125, i32 250, i32 89, i32 71, i32 240, i32 173, i32 212, i32 162, i32 175, i32 156, i32 164, i32 114, i32 192], [16 x i32] [i32 183, i32 253, i32 147, i32 38, i32 54, i32 63, i32 247, i32 204, i32 52, i32 165, i32 229, i32 241, i32 113, i32 216, i32 49, i32 21], [16 x i32] [i32 4, i32 199, i32 35, i32 195, i32 24, i32 150, i32 5, i32 154, i32 7, i32 18, i32 128, i32 226, i32 235, i32 39, i32 178, i32 117], [16 x i32] [i32 9, i32 131, i32 44, i32 26, i32 27, i32 110, i32 90, i32 160, i32 82, i32 59, i32 214, i32 179, i32 41, i32 227, i32 47, i32 132], [16 x i32] [i32 83, i32 209, i32 0, i32 237, i32 32, i32 252, i32 177, i32 91, i32 106, i32 203, i32 190, i32 57, i32 74, i32 76, i32 88, i32 207], [16 x i32] [i32 208, i32 239, i32 170, i32 251, i32 67, i32 77, i32 51, i32 133, i32 69, i32 249, i32 2, i32 127, i32 80, i32 60, i32 159, i32 168], [16 x i32] [i32 81, i32 163, i32 64, i32 143, i32 146, i32 157, i32 56, i32 245, i32 188, i32 182, i32 218, i32 33, i32 16, i32 255, i32 243, i32 210], [16 x i32] [i32 205, i32 12, i32 19, i32 236, i32 95, i32 151, i32 68, i32 23, i32 196, i32 167, i32 126, i32 61, i32 100, i32 93, i32 25, i32 115], [16 x i32] [i32 96, i32 129, i32 79, i32 220, i32 34, i32 42, i32 144, i32 136, i32 70, i32 238, i32 184, i32 20, i32 222, i32 94, i32 11, i32 219], [16 x i32] [i32 224, i32 50, i32 58, i32 10, i32 73, i32 6, i32 36, i32 92, i32 194, i32 211, i32 172, i32 98, i32 145, i32 149, i32 228, i32 121], [16 x i32] [i32 231, i32 200, i32 55, i32 109, i32 141, i32 213, i32 78, i32 169, i32 108, i32 86, i32 244, i32 234, i32 101, i32 122, i32 174, i32 8], [16 x i32] [i32 186, i32 120, i32 37, i32 46, i32 28, i32 166, i32 180, i32 198, i32 232, i32 221, i32 116, i32 31, i32 75, i32 189, i32 139, i32 138], [16 x i32] [i32 112, i32 62, i32 181, i32 102, i32 72, i32 3, i32 246, i32 14, i32 97, i32 53, i32 87, i32 185, i32 134, i32 193, i32 29, i32 158], [16 x i32] [i32 225, i32 248, i32 152, i32 17, i32 105, i32 217, i32 142, i32 148, i32 155, i32 30, i32 135, i32 233, i32 206, i32 85, i32 40, i32 223], [16 x i32] [i32 140, i32 161, i32 137, i32 13, i32 191, i32 230, i32 66, i32 104, i32 65, i32 153, i32 45, i32 15, i32 176, i32 84, i32 187, i32 22]], align 4
@invSbox = constant [16 x [16 x i32]] [[16 x i32] [i32 82, i32 9, i32 106, i32 213, i32 48, i32 54, i32 165, i32 56, i32 191, i32 64, i32 163, i32 158, i32 129, i32 243, i32 215, i32 251], [16 x i32] [i32 124, i32 227, i32 57, i32 130, i32 155, i32 47, i32 255, i32 135, i32 52, i32 142, i32 67, i32 68, i32 196, i32 222, i32 233, i32 203], [16 x i32] [i32 84, i32 123, i32 148, i32 50, i32 166, i32 194, i32 35, i32 61, i32 238, i32 76, i32 149, i32 11, i32 66, i32 250, i32 195, i32 78], [16 x i32] [i32 8, i32 46, i32 161, i32 102, i32 40, i32 217, i32 36, i32 178, i32 118, i32 91, i32 162, i32 73, i32 109, i32 139, i32 209, i32 37], [16 x i32] [i32 114, i32 248, i32 246, i32 100, i32 134, i32 104, i32 152, i32 22, i32 212, i32 164, i32 92, i32 204, i32 93, i32 101, i32 182, i32 146], [16 x i32] [i32 108, i32 112, i32 72, i32 80, i32 253, i32 237, i32 185, i32 218, i32 94, i32 21, i32 70, i32 87, i32 167, i32 141, i32 157, i32 132], [16 x i32] [i32 144, i32 216, i32 171, i32 0, i32 140, i32 188, i32 211, i32 10, i32 247, i32 228, i32 88, i32 5, i32 184, i32 179, i32 69, i32 6], [16 x i32] [i32 208, i32 44, i32 30, i32 143, i32 202, i32 63, i32 15, i32 2, i32 193, i32 175, i32 189, i32 3, i32 1, i32 19, i32 138, i32 107], [16 x i32] [i32 58, i32 145, i32 17, i32 65, i32 79, i32 103, i32 220, i32 234, i32 151, i32 242, i32 207, i32 206, i32 240, i32 180, i32 230, i32 115], [16 x i32] [i32 150, i32 172, i32 116, i32 34, i32 231, i32 173, i32 53, i32 133, i32 226, i32 249, i32 55, i32 232, i32 28, i32 117, i32 223, i32 110], [16 x i32] [i32 71, i32 241, i32 26, i32 113, i32 29, i32 41, i32 197, i32 137, i32 111, i32 183, i32 98, i32 14, i32 170, i32 24, i32 190, i32 27], [16 x i32] [i32 252, i32 86, i32 62, i32 75, i32 198, i32 210, i32 121, i32 32, i32 154, i32 219, i32 192, i32 254, i32 120, i32 205, i32 90, i32 244], [16 x i32] [i32 31, i32 221, i32 168, i32 51, i32 136, i32 7, i32 199, i32 49, i32 177, i32 18, i32 16, i32 89, i32 39, i32 128, i32 236, i32 95], [16 x i32] [i32 96, i32 81, i32 127, i32 169, i32 25, i32 181, i32 74, i32 13, i32 45, i32 229, i32 122, i32 159, i32 147, i32 201, i32 156, i32 239], [16 x i32] [i32 160, i32 224, i32 59, i32 77, i32 174, i32 42, i32 245, i32 176, i32 200, i32 235, i32 187, i32 60, i32 131, i32 83, i32 153, i32 97], [16 x i32] [i32 23, i32 43, i32 4, i32 126, i32 186, i32 119, i32 214, i32 38, i32 225, i32 105, i32 20, i32 99, i32 85, i32 33, i32 12, i32 125]], align 4
@statemt = common global [32 x i32] zeroinitializer, align 4
@key = common global [32 x i32] zeroinitializer, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"\0A%d\0A\00", align 1
@type = common global i32 0, align 4

; Function Attrs: noinline nounwind ssp
define i32 @encrypt(i32* %statemt, i32* %key, i32 %type) #0 {
entry:
  %statemt.addr = alloca i32*, align 4
  %key.addr = alloca i32*, align 4
  %type.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32* %statemt, i32** %statemt.addr, align 4
  store i32* %key, i32** %key.addr, align 4
  store i32 %type, i32* %type.addr, align 4
  %0 = load i32, i32* %type.addr, align 4
  %1 = load i32*, i32** %key.addr, align 4
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
  %3 = load i32*, i32** %statemt.addr, align 4
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
  %7 = load i32*, i32** %statemt.addr, align 4
  %8 = load i32, i32* @nb, align 4
  call void @ByteSub_ShiftRow(i32* %7, i32 %8)
  %9 = load i32*, i32** %statemt.addr, align 4
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
  %13 = load i32*, i32** %statemt.addr, align 4
  %14 = load i32, i32* @nb, align 4
  call void @ByteSub_ShiftRow(i32* %13, i32 %14)
  %15 = load i32*, i32** %statemt.addr, align 4
  %16 = load i32, i32* %type.addr, align 4
  %17 = load i32, i32* %i, align 4
  %call8 = call i32 @AddRoundKey(i32* %15, i32 %16, i32 %17)
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc17, %for.end
  %18 = load i32, i32* %i, align 4
  %19 = load i32, i32* @nb, align 4
  %mul = mul nsw i32 %19, 4
  %cmp11 = icmp slt i32 %18, %mul
  br i1 %cmp11, label %for.body12, label %for.end19

for.body12:                                       ; preds = %for.cond10
  %20 = load i32*, i32** %statemt.addr, align 4
  %21 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds i32, i32* %20, i32 %21
  %22 = load i32, i32* %arrayidx, align 4
  %cmp13 = icmp slt i32 %22, 16
  br i1 %cmp13, label %if.then, label %if.end

if.then:                                          ; preds = %for.body12
  %call14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body12
  %23 = load i32*, i32** %statemt.addr, align 4
  %24 = load i32, i32* %i, align 4
  %arrayidx15 = getelementptr inbounds i32, i32* %23, i32 %24
  %25 = load i32, i32* %arrayidx15, align 4
  %call16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i32 %25)
  br label %for.inc17

for.inc17:                                        ; preds = %if.end
  %26 = load i32, i32* %i, align 4
  %inc18 = add nsw i32 %26, 1
  store i32 %inc18, i32* %i, align 4
  br label %for.cond10

for.end19:                                        ; preds = %for.cond10
  store i32 0, i32* %i, align 4
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc27, %for.end19
  %27 = load i32, i32* %i, align 4
  %cmp21 = icmp slt i32 %27, 16
  br i1 %cmp21, label %for.body22, label %for.end29

for.body22:                                       ; preds = %for.cond20
  %28 = load i32*, i32** %statemt.addr, align 4
  %29 = load i32, i32* %i, align 4
  %arrayidx23 = getelementptr inbounds i32, i32* %28, i32 %29
  %30 = load i32, i32* %arrayidx23, align 4
  %31 = load i32, i32* %i, align 4
  %arrayidx24 = getelementptr inbounds [16 x i32], [16 x i32]* @encrypt.out_enc_statemt, i32 0, i32 %31
  %32 = load i32, i32* %arrayidx24, align 4
  %cmp25 = icmp ne i32 %30, %32
  %conv = zext i1 %cmp25 to i32
  %33 = load i32, i32* @main_result, align 4
  %add26 = add nsw i32 %33, %conv
  store i32 %add26, i32* @main_result, align 4
  br label %for.inc27

for.inc27:                                        ; preds = %for.body22
  %34 = load i32, i32* %i, align 4
  %inc28 = add nsw i32 %34, 1
  store i32 %inc28, i32* %i, align 4
  br label %for.cond20

for.end29:                                        ; preds = %for.cond20
  ret i32 0
}

; Function Attrs: noinline nounwind ssp
define i32 @KeySchedule(i32 %type, i32* %key) #0 {
entry:
  %retval = alloca i32, align 4
  %type.addr = alloca i32, align 4
  %key.addr = alloca i32*, align 4
  %nk = alloca i32, align 4
  %nb = alloca i32, align 4
  %round_val = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %temp = alloca [4 x i32], align 4
  store i32 %type, i32* %type.addr, align 4
  store i32* %key, i32** %key.addr, align 4
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

for.cond:                                         ; preds = %for.inc14, %sw.epilog
  %1 = load i32, i32* %j, align 4
  %2 = load i32, i32* %nk, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end16

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc, %for.body
  %3 = load i32, i32* %i, align 4
  %cmp10 = icmp slt i32 %3, 4
  br i1 %cmp10, label %for.body11, label %for.end

for.body11:                                       ; preds = %for.cond9
  %4 = load i32*, i32** %key.addr, align 4
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %j, align 4
  %mul = mul nsw i32 %6, 4
  %add = add nsw i32 %5, %mul
  %arrayidx = getelementptr inbounds i32, i32* %4, i32 %add
  %7 = load i32, i32* %arrayidx, align 4
  %8 = load i32, i32* %i, align 4
  %arrayidx12 = getelementptr inbounds [4 x [120 x i32]], [4 x [120 x i32]]* @word, i32 0, i32 %8
  %9 = load i32, i32* %j, align 4
  %arrayidx13 = getelementptr inbounds [120 x i32], [120 x i32]* %arrayidx12, i32 0, i32 %9
  store i32 %7, i32* %arrayidx13, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body11
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond9

for.end:                                          ; preds = %for.cond9
  br label %for.inc14

for.inc14:                                        ; preds = %for.end
  %11 = load i32, i32* %j, align 4
  %inc15 = add nsw i32 %11, 1
  store i32 %inc15, i32* %j, align 4
  br label %for.cond

for.end16:                                        ; preds = %for.cond
  %12 = load i32, i32* %nk, align 4
  store i32 %12, i32* %j, align 4
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc82, %for.end16
  %13 = load i32, i32* %j, align 4
  %14 = load i32, i32* %nb, align 4
  %15 = load i32, i32* %round_val, align 4
  %add18 = add nsw i32 %15, 1
  %mul19 = mul nsw i32 %14, %add18
  %cmp20 = icmp slt i32 %13, %mul19
  br i1 %cmp20, label %for.body21, label %for.end84

for.body21:                                       ; preds = %for.cond17
  %16 = load i32, i32* %j, align 4
  %17 = load i32, i32* %nk, align 4
  %rem = srem i32 %16, %17
  %cmp22 = icmp eq i32 %rem, 0
  br i1 %cmp22, label %if.then, label %if.end

if.then:                                          ; preds = %for.body21
  %18 = load i32, i32* %j, align 4
  %sub = sub nsw i32 %18, 1
  %arrayidx23 = getelementptr inbounds [120 x i32], [120 x i32]* getelementptr inbounds ([4 x [120 x i32]], [4 x [120 x i32]]* @word, i32 0, i32 1), i32 0, i32 %sub
  %19 = load i32, i32* %arrayidx23, align 4
  %call = call i32 @SubByte(i32 %19)
  %20 = load i32, i32* %j, align 4
  %21 = load i32, i32* %nk, align 4
  %div = sdiv i32 %20, %21
  %sub24 = sub nsw i32 %div, 1
  %arrayidx25 = getelementptr inbounds [30 x i32], [30 x i32]* @Rcon0, i32 0, i32 %sub24
  %22 = load i32, i32* %arrayidx25, align 4
  %xor = xor i32 %call, %22
  %arrayidx26 = getelementptr inbounds [4 x i32], [4 x i32]* %temp, i32 0, i32 0
  store i32 %xor, i32* %arrayidx26, align 4
  %23 = load i32, i32* %j, align 4
  %sub27 = sub nsw i32 %23, 1
  %arrayidx28 = getelementptr inbounds [120 x i32], [120 x i32]* getelementptr inbounds ([4 x [120 x i32]], [4 x [120 x i32]]* @word, i32 0, i32 2), i32 0, i32 %sub27
  %24 = load i32, i32* %arrayidx28, align 4
  %call29 = call i32 @SubByte(i32 %24)
  %arrayidx30 = getelementptr inbounds [4 x i32], [4 x i32]* %temp, i32 0, i32 1
  store i32 %call29, i32* %arrayidx30, align 4
  %25 = load i32, i32* %j, align 4
  %sub31 = sub nsw i32 %25, 1
  %arrayidx32 = getelementptr inbounds [120 x i32], [120 x i32]* getelementptr inbounds ([4 x [120 x i32]], [4 x [120 x i32]]* @word, i32 0, i32 3), i32 0, i32 %sub31
  %26 = load i32, i32* %arrayidx32, align 4
  %call33 = call i32 @SubByte(i32 %26)
  %arrayidx34 = getelementptr inbounds [4 x i32], [4 x i32]* %temp, i32 0, i32 2
  store i32 %call33, i32* %arrayidx34, align 4
  %27 = load i32, i32* %j, align 4
  %sub35 = sub nsw i32 %27, 1
  %arrayidx36 = getelementptr inbounds [120 x i32], [120 x i32]* getelementptr inbounds ([4 x [120 x i32]], [4 x [120 x i32]]* @word, i32 0, i32 0), i32 0, i32 %sub35
  %28 = load i32, i32* %arrayidx36, align 4
  %call37 = call i32 @SubByte(i32 %28)
  %arrayidx38 = getelementptr inbounds [4 x i32], [4 x i32]* %temp, i32 0, i32 3
  store i32 %call37, i32* %arrayidx38, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body21
  %29 = load i32, i32* %j, align 4
  %30 = load i32, i32* %nk, align 4
  %rem39 = srem i32 %29, %30
  %cmp40 = icmp ne i32 %rem39, 0
  br i1 %cmp40, label %if.then41, label %if.end54

if.then41:                                        ; preds = %if.end
  %31 = load i32, i32* %j, align 4
  %sub42 = sub nsw i32 %31, 1
  %arrayidx43 = getelementptr inbounds [120 x i32], [120 x i32]* getelementptr inbounds ([4 x [120 x i32]], [4 x [120 x i32]]* @word, i32 0, i32 0), i32 0, i32 %sub42
  %32 = load i32, i32* %arrayidx43, align 4
  %arrayidx44 = getelementptr inbounds [4 x i32], [4 x i32]* %temp, i32 0, i32 0
  store i32 %32, i32* %arrayidx44, align 4
  %33 = load i32, i32* %j, align 4
  %sub45 = sub nsw i32 %33, 1
  %arrayidx46 = getelementptr inbounds [120 x i32], [120 x i32]* getelementptr inbounds ([4 x [120 x i32]], [4 x [120 x i32]]* @word, i32 0, i32 1), i32 0, i32 %sub45
  %34 = load i32, i32* %arrayidx46, align 4
  %arrayidx47 = getelementptr inbounds [4 x i32], [4 x i32]* %temp, i32 0, i32 1
  store i32 %34, i32* %arrayidx47, align 4
  %35 = load i32, i32* %j, align 4
  %sub48 = sub nsw i32 %35, 1
  %arrayidx49 = getelementptr inbounds [120 x i32], [120 x i32]* getelementptr inbounds ([4 x [120 x i32]], [4 x [120 x i32]]* @word, i32 0, i32 2), i32 0, i32 %sub48
  %36 = load i32, i32* %arrayidx49, align 4
  %arrayidx50 = getelementptr inbounds [4 x i32], [4 x i32]* %temp, i32 0, i32 2
  store i32 %36, i32* %arrayidx50, align 4
  %37 = load i32, i32* %j, align 4
  %sub51 = sub nsw i32 %37, 1
  %arrayidx52 = getelementptr inbounds [120 x i32], [120 x i32]* getelementptr inbounds ([4 x [120 x i32]], [4 x [120 x i32]]* @word, i32 0, i32 3), i32 0, i32 %sub51
  %38 = load i32, i32* %arrayidx52, align 4
  %arrayidx53 = getelementptr inbounds [4 x i32], [4 x i32]* %temp, i32 0, i32 3
  store i32 %38, i32* %arrayidx53, align 4
  br label %if.end54

if.end54:                                         ; preds = %if.then41, %if.end
  %39 = load i32, i32* %nk, align 4
  %cmp55 = icmp sgt i32 %39, 6
  br i1 %cmp55, label %land.lhs.true, label %if.end68

land.lhs.true:                                    ; preds = %if.end54
  %40 = load i32, i32* %j, align 4
  %41 = load i32, i32* %nk, align 4
  %rem56 = srem i32 %40, %41
  %cmp57 = icmp eq i32 %rem56, 4
  br i1 %cmp57, label %if.then58, label %if.end68

if.then58:                                        ; preds = %land.lhs.true
  store i32 0, i32* %i, align 4
  br label %for.cond59

for.cond59:                                       ; preds = %for.inc65, %if.then58
  %42 = load i32, i32* %i, align 4
  %cmp60 = icmp slt i32 %42, 4
  br i1 %cmp60, label %for.body61, label %for.end67

for.body61:                                       ; preds = %for.cond59
  %43 = load i32, i32* %i, align 4
  %arrayidx62 = getelementptr inbounds [4 x i32], [4 x i32]* %temp, i32 0, i32 %43
  %44 = load i32, i32* %arrayidx62, align 4
  %call63 = call i32 @SubByte(i32 %44)
  %45 = load i32, i32* %i, align 4
  %arrayidx64 = getelementptr inbounds [4 x i32], [4 x i32]* %temp, i32 0, i32 %45
  store i32 %call63, i32* %arrayidx64, align 4
  br label %for.inc65

for.inc65:                                        ; preds = %for.body61
  %46 = load i32, i32* %i, align 4
  %inc66 = add nsw i32 %46, 1
  store i32 %inc66, i32* %i, align 4
  br label %for.cond59

for.end67:                                        ; preds = %for.cond59
  br label %if.end68

if.end68:                                         ; preds = %for.end67, %land.lhs.true, %if.end54
  store i32 0, i32* %i, align 4
  br label %for.cond69

for.cond69:                                       ; preds = %for.inc79, %if.end68
  %47 = load i32, i32* %i, align 4
  %cmp70 = icmp slt i32 %47, 4
  br i1 %cmp70, label %for.body71, label %for.end81

for.body71:                                       ; preds = %for.cond69
  %48 = load i32, i32* %i, align 4
  %arrayidx72 = getelementptr inbounds [4 x [120 x i32]], [4 x [120 x i32]]* @word, i32 0, i32 %48
  %49 = load i32, i32* %j, align 4
  %50 = load i32, i32* %nk, align 4
  %sub73 = sub nsw i32 %49, %50
  %arrayidx74 = getelementptr inbounds [120 x i32], [120 x i32]* %arrayidx72, i32 0, i32 %sub73
  %51 = load i32, i32* %arrayidx74, align 4
  %52 = load i32, i32* %i, align 4
  %arrayidx75 = getelementptr inbounds [4 x i32], [4 x i32]* %temp, i32 0, i32 %52
  %53 = load i32, i32* %arrayidx75, align 4
  %xor76 = xor i32 %51, %53
  %54 = load i32, i32* %i, align 4
  %arrayidx77 = getelementptr inbounds [4 x [120 x i32]], [4 x [120 x i32]]* @word, i32 0, i32 %54
  %55 = load i32, i32* %j, align 4
  %arrayidx78 = getelementptr inbounds [120 x i32], [120 x i32]* %arrayidx77, i32 0, i32 %55
  store i32 %xor76, i32* %arrayidx78, align 4
  br label %for.inc79

for.inc79:                                        ; preds = %for.body71
  %56 = load i32, i32* %i, align 4
  %inc80 = add nsw i32 %56, 1
  store i32 %inc80, i32* %i, align 4
  br label %for.cond69

for.end81:                                        ; preds = %for.cond69
  br label %for.inc82

for.inc82:                                        ; preds = %for.end81
  %57 = load i32, i32* %j, align 4
  %inc83 = add nsw i32 %57, 1
  store i32 %inc83, i32* %j, align 4
  br label %for.cond17

for.end84:                                        ; preds = %for.cond17
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end84, %sw.default
  %58 = load i32, i32* %retval, align 4
  ret i32 %58
}

; Function Attrs: noinline nounwind ssp
define i32 @AddRoundKey(i32* %statemt, i32 %type, i32 %n) #0 {
entry:
  %statemt.addr = alloca i32*, align 4
  %type.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %j = alloca i32, align 4
  %nb = alloca i32, align 4
  store i32* %statemt, i32** %statemt.addr, align 4
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
  %arrayidx = getelementptr inbounds [120 x i32], [120 x i32]* getelementptr inbounds ([4 x [120 x i32]], [4 x [120 x i32]]* @word, i32 0, i32 0), i32 0, i32 %add
  %6 = load i32, i32* %arrayidx, align 4
  %7 = load i32*, i32** %statemt.addr, align 4
  %8 = load i32, i32* %j, align 4
  %mul3 = mul nsw i32 %8, 4
  %arrayidx4 = getelementptr inbounds i32, i32* %7, i32 %mul3
  %9 = load i32, i32* %arrayidx4, align 4
  %xor = xor i32 %9, %6
  store i32 %xor, i32* %arrayidx4, align 4
  %10 = load i32, i32* %j, align 4
  %11 = load i32, i32* %nb, align 4
  %12 = load i32, i32* %n.addr, align 4
  %mul5 = mul nsw i32 %11, %12
  %add6 = add nsw i32 %10, %mul5
  %arrayidx7 = getelementptr inbounds [120 x i32], [120 x i32]* getelementptr inbounds ([4 x [120 x i32]], [4 x [120 x i32]]* @word, i32 0, i32 1), i32 0, i32 %add6
  %13 = load i32, i32* %arrayidx7, align 4
  %14 = load i32*, i32** %statemt.addr, align 4
  %15 = load i32, i32* %j, align 4
  %mul8 = mul nsw i32 %15, 4
  %add9 = add nsw i32 1, %mul8
  %arrayidx10 = getelementptr inbounds i32, i32* %14, i32 %add9
  %16 = load i32, i32* %arrayidx10, align 4
  %xor11 = xor i32 %16, %13
  store i32 %xor11, i32* %arrayidx10, align 4
  %17 = load i32, i32* %j, align 4
  %18 = load i32, i32* %nb, align 4
  %19 = load i32, i32* %n.addr, align 4
  %mul12 = mul nsw i32 %18, %19
  %add13 = add nsw i32 %17, %mul12
  %arrayidx14 = getelementptr inbounds [120 x i32], [120 x i32]* getelementptr inbounds ([4 x [120 x i32]], [4 x [120 x i32]]* @word, i32 0, i32 2), i32 0, i32 %add13
  %20 = load i32, i32* %arrayidx14, align 4
  %21 = load i32*, i32** %statemt.addr, align 4
  %22 = load i32, i32* %j, align 4
  %mul15 = mul nsw i32 %22, 4
  %add16 = add nsw i32 2, %mul15
  %arrayidx17 = getelementptr inbounds i32, i32* %21, i32 %add16
  %23 = load i32, i32* %arrayidx17, align 4
  %xor18 = xor i32 %23, %20
  store i32 %xor18, i32* %arrayidx17, align 4
  %24 = load i32, i32* %j, align 4
  %25 = load i32, i32* %nb, align 4
  %26 = load i32, i32* %n.addr, align 4
  %mul19 = mul nsw i32 %25, %26
  %add20 = add nsw i32 %24, %mul19
  %arrayidx21 = getelementptr inbounds [120 x i32], [120 x i32]* getelementptr inbounds ([4 x [120 x i32]], [4 x [120 x i32]]* @word, i32 0, i32 3), i32 0, i32 %add20
  %27 = load i32, i32* %arrayidx21, align 4
  %28 = load i32*, i32** %statemt.addr, align 4
  %29 = load i32, i32* %j, align 4
  %mul22 = mul nsw i32 %29, 4
  %add23 = add nsw i32 3, %mul22
  %arrayidx24 = getelementptr inbounds i32, i32* %28, i32 %add23
  %30 = load i32, i32* %arrayidx24, align 4
  %xor25 = xor i32 %30, %27
  store i32 %xor25, i32* %arrayidx24, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %31 = load i32, i32* %j, align 4
  %inc = add nsw i32 %31, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret i32 0
}

; Function Attrs: noinline nounwind ssp
define void @ByteSub_ShiftRow(i32* %statemt, i32 %nb) #0 {
entry:
  %statemt.addr = alloca i32*, align 4
  %nb.addr = alloca i32, align 4
  %temp = alloca i32, align 4
  store i32* %statemt, i32** %statemt.addr, align 4
  store i32 %nb, i32* %nb.addr, align 4
  %0 = load i32, i32* %nb.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 4, label %sw.bb
    i32 6, label %sw.bb110
    i32 8, label %sw.bb279
  ]

sw.bb:                                            ; preds = %entry
  %1 = load i32*, i32** %statemt.addr, align 4
  %arrayidx = getelementptr inbounds i32, i32* %1, i32 1
  %2 = load i32, i32* %arrayidx, align 4
  %shr = ashr i32 %2, 4
  %arrayidx1 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr
  %3 = load i32*, i32** %statemt.addr, align 4
  %arrayidx2 = getelementptr inbounds i32, i32* %3, i32 1
  %4 = load i32, i32* %arrayidx2, align 4
  %and = and i32 %4, 15
  %arrayidx3 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx1, i32 0, i32 %and
  %5 = load i32, i32* %arrayidx3, align 4
  store i32 %5, i32* %temp, align 4
  %6 = load i32*, i32** %statemt.addr, align 4
  %arrayidx4 = getelementptr inbounds i32, i32* %6, i32 5
  %7 = load i32, i32* %arrayidx4, align 4
  %shr5 = ashr i32 %7, 4
  %arrayidx6 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr5
  %8 = load i32*, i32** %statemt.addr, align 4
  %arrayidx7 = getelementptr inbounds i32, i32* %8, i32 5
  %9 = load i32, i32* %arrayidx7, align 4
  %and8 = and i32 %9, 15
  %arrayidx9 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx6, i32 0, i32 %and8
  %10 = load i32, i32* %arrayidx9, align 4
  %11 = load i32*, i32** %statemt.addr, align 4
  %arrayidx10 = getelementptr inbounds i32, i32* %11, i32 1
  store i32 %10, i32* %arrayidx10, align 4
  %12 = load i32*, i32** %statemt.addr, align 4
  %arrayidx11 = getelementptr inbounds i32, i32* %12, i32 9
  %13 = load i32, i32* %arrayidx11, align 4
  %shr12 = ashr i32 %13, 4
  %arrayidx13 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr12
  %14 = load i32*, i32** %statemt.addr, align 4
  %arrayidx14 = getelementptr inbounds i32, i32* %14, i32 9
  %15 = load i32, i32* %arrayidx14, align 4
  %and15 = and i32 %15, 15
  %arrayidx16 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx13, i32 0, i32 %and15
  %16 = load i32, i32* %arrayidx16, align 4
  %17 = load i32*, i32** %statemt.addr, align 4
  %arrayidx17 = getelementptr inbounds i32, i32* %17, i32 5
  store i32 %16, i32* %arrayidx17, align 4
  %18 = load i32*, i32** %statemt.addr, align 4
  %arrayidx18 = getelementptr inbounds i32, i32* %18, i32 13
  %19 = load i32, i32* %arrayidx18, align 4
  %shr19 = ashr i32 %19, 4
  %arrayidx20 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr19
  %20 = load i32*, i32** %statemt.addr, align 4
  %arrayidx21 = getelementptr inbounds i32, i32* %20, i32 13
  %21 = load i32, i32* %arrayidx21, align 4
  %and22 = and i32 %21, 15
  %arrayidx23 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx20, i32 0, i32 %and22
  %22 = load i32, i32* %arrayidx23, align 4
  %23 = load i32*, i32** %statemt.addr, align 4
  %arrayidx24 = getelementptr inbounds i32, i32* %23, i32 9
  store i32 %22, i32* %arrayidx24, align 4
  %24 = load i32, i32* %temp, align 4
  %25 = load i32*, i32** %statemt.addr, align 4
  %arrayidx25 = getelementptr inbounds i32, i32* %25, i32 13
  store i32 %24, i32* %arrayidx25, align 4
  %26 = load i32*, i32** %statemt.addr, align 4
  %arrayidx26 = getelementptr inbounds i32, i32* %26, i32 2
  %27 = load i32, i32* %arrayidx26, align 4
  %shr27 = ashr i32 %27, 4
  %arrayidx28 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr27
  %28 = load i32*, i32** %statemt.addr, align 4
  %arrayidx29 = getelementptr inbounds i32, i32* %28, i32 2
  %29 = load i32, i32* %arrayidx29, align 4
  %and30 = and i32 %29, 15
  %arrayidx31 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx28, i32 0, i32 %and30
  %30 = load i32, i32* %arrayidx31, align 4
  store i32 %30, i32* %temp, align 4
  %31 = load i32*, i32** %statemt.addr, align 4
  %arrayidx32 = getelementptr inbounds i32, i32* %31, i32 10
  %32 = load i32, i32* %arrayidx32, align 4
  %shr33 = ashr i32 %32, 4
  %arrayidx34 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr33
  %33 = load i32*, i32** %statemt.addr, align 4
  %arrayidx35 = getelementptr inbounds i32, i32* %33, i32 10
  %34 = load i32, i32* %arrayidx35, align 4
  %and36 = and i32 %34, 15
  %arrayidx37 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx34, i32 0, i32 %and36
  %35 = load i32, i32* %arrayidx37, align 4
  %36 = load i32*, i32** %statemt.addr, align 4
  %arrayidx38 = getelementptr inbounds i32, i32* %36, i32 2
  store i32 %35, i32* %arrayidx38, align 4
  %37 = load i32, i32* %temp, align 4
  %38 = load i32*, i32** %statemt.addr, align 4
  %arrayidx39 = getelementptr inbounds i32, i32* %38, i32 10
  store i32 %37, i32* %arrayidx39, align 4
  %39 = load i32*, i32** %statemt.addr, align 4
  %arrayidx40 = getelementptr inbounds i32, i32* %39, i32 6
  %40 = load i32, i32* %arrayidx40, align 4
  %shr41 = ashr i32 %40, 4
  %arrayidx42 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr41
  %41 = load i32*, i32** %statemt.addr, align 4
  %arrayidx43 = getelementptr inbounds i32, i32* %41, i32 6
  %42 = load i32, i32* %arrayidx43, align 4
  %and44 = and i32 %42, 15
  %arrayidx45 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx42, i32 0, i32 %and44
  %43 = load i32, i32* %arrayidx45, align 4
  store i32 %43, i32* %temp, align 4
  %44 = load i32*, i32** %statemt.addr, align 4
  %arrayidx46 = getelementptr inbounds i32, i32* %44, i32 14
  %45 = load i32, i32* %arrayidx46, align 4
  %shr47 = ashr i32 %45, 4
  %arrayidx48 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr47
  %46 = load i32*, i32** %statemt.addr, align 4
  %arrayidx49 = getelementptr inbounds i32, i32* %46, i32 14
  %47 = load i32, i32* %arrayidx49, align 4
  %and50 = and i32 %47, 15
  %arrayidx51 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx48, i32 0, i32 %and50
  %48 = load i32, i32* %arrayidx51, align 4
  %49 = load i32*, i32** %statemt.addr, align 4
  %arrayidx52 = getelementptr inbounds i32, i32* %49, i32 6
  store i32 %48, i32* %arrayidx52, align 4
  %50 = load i32, i32* %temp, align 4
  %51 = load i32*, i32** %statemt.addr, align 4
  %arrayidx53 = getelementptr inbounds i32, i32* %51, i32 14
  store i32 %50, i32* %arrayidx53, align 4
  %52 = load i32*, i32** %statemt.addr, align 4
  %arrayidx54 = getelementptr inbounds i32, i32* %52, i32 3
  %53 = load i32, i32* %arrayidx54, align 4
  %shr55 = ashr i32 %53, 4
  %arrayidx56 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr55
  %54 = load i32*, i32** %statemt.addr, align 4
  %arrayidx57 = getelementptr inbounds i32, i32* %54, i32 3
  %55 = load i32, i32* %arrayidx57, align 4
  %and58 = and i32 %55, 15
  %arrayidx59 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx56, i32 0, i32 %and58
  %56 = load i32, i32* %arrayidx59, align 4
  store i32 %56, i32* %temp, align 4
  %57 = load i32*, i32** %statemt.addr, align 4
  %arrayidx60 = getelementptr inbounds i32, i32* %57, i32 15
  %58 = load i32, i32* %arrayidx60, align 4
  %shr61 = ashr i32 %58, 4
  %arrayidx62 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr61
  %59 = load i32*, i32** %statemt.addr, align 4
  %arrayidx63 = getelementptr inbounds i32, i32* %59, i32 15
  %60 = load i32, i32* %arrayidx63, align 4
  %and64 = and i32 %60, 15
  %arrayidx65 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx62, i32 0, i32 %and64
  %61 = load i32, i32* %arrayidx65, align 4
  %62 = load i32*, i32** %statemt.addr, align 4
  %arrayidx66 = getelementptr inbounds i32, i32* %62, i32 3
  store i32 %61, i32* %arrayidx66, align 4
  %63 = load i32*, i32** %statemt.addr, align 4
  %arrayidx67 = getelementptr inbounds i32, i32* %63, i32 11
  %64 = load i32, i32* %arrayidx67, align 4
  %shr68 = ashr i32 %64, 4
  %arrayidx69 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr68
  %65 = load i32*, i32** %statemt.addr, align 4
  %arrayidx70 = getelementptr inbounds i32, i32* %65, i32 11
  %66 = load i32, i32* %arrayidx70, align 4
  %and71 = and i32 %66, 15
  %arrayidx72 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx69, i32 0, i32 %and71
  %67 = load i32, i32* %arrayidx72, align 4
  %68 = load i32*, i32** %statemt.addr, align 4
  %arrayidx73 = getelementptr inbounds i32, i32* %68, i32 15
  store i32 %67, i32* %arrayidx73, align 4
  %69 = load i32*, i32** %statemt.addr, align 4
  %arrayidx74 = getelementptr inbounds i32, i32* %69, i32 7
  %70 = load i32, i32* %arrayidx74, align 4
  %shr75 = ashr i32 %70, 4
  %arrayidx76 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr75
  %71 = load i32*, i32** %statemt.addr, align 4
  %arrayidx77 = getelementptr inbounds i32, i32* %71, i32 7
  %72 = load i32, i32* %arrayidx77, align 4
  %and78 = and i32 %72, 15
  %arrayidx79 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx76, i32 0, i32 %and78
  %73 = load i32, i32* %arrayidx79, align 4
  %74 = load i32*, i32** %statemt.addr, align 4
  %arrayidx80 = getelementptr inbounds i32, i32* %74, i32 11
  store i32 %73, i32* %arrayidx80, align 4
  %75 = load i32, i32* %temp, align 4
  %76 = load i32*, i32** %statemt.addr, align 4
  %arrayidx81 = getelementptr inbounds i32, i32* %76, i32 7
  store i32 %75, i32* %arrayidx81, align 4
  %77 = load i32*, i32** %statemt.addr, align 4
  %arrayidx82 = getelementptr inbounds i32, i32* %77, i32 0
  %78 = load i32, i32* %arrayidx82, align 4
  %shr83 = ashr i32 %78, 4
  %arrayidx84 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr83
  %79 = load i32*, i32** %statemt.addr, align 4
  %arrayidx85 = getelementptr inbounds i32, i32* %79, i32 0
  %80 = load i32, i32* %arrayidx85, align 4
  %and86 = and i32 %80, 15
  %arrayidx87 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx84, i32 0, i32 %and86
  %81 = load i32, i32* %arrayidx87, align 4
  %82 = load i32*, i32** %statemt.addr, align 4
  %arrayidx88 = getelementptr inbounds i32, i32* %82, i32 0
  store i32 %81, i32* %arrayidx88, align 4
  %83 = load i32*, i32** %statemt.addr, align 4
  %arrayidx89 = getelementptr inbounds i32, i32* %83, i32 4
  %84 = load i32, i32* %arrayidx89, align 4
  %shr90 = ashr i32 %84, 4
  %arrayidx91 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr90
  %85 = load i32*, i32** %statemt.addr, align 4
  %arrayidx92 = getelementptr inbounds i32, i32* %85, i32 4
  %86 = load i32, i32* %arrayidx92, align 4
  %and93 = and i32 %86, 15
  %arrayidx94 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx91, i32 0, i32 %and93
  %87 = load i32, i32* %arrayidx94, align 4
  %88 = load i32*, i32** %statemt.addr, align 4
  %arrayidx95 = getelementptr inbounds i32, i32* %88, i32 4
  store i32 %87, i32* %arrayidx95, align 4
  %89 = load i32*, i32** %statemt.addr, align 4
  %arrayidx96 = getelementptr inbounds i32, i32* %89, i32 8
  %90 = load i32, i32* %arrayidx96, align 4
  %shr97 = ashr i32 %90, 4
  %arrayidx98 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr97
  %91 = load i32*, i32** %statemt.addr, align 4
  %arrayidx99 = getelementptr inbounds i32, i32* %91, i32 8
  %92 = load i32, i32* %arrayidx99, align 4
  %and100 = and i32 %92, 15
  %arrayidx101 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx98, i32 0, i32 %and100
  %93 = load i32, i32* %arrayidx101, align 4
  %94 = load i32*, i32** %statemt.addr, align 4
  %arrayidx102 = getelementptr inbounds i32, i32* %94, i32 8
  store i32 %93, i32* %arrayidx102, align 4
  %95 = load i32*, i32** %statemt.addr, align 4
  %arrayidx103 = getelementptr inbounds i32, i32* %95, i32 12
  %96 = load i32, i32* %arrayidx103, align 4
  %shr104 = ashr i32 %96, 4
  %arrayidx105 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr104
  %97 = load i32*, i32** %statemt.addr, align 4
  %arrayidx106 = getelementptr inbounds i32, i32* %97, i32 12
  %98 = load i32, i32* %arrayidx106, align 4
  %and107 = and i32 %98, 15
  %arrayidx108 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx105, i32 0, i32 %and107
  %99 = load i32, i32* %arrayidx108, align 4
  %100 = load i32*, i32** %statemt.addr, align 4
  %arrayidx109 = getelementptr inbounds i32, i32* %100, i32 12
  store i32 %99, i32* %arrayidx109, align 4
  br label %sw.epilog

sw.bb110:                                         ; preds = %entry
  %101 = load i32*, i32** %statemt.addr, align 4
  %arrayidx111 = getelementptr inbounds i32, i32* %101, i32 1
  %102 = load i32, i32* %arrayidx111, align 4
  %shr112 = ashr i32 %102, 4
  %arrayidx113 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr112
  %103 = load i32*, i32** %statemt.addr, align 4
  %arrayidx114 = getelementptr inbounds i32, i32* %103, i32 1
  %104 = load i32, i32* %arrayidx114, align 4
  %and115 = and i32 %104, 15
  %arrayidx116 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx113, i32 0, i32 %and115
  %105 = load i32, i32* %arrayidx116, align 4
  store i32 %105, i32* %temp, align 4
  %106 = load i32*, i32** %statemt.addr, align 4
  %arrayidx117 = getelementptr inbounds i32, i32* %106, i32 5
  %107 = load i32, i32* %arrayidx117, align 4
  %shr118 = ashr i32 %107, 4
  %arrayidx119 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr118
  %108 = load i32*, i32** %statemt.addr, align 4
  %arrayidx120 = getelementptr inbounds i32, i32* %108, i32 5
  %109 = load i32, i32* %arrayidx120, align 4
  %and121 = and i32 %109, 15
  %arrayidx122 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx119, i32 0, i32 %and121
  %110 = load i32, i32* %arrayidx122, align 4
  %111 = load i32*, i32** %statemt.addr, align 4
  %arrayidx123 = getelementptr inbounds i32, i32* %111, i32 1
  store i32 %110, i32* %arrayidx123, align 4
  %112 = load i32*, i32** %statemt.addr, align 4
  %arrayidx124 = getelementptr inbounds i32, i32* %112, i32 9
  %113 = load i32, i32* %arrayidx124, align 4
  %shr125 = ashr i32 %113, 4
  %arrayidx126 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr125
  %114 = load i32*, i32** %statemt.addr, align 4
  %arrayidx127 = getelementptr inbounds i32, i32* %114, i32 9
  %115 = load i32, i32* %arrayidx127, align 4
  %and128 = and i32 %115, 15
  %arrayidx129 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx126, i32 0, i32 %and128
  %116 = load i32, i32* %arrayidx129, align 4
  %117 = load i32*, i32** %statemt.addr, align 4
  %arrayidx130 = getelementptr inbounds i32, i32* %117, i32 5
  store i32 %116, i32* %arrayidx130, align 4
  %118 = load i32*, i32** %statemt.addr, align 4
  %arrayidx131 = getelementptr inbounds i32, i32* %118, i32 13
  %119 = load i32, i32* %arrayidx131, align 4
  %shr132 = ashr i32 %119, 4
  %arrayidx133 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr132
  %120 = load i32*, i32** %statemt.addr, align 4
  %arrayidx134 = getelementptr inbounds i32, i32* %120, i32 13
  %121 = load i32, i32* %arrayidx134, align 4
  %and135 = and i32 %121, 15
  %arrayidx136 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx133, i32 0, i32 %and135
  %122 = load i32, i32* %arrayidx136, align 4
  %123 = load i32*, i32** %statemt.addr, align 4
  %arrayidx137 = getelementptr inbounds i32, i32* %123, i32 9
  store i32 %122, i32* %arrayidx137, align 4
  %124 = load i32*, i32** %statemt.addr, align 4
  %arrayidx138 = getelementptr inbounds i32, i32* %124, i32 17
  %125 = load i32, i32* %arrayidx138, align 4
  %shr139 = ashr i32 %125, 4
  %arrayidx140 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr139
  %126 = load i32*, i32** %statemt.addr, align 4
  %arrayidx141 = getelementptr inbounds i32, i32* %126, i32 17
  %127 = load i32, i32* %arrayidx141, align 4
  %and142 = and i32 %127, 15
  %arrayidx143 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx140, i32 0, i32 %and142
  %128 = load i32, i32* %arrayidx143, align 4
  %129 = load i32*, i32** %statemt.addr, align 4
  %arrayidx144 = getelementptr inbounds i32, i32* %129, i32 13
  store i32 %128, i32* %arrayidx144, align 4
  %130 = load i32*, i32** %statemt.addr, align 4
  %arrayidx145 = getelementptr inbounds i32, i32* %130, i32 21
  %131 = load i32, i32* %arrayidx145, align 4
  %shr146 = ashr i32 %131, 4
  %arrayidx147 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr146
  %132 = load i32*, i32** %statemt.addr, align 4
  %arrayidx148 = getelementptr inbounds i32, i32* %132, i32 21
  %133 = load i32, i32* %arrayidx148, align 4
  %and149 = and i32 %133, 15
  %arrayidx150 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx147, i32 0, i32 %and149
  %134 = load i32, i32* %arrayidx150, align 4
  %135 = load i32*, i32** %statemt.addr, align 4
  %arrayidx151 = getelementptr inbounds i32, i32* %135, i32 17
  store i32 %134, i32* %arrayidx151, align 4
  %136 = load i32, i32* %temp, align 4
  %137 = load i32*, i32** %statemt.addr, align 4
  %arrayidx152 = getelementptr inbounds i32, i32* %137, i32 21
  store i32 %136, i32* %arrayidx152, align 4
  %138 = load i32*, i32** %statemt.addr, align 4
  %arrayidx153 = getelementptr inbounds i32, i32* %138, i32 2
  %139 = load i32, i32* %arrayidx153, align 4
  %shr154 = ashr i32 %139, 4
  %arrayidx155 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr154
  %140 = load i32*, i32** %statemt.addr, align 4
  %arrayidx156 = getelementptr inbounds i32, i32* %140, i32 2
  %141 = load i32, i32* %arrayidx156, align 4
  %and157 = and i32 %141, 15
  %arrayidx158 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx155, i32 0, i32 %and157
  %142 = load i32, i32* %arrayidx158, align 4
  store i32 %142, i32* %temp, align 4
  %143 = load i32*, i32** %statemt.addr, align 4
  %arrayidx159 = getelementptr inbounds i32, i32* %143, i32 10
  %144 = load i32, i32* %arrayidx159, align 4
  %shr160 = ashr i32 %144, 4
  %arrayidx161 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr160
  %145 = load i32*, i32** %statemt.addr, align 4
  %arrayidx162 = getelementptr inbounds i32, i32* %145, i32 10
  %146 = load i32, i32* %arrayidx162, align 4
  %and163 = and i32 %146, 15
  %arrayidx164 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx161, i32 0, i32 %and163
  %147 = load i32, i32* %arrayidx164, align 4
  %148 = load i32*, i32** %statemt.addr, align 4
  %arrayidx165 = getelementptr inbounds i32, i32* %148, i32 2
  store i32 %147, i32* %arrayidx165, align 4
  %149 = load i32*, i32** %statemt.addr, align 4
  %arrayidx166 = getelementptr inbounds i32, i32* %149, i32 18
  %150 = load i32, i32* %arrayidx166, align 4
  %shr167 = ashr i32 %150, 4
  %arrayidx168 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr167
  %151 = load i32*, i32** %statemt.addr, align 4
  %arrayidx169 = getelementptr inbounds i32, i32* %151, i32 18
  %152 = load i32, i32* %arrayidx169, align 4
  %and170 = and i32 %152, 15
  %arrayidx171 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx168, i32 0, i32 %and170
  %153 = load i32, i32* %arrayidx171, align 4
  %154 = load i32*, i32** %statemt.addr, align 4
  %arrayidx172 = getelementptr inbounds i32, i32* %154, i32 10
  store i32 %153, i32* %arrayidx172, align 4
  %155 = load i32, i32* %temp, align 4
  %156 = load i32*, i32** %statemt.addr, align 4
  %arrayidx173 = getelementptr inbounds i32, i32* %156, i32 18
  store i32 %155, i32* %arrayidx173, align 4
  %157 = load i32*, i32** %statemt.addr, align 4
  %arrayidx174 = getelementptr inbounds i32, i32* %157, i32 6
  %158 = load i32, i32* %arrayidx174, align 4
  %shr175 = ashr i32 %158, 4
  %arrayidx176 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr175
  %159 = load i32*, i32** %statemt.addr, align 4
  %arrayidx177 = getelementptr inbounds i32, i32* %159, i32 6
  %160 = load i32, i32* %arrayidx177, align 4
  %and178 = and i32 %160, 15
  %arrayidx179 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx176, i32 0, i32 %and178
  %161 = load i32, i32* %arrayidx179, align 4
  store i32 %161, i32* %temp, align 4
  %162 = load i32*, i32** %statemt.addr, align 4
  %arrayidx180 = getelementptr inbounds i32, i32* %162, i32 14
  %163 = load i32, i32* %arrayidx180, align 4
  %shr181 = ashr i32 %163, 4
  %arrayidx182 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr181
  %164 = load i32*, i32** %statemt.addr, align 4
  %arrayidx183 = getelementptr inbounds i32, i32* %164, i32 14
  %165 = load i32, i32* %arrayidx183, align 4
  %and184 = and i32 %165, 15
  %arrayidx185 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx182, i32 0, i32 %and184
  %166 = load i32, i32* %arrayidx185, align 4
  %167 = load i32*, i32** %statemt.addr, align 4
  %arrayidx186 = getelementptr inbounds i32, i32* %167, i32 6
  store i32 %166, i32* %arrayidx186, align 4
  %168 = load i32*, i32** %statemt.addr, align 4
  %arrayidx187 = getelementptr inbounds i32, i32* %168, i32 22
  %169 = load i32, i32* %arrayidx187, align 4
  %shr188 = ashr i32 %169, 4
  %arrayidx189 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr188
  %170 = load i32*, i32** %statemt.addr, align 4
  %arrayidx190 = getelementptr inbounds i32, i32* %170, i32 22
  %171 = load i32, i32* %arrayidx190, align 4
  %and191 = and i32 %171, 15
  %arrayidx192 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx189, i32 0, i32 %and191
  %172 = load i32, i32* %arrayidx192, align 4
  %173 = load i32*, i32** %statemt.addr, align 4
  %arrayidx193 = getelementptr inbounds i32, i32* %173, i32 14
  store i32 %172, i32* %arrayidx193, align 4
  %174 = load i32, i32* %temp, align 4
  %175 = load i32*, i32** %statemt.addr, align 4
  %arrayidx194 = getelementptr inbounds i32, i32* %175, i32 22
  store i32 %174, i32* %arrayidx194, align 4
  %176 = load i32*, i32** %statemt.addr, align 4
  %arrayidx195 = getelementptr inbounds i32, i32* %176, i32 3
  %177 = load i32, i32* %arrayidx195, align 4
  %shr196 = ashr i32 %177, 4
  %arrayidx197 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr196
  %178 = load i32*, i32** %statemt.addr, align 4
  %arrayidx198 = getelementptr inbounds i32, i32* %178, i32 3
  %179 = load i32, i32* %arrayidx198, align 4
  %and199 = and i32 %179, 15
  %arrayidx200 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx197, i32 0, i32 %and199
  %180 = load i32, i32* %arrayidx200, align 4
  store i32 %180, i32* %temp, align 4
  %181 = load i32*, i32** %statemt.addr, align 4
  %arrayidx201 = getelementptr inbounds i32, i32* %181, i32 15
  %182 = load i32, i32* %arrayidx201, align 4
  %shr202 = ashr i32 %182, 4
  %arrayidx203 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr202
  %183 = load i32*, i32** %statemt.addr, align 4
  %arrayidx204 = getelementptr inbounds i32, i32* %183, i32 15
  %184 = load i32, i32* %arrayidx204, align 4
  %and205 = and i32 %184, 15
  %arrayidx206 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx203, i32 0, i32 %and205
  %185 = load i32, i32* %arrayidx206, align 4
  %186 = load i32*, i32** %statemt.addr, align 4
  %arrayidx207 = getelementptr inbounds i32, i32* %186, i32 3
  store i32 %185, i32* %arrayidx207, align 4
  %187 = load i32, i32* %temp, align 4
  %188 = load i32*, i32** %statemt.addr, align 4
  %arrayidx208 = getelementptr inbounds i32, i32* %188, i32 15
  store i32 %187, i32* %arrayidx208, align 4
  %189 = load i32*, i32** %statemt.addr, align 4
  %arrayidx209 = getelementptr inbounds i32, i32* %189, i32 7
  %190 = load i32, i32* %arrayidx209, align 4
  %shr210 = ashr i32 %190, 4
  %arrayidx211 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr210
  %191 = load i32*, i32** %statemt.addr, align 4
  %arrayidx212 = getelementptr inbounds i32, i32* %191, i32 7
  %192 = load i32, i32* %arrayidx212, align 4
  %and213 = and i32 %192, 15
  %arrayidx214 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx211, i32 0, i32 %and213
  %193 = load i32, i32* %arrayidx214, align 4
  store i32 %193, i32* %temp, align 4
  %194 = load i32*, i32** %statemt.addr, align 4
  %arrayidx215 = getelementptr inbounds i32, i32* %194, i32 19
  %195 = load i32, i32* %arrayidx215, align 4
  %shr216 = ashr i32 %195, 4
  %arrayidx217 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr216
  %196 = load i32*, i32** %statemt.addr, align 4
  %arrayidx218 = getelementptr inbounds i32, i32* %196, i32 19
  %197 = load i32, i32* %arrayidx218, align 4
  %and219 = and i32 %197, 15
  %arrayidx220 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx217, i32 0, i32 %and219
  %198 = load i32, i32* %arrayidx220, align 4
  %199 = load i32*, i32** %statemt.addr, align 4
  %arrayidx221 = getelementptr inbounds i32, i32* %199, i32 7
  store i32 %198, i32* %arrayidx221, align 4
  %200 = load i32, i32* %temp, align 4
  %201 = load i32*, i32** %statemt.addr, align 4
  %arrayidx222 = getelementptr inbounds i32, i32* %201, i32 19
  store i32 %200, i32* %arrayidx222, align 4
  %202 = load i32*, i32** %statemt.addr, align 4
  %arrayidx223 = getelementptr inbounds i32, i32* %202, i32 11
  %203 = load i32, i32* %arrayidx223, align 4
  %shr224 = ashr i32 %203, 4
  %arrayidx225 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr224
  %204 = load i32*, i32** %statemt.addr, align 4
  %arrayidx226 = getelementptr inbounds i32, i32* %204, i32 11
  %205 = load i32, i32* %arrayidx226, align 4
  %and227 = and i32 %205, 15
  %arrayidx228 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx225, i32 0, i32 %and227
  %206 = load i32, i32* %arrayidx228, align 4
  store i32 %206, i32* %temp, align 4
  %207 = load i32*, i32** %statemt.addr, align 4
  %arrayidx229 = getelementptr inbounds i32, i32* %207, i32 23
  %208 = load i32, i32* %arrayidx229, align 4
  %shr230 = ashr i32 %208, 4
  %arrayidx231 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr230
  %209 = load i32*, i32** %statemt.addr, align 4
  %arrayidx232 = getelementptr inbounds i32, i32* %209, i32 23
  %210 = load i32, i32* %arrayidx232, align 4
  %and233 = and i32 %210, 15
  %arrayidx234 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx231, i32 0, i32 %and233
  %211 = load i32, i32* %arrayidx234, align 4
  %212 = load i32*, i32** %statemt.addr, align 4
  %arrayidx235 = getelementptr inbounds i32, i32* %212, i32 11
  store i32 %211, i32* %arrayidx235, align 4
  %213 = load i32, i32* %temp, align 4
  %214 = load i32*, i32** %statemt.addr, align 4
  %arrayidx236 = getelementptr inbounds i32, i32* %214, i32 23
  store i32 %213, i32* %arrayidx236, align 4
  %215 = load i32*, i32** %statemt.addr, align 4
  %arrayidx237 = getelementptr inbounds i32, i32* %215, i32 0
  %216 = load i32, i32* %arrayidx237, align 4
  %shr238 = ashr i32 %216, 4
  %arrayidx239 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr238
  %217 = load i32*, i32** %statemt.addr, align 4
  %arrayidx240 = getelementptr inbounds i32, i32* %217, i32 0
  %218 = load i32, i32* %arrayidx240, align 4
  %and241 = and i32 %218, 15
  %arrayidx242 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx239, i32 0, i32 %and241
  %219 = load i32, i32* %arrayidx242, align 4
  %220 = load i32*, i32** %statemt.addr, align 4
  %arrayidx243 = getelementptr inbounds i32, i32* %220, i32 0
  store i32 %219, i32* %arrayidx243, align 4
  %221 = load i32*, i32** %statemt.addr, align 4
  %arrayidx244 = getelementptr inbounds i32, i32* %221, i32 4
  %222 = load i32, i32* %arrayidx244, align 4
  %shr245 = ashr i32 %222, 4
  %arrayidx246 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr245
  %223 = load i32*, i32** %statemt.addr, align 4
  %arrayidx247 = getelementptr inbounds i32, i32* %223, i32 4
  %224 = load i32, i32* %arrayidx247, align 4
  %and248 = and i32 %224, 15
  %arrayidx249 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx246, i32 0, i32 %and248
  %225 = load i32, i32* %arrayidx249, align 4
  %226 = load i32*, i32** %statemt.addr, align 4
  %arrayidx250 = getelementptr inbounds i32, i32* %226, i32 4
  store i32 %225, i32* %arrayidx250, align 4
  %227 = load i32*, i32** %statemt.addr, align 4
  %arrayidx251 = getelementptr inbounds i32, i32* %227, i32 8
  %228 = load i32, i32* %arrayidx251, align 4
  %shr252 = ashr i32 %228, 4
  %arrayidx253 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr252
  %229 = load i32*, i32** %statemt.addr, align 4
  %arrayidx254 = getelementptr inbounds i32, i32* %229, i32 8
  %230 = load i32, i32* %arrayidx254, align 4
  %and255 = and i32 %230, 15
  %arrayidx256 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx253, i32 0, i32 %and255
  %231 = load i32, i32* %arrayidx256, align 4
  %232 = load i32*, i32** %statemt.addr, align 4
  %arrayidx257 = getelementptr inbounds i32, i32* %232, i32 8
  store i32 %231, i32* %arrayidx257, align 4
  %233 = load i32*, i32** %statemt.addr, align 4
  %arrayidx258 = getelementptr inbounds i32, i32* %233, i32 12
  %234 = load i32, i32* %arrayidx258, align 4
  %shr259 = ashr i32 %234, 4
  %arrayidx260 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr259
  %235 = load i32*, i32** %statemt.addr, align 4
  %arrayidx261 = getelementptr inbounds i32, i32* %235, i32 12
  %236 = load i32, i32* %arrayidx261, align 4
  %and262 = and i32 %236, 15
  %arrayidx263 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx260, i32 0, i32 %and262
  %237 = load i32, i32* %arrayidx263, align 4
  %238 = load i32*, i32** %statemt.addr, align 4
  %arrayidx264 = getelementptr inbounds i32, i32* %238, i32 12
  store i32 %237, i32* %arrayidx264, align 4
  %239 = load i32*, i32** %statemt.addr, align 4
  %arrayidx265 = getelementptr inbounds i32, i32* %239, i32 16
  %240 = load i32, i32* %arrayidx265, align 4
  %shr266 = ashr i32 %240, 4
  %arrayidx267 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr266
  %241 = load i32*, i32** %statemt.addr, align 4
  %arrayidx268 = getelementptr inbounds i32, i32* %241, i32 16
  %242 = load i32, i32* %arrayidx268, align 4
  %and269 = and i32 %242, 15
  %arrayidx270 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx267, i32 0, i32 %and269
  %243 = load i32, i32* %arrayidx270, align 4
  %244 = load i32*, i32** %statemt.addr, align 4
  %arrayidx271 = getelementptr inbounds i32, i32* %244, i32 16
  store i32 %243, i32* %arrayidx271, align 4
  %245 = load i32*, i32** %statemt.addr, align 4
  %arrayidx272 = getelementptr inbounds i32, i32* %245, i32 20
  %246 = load i32, i32* %arrayidx272, align 4
  %shr273 = ashr i32 %246, 4
  %arrayidx274 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr273
  %247 = load i32*, i32** %statemt.addr, align 4
  %arrayidx275 = getelementptr inbounds i32, i32* %247, i32 20
  %248 = load i32, i32* %arrayidx275, align 4
  %and276 = and i32 %248, 15
  %arrayidx277 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx274, i32 0, i32 %and276
  %249 = load i32, i32* %arrayidx277, align 4
  %250 = load i32*, i32** %statemt.addr, align 4
  %arrayidx278 = getelementptr inbounds i32, i32* %250, i32 20
  store i32 %249, i32* %arrayidx278, align 4
  br label %sw.epilog

sw.bb279:                                         ; preds = %entry
  %251 = load i32*, i32** %statemt.addr, align 4
  %arrayidx280 = getelementptr inbounds i32, i32* %251, i32 1
  %252 = load i32, i32* %arrayidx280, align 4
  %shr281 = ashr i32 %252, 4
  %arrayidx282 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr281
  %253 = load i32*, i32** %statemt.addr, align 4
  %arrayidx283 = getelementptr inbounds i32, i32* %253, i32 1
  %254 = load i32, i32* %arrayidx283, align 4
  %and284 = and i32 %254, 15
  %arrayidx285 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx282, i32 0, i32 %and284
  %255 = load i32, i32* %arrayidx285, align 4
  store i32 %255, i32* %temp, align 4
  %256 = load i32*, i32** %statemt.addr, align 4
  %arrayidx286 = getelementptr inbounds i32, i32* %256, i32 5
  %257 = load i32, i32* %arrayidx286, align 4
  %shr287 = ashr i32 %257, 4
  %arrayidx288 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr287
  %258 = load i32*, i32** %statemt.addr, align 4
  %arrayidx289 = getelementptr inbounds i32, i32* %258, i32 5
  %259 = load i32, i32* %arrayidx289, align 4
  %and290 = and i32 %259, 15
  %arrayidx291 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx288, i32 0, i32 %and290
  %260 = load i32, i32* %arrayidx291, align 4
  %261 = load i32*, i32** %statemt.addr, align 4
  %arrayidx292 = getelementptr inbounds i32, i32* %261, i32 1
  store i32 %260, i32* %arrayidx292, align 4
  %262 = load i32*, i32** %statemt.addr, align 4
  %arrayidx293 = getelementptr inbounds i32, i32* %262, i32 9
  %263 = load i32, i32* %arrayidx293, align 4
  %shr294 = ashr i32 %263, 4
  %arrayidx295 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr294
  %264 = load i32*, i32** %statemt.addr, align 4
  %arrayidx296 = getelementptr inbounds i32, i32* %264, i32 9
  %265 = load i32, i32* %arrayidx296, align 4
  %and297 = and i32 %265, 15
  %arrayidx298 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx295, i32 0, i32 %and297
  %266 = load i32, i32* %arrayidx298, align 4
  %267 = load i32*, i32** %statemt.addr, align 4
  %arrayidx299 = getelementptr inbounds i32, i32* %267, i32 5
  store i32 %266, i32* %arrayidx299, align 4
  %268 = load i32*, i32** %statemt.addr, align 4
  %arrayidx300 = getelementptr inbounds i32, i32* %268, i32 13
  %269 = load i32, i32* %arrayidx300, align 4
  %shr301 = ashr i32 %269, 4
  %arrayidx302 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr301
  %270 = load i32*, i32** %statemt.addr, align 4
  %arrayidx303 = getelementptr inbounds i32, i32* %270, i32 13
  %271 = load i32, i32* %arrayidx303, align 4
  %and304 = and i32 %271, 15
  %arrayidx305 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx302, i32 0, i32 %and304
  %272 = load i32, i32* %arrayidx305, align 4
  %273 = load i32*, i32** %statemt.addr, align 4
  %arrayidx306 = getelementptr inbounds i32, i32* %273, i32 9
  store i32 %272, i32* %arrayidx306, align 4
  %274 = load i32*, i32** %statemt.addr, align 4
  %arrayidx307 = getelementptr inbounds i32, i32* %274, i32 17
  %275 = load i32, i32* %arrayidx307, align 4
  %shr308 = ashr i32 %275, 4
  %arrayidx309 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr308
  %276 = load i32*, i32** %statemt.addr, align 4
  %arrayidx310 = getelementptr inbounds i32, i32* %276, i32 17
  %277 = load i32, i32* %arrayidx310, align 4
  %and311 = and i32 %277, 15
  %arrayidx312 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx309, i32 0, i32 %and311
  %278 = load i32, i32* %arrayidx312, align 4
  %279 = load i32*, i32** %statemt.addr, align 4
  %arrayidx313 = getelementptr inbounds i32, i32* %279, i32 13
  store i32 %278, i32* %arrayidx313, align 4
  %280 = load i32*, i32** %statemt.addr, align 4
  %arrayidx314 = getelementptr inbounds i32, i32* %280, i32 21
  %281 = load i32, i32* %arrayidx314, align 4
  %shr315 = ashr i32 %281, 4
  %arrayidx316 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr315
  %282 = load i32*, i32** %statemt.addr, align 4
  %arrayidx317 = getelementptr inbounds i32, i32* %282, i32 21
  %283 = load i32, i32* %arrayidx317, align 4
  %and318 = and i32 %283, 15
  %arrayidx319 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx316, i32 0, i32 %and318
  %284 = load i32, i32* %arrayidx319, align 4
  %285 = load i32*, i32** %statemt.addr, align 4
  %arrayidx320 = getelementptr inbounds i32, i32* %285, i32 17
  store i32 %284, i32* %arrayidx320, align 4
  %286 = load i32*, i32** %statemt.addr, align 4
  %arrayidx321 = getelementptr inbounds i32, i32* %286, i32 25
  %287 = load i32, i32* %arrayidx321, align 4
  %shr322 = ashr i32 %287, 4
  %arrayidx323 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr322
  %288 = load i32*, i32** %statemt.addr, align 4
  %arrayidx324 = getelementptr inbounds i32, i32* %288, i32 25
  %289 = load i32, i32* %arrayidx324, align 4
  %and325 = and i32 %289, 15
  %arrayidx326 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx323, i32 0, i32 %and325
  %290 = load i32, i32* %arrayidx326, align 4
  %291 = load i32*, i32** %statemt.addr, align 4
  %arrayidx327 = getelementptr inbounds i32, i32* %291, i32 21
  store i32 %290, i32* %arrayidx327, align 4
  %292 = load i32*, i32** %statemt.addr, align 4
  %arrayidx328 = getelementptr inbounds i32, i32* %292, i32 29
  %293 = load i32, i32* %arrayidx328, align 4
  %shr329 = ashr i32 %293, 4
  %arrayidx330 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr329
  %294 = load i32*, i32** %statemt.addr, align 4
  %arrayidx331 = getelementptr inbounds i32, i32* %294, i32 29
  %295 = load i32, i32* %arrayidx331, align 4
  %and332 = and i32 %295, 15
  %arrayidx333 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx330, i32 0, i32 %and332
  %296 = load i32, i32* %arrayidx333, align 4
  %297 = load i32*, i32** %statemt.addr, align 4
  %arrayidx334 = getelementptr inbounds i32, i32* %297, i32 25
  store i32 %296, i32* %arrayidx334, align 4
  %298 = load i32, i32* %temp, align 4
  %299 = load i32*, i32** %statemt.addr, align 4
  %arrayidx335 = getelementptr inbounds i32, i32* %299, i32 29
  store i32 %298, i32* %arrayidx335, align 4
  %300 = load i32*, i32** %statemt.addr, align 4
  %arrayidx336 = getelementptr inbounds i32, i32* %300, i32 2
  %301 = load i32, i32* %arrayidx336, align 4
  %shr337 = ashr i32 %301, 4
  %arrayidx338 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr337
  %302 = load i32*, i32** %statemt.addr, align 4
  %arrayidx339 = getelementptr inbounds i32, i32* %302, i32 2
  %303 = load i32, i32* %arrayidx339, align 4
  %and340 = and i32 %303, 15
  %arrayidx341 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx338, i32 0, i32 %and340
  %304 = load i32, i32* %arrayidx341, align 4
  store i32 %304, i32* %temp, align 4
  %305 = load i32*, i32** %statemt.addr, align 4
  %arrayidx342 = getelementptr inbounds i32, i32* %305, i32 14
  %306 = load i32, i32* %arrayidx342, align 4
  %shr343 = ashr i32 %306, 4
  %arrayidx344 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr343
  %307 = load i32*, i32** %statemt.addr, align 4
  %arrayidx345 = getelementptr inbounds i32, i32* %307, i32 14
  %308 = load i32, i32* %arrayidx345, align 4
  %and346 = and i32 %308, 15
  %arrayidx347 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx344, i32 0, i32 %and346
  %309 = load i32, i32* %arrayidx347, align 4
  %310 = load i32*, i32** %statemt.addr, align 4
  %arrayidx348 = getelementptr inbounds i32, i32* %310, i32 2
  store i32 %309, i32* %arrayidx348, align 4
  %311 = load i32*, i32** %statemt.addr, align 4
  %arrayidx349 = getelementptr inbounds i32, i32* %311, i32 26
  %312 = load i32, i32* %arrayidx349, align 4
  %shr350 = ashr i32 %312, 4
  %arrayidx351 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr350
  %313 = load i32*, i32** %statemt.addr, align 4
  %arrayidx352 = getelementptr inbounds i32, i32* %313, i32 26
  %314 = load i32, i32* %arrayidx352, align 4
  %and353 = and i32 %314, 15
  %arrayidx354 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx351, i32 0, i32 %and353
  %315 = load i32, i32* %arrayidx354, align 4
  %316 = load i32*, i32** %statemt.addr, align 4
  %arrayidx355 = getelementptr inbounds i32, i32* %316, i32 14
  store i32 %315, i32* %arrayidx355, align 4
  %317 = load i32*, i32** %statemt.addr, align 4
  %arrayidx356 = getelementptr inbounds i32, i32* %317, i32 6
  %318 = load i32, i32* %arrayidx356, align 4
  %shr357 = ashr i32 %318, 4
  %arrayidx358 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr357
  %319 = load i32*, i32** %statemt.addr, align 4
  %arrayidx359 = getelementptr inbounds i32, i32* %319, i32 6
  %320 = load i32, i32* %arrayidx359, align 4
  %and360 = and i32 %320, 15
  %arrayidx361 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx358, i32 0, i32 %and360
  %321 = load i32, i32* %arrayidx361, align 4
  %322 = load i32*, i32** %statemt.addr, align 4
  %arrayidx362 = getelementptr inbounds i32, i32* %322, i32 26
  store i32 %321, i32* %arrayidx362, align 4
  %323 = load i32*, i32** %statemt.addr, align 4
  %arrayidx363 = getelementptr inbounds i32, i32* %323, i32 18
  %324 = load i32, i32* %arrayidx363, align 4
  %shr364 = ashr i32 %324, 4
  %arrayidx365 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr364
  %325 = load i32*, i32** %statemt.addr, align 4
  %arrayidx366 = getelementptr inbounds i32, i32* %325, i32 18
  %326 = load i32, i32* %arrayidx366, align 4
  %and367 = and i32 %326, 15
  %arrayidx368 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx365, i32 0, i32 %and367
  %327 = load i32, i32* %arrayidx368, align 4
  %328 = load i32*, i32** %statemt.addr, align 4
  %arrayidx369 = getelementptr inbounds i32, i32* %328, i32 6
  store i32 %327, i32* %arrayidx369, align 4
  %329 = load i32*, i32** %statemt.addr, align 4
  %arrayidx370 = getelementptr inbounds i32, i32* %329, i32 30
  %330 = load i32, i32* %arrayidx370, align 4
  %shr371 = ashr i32 %330, 4
  %arrayidx372 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr371
  %331 = load i32*, i32** %statemt.addr, align 4
  %arrayidx373 = getelementptr inbounds i32, i32* %331, i32 30
  %332 = load i32, i32* %arrayidx373, align 4
  %and374 = and i32 %332, 15
  %arrayidx375 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx372, i32 0, i32 %and374
  %333 = load i32, i32* %arrayidx375, align 4
  %334 = load i32*, i32** %statemt.addr, align 4
  %arrayidx376 = getelementptr inbounds i32, i32* %334, i32 18
  store i32 %333, i32* %arrayidx376, align 4
  %335 = load i32*, i32** %statemt.addr, align 4
  %arrayidx377 = getelementptr inbounds i32, i32* %335, i32 10
  %336 = load i32, i32* %arrayidx377, align 4
  %shr378 = ashr i32 %336, 4
  %arrayidx379 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr378
  %337 = load i32*, i32** %statemt.addr, align 4
  %arrayidx380 = getelementptr inbounds i32, i32* %337, i32 10
  %338 = load i32, i32* %arrayidx380, align 4
  %and381 = and i32 %338, 15
  %arrayidx382 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx379, i32 0, i32 %and381
  %339 = load i32, i32* %arrayidx382, align 4
  %340 = load i32*, i32** %statemt.addr, align 4
  %arrayidx383 = getelementptr inbounds i32, i32* %340, i32 30
  store i32 %339, i32* %arrayidx383, align 4
  %341 = load i32*, i32** %statemt.addr, align 4
  %arrayidx384 = getelementptr inbounds i32, i32* %341, i32 22
  %342 = load i32, i32* %arrayidx384, align 4
  %shr385 = ashr i32 %342, 4
  %arrayidx386 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr385
  %343 = load i32*, i32** %statemt.addr, align 4
  %arrayidx387 = getelementptr inbounds i32, i32* %343, i32 22
  %344 = load i32, i32* %arrayidx387, align 4
  %and388 = and i32 %344, 15
  %arrayidx389 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx386, i32 0, i32 %and388
  %345 = load i32, i32* %arrayidx389, align 4
  %346 = load i32*, i32** %statemt.addr, align 4
  %arrayidx390 = getelementptr inbounds i32, i32* %346, i32 10
  store i32 %345, i32* %arrayidx390, align 4
  %347 = load i32, i32* %temp, align 4
  %348 = load i32*, i32** %statemt.addr, align 4
  %arrayidx391 = getelementptr inbounds i32, i32* %348, i32 22
  store i32 %347, i32* %arrayidx391, align 4
  %349 = load i32*, i32** %statemt.addr, align 4
  %arrayidx392 = getelementptr inbounds i32, i32* %349, i32 3
  %350 = load i32, i32* %arrayidx392, align 4
  %shr393 = ashr i32 %350, 4
  %arrayidx394 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr393
  %351 = load i32*, i32** %statemt.addr, align 4
  %arrayidx395 = getelementptr inbounds i32, i32* %351, i32 3
  %352 = load i32, i32* %arrayidx395, align 4
  %and396 = and i32 %352, 15
  %arrayidx397 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx394, i32 0, i32 %and396
  %353 = load i32, i32* %arrayidx397, align 4
  store i32 %353, i32* %temp, align 4
  %354 = load i32*, i32** %statemt.addr, align 4
  %arrayidx398 = getelementptr inbounds i32, i32* %354, i32 19
  %355 = load i32, i32* %arrayidx398, align 4
  %shr399 = ashr i32 %355, 4
  %arrayidx400 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr399
  %356 = load i32*, i32** %statemt.addr, align 4
  %arrayidx401 = getelementptr inbounds i32, i32* %356, i32 19
  %357 = load i32, i32* %arrayidx401, align 4
  %and402 = and i32 %357, 15
  %arrayidx403 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx400, i32 0, i32 %and402
  %358 = load i32, i32* %arrayidx403, align 4
  %359 = load i32*, i32** %statemt.addr, align 4
  %arrayidx404 = getelementptr inbounds i32, i32* %359, i32 3
  store i32 %358, i32* %arrayidx404, align 4
  %360 = load i32, i32* %temp, align 4
  %361 = load i32*, i32** %statemt.addr, align 4
  %arrayidx405 = getelementptr inbounds i32, i32* %361, i32 19
  store i32 %360, i32* %arrayidx405, align 4
  %362 = load i32*, i32** %statemt.addr, align 4
  %arrayidx406 = getelementptr inbounds i32, i32* %362, i32 7
  %363 = load i32, i32* %arrayidx406, align 4
  %shr407 = ashr i32 %363, 4
  %arrayidx408 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr407
  %364 = load i32*, i32** %statemt.addr, align 4
  %arrayidx409 = getelementptr inbounds i32, i32* %364, i32 7
  %365 = load i32, i32* %arrayidx409, align 4
  %and410 = and i32 %365, 15
  %arrayidx411 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx408, i32 0, i32 %and410
  %366 = load i32, i32* %arrayidx411, align 4
  store i32 %366, i32* %temp, align 4
  %367 = load i32*, i32** %statemt.addr, align 4
  %arrayidx412 = getelementptr inbounds i32, i32* %367, i32 23
  %368 = load i32, i32* %arrayidx412, align 4
  %shr413 = ashr i32 %368, 4
  %arrayidx414 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr413
  %369 = load i32*, i32** %statemt.addr, align 4
  %arrayidx415 = getelementptr inbounds i32, i32* %369, i32 23
  %370 = load i32, i32* %arrayidx415, align 4
  %and416 = and i32 %370, 15
  %arrayidx417 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx414, i32 0, i32 %and416
  %371 = load i32, i32* %arrayidx417, align 4
  %372 = load i32*, i32** %statemt.addr, align 4
  %arrayidx418 = getelementptr inbounds i32, i32* %372, i32 7
  store i32 %371, i32* %arrayidx418, align 4
  %373 = load i32, i32* %temp, align 4
  %374 = load i32*, i32** %statemt.addr, align 4
  %arrayidx419 = getelementptr inbounds i32, i32* %374, i32 23
  store i32 %373, i32* %arrayidx419, align 4
  %375 = load i32*, i32** %statemt.addr, align 4
  %arrayidx420 = getelementptr inbounds i32, i32* %375, i32 11
  %376 = load i32, i32* %arrayidx420, align 4
  %shr421 = ashr i32 %376, 4
  %arrayidx422 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr421
  %377 = load i32*, i32** %statemt.addr, align 4
  %arrayidx423 = getelementptr inbounds i32, i32* %377, i32 11
  %378 = load i32, i32* %arrayidx423, align 4
  %and424 = and i32 %378, 15
  %arrayidx425 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx422, i32 0, i32 %and424
  %379 = load i32, i32* %arrayidx425, align 4
  store i32 %379, i32* %temp, align 4
  %380 = load i32*, i32** %statemt.addr, align 4
  %arrayidx426 = getelementptr inbounds i32, i32* %380, i32 27
  %381 = load i32, i32* %arrayidx426, align 4
  %shr427 = ashr i32 %381, 4
  %arrayidx428 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr427
  %382 = load i32*, i32** %statemt.addr, align 4
  %arrayidx429 = getelementptr inbounds i32, i32* %382, i32 27
  %383 = load i32, i32* %arrayidx429, align 4
  %and430 = and i32 %383, 15
  %arrayidx431 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx428, i32 0, i32 %and430
  %384 = load i32, i32* %arrayidx431, align 4
  %385 = load i32*, i32** %statemt.addr, align 4
  %arrayidx432 = getelementptr inbounds i32, i32* %385, i32 11
  store i32 %384, i32* %arrayidx432, align 4
  %386 = load i32, i32* %temp, align 4
  %387 = load i32*, i32** %statemt.addr, align 4
  %arrayidx433 = getelementptr inbounds i32, i32* %387, i32 27
  store i32 %386, i32* %arrayidx433, align 4
  %388 = load i32*, i32** %statemt.addr, align 4
  %arrayidx434 = getelementptr inbounds i32, i32* %388, i32 15
  %389 = load i32, i32* %arrayidx434, align 4
  %shr435 = ashr i32 %389, 4
  %arrayidx436 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr435
  %390 = load i32*, i32** %statemt.addr, align 4
  %arrayidx437 = getelementptr inbounds i32, i32* %390, i32 15
  %391 = load i32, i32* %arrayidx437, align 4
  %and438 = and i32 %391, 15
  %arrayidx439 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx436, i32 0, i32 %and438
  %392 = load i32, i32* %arrayidx439, align 4
  store i32 %392, i32* %temp, align 4
  %393 = load i32*, i32** %statemt.addr, align 4
  %arrayidx440 = getelementptr inbounds i32, i32* %393, i32 31
  %394 = load i32, i32* %arrayidx440, align 4
  %shr441 = ashr i32 %394, 4
  %arrayidx442 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr441
  %395 = load i32*, i32** %statemt.addr, align 4
  %arrayidx443 = getelementptr inbounds i32, i32* %395, i32 31
  %396 = load i32, i32* %arrayidx443, align 4
  %and444 = and i32 %396, 15
  %arrayidx445 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx442, i32 0, i32 %and444
  %397 = load i32, i32* %arrayidx445, align 4
  %398 = load i32*, i32** %statemt.addr, align 4
  %arrayidx446 = getelementptr inbounds i32, i32* %398, i32 15
  store i32 %397, i32* %arrayidx446, align 4
  %399 = load i32, i32* %temp, align 4
  %400 = load i32*, i32** %statemt.addr, align 4
  %arrayidx447 = getelementptr inbounds i32, i32* %400, i32 31
  store i32 %399, i32* %arrayidx447, align 4
  %401 = load i32*, i32** %statemt.addr, align 4
  %arrayidx448 = getelementptr inbounds i32, i32* %401, i32 0
  %402 = load i32, i32* %arrayidx448, align 4
  %shr449 = ashr i32 %402, 4
  %arrayidx450 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr449
  %403 = load i32*, i32** %statemt.addr, align 4
  %arrayidx451 = getelementptr inbounds i32, i32* %403, i32 0
  %404 = load i32, i32* %arrayidx451, align 4
  %and452 = and i32 %404, 15
  %arrayidx453 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx450, i32 0, i32 %and452
  %405 = load i32, i32* %arrayidx453, align 4
  %406 = load i32*, i32** %statemt.addr, align 4
  %arrayidx454 = getelementptr inbounds i32, i32* %406, i32 0
  store i32 %405, i32* %arrayidx454, align 4
  %407 = load i32*, i32** %statemt.addr, align 4
  %arrayidx455 = getelementptr inbounds i32, i32* %407, i32 4
  %408 = load i32, i32* %arrayidx455, align 4
  %shr456 = ashr i32 %408, 4
  %arrayidx457 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr456
  %409 = load i32*, i32** %statemt.addr, align 4
  %arrayidx458 = getelementptr inbounds i32, i32* %409, i32 4
  %410 = load i32, i32* %arrayidx458, align 4
  %and459 = and i32 %410, 15
  %arrayidx460 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx457, i32 0, i32 %and459
  %411 = load i32, i32* %arrayidx460, align 4
  %412 = load i32*, i32** %statemt.addr, align 4
  %arrayidx461 = getelementptr inbounds i32, i32* %412, i32 4
  store i32 %411, i32* %arrayidx461, align 4
  %413 = load i32*, i32** %statemt.addr, align 4
  %arrayidx462 = getelementptr inbounds i32, i32* %413, i32 8
  %414 = load i32, i32* %arrayidx462, align 4
  %shr463 = ashr i32 %414, 4
  %arrayidx464 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr463
  %415 = load i32*, i32** %statemt.addr, align 4
  %arrayidx465 = getelementptr inbounds i32, i32* %415, i32 8
  %416 = load i32, i32* %arrayidx465, align 4
  %and466 = and i32 %416, 15
  %arrayidx467 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx464, i32 0, i32 %and466
  %417 = load i32, i32* %arrayidx467, align 4
  %418 = load i32*, i32** %statemt.addr, align 4
  %arrayidx468 = getelementptr inbounds i32, i32* %418, i32 8
  store i32 %417, i32* %arrayidx468, align 4
  %419 = load i32*, i32** %statemt.addr, align 4
  %arrayidx469 = getelementptr inbounds i32, i32* %419, i32 12
  %420 = load i32, i32* %arrayidx469, align 4
  %shr470 = ashr i32 %420, 4
  %arrayidx471 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr470
  %421 = load i32*, i32** %statemt.addr, align 4
  %arrayidx472 = getelementptr inbounds i32, i32* %421, i32 12
  %422 = load i32, i32* %arrayidx472, align 4
  %and473 = and i32 %422, 15
  %arrayidx474 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx471, i32 0, i32 %and473
  %423 = load i32, i32* %arrayidx474, align 4
  %424 = load i32*, i32** %statemt.addr, align 4
  %arrayidx475 = getelementptr inbounds i32, i32* %424, i32 12
  store i32 %423, i32* %arrayidx475, align 4
  %425 = load i32*, i32** %statemt.addr, align 4
  %arrayidx476 = getelementptr inbounds i32, i32* %425, i32 16
  %426 = load i32, i32* %arrayidx476, align 4
  %shr477 = ashr i32 %426, 4
  %arrayidx478 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr477
  %427 = load i32*, i32** %statemt.addr, align 4
  %arrayidx479 = getelementptr inbounds i32, i32* %427, i32 16
  %428 = load i32, i32* %arrayidx479, align 4
  %and480 = and i32 %428, 15
  %arrayidx481 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx478, i32 0, i32 %and480
  %429 = load i32, i32* %arrayidx481, align 4
  %430 = load i32*, i32** %statemt.addr, align 4
  %arrayidx482 = getelementptr inbounds i32, i32* %430, i32 16
  store i32 %429, i32* %arrayidx482, align 4
  %431 = load i32*, i32** %statemt.addr, align 4
  %arrayidx483 = getelementptr inbounds i32, i32* %431, i32 20
  %432 = load i32, i32* %arrayidx483, align 4
  %shr484 = ashr i32 %432, 4
  %arrayidx485 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr484
  %433 = load i32*, i32** %statemt.addr, align 4
  %arrayidx486 = getelementptr inbounds i32, i32* %433, i32 20
  %434 = load i32, i32* %arrayidx486, align 4
  %and487 = and i32 %434, 15
  %arrayidx488 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx485, i32 0, i32 %and487
  %435 = load i32, i32* %arrayidx488, align 4
  %436 = load i32*, i32** %statemt.addr, align 4
  %arrayidx489 = getelementptr inbounds i32, i32* %436, i32 20
  store i32 %435, i32* %arrayidx489, align 4
  %437 = load i32*, i32** %statemt.addr, align 4
  %arrayidx490 = getelementptr inbounds i32, i32* %437, i32 24
  %438 = load i32, i32* %arrayidx490, align 4
  %shr491 = ashr i32 %438, 4
  %arrayidx492 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr491
  %439 = load i32*, i32** %statemt.addr, align 4
  %arrayidx493 = getelementptr inbounds i32, i32* %439, i32 24
  %440 = load i32, i32* %arrayidx493, align 4
  %and494 = and i32 %440, 15
  %arrayidx495 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx492, i32 0, i32 %and494
  %441 = load i32, i32* %arrayidx495, align 4
  %442 = load i32*, i32** %statemt.addr, align 4
  %arrayidx496 = getelementptr inbounds i32, i32* %442, i32 24
  store i32 %441, i32* %arrayidx496, align 4
  %443 = load i32*, i32** %statemt.addr, align 4
  %arrayidx497 = getelementptr inbounds i32, i32* %443, i32 28
  %444 = load i32, i32* %arrayidx497, align 4
  %shr498 = ashr i32 %444, 4
  %arrayidx499 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr498
  %445 = load i32*, i32** %statemt.addr, align 4
  %arrayidx500 = getelementptr inbounds i32, i32* %445, i32 28
  %446 = load i32, i32* %arrayidx500, align 4
  %and501 = and i32 %446, 15
  %arrayidx502 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx499, i32 0, i32 %and501
  %447 = load i32, i32* %arrayidx502, align 4
  %448 = load i32*, i32** %statemt.addr, align 4
  %arrayidx503 = getelementptr inbounds i32, i32* %448, i32 28
  store i32 %447, i32* %arrayidx503, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb279, %sw.bb110, %sw.bb
  ret void
}

; Function Attrs: noinline nounwind ssp
define i32 @MixColumn_AddRoundKey(i32* %statemt, i32 %nb, i32 %n) #0 {
entry:
  %statemt.addr = alloca i32*, align 4
  %nb.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %ret = alloca [32 x i32], align 4
  %j = alloca i32, align 4
  %x = alloca i32, align 4
  store i32* %statemt, i32** %statemt.addr, align 4
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
  %2 = load i32*, i32** %statemt.addr, align 4
  %3 = load i32, i32* %j, align 4
  %mul = mul nsw i32 %3, 4
  %arrayidx = getelementptr inbounds i32, i32* %2, i32 %mul
  %4 = load i32, i32* %arrayidx, align 4
  %shl = shl i32 %4, 1
  %5 = load i32, i32* %j, align 4
  %mul1 = mul nsw i32 %5, 4
  %arrayidx2 = getelementptr inbounds [32 x i32], [32 x i32]* %ret, i32 0, i32 %mul1
  store i32 %shl, i32* %arrayidx2, align 4
  %6 = load i32, i32* %j, align 4
  %mul3 = mul nsw i32 %6, 4
  %arrayidx4 = getelementptr inbounds [32 x i32], [32 x i32]* %ret, i32 0, i32 %mul3
  %7 = load i32, i32* %arrayidx4, align 4
  %shr = ashr i32 %7, 8
  %cmp5 = icmp eq i32 %shr, 1
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load i32, i32* %j, align 4
  %mul6 = mul nsw i32 %8, 4
  %arrayidx7 = getelementptr inbounds [32 x i32], [32 x i32]* %ret, i32 0, i32 %mul6
  %9 = load i32, i32* %arrayidx7, align 4
  %xor = xor i32 %9, 283
  store i32 %xor, i32* %arrayidx7, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %10 = load i32*, i32** %statemt.addr, align 4
  %11 = load i32, i32* %j, align 4
  %mul8 = mul nsw i32 %11, 4
  %add = add nsw i32 1, %mul8
  %arrayidx9 = getelementptr inbounds i32, i32* %10, i32 %add
  %12 = load i32, i32* %arrayidx9, align 4
  store i32 %12, i32* %x, align 4
  %13 = load i32, i32* %x, align 4
  %shl10 = shl i32 %13, 1
  %14 = load i32, i32* %x, align 4
  %xor11 = xor i32 %14, %shl10
  store i32 %xor11, i32* %x, align 4
  %15 = load i32, i32* %x, align 4
  %shr12 = ashr i32 %15, 8
  %cmp13 = icmp eq i32 %shr12, 1
  br i1 %cmp13, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.end
  %16 = load i32, i32* %x, align 4
  %xor15 = xor i32 %16, 283
  %17 = load i32, i32* %j, align 4
  %mul16 = mul nsw i32 %17, 4
  %arrayidx17 = getelementptr inbounds [32 x i32], [32 x i32]* %ret, i32 0, i32 %mul16
  %18 = load i32, i32* %arrayidx17, align 4
  %xor18 = xor i32 %18, %xor15
  store i32 %xor18, i32* %arrayidx17, align 4
  br label %if.end22

if.else:                                          ; preds = %if.end
  %19 = load i32, i32* %x, align 4
  %20 = load i32, i32* %j, align 4
  %mul19 = mul nsw i32 %20, 4
  %arrayidx20 = getelementptr inbounds [32 x i32], [32 x i32]* %ret, i32 0, i32 %mul19
  %21 = load i32, i32* %arrayidx20, align 4
  %xor21 = xor i32 %21, %19
  store i32 %xor21, i32* %arrayidx20, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.then14
  %22 = load i32*, i32** %statemt.addr, align 4
  %23 = load i32, i32* %j, align 4
  %mul23 = mul nsw i32 %23, 4
  %add24 = add nsw i32 2, %mul23
  %arrayidx25 = getelementptr inbounds i32, i32* %22, i32 %add24
  %24 = load i32, i32* %arrayidx25, align 4
  %25 = load i32*, i32** %statemt.addr, align 4
  %26 = load i32, i32* %j, align 4
  %mul26 = mul nsw i32 %26, 4
  %add27 = add nsw i32 3, %mul26
  %arrayidx28 = getelementptr inbounds i32, i32* %25, i32 %add27
  %27 = load i32, i32* %arrayidx28, align 4
  %xor29 = xor i32 %24, %27
  %28 = load i32, i32* %j, align 4
  %29 = load i32, i32* %nb.addr, align 4
  %30 = load i32, i32* %n.addr, align 4
  %mul30 = mul nsw i32 %29, %30
  %add31 = add nsw i32 %28, %mul30
  %arrayidx32 = getelementptr inbounds [120 x i32], [120 x i32]* getelementptr inbounds ([4 x [120 x i32]], [4 x [120 x i32]]* @word, i32 0, i32 0), i32 0, i32 %add31
  %31 = load i32, i32* %arrayidx32, align 4
  %xor33 = xor i32 %xor29, %31
  %32 = load i32, i32* %j, align 4
  %mul34 = mul nsw i32 %32, 4
  %arrayidx35 = getelementptr inbounds [32 x i32], [32 x i32]* %ret, i32 0, i32 %mul34
  %33 = load i32, i32* %arrayidx35, align 4
  %xor36 = xor i32 %33, %xor33
  store i32 %xor36, i32* %arrayidx35, align 4
  %34 = load i32*, i32** %statemt.addr, align 4
  %35 = load i32, i32* %j, align 4
  %mul37 = mul nsw i32 %35, 4
  %add38 = add nsw i32 1, %mul37
  %arrayidx39 = getelementptr inbounds i32, i32* %34, i32 %add38
  %36 = load i32, i32* %arrayidx39, align 4
  %shl40 = shl i32 %36, 1
  %37 = load i32, i32* %j, align 4
  %mul41 = mul nsw i32 %37, 4
  %add42 = add nsw i32 1, %mul41
  %arrayidx43 = getelementptr inbounds [32 x i32], [32 x i32]* %ret, i32 0, i32 %add42
  store i32 %shl40, i32* %arrayidx43, align 4
  %38 = load i32, i32* %j, align 4
  %mul44 = mul nsw i32 %38, 4
  %add45 = add nsw i32 1, %mul44
  %arrayidx46 = getelementptr inbounds [32 x i32], [32 x i32]* %ret, i32 0, i32 %add45
  %39 = load i32, i32* %arrayidx46, align 4
  %shr47 = ashr i32 %39, 8
  %cmp48 = icmp eq i32 %shr47, 1
  br i1 %cmp48, label %if.then49, label %if.end54

if.then49:                                        ; preds = %if.end22
  %40 = load i32, i32* %j, align 4
  %mul50 = mul nsw i32 %40, 4
  %add51 = add nsw i32 1, %mul50
  %arrayidx52 = getelementptr inbounds [32 x i32], [32 x i32]* %ret, i32 0, i32 %add51
  %41 = load i32, i32* %arrayidx52, align 4
  %xor53 = xor i32 %41, 283
  store i32 %xor53, i32* %arrayidx52, align 4
  br label %if.end54

if.end54:                                         ; preds = %if.then49, %if.end22
  %42 = load i32*, i32** %statemt.addr, align 4
  %43 = load i32, i32* %j, align 4
  %mul55 = mul nsw i32 %43, 4
  %add56 = add nsw i32 2, %mul55
  %arrayidx57 = getelementptr inbounds i32, i32* %42, i32 %add56
  %44 = load i32, i32* %arrayidx57, align 4
  store i32 %44, i32* %x, align 4
  %45 = load i32, i32* %x, align 4
  %shl58 = shl i32 %45, 1
  %46 = load i32, i32* %x, align 4
  %xor59 = xor i32 %46, %shl58
  store i32 %xor59, i32* %x, align 4
  %47 = load i32, i32* %x, align 4
  %shr60 = ashr i32 %47, 8
  %cmp61 = icmp eq i32 %shr60, 1
  br i1 %cmp61, label %if.then62, label %if.else68

if.then62:                                        ; preds = %if.end54
  %48 = load i32, i32* %x, align 4
  %xor63 = xor i32 %48, 283
  %49 = load i32, i32* %j, align 4
  %mul64 = mul nsw i32 %49, 4
  %add65 = add nsw i32 1, %mul64
  %arrayidx66 = getelementptr inbounds [32 x i32], [32 x i32]* %ret, i32 0, i32 %add65
  %50 = load i32, i32* %arrayidx66, align 4
  %xor67 = xor i32 %50, %xor63
  store i32 %xor67, i32* %arrayidx66, align 4
  br label %if.end73

if.else68:                                        ; preds = %if.end54
  %51 = load i32, i32* %x, align 4
  %52 = load i32, i32* %j, align 4
  %mul69 = mul nsw i32 %52, 4
  %add70 = add nsw i32 1, %mul69
  %arrayidx71 = getelementptr inbounds [32 x i32], [32 x i32]* %ret, i32 0, i32 %add70
  %53 = load i32, i32* %arrayidx71, align 4
  %xor72 = xor i32 %53, %51
  store i32 %xor72, i32* %arrayidx71, align 4
  br label %if.end73

if.end73:                                         ; preds = %if.else68, %if.then62
  %54 = load i32*, i32** %statemt.addr, align 4
  %55 = load i32, i32* %j, align 4
  %mul74 = mul nsw i32 %55, 4
  %add75 = add nsw i32 3, %mul74
  %arrayidx76 = getelementptr inbounds i32, i32* %54, i32 %add75
  %56 = load i32, i32* %arrayidx76, align 4
  %57 = load i32*, i32** %statemt.addr, align 4
  %58 = load i32, i32* %j, align 4
  %mul77 = mul nsw i32 %58, 4
  %arrayidx78 = getelementptr inbounds i32, i32* %57, i32 %mul77
  %59 = load i32, i32* %arrayidx78, align 4
  %xor79 = xor i32 %56, %59
  %60 = load i32, i32* %j, align 4
  %61 = load i32, i32* %nb.addr, align 4
  %62 = load i32, i32* %n.addr, align 4
  %mul80 = mul nsw i32 %61, %62
  %add81 = add nsw i32 %60, %mul80
  %arrayidx82 = getelementptr inbounds [120 x i32], [120 x i32]* getelementptr inbounds ([4 x [120 x i32]], [4 x [120 x i32]]* @word, i32 0, i32 1), i32 0, i32 %add81
  %63 = load i32, i32* %arrayidx82, align 4
  %xor83 = xor i32 %xor79, %63
  %64 = load i32, i32* %j, align 4
  %mul84 = mul nsw i32 %64, 4
  %add85 = add nsw i32 1, %mul84
  %arrayidx86 = getelementptr inbounds [32 x i32], [32 x i32]* %ret, i32 0, i32 %add85
  %65 = load i32, i32* %arrayidx86, align 4
  %xor87 = xor i32 %65, %xor83
  store i32 %xor87, i32* %arrayidx86, align 4
  %66 = load i32*, i32** %statemt.addr, align 4
  %67 = load i32, i32* %j, align 4
  %mul88 = mul nsw i32 %67, 4
  %add89 = add nsw i32 2, %mul88
  %arrayidx90 = getelementptr inbounds i32, i32* %66, i32 %add89
  %68 = load i32, i32* %arrayidx90, align 4
  %shl91 = shl i32 %68, 1
  %69 = load i32, i32* %j, align 4
  %mul92 = mul nsw i32 %69, 4
  %add93 = add nsw i32 2, %mul92
  %arrayidx94 = getelementptr inbounds [32 x i32], [32 x i32]* %ret, i32 0, i32 %add93
  store i32 %shl91, i32* %arrayidx94, align 4
  %70 = load i32, i32* %j, align 4
  %mul95 = mul nsw i32 %70, 4
  %add96 = add nsw i32 2, %mul95
  %arrayidx97 = getelementptr inbounds [32 x i32], [32 x i32]* %ret, i32 0, i32 %add96
  %71 = load i32, i32* %arrayidx97, align 4
  %shr98 = ashr i32 %71, 8
  %cmp99 = icmp eq i32 %shr98, 1
  br i1 %cmp99, label %if.then100, label %if.end105

if.then100:                                       ; preds = %if.end73
  %72 = load i32, i32* %j, align 4
  %mul101 = mul nsw i32 %72, 4
  %add102 = add nsw i32 2, %mul101
  %arrayidx103 = getelementptr inbounds [32 x i32], [32 x i32]* %ret, i32 0, i32 %add102
  %73 = load i32, i32* %arrayidx103, align 4
  %xor104 = xor i32 %73, 283
  store i32 %xor104, i32* %arrayidx103, align 4
  br label %if.end105

if.end105:                                        ; preds = %if.then100, %if.end73
  %74 = load i32*, i32** %statemt.addr, align 4
  %75 = load i32, i32* %j, align 4
  %mul106 = mul nsw i32 %75, 4
  %add107 = add nsw i32 3, %mul106
  %arrayidx108 = getelementptr inbounds i32, i32* %74, i32 %add107
  %76 = load i32, i32* %arrayidx108, align 4
  store i32 %76, i32* %x, align 4
  %77 = load i32, i32* %x, align 4
  %shl109 = shl i32 %77, 1
  %78 = load i32, i32* %x, align 4
  %xor110 = xor i32 %78, %shl109
  store i32 %xor110, i32* %x, align 4
  %79 = load i32, i32* %x, align 4
  %shr111 = ashr i32 %79, 8
  %cmp112 = icmp eq i32 %shr111, 1
  br i1 %cmp112, label %if.then113, label %if.else119

if.then113:                                       ; preds = %if.end105
  %80 = load i32, i32* %x, align 4
  %xor114 = xor i32 %80, 283
  %81 = load i32, i32* %j, align 4
  %mul115 = mul nsw i32 %81, 4
  %add116 = add nsw i32 2, %mul115
  %arrayidx117 = getelementptr inbounds [32 x i32], [32 x i32]* %ret, i32 0, i32 %add116
  %82 = load i32, i32* %arrayidx117, align 4
  %xor118 = xor i32 %82, %xor114
  store i32 %xor118, i32* %arrayidx117, align 4
  br label %if.end124

if.else119:                                       ; preds = %if.end105
  %83 = load i32, i32* %x, align 4
  %84 = load i32, i32* %j, align 4
  %mul120 = mul nsw i32 %84, 4
  %add121 = add nsw i32 2, %mul120
  %arrayidx122 = getelementptr inbounds [32 x i32], [32 x i32]* %ret, i32 0, i32 %add121
  %85 = load i32, i32* %arrayidx122, align 4
  %xor123 = xor i32 %85, %83
  store i32 %xor123, i32* %arrayidx122, align 4
  br label %if.end124

if.end124:                                        ; preds = %if.else119, %if.then113
  %86 = load i32*, i32** %statemt.addr, align 4
  %87 = load i32, i32* %j, align 4
  %mul125 = mul nsw i32 %87, 4
  %arrayidx126 = getelementptr inbounds i32, i32* %86, i32 %mul125
  %88 = load i32, i32* %arrayidx126, align 4
  %89 = load i32*, i32** %statemt.addr, align 4
  %90 = load i32, i32* %j, align 4
  %mul127 = mul nsw i32 %90, 4
  %add128 = add nsw i32 1, %mul127
  %arrayidx129 = getelementptr inbounds i32, i32* %89, i32 %add128
  %91 = load i32, i32* %arrayidx129, align 4
  %xor130 = xor i32 %88, %91
  %92 = load i32, i32* %j, align 4
  %93 = load i32, i32* %nb.addr, align 4
  %94 = load i32, i32* %n.addr, align 4
  %mul131 = mul nsw i32 %93, %94
  %add132 = add nsw i32 %92, %mul131
  %arrayidx133 = getelementptr inbounds [120 x i32], [120 x i32]* getelementptr inbounds ([4 x [120 x i32]], [4 x [120 x i32]]* @word, i32 0, i32 2), i32 0, i32 %add132
  %95 = load i32, i32* %arrayidx133, align 4
  %xor134 = xor i32 %xor130, %95
  %96 = load i32, i32* %j, align 4
  %mul135 = mul nsw i32 %96, 4
  %add136 = add nsw i32 2, %mul135
  %arrayidx137 = getelementptr inbounds [32 x i32], [32 x i32]* %ret, i32 0, i32 %add136
  %97 = load i32, i32* %arrayidx137, align 4
  %xor138 = xor i32 %97, %xor134
  store i32 %xor138, i32* %arrayidx137, align 4
  %98 = load i32*, i32** %statemt.addr, align 4
  %99 = load i32, i32* %j, align 4
  %mul139 = mul nsw i32 %99, 4
  %add140 = add nsw i32 3, %mul139
  %arrayidx141 = getelementptr inbounds i32, i32* %98, i32 %add140
  %100 = load i32, i32* %arrayidx141, align 4
  %shl142 = shl i32 %100, 1
  %101 = load i32, i32* %j, align 4
  %mul143 = mul nsw i32 %101, 4
  %add144 = add nsw i32 3, %mul143
  %arrayidx145 = getelementptr inbounds [32 x i32], [32 x i32]* %ret, i32 0, i32 %add144
  store i32 %shl142, i32* %arrayidx145, align 4
  %102 = load i32, i32* %j, align 4
  %mul146 = mul nsw i32 %102, 4
  %add147 = add nsw i32 3, %mul146
  %arrayidx148 = getelementptr inbounds [32 x i32], [32 x i32]* %ret, i32 0, i32 %add147
  %103 = load i32, i32* %arrayidx148, align 4
  %shr149 = ashr i32 %103, 8
  %cmp150 = icmp eq i32 %shr149, 1
  br i1 %cmp150, label %if.then151, label %if.end156

if.then151:                                       ; preds = %if.end124
  %104 = load i32, i32* %j, align 4
  %mul152 = mul nsw i32 %104, 4
  %add153 = add nsw i32 3, %mul152
  %arrayidx154 = getelementptr inbounds [32 x i32], [32 x i32]* %ret, i32 0, i32 %add153
  %105 = load i32, i32* %arrayidx154, align 4
  %xor155 = xor i32 %105, 283
  store i32 %xor155, i32* %arrayidx154, align 4
  br label %if.end156

if.end156:                                        ; preds = %if.then151, %if.end124
  %106 = load i32*, i32** %statemt.addr, align 4
  %107 = load i32, i32* %j, align 4
  %mul157 = mul nsw i32 %107, 4
  %arrayidx158 = getelementptr inbounds i32, i32* %106, i32 %mul157
  %108 = load i32, i32* %arrayidx158, align 4
  store i32 %108, i32* %x, align 4
  %109 = load i32, i32* %x, align 4
  %shl159 = shl i32 %109, 1
  %110 = load i32, i32* %x, align 4
  %xor160 = xor i32 %110, %shl159
  store i32 %xor160, i32* %x, align 4
  %111 = load i32, i32* %x, align 4
  %shr161 = ashr i32 %111, 8
  %cmp162 = icmp eq i32 %shr161, 1
  br i1 %cmp162, label %if.then163, label %if.else169

if.then163:                                       ; preds = %if.end156
  %112 = load i32, i32* %x, align 4
  %xor164 = xor i32 %112, 283
  %113 = load i32, i32* %j, align 4
  %mul165 = mul nsw i32 %113, 4
  %add166 = add nsw i32 3, %mul165
  %arrayidx167 = getelementptr inbounds [32 x i32], [32 x i32]* %ret, i32 0, i32 %add166
  %114 = load i32, i32* %arrayidx167, align 4
  %xor168 = xor i32 %114, %xor164
  store i32 %xor168, i32* %arrayidx167, align 4
  br label %if.end174

if.else169:                                       ; preds = %if.end156
  %115 = load i32, i32* %x, align 4
  %116 = load i32, i32* %j, align 4
  %mul170 = mul nsw i32 %116, 4
  %add171 = add nsw i32 3, %mul170
  %arrayidx172 = getelementptr inbounds [32 x i32], [32 x i32]* %ret, i32 0, i32 %add171
  %117 = load i32, i32* %arrayidx172, align 4
  %xor173 = xor i32 %117, %115
  store i32 %xor173, i32* %arrayidx172, align 4
  br label %if.end174

if.end174:                                        ; preds = %if.else169, %if.then163
  %118 = load i32*, i32** %statemt.addr, align 4
  %119 = load i32, i32* %j, align 4
  %mul175 = mul nsw i32 %119, 4
  %add176 = add nsw i32 1, %mul175
  %arrayidx177 = getelementptr inbounds i32, i32* %118, i32 %add176
  %120 = load i32, i32* %arrayidx177, align 4
  %121 = load i32*, i32** %statemt.addr, align 4
  %122 = load i32, i32* %j, align 4
  %mul178 = mul nsw i32 %122, 4
  %add179 = add nsw i32 2, %mul178
  %arrayidx180 = getelementptr inbounds i32, i32* %121, i32 %add179
  %123 = load i32, i32* %arrayidx180, align 4
  %xor181 = xor i32 %120, %123
  %124 = load i32, i32* %j, align 4
  %125 = load i32, i32* %nb.addr, align 4
  %126 = load i32, i32* %n.addr, align 4
  %mul182 = mul nsw i32 %125, %126
  %add183 = add nsw i32 %124, %mul182
  %arrayidx184 = getelementptr inbounds [120 x i32], [120 x i32]* getelementptr inbounds ([4 x [120 x i32]], [4 x [120 x i32]]* @word, i32 0, i32 3), i32 0, i32 %add183
  %127 = load i32, i32* %arrayidx184, align 4
  %xor185 = xor i32 %xor181, %127
  %128 = load i32, i32* %j, align 4
  %mul186 = mul nsw i32 %128, 4
  %add187 = add nsw i32 3, %mul186
  %arrayidx188 = getelementptr inbounds [32 x i32], [32 x i32]* %ret, i32 0, i32 %add187
  %129 = load i32, i32* %arrayidx188, align 4
  %xor189 = xor i32 %129, %xor185
  store i32 %xor189, i32* %arrayidx188, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end174
  %130 = load i32, i32* %j, align 4
  %inc = add nsw i32 %130, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond190

for.cond190:                                      ; preds = %for.inc215, %for.end
  %131 = load i32, i32* %j, align 4
  %132 = load i32, i32* %nb.addr, align 4
  %cmp191 = icmp slt i32 %131, %132
  br i1 %cmp191, label %for.body192, label %for.end217

for.body192:                                      ; preds = %for.cond190
  %133 = load i32, i32* %j, align 4
  %mul193 = mul nsw i32 %133, 4
  %arrayidx194 = getelementptr inbounds [32 x i32], [32 x i32]* %ret, i32 0, i32 %mul193
  %134 = load i32, i32* %arrayidx194, align 4
  %135 = load i32*, i32** %statemt.addr, align 4
  %136 = load i32, i32* %j, align 4
  %mul195 = mul nsw i32 %136, 4
  %arrayidx196 = getelementptr inbounds i32, i32* %135, i32 %mul195
  store i32 %134, i32* %arrayidx196, align 4
  %137 = load i32, i32* %j, align 4
  %mul197 = mul nsw i32 %137, 4
  %add198 = add nsw i32 1, %mul197
  %arrayidx199 = getelementptr inbounds [32 x i32], [32 x i32]* %ret, i32 0, i32 %add198
  %138 = load i32, i32* %arrayidx199, align 4
  %139 = load i32*, i32** %statemt.addr, align 4
  %140 = load i32, i32* %j, align 4
  %mul200 = mul nsw i32 %140, 4
  %add201 = add nsw i32 1, %mul200
  %arrayidx202 = getelementptr inbounds i32, i32* %139, i32 %add201
  store i32 %138, i32* %arrayidx202, align 4
  %141 = load i32, i32* %j, align 4
  %mul203 = mul nsw i32 %141, 4
  %add204 = add nsw i32 2, %mul203
  %arrayidx205 = getelementptr inbounds [32 x i32], [32 x i32]* %ret, i32 0, i32 %add204
  %142 = load i32, i32* %arrayidx205, align 4
  %143 = load i32*, i32** %statemt.addr, align 4
  %144 = load i32, i32* %j, align 4
  %mul206 = mul nsw i32 %144, 4
  %add207 = add nsw i32 2, %mul206
  %arrayidx208 = getelementptr inbounds i32, i32* %143, i32 %add207
  store i32 %142, i32* %arrayidx208, align 4
  %145 = load i32, i32* %j, align 4
  %mul209 = mul nsw i32 %145, 4
  %add210 = add nsw i32 3, %mul209
  %arrayidx211 = getelementptr inbounds [32 x i32], [32 x i32]* %ret, i32 0, i32 %add210
  %146 = load i32, i32* %arrayidx211, align 4
  %147 = load i32*, i32** %statemt.addr, align 4
  %148 = load i32, i32* %j, align 4
  %mul212 = mul nsw i32 %148, 4
  %add213 = add nsw i32 3, %mul212
  %arrayidx214 = getelementptr inbounds i32, i32* %147, i32 %add213
  store i32 %146, i32* %arrayidx214, align 4
  br label %for.inc215

for.inc215:                                       ; preds = %for.body192
  %149 = load i32, i32* %j, align 4
  %inc216 = add nsw i32 %149, 1
  store i32 %inc216, i32* %j, align 4
  br label %for.cond190

for.end217:                                       ; preds = %for.cond190
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind ssp
define i32 @decrypt(i32* %statemt, i32* %key, i32 %type) #0 {
entry:
  %statemt.addr = alloca i32*, align 4
  %key.addr = alloca i32*, align 4
  %type.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32* %statemt, i32** %statemt.addr, align 4
  store i32* %key, i32** %key.addr, align 4
  store i32 %type, i32* %type.addr, align 4
  %0 = load i32, i32* %type.addr, align 4
  %1 = load i32*, i32** %key.addr, align 4
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
  %3 = load i32*, i32** %statemt.addr, align 4
  %4 = load i32, i32* %type.addr, align 4
  %5 = load i32, i32* @round_val, align 4
  %call7 = call i32 @AddRoundKey(i32* %3, i32 %4, i32 %5)
  %6 = load i32*, i32** %statemt.addr, align 4
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
  %10 = load i32*, i32** %statemt.addr, align 4
  %11 = load i32, i32* @nb, align 4
  %12 = load i32, i32* %i, align 4
  %call8 = call i32 @AddRoundKey_InversMixColumn(i32* %10, i32 %11, i32 %12)
  %13 = load i32*, i32** %statemt.addr, align 4
  %14 = load i32, i32* @nb, align 4
  call void @InversShiftRow_ByteSub(i32* %13, i32 %14)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4
  %dec = add nsw i32 %15, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load i32*, i32** %statemt.addr, align 4
  %17 = load i32, i32* %type.addr, align 4
  %call9 = call i32 @AddRoundKey(i32* %16, i32 %17, i32 0)
  %call10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc18, %for.end
  %18 = load i32, i32* %i, align 4
  %19 = load i32, i32* %type.addr, align 4
  %rem = srem i32 %19, 1000
  %div = sdiv i32 %rem, 8
  %cmp12 = icmp slt i32 %18, %div
  br i1 %cmp12, label %for.body13, label %for.end19

for.body13:                                       ; preds = %for.cond11
  %20 = load i32*, i32** %statemt.addr, align 4
  %21 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds i32, i32* %20, i32 %21
  %22 = load i32, i32* %arrayidx, align 4
  %cmp14 = icmp slt i32 %22, 16
  br i1 %cmp14, label %if.then, label %if.end

if.then:                                          ; preds = %for.body13
  %call15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body13
  %23 = load i32*, i32** %statemt.addr, align 4
  %24 = load i32, i32* %i, align 4
  %arrayidx16 = getelementptr inbounds i32, i32* %23, i32 %24
  %25 = load i32, i32* %arrayidx16, align 4
  %call17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i32 %25)
  br label %for.inc18

for.inc18:                                        ; preds = %if.end
  %26 = load i32, i32* %i, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond11

for.end19:                                        ; preds = %for.cond11
  store i32 0, i32* %i, align 4
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc26, %for.end19
  %27 = load i32, i32* %i, align 4
  %cmp21 = icmp slt i32 %27, 16
  br i1 %cmp21, label %for.body22, label %for.end28

for.body22:                                       ; preds = %for.cond20
  %28 = load i32*, i32** %statemt.addr, align 4
  %29 = load i32, i32* %i, align 4
  %arrayidx23 = getelementptr inbounds i32, i32* %28, i32 %29
  %30 = load i32, i32* %arrayidx23, align 4
  %31 = load i32, i32* %i, align 4
  %arrayidx24 = getelementptr inbounds [16 x i32], [16 x i32]* @decrypt.out_dec_statemt, i32 0, i32 %31
  %32 = load i32, i32* %arrayidx24, align 4
  %cmp25 = icmp ne i32 %30, %32
  %conv = zext i1 %cmp25 to i32
  %33 = load i32, i32* @main_result, align 4
  %add = add nsw i32 %33, %conv
  store i32 %add, i32* @main_result, align 4
  br label %for.inc26

for.inc26:                                        ; preds = %for.body22
  %34 = load i32, i32* %i, align 4
  %inc27 = add nsw i32 %34, 1
  store i32 %inc27, i32* %i, align 4
  br label %for.cond20

for.end28:                                        ; preds = %for.cond20
  ret i32 0
}

; Function Attrs: noinline nounwind ssp
define void @InversShiftRow_ByteSub(i32* %statemt, i32 %nb) #0 {
entry:
  %statemt.addr = alloca i32*, align 4
  %nb.addr = alloca i32, align 4
  %temp = alloca i32, align 4
  store i32* %statemt, i32** %statemt.addr, align 4
  store i32 %nb, i32* %nb.addr, align 4
  %0 = load i32, i32* %nb.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 4, label %sw.bb
    i32 6, label %sw.bb110
    i32 8, label %sw.bb279
  ]

sw.bb:                                            ; preds = %entry
  %1 = load i32*, i32** %statemt.addr, align 4
  %arrayidx = getelementptr inbounds i32, i32* %1, i32 13
  %2 = load i32, i32* %arrayidx, align 4
  %shr = ashr i32 %2, 4
  %arrayidx1 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr
  %3 = load i32*, i32** %statemt.addr, align 4
  %arrayidx2 = getelementptr inbounds i32, i32* %3, i32 13
  %4 = load i32, i32* %arrayidx2, align 4
  %and = and i32 %4, 15
  %arrayidx3 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx1, i32 0, i32 %and
  %5 = load i32, i32* %arrayidx3, align 4
  store i32 %5, i32* %temp, align 4
  %6 = load i32*, i32** %statemt.addr, align 4
  %arrayidx4 = getelementptr inbounds i32, i32* %6, i32 9
  %7 = load i32, i32* %arrayidx4, align 4
  %shr5 = ashr i32 %7, 4
  %arrayidx6 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr5
  %8 = load i32*, i32** %statemt.addr, align 4
  %arrayidx7 = getelementptr inbounds i32, i32* %8, i32 9
  %9 = load i32, i32* %arrayidx7, align 4
  %and8 = and i32 %9, 15
  %arrayidx9 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx6, i32 0, i32 %and8
  %10 = load i32, i32* %arrayidx9, align 4
  %11 = load i32*, i32** %statemt.addr, align 4
  %arrayidx10 = getelementptr inbounds i32, i32* %11, i32 13
  store i32 %10, i32* %arrayidx10, align 4
  %12 = load i32*, i32** %statemt.addr, align 4
  %arrayidx11 = getelementptr inbounds i32, i32* %12, i32 5
  %13 = load i32, i32* %arrayidx11, align 4
  %shr12 = ashr i32 %13, 4
  %arrayidx13 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr12
  %14 = load i32*, i32** %statemt.addr, align 4
  %arrayidx14 = getelementptr inbounds i32, i32* %14, i32 5
  %15 = load i32, i32* %arrayidx14, align 4
  %and15 = and i32 %15, 15
  %arrayidx16 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx13, i32 0, i32 %and15
  %16 = load i32, i32* %arrayidx16, align 4
  %17 = load i32*, i32** %statemt.addr, align 4
  %arrayidx17 = getelementptr inbounds i32, i32* %17, i32 9
  store i32 %16, i32* %arrayidx17, align 4
  %18 = load i32*, i32** %statemt.addr, align 4
  %arrayidx18 = getelementptr inbounds i32, i32* %18, i32 1
  %19 = load i32, i32* %arrayidx18, align 4
  %shr19 = ashr i32 %19, 4
  %arrayidx20 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr19
  %20 = load i32*, i32** %statemt.addr, align 4
  %arrayidx21 = getelementptr inbounds i32, i32* %20, i32 1
  %21 = load i32, i32* %arrayidx21, align 4
  %and22 = and i32 %21, 15
  %arrayidx23 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx20, i32 0, i32 %and22
  %22 = load i32, i32* %arrayidx23, align 4
  %23 = load i32*, i32** %statemt.addr, align 4
  %arrayidx24 = getelementptr inbounds i32, i32* %23, i32 5
  store i32 %22, i32* %arrayidx24, align 4
  %24 = load i32, i32* %temp, align 4
  %25 = load i32*, i32** %statemt.addr, align 4
  %arrayidx25 = getelementptr inbounds i32, i32* %25, i32 1
  store i32 %24, i32* %arrayidx25, align 4
  %26 = load i32*, i32** %statemt.addr, align 4
  %arrayidx26 = getelementptr inbounds i32, i32* %26, i32 14
  %27 = load i32, i32* %arrayidx26, align 4
  %shr27 = ashr i32 %27, 4
  %arrayidx28 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr27
  %28 = load i32*, i32** %statemt.addr, align 4
  %arrayidx29 = getelementptr inbounds i32, i32* %28, i32 14
  %29 = load i32, i32* %arrayidx29, align 4
  %and30 = and i32 %29, 15
  %arrayidx31 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx28, i32 0, i32 %and30
  %30 = load i32, i32* %arrayidx31, align 4
  store i32 %30, i32* %temp, align 4
  %31 = load i32*, i32** %statemt.addr, align 4
  %arrayidx32 = getelementptr inbounds i32, i32* %31, i32 6
  %32 = load i32, i32* %arrayidx32, align 4
  %shr33 = ashr i32 %32, 4
  %arrayidx34 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr33
  %33 = load i32*, i32** %statemt.addr, align 4
  %arrayidx35 = getelementptr inbounds i32, i32* %33, i32 6
  %34 = load i32, i32* %arrayidx35, align 4
  %and36 = and i32 %34, 15
  %arrayidx37 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx34, i32 0, i32 %and36
  %35 = load i32, i32* %arrayidx37, align 4
  %36 = load i32*, i32** %statemt.addr, align 4
  %arrayidx38 = getelementptr inbounds i32, i32* %36, i32 14
  store i32 %35, i32* %arrayidx38, align 4
  %37 = load i32, i32* %temp, align 4
  %38 = load i32*, i32** %statemt.addr, align 4
  %arrayidx39 = getelementptr inbounds i32, i32* %38, i32 6
  store i32 %37, i32* %arrayidx39, align 4
  %39 = load i32*, i32** %statemt.addr, align 4
  %arrayidx40 = getelementptr inbounds i32, i32* %39, i32 2
  %40 = load i32, i32* %arrayidx40, align 4
  %shr41 = ashr i32 %40, 4
  %arrayidx42 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr41
  %41 = load i32*, i32** %statemt.addr, align 4
  %arrayidx43 = getelementptr inbounds i32, i32* %41, i32 2
  %42 = load i32, i32* %arrayidx43, align 4
  %and44 = and i32 %42, 15
  %arrayidx45 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx42, i32 0, i32 %and44
  %43 = load i32, i32* %arrayidx45, align 4
  store i32 %43, i32* %temp, align 4
  %44 = load i32*, i32** %statemt.addr, align 4
  %arrayidx46 = getelementptr inbounds i32, i32* %44, i32 10
  %45 = load i32, i32* %arrayidx46, align 4
  %shr47 = ashr i32 %45, 4
  %arrayidx48 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr47
  %46 = load i32*, i32** %statemt.addr, align 4
  %arrayidx49 = getelementptr inbounds i32, i32* %46, i32 10
  %47 = load i32, i32* %arrayidx49, align 4
  %and50 = and i32 %47, 15
  %arrayidx51 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx48, i32 0, i32 %and50
  %48 = load i32, i32* %arrayidx51, align 4
  %49 = load i32*, i32** %statemt.addr, align 4
  %arrayidx52 = getelementptr inbounds i32, i32* %49, i32 2
  store i32 %48, i32* %arrayidx52, align 4
  %50 = load i32, i32* %temp, align 4
  %51 = load i32*, i32** %statemt.addr, align 4
  %arrayidx53 = getelementptr inbounds i32, i32* %51, i32 10
  store i32 %50, i32* %arrayidx53, align 4
  %52 = load i32*, i32** %statemt.addr, align 4
  %arrayidx54 = getelementptr inbounds i32, i32* %52, i32 15
  %53 = load i32, i32* %arrayidx54, align 4
  %shr55 = ashr i32 %53, 4
  %arrayidx56 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr55
  %54 = load i32*, i32** %statemt.addr, align 4
  %arrayidx57 = getelementptr inbounds i32, i32* %54, i32 15
  %55 = load i32, i32* %arrayidx57, align 4
  %and58 = and i32 %55, 15
  %arrayidx59 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx56, i32 0, i32 %and58
  %56 = load i32, i32* %arrayidx59, align 4
  store i32 %56, i32* %temp, align 4
  %57 = load i32*, i32** %statemt.addr, align 4
  %arrayidx60 = getelementptr inbounds i32, i32* %57, i32 3
  %58 = load i32, i32* %arrayidx60, align 4
  %shr61 = ashr i32 %58, 4
  %arrayidx62 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr61
  %59 = load i32*, i32** %statemt.addr, align 4
  %arrayidx63 = getelementptr inbounds i32, i32* %59, i32 3
  %60 = load i32, i32* %arrayidx63, align 4
  %and64 = and i32 %60, 15
  %arrayidx65 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx62, i32 0, i32 %and64
  %61 = load i32, i32* %arrayidx65, align 4
  %62 = load i32*, i32** %statemt.addr, align 4
  %arrayidx66 = getelementptr inbounds i32, i32* %62, i32 15
  store i32 %61, i32* %arrayidx66, align 4
  %63 = load i32*, i32** %statemt.addr, align 4
  %arrayidx67 = getelementptr inbounds i32, i32* %63, i32 7
  %64 = load i32, i32* %arrayidx67, align 4
  %shr68 = ashr i32 %64, 4
  %arrayidx69 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr68
  %65 = load i32*, i32** %statemt.addr, align 4
  %arrayidx70 = getelementptr inbounds i32, i32* %65, i32 7
  %66 = load i32, i32* %arrayidx70, align 4
  %and71 = and i32 %66, 15
  %arrayidx72 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx69, i32 0, i32 %and71
  %67 = load i32, i32* %arrayidx72, align 4
  %68 = load i32*, i32** %statemt.addr, align 4
  %arrayidx73 = getelementptr inbounds i32, i32* %68, i32 3
  store i32 %67, i32* %arrayidx73, align 4
  %69 = load i32*, i32** %statemt.addr, align 4
  %arrayidx74 = getelementptr inbounds i32, i32* %69, i32 11
  %70 = load i32, i32* %arrayidx74, align 4
  %shr75 = ashr i32 %70, 4
  %arrayidx76 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr75
  %71 = load i32*, i32** %statemt.addr, align 4
  %arrayidx77 = getelementptr inbounds i32, i32* %71, i32 11
  %72 = load i32, i32* %arrayidx77, align 4
  %and78 = and i32 %72, 15
  %arrayidx79 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx76, i32 0, i32 %and78
  %73 = load i32, i32* %arrayidx79, align 4
  %74 = load i32*, i32** %statemt.addr, align 4
  %arrayidx80 = getelementptr inbounds i32, i32* %74, i32 7
  store i32 %73, i32* %arrayidx80, align 4
  %75 = load i32, i32* %temp, align 4
  %76 = load i32*, i32** %statemt.addr, align 4
  %arrayidx81 = getelementptr inbounds i32, i32* %76, i32 11
  store i32 %75, i32* %arrayidx81, align 4
  %77 = load i32*, i32** %statemt.addr, align 4
  %arrayidx82 = getelementptr inbounds i32, i32* %77, i32 0
  %78 = load i32, i32* %arrayidx82, align 4
  %shr83 = ashr i32 %78, 4
  %arrayidx84 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr83
  %79 = load i32*, i32** %statemt.addr, align 4
  %arrayidx85 = getelementptr inbounds i32, i32* %79, i32 0
  %80 = load i32, i32* %arrayidx85, align 4
  %and86 = and i32 %80, 15
  %arrayidx87 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx84, i32 0, i32 %and86
  %81 = load i32, i32* %arrayidx87, align 4
  %82 = load i32*, i32** %statemt.addr, align 4
  %arrayidx88 = getelementptr inbounds i32, i32* %82, i32 0
  store i32 %81, i32* %arrayidx88, align 4
  %83 = load i32*, i32** %statemt.addr, align 4
  %arrayidx89 = getelementptr inbounds i32, i32* %83, i32 4
  %84 = load i32, i32* %arrayidx89, align 4
  %shr90 = ashr i32 %84, 4
  %arrayidx91 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr90
  %85 = load i32*, i32** %statemt.addr, align 4
  %arrayidx92 = getelementptr inbounds i32, i32* %85, i32 4
  %86 = load i32, i32* %arrayidx92, align 4
  %and93 = and i32 %86, 15
  %arrayidx94 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx91, i32 0, i32 %and93
  %87 = load i32, i32* %arrayidx94, align 4
  %88 = load i32*, i32** %statemt.addr, align 4
  %arrayidx95 = getelementptr inbounds i32, i32* %88, i32 4
  store i32 %87, i32* %arrayidx95, align 4
  %89 = load i32*, i32** %statemt.addr, align 4
  %arrayidx96 = getelementptr inbounds i32, i32* %89, i32 8
  %90 = load i32, i32* %arrayidx96, align 4
  %shr97 = ashr i32 %90, 4
  %arrayidx98 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr97
  %91 = load i32*, i32** %statemt.addr, align 4
  %arrayidx99 = getelementptr inbounds i32, i32* %91, i32 8
  %92 = load i32, i32* %arrayidx99, align 4
  %and100 = and i32 %92, 15
  %arrayidx101 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx98, i32 0, i32 %and100
  %93 = load i32, i32* %arrayidx101, align 4
  %94 = load i32*, i32** %statemt.addr, align 4
  %arrayidx102 = getelementptr inbounds i32, i32* %94, i32 8
  store i32 %93, i32* %arrayidx102, align 4
  %95 = load i32*, i32** %statemt.addr, align 4
  %arrayidx103 = getelementptr inbounds i32, i32* %95, i32 12
  %96 = load i32, i32* %arrayidx103, align 4
  %shr104 = ashr i32 %96, 4
  %arrayidx105 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr104
  %97 = load i32*, i32** %statemt.addr, align 4
  %arrayidx106 = getelementptr inbounds i32, i32* %97, i32 12
  %98 = load i32, i32* %arrayidx106, align 4
  %and107 = and i32 %98, 15
  %arrayidx108 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx105, i32 0, i32 %and107
  %99 = load i32, i32* %arrayidx108, align 4
  %100 = load i32*, i32** %statemt.addr, align 4
  %arrayidx109 = getelementptr inbounds i32, i32* %100, i32 12
  store i32 %99, i32* %arrayidx109, align 4
  br label %sw.epilog

sw.bb110:                                         ; preds = %entry
  %101 = load i32*, i32** %statemt.addr, align 4
  %arrayidx111 = getelementptr inbounds i32, i32* %101, i32 21
  %102 = load i32, i32* %arrayidx111, align 4
  %shr112 = ashr i32 %102, 4
  %arrayidx113 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr112
  %103 = load i32*, i32** %statemt.addr, align 4
  %arrayidx114 = getelementptr inbounds i32, i32* %103, i32 21
  %104 = load i32, i32* %arrayidx114, align 4
  %and115 = and i32 %104, 15
  %arrayidx116 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx113, i32 0, i32 %and115
  %105 = load i32, i32* %arrayidx116, align 4
  store i32 %105, i32* %temp, align 4
  %106 = load i32*, i32** %statemt.addr, align 4
  %arrayidx117 = getelementptr inbounds i32, i32* %106, i32 17
  %107 = load i32, i32* %arrayidx117, align 4
  %shr118 = ashr i32 %107, 4
  %arrayidx119 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr118
  %108 = load i32*, i32** %statemt.addr, align 4
  %arrayidx120 = getelementptr inbounds i32, i32* %108, i32 17
  %109 = load i32, i32* %arrayidx120, align 4
  %and121 = and i32 %109, 15
  %arrayidx122 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx119, i32 0, i32 %and121
  %110 = load i32, i32* %arrayidx122, align 4
  %111 = load i32*, i32** %statemt.addr, align 4
  %arrayidx123 = getelementptr inbounds i32, i32* %111, i32 21
  store i32 %110, i32* %arrayidx123, align 4
  %112 = load i32*, i32** %statemt.addr, align 4
  %arrayidx124 = getelementptr inbounds i32, i32* %112, i32 13
  %113 = load i32, i32* %arrayidx124, align 4
  %shr125 = ashr i32 %113, 4
  %arrayidx126 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr125
  %114 = load i32*, i32** %statemt.addr, align 4
  %arrayidx127 = getelementptr inbounds i32, i32* %114, i32 13
  %115 = load i32, i32* %arrayidx127, align 4
  %and128 = and i32 %115, 15
  %arrayidx129 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx126, i32 0, i32 %and128
  %116 = load i32, i32* %arrayidx129, align 4
  %117 = load i32*, i32** %statemt.addr, align 4
  %arrayidx130 = getelementptr inbounds i32, i32* %117, i32 17
  store i32 %116, i32* %arrayidx130, align 4
  %118 = load i32*, i32** %statemt.addr, align 4
  %arrayidx131 = getelementptr inbounds i32, i32* %118, i32 9
  %119 = load i32, i32* %arrayidx131, align 4
  %shr132 = ashr i32 %119, 4
  %arrayidx133 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr132
  %120 = load i32*, i32** %statemt.addr, align 4
  %arrayidx134 = getelementptr inbounds i32, i32* %120, i32 9
  %121 = load i32, i32* %arrayidx134, align 4
  %and135 = and i32 %121, 15
  %arrayidx136 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx133, i32 0, i32 %and135
  %122 = load i32, i32* %arrayidx136, align 4
  %123 = load i32*, i32** %statemt.addr, align 4
  %arrayidx137 = getelementptr inbounds i32, i32* %123, i32 13
  store i32 %122, i32* %arrayidx137, align 4
  %124 = load i32*, i32** %statemt.addr, align 4
  %arrayidx138 = getelementptr inbounds i32, i32* %124, i32 5
  %125 = load i32, i32* %arrayidx138, align 4
  %shr139 = ashr i32 %125, 4
  %arrayidx140 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr139
  %126 = load i32*, i32** %statemt.addr, align 4
  %arrayidx141 = getelementptr inbounds i32, i32* %126, i32 5
  %127 = load i32, i32* %arrayidx141, align 4
  %and142 = and i32 %127, 15
  %arrayidx143 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx140, i32 0, i32 %and142
  %128 = load i32, i32* %arrayidx143, align 4
  %129 = load i32*, i32** %statemt.addr, align 4
  %arrayidx144 = getelementptr inbounds i32, i32* %129, i32 9
  store i32 %128, i32* %arrayidx144, align 4
  %130 = load i32*, i32** %statemt.addr, align 4
  %arrayidx145 = getelementptr inbounds i32, i32* %130, i32 1
  %131 = load i32, i32* %arrayidx145, align 4
  %shr146 = ashr i32 %131, 4
  %arrayidx147 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr146
  %132 = load i32*, i32** %statemt.addr, align 4
  %arrayidx148 = getelementptr inbounds i32, i32* %132, i32 1
  %133 = load i32, i32* %arrayidx148, align 4
  %and149 = and i32 %133, 15
  %arrayidx150 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx147, i32 0, i32 %and149
  %134 = load i32, i32* %arrayidx150, align 4
  %135 = load i32*, i32** %statemt.addr, align 4
  %arrayidx151 = getelementptr inbounds i32, i32* %135, i32 5
  store i32 %134, i32* %arrayidx151, align 4
  %136 = load i32, i32* %temp, align 4
  %137 = load i32*, i32** %statemt.addr, align 4
  %arrayidx152 = getelementptr inbounds i32, i32* %137, i32 1
  store i32 %136, i32* %arrayidx152, align 4
  %138 = load i32*, i32** %statemt.addr, align 4
  %arrayidx153 = getelementptr inbounds i32, i32* %138, i32 22
  %139 = load i32, i32* %arrayidx153, align 4
  %shr154 = ashr i32 %139, 4
  %arrayidx155 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr154
  %140 = load i32*, i32** %statemt.addr, align 4
  %arrayidx156 = getelementptr inbounds i32, i32* %140, i32 22
  %141 = load i32, i32* %arrayidx156, align 4
  %and157 = and i32 %141, 15
  %arrayidx158 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx155, i32 0, i32 %and157
  %142 = load i32, i32* %arrayidx158, align 4
  store i32 %142, i32* %temp, align 4
  %143 = load i32*, i32** %statemt.addr, align 4
  %arrayidx159 = getelementptr inbounds i32, i32* %143, i32 14
  %144 = load i32, i32* %arrayidx159, align 4
  %shr160 = ashr i32 %144, 4
  %arrayidx161 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr160
  %145 = load i32*, i32** %statemt.addr, align 4
  %arrayidx162 = getelementptr inbounds i32, i32* %145, i32 14
  %146 = load i32, i32* %arrayidx162, align 4
  %and163 = and i32 %146, 15
  %arrayidx164 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx161, i32 0, i32 %and163
  %147 = load i32, i32* %arrayidx164, align 4
  %148 = load i32*, i32** %statemt.addr, align 4
  %arrayidx165 = getelementptr inbounds i32, i32* %148, i32 22
  store i32 %147, i32* %arrayidx165, align 4
  %149 = load i32*, i32** %statemt.addr, align 4
  %arrayidx166 = getelementptr inbounds i32, i32* %149, i32 6
  %150 = load i32, i32* %arrayidx166, align 4
  %shr167 = ashr i32 %150, 4
  %arrayidx168 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr167
  %151 = load i32*, i32** %statemt.addr, align 4
  %arrayidx169 = getelementptr inbounds i32, i32* %151, i32 6
  %152 = load i32, i32* %arrayidx169, align 4
  %and170 = and i32 %152, 15
  %arrayidx171 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx168, i32 0, i32 %and170
  %153 = load i32, i32* %arrayidx171, align 4
  %154 = load i32*, i32** %statemt.addr, align 4
  %arrayidx172 = getelementptr inbounds i32, i32* %154, i32 14
  store i32 %153, i32* %arrayidx172, align 4
  %155 = load i32, i32* %temp, align 4
  %156 = load i32*, i32** %statemt.addr, align 4
  %arrayidx173 = getelementptr inbounds i32, i32* %156, i32 6
  store i32 %155, i32* %arrayidx173, align 4
  %157 = load i32*, i32** %statemt.addr, align 4
  %arrayidx174 = getelementptr inbounds i32, i32* %157, i32 18
  %158 = load i32, i32* %arrayidx174, align 4
  %shr175 = ashr i32 %158, 4
  %arrayidx176 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr175
  %159 = load i32*, i32** %statemt.addr, align 4
  %arrayidx177 = getelementptr inbounds i32, i32* %159, i32 18
  %160 = load i32, i32* %arrayidx177, align 4
  %and178 = and i32 %160, 15
  %arrayidx179 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx176, i32 0, i32 %and178
  %161 = load i32, i32* %arrayidx179, align 4
  store i32 %161, i32* %temp, align 4
  %162 = load i32*, i32** %statemt.addr, align 4
  %arrayidx180 = getelementptr inbounds i32, i32* %162, i32 10
  %163 = load i32, i32* %arrayidx180, align 4
  %shr181 = ashr i32 %163, 4
  %arrayidx182 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr181
  %164 = load i32*, i32** %statemt.addr, align 4
  %arrayidx183 = getelementptr inbounds i32, i32* %164, i32 10
  %165 = load i32, i32* %arrayidx183, align 4
  %and184 = and i32 %165, 15
  %arrayidx185 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx182, i32 0, i32 %and184
  %166 = load i32, i32* %arrayidx185, align 4
  %167 = load i32*, i32** %statemt.addr, align 4
  %arrayidx186 = getelementptr inbounds i32, i32* %167, i32 18
  store i32 %166, i32* %arrayidx186, align 4
  %168 = load i32*, i32** %statemt.addr, align 4
  %arrayidx187 = getelementptr inbounds i32, i32* %168, i32 2
  %169 = load i32, i32* %arrayidx187, align 4
  %shr188 = ashr i32 %169, 4
  %arrayidx189 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr188
  %170 = load i32*, i32** %statemt.addr, align 4
  %arrayidx190 = getelementptr inbounds i32, i32* %170, i32 2
  %171 = load i32, i32* %arrayidx190, align 4
  %and191 = and i32 %171, 15
  %arrayidx192 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx189, i32 0, i32 %and191
  %172 = load i32, i32* %arrayidx192, align 4
  %173 = load i32*, i32** %statemt.addr, align 4
  %arrayidx193 = getelementptr inbounds i32, i32* %173, i32 10
  store i32 %172, i32* %arrayidx193, align 4
  %174 = load i32, i32* %temp, align 4
  %175 = load i32*, i32** %statemt.addr, align 4
  %arrayidx194 = getelementptr inbounds i32, i32* %175, i32 2
  store i32 %174, i32* %arrayidx194, align 4
  %176 = load i32*, i32** %statemt.addr, align 4
  %arrayidx195 = getelementptr inbounds i32, i32* %176, i32 15
  %177 = load i32, i32* %arrayidx195, align 4
  %shr196 = ashr i32 %177, 4
  %arrayidx197 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr196
  %178 = load i32*, i32** %statemt.addr, align 4
  %arrayidx198 = getelementptr inbounds i32, i32* %178, i32 15
  %179 = load i32, i32* %arrayidx198, align 4
  %and199 = and i32 %179, 15
  %arrayidx200 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx197, i32 0, i32 %and199
  %180 = load i32, i32* %arrayidx200, align 4
  store i32 %180, i32* %temp, align 4
  %181 = load i32*, i32** %statemt.addr, align 4
  %arrayidx201 = getelementptr inbounds i32, i32* %181, i32 3
  %182 = load i32, i32* %arrayidx201, align 4
  %shr202 = ashr i32 %182, 4
  %arrayidx203 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr202
  %183 = load i32*, i32** %statemt.addr, align 4
  %arrayidx204 = getelementptr inbounds i32, i32* %183, i32 3
  %184 = load i32, i32* %arrayidx204, align 4
  %and205 = and i32 %184, 15
  %arrayidx206 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx203, i32 0, i32 %and205
  %185 = load i32, i32* %arrayidx206, align 4
  %186 = load i32*, i32** %statemt.addr, align 4
  %arrayidx207 = getelementptr inbounds i32, i32* %186, i32 15
  store i32 %185, i32* %arrayidx207, align 4
  %187 = load i32, i32* %temp, align 4
  %188 = load i32*, i32** %statemt.addr, align 4
  %arrayidx208 = getelementptr inbounds i32, i32* %188, i32 3
  store i32 %187, i32* %arrayidx208, align 4
  %189 = load i32*, i32** %statemt.addr, align 4
  %arrayidx209 = getelementptr inbounds i32, i32* %189, i32 19
  %190 = load i32, i32* %arrayidx209, align 4
  %shr210 = ashr i32 %190, 4
  %arrayidx211 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr210
  %191 = load i32*, i32** %statemt.addr, align 4
  %arrayidx212 = getelementptr inbounds i32, i32* %191, i32 19
  %192 = load i32, i32* %arrayidx212, align 4
  %and213 = and i32 %192, 15
  %arrayidx214 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx211, i32 0, i32 %and213
  %193 = load i32, i32* %arrayidx214, align 4
  store i32 %193, i32* %temp, align 4
  %194 = load i32*, i32** %statemt.addr, align 4
  %arrayidx215 = getelementptr inbounds i32, i32* %194, i32 7
  %195 = load i32, i32* %arrayidx215, align 4
  %shr216 = ashr i32 %195, 4
  %arrayidx217 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr216
  %196 = load i32*, i32** %statemt.addr, align 4
  %arrayidx218 = getelementptr inbounds i32, i32* %196, i32 7
  %197 = load i32, i32* %arrayidx218, align 4
  %and219 = and i32 %197, 15
  %arrayidx220 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx217, i32 0, i32 %and219
  %198 = load i32, i32* %arrayidx220, align 4
  %199 = load i32*, i32** %statemt.addr, align 4
  %arrayidx221 = getelementptr inbounds i32, i32* %199, i32 19
  store i32 %198, i32* %arrayidx221, align 4
  %200 = load i32, i32* %temp, align 4
  %201 = load i32*, i32** %statemt.addr, align 4
  %arrayidx222 = getelementptr inbounds i32, i32* %201, i32 7
  store i32 %200, i32* %arrayidx222, align 4
  %202 = load i32*, i32** %statemt.addr, align 4
  %arrayidx223 = getelementptr inbounds i32, i32* %202, i32 23
  %203 = load i32, i32* %arrayidx223, align 4
  %shr224 = ashr i32 %203, 4
  %arrayidx225 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr224
  %204 = load i32*, i32** %statemt.addr, align 4
  %arrayidx226 = getelementptr inbounds i32, i32* %204, i32 23
  %205 = load i32, i32* %arrayidx226, align 4
  %and227 = and i32 %205, 15
  %arrayidx228 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx225, i32 0, i32 %and227
  %206 = load i32, i32* %arrayidx228, align 4
  store i32 %206, i32* %temp, align 4
  %207 = load i32*, i32** %statemt.addr, align 4
  %arrayidx229 = getelementptr inbounds i32, i32* %207, i32 11
  %208 = load i32, i32* %arrayidx229, align 4
  %shr230 = ashr i32 %208, 4
  %arrayidx231 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr230
  %209 = load i32*, i32** %statemt.addr, align 4
  %arrayidx232 = getelementptr inbounds i32, i32* %209, i32 11
  %210 = load i32, i32* %arrayidx232, align 4
  %and233 = and i32 %210, 15
  %arrayidx234 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx231, i32 0, i32 %and233
  %211 = load i32, i32* %arrayidx234, align 4
  %212 = load i32*, i32** %statemt.addr, align 4
  %arrayidx235 = getelementptr inbounds i32, i32* %212, i32 23
  store i32 %211, i32* %arrayidx235, align 4
  %213 = load i32, i32* %temp, align 4
  %214 = load i32*, i32** %statemt.addr, align 4
  %arrayidx236 = getelementptr inbounds i32, i32* %214, i32 11
  store i32 %213, i32* %arrayidx236, align 4
  %215 = load i32*, i32** %statemt.addr, align 4
  %arrayidx237 = getelementptr inbounds i32, i32* %215, i32 0
  %216 = load i32, i32* %arrayidx237, align 4
  %shr238 = ashr i32 %216, 4
  %arrayidx239 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr238
  %217 = load i32*, i32** %statemt.addr, align 4
  %arrayidx240 = getelementptr inbounds i32, i32* %217, i32 0
  %218 = load i32, i32* %arrayidx240, align 4
  %and241 = and i32 %218, 15
  %arrayidx242 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx239, i32 0, i32 %and241
  %219 = load i32, i32* %arrayidx242, align 4
  %220 = load i32*, i32** %statemt.addr, align 4
  %arrayidx243 = getelementptr inbounds i32, i32* %220, i32 0
  store i32 %219, i32* %arrayidx243, align 4
  %221 = load i32*, i32** %statemt.addr, align 4
  %arrayidx244 = getelementptr inbounds i32, i32* %221, i32 4
  %222 = load i32, i32* %arrayidx244, align 4
  %shr245 = ashr i32 %222, 4
  %arrayidx246 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr245
  %223 = load i32*, i32** %statemt.addr, align 4
  %arrayidx247 = getelementptr inbounds i32, i32* %223, i32 4
  %224 = load i32, i32* %arrayidx247, align 4
  %and248 = and i32 %224, 15
  %arrayidx249 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx246, i32 0, i32 %and248
  %225 = load i32, i32* %arrayidx249, align 4
  %226 = load i32*, i32** %statemt.addr, align 4
  %arrayidx250 = getelementptr inbounds i32, i32* %226, i32 4
  store i32 %225, i32* %arrayidx250, align 4
  %227 = load i32*, i32** %statemt.addr, align 4
  %arrayidx251 = getelementptr inbounds i32, i32* %227, i32 8
  %228 = load i32, i32* %arrayidx251, align 4
  %shr252 = ashr i32 %228, 4
  %arrayidx253 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr252
  %229 = load i32*, i32** %statemt.addr, align 4
  %arrayidx254 = getelementptr inbounds i32, i32* %229, i32 8
  %230 = load i32, i32* %arrayidx254, align 4
  %and255 = and i32 %230, 15
  %arrayidx256 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx253, i32 0, i32 %and255
  %231 = load i32, i32* %arrayidx256, align 4
  %232 = load i32*, i32** %statemt.addr, align 4
  %arrayidx257 = getelementptr inbounds i32, i32* %232, i32 8
  store i32 %231, i32* %arrayidx257, align 4
  %233 = load i32*, i32** %statemt.addr, align 4
  %arrayidx258 = getelementptr inbounds i32, i32* %233, i32 12
  %234 = load i32, i32* %arrayidx258, align 4
  %shr259 = ashr i32 %234, 4
  %arrayidx260 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr259
  %235 = load i32*, i32** %statemt.addr, align 4
  %arrayidx261 = getelementptr inbounds i32, i32* %235, i32 12
  %236 = load i32, i32* %arrayidx261, align 4
  %and262 = and i32 %236, 15
  %arrayidx263 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx260, i32 0, i32 %and262
  %237 = load i32, i32* %arrayidx263, align 4
  %238 = load i32*, i32** %statemt.addr, align 4
  %arrayidx264 = getelementptr inbounds i32, i32* %238, i32 12
  store i32 %237, i32* %arrayidx264, align 4
  %239 = load i32*, i32** %statemt.addr, align 4
  %arrayidx265 = getelementptr inbounds i32, i32* %239, i32 16
  %240 = load i32, i32* %arrayidx265, align 4
  %shr266 = ashr i32 %240, 4
  %arrayidx267 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr266
  %241 = load i32*, i32** %statemt.addr, align 4
  %arrayidx268 = getelementptr inbounds i32, i32* %241, i32 16
  %242 = load i32, i32* %arrayidx268, align 4
  %and269 = and i32 %242, 15
  %arrayidx270 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx267, i32 0, i32 %and269
  %243 = load i32, i32* %arrayidx270, align 4
  %244 = load i32*, i32** %statemt.addr, align 4
  %arrayidx271 = getelementptr inbounds i32, i32* %244, i32 16
  store i32 %243, i32* %arrayidx271, align 4
  %245 = load i32*, i32** %statemt.addr, align 4
  %arrayidx272 = getelementptr inbounds i32, i32* %245, i32 20
  %246 = load i32, i32* %arrayidx272, align 4
  %shr273 = ashr i32 %246, 4
  %arrayidx274 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr273
  %247 = load i32*, i32** %statemt.addr, align 4
  %arrayidx275 = getelementptr inbounds i32, i32* %247, i32 20
  %248 = load i32, i32* %arrayidx275, align 4
  %and276 = and i32 %248, 15
  %arrayidx277 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx274, i32 0, i32 %and276
  %249 = load i32, i32* %arrayidx277, align 4
  %250 = load i32*, i32** %statemt.addr, align 4
  %arrayidx278 = getelementptr inbounds i32, i32* %250, i32 20
  store i32 %249, i32* %arrayidx278, align 4
  br label %sw.epilog

sw.bb279:                                         ; preds = %entry
  %251 = load i32*, i32** %statemt.addr, align 4
  %arrayidx280 = getelementptr inbounds i32, i32* %251, i32 29
  %252 = load i32, i32* %arrayidx280, align 4
  %shr281 = ashr i32 %252, 4
  %arrayidx282 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr281
  %253 = load i32*, i32** %statemt.addr, align 4
  %arrayidx283 = getelementptr inbounds i32, i32* %253, i32 29
  %254 = load i32, i32* %arrayidx283, align 4
  %and284 = and i32 %254, 15
  %arrayidx285 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx282, i32 0, i32 %and284
  %255 = load i32, i32* %arrayidx285, align 4
  store i32 %255, i32* %temp, align 4
  %256 = load i32*, i32** %statemt.addr, align 4
  %arrayidx286 = getelementptr inbounds i32, i32* %256, i32 25
  %257 = load i32, i32* %arrayidx286, align 4
  %shr287 = ashr i32 %257, 4
  %arrayidx288 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr287
  %258 = load i32*, i32** %statemt.addr, align 4
  %arrayidx289 = getelementptr inbounds i32, i32* %258, i32 25
  %259 = load i32, i32* %arrayidx289, align 4
  %and290 = and i32 %259, 15
  %arrayidx291 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx288, i32 0, i32 %and290
  %260 = load i32, i32* %arrayidx291, align 4
  %261 = load i32*, i32** %statemt.addr, align 4
  %arrayidx292 = getelementptr inbounds i32, i32* %261, i32 29
  store i32 %260, i32* %arrayidx292, align 4
  %262 = load i32*, i32** %statemt.addr, align 4
  %arrayidx293 = getelementptr inbounds i32, i32* %262, i32 21
  %263 = load i32, i32* %arrayidx293, align 4
  %shr294 = ashr i32 %263, 4
  %arrayidx295 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr294
  %264 = load i32*, i32** %statemt.addr, align 4
  %arrayidx296 = getelementptr inbounds i32, i32* %264, i32 21
  %265 = load i32, i32* %arrayidx296, align 4
  %and297 = and i32 %265, 15
  %arrayidx298 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx295, i32 0, i32 %and297
  %266 = load i32, i32* %arrayidx298, align 4
  %267 = load i32*, i32** %statemt.addr, align 4
  %arrayidx299 = getelementptr inbounds i32, i32* %267, i32 25
  store i32 %266, i32* %arrayidx299, align 4
  %268 = load i32*, i32** %statemt.addr, align 4
  %arrayidx300 = getelementptr inbounds i32, i32* %268, i32 17
  %269 = load i32, i32* %arrayidx300, align 4
  %shr301 = ashr i32 %269, 4
  %arrayidx302 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr301
  %270 = load i32*, i32** %statemt.addr, align 4
  %arrayidx303 = getelementptr inbounds i32, i32* %270, i32 17
  %271 = load i32, i32* %arrayidx303, align 4
  %and304 = and i32 %271, 15
  %arrayidx305 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx302, i32 0, i32 %and304
  %272 = load i32, i32* %arrayidx305, align 4
  %273 = load i32*, i32** %statemt.addr, align 4
  %arrayidx306 = getelementptr inbounds i32, i32* %273, i32 21
  store i32 %272, i32* %arrayidx306, align 4
  %274 = load i32*, i32** %statemt.addr, align 4
  %arrayidx307 = getelementptr inbounds i32, i32* %274, i32 13
  %275 = load i32, i32* %arrayidx307, align 4
  %shr308 = ashr i32 %275, 4
  %arrayidx309 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr308
  %276 = load i32*, i32** %statemt.addr, align 4
  %arrayidx310 = getelementptr inbounds i32, i32* %276, i32 13
  %277 = load i32, i32* %arrayidx310, align 4
  %and311 = and i32 %277, 15
  %arrayidx312 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx309, i32 0, i32 %and311
  %278 = load i32, i32* %arrayidx312, align 4
  %279 = load i32*, i32** %statemt.addr, align 4
  %arrayidx313 = getelementptr inbounds i32, i32* %279, i32 17
  store i32 %278, i32* %arrayidx313, align 4
  %280 = load i32*, i32** %statemt.addr, align 4
  %arrayidx314 = getelementptr inbounds i32, i32* %280, i32 9
  %281 = load i32, i32* %arrayidx314, align 4
  %shr315 = ashr i32 %281, 4
  %arrayidx316 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr315
  %282 = load i32*, i32** %statemt.addr, align 4
  %arrayidx317 = getelementptr inbounds i32, i32* %282, i32 9
  %283 = load i32, i32* %arrayidx317, align 4
  %and318 = and i32 %283, 15
  %arrayidx319 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx316, i32 0, i32 %and318
  %284 = load i32, i32* %arrayidx319, align 4
  %285 = load i32*, i32** %statemt.addr, align 4
  %arrayidx320 = getelementptr inbounds i32, i32* %285, i32 13
  store i32 %284, i32* %arrayidx320, align 4
  %286 = load i32*, i32** %statemt.addr, align 4
  %arrayidx321 = getelementptr inbounds i32, i32* %286, i32 5
  %287 = load i32, i32* %arrayidx321, align 4
  %shr322 = ashr i32 %287, 4
  %arrayidx323 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr322
  %288 = load i32*, i32** %statemt.addr, align 4
  %arrayidx324 = getelementptr inbounds i32, i32* %288, i32 5
  %289 = load i32, i32* %arrayidx324, align 4
  %and325 = and i32 %289, 15
  %arrayidx326 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx323, i32 0, i32 %and325
  %290 = load i32, i32* %arrayidx326, align 4
  %291 = load i32*, i32** %statemt.addr, align 4
  %arrayidx327 = getelementptr inbounds i32, i32* %291, i32 9
  store i32 %290, i32* %arrayidx327, align 4
  %292 = load i32*, i32** %statemt.addr, align 4
  %arrayidx328 = getelementptr inbounds i32, i32* %292, i32 1
  %293 = load i32, i32* %arrayidx328, align 4
  %shr329 = ashr i32 %293, 4
  %arrayidx330 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr329
  %294 = load i32*, i32** %statemt.addr, align 4
  %arrayidx331 = getelementptr inbounds i32, i32* %294, i32 1
  %295 = load i32, i32* %arrayidx331, align 4
  %and332 = and i32 %295, 15
  %arrayidx333 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx330, i32 0, i32 %and332
  %296 = load i32, i32* %arrayidx333, align 4
  %297 = load i32*, i32** %statemt.addr, align 4
  %arrayidx334 = getelementptr inbounds i32, i32* %297, i32 5
  store i32 %296, i32* %arrayidx334, align 4
  %298 = load i32, i32* %temp, align 4
  %299 = load i32*, i32** %statemt.addr, align 4
  %arrayidx335 = getelementptr inbounds i32, i32* %299, i32 1
  store i32 %298, i32* %arrayidx335, align 4
  %300 = load i32*, i32** %statemt.addr, align 4
  %arrayidx336 = getelementptr inbounds i32, i32* %300, i32 30
  %301 = load i32, i32* %arrayidx336, align 4
  %shr337 = ashr i32 %301, 4
  %arrayidx338 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr337
  %302 = load i32*, i32** %statemt.addr, align 4
  %arrayidx339 = getelementptr inbounds i32, i32* %302, i32 30
  %303 = load i32, i32* %arrayidx339, align 4
  %and340 = and i32 %303, 15
  %arrayidx341 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx338, i32 0, i32 %and340
  %304 = load i32, i32* %arrayidx341, align 4
  store i32 %304, i32* %temp, align 4
  %305 = load i32*, i32** %statemt.addr, align 4
  %arrayidx342 = getelementptr inbounds i32, i32* %305, i32 18
  %306 = load i32, i32* %arrayidx342, align 4
  %shr343 = ashr i32 %306, 4
  %arrayidx344 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr343
  %307 = load i32*, i32** %statemt.addr, align 4
  %arrayidx345 = getelementptr inbounds i32, i32* %307, i32 18
  %308 = load i32, i32* %arrayidx345, align 4
  %and346 = and i32 %308, 15
  %arrayidx347 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx344, i32 0, i32 %and346
  %309 = load i32, i32* %arrayidx347, align 4
  %310 = load i32*, i32** %statemt.addr, align 4
  %arrayidx348 = getelementptr inbounds i32, i32* %310, i32 30
  store i32 %309, i32* %arrayidx348, align 4
  %311 = load i32*, i32** %statemt.addr, align 4
  %arrayidx349 = getelementptr inbounds i32, i32* %311, i32 6
  %312 = load i32, i32* %arrayidx349, align 4
  %shr350 = ashr i32 %312, 4
  %arrayidx351 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr350
  %313 = load i32*, i32** %statemt.addr, align 4
  %arrayidx352 = getelementptr inbounds i32, i32* %313, i32 6
  %314 = load i32, i32* %arrayidx352, align 4
  %and353 = and i32 %314, 15
  %arrayidx354 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx351, i32 0, i32 %and353
  %315 = load i32, i32* %arrayidx354, align 4
  %316 = load i32*, i32** %statemt.addr, align 4
  %arrayidx355 = getelementptr inbounds i32, i32* %316, i32 18
  store i32 %315, i32* %arrayidx355, align 4
  %317 = load i32*, i32** %statemt.addr, align 4
  %arrayidx356 = getelementptr inbounds i32, i32* %317, i32 26
  %318 = load i32, i32* %arrayidx356, align 4
  %shr357 = ashr i32 %318, 4
  %arrayidx358 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr357
  %319 = load i32*, i32** %statemt.addr, align 4
  %arrayidx359 = getelementptr inbounds i32, i32* %319, i32 26
  %320 = load i32, i32* %arrayidx359, align 4
  %and360 = and i32 %320, 15
  %arrayidx361 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx358, i32 0, i32 %and360
  %321 = load i32, i32* %arrayidx361, align 4
  %322 = load i32*, i32** %statemt.addr, align 4
  %arrayidx362 = getelementptr inbounds i32, i32* %322, i32 6
  store i32 %321, i32* %arrayidx362, align 4
  %323 = load i32*, i32** %statemt.addr, align 4
  %arrayidx363 = getelementptr inbounds i32, i32* %323, i32 14
  %324 = load i32, i32* %arrayidx363, align 4
  %shr364 = ashr i32 %324, 4
  %arrayidx365 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr364
  %325 = load i32*, i32** %statemt.addr, align 4
  %arrayidx366 = getelementptr inbounds i32, i32* %325, i32 14
  %326 = load i32, i32* %arrayidx366, align 4
  %and367 = and i32 %326, 15
  %arrayidx368 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx365, i32 0, i32 %and367
  %327 = load i32, i32* %arrayidx368, align 4
  %328 = load i32*, i32** %statemt.addr, align 4
  %arrayidx369 = getelementptr inbounds i32, i32* %328, i32 26
  store i32 %327, i32* %arrayidx369, align 4
  %329 = load i32*, i32** %statemt.addr, align 4
  %arrayidx370 = getelementptr inbounds i32, i32* %329, i32 2
  %330 = load i32, i32* %arrayidx370, align 4
  %shr371 = ashr i32 %330, 4
  %arrayidx372 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr371
  %331 = load i32*, i32** %statemt.addr, align 4
  %arrayidx373 = getelementptr inbounds i32, i32* %331, i32 2
  %332 = load i32, i32* %arrayidx373, align 4
  %and374 = and i32 %332, 15
  %arrayidx375 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx372, i32 0, i32 %and374
  %333 = load i32, i32* %arrayidx375, align 4
  %334 = load i32*, i32** %statemt.addr, align 4
  %arrayidx376 = getelementptr inbounds i32, i32* %334, i32 14
  store i32 %333, i32* %arrayidx376, align 4
  %335 = load i32*, i32** %statemt.addr, align 4
  %arrayidx377 = getelementptr inbounds i32, i32* %335, i32 22
  %336 = load i32, i32* %arrayidx377, align 4
  %shr378 = ashr i32 %336, 4
  %arrayidx379 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr378
  %337 = load i32*, i32** %statemt.addr, align 4
  %arrayidx380 = getelementptr inbounds i32, i32* %337, i32 22
  %338 = load i32, i32* %arrayidx380, align 4
  %and381 = and i32 %338, 15
  %arrayidx382 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx379, i32 0, i32 %and381
  %339 = load i32, i32* %arrayidx382, align 4
  %340 = load i32*, i32** %statemt.addr, align 4
  %arrayidx383 = getelementptr inbounds i32, i32* %340, i32 2
  store i32 %339, i32* %arrayidx383, align 4
  %341 = load i32*, i32** %statemt.addr, align 4
  %arrayidx384 = getelementptr inbounds i32, i32* %341, i32 10
  %342 = load i32, i32* %arrayidx384, align 4
  %shr385 = ashr i32 %342, 4
  %arrayidx386 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr385
  %343 = load i32*, i32** %statemt.addr, align 4
  %arrayidx387 = getelementptr inbounds i32, i32* %343, i32 10
  %344 = load i32, i32* %arrayidx387, align 4
  %and388 = and i32 %344, 15
  %arrayidx389 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx386, i32 0, i32 %and388
  %345 = load i32, i32* %arrayidx389, align 4
  %346 = load i32*, i32** %statemt.addr, align 4
  %arrayidx390 = getelementptr inbounds i32, i32* %346, i32 22
  store i32 %345, i32* %arrayidx390, align 4
  %347 = load i32, i32* %temp, align 4
  %348 = load i32*, i32** %statemt.addr, align 4
  %arrayidx391 = getelementptr inbounds i32, i32* %348, i32 10
  store i32 %347, i32* %arrayidx391, align 4
  %349 = load i32*, i32** %statemt.addr, align 4
  %arrayidx392 = getelementptr inbounds i32, i32* %349, i32 31
  %350 = load i32, i32* %arrayidx392, align 4
  %shr393 = ashr i32 %350, 4
  %arrayidx394 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr393
  %351 = load i32*, i32** %statemt.addr, align 4
  %arrayidx395 = getelementptr inbounds i32, i32* %351, i32 31
  %352 = load i32, i32* %arrayidx395, align 4
  %and396 = and i32 %352, 15
  %arrayidx397 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx394, i32 0, i32 %and396
  %353 = load i32, i32* %arrayidx397, align 4
  store i32 %353, i32* %temp, align 4
  %354 = load i32*, i32** %statemt.addr, align 4
  %arrayidx398 = getelementptr inbounds i32, i32* %354, i32 15
  %355 = load i32, i32* %arrayidx398, align 4
  %shr399 = ashr i32 %355, 4
  %arrayidx400 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr399
  %356 = load i32*, i32** %statemt.addr, align 4
  %arrayidx401 = getelementptr inbounds i32, i32* %356, i32 15
  %357 = load i32, i32* %arrayidx401, align 4
  %and402 = and i32 %357, 15
  %arrayidx403 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx400, i32 0, i32 %and402
  %358 = load i32, i32* %arrayidx403, align 4
  %359 = load i32*, i32** %statemt.addr, align 4
  %arrayidx404 = getelementptr inbounds i32, i32* %359, i32 31
  store i32 %358, i32* %arrayidx404, align 4
  %360 = load i32, i32* %temp, align 4
  %361 = load i32*, i32** %statemt.addr, align 4
  %arrayidx405 = getelementptr inbounds i32, i32* %361, i32 15
  store i32 %360, i32* %arrayidx405, align 4
  %362 = load i32*, i32** %statemt.addr, align 4
  %arrayidx406 = getelementptr inbounds i32, i32* %362, i32 27
  %363 = load i32, i32* %arrayidx406, align 4
  %shr407 = ashr i32 %363, 4
  %arrayidx408 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr407
  %364 = load i32*, i32** %statemt.addr, align 4
  %arrayidx409 = getelementptr inbounds i32, i32* %364, i32 27
  %365 = load i32, i32* %arrayidx409, align 4
  %and410 = and i32 %365, 15
  %arrayidx411 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx408, i32 0, i32 %and410
  %366 = load i32, i32* %arrayidx411, align 4
  store i32 %366, i32* %temp, align 4
  %367 = load i32*, i32** %statemt.addr, align 4
  %arrayidx412 = getelementptr inbounds i32, i32* %367, i32 11
  %368 = load i32, i32* %arrayidx412, align 4
  %shr413 = ashr i32 %368, 4
  %arrayidx414 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr413
  %369 = load i32*, i32** %statemt.addr, align 4
  %arrayidx415 = getelementptr inbounds i32, i32* %369, i32 11
  %370 = load i32, i32* %arrayidx415, align 4
  %and416 = and i32 %370, 15
  %arrayidx417 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx414, i32 0, i32 %and416
  %371 = load i32, i32* %arrayidx417, align 4
  %372 = load i32*, i32** %statemt.addr, align 4
  %arrayidx418 = getelementptr inbounds i32, i32* %372, i32 27
  store i32 %371, i32* %arrayidx418, align 4
  %373 = load i32, i32* %temp, align 4
  %374 = load i32*, i32** %statemt.addr, align 4
  %arrayidx419 = getelementptr inbounds i32, i32* %374, i32 11
  store i32 %373, i32* %arrayidx419, align 4
  %375 = load i32*, i32** %statemt.addr, align 4
  %arrayidx420 = getelementptr inbounds i32, i32* %375, i32 23
  %376 = load i32, i32* %arrayidx420, align 4
  %shr421 = ashr i32 %376, 4
  %arrayidx422 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr421
  %377 = load i32*, i32** %statemt.addr, align 4
  %arrayidx423 = getelementptr inbounds i32, i32* %377, i32 23
  %378 = load i32, i32* %arrayidx423, align 4
  %and424 = and i32 %378, 15
  %arrayidx425 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx422, i32 0, i32 %and424
  %379 = load i32, i32* %arrayidx425, align 4
  store i32 %379, i32* %temp, align 4
  %380 = load i32*, i32** %statemt.addr, align 4
  %arrayidx426 = getelementptr inbounds i32, i32* %380, i32 7
  %381 = load i32, i32* %arrayidx426, align 4
  %shr427 = ashr i32 %381, 4
  %arrayidx428 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr427
  %382 = load i32*, i32** %statemt.addr, align 4
  %arrayidx429 = getelementptr inbounds i32, i32* %382, i32 7
  %383 = load i32, i32* %arrayidx429, align 4
  %and430 = and i32 %383, 15
  %arrayidx431 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx428, i32 0, i32 %and430
  %384 = load i32, i32* %arrayidx431, align 4
  %385 = load i32*, i32** %statemt.addr, align 4
  %arrayidx432 = getelementptr inbounds i32, i32* %385, i32 23
  store i32 %384, i32* %arrayidx432, align 4
  %386 = load i32, i32* %temp, align 4
  %387 = load i32*, i32** %statemt.addr, align 4
  %arrayidx433 = getelementptr inbounds i32, i32* %387, i32 7
  store i32 %386, i32* %arrayidx433, align 4
  %388 = load i32*, i32** %statemt.addr, align 4
  %arrayidx434 = getelementptr inbounds i32, i32* %388, i32 19
  %389 = load i32, i32* %arrayidx434, align 4
  %shr435 = ashr i32 %389, 4
  %arrayidx436 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr435
  %390 = load i32*, i32** %statemt.addr, align 4
  %arrayidx437 = getelementptr inbounds i32, i32* %390, i32 19
  %391 = load i32, i32* %arrayidx437, align 4
  %and438 = and i32 %391, 15
  %arrayidx439 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx436, i32 0, i32 %and438
  %392 = load i32, i32* %arrayidx439, align 4
  store i32 %392, i32* %temp, align 4
  %393 = load i32*, i32** %statemt.addr, align 4
  %arrayidx440 = getelementptr inbounds i32, i32* %393, i32 3
  %394 = load i32, i32* %arrayidx440, align 4
  %shr441 = ashr i32 %394, 4
  %arrayidx442 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr441
  %395 = load i32*, i32** %statemt.addr, align 4
  %arrayidx443 = getelementptr inbounds i32, i32* %395, i32 3
  %396 = load i32, i32* %arrayidx443, align 4
  %and444 = and i32 %396, 15
  %arrayidx445 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx442, i32 0, i32 %and444
  %397 = load i32, i32* %arrayidx445, align 4
  %398 = load i32*, i32** %statemt.addr, align 4
  %arrayidx446 = getelementptr inbounds i32, i32* %398, i32 19
  store i32 %397, i32* %arrayidx446, align 4
  %399 = load i32, i32* %temp, align 4
  %400 = load i32*, i32** %statemt.addr, align 4
  %arrayidx447 = getelementptr inbounds i32, i32* %400, i32 3
  store i32 %399, i32* %arrayidx447, align 4
  %401 = load i32*, i32** %statemt.addr, align 4
  %arrayidx448 = getelementptr inbounds i32, i32* %401, i32 0
  %402 = load i32, i32* %arrayidx448, align 4
  %shr449 = ashr i32 %402, 4
  %arrayidx450 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr449
  %403 = load i32*, i32** %statemt.addr, align 4
  %arrayidx451 = getelementptr inbounds i32, i32* %403, i32 0
  %404 = load i32, i32* %arrayidx451, align 4
  %and452 = and i32 %404, 15
  %arrayidx453 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx450, i32 0, i32 %and452
  %405 = load i32, i32* %arrayidx453, align 4
  %406 = load i32*, i32** %statemt.addr, align 4
  %arrayidx454 = getelementptr inbounds i32, i32* %406, i32 0
  store i32 %405, i32* %arrayidx454, align 4
  %407 = load i32*, i32** %statemt.addr, align 4
  %arrayidx455 = getelementptr inbounds i32, i32* %407, i32 4
  %408 = load i32, i32* %arrayidx455, align 4
  %shr456 = ashr i32 %408, 4
  %arrayidx457 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr456
  %409 = load i32*, i32** %statemt.addr, align 4
  %arrayidx458 = getelementptr inbounds i32, i32* %409, i32 4
  %410 = load i32, i32* %arrayidx458, align 4
  %and459 = and i32 %410, 15
  %arrayidx460 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx457, i32 0, i32 %and459
  %411 = load i32, i32* %arrayidx460, align 4
  %412 = load i32*, i32** %statemt.addr, align 4
  %arrayidx461 = getelementptr inbounds i32, i32* %412, i32 4
  store i32 %411, i32* %arrayidx461, align 4
  %413 = load i32*, i32** %statemt.addr, align 4
  %arrayidx462 = getelementptr inbounds i32, i32* %413, i32 8
  %414 = load i32, i32* %arrayidx462, align 4
  %shr463 = ashr i32 %414, 4
  %arrayidx464 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr463
  %415 = load i32*, i32** %statemt.addr, align 4
  %arrayidx465 = getelementptr inbounds i32, i32* %415, i32 8
  %416 = load i32, i32* %arrayidx465, align 4
  %and466 = and i32 %416, 15
  %arrayidx467 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx464, i32 0, i32 %and466
  %417 = load i32, i32* %arrayidx467, align 4
  %418 = load i32*, i32** %statemt.addr, align 4
  %arrayidx468 = getelementptr inbounds i32, i32* %418, i32 8
  store i32 %417, i32* %arrayidx468, align 4
  %419 = load i32*, i32** %statemt.addr, align 4
  %arrayidx469 = getelementptr inbounds i32, i32* %419, i32 12
  %420 = load i32, i32* %arrayidx469, align 4
  %shr470 = ashr i32 %420, 4
  %arrayidx471 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr470
  %421 = load i32*, i32** %statemt.addr, align 4
  %arrayidx472 = getelementptr inbounds i32, i32* %421, i32 12
  %422 = load i32, i32* %arrayidx472, align 4
  %and473 = and i32 %422, 15
  %arrayidx474 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx471, i32 0, i32 %and473
  %423 = load i32, i32* %arrayidx474, align 4
  %424 = load i32*, i32** %statemt.addr, align 4
  %arrayidx475 = getelementptr inbounds i32, i32* %424, i32 12
  store i32 %423, i32* %arrayidx475, align 4
  %425 = load i32*, i32** %statemt.addr, align 4
  %arrayidx476 = getelementptr inbounds i32, i32* %425, i32 16
  %426 = load i32, i32* %arrayidx476, align 4
  %shr477 = ashr i32 %426, 4
  %arrayidx478 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr477
  %427 = load i32*, i32** %statemt.addr, align 4
  %arrayidx479 = getelementptr inbounds i32, i32* %427, i32 16
  %428 = load i32, i32* %arrayidx479, align 4
  %and480 = and i32 %428, 15
  %arrayidx481 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx478, i32 0, i32 %and480
  %429 = load i32, i32* %arrayidx481, align 4
  %430 = load i32*, i32** %statemt.addr, align 4
  %arrayidx482 = getelementptr inbounds i32, i32* %430, i32 16
  store i32 %429, i32* %arrayidx482, align 4
  %431 = load i32*, i32** %statemt.addr, align 4
  %arrayidx483 = getelementptr inbounds i32, i32* %431, i32 20
  %432 = load i32, i32* %arrayidx483, align 4
  %shr484 = ashr i32 %432, 4
  %arrayidx485 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr484
  %433 = load i32*, i32** %statemt.addr, align 4
  %arrayidx486 = getelementptr inbounds i32, i32* %433, i32 20
  %434 = load i32, i32* %arrayidx486, align 4
  %and487 = and i32 %434, 15
  %arrayidx488 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx485, i32 0, i32 %and487
  %435 = load i32, i32* %arrayidx488, align 4
  %436 = load i32*, i32** %statemt.addr, align 4
  %arrayidx489 = getelementptr inbounds i32, i32* %436, i32 20
  store i32 %435, i32* %arrayidx489, align 4
  %437 = load i32*, i32** %statemt.addr, align 4
  %arrayidx490 = getelementptr inbounds i32, i32* %437, i32 24
  %438 = load i32, i32* %arrayidx490, align 4
  %shr491 = ashr i32 %438, 4
  %arrayidx492 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr491
  %439 = load i32*, i32** %statemt.addr, align 4
  %arrayidx493 = getelementptr inbounds i32, i32* %439, i32 24
  %440 = load i32, i32* %arrayidx493, align 4
  %and494 = and i32 %440, 15
  %arrayidx495 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx492, i32 0, i32 %and494
  %441 = load i32, i32* %arrayidx495, align 4
  %442 = load i32*, i32** %statemt.addr, align 4
  %arrayidx496 = getelementptr inbounds i32, i32* %442, i32 24
  store i32 %441, i32* %arrayidx496, align 4
  %443 = load i32*, i32** %statemt.addr, align 4
  %arrayidx497 = getelementptr inbounds i32, i32* %443, i32 28
  %444 = load i32, i32* %arrayidx497, align 4
  %shr498 = ashr i32 %444, 4
  %arrayidx499 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr498
  %445 = load i32*, i32** %statemt.addr, align 4
  %arrayidx500 = getelementptr inbounds i32, i32* %445, i32 28
  %446 = load i32, i32* %arrayidx500, align 4
  %and501 = and i32 %446, 15
  %arrayidx502 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx499, i32 0, i32 %and501
  %447 = load i32, i32* %arrayidx502, align 4
  %448 = load i32*, i32** %statemt.addr, align 4
  %arrayidx503 = getelementptr inbounds i32, i32* %448, i32 28
  store i32 %447, i32* %arrayidx503, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb279, %sw.bb110, %sw.bb
  ret void
}

; Function Attrs: noinline nounwind ssp
define i32 @AddRoundKey_InversMixColumn(i32* %statemt, i32 %nb, i32 %n) #0 {
entry:
  %statemt.addr = alloca i32*, align 4
  %nb.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %ret = alloca [32 x i32], align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %x = alloca i32, align 4
  store i32* %statemt, i32** %statemt.addr, align 4
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
  %arrayidx = getelementptr inbounds [120 x i32], [120 x i32]* getelementptr inbounds ([4 x [120 x i32]], [4 x [120 x i32]]* @word, i32 0, i32 0), i32 0, i32 %add
  %5 = load i32, i32* %arrayidx, align 4
  %6 = load i32*, i32** %statemt.addr, align 4
  %7 = load i32, i32* %j, align 4
  %mul1 = mul nsw i32 %7, 4
  %arrayidx2 = getelementptr inbounds i32, i32* %6, i32 %mul1
  %8 = load i32, i32* %arrayidx2, align 4
  %xor = xor i32 %8, %5
  store i32 %xor, i32* %arrayidx2, align 4
  %9 = load i32, i32* %j, align 4
  %10 = load i32, i32* %nb.addr, align 4
  %11 = load i32, i32* %n.addr, align 4
  %mul3 = mul nsw i32 %10, %11
  %add4 = add nsw i32 %9, %mul3
  %arrayidx5 = getelementptr inbounds [120 x i32], [120 x i32]* getelementptr inbounds ([4 x [120 x i32]], [4 x [120 x i32]]* @word, i32 0, i32 1), i32 0, i32 %add4
  %12 = load i32, i32* %arrayidx5, align 4
  %13 = load i32*, i32** %statemt.addr, align 4
  %14 = load i32, i32* %j, align 4
  %mul6 = mul nsw i32 %14, 4
  %add7 = add nsw i32 1, %mul6
  %arrayidx8 = getelementptr inbounds i32, i32* %13, i32 %add7
  %15 = load i32, i32* %arrayidx8, align 4
  %xor9 = xor i32 %15, %12
  store i32 %xor9, i32* %arrayidx8, align 4
  %16 = load i32, i32* %j, align 4
  %17 = load i32, i32* %nb.addr, align 4
  %18 = load i32, i32* %n.addr, align 4
  %mul10 = mul nsw i32 %17, %18
  %add11 = add nsw i32 %16, %mul10
  %arrayidx12 = getelementptr inbounds [120 x i32], [120 x i32]* getelementptr inbounds ([4 x [120 x i32]], [4 x [120 x i32]]* @word, i32 0, i32 2), i32 0, i32 %add11
  %19 = load i32, i32* %arrayidx12, align 4
  %20 = load i32*, i32** %statemt.addr, align 4
  %21 = load i32, i32* %j, align 4
  %mul13 = mul nsw i32 %21, 4
  %add14 = add nsw i32 2, %mul13
  %arrayidx15 = getelementptr inbounds i32, i32* %20, i32 %add14
  %22 = load i32, i32* %arrayidx15, align 4
  %xor16 = xor i32 %22, %19
  store i32 %xor16, i32* %arrayidx15, align 4
  %23 = load i32, i32* %j, align 4
  %24 = load i32, i32* %nb.addr, align 4
  %25 = load i32, i32* %n.addr, align 4
  %mul17 = mul nsw i32 %24, %25
  %add18 = add nsw i32 %23, %mul17
  %arrayidx19 = getelementptr inbounds [120 x i32], [120 x i32]* getelementptr inbounds ([4 x [120 x i32]], [4 x [120 x i32]]* @word, i32 0, i32 3), i32 0, i32 %add18
  %26 = load i32, i32* %arrayidx19, align 4
  %27 = load i32*, i32** %statemt.addr, align 4
  %28 = load i32, i32* %j, align 4
  %mul20 = mul nsw i32 %28, 4
  %add21 = add nsw i32 3, %mul20
  %arrayidx22 = getelementptr inbounds i32, i32* %27, i32 %add21
  %29 = load i32, i32* %arrayidx22, align 4
  %xor23 = xor i32 %29, %26
  store i32 %xor23, i32* %arrayidx22, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %30 = load i32, i32* %j, align 4
  %inc = add nsw i32 %30, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond24

for.cond24:                                       ; preds = %for.inc171, %for.end
  %31 = load i32, i32* %j, align 4
  %32 = load i32, i32* %nb.addr, align 4
  %cmp25 = icmp slt i32 %31, %32
  br i1 %cmp25, label %for.body26, label %for.end173

for.body26:                                       ; preds = %for.cond24
  store i32 0, i32* %i, align 4
  br label %for.cond27

for.cond27:                                       ; preds = %for.inc168, %for.body26
  %33 = load i32, i32* %i, align 4
  %cmp28 = icmp slt i32 %33, 4
  br i1 %cmp28, label %for.body29, label %for.end170

for.body29:                                       ; preds = %for.cond27
  %34 = load i32*, i32** %statemt.addr, align 4
  %35 = load i32, i32* %i, align 4
  %36 = load i32, i32* %j, align 4
  %mul30 = mul nsw i32 %36, 4
  %add31 = add nsw i32 %35, %mul30
  %arrayidx32 = getelementptr inbounds i32, i32* %34, i32 %add31
  %37 = load i32, i32* %arrayidx32, align 4
  %shl = shl i32 %37, 1
  store i32 %shl, i32* %x, align 4
  %38 = load i32, i32* %x, align 4
  %shr = ashr i32 %38, 8
  %cmp33 = icmp eq i32 %shr, 1
  br i1 %cmp33, label %if.then, label %if.end

if.then:                                          ; preds = %for.body29
  %39 = load i32, i32* %x, align 4
  %xor34 = xor i32 %39, 283
  store i32 %xor34, i32* %x, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body29
  %40 = load i32*, i32** %statemt.addr, align 4
  %41 = load i32, i32* %i, align 4
  %42 = load i32, i32* %j, align 4
  %mul35 = mul nsw i32 %42, 4
  %add36 = add nsw i32 %41, %mul35
  %arrayidx37 = getelementptr inbounds i32, i32* %40, i32 %add36
  %43 = load i32, i32* %arrayidx37, align 4
  %44 = load i32, i32* %x, align 4
  %xor38 = xor i32 %44, %43
  store i32 %xor38, i32* %x, align 4
  %45 = load i32, i32* %x, align 4
  %shl39 = shl i32 %45, 1
  store i32 %shl39, i32* %x, align 4
  %46 = load i32, i32* %x, align 4
  %shr40 = ashr i32 %46, 8
  %cmp41 = icmp eq i32 %shr40, 1
  br i1 %cmp41, label %if.then42, label %if.end44

if.then42:                                        ; preds = %if.end
  %47 = load i32, i32* %x, align 4
  %xor43 = xor i32 %47, 283
  store i32 %xor43, i32* %x, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.then42, %if.end
  %48 = load i32*, i32** %statemt.addr, align 4
  %49 = load i32, i32* %i, align 4
  %50 = load i32, i32* %j, align 4
  %mul45 = mul nsw i32 %50, 4
  %add46 = add nsw i32 %49, %mul45
  %arrayidx47 = getelementptr inbounds i32, i32* %48, i32 %add46
  %51 = load i32, i32* %arrayidx47, align 4
  %52 = load i32, i32* %x, align 4
  %xor48 = xor i32 %52, %51
  store i32 %xor48, i32* %x, align 4
  %53 = load i32, i32* %x, align 4
  %shl49 = shl i32 %53, 1
  store i32 %shl49, i32* %x, align 4
  %54 = load i32, i32* %x, align 4
  %shr50 = ashr i32 %54, 8
  %cmp51 = icmp eq i32 %shr50, 1
  br i1 %cmp51, label %if.then52, label %if.end54

if.then52:                                        ; preds = %if.end44
  %55 = load i32, i32* %x, align 4
  %xor53 = xor i32 %55, 283
  store i32 %xor53, i32* %x, align 4
  br label %if.end54

if.end54:                                         ; preds = %if.then52, %if.end44
  %56 = load i32, i32* %x, align 4
  %57 = load i32, i32* %i, align 4
  %58 = load i32, i32* %j, align 4
  %mul55 = mul nsw i32 %58, 4
  %add56 = add nsw i32 %57, %mul55
  %arrayidx57 = getelementptr inbounds [32 x i32], [32 x i32]* %ret, i32 0, i32 %add56
  store i32 %56, i32* %arrayidx57, align 4
  %59 = load i32*, i32** %statemt.addr, align 4
  %60 = load i32, i32* %i, align 4
  %add58 = add nsw i32 %60, 1
  %rem = srem i32 %add58, 4
  %61 = load i32, i32* %j, align 4
  %mul59 = mul nsw i32 %61, 4
  %add60 = add nsw i32 %rem, %mul59
  %arrayidx61 = getelementptr inbounds i32, i32* %59, i32 %add60
  %62 = load i32, i32* %arrayidx61, align 4
  %shl62 = shl i32 %62, 1
  store i32 %shl62, i32* %x, align 4
  %63 = load i32, i32* %x, align 4
  %shr63 = ashr i32 %63, 8
  %cmp64 = icmp eq i32 %shr63, 1
  br i1 %cmp64, label %if.then65, label %if.end67

if.then65:                                        ; preds = %if.end54
  %64 = load i32, i32* %x, align 4
  %xor66 = xor i32 %64, 283
  store i32 %xor66, i32* %x, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.then65, %if.end54
  %65 = load i32, i32* %x, align 4
  %shl68 = shl i32 %65, 1
  store i32 %shl68, i32* %x, align 4
  %66 = load i32, i32* %x, align 4
  %shr69 = ashr i32 %66, 8
  %cmp70 = icmp eq i32 %shr69, 1
  br i1 %cmp70, label %if.then71, label %if.end73

if.then71:                                        ; preds = %if.end67
  %67 = load i32, i32* %x, align 4
  %xor72 = xor i32 %67, 283
  store i32 %xor72, i32* %x, align 4
  br label %if.end73

if.end73:                                         ; preds = %if.then71, %if.end67
  %68 = load i32*, i32** %statemt.addr, align 4
  %69 = load i32, i32* %i, align 4
  %add74 = add nsw i32 %69, 1
  %rem75 = srem i32 %add74, 4
  %70 = load i32, i32* %j, align 4
  %mul76 = mul nsw i32 %70, 4
  %add77 = add nsw i32 %rem75, %mul76
  %arrayidx78 = getelementptr inbounds i32, i32* %68, i32 %add77
  %71 = load i32, i32* %arrayidx78, align 4
  %72 = load i32, i32* %x, align 4
  %xor79 = xor i32 %72, %71
  store i32 %xor79, i32* %x, align 4
  %73 = load i32, i32* %x, align 4
  %shl80 = shl i32 %73, 1
  store i32 %shl80, i32* %x, align 4
  %74 = load i32, i32* %x, align 4
  %shr81 = ashr i32 %74, 8
  %cmp82 = icmp eq i32 %shr81, 1
  br i1 %cmp82, label %if.then83, label %if.end85

if.then83:                                        ; preds = %if.end73
  %75 = load i32, i32* %x, align 4
  %xor84 = xor i32 %75, 283
  store i32 %xor84, i32* %x, align 4
  br label %if.end85

if.end85:                                         ; preds = %if.then83, %if.end73
  %76 = load i32*, i32** %statemt.addr, align 4
  %77 = load i32, i32* %i, align 4
  %add86 = add nsw i32 %77, 1
  %rem87 = srem i32 %add86, 4
  %78 = load i32, i32* %j, align 4
  %mul88 = mul nsw i32 %78, 4
  %add89 = add nsw i32 %rem87, %mul88
  %arrayidx90 = getelementptr inbounds i32, i32* %76, i32 %add89
  %79 = load i32, i32* %arrayidx90, align 4
  %80 = load i32, i32* %x, align 4
  %xor91 = xor i32 %80, %79
  store i32 %xor91, i32* %x, align 4
  %81 = load i32, i32* %x, align 4
  %82 = load i32, i32* %i, align 4
  %83 = load i32, i32* %j, align 4
  %mul92 = mul nsw i32 %83, 4
  %add93 = add nsw i32 %82, %mul92
  %arrayidx94 = getelementptr inbounds [32 x i32], [32 x i32]* %ret, i32 0, i32 %add93
  %84 = load i32, i32* %arrayidx94, align 4
  %xor95 = xor i32 %84, %81
  store i32 %xor95, i32* %arrayidx94, align 4
  %85 = load i32*, i32** %statemt.addr, align 4
  %86 = load i32, i32* %i, align 4
  %add96 = add nsw i32 %86, 2
  %rem97 = srem i32 %add96, 4
  %87 = load i32, i32* %j, align 4
  %mul98 = mul nsw i32 %87, 4
  %add99 = add nsw i32 %rem97, %mul98
  %arrayidx100 = getelementptr inbounds i32, i32* %85, i32 %add99
  %88 = load i32, i32* %arrayidx100, align 4
  %shl101 = shl i32 %88, 1
  store i32 %shl101, i32* %x, align 4
  %89 = load i32, i32* %x, align 4
  %shr102 = ashr i32 %89, 8
  %cmp103 = icmp eq i32 %shr102, 1
  br i1 %cmp103, label %if.then104, label %if.end106

if.then104:                                       ; preds = %if.end85
  %90 = load i32, i32* %x, align 4
  %xor105 = xor i32 %90, 283
  store i32 %xor105, i32* %x, align 4
  br label %if.end106

if.end106:                                        ; preds = %if.then104, %if.end85
  %91 = load i32*, i32** %statemt.addr, align 4
  %92 = load i32, i32* %i, align 4
  %add107 = add nsw i32 %92, 2
  %rem108 = srem i32 %add107, 4
  %93 = load i32, i32* %j, align 4
  %mul109 = mul nsw i32 %93, 4
  %add110 = add nsw i32 %rem108, %mul109
  %arrayidx111 = getelementptr inbounds i32, i32* %91, i32 %add110
  %94 = load i32, i32* %arrayidx111, align 4
  %95 = load i32, i32* %x, align 4
  %xor112 = xor i32 %95, %94
  store i32 %xor112, i32* %x, align 4
  %96 = load i32, i32* %x, align 4
  %shl113 = shl i32 %96, 1
  store i32 %shl113, i32* %x, align 4
  %97 = load i32, i32* %x, align 4
  %shr114 = ashr i32 %97, 8
  %cmp115 = icmp eq i32 %shr114, 1
  br i1 %cmp115, label %if.then116, label %if.end118

if.then116:                                       ; preds = %if.end106
  %98 = load i32, i32* %x, align 4
  %xor117 = xor i32 %98, 283
  store i32 %xor117, i32* %x, align 4
  br label %if.end118

if.end118:                                        ; preds = %if.then116, %if.end106
  %99 = load i32, i32* %x, align 4
  %shl119 = shl i32 %99, 1
  store i32 %shl119, i32* %x, align 4
  %100 = load i32, i32* %x, align 4
  %shr120 = ashr i32 %100, 8
  %cmp121 = icmp eq i32 %shr120, 1
  br i1 %cmp121, label %if.then122, label %if.end124

if.then122:                                       ; preds = %if.end118
  %101 = load i32, i32* %x, align 4
  %xor123 = xor i32 %101, 283
  store i32 %xor123, i32* %x, align 4
  br label %if.end124

if.end124:                                        ; preds = %if.then122, %if.end118
  %102 = load i32*, i32** %statemt.addr, align 4
  %103 = load i32, i32* %i, align 4
  %add125 = add nsw i32 %103, 2
  %rem126 = srem i32 %add125, 4
  %104 = load i32, i32* %j, align 4
  %mul127 = mul nsw i32 %104, 4
  %add128 = add nsw i32 %rem126, %mul127
  %arrayidx129 = getelementptr inbounds i32, i32* %102, i32 %add128
  %105 = load i32, i32* %arrayidx129, align 4
  %106 = load i32, i32* %x, align 4
  %xor130 = xor i32 %106, %105
  store i32 %xor130, i32* %x, align 4
  %107 = load i32, i32* %x, align 4
  %108 = load i32, i32* %i, align 4
  %109 = load i32, i32* %j, align 4
  %mul131 = mul nsw i32 %109, 4
  %add132 = add nsw i32 %108, %mul131
  %arrayidx133 = getelementptr inbounds [32 x i32], [32 x i32]* %ret, i32 0, i32 %add132
  %110 = load i32, i32* %arrayidx133, align 4
  %xor134 = xor i32 %110, %107
  store i32 %xor134, i32* %arrayidx133, align 4
  %111 = load i32*, i32** %statemt.addr, align 4
  %112 = load i32, i32* %i, align 4
  %add135 = add nsw i32 %112, 3
  %rem136 = srem i32 %add135, 4
  %113 = load i32, i32* %j, align 4
  %mul137 = mul nsw i32 %113, 4
  %add138 = add nsw i32 %rem136, %mul137
  %arrayidx139 = getelementptr inbounds i32, i32* %111, i32 %add138
  %114 = load i32, i32* %arrayidx139, align 4
  %shl140 = shl i32 %114, 1
  store i32 %shl140, i32* %x, align 4
  %115 = load i32, i32* %x, align 4
  %shr141 = ashr i32 %115, 8
  %cmp142 = icmp eq i32 %shr141, 1
  br i1 %cmp142, label %if.then143, label %if.end145

if.then143:                                       ; preds = %if.end124
  %116 = load i32, i32* %x, align 4
  %xor144 = xor i32 %116, 283
  store i32 %xor144, i32* %x, align 4
  br label %if.end145

if.end145:                                        ; preds = %if.then143, %if.end124
  %117 = load i32, i32* %x, align 4
  %shl146 = shl i32 %117, 1
  store i32 %shl146, i32* %x, align 4
  %118 = load i32, i32* %x, align 4
  %shr147 = ashr i32 %118, 8
  %cmp148 = icmp eq i32 %shr147, 1
  br i1 %cmp148, label %if.then149, label %if.end151

if.then149:                                       ; preds = %if.end145
  %119 = load i32, i32* %x, align 4
  %xor150 = xor i32 %119, 283
  store i32 %xor150, i32* %x, align 4
  br label %if.end151

if.end151:                                        ; preds = %if.then149, %if.end145
  %120 = load i32, i32* %x, align 4
  %shl152 = shl i32 %120, 1
  store i32 %shl152, i32* %x, align 4
  %121 = load i32, i32* %x, align 4
  %shr153 = ashr i32 %121, 8
  %cmp154 = icmp eq i32 %shr153, 1
  br i1 %cmp154, label %if.then155, label %if.end157

if.then155:                                       ; preds = %if.end151
  %122 = load i32, i32* %x, align 4
  %xor156 = xor i32 %122, 283
  store i32 %xor156, i32* %x, align 4
  br label %if.end157

if.end157:                                        ; preds = %if.then155, %if.end151
  %123 = load i32*, i32** %statemt.addr, align 4
  %124 = load i32, i32* %i, align 4
  %add158 = add nsw i32 %124, 3
  %rem159 = srem i32 %add158, 4
  %125 = load i32, i32* %j, align 4
  %mul160 = mul nsw i32 %125, 4
  %add161 = add nsw i32 %rem159, %mul160
  %arrayidx162 = getelementptr inbounds i32, i32* %123, i32 %add161
  %126 = load i32, i32* %arrayidx162, align 4
  %127 = load i32, i32* %x, align 4
  %xor163 = xor i32 %127, %126
  store i32 %xor163, i32* %x, align 4
  %128 = load i32, i32* %x, align 4
  %129 = load i32, i32* %i, align 4
  %130 = load i32, i32* %j, align 4
  %mul164 = mul nsw i32 %130, 4
  %add165 = add nsw i32 %129, %mul164
  %arrayidx166 = getelementptr inbounds [32 x i32], [32 x i32]* %ret, i32 0, i32 %add165
  %131 = load i32, i32* %arrayidx166, align 4
  %xor167 = xor i32 %131, %128
  store i32 %xor167, i32* %arrayidx166, align 4
  br label %for.inc168

for.inc168:                                       ; preds = %if.end157
  %132 = load i32, i32* %i, align 4
  %inc169 = add nsw i32 %132, 1
  store i32 %inc169, i32* %i, align 4
  br label %for.cond27

for.end170:                                       ; preds = %for.cond27
  br label %for.inc171

for.inc171:                                       ; preds = %for.end170
  %133 = load i32, i32* %j, align 4
  %inc172 = add nsw i32 %133, 1
  store i32 %inc172, i32* %j, align 4
  br label %for.cond24

for.end173:                                       ; preds = %for.cond24
  store i32 0, i32* %i, align 4
  br label %for.cond174

for.cond174:                                      ; preds = %for.inc199, %for.end173
  %134 = load i32, i32* %i, align 4
  %135 = load i32, i32* %nb.addr, align 4
  %cmp175 = icmp slt i32 %134, %135
  br i1 %cmp175, label %for.body176, label %for.end201

for.body176:                                      ; preds = %for.cond174
  %136 = load i32, i32* %i, align 4
  %mul177 = mul nsw i32 %136, 4
  %arrayidx178 = getelementptr inbounds [32 x i32], [32 x i32]* %ret, i32 0, i32 %mul177
  %137 = load i32, i32* %arrayidx178, align 4
  %138 = load i32*, i32** %statemt.addr, align 4
  %139 = load i32, i32* %i, align 4
  %mul179 = mul nsw i32 %139, 4
  %arrayidx180 = getelementptr inbounds i32, i32* %138, i32 %mul179
  store i32 %137, i32* %arrayidx180, align 4
  %140 = load i32, i32* %i, align 4
  %mul181 = mul nsw i32 %140, 4
  %add182 = add nsw i32 1, %mul181
  %arrayidx183 = getelementptr inbounds [32 x i32], [32 x i32]* %ret, i32 0, i32 %add182
  %141 = load i32, i32* %arrayidx183, align 4
  %142 = load i32*, i32** %statemt.addr, align 4
  %143 = load i32, i32* %i, align 4
  %mul184 = mul nsw i32 %143, 4
  %add185 = add nsw i32 1, %mul184
  %arrayidx186 = getelementptr inbounds i32, i32* %142, i32 %add185
  store i32 %141, i32* %arrayidx186, align 4
  %144 = load i32, i32* %i, align 4
  %mul187 = mul nsw i32 %144, 4
  %add188 = add nsw i32 2, %mul187
  %arrayidx189 = getelementptr inbounds [32 x i32], [32 x i32]* %ret, i32 0, i32 %add188
  %145 = load i32, i32* %arrayidx189, align 4
  %146 = load i32*, i32** %statemt.addr, align 4
  %147 = load i32, i32* %i, align 4
  %mul190 = mul nsw i32 %147, 4
  %add191 = add nsw i32 2, %mul190
  %arrayidx192 = getelementptr inbounds i32, i32* %146, i32 %add191
  store i32 %145, i32* %arrayidx192, align 4
  %148 = load i32, i32* %i, align 4
  %mul193 = mul nsw i32 %148, 4
  %add194 = add nsw i32 3, %mul193
  %arrayidx195 = getelementptr inbounds [32 x i32], [32 x i32]* %ret, i32 0, i32 %add194
  %149 = load i32, i32* %arrayidx195, align 4
  %150 = load i32*, i32** %statemt.addr, align 4
  %151 = load i32, i32* %i, align 4
  %mul196 = mul nsw i32 %151, 4
  %add197 = add nsw i32 3, %mul196
  %arrayidx198 = getelementptr inbounds i32, i32* %150, i32 %add197
  store i32 %149, i32* %arrayidx198, align 4
  br label %for.inc199

for.inc199:                                       ; preds = %for.body176
  %152 = load i32, i32* %i, align 4
  %inc200 = add nsw i32 %152, 1
  store i32 %inc200, i32* %i, align 4
  br label %for.cond174

for.end201:                                       ; preds = %for.cond174
  ret i32 0
}

; Function Attrs: noinline nounwind ssp
define i32 @SubByte(i32 %in) #0 {
entry:
  %in.addr = alloca i32, align 4
  store i32 %in, i32* %in.addr, align 4
  %0 = load i32, i32* %in.addr, align 4
  %div = sdiv i32 %0, 16
  %arrayidx = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %div
  %1 = load i32, i32* %in.addr, align 4
  %rem = srem i32 %1, 16
  %arrayidx1 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx, i32 0, i32 %rem
  %2 = load i32, i32* %arrayidx1, align 4
  ret i32 %2
}

; Function Attrs: noinline nounwind ssp
define i32 @aes_main() #0 {
entry:
  store i32 50, i32* getelementptr inbounds ([32 x i32], [32 x i32]* @statemt, i32 0, i32 0), align 4
  store i32 67, i32* getelementptr inbounds ([32 x i32], [32 x i32]* @statemt, i32 0, i32 1), align 4
  store i32 246, i32* getelementptr inbounds ([32 x i32], [32 x i32]* @statemt, i32 0, i32 2), align 4
  store i32 168, i32* getelementptr inbounds ([32 x i32], [32 x i32]* @statemt, i32 0, i32 3), align 4
  store i32 136, i32* getelementptr inbounds ([32 x i32], [32 x i32]* @statemt, i32 0, i32 4), align 4
  store i32 90, i32* getelementptr inbounds ([32 x i32], [32 x i32]* @statemt, i32 0, i32 5), align 4
  store i32 48, i32* getelementptr inbounds ([32 x i32], [32 x i32]* @statemt, i32 0, i32 6), align 4
  store i32 141, i32* getelementptr inbounds ([32 x i32], [32 x i32]* @statemt, i32 0, i32 7), align 4
  store i32 49, i32* getelementptr inbounds ([32 x i32], [32 x i32]* @statemt, i32 0, i32 8), align 4
  store i32 49, i32* getelementptr inbounds ([32 x i32], [32 x i32]* @statemt, i32 0, i32 9), align 4
  store i32 152, i32* getelementptr inbounds ([32 x i32], [32 x i32]* @statemt, i32 0, i32 10), align 4
  store i32 162, i32* getelementptr inbounds ([32 x i32], [32 x i32]* @statemt, i32 0, i32 11), align 4
  store i32 224, i32* getelementptr inbounds ([32 x i32], [32 x i32]* @statemt, i32 0, i32 12), align 4
  store i32 55, i32* getelementptr inbounds ([32 x i32], [32 x i32]* @statemt, i32 0, i32 13), align 4
  store i32 7, i32* getelementptr inbounds ([32 x i32], [32 x i32]* @statemt, i32 0, i32 14), align 4
  store i32 52, i32* getelementptr inbounds ([32 x i32], [32 x i32]* @statemt, i32 0, i32 15), align 4
  store i32 43, i32* getelementptr inbounds ([32 x i32], [32 x i32]* @key, i32 0, i32 0), align 4
  store i32 126, i32* getelementptr inbounds ([32 x i32], [32 x i32]* @key, i32 0, i32 1), align 4
  store i32 21, i32* getelementptr inbounds ([32 x i32], [32 x i32]* @key, i32 0, i32 2), align 4
  store i32 22, i32* getelementptr inbounds ([32 x i32], [32 x i32]* @key, i32 0, i32 3), align 4
  store i32 40, i32* getelementptr inbounds ([32 x i32], [32 x i32]* @key, i32 0, i32 4), align 4
  store i32 174, i32* getelementptr inbounds ([32 x i32], [32 x i32]* @key, i32 0, i32 5), align 4
  store i32 210, i32* getelementptr inbounds ([32 x i32], [32 x i32]* @key, i32 0, i32 6), align 4
  store i32 166, i32* getelementptr inbounds ([32 x i32], [32 x i32]* @key, i32 0, i32 7), align 4
  store i32 171, i32* getelementptr inbounds ([32 x i32], [32 x i32]* @key, i32 0, i32 8), align 4
  store i32 247, i32* getelementptr inbounds ([32 x i32], [32 x i32]* @key, i32 0, i32 9), align 4
  store i32 21, i32* getelementptr inbounds ([32 x i32], [32 x i32]* @key, i32 0, i32 10), align 4
  store i32 136, i32* getelementptr inbounds ([32 x i32], [32 x i32]* @key, i32 0, i32 11), align 4
  store i32 9, i32* getelementptr inbounds ([32 x i32], [32 x i32]* @key, i32 0, i32 12), align 4
  store i32 207, i32* getelementptr inbounds ([32 x i32], [32 x i32]* @key, i32 0, i32 13), align 4
  store i32 79, i32* getelementptr inbounds ([32 x i32], [32 x i32]* @key, i32 0, i32 14), align 4
  store i32 60, i32* getelementptr inbounds ([32 x i32], [32 x i32]* @key, i32 0, i32 15), align 4
  %call = call i32 @encrypt(i32* getelementptr inbounds ([32 x i32], [32 x i32]* @statemt, i32 0, i32 0), i32* getelementptr inbounds ([32 x i32], [32 x i32]* @key, i32 0, i32 0), i32 128128)
  %call1 = call i32 @decrypt(i32* getelementptr inbounds ([32 x i32], [32 x i32]* @statemt, i32 0, i32 0), i32* getelementptr inbounds ([32 x i32], [32 x i32]* @key, i32 0, i32 0), i32 128128)
  ret i32 0
}

; Function Attrs: noinline nounwind ssp
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

attributes #0 = { noinline nounwind ssp "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
