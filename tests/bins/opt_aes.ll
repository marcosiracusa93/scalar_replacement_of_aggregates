; ModuleID = './../tests/test_cases/aes.ll'
source_filename = "aes.c"
target datalayout = "e-m:o-p:32:32-f64:32:64-f80:128-n8:16:32-S128"
target triple = "i386-apple-macosx10.13.0"

@round_val = common local_unnamed_addr global i32 0, align 4
@nb = common local_unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"encrypted message \09\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%x\00", align 1
@main_result = common local_unnamed_addr global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"\0Adecrypto message\09\00", align 1
@word = common local_unnamed_addr global [4 x [120 x i32]] zeroinitializer, align 4
@Sbox = local_unnamed_addr constant [16 x [16 x i32]] [[16 x i32] [i32 99, i32 124, i32 119, i32 123, i32 242, i32 107, i32 111, i32 197, i32 48, i32 1, i32 103, i32 43, i32 254, i32 215, i32 171, i32 118], [16 x i32] [i32 202, i32 130, i32 201, i32 125, i32 250, i32 89, i32 71, i32 240, i32 173, i32 212, i32 162, i32 175, i32 156, i32 164, i32 114, i32 192], [16 x i32] [i32 183, i32 253, i32 147, i32 38, i32 54, i32 63, i32 247, i32 204, i32 52, i32 165, i32 229, i32 241, i32 113, i32 216, i32 49, i32 21], [16 x i32] [i32 4, i32 199, i32 35, i32 195, i32 24, i32 150, i32 5, i32 154, i32 7, i32 18, i32 128, i32 226, i32 235, i32 39, i32 178, i32 117], [16 x i32] [i32 9, i32 131, i32 44, i32 26, i32 27, i32 110, i32 90, i32 160, i32 82, i32 59, i32 214, i32 179, i32 41, i32 227, i32 47, i32 132], [16 x i32] [i32 83, i32 209, i32 0, i32 237, i32 32, i32 252, i32 177, i32 91, i32 106, i32 203, i32 190, i32 57, i32 74, i32 76, i32 88, i32 207], [16 x i32] [i32 208, i32 239, i32 170, i32 251, i32 67, i32 77, i32 51, i32 133, i32 69, i32 249, i32 2, i32 127, i32 80, i32 60, i32 159, i32 168], [16 x i32] [i32 81, i32 163, i32 64, i32 143, i32 146, i32 157, i32 56, i32 245, i32 188, i32 182, i32 218, i32 33, i32 16, i32 255, i32 243, i32 210], [16 x i32] [i32 205, i32 12, i32 19, i32 236, i32 95, i32 151, i32 68, i32 23, i32 196, i32 167, i32 126, i32 61, i32 100, i32 93, i32 25, i32 115], [16 x i32] [i32 96, i32 129, i32 79, i32 220, i32 34, i32 42, i32 144, i32 136, i32 70, i32 238, i32 184, i32 20, i32 222, i32 94, i32 11, i32 219], [16 x i32] [i32 224, i32 50, i32 58, i32 10, i32 73, i32 6, i32 36, i32 92, i32 194, i32 211, i32 172, i32 98, i32 145, i32 149, i32 228, i32 121], [16 x i32] [i32 231, i32 200, i32 55, i32 109, i32 141, i32 213, i32 78, i32 169, i32 108, i32 86, i32 244, i32 234, i32 101, i32 122, i32 174, i32 8], [16 x i32] [i32 186, i32 120, i32 37, i32 46, i32 28, i32 166, i32 180, i32 198, i32 232, i32 221, i32 116, i32 31, i32 75, i32 189, i32 139, i32 138], [16 x i32] [i32 112, i32 62, i32 181, i32 102, i32 72, i32 3, i32 246, i32 14, i32 97, i32 53, i32 87, i32 185, i32 134, i32 193, i32 29, i32 158], [16 x i32] [i32 225, i32 248, i32 152, i32 17, i32 105, i32 217, i32 142, i32 148, i32 155, i32 30, i32 135, i32 233, i32 206, i32 85, i32 40, i32 223], [16 x i32] [i32 140, i32 161, i32 137, i32 13, i32 191, i32 230, i32 66, i32 104, i32 65, i32 153, i32 45, i32 15, i32 176, i32 84, i32 187, i32 22]], align 4
@invSbox = local_unnamed_addr constant [16 x [16 x i32]] [[16 x i32] [i32 82, i32 9, i32 106, i32 213, i32 48, i32 54, i32 165, i32 56, i32 191, i32 64, i32 163, i32 158, i32 129, i32 243, i32 215, i32 251], [16 x i32] [i32 124, i32 227, i32 57, i32 130, i32 155, i32 47, i32 255, i32 135, i32 52, i32 142, i32 67, i32 68, i32 196, i32 222, i32 233, i32 203], [16 x i32] [i32 84, i32 123, i32 148, i32 50, i32 166, i32 194, i32 35, i32 61, i32 238, i32 76, i32 149, i32 11, i32 66, i32 250, i32 195, i32 78], [16 x i32] [i32 8, i32 46, i32 161, i32 102, i32 40, i32 217, i32 36, i32 178, i32 118, i32 91, i32 162, i32 73, i32 109, i32 139, i32 209, i32 37], [16 x i32] [i32 114, i32 248, i32 246, i32 100, i32 134, i32 104, i32 152, i32 22, i32 212, i32 164, i32 92, i32 204, i32 93, i32 101, i32 182, i32 146], [16 x i32] [i32 108, i32 112, i32 72, i32 80, i32 253, i32 237, i32 185, i32 218, i32 94, i32 21, i32 70, i32 87, i32 167, i32 141, i32 157, i32 132], [16 x i32] [i32 144, i32 216, i32 171, i32 0, i32 140, i32 188, i32 211, i32 10, i32 247, i32 228, i32 88, i32 5, i32 184, i32 179, i32 69, i32 6], [16 x i32] [i32 208, i32 44, i32 30, i32 143, i32 202, i32 63, i32 15, i32 2, i32 193, i32 175, i32 189, i32 3, i32 1, i32 19, i32 138, i32 107], [16 x i32] [i32 58, i32 145, i32 17, i32 65, i32 79, i32 103, i32 220, i32 234, i32 151, i32 242, i32 207, i32 206, i32 240, i32 180, i32 230, i32 115], [16 x i32] [i32 150, i32 172, i32 116, i32 34, i32 231, i32 173, i32 53, i32 133, i32 226, i32 249, i32 55, i32 232, i32 28, i32 117, i32 223, i32 110], [16 x i32] [i32 71, i32 241, i32 26, i32 113, i32 29, i32 41, i32 197, i32 137, i32 111, i32 183, i32 98, i32 14, i32 170, i32 24, i32 190, i32 27], [16 x i32] [i32 252, i32 86, i32 62, i32 75, i32 198, i32 210, i32 121, i32 32, i32 154, i32 219, i32 192, i32 254, i32 120, i32 205, i32 90, i32 244], [16 x i32] [i32 31, i32 221, i32 168, i32 51, i32 136, i32 7, i32 199, i32 49, i32 177, i32 18, i32 16, i32 89, i32 39, i32 128, i32 236, i32 95], [16 x i32] [i32 96, i32 81, i32 127, i32 169, i32 25, i32 181, i32 74, i32 13, i32 45, i32 229, i32 122, i32 159, i32 147, i32 201, i32 156, i32 239], [16 x i32] [i32 160, i32 224, i32 59, i32 77, i32 174, i32 42, i32 245, i32 176, i32 200, i32 235, i32 187, i32 60, i32 131, i32 83, i32 153, i32 97], [16 x i32] [i32 23, i32 43, i32 4, i32 126, i32 186, i32 119, i32 214, i32 38, i32 225, i32 105, i32 20, i32 99, i32 85, i32 33, i32 12, i32 125]], align 4
@statemt = common global [32 x i32] zeroinitializer, align 4
@key = common global [32 x i32] zeroinitializer, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"\0A%d\0A\00", align 1

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #0

; Function Attrs: noinline nounwind ssp
define i32 @main() local_unnamed_addr #1 {
entry:
  store i32 0, i32* @main_result, align 4
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
  %call.c.i.c = tail call i32 @encrypt.v0.C.c.c(i32* getelementptr inbounds ([32 x i32], [32 x i32]* @statemt, i32 0, i32 0), i32* getelementptr inbounds ([32 x i32], [32 x i32]* @key, i32 0, i32 0)) #2
  %call.c.i1.c = tail call i32 @KeySchedule.v0.C.c.c(i32 128128, i32* getelementptr inbounds ([32 x i32], [32 x i32]* @key, i32 0, i32 0)) #2
  store i32 10, i32* @round_val, align 4
  store i32 4, i32* @nb, align 4
  %call7.c.i.c = tail call i32 @AddRoundKey.v0.C.c.c(i32* getelementptr inbounds ([32 x i32], [32 x i32]* @statemt, i32 0, i32 0), i32 128128, i32 10) #2
  %0 = load i32, i32* @nb, align 4
  tail call void @InversShiftRow_ByteSub.v0.C.c.c(i32* getelementptr inbounds ([32 x i32], [32 x i32]* @statemt, i32 0, i32 0), i32 %0) #2
  %1 = load i32, i32* @round_val, align 4
  %cmp4.i = icmp sgt i32 %1, 1
  br i1 %cmp4.i, label %for.body.i.preheader, label %for.end.i

for.body.i.preheader:                             ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.preheader, %for.body.i
  %i.05.in.i = phi i32 [ %i.05.i, %for.body.i ], [ %1, %for.body.i.preheader ]
  %i.05.i = add nsw i32 %i.05.in.i, -1
  %2 = load i32, i32* @nb, align 4
  %call8.c.i.c = tail call i32 @AddRoundKey_InversMixColumn.v0.C.c.c(i32* getelementptr inbounds ([32 x i32], [32 x i32]* @statemt, i32 0, i32 0), i32 %2, i32 %i.05.i) #2
  %3 = load i32, i32* @nb, align 4
  tail call void @InversShiftRow_ByteSub.v0.C.c.c(i32* getelementptr inbounds ([32 x i32], [32 x i32]* @statemt, i32 0, i32 0), i32 %3) #2
  %cmp.i = icmp sgt i32 %i.05.i, 1
  br i1 %cmp.i, label %for.body.i, label %for.end.i.loopexit

for.end.i.loopexit:                               ; preds = %for.body.i
  br label %for.end.i

for.end.i:                                        ; preds = %for.end.i.loopexit, %entry
  %call9.c.i.c = tail call i32 @AddRoundKey.v0.C.c.c(i32* getelementptr inbounds ([32 x i32], [32 x i32]* @statemt, i32 0, i32 0), i32 128128, i32 0) #2
  %call10.i = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i32 0, i32 0)) #2
  br label %for.body13.i

for.body13.i:                                     ; preds = %if.end.i, %for.end.i
  %i.12.i = phi i32 [ 0, %for.end.i ], [ %inc.i, %if.end.i ]
  %arrayidx.i = getelementptr inbounds [32 x i32], [32 x i32]* @statemt, i32 0, i32 %i.12.i
  %4 = load i32, i32* %arrayidx.i, align 4
  %cmp14.i = icmp slt i32 %4, 16
  br i1 %cmp14.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body13.i
  %putchar.i = tail call i32 @putchar(i32 48) #2
  %.pre.i = load i32, i32* %arrayidx.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body13.i
  %5 = phi i32 [ %.pre.i, %if.then.i ], [ %4, %for.body13.i ]
  %call17.i = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i32 %5) #2
  %inc.i = add nuw nsw i32 %i.12.i, 1
  %exitcond6.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond6.i, label %for.body22.preheader.i, label %for.body13.i

for.body22.preheader.i:                           ; preds = %if.end.i
  %.pre7.i = load i32, i32* @main_result, align 4
  br label %for.body22.i

for.body22.i:                                     ; preds = %for.body22.i.backedge, %for.body22.preheader.i
  %6 = phi i32 [ %.pre7.i, %for.body22.preheader.i ], [ %.be, %for.body22.i.backedge ]
  %i.21.i = phi i32 [ 0, %for.body22.preheader.i ], [ %i.21.i.be, %for.body22.i.backedge ]
  %arrayidx23.i = getelementptr inbounds [32 x i32], [32 x i32]* @statemt, i32 0, i32 %i.21.i
  %7 = load i32, i32* %arrayidx23.i, align 4
  switch i32 %i.21.i, label %csroa.if.end74.i [
    i32 0, label %__non_const_wrapper__.exit.thread
    i32 1, label %__non_const_wrapper__.exit.thread7
    i32 2, label %__non_const_wrapper__.exit.thread13
    i32 3, label %__non_const_wrapper__.exit.thread19
    i32 4, label %__non_const_wrapper__.exit.thread25
    i32 5, label %__non_const_wrapper__.exit.thread31
    i32 6, label %__non_const_wrapper__.exit.thread37
    i32 7, label %__non_const_wrapper__.exit.thread43
    i32 8, label %__non_const_wrapper__.exit
    i32 9, label %__non_const_wrapper__.exit
    i32 10, label %csroa.if.end49.i
    i32 11, label %csroa.if.end54.i
    i32 12, label %csroa.if.end59.i
    i32 13, label %csroa.if.end64.i
    i32 14, label %csroa.if.end69.i
  ]

__non_const_wrapper__.exit.thread43:              ; preds = %for.body22.i
  %cmp25.i44 = icmp ne i32 %7, 141
  %conv.i45 = zext i1 %cmp25.i44 to i32
  %add.i46 = add nsw i32 %conv.i45, %6
  br label %for.body22.i.backedge

__non_const_wrapper__.exit.thread37:              ; preds = %for.body22.i
  %cmp25.i38 = icmp ne i32 %7, 48
  %conv.i39 = zext i1 %cmp25.i38 to i32
  %add.i40 = add nsw i32 %conv.i39, %6
  br label %for.body22.i.backedge

__non_const_wrapper__.exit.thread31:              ; preds = %for.body22.i
  %cmp25.i32 = icmp ne i32 %7, 90
  %conv.i33 = zext i1 %cmp25.i32 to i32
  %add.i34 = add nsw i32 %conv.i33, %6
  br label %for.body22.i.backedge

__non_const_wrapper__.exit.thread25:              ; preds = %for.body22.i
  %cmp25.i26 = icmp ne i32 %7, 136
  %conv.i27 = zext i1 %cmp25.i26 to i32
  %add.i28 = add nsw i32 %conv.i27, %6
  br label %for.body22.i.backedge

__non_const_wrapper__.exit.thread19:              ; preds = %for.body22.i
  %cmp25.i20 = icmp ne i32 %7, 168
  %conv.i21 = zext i1 %cmp25.i20 to i32
  %add.i22 = add nsw i32 %conv.i21, %6
  br label %for.body22.i.backedge

__non_const_wrapper__.exit.thread13:              ; preds = %for.body22.i
  %cmp25.i14 = icmp ne i32 %7, 246
  %conv.i15 = zext i1 %cmp25.i14 to i32
  %add.i16 = add nsw i32 %conv.i15, %6
  br label %for.body22.i.backedge

__non_const_wrapper__.exit.thread7:               ; preds = %for.body22.i
  %cmp25.i8 = icmp ne i32 %7, 67
  %conv.i9 = zext i1 %cmp25.i8 to i32
  %add.i10 = add nsw i32 %conv.i9, %6
  br label %for.body22.i.backedge

__non_const_wrapper__.exit.thread:                ; preds = %for.body22.i
  %cmp25.i2 = icmp ne i32 %7, 50
  %conv.i3 = zext i1 %cmp25.i2 to i32
  %add.i4 = add nsw i32 %conv.i3, %6
  br label %for.body22.i.backedge

csroa.if.end74.i:                                 ; preds = %for.body22.i
  br label %csroa.if.end69.i

csroa.if.end69.i:                                 ; preds = %for.body22.i, %csroa.if.end74.i
  %.phi70.i = phi i32 [ 52, %csroa.if.end74.i ], [ 7, %for.body22.i ]
  br label %csroa.if.end64.i

csroa.if.end64.i:                                 ; preds = %for.body22.i, %csroa.if.end69.i
  %.phi65.i = phi i32 [ %.phi70.i, %csroa.if.end69.i ], [ 55, %for.body22.i ]
  br label %csroa.if.end59.i

csroa.if.end59.i:                                 ; preds = %for.body22.i, %csroa.if.end64.i
  %.phi60.i = phi i32 [ %.phi65.i, %csroa.if.end64.i ], [ 224, %for.body22.i ]
  br label %csroa.if.end54.i

csroa.if.end54.i:                                 ; preds = %for.body22.i, %csroa.if.end59.i
  %.phi55.i = phi i32 [ %.phi60.i, %csroa.if.end59.i ], [ 162, %for.body22.i ]
  br label %csroa.if.end49.i

csroa.if.end49.i:                                 ; preds = %for.body22.i, %csroa.if.end54.i
  %.phi50.i = phi i32 [ %.phi55.i, %csroa.if.end54.i ], [ 152, %for.body22.i ]
  br label %__non_const_wrapper__.exit

__non_const_wrapper__.exit:                       ; preds = %for.body22.i, %for.body22.i, %csroa.if.end49.i
  %.phi40.i = phi i32 [ 49, %for.body22.i ], [ %.phi50.i, %csroa.if.end49.i ], [ 49, %for.body22.i ]
  %cmp25.i = icmp ne i32 %7, %.phi40.i
  %conv.i = zext i1 %cmp25.i to i32
  %add.i = add nsw i32 %conv.i, %6
  %inc27.i = add nuw nsw i32 %i.21.i, 1
  %exitcond.i = icmp eq i32 %inc27.i, 16
  br i1 %exitcond.i, label %decrypt.v0.C.c.exit, label %for.body22.i.backedge

for.body22.i.backedge:                            ; preds = %__non_const_wrapper__.exit, %__non_const_wrapper__.exit.thread, %__non_const_wrapper__.exit.thread7, %__non_const_wrapper__.exit.thread13, %__non_const_wrapper__.exit.thread19, %__non_const_wrapper__.exit.thread25, %__non_const_wrapper__.exit.thread31, %__non_const_wrapper__.exit.thread37, %__non_const_wrapper__.exit.thread43
  %.be = phi i32 [ %add.i, %__non_const_wrapper__.exit ], [ %add.i4, %__non_const_wrapper__.exit.thread ], [ %add.i10, %__non_const_wrapper__.exit.thread7 ], [ %add.i16, %__non_const_wrapper__.exit.thread13 ], [ %add.i22, %__non_const_wrapper__.exit.thread19 ], [ %add.i28, %__non_const_wrapper__.exit.thread25 ], [ %add.i34, %__non_const_wrapper__.exit.thread31 ], [ %add.i40, %__non_const_wrapper__.exit.thread37 ], [ %add.i46, %__non_const_wrapper__.exit.thread43 ]
  %i.21.i.be = phi i32 [ %inc27.i, %__non_const_wrapper__.exit ], [ 1, %__non_const_wrapper__.exit.thread ], [ 2, %__non_const_wrapper__.exit.thread7 ], [ 3, %__non_const_wrapper__.exit.thread13 ], [ 4, %__non_const_wrapper__.exit.thread19 ], [ 5, %__non_const_wrapper__.exit.thread25 ], [ 6, %__non_const_wrapper__.exit.thread31 ], [ 7, %__non_const_wrapper__.exit.thread37 ], [ 8, %__non_const_wrapper__.exit.thread43 ]
  br label %for.body22.i

decrypt.v0.C.c.exit:                              ; preds = %__non_const_wrapper__.exit
  store i32 %add.i, i32* @main_result, align 4
  %call1 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 %add.i)
  %8 = load i32, i32* @main_result, align 4
  ret i32 %8
}

; Function Attrs: nounwind
declare i32 @putchar(i32) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

; Function Attrs: noinline norecurse nounwind
define i32 @KeySchedule.v0.C.c.c(i32 %type, i32* nocapture readonly %key) local_unnamed_addr #4 {
entry:
  %temp = alloca [4 x i32], align 4
  switch i32 %type, label %return [
    i32 128128, label %sw.epilog
    i32 128192, label %sw.bb1
    i32 128256, label %sw.bb2
    i32 192128, label %sw.bb3
    i32 192192, label %sw.bb4
    i32 192256, label %sw.bb5
    i32 256128, label %sw.bb6
    i32 256192, label %sw.bb7
    i32 256256, label %sw.bb8
  ]

sw.bb1:                                           ; preds = %entry
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1
  %round_val.0 = phi i32 [ 15, %sw.bb8 ], [ 15, %sw.bb7 ], [ 15, %sw.bb6 ], [ 15, %sw.bb5 ], [ 13, %sw.bb4 ], [ 13, %sw.bb3 ], [ 15, %sw.bb2 ], [ 13, %sw.bb1 ], [ 11, %entry ]
  %nb.0 = phi i32 [ 8, %sw.bb8 ], [ 6, %sw.bb7 ], [ 4, %sw.bb6 ], [ 8, %sw.bb5 ], [ 6, %sw.bb4 ], [ 4, %sw.bb3 ], [ 8, %sw.bb2 ], [ 6, %sw.bb1 ], [ 4, %entry ]
  %nk.0 = phi i32 [ 8, %sw.bb8 ], [ 8, %sw.bb7 ], [ 8, %sw.bb6 ], [ 6, %sw.bb5 ], [ 6, %sw.bb4 ], [ 6, %sw.bb3 ], [ 4, %sw.bb2 ], [ 4, %sw.bb1 ], [ 4, %entry ]
  br label %for.cond9.preheader

for.cond9.preheader:                              ; preds = %sw.epilog, %for.inc14
  %j.06 = phi i32 [ 0, %sw.epilog ], [ %inc15, %for.inc14 ]
  %mul = shl i32 %j.06, 2
  br label %for.body11

for.cond17.preheader:                             ; preds = %for.inc14
  %mul19 = mul nuw nsw i32 %nb.0, %round_val.0
  %cmp203 = icmp ult i32 %nk.0, %mul19
  br i1 %cmp203, label %for.body21.lr.ph, label %return

for.body21.lr.ph:                                 ; preds = %for.cond17.preheader
  %arrayidx26 = getelementptr inbounds [4 x i32], [4 x i32]* %temp, i32 0, i32 0
  %arrayidx30 = getelementptr inbounds [4 x i32], [4 x i32]* %temp, i32 0, i32 1
  %arrayidx34 = getelementptr inbounds [4 x i32], [4 x i32]* %temp, i32 0, i32 2
  %arrayidx38 = getelementptr inbounds [4 x i32], [4 x i32]* %temp, i32 0, i32 3
  %cmp55 = icmp ugt i32 %nk.0, 6
  br i1 %cmp55, label %for.body21.us.preheader, label %for.body21.preheader

for.body21.preheader:                             ; preds = %for.body21.lr.ph
  br label %for.body21

for.body21.us.preheader:                          ; preds = %for.body21.lr.ph
  br label %for.body21.us

for.body21.us:                                    ; preds = %for.body21.us.preheader, %for.inc82.us
  %j.14.us = phi i32 [ %inc83.us, %for.inc82.us ], [ %nk.0, %for.body21.us.preheader ]
  %rem.us = srem i32 %j.14.us, %nk.0
  %cmp22.us = icmp eq i32 %rem.us, 0
  %sub.us = add nsw i32 %j.14.us, -1
  %0 = getelementptr inbounds [4 x [120 x i32]], [4 x [120 x i32]]* @word, i32 0, i32 1, i32 %sub.us
  %1 = load i32, i32* %0, align 4
  br i1 %cmp22.us, label %if.end54.us.thread, label %if.end54.us

if.end54.us.thread:                               ; preds = %for.body21.us
  %call.c.us.c = tail call i32 @SubByte.v0.C.c.c(i32 %1)
  %div.us = sdiv i32 %j.14.us, %nk.0
  switch i32 %div.us, label %csroa.if.end144.i [
    i32 1, label %__non_const_wrapper__.11.exit
    i32 2, label %csroa.if.end4.i
    i32 3, label %csroa.if.end9.i
    i32 4, label %csroa.if.end14.i
    i32 5, label %csroa.if.end19.i
    i32 6, label %csroa.if.end24.i
    i32 7, label %csroa.if.end29.i
    i32 8, label %csroa.if.end34.i
    i32 9, label %csroa.if.end39.i
    i32 10, label %csroa.if.end44.i
    i32 11, label %csroa.if.end49.i
    i32 12, label %csroa.if.end54.i
    i32 13, label %csroa.if.end59.i
    i32 14, label %csroa.if.end64.i
    i32 15, label %csroa.if.end69.i
    i32 16, label %csroa.if.end74.i
    i32 17, label %csroa.if.end79.i
    i32 18, label %csroa.if.end84.i
    i32 19, label %csroa.if.end89.i
    i32 20, label %csroa.if.end94.i
    i32 21, label %csroa.if.end99.i
    i32 22, label %csroa.if.end104.i
    i32 23, label %csroa.if.end109.i
    i32 24, label %csroa.if.end114.i
    i32 25, label %csroa.if.end119.i
    i32 26, label %csroa.if.end124.i
    i32 27, label %csroa.if.end129.i
    i32 28, label %csroa.if.end134.i
    i32 29, label %csroa.if.end139.i
  ]

csroa.if.end144.i:                                ; preds = %if.end54.us.thread
  br label %csroa.if.end139.i

csroa.if.end139.i:                                ; preds = %if.end54.us.thread, %csroa.if.end144.i
  %.phi140.i = phi i32 [ 145, %csroa.if.end144.i ], [ 197, %if.end54.us.thread ]
  br label %csroa.if.end134.i

csroa.if.end134.i:                                ; preds = %if.end54.us.thread, %csroa.if.end139.i
  %.phi135.i = phi i32 [ %.phi140.i, %csroa.if.end139.i ], [ 239, %if.end54.us.thread ]
  br label %csroa.if.end129.i

csroa.if.end129.i:                                ; preds = %if.end54.us.thread, %csroa.if.end134.i
  %.phi130.i = phi i32 [ %.phi135.i, %csroa.if.end134.i ], [ 250, %if.end54.us.thread ]
  br label %csroa.if.end124.i

csroa.if.end124.i:                                ; preds = %if.end54.us.thread, %csroa.if.end129.i
  %.phi125.i = phi i32 [ %.phi130.i, %csroa.if.end129.i ], [ 125, %if.end54.us.thread ]
  br label %csroa.if.end119.i

csroa.if.end119.i:                                ; preds = %if.end54.us.thread, %csroa.if.end124.i
  %.phi120.i = phi i32 [ %.phi125.i, %csroa.if.end124.i ], [ 179, %if.end54.us.thread ]
  br label %csroa.if.end114.i

csroa.if.end114.i:                                ; preds = %if.end54.us.thread, %csroa.if.end119.i
  %.phi115.i = phi i32 [ %.phi120.i, %csroa.if.end119.i ], [ 212, %if.end54.us.thread ]
  br label %csroa.if.end109.i

csroa.if.end109.i:                                ; preds = %if.end54.us.thread, %csroa.if.end114.i
  %.phi110.i = phi i32 [ %.phi115.i, %csroa.if.end114.i ], [ 106, %if.end54.us.thread ]
  br label %csroa.if.end104.i

csroa.if.end104.i:                                ; preds = %if.end54.us.thread, %csroa.if.end109.i
  %.phi105.i = phi i32 [ %.phi110.i, %csroa.if.end109.i ], [ 53, %if.end54.us.thread ]
  br label %csroa.if.end99.i

csroa.if.end99.i:                                 ; preds = %if.end54.us.thread, %csroa.if.end104.i
  %.phi100.i = phi i32 [ %.phi105.i, %csroa.if.end104.i ], [ 151, %if.end54.us.thread ]
  br label %csroa.if.end94.i

csroa.if.end94.i:                                 ; preds = %if.end54.us.thread, %csroa.if.end99.i
  %.phi95.i = phi i32 [ %.phi100.i, %csroa.if.end99.i ], [ 198, %if.end54.us.thread ]
  br label %csroa.if.end89.i

csroa.if.end89.i:                                 ; preds = %if.end54.us.thread, %csroa.if.end94.i
  %.phi90.i = phi i32 [ %.phi95.i, %csroa.if.end94.i ], [ 99, %if.end54.us.thread ]
  br label %csroa.if.end84.i

csroa.if.end84.i:                                 ; preds = %if.end54.us.thread, %csroa.if.end89.i
  %.phi85.i = phi i32 [ %.phi90.i, %csroa.if.end89.i ], [ 188, %if.end54.us.thread ]
  br label %csroa.if.end79.i

csroa.if.end79.i:                                 ; preds = %if.end54.us.thread, %csroa.if.end84.i
  %.phi80.i = phi i32 [ %.phi85.i, %csroa.if.end84.i ], [ 94, %if.end54.us.thread ]
  br label %csroa.if.end74.i

csroa.if.end74.i:                                 ; preds = %if.end54.us.thread, %csroa.if.end79.i
  %.phi75.i = phi i32 [ %.phi80.i, %csroa.if.end79.i ], [ 47, %if.end54.us.thread ]
  br label %csroa.if.end69.i

csroa.if.end69.i:                                 ; preds = %if.end54.us.thread, %csroa.if.end74.i
  %.phi70.i = phi i32 [ %.phi75.i, %csroa.if.end74.i ], [ 154, %if.end54.us.thread ]
  br label %csroa.if.end64.i

csroa.if.end64.i:                                 ; preds = %if.end54.us.thread, %csroa.if.end69.i
  %.phi65.i = phi i32 [ %.phi70.i, %csroa.if.end69.i ], [ 77, %if.end54.us.thread ]
  br label %csroa.if.end59.i

csroa.if.end59.i:                                 ; preds = %if.end54.us.thread, %csroa.if.end64.i
  %.phi60.i = phi i32 [ %.phi65.i, %csroa.if.end64.i ], [ 171, %if.end54.us.thread ]
  br label %csroa.if.end54.i

csroa.if.end54.i:                                 ; preds = %if.end54.us.thread, %csroa.if.end59.i
  %.phi55.i = phi i32 [ %.phi60.i, %csroa.if.end59.i ], [ 216, %if.end54.us.thread ]
  br label %csroa.if.end49.i

csroa.if.end49.i:                                 ; preds = %if.end54.us.thread, %csroa.if.end54.i
  %.phi50.i = phi i32 [ %.phi55.i, %csroa.if.end54.i ], [ 108, %if.end54.us.thread ]
  br label %csroa.if.end44.i

csroa.if.end44.i:                                 ; preds = %if.end54.us.thread, %csroa.if.end49.i
  %.phi45.i = phi i32 [ %.phi50.i, %csroa.if.end49.i ], [ 54, %if.end54.us.thread ]
  br label %csroa.if.end39.i

csroa.if.end39.i:                                 ; preds = %if.end54.us.thread, %csroa.if.end44.i
  %.phi40.i = phi i32 [ %.phi45.i, %csroa.if.end44.i ], [ 27, %if.end54.us.thread ]
  br label %csroa.if.end34.i

csroa.if.end34.i:                                 ; preds = %if.end54.us.thread, %csroa.if.end39.i
  %.phi35.i = phi i32 [ %.phi40.i, %csroa.if.end39.i ], [ 128, %if.end54.us.thread ]
  br label %csroa.if.end29.i

csroa.if.end29.i:                                 ; preds = %if.end54.us.thread, %csroa.if.end34.i
  %.phi30.i = phi i32 [ %.phi35.i, %csroa.if.end34.i ], [ 64, %if.end54.us.thread ]
  br label %csroa.if.end24.i

csroa.if.end24.i:                                 ; preds = %if.end54.us.thread, %csroa.if.end29.i
  %.phi25.i = phi i32 [ %.phi30.i, %csroa.if.end29.i ], [ 32, %if.end54.us.thread ]
  br label %csroa.if.end19.i

csroa.if.end19.i:                                 ; preds = %if.end54.us.thread, %csroa.if.end24.i
  %.phi20.i = phi i32 [ %.phi25.i, %csroa.if.end24.i ], [ 16, %if.end54.us.thread ]
  br label %csroa.if.end14.i

csroa.if.end14.i:                                 ; preds = %if.end54.us.thread, %csroa.if.end19.i
  %.phi15.i = phi i32 [ %.phi20.i, %csroa.if.end19.i ], [ 8, %if.end54.us.thread ]
  br label %csroa.if.end9.i

csroa.if.end9.i:                                  ; preds = %if.end54.us.thread, %csroa.if.end14.i
  %.phi10.i = phi i32 [ %.phi15.i, %csroa.if.end14.i ], [ 4, %if.end54.us.thread ]
  br label %csroa.if.end4.i

csroa.if.end4.i:                                  ; preds = %if.end54.us.thread, %csroa.if.end9.i
  %.phi5.i = phi i32 [ %.phi10.i, %csroa.if.end9.i ], [ 2, %if.end54.us.thread ]
  br label %__non_const_wrapper__.11.exit

__non_const_wrapper__.11.exit:                    ; preds = %if.end54.us.thread, %csroa.if.end4.i
  %.phi.i = phi i32 [ %.phi5.i, %csroa.if.end4.i ], [ 1, %if.end54.us.thread ]
  %xor.us = xor i32 %.phi.i, %call.c.us.c
  store i32 %xor.us, i32* %arrayidx26, align 4
  %arrayidx28.us = getelementptr inbounds [4 x [120 x i32]], [4 x [120 x i32]]* @word, i32 0, i32 2, i32 %sub.us
  %2 = load i32, i32* %arrayidx28.us, align 4
  %call29.c.us.c = tail call i32 @SubByte.v0.C.c.c(i32 %2)
  store i32 %call29.c.us.c, i32* %arrayidx30, align 4
  %arrayidx32.us = getelementptr inbounds [4 x [120 x i32]], [4 x [120 x i32]]* @word, i32 0, i32 3, i32 %sub.us
  %3 = load i32, i32* %arrayidx32.us, align 4
  %call33.c.us.c = tail call i32 @SubByte.v0.C.c.c(i32 %3)
  store i32 %call33.c.us.c, i32* %arrayidx34, align 4
  %arrayidx36.us = getelementptr inbounds [4 x [120 x i32]], [4 x [120 x i32]]* @word, i32 0, i32 0, i32 %sub.us
  %4 = load i32, i32* %arrayidx36.us, align 4
  %call37.c.us.c = tail call i32 @SubByte.v0.C.c.c(i32 %4)
  store i32 %call37.c.us.c, i32* %arrayidx38, align 4
  br label %for.cond69.preheader.us

if.end54.us:                                      ; preds = %for.body21.us
  %arrayidx43.us = getelementptr inbounds [4 x [120 x i32]], [4 x [120 x i32]]* @word, i32 0, i32 0, i32 %sub.us
  %5 = load i32, i32* %arrayidx43.us, align 4
  store i32 %5, i32* %arrayidx26, align 4
  store i32 %1, i32* %arrayidx30, align 4
  %arrayidx49.us = getelementptr inbounds [4 x [120 x i32]], [4 x [120 x i32]]* @word, i32 0, i32 2, i32 %sub.us
  %6 = load i32, i32* %arrayidx49.us, align 4
  store i32 %6, i32* %arrayidx34, align 4
  %arrayidx52.us = getelementptr inbounds [4 x [120 x i32]], [4 x [120 x i32]]* @word, i32 0, i32 3, i32 %sub.us
  %7 = load i32, i32* %arrayidx52.us, align 4
  store i32 %7, i32* %arrayidx38, align 4
  %cmp57.us = icmp eq i32 %rem.us, 4
  br i1 %cmp57.us, label %for.body61.us.preheader, label %for.cond69.preheader.us

for.body61.us.preheader:                          ; preds = %if.end54.us
  %call63.c.us16.c = tail call i32 @SubByte.v0.C.c.c(i32 %5)
  store i32 %call63.c.us16.c, i32* %arrayidx26, align 4
  %arrayidx62.us.phi.trans.insert7 = getelementptr inbounds [4 x i32], [4 x i32]* %temp, i32 0, i32 1
  %call63.c.us.c8 = tail call i32 @SubByte.v0.C.c.c(i32 %1)
  store i32 %call63.c.us.c8, i32* %arrayidx62.us.phi.trans.insert7, align 4
  br label %for.body61.us.for.body61.us_crit_edge.for.body61.us.for.body61.us_crit_edge_crit_edge

for.inc82.us:                                     ; preds = %for.body71.us
  %inc83.us = add nuw nsw i32 %j.14.us, 1
  %cmp20.us = icmp slt i32 %inc83.us, %mul19
  br i1 %cmp20.us, label %for.body21.us, label %return.loopexit

for.body71.us:                                    ; preds = %for.body71.us, %for.cond69.preheader.us
  %i.22.us = phi i32 [ 0, %for.cond69.preheader.us ], [ %inc80.us, %for.body71.us ]
  %arrayidx74.us = getelementptr inbounds [4 x [120 x i32]], [4 x [120 x i32]]* @word, i32 0, i32 %i.22.us, i32 %sub73.us
  %8 = load i32, i32* %arrayidx74.us, align 4
  %arrayidx75.us = getelementptr inbounds [4 x i32], [4 x i32]* %temp, i32 0, i32 %i.22.us
  %9 = load i32, i32* %arrayidx75.us, align 4
  %xor76.us = xor i32 %9, %8
  %arrayidx78.us = getelementptr inbounds [4 x [120 x i32]], [4 x [120 x i32]]* @word, i32 0, i32 %i.22.us, i32 %j.14.us
  store i32 %xor76.us, i32* %arrayidx78.us, align 4
  %inc80.us = add nuw nsw i32 %i.22.us, 1
  %exitcond8 = icmp eq i32 %inc80.us, 4
  br i1 %exitcond8, label %for.inc82.us, label %for.body71.us

for.body61.us.for.body61.us_crit_edge.for.body61.us.for.body61.us_crit_edge_crit_edge: ; preds = %for.body61.us.preheader, %for.body61.us.for.body61.us_crit_edge.for.body61.us.for.body61.us_crit_edge_crit_edge
  %inc66.us9 = phi i32 [ 2, %for.body61.us.preheader ], [ %inc66.us, %for.body61.us.for.body61.us_crit_edge.for.body61.us.for.body61.us_crit_edge_crit_edge ]
  %arrayidx62.us.phi.trans.insert.phi.trans.insert = getelementptr inbounds [4 x i32], [4 x i32]* %temp, i32 0, i32 %inc66.us9
  %.pre11.pre = load i32, i32* %arrayidx62.us.phi.trans.insert.phi.trans.insert, align 4
  %arrayidx62.us.phi.trans.insert = getelementptr inbounds [4 x i32], [4 x i32]* %temp, i32 0, i32 %inc66.us9
  %call63.c.us.c = tail call i32 @SubByte.v0.C.c.c(i32 %.pre11.pre)
  store i32 %call63.c.us.c, i32* %arrayidx62.us.phi.trans.insert, align 4
  %inc66.us = add nuw nsw i32 %inc66.us9, 1
  %exitcond = icmp eq i32 %inc66.us, 4
  br i1 %exitcond, label %for.cond69.preheader.us.loopexit, label %for.body61.us.for.body61.us_crit_edge.for.body61.us.for.body61.us_crit_edge_crit_edge

for.cond69.preheader.us.loopexit:                 ; preds = %for.body61.us.for.body61.us_crit_edge.for.body61.us.for.body61.us_crit_edge_crit_edge
  br label %for.cond69.preheader.us

for.cond69.preheader.us:                          ; preds = %for.cond69.preheader.us.loopexit, %__non_const_wrapper__.11.exit, %if.end54.us
  %sub73.us = sub nuw nsw i32 %j.14.us, %nk.0
  br label %for.body71.us

for.body11:                                       ; preds = %for.body11, %for.cond9.preheader
  %i.05 = phi i32 [ 0, %for.cond9.preheader ], [ %inc, %for.body11 ]
  %add = add nuw nsw i32 %i.05, %mul
  %arrayidx = getelementptr inbounds i32, i32* %key, i32 %add
  %10 = load i32, i32* %arrayidx, align 4
  %arrayidx13 = getelementptr inbounds [4 x [120 x i32]], [4 x [120 x i32]]* @word, i32 0, i32 %i.05, i32 %j.06
  store i32 %10, i32* %arrayidx13, align 4
  %inc = add nuw nsw i32 %i.05, 1
  %exitcond10 = icmp eq i32 %inc, 4
  br i1 %exitcond10, label %for.inc14, label %for.body11

for.inc14:                                        ; preds = %for.body11
  %inc15 = add nuw nsw i32 %j.06, 1
  %cmp = icmp slt i32 %inc15, %nk.0
  br i1 %cmp, label %for.cond9.preheader, label %for.cond17.preheader

for.body21:                                       ; preds = %for.body21.preheader, %for.inc82
  %j.14 = phi i32 [ %inc83, %for.inc82 ], [ %nk.0, %for.body21.preheader ]
  %rem = srem i32 %j.14, %nk.0
  %cmp22 = icmp eq i32 %rem, 0
  %sub = add nsw i32 %j.14, -1
  %11 = getelementptr inbounds [4 x [120 x i32]], [4 x [120 x i32]]* @word, i32 0, i32 1, i32 %sub
  %12 = load i32, i32* %11, align 4
  br i1 %cmp22, label %if.end.thread, label %if.then41

if.end.thread:                                    ; preds = %for.body21
  %call.c.c = tail call i32 @SubByte.v0.C.c.c(i32 %12)
  %div = sdiv i32 %j.14, %nk.0
  switch i32 %div, label %csroa.if.end144.i113 [
    i32 1, label %__non_const_wrapper__.11.exit171
    i32 2, label %csroa.if.end4.i169
    i32 3, label %csroa.if.end9.i167
    i32 4, label %csroa.if.end14.i165
    i32 5, label %csroa.if.end19.i163
    i32 6, label %csroa.if.end24.i161
    i32 7, label %csroa.if.end29.i159
    i32 8, label %csroa.if.end34.i157
    i32 9, label %csroa.if.end39.i155
    i32 10, label %csroa.if.end44.i153
    i32 11, label %csroa.if.end49.i151
    i32 12, label %csroa.if.end54.i149
    i32 13, label %csroa.if.end59.i147
    i32 14, label %csroa.if.end64.i145
    i32 15, label %csroa.if.end69.i143
    i32 16, label %csroa.if.end74.i141
    i32 17, label %csroa.if.end79.i139
    i32 18, label %csroa.if.end84.i137
    i32 19, label %csroa.if.end89.i135
    i32 20, label %csroa.if.end94.i133
    i32 21, label %csroa.if.end99.i131
    i32 22, label %csroa.if.end104.i129
    i32 23, label %csroa.if.end109.i127
    i32 24, label %csroa.if.end114.i125
    i32 25, label %csroa.if.end119.i123
    i32 26, label %csroa.if.end124.i121
    i32 27, label %csroa.if.end129.i119
    i32 28, label %csroa.if.end134.i117
    i32 29, label %csroa.if.end139.i115
  ]

csroa.if.end144.i113:                             ; preds = %if.end.thread
  br label %csroa.if.end139.i115

csroa.if.end139.i115:                             ; preds = %if.end.thread, %csroa.if.end144.i113
  %.phi140.i114 = phi i32 [ 145, %csroa.if.end144.i113 ], [ 197, %if.end.thread ]
  br label %csroa.if.end134.i117

csroa.if.end134.i117:                             ; preds = %if.end.thread, %csroa.if.end139.i115
  %.phi135.i116 = phi i32 [ %.phi140.i114, %csroa.if.end139.i115 ], [ 239, %if.end.thread ]
  br label %csroa.if.end129.i119

csroa.if.end129.i119:                             ; preds = %if.end.thread, %csroa.if.end134.i117
  %.phi130.i118 = phi i32 [ %.phi135.i116, %csroa.if.end134.i117 ], [ 250, %if.end.thread ]
  br label %csroa.if.end124.i121

csroa.if.end124.i121:                             ; preds = %if.end.thread, %csroa.if.end129.i119
  %.phi125.i120 = phi i32 [ %.phi130.i118, %csroa.if.end129.i119 ], [ 125, %if.end.thread ]
  br label %csroa.if.end119.i123

csroa.if.end119.i123:                             ; preds = %if.end.thread, %csroa.if.end124.i121
  %.phi120.i122 = phi i32 [ %.phi125.i120, %csroa.if.end124.i121 ], [ 179, %if.end.thread ]
  br label %csroa.if.end114.i125

csroa.if.end114.i125:                             ; preds = %if.end.thread, %csroa.if.end119.i123
  %.phi115.i124 = phi i32 [ %.phi120.i122, %csroa.if.end119.i123 ], [ 212, %if.end.thread ]
  br label %csroa.if.end109.i127

csroa.if.end109.i127:                             ; preds = %if.end.thread, %csroa.if.end114.i125
  %.phi110.i126 = phi i32 [ %.phi115.i124, %csroa.if.end114.i125 ], [ 106, %if.end.thread ]
  br label %csroa.if.end104.i129

csroa.if.end104.i129:                             ; preds = %if.end.thread, %csroa.if.end109.i127
  %.phi105.i128 = phi i32 [ %.phi110.i126, %csroa.if.end109.i127 ], [ 53, %if.end.thread ]
  br label %csroa.if.end99.i131

csroa.if.end99.i131:                              ; preds = %if.end.thread, %csroa.if.end104.i129
  %.phi100.i130 = phi i32 [ %.phi105.i128, %csroa.if.end104.i129 ], [ 151, %if.end.thread ]
  br label %csroa.if.end94.i133

csroa.if.end94.i133:                              ; preds = %if.end.thread, %csroa.if.end99.i131
  %.phi95.i132 = phi i32 [ %.phi100.i130, %csroa.if.end99.i131 ], [ 198, %if.end.thread ]
  br label %csroa.if.end89.i135

csroa.if.end89.i135:                              ; preds = %if.end.thread, %csroa.if.end94.i133
  %.phi90.i134 = phi i32 [ %.phi95.i132, %csroa.if.end94.i133 ], [ 99, %if.end.thread ]
  br label %csroa.if.end84.i137

csroa.if.end84.i137:                              ; preds = %if.end.thread, %csroa.if.end89.i135
  %.phi85.i136 = phi i32 [ %.phi90.i134, %csroa.if.end89.i135 ], [ 188, %if.end.thread ]
  br label %csroa.if.end79.i139

csroa.if.end79.i139:                              ; preds = %if.end.thread, %csroa.if.end84.i137
  %.phi80.i138 = phi i32 [ %.phi85.i136, %csroa.if.end84.i137 ], [ 94, %if.end.thread ]
  br label %csroa.if.end74.i141

csroa.if.end74.i141:                              ; preds = %if.end.thread, %csroa.if.end79.i139
  %.phi75.i140 = phi i32 [ %.phi80.i138, %csroa.if.end79.i139 ], [ 47, %if.end.thread ]
  br label %csroa.if.end69.i143

csroa.if.end69.i143:                              ; preds = %if.end.thread, %csroa.if.end74.i141
  %.phi70.i142 = phi i32 [ %.phi75.i140, %csroa.if.end74.i141 ], [ 154, %if.end.thread ]
  br label %csroa.if.end64.i145

csroa.if.end64.i145:                              ; preds = %if.end.thread, %csroa.if.end69.i143
  %.phi65.i144 = phi i32 [ %.phi70.i142, %csroa.if.end69.i143 ], [ 77, %if.end.thread ]
  br label %csroa.if.end59.i147

csroa.if.end59.i147:                              ; preds = %if.end.thread, %csroa.if.end64.i145
  %.phi60.i146 = phi i32 [ %.phi65.i144, %csroa.if.end64.i145 ], [ 171, %if.end.thread ]
  br label %csroa.if.end54.i149

csroa.if.end54.i149:                              ; preds = %if.end.thread, %csroa.if.end59.i147
  %.phi55.i148 = phi i32 [ %.phi60.i146, %csroa.if.end59.i147 ], [ 216, %if.end.thread ]
  br label %csroa.if.end49.i151

csroa.if.end49.i151:                              ; preds = %if.end.thread, %csroa.if.end54.i149
  %.phi50.i150 = phi i32 [ %.phi55.i148, %csroa.if.end54.i149 ], [ 108, %if.end.thread ]
  br label %csroa.if.end44.i153

csroa.if.end44.i153:                              ; preds = %if.end.thread, %csroa.if.end49.i151
  %.phi45.i152 = phi i32 [ %.phi50.i150, %csroa.if.end49.i151 ], [ 54, %if.end.thread ]
  br label %csroa.if.end39.i155

csroa.if.end39.i155:                              ; preds = %if.end.thread, %csroa.if.end44.i153
  %.phi40.i154 = phi i32 [ %.phi45.i152, %csroa.if.end44.i153 ], [ 27, %if.end.thread ]
  br label %csroa.if.end34.i157

csroa.if.end34.i157:                              ; preds = %if.end.thread, %csroa.if.end39.i155
  %.phi35.i156 = phi i32 [ %.phi40.i154, %csroa.if.end39.i155 ], [ 128, %if.end.thread ]
  br label %csroa.if.end29.i159

csroa.if.end29.i159:                              ; preds = %if.end.thread, %csroa.if.end34.i157
  %.phi30.i158 = phi i32 [ %.phi35.i156, %csroa.if.end34.i157 ], [ 64, %if.end.thread ]
  br label %csroa.if.end24.i161

csroa.if.end24.i161:                              ; preds = %if.end.thread, %csroa.if.end29.i159
  %.phi25.i160 = phi i32 [ %.phi30.i158, %csroa.if.end29.i159 ], [ 32, %if.end.thread ]
  br label %csroa.if.end19.i163

csroa.if.end19.i163:                              ; preds = %if.end.thread, %csroa.if.end24.i161
  %.phi20.i162 = phi i32 [ %.phi25.i160, %csroa.if.end24.i161 ], [ 16, %if.end.thread ]
  br label %csroa.if.end14.i165

csroa.if.end14.i165:                              ; preds = %if.end.thread, %csroa.if.end19.i163
  %.phi15.i164 = phi i32 [ %.phi20.i162, %csroa.if.end19.i163 ], [ 8, %if.end.thread ]
  br label %csroa.if.end9.i167

csroa.if.end9.i167:                               ; preds = %if.end.thread, %csroa.if.end14.i165
  %.phi10.i166 = phi i32 [ %.phi15.i164, %csroa.if.end14.i165 ], [ 4, %if.end.thread ]
  br label %csroa.if.end4.i169

csroa.if.end4.i169:                               ; preds = %if.end.thread, %csroa.if.end9.i167
  %.phi5.i168 = phi i32 [ %.phi10.i166, %csroa.if.end9.i167 ], [ 2, %if.end.thread ]
  br label %__non_const_wrapper__.11.exit171

__non_const_wrapper__.11.exit171:                 ; preds = %if.end.thread, %csroa.if.end4.i169
  %.phi.i170 = phi i32 [ %.phi5.i168, %csroa.if.end4.i169 ], [ 1, %if.end.thread ]
  %xor = xor i32 %.phi.i170, %call.c.c
  store i32 %xor, i32* %arrayidx26, align 4
  %arrayidx28 = getelementptr inbounds [4 x [120 x i32]], [4 x [120 x i32]]* @word, i32 0, i32 2, i32 %sub
  %13 = load i32, i32* %arrayidx28, align 4
  %call29.c.c = tail call i32 @SubByte.v0.C.c.c(i32 %13)
  %arrayidx32 = getelementptr inbounds [4 x [120 x i32]], [4 x [120 x i32]]* @word, i32 0, i32 3, i32 %sub
  %14 = load i32, i32* %arrayidx32, align 4
  %call33.c.c = tail call i32 @SubByte.v0.C.c.c(i32 %14)
  store i32 %call33.c.c, i32* %arrayidx34, align 4
  %arrayidx36 = getelementptr inbounds [4 x [120 x i32]], [4 x [120 x i32]]* @word, i32 0, i32 0, i32 %sub
  %15 = load i32, i32* %arrayidx36, align 4
  %call37.c.c = tail call i32 @SubByte.v0.C.c.c(i32 %15)
  br label %if.end54

if.then41:                                        ; preds = %for.body21
  %arrayidx43 = getelementptr inbounds [4 x [120 x i32]], [4 x [120 x i32]]* @word, i32 0, i32 0, i32 %sub
  %16 = load i32, i32* %arrayidx43, align 4
  store i32 %16, i32* %arrayidx26, align 4
  %arrayidx49 = getelementptr inbounds [4 x [120 x i32]], [4 x [120 x i32]]* @word, i32 0, i32 2, i32 %sub
  %17 = load i32, i32* %arrayidx49, align 4
  store i32 %17, i32* %arrayidx34, align 4
  %arrayidx52 = getelementptr inbounds [4 x [120 x i32]], [4 x [120 x i32]]* @word, i32 0, i32 3, i32 %sub
  %18 = load i32, i32* %arrayidx52, align 4
  br label %if.end54

if.end54:                                         ; preds = %__non_const_wrapper__.11.exit171, %if.then41
  %.pre4 = phi i32 [ %call29.c.c, %__non_const_wrapper__.11.exit171 ], [ %12, %if.then41 ]
  %19 = phi i32 [ %xor, %__non_const_wrapper__.11.exit171 ], [ %16, %if.then41 ]
  %call37.c.sink = phi i32 [ %call37.c.c, %__non_const_wrapper__.11.exit171 ], [ %18, %if.then41 ]
  store i32 %call37.c.sink, i32* %arrayidx38, align 4
  %sub73 = sub nuw nsw i32 %j.14, %nk.0
  %arrayidx7418 = getelementptr inbounds [4 x [120 x i32]], [4 x [120 x i32]]* @word, i32 0, i32 0, i32 %sub73
  %20 = load i32, i32* %arrayidx7418, align 4
  %xor7619 = xor i32 %20, %19
  %arrayidx7820 = getelementptr inbounds [4 x [120 x i32]], [4 x [120 x i32]]* @word, i32 0, i32 0, i32 %j.14
  store i32 %xor7619, i32* %arrayidx7820, align 4
  %arrayidx7410 = getelementptr inbounds [4 x [120 x i32]], [4 x [120 x i32]]* @word, i32 0, i32 1, i32 %sub73
  %21 = load i32, i32* %arrayidx7410, align 4
  %xor7611 = xor i32 %21, %.pre4
  %arrayidx7812 = getelementptr inbounds [4 x [120 x i32]], [4 x [120 x i32]]* @word, i32 0, i32 1, i32 %j.14
  store i32 %xor7611, i32* %arrayidx7812, align 4
  br label %for.body71.for.body71_crit_edge.for.body71.for.body71_crit_edge_crit_edge

for.body71.for.body71_crit_edge.for.body71.for.body71_crit_edge_crit_edge: ; preds = %if.end54, %for.body71.for.body71_crit_edge.for.body71.for.body71_crit_edge_crit_edge
  %inc8013 = phi i32 [ 2, %if.end54 ], [ %inc80, %for.body71.for.body71_crit_edge.for.body71.for.body71_crit_edge_crit_edge ]
  %arrayidx75.phi.trans.insert.phi.trans.insert = getelementptr inbounds [4 x i32], [4 x i32]* %temp, i32 0, i32 %inc8013
  %.pre.pre = load i32, i32* %arrayidx75.phi.trans.insert.phi.trans.insert, align 4
  %arrayidx74 = getelementptr inbounds [4 x [120 x i32]], [4 x [120 x i32]]* @word, i32 0, i32 %inc8013, i32 %sub73
  %22 = load i32, i32* %arrayidx74, align 4
  %xor76 = xor i32 %22, %.pre.pre
  %arrayidx78 = getelementptr inbounds [4 x [120 x i32]], [4 x [120 x i32]]* @word, i32 0, i32 %inc8013, i32 %j.14
  store i32 %xor76, i32* %arrayidx78, align 4
  %inc80 = add nuw nsw i32 %inc8013, 1
  %exitcond9 = icmp eq i32 %inc80, 4
  br i1 %exitcond9, label %for.inc82, label %for.body71.for.body71_crit_edge.for.body71.for.body71_crit_edge_crit_edge

for.inc82:                                        ; preds = %for.body71.for.body71_crit_edge.for.body71.for.body71_crit_edge_crit_edge
  %inc83 = add nuw nsw i32 %j.14, 1
  %cmp20 = icmp slt i32 %inc83, %mul19
  br i1 %cmp20, label %for.body21, label %return.loopexit6

return.loopexit6:                                 ; preds = %for.inc82
  store i32 %.pre4, i32* %arrayidx30, align 4
  br label %return

return.loopexit:                                  ; preds = %for.inc82.us
  br label %return

return:                                           ; preds = %return.loopexit, %return.loopexit6, %for.cond17.preheader, %entry
  %retval.0 = phi i32 [ -1, %entry ], [ 0, %for.cond17.preheader ], [ 0, %return.loopexit6 ], [ 0, %return.loopexit ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind
define i32 @encrypt.v0.C.c.c(i32* %statemt, i32* nocapture readonly %key) local_unnamed_addr #5 {
entry:
  %ret.i = alloca [32 x i32], align 4
  %call.c.c = tail call i32 @KeySchedule.v0.C.c.c(i32 128128, i32* %key)
  store i32 0, i32* @round_val, align 4
  store i32 4, i32* @nb, align 4
  %call6.c.c = tail call i32 @AddRoundKey.v0.C.c.c(i32* %statemt, i32 128128, i32 0)
  %0 = load i32, i32* @round_val, align 4
  %add5 = add nsw i32 %0, 9
  %cmp6 = icmp slt i32 %add5, 1
  %1 = load i32, i32* @nb, align 4
  tail call void @ByteSub_ShiftRow.v0.C.c.c(i32* %statemt, i32 %1)
  br i1 %cmp6, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %2 = bitcast [32 x i32]* %ret.i to i8*
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %MixColumn_AddRoundKey.v0.C.c.exit
  %i.07 = phi i32 [ %inc, %MixColumn_AddRoundKey.v0.C.c.exit ], [ 1, %for.body.preheader ]
  %3 = load i32, i32* @nb, align 4
  call void @llvm.lifetime.start(i64 128, i8* nonnull %2)
  %cmp10.i = icmp sgt i32 %3, 0
  br i1 %cmp10.i, label %for.body.lr.ph.i, label %MixColumn_AddRoundKey.v0.C.c.exit

for.body.lr.ph.i:                                 ; preds = %for.body
  %mul30.i = mul nsw i32 %3, %i.07
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %for.body.lr.ph.i
  %j.011.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i ]
  %mul.i = shl nsw i32 %j.011.i, 2
  %arrayidx.i = getelementptr inbounds i32, i32* %statemt, i32 %mul.i
  %4 = load i32, i32* %arrayidx.i, align 4
  %shl.i = shl i32 %4, 1
  %arrayidx2.i = getelementptr inbounds [32 x i32], [32 x i32]* %ret.i, i32 0, i32 %mul.i
  %shr.mask.i = and i32 %shl.i, -256
  %cmp5.i = icmp eq i32 %shr.mask.i, 256
  %xor.i = xor i32 %shl.i, 283
  %xor.shl.i = select i1 %cmp5.i, i32 %xor.i, i32 %shl.i
  %add.i = or i32 %mul.i, 1
  %arrayidx9.i = getelementptr inbounds i32, i32* %statemt, i32 %add.i
  %5 = load i32, i32* %arrayidx9.i, align 4
  %shl10.i = shl i32 %5, 1
  %xor11.i = xor i32 %shl10.i, %5
  %shr12.mask.i = and i32 %xor11.i, -256
  %cmp13.i = icmp eq i32 %shr12.mask.i, 256
  %xor15.i = xor i32 %xor11.i, 283
  %xor11.sink.i = select i1 %cmp13.i, i32 %xor15.i, i32 %xor11.i
  %add24.i = or i32 %mul.i, 2
  %arrayidx25.i = getelementptr inbounds i32, i32* %statemt, i32 %add24.i
  %6 = load i32, i32* %arrayidx25.i, align 4
  %add27.i = or i32 %mul.i, 3
  %arrayidx28.i = getelementptr inbounds i32, i32* %statemt, i32 %add27.i
  %7 = load i32, i32* %arrayidx28.i, align 4
  %add31.i = add nsw i32 %j.011.i, %mul30.i
  %arrayidx32.i = getelementptr inbounds [4 x [120 x i32]], [4 x [120 x i32]]* @word, i32 0, i32 0, i32 %add31.i
  %8 = load i32, i32* %arrayidx32.i, align 4
  %xor21.i = xor i32 %7, %6
  %xor29.i = xor i32 %xor21.i, %8
  %xor33.i = xor i32 %xor29.i, %xor.shl.i
  %xor36.i = xor i32 %xor33.i, %xor11.sink.i
  store i32 %xor36.i, i32* %arrayidx2.i, align 4
  %arrayidx43.i = getelementptr inbounds [32 x i32], [32 x i32]* %ret.i, i32 0, i32 %add.i
  %shr47.mask.i = and i32 %shl10.i, -256
  %cmp48.i = icmp eq i32 %shr47.mask.i, 256
  %xor53.i = xor i32 %shl10.i, 283
  %storemerge6.i = select i1 %cmp48.i, i32 %xor53.i, i32 %shl10.i
  %shl58.i = shl i32 %6, 1
  %xor59.i = xor i32 %shl58.i, %6
  %shr60.mask.i = and i32 %xor59.i, -256
  %cmp61.i = icmp eq i32 %shr60.mask.i, 256
  %xor63.i = xor i32 %xor59.i, 283
  %xor59.sink.i = select i1 %cmp61.i, i32 %xor63.i, i32 %xor59.i
  %arrayidx82.i = getelementptr inbounds [4 x [120 x i32]], [4 x [120 x i32]]* @word, i32 0, i32 1, i32 %add31.i
  %9 = load i32, i32* %arrayidx82.i, align 4
  %xor72.i = xor i32 %7, %4
  %xor79.i = xor i32 %xor72.i, %storemerge6.i
  %xor83.i = xor i32 %xor79.i, %9
  %xor87.i = xor i32 %xor83.i, %xor59.sink.i
  store i32 %xor87.i, i32* %arrayidx43.i, align 4
  %arrayidx94.i = getelementptr inbounds [32 x i32], [32 x i32]* %ret.i, i32 0, i32 %add24.i
  %shr98.mask.i = and i32 %shl58.i, -256
  %cmp99.i = icmp eq i32 %shr98.mask.i, 256
  %xor104.i = xor i32 %shl58.i, 283
  %xor104.shl91.i = select i1 %cmp99.i, i32 %xor104.i, i32 %shl58.i
  %shl109.i = shl i32 %7, 1
  %xor110.i = xor i32 %shl109.i, %7
  %shr111.mask.i = and i32 %xor110.i, -256
  %cmp112.i = icmp eq i32 %shr111.mask.i, 256
  %xor114.i = xor i32 %xor110.i, 283
  %xor110.sink.i = select i1 %cmp112.i, i32 %xor114.i, i32 %xor110.i
  %arrayidx133.i = getelementptr inbounds [4 x [120 x i32]], [4 x [120 x i32]]* @word, i32 0, i32 2, i32 %add31.i
  %10 = load i32, i32* %arrayidx133.i, align 4
  %xor123.i = xor i32 %5, %4
  %xor130.i = xor i32 %xor123.i, %xor104.shl91.i
  %xor134.i = xor i32 %xor130.i, %10
  %xor138.i = xor i32 %xor134.i, %xor110.sink.i
  store i32 %xor138.i, i32* %arrayidx94.i, align 4
  %arrayidx145.i = getelementptr inbounds [32 x i32], [32 x i32]* %ret.i, i32 0, i32 %add27.i
  %shr149.mask.i = and i32 %shl109.i, -256
  %cmp150.i = icmp eq i32 %shr149.mask.i, 256
  %xor155.i = xor i32 %shl109.i, 283
  %storemerge.i = select i1 %cmp150.i, i32 %xor155.i, i32 %shl109.i
  %xor160.i = xor i32 %shl.i, %4
  %shr161.mask.i = and i32 %xor160.i, -256
  %cmp162.i = icmp eq i32 %shr161.mask.i, 256
  %xor164.i = xor i32 %xor160.i, 283
  %xor160.sink.i = select i1 %cmp162.i, i32 %xor164.i, i32 %xor160.i
  %xor181.i = xor i32 %6, %5
  %arrayidx184.i = getelementptr inbounds [4 x [120 x i32]], [4 x [120 x i32]]* @word, i32 0, i32 3, i32 %add31.i
  %11 = load i32, i32* %arrayidx184.i, align 4
  %xor185.i = xor i32 %xor181.i, %xor160.sink.i
  %xor173.i = xor i32 %xor185.i, %storemerge.i
  %xor189.i = xor i32 %xor173.i, %11
  store i32 %xor189.i, i32* %arrayidx145.i, align 4
  %inc.i = add nuw nsw i32 %j.011.i, 1
  %exitcond12.i = icmp eq i32 %inc.i, %3
  br i1 %exitcond12.i, label %for.body192.i.preheader, label %for.body.i

for.body192.i.preheader:                          ; preds = %for.body.i
  br label %for.body192.i

for.body192.i:                                    ; preds = %for.body192.i.preheader, %for.body192.i
  %j.19.i = phi i32 [ %inc216.i, %for.body192.i ], [ 0, %for.body192.i.preheader ]
  %mul193.i = shl nsw i32 %j.19.i, 2
  %arrayidx194.i = getelementptr inbounds [32 x i32], [32 x i32]* %ret.i, i32 0, i32 %mul193.i
  %12 = load i32, i32* %arrayidx194.i, align 4
  %arrayidx196.i = getelementptr inbounds i32, i32* %statemt, i32 %mul193.i
  store i32 %12, i32* %arrayidx196.i, align 4
  %add198.i = or i32 %mul193.i, 1
  %arrayidx199.i = getelementptr inbounds [32 x i32], [32 x i32]* %ret.i, i32 0, i32 %add198.i
  %13 = load i32, i32* %arrayidx199.i, align 4
  %arrayidx202.i = getelementptr inbounds i32, i32* %statemt, i32 %add198.i
  store i32 %13, i32* %arrayidx202.i, align 4
  %add204.i = or i32 %mul193.i, 2
  %arrayidx205.i = getelementptr inbounds [32 x i32], [32 x i32]* %ret.i, i32 0, i32 %add204.i
  %14 = load i32, i32* %arrayidx205.i, align 4
  %arrayidx208.i = getelementptr inbounds i32, i32* %statemt, i32 %add204.i
  store i32 %14, i32* %arrayidx208.i, align 4
  %add210.i = or i32 %mul193.i, 3
  %arrayidx211.i = getelementptr inbounds [32 x i32], [32 x i32]* %ret.i, i32 0, i32 %add210.i
  %15 = load i32, i32* %arrayidx211.i, align 4
  %arrayidx214.i = getelementptr inbounds i32, i32* %statemt, i32 %add210.i
  store i32 %15, i32* %arrayidx214.i, align 4
  %inc216.i = add nuw nsw i32 %j.19.i, 1
  %exitcond.i = icmp eq i32 %inc216.i, %3
  br i1 %exitcond.i, label %MixColumn_AddRoundKey.v0.C.c.exit.loopexit, label %for.body192.i

MixColumn_AddRoundKey.v0.C.c.exit.loopexit:       ; preds = %for.body192.i
  %.pre90 = load i32, i32* @nb, align 4
  br label %MixColumn_AddRoundKey.v0.C.c.exit

MixColumn_AddRoundKey.v0.C.c.exit:                ; preds = %MixColumn_AddRoundKey.v0.C.c.exit.loopexit, %for.body
  %16 = phi i32 [ %.pre90, %MixColumn_AddRoundKey.v0.C.c.exit.loopexit ], [ %3, %for.body ]
  call void @llvm.lifetime.end(i64 128, i8* nonnull %2)
  %inc = add nuw nsw i32 %i.07, 1
  %17 = load i32, i32* @round_val, align 4
  %add = add nsw i32 %17, 9
  %cmp = icmp slt i32 %i.07, %add
  tail call void @ByteSub_ShiftRow.v0.C.c.c(i32* %statemt, i32 %16)
  br i1 %cmp, label %for.body, label %for.end.loopexit

for.end.loopexit:                                 ; preds = %MixColumn_AddRoundKey.v0.C.c.exit
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry
  %i.0.lcssa = phi i32 [ 1, %entry ], [ %inc, %for.end.loopexit ]
  %call8.c.c = tail call i32 @AddRoundKey.v0.C.c.c(i32* %statemt, i32 128128, i32 %i.0.lcssa)
  %call9 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0))
  %18 = load i32, i32* @nb, align 4
  %cmp113 = icmp sgt i32 %18, 0
  br i1 %cmp113, label %for.body12.preheader, label %for.body22.preheader

for.body12.preheader:                             ; preds = %for.end
  br label %for.body12

for.body12:                                       ; preds = %for.body12.preheader, %if.end
  %i.14 = phi i32 [ %inc18, %if.end ], [ 0, %for.body12.preheader ]
  %arrayidx = getelementptr inbounds i32, i32* %statemt, i32 %i.14
  %19 = load i32, i32* %arrayidx, align 4
  %cmp13 = icmp slt i32 %19, 16
  br i1 %cmp13, label %if.then, label %if.end

if.then:                                          ; preds = %for.body12
  %putchar = tail call i32 @putchar(i32 48)
  %.pre = load i32, i32* %arrayidx, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body12
  %20 = phi i32 [ %.pre, %if.then ], [ %19, %for.body12 ]
  %call16 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i32 %20)
  %inc18 = add nuw nsw i32 %i.14, 1
  %21 = load i32, i32* @nb, align 4
  %mul = shl nsw i32 %21, 2
  %cmp11 = icmp slt i32 %inc18, %mul
  br i1 %cmp11, label %for.body12, label %for.body22.preheader.loopexit

for.body22.preheader.loopexit:                    ; preds = %if.end
  br label %for.body22.preheader

for.body22.preheader:                             ; preds = %for.body22.preheader.loopexit, %for.end
  %.pre8 = load i32, i32* @main_result, align 4
  br label %for.body22

for.body22:                                       ; preds = %for.body22.backedge, %for.body22.preheader
  %22 = phi i32 [ %.pre8, %for.body22.preheader ], [ %.be, %for.body22.backedge ]
  %i.21 = phi i32 [ 0, %for.body22.preheader ], [ %i.21.be, %for.body22.backedge ]
  %arrayidx23 = getelementptr inbounds i32, i32* %statemt, i32 %i.21
  %23 = load i32, i32* %arrayidx23, align 4
  switch i32 %i.21, label %__non_const_wrapper__.12.exit [
    i32 0, label %__non_const_wrapper__.12.exit.thread
    i32 1, label %__non_const_wrapper__.12.exit.thread6
    i32 2, label %__non_const_wrapper__.12.exit.thread12
    i32 3, label %__non_const_wrapper__.12.exit.thread18
    i32 4, label %__non_const_wrapper__.12.exit.thread24
    i32 5, label %__non_const_wrapper__.12.exit.thread30
    i32 6, label %__non_const_wrapper__.12.exit.thread36
    i32 7, label %__non_const_wrapper__.12.exit.thread42
    i32 8, label %__non_const_wrapper__.12.exit.thread48
    i32 9, label %__non_const_wrapper__.12.exit.thread54
    i32 10, label %__non_const_wrapper__.12.exit.thread60
    i32 11, label %__non_const_wrapper__.12.exit.thread66
    i32 12, label %__non_const_wrapper__.12.exit.thread72
    i32 13, label %for.body22.backedge.sink.split
    i32 14, label %__non_const_wrapper__.12.exit.thread84
  ]

__non_const_wrapper__.12.exit.thread84:           ; preds = %for.body22
  br label %for.body22.backedge.sink.split

__non_const_wrapper__.12.exit.thread72:           ; preds = %for.body22
  br label %for.body22.backedge.sink.split

__non_const_wrapper__.12.exit.thread66:           ; preds = %for.body22
  br label %for.body22.backedge.sink.split

__non_const_wrapper__.12.exit.thread60:           ; preds = %for.body22
  br label %for.body22.backedge.sink.split

__non_const_wrapper__.12.exit.thread54:           ; preds = %for.body22
  br label %for.body22.backedge.sink.split

__non_const_wrapper__.12.exit.thread48:           ; preds = %for.body22
  br label %for.body22.backedge.sink.split

__non_const_wrapper__.12.exit.thread42:           ; preds = %for.body22
  br label %for.body22.backedge.sink.split

__non_const_wrapper__.12.exit.thread36:           ; preds = %for.body22
  br label %for.body22.backedge.sink.split

__non_const_wrapper__.12.exit.thread30:           ; preds = %for.body22
  br label %for.body22.backedge.sink.split

__non_const_wrapper__.12.exit.thread24:           ; preds = %for.body22
  br label %for.body22.backedge.sink.split

__non_const_wrapper__.12.exit.thread18:           ; preds = %for.body22
  br label %for.body22.backedge.sink.split

__non_const_wrapper__.12.exit.thread12:           ; preds = %for.body22
  br label %for.body22.backedge.sink.split

__non_const_wrapper__.12.exit.thread6:            ; preds = %for.body22
  br label %for.body22.backedge.sink.split

__non_const_wrapper__.12.exit.thread:             ; preds = %for.body22
  br label %for.body22.backedge.sink.split

__non_const_wrapper__.12.exit:                    ; preds = %for.body22
  %cmp25 = icmp ne i32 %23, 50
  %conv = zext i1 %cmp25 to i32
  %add26 = add nsw i32 %conv, %22
  store i32 %add26, i32* @main_result, align 4
  %inc28 = add nuw nsw i32 %i.21, 1
  %exitcond = icmp eq i32 %inc28, 16
  br i1 %exitcond, label %for.end29, label %for.body22.backedge

for.body22.backedge.sink.split:                   ; preds = %for.body22, %__non_const_wrapper__.12.exit.thread84, %__non_const_wrapper__.12.exit.thread72, %__non_const_wrapper__.12.exit.thread66, %__non_const_wrapper__.12.exit.thread60, %__non_const_wrapper__.12.exit.thread54, %__non_const_wrapper__.12.exit.thread48, %__non_const_wrapper__.12.exit.thread42, %__non_const_wrapper__.12.exit.thread36, %__non_const_wrapper__.12.exit.thread30, %__non_const_wrapper__.12.exit.thread24, %__non_const_wrapper__.12.exit.thread18, %__non_const_wrapper__.12.exit.thread12, %__non_const_wrapper__.12.exit.thread6, %__non_const_wrapper__.12.exit.thread
  %.sink = phi i32 [ 11, %__non_const_wrapper__.12.exit.thread84 ], [ 25, %__non_const_wrapper__.12.exit.thread72 ], [ 151, %__non_const_wrapper__.12.exit.thread66 ], [ 133, %__non_const_wrapper__.12.exit.thread60 ], [ 17, %__non_const_wrapper__.12.exit.thread54 ], [ 220, %__non_const_wrapper__.12.exit.thread48 ], [ 251, %__non_const_wrapper__.12.exit.thread42 ], [ 9, %__non_const_wrapper__.12.exit.thread36 ], [ 220, %__non_const_wrapper__.12.exit.thread30 ], [ 2, %__non_const_wrapper__.12.exit.thread24 ], [ 29, %__non_const_wrapper__.12.exit.thread18 ], [ 132, %__non_const_wrapper__.12.exit.thread12 ], [ 37, %__non_const_wrapper__.12.exit.thread6 ], [ 57, %__non_const_wrapper__.12.exit.thread ], [ 106, %for.body22 ]
  %i.21.be.ph = phi i32 [ 15, %__non_const_wrapper__.12.exit.thread84 ], [ 13, %__non_const_wrapper__.12.exit.thread72 ], [ 12, %__non_const_wrapper__.12.exit.thread66 ], [ 11, %__non_const_wrapper__.12.exit.thread60 ], [ 10, %__non_const_wrapper__.12.exit.thread54 ], [ 9, %__non_const_wrapper__.12.exit.thread48 ], [ 8, %__non_const_wrapper__.12.exit.thread42 ], [ 7, %__non_const_wrapper__.12.exit.thread36 ], [ 6, %__non_const_wrapper__.12.exit.thread30 ], [ 5, %__non_const_wrapper__.12.exit.thread24 ], [ 4, %__non_const_wrapper__.12.exit.thread18 ], [ 3, %__non_const_wrapper__.12.exit.thread12 ], [ 2, %__non_const_wrapper__.12.exit.thread6 ], [ 1, %__non_const_wrapper__.12.exit.thread ], [ 14, %for.body22 ]
  %cmp2585 = icmp ne i32 %23, %.sink
  %conv86 = zext i1 %cmp2585 to i32
  %add2687 = add nsw i32 %conv86, %22
  store i32 %add2687, i32* @main_result, align 4
  br label %for.body22.backedge

for.body22.backedge:                              ; preds = %for.body22.backedge.sink.split, %__non_const_wrapper__.12.exit
  %.be = phi i32 [ %add26, %__non_const_wrapper__.12.exit ], [ %add2687, %for.body22.backedge.sink.split ]
  %i.21.be = phi i32 [ %inc28, %__non_const_wrapper__.12.exit ], [ %i.21.be.ph, %for.body22.backedge.sink.split ]
  br label %for.body22

for.end29:                                        ; preds = %__non_const_wrapper__.12.exit
  ret i32 0
}

; Function Attrs: noinline norecurse nounwind
define i32 @AddRoundKey.v0.C.c.c(i32* nocapture %statemt, i32 %type, i32 %n) local_unnamed_addr #4 {
entry:
  switch i32 %type, label %sw.epilog [
    i32 256256, label %sw.bb2
    i32 192256, label %sw.bb2
    i32 128256, label %sw.bb2
    i32 128192, label %sw.bb1
    i32 192192, label %sw.bb1
    i32 256192, label %sw.bb1
  ]

sw.bb1:                                           ; preds = %entry, %entry, %entry
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry, %entry, %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb1, %entry
  %nb.0 = phi i32 [ 8, %sw.bb2 ], [ 6, %sw.bb1 ], [ 4, %entry ]
  %mul = mul nsw i32 %nb.0, %n
  br label %for.body

for.body:                                         ; preds = %sw.epilog, %for.body
  %j.01 = phi i32 [ 0, %sw.epilog ], [ %inc, %for.body ]
  %add = add nsw i32 %j.01, %mul
  %arrayidx = getelementptr inbounds [4 x [120 x i32]], [4 x [120 x i32]]* @word, i32 0, i32 0, i32 %add
  %0 = load i32, i32* %arrayidx, align 4
  %mul3 = shl nsw i32 %j.01, 2
  %arrayidx4 = getelementptr inbounds i32, i32* %statemt, i32 %mul3
  %1 = load i32, i32* %arrayidx4, align 4
  %xor = xor i32 %1, %0
  store i32 %xor, i32* %arrayidx4, align 4
  %arrayidx7 = getelementptr inbounds [4 x [120 x i32]], [4 x [120 x i32]]* @word, i32 0, i32 1, i32 %add
  %2 = load i32, i32* %arrayidx7, align 4
  %add9 = or i32 %mul3, 1
  %arrayidx10 = getelementptr inbounds i32, i32* %statemt, i32 %add9
  %3 = load i32, i32* %arrayidx10, align 4
  %xor11 = xor i32 %3, %2
  store i32 %xor11, i32* %arrayidx10, align 4
  %arrayidx14 = getelementptr inbounds [4 x [120 x i32]], [4 x [120 x i32]]* @word, i32 0, i32 2, i32 %add
  %4 = load i32, i32* %arrayidx14, align 4
  %add16 = or i32 %mul3, 2
  %arrayidx17 = getelementptr inbounds i32, i32* %statemt, i32 %add16
  %5 = load i32, i32* %arrayidx17, align 4
  %xor18 = xor i32 %5, %4
  store i32 %xor18, i32* %arrayidx17, align 4
  %arrayidx21 = getelementptr inbounds [4 x [120 x i32]], [4 x [120 x i32]]* @word, i32 0, i32 3, i32 %add
  %6 = load i32, i32* %arrayidx21, align 4
  %add23 = or i32 %mul3, 3
  %arrayidx24 = getelementptr inbounds i32, i32* %statemt, i32 %add23
  %7 = load i32, i32* %arrayidx24, align 4
  %xor25 = xor i32 %7, %6
  store i32 %xor25, i32* %arrayidx24, align 4
  %inc = add nuw nsw i32 %j.01, 1
  %cmp = icmp slt i32 %inc, %nb.0
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body
  ret i32 0
}

; Function Attrs: noinline norecurse nounwind
define void @InversShiftRow_ByteSub.v0.C.c.c(i32* %statemt, i32 %nb) local_unnamed_addr #4 {
entry:
  switch i32 %nb, label %sw.epilog [
    i32 4, label %sw.bb
    i32 6, label %sw.bb110
    i32 8, label %sw.bb279
  ]

sw.bb:                                            ; preds = %entry
  %arrayidx = getelementptr inbounds i32, i32* %statemt, i32 13
  %0 = load i32, i32* %arrayidx, align 4
  %shr = ashr i32 %0, 4
  %and = and i32 %0, 15
  %arrayidx3 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr, i32 %and
  %1 = load i32, i32* %arrayidx3, align 4
  %arrayidx4 = getelementptr inbounds i32, i32* %statemt, i32 9
  %2 = load i32, i32* %arrayidx4, align 4
  %shr5 = ashr i32 %2, 4
  %and8 = and i32 %2, 15
  %arrayidx9 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr5, i32 %and8
  %3 = load i32, i32* %arrayidx9, align 4
  store i32 %3, i32* %arrayidx, align 4
  %arrayidx11 = getelementptr inbounds i32, i32* %statemt, i32 5
  %4 = load i32, i32* %arrayidx11, align 4
  %shr12 = ashr i32 %4, 4
  %and15 = and i32 %4, 15
  %arrayidx16 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr12, i32 %and15
  %5 = load i32, i32* %arrayidx16, align 4
  store i32 %5, i32* %arrayidx4, align 4
  %arrayidx18 = getelementptr inbounds i32, i32* %statemt, i32 1
  %6 = load i32, i32* %arrayidx18, align 4
  %shr19 = ashr i32 %6, 4
  %and22 = and i32 %6, 15
  %arrayidx23 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr19, i32 %and22
  %7 = load i32, i32* %arrayidx23, align 4
  store i32 %7, i32* %arrayidx11, align 4
  store i32 %1, i32* %arrayidx18, align 4
  %arrayidx26 = getelementptr inbounds i32, i32* %statemt, i32 14
  %8 = load i32, i32* %arrayidx26, align 4
  %shr27 = ashr i32 %8, 4
  %and30 = and i32 %8, 15
  %arrayidx31 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr27, i32 %and30
  %9 = load i32, i32* %arrayidx31, align 4
  %arrayidx32 = getelementptr inbounds i32, i32* %statemt, i32 6
  %10 = load i32, i32* %arrayidx32, align 4
  %shr33 = ashr i32 %10, 4
  %and36 = and i32 %10, 15
  %arrayidx37 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr33, i32 %and36
  %11 = load i32, i32* %arrayidx37, align 4
  store i32 %11, i32* %arrayidx26, align 4
  store i32 %9, i32* %arrayidx32, align 4
  %arrayidx40 = getelementptr inbounds i32, i32* %statemt, i32 2
  %12 = load i32, i32* %arrayidx40, align 4
  %shr41 = ashr i32 %12, 4
  %and44 = and i32 %12, 15
  %arrayidx45 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr41, i32 %and44
  %13 = load i32, i32* %arrayidx45, align 4
  %arrayidx46 = getelementptr inbounds i32, i32* %statemt, i32 10
  %14 = load i32, i32* %arrayidx46, align 4
  %shr47 = ashr i32 %14, 4
  %and50 = and i32 %14, 15
  %arrayidx51 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr47, i32 %and50
  %15 = load i32, i32* %arrayidx51, align 4
  store i32 %15, i32* %arrayidx40, align 4
  store i32 %13, i32* %arrayidx46, align 4
  %arrayidx54 = getelementptr inbounds i32, i32* %statemt, i32 15
  %16 = load i32, i32* %arrayidx54, align 4
  %shr55 = ashr i32 %16, 4
  %and58 = and i32 %16, 15
  %arrayidx59 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr55, i32 %and58
  %17 = load i32, i32* %arrayidx59, align 4
  %arrayidx60 = getelementptr inbounds i32, i32* %statemt, i32 3
  %18 = load i32, i32* %arrayidx60, align 4
  %shr61 = ashr i32 %18, 4
  %and64 = and i32 %18, 15
  %arrayidx65 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr61, i32 %and64
  %19 = load i32, i32* %arrayidx65, align 4
  store i32 %19, i32* %arrayidx54, align 4
  %arrayidx67 = getelementptr inbounds i32, i32* %statemt, i32 7
  %20 = load i32, i32* %arrayidx67, align 4
  %shr68 = ashr i32 %20, 4
  %and71 = and i32 %20, 15
  %arrayidx72 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr68, i32 %and71
  %21 = load i32, i32* %arrayidx72, align 4
  store i32 %21, i32* %arrayidx60, align 4
  %arrayidx74 = getelementptr inbounds i32, i32* %statemt, i32 11
  %22 = load i32, i32* %arrayidx74, align 4
  %shr75 = ashr i32 %22, 4
  %and78 = and i32 %22, 15
  %arrayidx79 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr75, i32 %and78
  %23 = load i32, i32* %arrayidx79, align 4
  store i32 %23, i32* %arrayidx67, align 4
  store i32 %17, i32* %arrayidx74, align 4
  br label %sw.epilog.sink.split

sw.bb110:                                         ; preds = %entry
  %arrayidx111 = getelementptr inbounds i32, i32* %statemt, i32 21
  %24 = load i32, i32* %arrayidx111, align 4
  %shr112 = ashr i32 %24, 4
  %and115 = and i32 %24, 15
  %arrayidx116 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr112, i32 %and115
  %25 = load i32, i32* %arrayidx116, align 4
  %arrayidx117 = getelementptr inbounds i32, i32* %statemt, i32 17
  %26 = load i32, i32* %arrayidx117, align 4
  %shr118 = ashr i32 %26, 4
  %and121 = and i32 %26, 15
  %arrayidx122 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr118, i32 %and121
  %27 = load i32, i32* %arrayidx122, align 4
  store i32 %27, i32* %arrayidx111, align 4
  %arrayidx124 = getelementptr inbounds i32, i32* %statemt, i32 13
  %28 = load i32, i32* %arrayidx124, align 4
  %shr125 = ashr i32 %28, 4
  %and128 = and i32 %28, 15
  %arrayidx129 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr125, i32 %and128
  %29 = load i32, i32* %arrayidx129, align 4
  store i32 %29, i32* %arrayidx117, align 4
  %arrayidx131 = getelementptr inbounds i32, i32* %statemt, i32 9
  %30 = load i32, i32* %arrayidx131, align 4
  %shr132 = ashr i32 %30, 4
  %and135 = and i32 %30, 15
  %arrayidx136 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr132, i32 %and135
  %31 = load i32, i32* %arrayidx136, align 4
  store i32 %31, i32* %arrayidx124, align 4
  %arrayidx138 = getelementptr inbounds i32, i32* %statemt, i32 5
  %32 = load i32, i32* %arrayidx138, align 4
  %shr139 = ashr i32 %32, 4
  %and142 = and i32 %32, 15
  %arrayidx143 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr139, i32 %and142
  %33 = load i32, i32* %arrayidx143, align 4
  store i32 %33, i32* %arrayidx131, align 4
  %arrayidx145 = getelementptr inbounds i32, i32* %statemt, i32 1
  %34 = load i32, i32* %arrayidx145, align 4
  %shr146 = ashr i32 %34, 4
  %and149 = and i32 %34, 15
  %arrayidx150 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr146, i32 %and149
  %35 = load i32, i32* %arrayidx150, align 4
  store i32 %35, i32* %arrayidx138, align 4
  store i32 %25, i32* %arrayidx145, align 4
  %arrayidx153 = getelementptr inbounds i32, i32* %statemt, i32 22
  %36 = load i32, i32* %arrayidx153, align 4
  %shr154 = ashr i32 %36, 4
  %and157 = and i32 %36, 15
  %arrayidx158 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr154, i32 %and157
  %37 = load i32, i32* %arrayidx158, align 4
  %arrayidx159 = getelementptr inbounds i32, i32* %statemt, i32 14
  %38 = load i32, i32* %arrayidx159, align 4
  %shr160 = ashr i32 %38, 4
  %and163 = and i32 %38, 15
  %arrayidx164 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr160, i32 %and163
  %39 = load i32, i32* %arrayidx164, align 4
  store i32 %39, i32* %arrayidx153, align 4
  %arrayidx166 = getelementptr inbounds i32, i32* %statemt, i32 6
  %40 = load i32, i32* %arrayidx166, align 4
  %shr167 = ashr i32 %40, 4
  %and170 = and i32 %40, 15
  %arrayidx171 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr167, i32 %and170
  %41 = load i32, i32* %arrayidx171, align 4
  store i32 %41, i32* %arrayidx159, align 4
  store i32 %37, i32* %arrayidx166, align 4
  %arrayidx174 = getelementptr inbounds i32, i32* %statemt, i32 18
  %42 = load i32, i32* %arrayidx174, align 4
  %shr175 = ashr i32 %42, 4
  %and178 = and i32 %42, 15
  %arrayidx179 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr175, i32 %and178
  %43 = load i32, i32* %arrayidx179, align 4
  %arrayidx180 = getelementptr inbounds i32, i32* %statemt, i32 10
  %44 = load i32, i32* %arrayidx180, align 4
  %shr181 = ashr i32 %44, 4
  %and184 = and i32 %44, 15
  %arrayidx185 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr181, i32 %and184
  %45 = load i32, i32* %arrayidx185, align 4
  store i32 %45, i32* %arrayidx174, align 4
  %arrayidx187 = getelementptr inbounds i32, i32* %statemt, i32 2
  %46 = load i32, i32* %arrayidx187, align 4
  %shr188 = ashr i32 %46, 4
  %and191 = and i32 %46, 15
  %arrayidx192 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr188, i32 %and191
  %47 = load i32, i32* %arrayidx192, align 4
  store i32 %47, i32* %arrayidx180, align 4
  store i32 %43, i32* %arrayidx187, align 4
  %arrayidx195 = getelementptr inbounds i32, i32* %statemt, i32 15
  %48 = load i32, i32* %arrayidx195, align 4
  %shr196 = ashr i32 %48, 4
  %and199 = and i32 %48, 15
  %arrayidx200 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr196, i32 %and199
  %49 = load i32, i32* %arrayidx200, align 4
  %arrayidx201 = getelementptr inbounds i32, i32* %statemt, i32 3
  %50 = load i32, i32* %arrayidx201, align 4
  %shr202 = ashr i32 %50, 4
  %and205 = and i32 %50, 15
  %arrayidx206 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr202, i32 %and205
  %51 = load i32, i32* %arrayidx206, align 4
  store i32 %51, i32* %arrayidx195, align 4
  store i32 %49, i32* %arrayidx201, align 4
  %arrayidx209 = getelementptr inbounds i32, i32* %statemt, i32 19
  %52 = load i32, i32* %arrayidx209, align 4
  %shr210 = ashr i32 %52, 4
  %and213 = and i32 %52, 15
  %arrayidx214 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr210, i32 %and213
  %53 = load i32, i32* %arrayidx214, align 4
  %arrayidx215 = getelementptr inbounds i32, i32* %statemt, i32 7
  %54 = load i32, i32* %arrayidx215, align 4
  %shr216 = ashr i32 %54, 4
  %and219 = and i32 %54, 15
  %arrayidx220 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr216, i32 %and219
  %55 = load i32, i32* %arrayidx220, align 4
  store i32 %55, i32* %arrayidx209, align 4
  store i32 %53, i32* %arrayidx215, align 4
  %arrayidx223 = getelementptr inbounds i32, i32* %statemt, i32 23
  %56 = load i32, i32* %arrayidx223, align 4
  %shr224 = ashr i32 %56, 4
  %and227 = and i32 %56, 15
  %arrayidx228 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr224, i32 %and227
  %57 = load i32, i32* %arrayidx228, align 4
  %arrayidx229 = getelementptr inbounds i32, i32* %statemt, i32 11
  %58 = load i32, i32* %arrayidx229, align 4
  %shr230 = ashr i32 %58, 4
  %and233 = and i32 %58, 15
  %arrayidx234 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr230, i32 %and233
  %59 = load i32, i32* %arrayidx234, align 4
  store i32 %59, i32* %arrayidx223, align 4
  store i32 %57, i32* %arrayidx229, align 4
  %60 = load i32, i32* %statemt, align 4
  %shr238 = ashr i32 %60, 4
  %and241 = and i32 %60, 15
  %arrayidx242 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr238, i32 %and241
  %61 = load i32, i32* %arrayidx242, align 4
  store i32 %61, i32* %statemt, align 4
  %arrayidx244 = getelementptr inbounds i32, i32* %statemt, i32 4
  %62 = load i32, i32* %arrayidx244, align 4
  %shr245 = ashr i32 %62, 4
  %and248 = and i32 %62, 15
  %arrayidx249 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr245, i32 %and248
  %63 = load i32, i32* %arrayidx249, align 4
  store i32 %63, i32* %arrayidx244, align 4
  %arrayidx251 = getelementptr inbounds i32, i32* %statemt, i32 8
  br label %sw.epilog.sink.split

sw.bb279:                                         ; preds = %entry
  %arrayidx280 = getelementptr inbounds i32, i32* %statemt, i32 29
  %64 = load i32, i32* %arrayidx280, align 4
  %shr281 = ashr i32 %64, 4
  %and284 = and i32 %64, 15
  %arrayidx285 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr281, i32 %and284
  %65 = load i32, i32* %arrayidx285, align 4
  %arrayidx286 = getelementptr inbounds i32, i32* %statemt, i32 25
  %66 = load i32, i32* %arrayidx286, align 4
  %shr287 = ashr i32 %66, 4
  %and290 = and i32 %66, 15
  %arrayidx291 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr287, i32 %and290
  %67 = load i32, i32* %arrayidx291, align 4
  store i32 %67, i32* %arrayidx280, align 4
  %arrayidx293 = getelementptr inbounds i32, i32* %statemt, i32 21
  %68 = load i32, i32* %arrayidx293, align 4
  %shr294 = ashr i32 %68, 4
  %and297 = and i32 %68, 15
  %arrayidx298 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr294, i32 %and297
  %69 = load i32, i32* %arrayidx298, align 4
  store i32 %69, i32* %arrayidx286, align 4
  %arrayidx300 = getelementptr inbounds i32, i32* %statemt, i32 17
  %70 = load i32, i32* %arrayidx300, align 4
  %shr301 = ashr i32 %70, 4
  %and304 = and i32 %70, 15
  %arrayidx305 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr301, i32 %and304
  %71 = load i32, i32* %arrayidx305, align 4
  store i32 %71, i32* %arrayidx293, align 4
  %arrayidx307 = getelementptr inbounds i32, i32* %statemt, i32 13
  %72 = load i32, i32* %arrayidx307, align 4
  %shr308 = ashr i32 %72, 4
  %and311 = and i32 %72, 15
  %arrayidx312 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr308, i32 %and311
  %73 = load i32, i32* %arrayidx312, align 4
  store i32 %73, i32* %arrayidx300, align 4
  %arrayidx314 = getelementptr inbounds i32, i32* %statemt, i32 9
  %74 = load i32, i32* %arrayidx314, align 4
  %shr315 = ashr i32 %74, 4
  %and318 = and i32 %74, 15
  %arrayidx319 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr315, i32 %and318
  %75 = load i32, i32* %arrayidx319, align 4
  store i32 %75, i32* %arrayidx307, align 4
  %arrayidx321 = getelementptr inbounds i32, i32* %statemt, i32 5
  %76 = load i32, i32* %arrayidx321, align 4
  %shr322 = ashr i32 %76, 4
  %and325 = and i32 %76, 15
  %arrayidx326 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr322, i32 %and325
  %77 = load i32, i32* %arrayidx326, align 4
  store i32 %77, i32* %arrayidx314, align 4
  %arrayidx328 = getelementptr inbounds i32, i32* %statemt, i32 1
  %78 = load i32, i32* %arrayidx328, align 4
  %shr329 = ashr i32 %78, 4
  %and332 = and i32 %78, 15
  %arrayidx333 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr329, i32 %and332
  %79 = load i32, i32* %arrayidx333, align 4
  store i32 %79, i32* %arrayidx321, align 4
  store i32 %65, i32* %arrayidx328, align 4
  %arrayidx336 = getelementptr inbounds i32, i32* %statemt, i32 30
  %80 = load i32, i32* %arrayidx336, align 4
  %shr337 = ashr i32 %80, 4
  %and340 = and i32 %80, 15
  %arrayidx341 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr337, i32 %and340
  %81 = load i32, i32* %arrayidx341, align 4
  %arrayidx342 = getelementptr inbounds i32, i32* %statemt, i32 18
  %82 = load i32, i32* %arrayidx342, align 4
  %shr343 = ashr i32 %82, 4
  %and346 = and i32 %82, 15
  %arrayidx347 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr343, i32 %and346
  %83 = load i32, i32* %arrayidx347, align 4
  store i32 %83, i32* %arrayidx336, align 4
  %arrayidx349 = getelementptr inbounds i32, i32* %statemt, i32 6
  %84 = load i32, i32* %arrayidx349, align 4
  %shr350 = ashr i32 %84, 4
  %and353 = and i32 %84, 15
  %arrayidx354 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr350, i32 %and353
  %85 = load i32, i32* %arrayidx354, align 4
  store i32 %85, i32* %arrayidx342, align 4
  %arrayidx356 = getelementptr inbounds i32, i32* %statemt, i32 26
  %86 = load i32, i32* %arrayidx356, align 4
  %shr357 = ashr i32 %86, 4
  %and360 = and i32 %86, 15
  %arrayidx361 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr357, i32 %and360
  %87 = load i32, i32* %arrayidx361, align 4
  store i32 %87, i32* %arrayidx349, align 4
  %arrayidx363 = getelementptr inbounds i32, i32* %statemt, i32 14
  %88 = load i32, i32* %arrayidx363, align 4
  %shr364 = ashr i32 %88, 4
  %and367 = and i32 %88, 15
  %arrayidx368 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr364, i32 %and367
  %89 = load i32, i32* %arrayidx368, align 4
  store i32 %89, i32* %arrayidx356, align 4
  %arrayidx370 = getelementptr inbounds i32, i32* %statemt, i32 2
  %90 = load i32, i32* %arrayidx370, align 4
  %shr371 = ashr i32 %90, 4
  %and374 = and i32 %90, 15
  %arrayidx375 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr371, i32 %and374
  %91 = load i32, i32* %arrayidx375, align 4
  store i32 %91, i32* %arrayidx363, align 4
  %arrayidx377 = getelementptr inbounds i32, i32* %statemt, i32 22
  %92 = load i32, i32* %arrayidx377, align 4
  %shr378 = ashr i32 %92, 4
  %and381 = and i32 %92, 15
  %arrayidx382 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr378, i32 %and381
  %93 = load i32, i32* %arrayidx382, align 4
  store i32 %93, i32* %arrayidx370, align 4
  %arrayidx384 = getelementptr inbounds i32, i32* %statemt, i32 10
  %94 = load i32, i32* %arrayidx384, align 4
  %shr385 = ashr i32 %94, 4
  %and388 = and i32 %94, 15
  %arrayidx389 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr385, i32 %and388
  %95 = load i32, i32* %arrayidx389, align 4
  store i32 %95, i32* %arrayidx377, align 4
  store i32 %81, i32* %arrayidx384, align 4
  %arrayidx392 = getelementptr inbounds i32, i32* %statemt, i32 31
  %96 = load i32, i32* %arrayidx392, align 4
  %shr393 = ashr i32 %96, 4
  %and396 = and i32 %96, 15
  %arrayidx397 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr393, i32 %and396
  %97 = load i32, i32* %arrayidx397, align 4
  %arrayidx398 = getelementptr inbounds i32, i32* %statemt, i32 15
  %98 = load i32, i32* %arrayidx398, align 4
  %shr399 = ashr i32 %98, 4
  %and402 = and i32 %98, 15
  %arrayidx403 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr399, i32 %and402
  %99 = load i32, i32* %arrayidx403, align 4
  store i32 %99, i32* %arrayidx392, align 4
  store i32 %97, i32* %arrayidx398, align 4
  %arrayidx406 = getelementptr inbounds i32, i32* %statemt, i32 27
  %100 = load i32, i32* %arrayidx406, align 4
  %shr407 = ashr i32 %100, 4
  %and410 = and i32 %100, 15
  %arrayidx411 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr407, i32 %and410
  %101 = load i32, i32* %arrayidx411, align 4
  %arrayidx412 = getelementptr inbounds i32, i32* %statemt, i32 11
  %102 = load i32, i32* %arrayidx412, align 4
  %shr413 = ashr i32 %102, 4
  %and416 = and i32 %102, 15
  %arrayidx417 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr413, i32 %and416
  %103 = load i32, i32* %arrayidx417, align 4
  store i32 %103, i32* %arrayidx406, align 4
  store i32 %101, i32* %arrayidx412, align 4
  %arrayidx420 = getelementptr inbounds i32, i32* %statemt, i32 23
  %104 = load i32, i32* %arrayidx420, align 4
  %shr421 = ashr i32 %104, 4
  %and424 = and i32 %104, 15
  %arrayidx425 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr421, i32 %and424
  %105 = load i32, i32* %arrayidx425, align 4
  %arrayidx426 = getelementptr inbounds i32, i32* %statemt, i32 7
  %106 = load i32, i32* %arrayidx426, align 4
  %shr427 = ashr i32 %106, 4
  %and430 = and i32 %106, 15
  %arrayidx431 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr427, i32 %and430
  %107 = load i32, i32* %arrayidx431, align 4
  store i32 %107, i32* %arrayidx420, align 4
  store i32 %105, i32* %arrayidx426, align 4
  %arrayidx434 = getelementptr inbounds i32, i32* %statemt, i32 19
  %108 = load i32, i32* %arrayidx434, align 4
  %shr435 = ashr i32 %108, 4
  %and438 = and i32 %108, 15
  %arrayidx439 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr435, i32 %and438
  %109 = load i32, i32* %arrayidx439, align 4
  %arrayidx440 = getelementptr inbounds i32, i32* %statemt, i32 3
  %110 = load i32, i32* %arrayidx440, align 4
  %shr441 = ashr i32 %110, 4
  %and444 = and i32 %110, 15
  %arrayidx445 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr441, i32 %and444
  %111 = load i32, i32* %arrayidx445, align 4
  store i32 %111, i32* %arrayidx434, align 4
  store i32 %109, i32* %arrayidx440, align 4
  %112 = load i32, i32* %statemt, align 4
  %shr449 = ashr i32 %112, 4
  %and452 = and i32 %112, 15
  %arrayidx453 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr449, i32 %and452
  %113 = load i32, i32* %arrayidx453, align 4
  store i32 %113, i32* %statemt, align 4
  %arrayidx455 = getelementptr inbounds i32, i32* %statemt, i32 4
  %114 = load i32, i32* %arrayidx455, align 4
  %shr456 = ashr i32 %114, 4
  %and459 = and i32 %114, 15
  %arrayidx460 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr456, i32 %and459
  %115 = load i32, i32* %arrayidx460, align 4
  store i32 %115, i32* %arrayidx455, align 4
  %arrayidx462 = getelementptr inbounds i32, i32* %statemt, i32 8
  %116 = load i32, i32* %arrayidx462, align 4
  %shr463 = ashr i32 %116, 4
  %and466 = and i32 %116, 15
  %arrayidx467 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr463, i32 %and466
  %117 = load i32, i32* %arrayidx467, align 4
  store i32 %117, i32* %arrayidx462, align 4
  %arrayidx469 = getelementptr inbounds i32, i32* %statemt, i32 12
  %118 = load i32, i32* %arrayidx469, align 4
  %shr470 = ashr i32 %118, 4
  %and473 = and i32 %118, 15
  %arrayidx474 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr470, i32 %and473
  %119 = load i32, i32* %arrayidx474, align 4
  store i32 %119, i32* %arrayidx469, align 4
  %arrayidx476 = getelementptr inbounds i32, i32* %statemt, i32 16
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb, %sw.bb110, %sw.bb279
  %statemt.sink16 = phi i32* [ %statemt, %sw.bb ], [ %arrayidx251, %sw.bb110 ], [ %arrayidx476, %sw.bb279 ]
  %.sink12 = phi i32 [ 4, %sw.bb ], [ 12, %sw.bb110 ], [ 20, %sw.bb279 ]
  %.sink7 = phi i32 [ 8, %sw.bb ], [ 16, %sw.bb110 ], [ 24, %sw.bb279 ]
  %.sink = phi i32 [ 12, %sw.bb ], [ 20, %sw.bb110 ], [ 28, %sw.bb279 ]
  %120 = load i32, i32* %statemt.sink16, align 4
  %shr83 = ashr i32 %120, 4
  %and86 = and i32 %120, 15
  %arrayidx87 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr83, i32 %and86
  %121 = load i32, i32* %arrayidx87, align 4
  store i32 %121, i32* %statemt.sink16, align 4
  %arrayidx89 = getelementptr inbounds i32, i32* %statemt, i32 %.sink12
  %122 = load i32, i32* %arrayidx89, align 4
  %shr90 = ashr i32 %122, 4
  %and93 = and i32 %122, 15
  %arrayidx94 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr90, i32 %and93
  %123 = load i32, i32* %arrayidx94, align 4
  store i32 %123, i32* %arrayidx89, align 4
  %arrayidx96 = getelementptr inbounds i32, i32* %statemt, i32 %.sink7
  %124 = load i32, i32* %arrayidx96, align 4
  %shr97 = ashr i32 %124, 4
  %and100 = and i32 %124, 15
  %arrayidx101 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr97, i32 %and100
  %125 = load i32, i32* %arrayidx101, align 4
  store i32 %125, i32* %arrayidx96, align 4
  %arrayidx103 = getelementptr inbounds i32, i32* %statemt, i32 %.sink
  %126 = load i32, i32* %arrayidx103, align 4
  %shr498 = ashr i32 %126, 4
  %and501 = and i32 %126, 15
  %arrayidx502 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @invSbox, i32 0, i32 %shr498, i32 %and501
  %127 = load i32, i32* %arrayidx502, align 4
  store i32 %127, i32* %arrayidx103, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry
  ret void
}

; Function Attrs: noinline norecurse nounwind
define i32 @AddRoundKey_InversMixColumn.v0.C.c.c(i32* nocapture %statemt, i32 %nb, i32 %n) local_unnamed_addr #4 {
entry:
  %ret = alloca [32 x i32], align 4
  %cmp6 = icmp sgt i32 %nb, 0
  br i1 %cmp6, label %for.body.lr.ph, label %for.end201

for.body.lr.ph:                                   ; preds = %entry
  %mul = mul nsw i32 %n, %nb
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %j.07 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body ]
  %add = add nsw i32 %j.07, %mul
  %arrayidx = getelementptr inbounds [4 x [120 x i32]], [4 x [120 x i32]]* @word, i32 0, i32 0, i32 %add
  %0 = load i32, i32* %arrayidx, align 4
  %mul1 = shl nsw i32 %j.07, 2
  %arrayidx2 = getelementptr inbounds i32, i32* %statemt, i32 %mul1
  %1 = load i32, i32* %arrayidx2, align 4
  %xor = xor i32 %1, %0
  store i32 %xor, i32* %arrayidx2, align 4
  %arrayidx5 = getelementptr inbounds [4 x [120 x i32]], [4 x [120 x i32]]* @word, i32 0, i32 1, i32 %add
  %2 = load i32, i32* %arrayidx5, align 4
  %add7 = or i32 %mul1, 1
  %arrayidx8 = getelementptr inbounds i32, i32* %statemt, i32 %add7
  %3 = load i32, i32* %arrayidx8, align 4
  %xor9 = xor i32 %3, %2
  store i32 %xor9, i32* %arrayidx8, align 4
  %arrayidx12 = getelementptr inbounds [4 x [120 x i32]], [4 x [120 x i32]]* @word, i32 0, i32 2, i32 %add
  %4 = load i32, i32* %arrayidx12, align 4
  %add14 = or i32 %mul1, 2
  %arrayidx15 = getelementptr inbounds i32, i32* %statemt, i32 %add14
  %5 = load i32, i32* %arrayidx15, align 4
  %xor16 = xor i32 %5, %4
  store i32 %xor16, i32* %arrayidx15, align 4
  %arrayidx19 = getelementptr inbounds [4 x [120 x i32]], [4 x [120 x i32]]* @word, i32 0, i32 3, i32 %add
  %6 = load i32, i32* %arrayidx19, align 4
  %add21 = or i32 %mul1, 3
  %arrayidx22 = getelementptr inbounds i32, i32* %statemt, i32 %add21
  %7 = load i32, i32* %arrayidx22, align 4
  %xor23 = xor i32 %7, %6
  store i32 %xor23, i32* %arrayidx22, align 4
  %inc = add nuw nsw i32 %j.07, 1
  %exitcond10 = icmp eq i32 %inc, %nb
  br i1 %exitcond10, label %for.cond27.preheader.preheader, label %for.body

for.cond27.preheader.preheader:                   ; preds = %for.body
  br label %for.cond27.preheader

for.cond27.preheader:                             ; preds = %for.cond27.preheader.preheader, %for.inc171
  %j.15 = phi i32 [ %inc172, %for.inc171 ], [ 0, %for.cond27.preheader.preheader ]
  %mul30 = shl nsw i32 %j.15, 2
  br label %for.body29

for.body29:                                       ; preds = %for.body29, %for.cond27.preheader
  %i.03 = phi i32 [ 0, %for.cond27.preheader ], [ %add58, %for.body29 ]
  %add31 = add nuw nsw i32 %i.03, %mul30
  %arrayidx32 = getelementptr inbounds i32, i32* %statemt, i32 %add31
  %8 = load i32, i32* %arrayidx32, align 4
  %shl = shl i32 %8, 1
  %shr.mask = and i32 %shl, -256
  %cmp33 = icmp eq i32 %shr.mask, 256
  %xor34 = xor i32 %shl, 283
  %xor34.shl = select i1 %cmp33, i32 %xor34, i32 %shl
  %xor38 = xor i32 %xor34.shl, %8
  %shl39 = shl i32 %xor38, 1
  %shr40.mask = and i32 %shl39, -256
  %cmp41 = icmp eq i32 %shr40.mask, 256
  %xor43 = xor i32 %shl39, 283
  %x.1 = select i1 %cmp41, i32 %xor43, i32 %shl39
  %xor48 = xor i32 %x.1, %8
  %shl49 = shl i32 %xor48, 1
  %shr50.mask = and i32 %shl49, -256
  %cmp51 = icmp eq i32 %shr50.mask, 256
  %xor53 = xor i32 %shl49, 283
  %xor53.shl49 = select i1 %cmp51, i32 %xor53, i32 %shl49
  %arrayidx57 = getelementptr inbounds [32 x i32], [32 x i32]* %ret, i32 0, i32 %add31
  %add58 = add nuw nsw i32 %i.03, 1
  %9 = icmp eq i32 %add58, 4
  %tmp = select i1 %9, i32 0, i32 %add58
  %add60 = add nsw i32 %tmp, %mul30
  %arrayidx61 = getelementptr inbounds i32, i32* %statemt, i32 %add60
  %10 = load i32, i32* %arrayidx61, align 4
  %shl62 = shl i32 %10, 1
  %shr63.mask = and i32 %shl62, -256
  %cmp64 = icmp eq i32 %shr63.mask, 256
  %xor66 = xor i32 %shl62, 283
  %x.3 = select i1 %cmp64, i32 %xor66, i32 %shl62
  %shl68 = shl i32 %x.3, 1
  %shr69.mask = and i32 %shl68, -256
  %cmp70 = icmp eq i32 %shr69.mask, 256
  %xor72 = xor i32 %shl68, 283
  %xor72.shl68 = select i1 %cmp70, i32 %xor72, i32 %shl68
  %xor79 = xor i32 %xor72.shl68, %10
  %shl80 = shl i32 %xor79, 1
  %shr81.mask = and i32 %shl80, -256
  %cmp82 = icmp eq i32 %shr81.mask, 256
  %xor84 = xor i32 %shl80, 283
  %x.5 = select i1 %cmp82, i32 %xor84, i32 %shl80
  %add96 = add nuw nsw i32 %i.03, 2
  %rem97 = srem i32 %add96, 4
  %add99 = add nsw i32 %rem97, %mul30
  %arrayidx100 = getelementptr inbounds i32, i32* %statemt, i32 %add99
  %11 = load i32, i32* %arrayidx100, align 4
  %shl101 = shl i32 %11, 1
  %shr102.mask = and i32 %shl101, -256
  %cmp103 = icmp eq i32 %shr102.mask, 256
  %xor105 = xor i32 %shl101, 283
  %xor105.shl101 = select i1 %cmp103, i32 %xor105, i32 %shl101
  %xor112 = xor i32 %xor105.shl101, %11
  %shl113 = shl i32 %xor112, 1
  %shr114.mask = and i32 %shl113, -256
  %cmp115 = icmp eq i32 %shr114.mask, 256
  %xor117 = xor i32 %shl113, 283
  %x.7 = select i1 %cmp115, i32 %xor117, i32 %shl113
  %shl119 = shl i32 %x.7, 1
  %shr120.mask = and i32 %shl119, -256
  %cmp121 = icmp eq i32 %shr120.mask, 256
  %xor123 = xor i32 %shl119, 283
  %xor123.shl119 = select i1 %cmp121, i32 %xor123, i32 %shl119
  %add135 = add nuw nsw i32 %i.03, 3
  %rem136 = srem i32 %add135, 4
  %add138 = add nsw i32 %rem136, %mul30
  %arrayidx139 = getelementptr inbounds i32, i32* %statemt, i32 %add138
  %12 = load i32, i32* %arrayidx139, align 4
  %shl140 = shl i32 %12, 1
  %shr141.mask = and i32 %shl140, -256
  %cmp142 = icmp eq i32 %shr141.mask, 256
  %xor144 = xor i32 %shl140, 283
  %x.9 = select i1 %cmp142, i32 %xor144, i32 %shl140
  %shl146 = shl i32 %x.9, 1
  %shr147.mask = and i32 %shl146, -256
  %cmp148 = icmp eq i32 %shr147.mask, 256
  %xor150 = xor i32 %shl146, 283
  %xor150.shl146 = select i1 %cmp148, i32 %xor150, i32 %shl146
  %shl152 = shl i32 %xor150.shl146, 1
  %shr153.mask = and i32 %shl152, -256
  %cmp154 = icmp eq i32 %shr153.mask, 256
  %xor156 = xor i32 %shl152, 283
  %x.11 = select i1 %cmp154, i32 %xor156, i32 %shl152
  %xor91 = xor i32 %11, %10
  %xor95 = xor i32 %xor91, %12
  %xor130 = xor i32 %xor95, %xor53.shl49
  %xor134 = xor i32 %xor130, %x.5
  %xor163 = xor i32 %xor134, %x.11
  %xor167 = xor i32 %xor163, %xor123.shl119
  store i32 %xor167, i32* %arrayidx57, align 4
  br i1 %9, label %for.inc171, label %for.body29

for.inc171:                                       ; preds = %for.body29
  %inc172 = add nuw nsw i32 %j.15, 1
  %exitcond9 = icmp eq i32 %inc172, %nb
  br i1 %exitcond9, label %for.body176.preheader, label %for.cond27.preheader

for.body176.preheader:                            ; preds = %for.inc171
  br label %for.body176

for.body176:                                      ; preds = %for.body176.preheader, %for.body176
  %i.12 = phi i32 [ %inc200, %for.body176 ], [ 0, %for.body176.preheader ]
  %mul177 = shl nsw i32 %i.12, 2
  %arrayidx178 = getelementptr inbounds [32 x i32], [32 x i32]* %ret, i32 0, i32 %mul177
  %13 = load i32, i32* %arrayidx178, align 4
  %arrayidx180 = getelementptr inbounds i32, i32* %statemt, i32 %mul177
  store i32 %13, i32* %arrayidx180, align 4
  %add182 = or i32 %mul177, 1
  %arrayidx183 = getelementptr inbounds [32 x i32], [32 x i32]* %ret, i32 0, i32 %add182
  %14 = load i32, i32* %arrayidx183, align 4
  %arrayidx186 = getelementptr inbounds i32, i32* %statemt, i32 %add182
  store i32 %14, i32* %arrayidx186, align 4
  %add188 = or i32 %mul177, 2
  %arrayidx189 = getelementptr inbounds [32 x i32], [32 x i32]* %ret, i32 0, i32 %add188
  %15 = load i32, i32* %arrayidx189, align 4
  %arrayidx192 = getelementptr inbounds i32, i32* %statemt, i32 %add188
  store i32 %15, i32* %arrayidx192, align 4
  %add194 = or i32 %mul177, 3
  %arrayidx195 = getelementptr inbounds [32 x i32], [32 x i32]* %ret, i32 0, i32 %add194
  %16 = load i32, i32* %arrayidx195, align 4
  %arrayidx198 = getelementptr inbounds i32, i32* %statemt, i32 %add194
  store i32 %16, i32* %arrayidx198, align 4
  %inc200 = add nuw nsw i32 %i.12, 1
  %exitcond = icmp eq i32 %inc200, %nb
  br i1 %exitcond, label %for.end201.loopexit, label %for.body176

for.end201.loopexit:                              ; preds = %for.body176
  br label %for.end201

for.end201:                                       ; preds = %for.end201.loopexit, %entry
  ret i32 0
}

; Function Attrs: noinline norecurse nounwind readnone
define i32 @SubByte.v0.C.c.c(i32 %in) local_unnamed_addr #6 {
entry:
  %div = sdiv i32 %in, 16
  %rem = srem i32 %in, 16
  %arrayidx1 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %div, i32 %rem
  %0 = load i32, i32* %arrayidx1, align 4
  ret i32 %0
}

; Function Attrs: noinline norecurse nounwind
define void @ByteSub_ShiftRow.v0.C.c.c(i32* %statemt, i32 %nb) local_unnamed_addr #4 {
entry:
  switch i32 %nb, label %sw.epilog [
    i32 4, label %sw.bb
    i32 6, label %sw.bb110
    i32 8, label %sw.bb279
  ]

sw.bb:                                            ; preds = %entry
  %arrayidx = getelementptr inbounds i32, i32* %statemt, i32 1
  %0 = load i32, i32* %arrayidx, align 4
  %shr = ashr i32 %0, 4
  %and = and i32 %0, 15
  %arrayidx3 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr, i32 %and
  %1 = load i32, i32* %arrayidx3, align 4
  %arrayidx4 = getelementptr inbounds i32, i32* %statemt, i32 5
  %2 = load i32, i32* %arrayidx4, align 4
  %shr5 = ashr i32 %2, 4
  %and8 = and i32 %2, 15
  %arrayidx9 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr5, i32 %and8
  %3 = load i32, i32* %arrayidx9, align 4
  store i32 %3, i32* %arrayidx, align 4
  %arrayidx11 = getelementptr inbounds i32, i32* %statemt, i32 9
  %4 = load i32, i32* %arrayidx11, align 4
  %shr12 = ashr i32 %4, 4
  %and15 = and i32 %4, 15
  %arrayidx16 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr12, i32 %and15
  %5 = load i32, i32* %arrayidx16, align 4
  store i32 %5, i32* %arrayidx4, align 4
  %arrayidx18 = getelementptr inbounds i32, i32* %statemt, i32 13
  %6 = load i32, i32* %arrayidx18, align 4
  %shr19 = ashr i32 %6, 4
  %and22 = and i32 %6, 15
  %arrayidx23 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr19, i32 %and22
  %7 = load i32, i32* %arrayidx23, align 4
  store i32 %7, i32* %arrayidx11, align 4
  store i32 %1, i32* %arrayidx18, align 4
  %arrayidx26 = getelementptr inbounds i32, i32* %statemt, i32 2
  %8 = load i32, i32* %arrayidx26, align 4
  %shr27 = ashr i32 %8, 4
  %and30 = and i32 %8, 15
  %arrayidx31 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr27, i32 %and30
  %9 = load i32, i32* %arrayidx31, align 4
  %arrayidx32 = getelementptr inbounds i32, i32* %statemt, i32 10
  %10 = load i32, i32* %arrayidx32, align 4
  %shr33 = ashr i32 %10, 4
  %and36 = and i32 %10, 15
  %arrayidx37 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr33, i32 %and36
  %11 = load i32, i32* %arrayidx37, align 4
  store i32 %11, i32* %arrayidx26, align 4
  store i32 %9, i32* %arrayidx32, align 4
  %arrayidx40 = getelementptr inbounds i32, i32* %statemt, i32 6
  %12 = load i32, i32* %arrayidx40, align 4
  %shr41 = ashr i32 %12, 4
  %and44 = and i32 %12, 15
  %arrayidx45 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr41, i32 %and44
  %13 = load i32, i32* %arrayidx45, align 4
  %arrayidx46 = getelementptr inbounds i32, i32* %statemt, i32 14
  %14 = load i32, i32* %arrayidx46, align 4
  %shr47 = ashr i32 %14, 4
  %and50 = and i32 %14, 15
  %arrayidx51 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr47, i32 %and50
  %15 = load i32, i32* %arrayidx51, align 4
  store i32 %15, i32* %arrayidx40, align 4
  store i32 %13, i32* %arrayidx46, align 4
  %arrayidx54 = getelementptr inbounds i32, i32* %statemt, i32 3
  %16 = load i32, i32* %arrayidx54, align 4
  %shr55 = ashr i32 %16, 4
  %and58 = and i32 %16, 15
  %arrayidx59 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr55, i32 %and58
  %17 = load i32, i32* %arrayidx59, align 4
  %arrayidx60 = getelementptr inbounds i32, i32* %statemt, i32 15
  %18 = load i32, i32* %arrayidx60, align 4
  %shr61 = ashr i32 %18, 4
  %and64 = and i32 %18, 15
  %arrayidx65 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr61, i32 %and64
  %19 = load i32, i32* %arrayidx65, align 4
  store i32 %19, i32* %arrayidx54, align 4
  %arrayidx67 = getelementptr inbounds i32, i32* %statemt, i32 11
  %20 = load i32, i32* %arrayidx67, align 4
  %shr68 = ashr i32 %20, 4
  %and71 = and i32 %20, 15
  %arrayidx72 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr68, i32 %and71
  %21 = load i32, i32* %arrayidx72, align 4
  store i32 %21, i32* %arrayidx60, align 4
  %arrayidx74 = getelementptr inbounds i32, i32* %statemt, i32 7
  %22 = load i32, i32* %arrayidx74, align 4
  %shr75 = ashr i32 %22, 4
  %and78 = and i32 %22, 15
  %arrayidx79 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr75, i32 %and78
  %23 = load i32, i32* %arrayidx79, align 4
  store i32 %23, i32* %arrayidx67, align 4
  store i32 %17, i32* %arrayidx74, align 4
  br label %sw.epilog.sink.split

sw.bb110:                                         ; preds = %entry
  %arrayidx111 = getelementptr inbounds i32, i32* %statemt, i32 1
  %24 = load i32, i32* %arrayidx111, align 4
  %shr112 = ashr i32 %24, 4
  %and115 = and i32 %24, 15
  %arrayidx116 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr112, i32 %and115
  %25 = load i32, i32* %arrayidx116, align 4
  %arrayidx117 = getelementptr inbounds i32, i32* %statemt, i32 5
  %26 = load i32, i32* %arrayidx117, align 4
  %shr118 = ashr i32 %26, 4
  %and121 = and i32 %26, 15
  %arrayidx122 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr118, i32 %and121
  %27 = load i32, i32* %arrayidx122, align 4
  store i32 %27, i32* %arrayidx111, align 4
  %arrayidx124 = getelementptr inbounds i32, i32* %statemt, i32 9
  %28 = load i32, i32* %arrayidx124, align 4
  %shr125 = ashr i32 %28, 4
  %and128 = and i32 %28, 15
  %arrayidx129 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr125, i32 %and128
  %29 = load i32, i32* %arrayidx129, align 4
  store i32 %29, i32* %arrayidx117, align 4
  %arrayidx131 = getelementptr inbounds i32, i32* %statemt, i32 13
  %30 = load i32, i32* %arrayidx131, align 4
  %shr132 = ashr i32 %30, 4
  %and135 = and i32 %30, 15
  %arrayidx136 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr132, i32 %and135
  %31 = load i32, i32* %arrayidx136, align 4
  store i32 %31, i32* %arrayidx124, align 4
  %arrayidx138 = getelementptr inbounds i32, i32* %statemt, i32 17
  %32 = load i32, i32* %arrayidx138, align 4
  %shr139 = ashr i32 %32, 4
  %and142 = and i32 %32, 15
  %arrayidx143 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr139, i32 %and142
  %33 = load i32, i32* %arrayidx143, align 4
  store i32 %33, i32* %arrayidx131, align 4
  %arrayidx145 = getelementptr inbounds i32, i32* %statemt, i32 21
  %34 = load i32, i32* %arrayidx145, align 4
  %shr146 = ashr i32 %34, 4
  %and149 = and i32 %34, 15
  %arrayidx150 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr146, i32 %and149
  %35 = load i32, i32* %arrayidx150, align 4
  store i32 %35, i32* %arrayidx138, align 4
  store i32 %25, i32* %arrayidx145, align 4
  %arrayidx153 = getelementptr inbounds i32, i32* %statemt, i32 2
  %36 = load i32, i32* %arrayidx153, align 4
  %shr154 = ashr i32 %36, 4
  %and157 = and i32 %36, 15
  %arrayidx158 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr154, i32 %and157
  %37 = load i32, i32* %arrayidx158, align 4
  %arrayidx159 = getelementptr inbounds i32, i32* %statemt, i32 10
  %38 = load i32, i32* %arrayidx159, align 4
  %shr160 = ashr i32 %38, 4
  %and163 = and i32 %38, 15
  %arrayidx164 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr160, i32 %and163
  %39 = load i32, i32* %arrayidx164, align 4
  store i32 %39, i32* %arrayidx153, align 4
  %arrayidx166 = getelementptr inbounds i32, i32* %statemt, i32 18
  %40 = load i32, i32* %arrayidx166, align 4
  %shr167 = ashr i32 %40, 4
  %and170 = and i32 %40, 15
  %arrayidx171 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr167, i32 %and170
  %41 = load i32, i32* %arrayidx171, align 4
  store i32 %41, i32* %arrayidx159, align 4
  store i32 %37, i32* %arrayidx166, align 4
  %arrayidx174 = getelementptr inbounds i32, i32* %statemt, i32 6
  %42 = load i32, i32* %arrayidx174, align 4
  %shr175 = ashr i32 %42, 4
  %and178 = and i32 %42, 15
  %arrayidx179 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr175, i32 %and178
  %43 = load i32, i32* %arrayidx179, align 4
  %arrayidx180 = getelementptr inbounds i32, i32* %statemt, i32 14
  %44 = load i32, i32* %arrayidx180, align 4
  %shr181 = ashr i32 %44, 4
  %and184 = and i32 %44, 15
  %arrayidx185 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr181, i32 %and184
  %45 = load i32, i32* %arrayidx185, align 4
  store i32 %45, i32* %arrayidx174, align 4
  %arrayidx187 = getelementptr inbounds i32, i32* %statemt, i32 22
  %46 = load i32, i32* %arrayidx187, align 4
  %shr188 = ashr i32 %46, 4
  %and191 = and i32 %46, 15
  %arrayidx192 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr188, i32 %and191
  %47 = load i32, i32* %arrayidx192, align 4
  store i32 %47, i32* %arrayidx180, align 4
  store i32 %43, i32* %arrayidx187, align 4
  %arrayidx195 = getelementptr inbounds i32, i32* %statemt, i32 3
  %48 = load i32, i32* %arrayidx195, align 4
  %shr196 = ashr i32 %48, 4
  %and199 = and i32 %48, 15
  %arrayidx200 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr196, i32 %and199
  %49 = load i32, i32* %arrayidx200, align 4
  %arrayidx201 = getelementptr inbounds i32, i32* %statemt, i32 15
  %50 = load i32, i32* %arrayidx201, align 4
  %shr202 = ashr i32 %50, 4
  %and205 = and i32 %50, 15
  %arrayidx206 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr202, i32 %and205
  %51 = load i32, i32* %arrayidx206, align 4
  store i32 %51, i32* %arrayidx195, align 4
  store i32 %49, i32* %arrayidx201, align 4
  %arrayidx209 = getelementptr inbounds i32, i32* %statemt, i32 7
  %52 = load i32, i32* %arrayidx209, align 4
  %shr210 = ashr i32 %52, 4
  %and213 = and i32 %52, 15
  %arrayidx214 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr210, i32 %and213
  %53 = load i32, i32* %arrayidx214, align 4
  %arrayidx215 = getelementptr inbounds i32, i32* %statemt, i32 19
  %54 = load i32, i32* %arrayidx215, align 4
  %shr216 = ashr i32 %54, 4
  %and219 = and i32 %54, 15
  %arrayidx220 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr216, i32 %and219
  %55 = load i32, i32* %arrayidx220, align 4
  store i32 %55, i32* %arrayidx209, align 4
  store i32 %53, i32* %arrayidx215, align 4
  %arrayidx223 = getelementptr inbounds i32, i32* %statemt, i32 11
  %56 = load i32, i32* %arrayidx223, align 4
  %shr224 = ashr i32 %56, 4
  %and227 = and i32 %56, 15
  %arrayidx228 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr224, i32 %and227
  %57 = load i32, i32* %arrayidx228, align 4
  %arrayidx229 = getelementptr inbounds i32, i32* %statemt, i32 23
  %58 = load i32, i32* %arrayidx229, align 4
  %shr230 = ashr i32 %58, 4
  %and233 = and i32 %58, 15
  %arrayidx234 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr230, i32 %and233
  %59 = load i32, i32* %arrayidx234, align 4
  store i32 %59, i32* %arrayidx223, align 4
  store i32 %57, i32* %arrayidx229, align 4
  %60 = load i32, i32* %statemt, align 4
  %shr238 = ashr i32 %60, 4
  %and241 = and i32 %60, 15
  %arrayidx242 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr238, i32 %and241
  %61 = load i32, i32* %arrayidx242, align 4
  store i32 %61, i32* %statemt, align 4
  %arrayidx244 = getelementptr inbounds i32, i32* %statemt, i32 4
  %62 = load i32, i32* %arrayidx244, align 4
  %shr245 = ashr i32 %62, 4
  %and248 = and i32 %62, 15
  %arrayidx249 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr245, i32 %and248
  %63 = load i32, i32* %arrayidx249, align 4
  store i32 %63, i32* %arrayidx244, align 4
  %arrayidx251 = getelementptr inbounds i32, i32* %statemt, i32 8
  br label %sw.epilog.sink.split

sw.bb279:                                         ; preds = %entry
  %arrayidx280 = getelementptr inbounds i32, i32* %statemt, i32 1
  %64 = load i32, i32* %arrayidx280, align 4
  %shr281 = ashr i32 %64, 4
  %and284 = and i32 %64, 15
  %arrayidx285 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr281, i32 %and284
  %65 = load i32, i32* %arrayidx285, align 4
  %arrayidx286 = getelementptr inbounds i32, i32* %statemt, i32 5
  %66 = load i32, i32* %arrayidx286, align 4
  %shr287 = ashr i32 %66, 4
  %and290 = and i32 %66, 15
  %arrayidx291 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr287, i32 %and290
  %67 = load i32, i32* %arrayidx291, align 4
  store i32 %67, i32* %arrayidx280, align 4
  %arrayidx293 = getelementptr inbounds i32, i32* %statemt, i32 9
  %68 = load i32, i32* %arrayidx293, align 4
  %shr294 = ashr i32 %68, 4
  %and297 = and i32 %68, 15
  %arrayidx298 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr294, i32 %and297
  %69 = load i32, i32* %arrayidx298, align 4
  store i32 %69, i32* %arrayidx286, align 4
  %arrayidx300 = getelementptr inbounds i32, i32* %statemt, i32 13
  %70 = load i32, i32* %arrayidx300, align 4
  %shr301 = ashr i32 %70, 4
  %and304 = and i32 %70, 15
  %arrayidx305 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr301, i32 %and304
  %71 = load i32, i32* %arrayidx305, align 4
  store i32 %71, i32* %arrayidx293, align 4
  %arrayidx307 = getelementptr inbounds i32, i32* %statemt, i32 17
  %72 = load i32, i32* %arrayidx307, align 4
  %shr308 = ashr i32 %72, 4
  %and311 = and i32 %72, 15
  %arrayidx312 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr308, i32 %and311
  %73 = load i32, i32* %arrayidx312, align 4
  store i32 %73, i32* %arrayidx300, align 4
  %arrayidx314 = getelementptr inbounds i32, i32* %statemt, i32 21
  %74 = load i32, i32* %arrayidx314, align 4
  %shr315 = ashr i32 %74, 4
  %and318 = and i32 %74, 15
  %arrayidx319 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr315, i32 %and318
  %75 = load i32, i32* %arrayidx319, align 4
  store i32 %75, i32* %arrayidx307, align 4
  %arrayidx321 = getelementptr inbounds i32, i32* %statemt, i32 25
  %76 = load i32, i32* %arrayidx321, align 4
  %shr322 = ashr i32 %76, 4
  %and325 = and i32 %76, 15
  %arrayidx326 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr322, i32 %and325
  %77 = load i32, i32* %arrayidx326, align 4
  store i32 %77, i32* %arrayidx314, align 4
  %arrayidx328 = getelementptr inbounds i32, i32* %statemt, i32 29
  %78 = load i32, i32* %arrayidx328, align 4
  %shr329 = ashr i32 %78, 4
  %and332 = and i32 %78, 15
  %arrayidx333 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr329, i32 %and332
  %79 = load i32, i32* %arrayidx333, align 4
  store i32 %79, i32* %arrayidx321, align 4
  store i32 %65, i32* %arrayidx328, align 4
  %arrayidx336 = getelementptr inbounds i32, i32* %statemt, i32 2
  %80 = load i32, i32* %arrayidx336, align 4
  %shr337 = ashr i32 %80, 4
  %and340 = and i32 %80, 15
  %arrayidx341 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr337, i32 %and340
  %81 = load i32, i32* %arrayidx341, align 4
  %arrayidx342 = getelementptr inbounds i32, i32* %statemt, i32 14
  %82 = load i32, i32* %arrayidx342, align 4
  %shr343 = ashr i32 %82, 4
  %and346 = and i32 %82, 15
  %arrayidx347 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr343, i32 %and346
  %83 = load i32, i32* %arrayidx347, align 4
  store i32 %83, i32* %arrayidx336, align 4
  %arrayidx349 = getelementptr inbounds i32, i32* %statemt, i32 26
  %84 = load i32, i32* %arrayidx349, align 4
  %shr350 = ashr i32 %84, 4
  %and353 = and i32 %84, 15
  %arrayidx354 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr350, i32 %and353
  %85 = load i32, i32* %arrayidx354, align 4
  store i32 %85, i32* %arrayidx342, align 4
  %arrayidx356 = getelementptr inbounds i32, i32* %statemt, i32 6
  %86 = load i32, i32* %arrayidx356, align 4
  %shr357 = ashr i32 %86, 4
  %and360 = and i32 %86, 15
  %arrayidx361 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr357, i32 %and360
  %87 = load i32, i32* %arrayidx361, align 4
  store i32 %87, i32* %arrayidx349, align 4
  %arrayidx363 = getelementptr inbounds i32, i32* %statemt, i32 18
  %88 = load i32, i32* %arrayidx363, align 4
  %shr364 = ashr i32 %88, 4
  %and367 = and i32 %88, 15
  %arrayidx368 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr364, i32 %and367
  %89 = load i32, i32* %arrayidx368, align 4
  store i32 %89, i32* %arrayidx356, align 4
  %arrayidx370 = getelementptr inbounds i32, i32* %statemt, i32 30
  %90 = load i32, i32* %arrayidx370, align 4
  %shr371 = ashr i32 %90, 4
  %and374 = and i32 %90, 15
  %arrayidx375 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr371, i32 %and374
  %91 = load i32, i32* %arrayidx375, align 4
  store i32 %91, i32* %arrayidx363, align 4
  %arrayidx377 = getelementptr inbounds i32, i32* %statemt, i32 10
  %92 = load i32, i32* %arrayidx377, align 4
  %shr378 = ashr i32 %92, 4
  %and381 = and i32 %92, 15
  %arrayidx382 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr378, i32 %and381
  %93 = load i32, i32* %arrayidx382, align 4
  store i32 %93, i32* %arrayidx370, align 4
  %arrayidx384 = getelementptr inbounds i32, i32* %statemt, i32 22
  %94 = load i32, i32* %arrayidx384, align 4
  %shr385 = ashr i32 %94, 4
  %and388 = and i32 %94, 15
  %arrayidx389 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr385, i32 %and388
  %95 = load i32, i32* %arrayidx389, align 4
  store i32 %95, i32* %arrayidx377, align 4
  store i32 %81, i32* %arrayidx384, align 4
  %arrayidx392 = getelementptr inbounds i32, i32* %statemt, i32 3
  %96 = load i32, i32* %arrayidx392, align 4
  %shr393 = ashr i32 %96, 4
  %and396 = and i32 %96, 15
  %arrayidx397 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr393, i32 %and396
  %97 = load i32, i32* %arrayidx397, align 4
  %arrayidx398 = getelementptr inbounds i32, i32* %statemt, i32 19
  %98 = load i32, i32* %arrayidx398, align 4
  %shr399 = ashr i32 %98, 4
  %and402 = and i32 %98, 15
  %arrayidx403 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr399, i32 %and402
  %99 = load i32, i32* %arrayidx403, align 4
  store i32 %99, i32* %arrayidx392, align 4
  store i32 %97, i32* %arrayidx398, align 4
  %arrayidx406 = getelementptr inbounds i32, i32* %statemt, i32 7
  %100 = load i32, i32* %arrayidx406, align 4
  %shr407 = ashr i32 %100, 4
  %and410 = and i32 %100, 15
  %arrayidx411 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr407, i32 %and410
  %101 = load i32, i32* %arrayidx411, align 4
  %arrayidx412 = getelementptr inbounds i32, i32* %statemt, i32 23
  %102 = load i32, i32* %arrayidx412, align 4
  %shr413 = ashr i32 %102, 4
  %and416 = and i32 %102, 15
  %arrayidx417 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr413, i32 %and416
  %103 = load i32, i32* %arrayidx417, align 4
  store i32 %103, i32* %arrayidx406, align 4
  store i32 %101, i32* %arrayidx412, align 4
  %arrayidx420 = getelementptr inbounds i32, i32* %statemt, i32 11
  %104 = load i32, i32* %arrayidx420, align 4
  %shr421 = ashr i32 %104, 4
  %and424 = and i32 %104, 15
  %arrayidx425 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr421, i32 %and424
  %105 = load i32, i32* %arrayidx425, align 4
  %arrayidx426 = getelementptr inbounds i32, i32* %statemt, i32 27
  %106 = load i32, i32* %arrayidx426, align 4
  %shr427 = ashr i32 %106, 4
  %and430 = and i32 %106, 15
  %arrayidx431 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr427, i32 %and430
  %107 = load i32, i32* %arrayidx431, align 4
  store i32 %107, i32* %arrayidx420, align 4
  store i32 %105, i32* %arrayidx426, align 4
  %arrayidx434 = getelementptr inbounds i32, i32* %statemt, i32 15
  %108 = load i32, i32* %arrayidx434, align 4
  %shr435 = ashr i32 %108, 4
  %and438 = and i32 %108, 15
  %arrayidx439 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr435, i32 %and438
  %109 = load i32, i32* %arrayidx439, align 4
  %arrayidx440 = getelementptr inbounds i32, i32* %statemt, i32 31
  %110 = load i32, i32* %arrayidx440, align 4
  %shr441 = ashr i32 %110, 4
  %and444 = and i32 %110, 15
  %arrayidx445 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr441, i32 %and444
  %111 = load i32, i32* %arrayidx445, align 4
  store i32 %111, i32* %arrayidx434, align 4
  store i32 %109, i32* %arrayidx440, align 4
  %112 = load i32, i32* %statemt, align 4
  %shr449 = ashr i32 %112, 4
  %and452 = and i32 %112, 15
  %arrayidx453 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr449, i32 %and452
  %113 = load i32, i32* %arrayidx453, align 4
  store i32 %113, i32* %statemt, align 4
  %arrayidx455 = getelementptr inbounds i32, i32* %statemt, i32 4
  %114 = load i32, i32* %arrayidx455, align 4
  %shr456 = ashr i32 %114, 4
  %and459 = and i32 %114, 15
  %arrayidx460 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr456, i32 %and459
  %115 = load i32, i32* %arrayidx460, align 4
  store i32 %115, i32* %arrayidx455, align 4
  %arrayidx462 = getelementptr inbounds i32, i32* %statemt, i32 8
  %116 = load i32, i32* %arrayidx462, align 4
  %shr463 = ashr i32 %116, 4
  %and466 = and i32 %116, 15
  %arrayidx467 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr463, i32 %and466
  %117 = load i32, i32* %arrayidx467, align 4
  store i32 %117, i32* %arrayidx462, align 4
  %arrayidx469 = getelementptr inbounds i32, i32* %statemt, i32 12
  %118 = load i32, i32* %arrayidx469, align 4
  %shr470 = ashr i32 %118, 4
  %and473 = and i32 %118, 15
  %arrayidx474 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr470, i32 %and473
  %119 = load i32, i32* %arrayidx474, align 4
  store i32 %119, i32* %arrayidx469, align 4
  %arrayidx476 = getelementptr inbounds i32, i32* %statemt, i32 16
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb, %sw.bb110, %sw.bb279
  %statemt.sink16 = phi i32* [ %statemt, %sw.bb ], [ %arrayidx251, %sw.bb110 ], [ %arrayidx476, %sw.bb279 ]
  %.sink12 = phi i32 [ 4, %sw.bb ], [ 12, %sw.bb110 ], [ 20, %sw.bb279 ]
  %.sink7 = phi i32 [ 8, %sw.bb ], [ 16, %sw.bb110 ], [ 24, %sw.bb279 ]
  %.sink = phi i32 [ 12, %sw.bb ], [ 20, %sw.bb110 ], [ 28, %sw.bb279 ]
  %120 = load i32, i32* %statemt.sink16, align 4
  %shr83 = ashr i32 %120, 4
  %and86 = and i32 %120, 15
  %arrayidx87 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr83, i32 %and86
  %121 = load i32, i32* %arrayidx87, align 4
  store i32 %121, i32* %statemt.sink16, align 4
  %arrayidx89 = getelementptr inbounds i32, i32* %statemt, i32 %.sink12
  %122 = load i32, i32* %arrayidx89, align 4
  %shr90 = ashr i32 %122, 4
  %and93 = and i32 %122, 15
  %arrayidx94 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr90, i32 %and93
  %123 = load i32, i32* %arrayidx94, align 4
  store i32 %123, i32* %arrayidx89, align 4
  %arrayidx96 = getelementptr inbounds i32, i32* %statemt, i32 %.sink7
  %124 = load i32, i32* %arrayidx96, align 4
  %shr97 = ashr i32 %124, 4
  %and100 = and i32 %124, 15
  %arrayidx101 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr97, i32 %and100
  %125 = load i32, i32* %arrayidx101, align 4
  store i32 %125, i32* %arrayidx96, align 4
  %arrayidx103 = getelementptr inbounds i32, i32* %statemt, i32 %.sink
  %126 = load i32, i32* %arrayidx103, align 4
  %shr498 = ashr i32 %126, 4
  %and501 = and i32 %126, 15
  %arrayidx502 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @Sbox, i32 0, i32 %shr498, i32 %and501
  %127 = load i32, i32* %arrayidx502, align 4
  store i32 %127, i32* %arrayidx103, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry
  ret void
}

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline nounwind ssp "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { argmemonly nounwind }
attributes #4 = { noinline norecurse nounwind }
attributes #5 = { noinline nounwind }
attributes #6 = { noinline norecurse nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
