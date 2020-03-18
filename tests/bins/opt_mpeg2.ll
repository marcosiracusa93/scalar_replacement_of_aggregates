; ModuleID = './../tests/test_cases/mpeg2.ll'
source_filename = "mpeg2.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

@inRdbfr = local_unnamed_addr constant [2048 x i8] c"\00hx0H \A0\C0\C0@8\F8\F8X\88\E0\C8\D0\B0H`(\B8\A0  x\A8@ H\B8\D8\F0\00\D8\C0@p0\A0\98(\B0  \F8\C8h\18\D8\F0\80\B0H\E8\F0\B80x0\C0@\A8\A0\80\A0\A0\E8\D0hx\E8x\08\B8x\C8@\A0\C8\E0@\A8(xPh\10\00\08x\90\88P\90H\18\80\D8\D8\18P\10@ \C8p\80\90X\18px hH\B0\18\10\B88\18\C8\98\9800\88P\F0\08\D8\C8\F0 \A8p08(\C0\E8 0\E8\E8 \00X\D0\18\F0Hx`\F8\88\E0\D0\08\B8\C0\90X0\90\88p\C0`\F0\C8\A0\B8\A0\180\D0\98\80\B8\B8\90\90\A8\F0\90\A0\A800\18\C8\90x\D08`H0XP\C8\F8\D0\F8(\88p \08\08P\C0( \E08\C0\C888\E8\C8Px\08\B8\D8\E8P\A8\80 \D8\88h\F8\A8\F8\08\C0\A8\C08\F0\C0\D0\88x0\E0p\A8P\C0`Pxx\10x0\A8\A8\A0\E0\80\18H\18\F8\F0\98\A0\D08\C08X\80\C0\88\80\D0p(@\C0 \B0P8\A8\D0\18\A8\A8\F8\F0\88` 8\B8\08\88\10\00\B0(\00 h\A08X\E88\00\F0\B8\E8X \B0\00\D8\F8\B8(\10P\08\D0@\E0H(HH\90P\90x\88@\B8\A0\88\100h\E8hhH\D0H\C0\B8(8\E8H\A0P\98\E8\F8 \E0(\00\A8\18`p\A0\98\08 \A0h\D0 \18\F8\08\F8\90x\10\C0X\98\B0\C8\A0\98\A0`\A8\F0\10\F8\B0\18\D8\008P\F8`\08\80 \C0h0\D0\F0\B8\80P8\C0\00p\B00`8\188\18 \18`P\00@p0\18X8\98\E0\A0\C0\B8H\F8\80\08\08hh\C80\88\88\D0\90P(\88`\08\D0\A0h\A0P@`\B0\90\088XX\D0x0\F0\F0`\F8\C0h\80\F8\18hH@x\F8\C00\C0 P\90\10P`p\B88P\F8\E8\00(\F88\C0 \C0`\F80\88\E0P\00\C0\80hx\D0\80\00\B0\D8\08\C0`\10(\B8` HP\C0hh\88\00\10\A0\18h0\08\18\98x\80H \B0phx\10 \90\A08\F0\00\E8\B8\18\10\D0\C8\F0\C8\C8hp\18\D0\80\A8\F8@\98x@\E0\80\D0x\D8\10\980\90\F0P\90\E00\A0\C0\F8\00\80x\80\A0\E8\A8\D0pph\B8\08\C08\B0(`@Hh\D8\98\D8P\98\B8\D8 8 @\F0\98\F0\A8\88\08\E8\A8\80XH\80\08\C00xp \90\D0\C0\D8\10\B0\A8\A0\A8X\888\08@\00P\D8h@PX\D0@P\C8\18x\A0PH8\D8\188H(H\008\888\C8H\88XH\88\F0\00\B0\B0\98\C0\F8\E0\F0H\08p\E8\C8x\10\00(0@H \88h\98\10\F0\B8P\00\98 \B0\80x\00\A0(@p(P0\90`\A8\00\98H\B8\88X\98\B80X\98`\D8\F0\B8\C8\88@hp\E8\00\D0\B0\80p\F8\90\F8xp\00x\F0XXX\08\F8P\08@\D8\F088\90p\D0\90H\10\A0\88\D8\B0p8\08\A8hH(\B0X(x\18(8h(\A0\E8\A0\18\90\90\E8x\90p`\88\B0\08\80p\B8`x@p\00\B8PH\B8P\90Hx\C8\A8 \18\00\90H\18\F8\18\98H\80\00\08\E0 HH0p\E8\10\F0\18@ \E8x\A8\C8\98p\08\90\00xp\00p\90H\A0\18\D8p\80\E0\98h\88(\00\10\900\F8\880@X\98\D0\F8\10p\E0\B8\A8(\A8@\F8\90h\C8\90\98\10\A8\C0\F0`H\88\D8\88\00 \C0p\F0\A0\F8\B8\100\E8X\A0\10h\B0\90\88\18\F0\B8\A0\08\10 8\B0\90\A8\A88XXh\F8\B8` \80X\E0\F0 x\D8\88\08HPhx\98 `\E8P\E8\18P\C8\D0\D8\B8\108(\D8\D0\80x\10\10P\C8\90h\A0H\18\88\B0 \C0x\88P\10X\D0\A0\10\E8(\18\90\D0 \10X\C00\B0\98\18\A0 P\18\F0P\A0\98\A0\80PX(\B8\D0\900\C8\C80p\90h\E0\90\E0\C8\08\E0\F0 \98\E8\10\08P\B8(\B8\F8@\08\E8\10XX\08x\800\F0X@hh\F8`\F0\C0\98\D08\98\F0\88\08\D8\18p\A8X\88P\E0\88\98(\18\F8\D8\98\88`\E0@P88H\08\18@\90\18\D0\D8\80x`\A8x\98p\E8\88PH`\98\D0H\D8@xx0\E8H\B8\B00\E8\C8\B8xHp\80\F8\A0\A8\D8\98P\B0p0\98p@(\C8\E8P\A08\D8\C0\A8H(@\D0 \E0\F0\18h\E8\F0\A8\18\F8 P\98\90\A0px`\F0@\A0\F8\F8\980pX\80\E8\F0\F0\E8\A8x \98\B0h\10P\98\F0\E0\80\100 \D8\08h\F8\B8\D0\D8xP\D0\808p(\B8\10\E0\A8\98\F88\90\A8\E0\08\A8P\88\980`\00\B8X\C0\18\10\80\00\B0\98(`H\C0\00 \80\18\F00\F8\B0x\10\A8\E0H\08\C80\B0p\E0\A0\08\98@\10\10\F0\E0@\90\80P\B8(\E8\C8p\F8\18p\B0\80\808(\98\18\B8xhH@\C80\E0\008\E8 \F0\B8hh \C0\C8\C8@\98H\D8\D8P\00P\00\00\A0x(\88\F0 x\98\D88p\10\18\08xh\C0\90\B0\08\10`h\A8P\C0\E8pp8X\B0\F0 \B0\F8P\B0\18\E0\C0\08\B0\A8\10\E8\F8\10\10h\80\E8\00 \F0p \B8\B88\E8P\90\10H\F0\D0@\B0\F0\10\88\10P\C0\18H\D88P\D8 \90H\18@\F8\00\E0H \88\E8\F0H X\80h\10\08 \C0\E0\08\98\F8\E0\00\B00\10h\D8\B0\18\F0\C8P\F8\D0\80\C8H\08\98\80PxP\98\E8\C8\A8X\10\B0\E8(H\D0\E8p\F0pP\B0\B0\10Hx \B8\E0P\18\B0\00\D0\108p\10x\A0\18\D8\80\88\C0\98\F8x\A08\C0\E0\00\88pp\08\08\B8\A8X\A0x\A0\F0\A8 (\A8X\08\10\18hh0\F8\88H\90\80\A0\D8X\F0x\E8H\C0\C8\F8\C00\F0h\D0(h\10\80P\E0\E088x(\18\B0\10\B8\18\B0\E0\A8\10\B8h\88\C8\A8\D0x\C8\E0(\D0\10p\A0\C0\E0@(\E8x\18\E8\A8PX\90hH\C0p\00ph\E0\E8\A0p\D0\B0\D88\E0\E0\A0h8\B0\D8\C0\18\D0\08(8\F8\08x\B8\80(\A88\B8\C0\88`H\D8\08@H8\10\B0\90\10\80\B0\88\D0x\10\B8\E0\A0\D8\90X\D0\C8\90`\98\C8\E0\D0\F0x\08h\B8p\A8\C8pH\00\C0\00(x\88p(\988\90 \E0\F0 \C08\C8\10\88h\C0\C0\00\00\00\08\E8h\F0X\C0\08\A8\D8\D0\B8\E0\F0H\98H\A8\B8\B0\D80\90P \B8\D0p\A0XX\08\90\90x\980\C8\A8p\08\A0\D8\F0\80h\80\90\F8@\A8\88\F0\A08\88\D8P8\C0 @\80P  `X\C8\98H\A0\10\80\C8\A0\90p\10p\988\888\D8\08\18\C0\90\B0\C80H(H\F0xx\A0P\98\90\D8\E0\98(\90\A0X\B8\B8\C0\80\00\C8Hp\D0\F8\98\00\98\08(\10\A8\98@\B0X\18\E8\88 \98\E8\D0\C0\F0\88\00\E8\C8\08\D8h\B8@\C0\08`\B8x\D0P\10@\88\88H\08p\B8\F8x\88\088\E8\D0`\10@\A8p0 \B8\E0HX\80\B8H\A8\E0\D8\A0\E8@\A80\98@\98\10\C8\A88\90\C0@x\A8\08\80\D8\10\08h \80`\A0X\88`8\10\808X\10\D0\C8\18`\F0 \E8\C0h\A8(\00\C0(\C8`\B8\08H\D8h\E8p\F8\08\08\F8\C0\98 \00\A8\E8P\F8@\08\18P `\F0\E80P\10\90\C8\100X(p\E8X\A88\A0\E8\10\80\F80P\C8\A8\98H\D8\E0H\D0\98\C0\00\E00\88\A8`\10\98", align 16
@ld_Rdbfr = common global [2048 x i8] zeroinitializer, align 16
@ld_Rdptr = common local_unnamed_addr global i8* null, align 8
@System_Stream_Flag = common local_unnamed_addr global i32 0, align 4
@ld_Rdmax = common local_unnamed_addr global i8* null, align 8
@ld_Bfr = common local_unnamed_addr global i32 0, align 4
@ld_Incnt = common local_unnamed_addr global i32 0, align 4
@evalue = common local_unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main() local_unnamed_addr #0 {
entry:
  %PMV = alloca [2 x [2 x [2 x i32]]], align 16
  %motion_vertical_field_select = alloca [2 x [2 x i32]], align 16
  store i32 0, i32* @evalue, align 4, !tbaa !2
  store i32 0, i32* @System_Stream_Flag, align 4, !tbaa !2
  br label %for.body

for.body:                                         ; preds = %for.inc30, %entry
  %indvars.iv150 = phi i64 [ 0, %entry ], [ %indvars.iv.next151, %for.inc30 ]
  %scevgep146 = getelementptr [2 x [2 x i32]], [2 x [2 x i32]]* %motion_vertical_field_select, i64 0, i64 %indvars.iv150, i64 0
  %ccload.ccgepi.0.mul.x.sext = trunc i64 %indvars.iv150 to i32
  %ccload.ccgepi.0.mul.x = shl i32 %ccload.ccgepi.0.mul.x.sext, 1
  %cond = icmp eq i32 %ccload.ccgepi.0.mul.x, 0
  %. = select i1 %cond, i32 232, i32 32
  %ccload.ccgepi.1.mul.x.1.add = or i32 %ccload.ccgepi.0.mul.x, 1
  %cond74 = icmp eq i32 %ccload.ccgepi.1.mul.x.1.add, 1
  %ccload.ccgepi.1.phi.i = select i1 %cond74, i32 200, i32 240
  store i32 %., i32* %scevgep146, align 8
  %ccgepi.12 = getelementptr [2 x [2 x i32]], [2 x [2 x i32]]* %motion_vertical_field_select, i64 0, i64 %indvars.iv150, i64 1
  store i32 %ccload.ccgepi.1.phi.i, i32* %ccgepi.12, align 4
  %ccload.ccgepi.05.mul.x = shl i32 %ccload.ccgepi.0.mul.x.sext, 2
  br label %for.inc27

for.inc27:                                        ; preds = %__non_const_wrapper__.25.exit, %for.body
  %indvars.iv143 = phi i64 [ 0, %for.body ], [ %indvars.iv.next144, %__non_const_wrapper__.25.exit ]
  %scevgep = getelementptr [2 x [2 x [2 x i32]]], [2 x [2 x [2 x i32]]]* %PMV, i64 0, i64 %indvars.iv150, i64 %indvars.iv143, i64 0
  %ccload.ccgepi.05.mul.x.x.sext = trunc i64 %indvars.iv143 to i32
  %ccload.ccgepi.05.mul.x.x = shl i32 %ccload.ccgepi.05.mul.x.x.sext, 1
  %ccload.ccgepi.05.mul.x.x.0.add = add i32 %ccload.ccgepi.05.mul.x.x, %ccload.ccgepi.05.mul.x
  switch i32 %ccload.ccgepi.05.mul.x.x.0.add, label %__non_const_wrapper__.24.exit [
    i32 0, label %__non_const_wrapper__.25.exit
    i32 2, label %csroa.if.end4.i44
    i32 4, label %csroa.if.end9.i43
  ]

__non_const_wrapper__.24.exit:                    ; preds = %for.inc27
  %ccload.ccgepi.18.mul.x.x.1.add = or i32 %ccload.ccgepi.05.mul.x.x.0.add, 1
  switch i32 %ccload.ccgepi.18.mul.x.x.1.add, label %csroa.if.end14.i42 [
    i32 1, label %__non_const_wrapper__.25.exit
    i32 3, label %csroa.if.end4.i44
    i32 5, label %csroa.if.end9.i43
  ]

csroa.if.end14.i42:                               ; preds = %__non_const_wrapper__.24.exit
  br label %csroa.if.end9.i43

csroa.if.end9.i43:                                ; preds = %for.inc27, %__non_const_wrapper__.24.exit, %csroa.if.end14.i42
  %ccload.ccgepi.05.phi10.i82 = phi i32 [ 120, %csroa.if.end14.i42 ], [ 120, %__non_const_wrapper__.24.exit ], [ 4, %for.inc27 ]
  %ccload.ccgepi.18.phi10.i = phi i32 [ 216, %csroa.if.end14.i42 ], [ 180, %__non_const_wrapper__.24.exit ], [ 180, %for.inc27 ]
  br label %csroa.if.end4.i44

csroa.if.end4.i44:                                ; preds = %for.inc27, %__non_const_wrapper__.24.exit, %csroa.if.end9.i43
  %ccload.ccgepi.05.phi5.i79 = phi i32 [ %ccload.ccgepi.05.phi10.i82, %csroa.if.end9.i43 ], [ 120, %__non_const_wrapper__.24.exit ], [ 70, %for.inc27 ]
  %ccload.ccgepi.18.phi5.i = phi i32 [ %ccload.ccgepi.18.phi10.i, %csroa.if.end9.i43 ], [ 41, %__non_const_wrapper__.24.exit ], [ 41, %for.inc27 ]
  br label %__non_const_wrapper__.25.exit

__non_const_wrapper__.25.exit:                    ; preds = %for.inc27, %__non_const_wrapper__.24.exit, %csroa.if.end4.i44
  %ccload.ccgepi.05.phi.i76 = phi i32 [ %ccload.ccgepi.05.phi5.i79, %csroa.if.end4.i44 ], [ 120, %__non_const_wrapper__.24.exit ], [ 45, %for.inc27 ]
  %ccload.ccgepi.18.phi.i = phi i32 [ %ccload.ccgepi.18.phi5.i, %csroa.if.end4.i44 ], [ 207, %__non_const_wrapper__.24.exit ], [ 207, %for.inc27 ]
  store i32 %ccload.ccgepi.05.phi.i76, i32* %scevgep, align 8
  %ccgepi.17 = getelementptr [2 x [2 x [2 x i32]]], [2 x [2 x [2 x i32]]]* %PMV, i64 0, i64 %indvars.iv150, i64 %indvars.iv143, i64 1
  store i32 %ccload.ccgepi.18.phi.i, i32* %ccgepi.17, align 4
  %indvars.iv.next144 = add nuw nsw i64 %indvars.iv143, 1
  %exitcond145 = icmp eq i64 %indvars.iv.next144, 2
  br i1 %exitcond145, label %for.inc30, label %for.inc27

for.inc30:                                        ; preds = %__non_const_wrapper__.25.exit
  %indvars.iv.next151 = add nuw nsw i64 %indvars.iv150, 1
  %exitcond152 = icmp eq i64 %indvars.iv.next151, 2
  br i1 %exitcond152, label %for.end32, label %for.body

for.end32:                                        ; preds = %for.inc30
  store i32 0, i32* @ld_Incnt, align 4, !tbaa !2
  store i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @ld_Rdbfr, i64 1, i64 0), i8** @ld_Rdptr, align 8, !tbaa !6
  store i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @ld_Rdbfr, i64 1, i64 0), i8** @ld_Rdmax, align 8, !tbaa !6
  store i32 68157440, i32* @ld_Bfr, align 4, !tbaa !2
  tail call void @Flush_Buffer.v0.C.c.c(i32 0) #4
  %motion_vertical_field_select.gepi.0.012.decay = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %motion_vertical_field_select, i64 0, i64 0, i64 0
  %call.c.i.c = tail call i32 @Get_Bits.v0.C.c.c(i32 1) #4
  store i32 %call.c.i.c, i32* %motion_vertical_field_select.gepi.0.012.decay, align 16, !tbaa !2
  %arraydecay.i = getelementptr inbounds [2 x [2 x [2 x i32]]], [2 x [2 x [2 x i32]]]* %PMV, i64 0, i64 0, i64 0, i64 0
  call void @motion_vector.v0.C.c.c(i32* nonnull %arraydecay.i) #4
  %0 = load i32, i32* %arraydecay.i, align 16, !tbaa !2
  %arrayidx17.i = getelementptr inbounds [2 x [2 x [2 x i32]]], [2 x [2 x [2 x i32]]]* %PMV, i64 0, i64 1, i64 0, i64 0
  store i32 %0, i32* %arrayidx17.i, align 16, !tbaa !2
  %arrayidx21.i = getelementptr inbounds [2 x [2 x [2 x i32]]], [2 x [2 x [2 x i32]]]* %PMV, i64 0, i64 0, i64 0, i64 1
  %1 = load i32, i32* %arrayidx21.i, align 4, !tbaa !2
  %arrayidx25.i = getelementptr inbounds [2 x [2 x [2 x i32]]], [2 x [2 x [2 x i32]]]* %PMV, i64 0, i64 1, i64 0, i64 1
  store i32 %1, i32* %arrayidx25.i, align 4, !tbaa !2
  br label %for.cond38.preheader

for.cond38.preheader:                             ; preds = %for.inc75, %for.end32
  %indvars.iv132 = phi i64 [ 0, %for.end32 ], [ %indvars.iv.next133, %for.inc75 ]
  %main_result.0124 = phi i32 [ 0, %for.end32 ], [ %add68, %for.inc75 ]
  %.mul.x.sext = trunc i64 %indvars.iv132 to i32
  %.mul.x = shl i32 %.mul.x.sext, 1
  %.mul.x18 = shl i32 %.mul.x.sext, 2
  br label %for.body40

for.body40:                                       ; preds = %for.inc72, %for.cond38.preheader
  %indvars.iv129 = phi i64 [ 0, %for.cond38.preheader ], [ %indvars.iv.next130, %for.inc72 ]
  %main_result.1122 = phi i32 [ %main_result.0124, %for.cond38.preheader ], [ %add68, %for.inc72 ]
  %arrayidx44 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %motion_vertical_field_select, i64 0, i64 %indvars.iv132, i64 %indvars.iv129
  %2 = load i32, i32* %arrayidx44, align 4, !tbaa !2
  %.mul.x.x.sext = trunc i64 %indvars.iv129 to i32
  %.mul.x.x.add = add i32 %.mul.x.x.sext, %.mul.x
  switch i32 %.mul.x.x.add, label %csroa.if.end14.i53 [
    i32 0, label %__non_const_wrapper__.26.exit
    i32 1, label %csroa.if.end4.i55
    i32 2, label %csroa.if.end9.i54
  ]

csroa.if.end14.i53:                               ; preds = %for.body40
  br label %csroa.if.end9.i54

csroa.if.end9.i54:                                ; preds = %for.body40, %csroa.if.end14.i53
  %.phi10.i = phi i32 [ 240, %csroa.if.end14.i53 ], [ 0, %for.body40 ]
  br label %csroa.if.end4.i55

csroa.if.end4.i55:                                ; preds = %for.body40, %csroa.if.end9.i54
  %.phi5.i = phi i32 [ %.phi10.i, %csroa.if.end9.i54 ], [ 200, %for.body40 ]
  br label %__non_const_wrapper__.26.exit

__non_const_wrapper__.26.exit:                    ; preds = %for.body40, %csroa.if.end4.i55
  %.phi.i = phi i32 [ %.phi5.i, %csroa.if.end4.i55 ], [ 0, %for.body40 ]
  %cmp49 = icmp ne i32 %2, %.phi.i
  %conv = zext i1 %cmp49 to i32
  %add = add nsw i32 %conv, %main_result.1122
  %.mul.x.x21 = shl i32 %.mul.x.x.sext, 1
  %.mul.x.x.add22 = add i32 %.mul.x.x21, %.mul.x18
  br label %for.body53

for.body53:                                       ; preds = %__non_const_wrapper__.27.exit, %__non_const_wrapper__.26.exit
  %indvars.iv = phi i64 [ 0, %__non_const_wrapper__.26.exit ], [ %indvars.iv.next, %__non_const_wrapper__.27.exit ]
  %main_result.2120 = phi i32 [ %add, %__non_const_wrapper__.26.exit ], [ %add68, %__non_const_wrapper__.27.exit ]
  %arrayidx59 = getelementptr inbounds [2 x [2 x [2 x i32]]], [2 x [2 x [2 x i32]]]* %PMV, i64 0, i64 %indvars.iv132, i64 %indvars.iv129, i64 %indvars.iv
  %3 = load i32, i32* %arrayidx59, align 4, !tbaa !2
  %.mul.x.x.x.sext = trunc i64 %indvars.iv to i32
  %.mul.x.x.x.add = add i32 %.mul.x.x.add22, %.mul.x.x.x.sext
  switch i32 %.mul.x.x.x.add, label %csroa.if.end34.i [
    i32 0, label %__non_const_wrapper__.27.exit
    i32 1, label %csroa.if.end4.i72
    i32 2, label %csroa.if.end9.i70
    i32 3, label %csroa.if.end14.i68
    i32 4, label %csroa.if.end19.i
    i32 5, label %csroa.if.end24.i
    i32 6, label %csroa.if.end29.i
  ]

csroa.if.end34.i:                                 ; preds = %for.body53
  br label %csroa.if.end29.i

csroa.if.end29.i:                                 ; preds = %for.body53, %csroa.if.end34.i
  %.phi30.i = phi i32 [ 216, %csroa.if.end34.i ], [ 120, %for.body53 ]
  br label %csroa.if.end24.i

csroa.if.end24.i:                                 ; preds = %for.body53, %csroa.if.end29.i
  %.phi25.i = phi i32 [ %.phi30.i, %csroa.if.end29.i ], [ 206, %for.body53 ]
  br label %csroa.if.end19.i

csroa.if.end19.i:                                 ; preds = %for.body53, %csroa.if.end24.i
  %.phi20.i = phi i32 [ %.phi25.i, %csroa.if.end24.i ], [ 1566, %for.body53 ]
  br label %csroa.if.end14.i68

csroa.if.end14.i68:                               ; preds = %for.body53, %csroa.if.end19.i
  %.phi15.i = phi i32 [ %.phi20.i, %csroa.if.end19.i ], [ 41, %for.body53 ]
  br label %csroa.if.end9.i70

csroa.if.end9.i70:                                ; preds = %for.body53, %csroa.if.end14.i68
  %.phi10.i69 = phi i32 [ %.phi15.i, %csroa.if.end14.i68 ], [ 70, %for.body53 ]
  br label %csroa.if.end4.i72

csroa.if.end4.i72:                                ; preds = %for.body53, %csroa.if.end9.i70
  %.phi5.i71 = phi i32 [ %.phi10.i69, %csroa.if.end9.i70 ], [ 206, %for.body53 ]
  br label %__non_const_wrapper__.27.exit

__non_const_wrapper__.27.exit:                    ; preds = %for.body53, %csroa.if.end4.i72
  %.phi.i73 = phi i32 [ %.phi5.i71, %csroa.if.end4.i72 ], [ 1566, %for.body53 ]
  %cmp66 = icmp ne i32 %3, %.phi.i73
  %conv67 = zext i1 %cmp66 to i32
  %add68 = add nsw i32 %conv67, %main_result.2120
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 2
  br i1 %exitcond, label %for.inc72, label %for.body53

for.inc72:                                        ; preds = %__non_const_wrapper__.27.exit
  %indvars.iv.next130 = add nuw nsw i64 %indvars.iv129, 1
  %exitcond131 = icmp eq i64 %indvars.iv.next130, 2
  br i1 %exitcond131, label %for.inc75, label %for.body40

for.inc75:                                        ; preds = %for.inc72
  %indvars.iv.next133 = add nuw nsw i64 %indvars.iv132, 1
  %exitcond134 = icmp eq i64 %indvars.iv.next133, 2
  br i1 %exitcond134, label %for.end77, label %for.cond38.preheader

for.end77:                                        ; preds = %for.inc75
  %call = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %add68)
  ret i32 %add68
}

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #1

; Function Attrs: norecurse nounwind
define i32 @Get_dmvector.v0.C.c() local_unnamed_addr #2 {
entry:
  %call.c.c = tail call i32 @Get_Bits.v0.C.c.c(i32 1) #4
  %tobool = icmp eq i32 %call.c.c, 0
  br i1 %tobool, label %return, label %if.then

if.then:                                          ; preds = %entry
  %call1.c.c = tail call i32 @Get_Bits.v0.C.c.c(i32 1) #4
  %tobool2 = icmp ne i32 %call1.c.c, 0
  %cond = select i1 %tobool2, i32 -1, i32 1
  br label %return

return:                                           ; preds = %if.then, %entry
  %retval.0 = phi i32 [ %cond, %if.then ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: norecurse nounwind
define void @motion_vector.v0.C.c.c(i32* nocapture %PMV) local_unnamed_addr #2 {
entry:
  %call.c.i.c = tail call i32 @Get_Bits1.v0.C.c.c()
  %tobool.i = icmp eq i32 %call.c.i.c, 0
  br i1 %tobool.i, label %if.end.i, label %if.else.i

if.end.i:                                         ; preds = %entry
  %0 = load i32, i32* @ld_Bfr, align 4, !tbaa !2
  %shr.i = lshr i32 %0, 23
  %cmp.i = icmp ugt i32 %0, 536870911
  br i1 %cmp.i, label %if.then2.i, label %if.end14.i

if.then2.i:                                       ; preds = %if.end.i
  %shr71.i = lshr i32 %0, 29
  %.mul.x.i = shl nuw nsw i32 %shr71.i, 1
  %.mul.x.1.add.i = or i32 %.mul.x.i, 1
  %trunc8 = trunc i32 %.mul.x.1.add.i to i4
  switch i4 %trunc8, label %csroa.if.end19.i [
    i4 1, label %__non_const_wrapper__.16.exit
    i4 3, label %csroa.if.end4.i
    i4 5, label %csroa.if.end9.i
    i4 7, label %csroa.if.end9.i
  ]

csroa.if.end19.i:                                 ; preds = %if.then2.i
  br label %csroa.if.end9.i

csroa.if.end9.i:                                  ; preds = %csroa.if.end19.i, %if.then2.i, %if.then2.i
  %.phi10.i = phi i32 [ 2, %if.then2.i ], [ 1, %csroa.if.end19.i ], [ 2, %if.then2.i ]
  br label %csroa.if.end4.i

csroa.if.end4.i:                                  ; preds = %if.then2.i, %csroa.if.end9.i
  %.phi5.i = phi i32 [ %.phi10.i, %csroa.if.end9.i ], [ 3, %if.then2.i ]
  br label %__non_const_wrapper__.16.exit

__non_const_wrapper__.16.exit:                    ; preds = %if.then2.i, %csroa.if.end4.i
  %.phi.i = phi i32 [ %.phi5.i, %csroa.if.end4.i ], [ 0, %if.then2.i ]
  tail call void @Flush_Buffer.v0.C.c.c(i32 %.phi.i)
  %call4.c.i.c = tail call i32 @Get_Bits1.v0.C.c.c()
  %tobool5.i = icmp ne i32 %call4.c.i.c, 0
  %trunc9 = trunc i32 %.mul.x.i to i4
  switch i4 %trunc9, label %csroa.if.end19.i28 [
    i4 0, label %__non_const_wrapper__.17.exit
    i4 2, label %csroa.if.end4.i34
    i4 4, label %csroa.if.end9.i32
    i4 6, label %csroa.if.end9.i32
  ]

csroa.if.end19.i28:                               ; preds = %__non_const_wrapper__.16.exit
  br label %csroa.if.end9.i32

csroa.if.end9.i32:                                ; preds = %csroa.if.end19.i28, %__non_const_wrapper__.16.exit, %__non_const_wrapper__.16.exit
  %.phi10.i31 = phi i32 [ 2, %__non_const_wrapper__.16.exit ], [ 1, %csroa.if.end19.i28 ], [ 2, %__non_const_wrapper__.16.exit ]
  br label %csroa.if.end4.i34

csroa.if.end4.i34:                                ; preds = %__non_const_wrapper__.16.exit, %csroa.if.end9.i32
  %.phi5.i33 = phi i32 [ %.phi10.i31, %csroa.if.end9.i32 ], [ 3, %__non_const_wrapper__.16.exit ]
  br label %__non_const_wrapper__.17.exit

__non_const_wrapper__.17.exit:                    ; preds = %__non_const_wrapper__.16.exit, %csroa.if.end4.i34
  %.phi.i35 = phi i32 [ %.phi5.i33, %csroa.if.end4.i34 ], [ -1, %__non_const_wrapper__.16.exit ]
  %sub.i = sub nsw i32 0, %.phi.i35
  %cond.i = select i1 %tobool5.i, i32 %sub.i, i32 %.phi.i35
  br label %Get_motion_code.v0.C.c.exit

if.end14.i:                                       ; preds = %if.end.i
  %cmp15.i = icmp ugt i32 %0, 201326591
  br i1 %cmp15.i, label %if.then17.i, label %if.end38.i

if.then17.i:                                      ; preds = %if.end14.i
  %shr1872.i = lshr i32 %0, 26
  %.mul.x6.i = shl nuw nsw i32 %shr1872.i, 1
  %.mul.x.1.add9.i = or i32 %.mul.x6.i, 1
  %trunc6 = trunc i32 %.mul.x.1.add9.i to i7
  switch i7 %trunc6, label %csroa.if.end29.i61 [
    i7 1, label %__non_const_wrapper__.18.exit
    i7 3, label %__non_const_wrapper__.18.exit
    i7 5, label %__non_const_wrapper__.18.exit
    i7 7, label %csroa.if.end14.i65
    i7 9, label %csroa.if.end14.i65
    i7 11, label %csroa.if.end14.i65
  ]

csroa.if.end29.i61:                               ; preds = %if.then17.i
  br label %csroa.if.end14.i65

csroa.if.end14.i65:                               ; preds = %if.then17.i, %if.then17.i, %csroa.if.end29.i61, %if.then17.i
  %.phi15.i64 = phi i32 [ 6, %if.then17.i ], [ 6, %if.then17.i ], [ 5, %csroa.if.end29.i61 ], [ 6, %if.then17.i ]
  br label %__non_const_wrapper__.18.exit

__non_const_wrapper__.18.exit:                    ; preds = %if.then17.i, %if.then17.i, %csroa.if.end14.i65, %if.then17.i
  %.phi.i70 = phi i32 [ 0, %if.then17.i ], [ 0, %if.then17.i ], [ %.phi15.i64, %csroa.if.end14.i65 ], [ 0, %if.then17.i ]
  tail call void @Flush_Buffer.v0.C.c.c(i32 %.phi.i70)
  %call23.c.i.c = tail call i32 @Get_Bits1.v0.C.c.c()
  %tobool24.i = icmp ne i32 %call23.c.i.c, 0
  %trunc7 = trunc i32 %.mul.x6.i to i7
  switch i7 %trunc7, label %csroa.if.end29.i96 [
    i7 0, label %__non_const_wrapper__.19.exit
    i7 2, label %__non_const_wrapper__.19.exit
    i7 4, label %__non_const_wrapper__.19.exit
    i7 6, label %csroa.if.end14.i102
    i7 8, label %csroa.if.end19.i100
    i7 10, label %csroa.if.end24.i98
  ]

csroa.if.end29.i96:                               ; preds = %__non_const_wrapper__.18.exit
  br label %csroa.if.end24.i98

csroa.if.end24.i98:                               ; preds = %__non_const_wrapper__.18.exit, %csroa.if.end29.i96
  %.phi25.i97 = phi i32 [ 4, %csroa.if.end29.i96 ], [ 5, %__non_const_wrapper__.18.exit ]
  br label %csroa.if.end19.i100

csroa.if.end19.i100:                              ; preds = %__non_const_wrapper__.18.exit, %csroa.if.end24.i98
  %.phi20.i99 = phi i32 [ %.phi25.i97, %csroa.if.end24.i98 ], [ 6, %__non_const_wrapper__.18.exit ]
  br label %csroa.if.end14.i102

csroa.if.end14.i102:                              ; preds = %__non_const_wrapper__.18.exit, %csroa.if.end19.i100
  %.phi15.i101 = phi i32 [ %.phi20.i99, %csroa.if.end19.i100 ], [ 7, %__non_const_wrapper__.18.exit ]
  br label %__non_const_wrapper__.19.exit

__non_const_wrapper__.19.exit:                    ; preds = %__non_const_wrapper__.18.exit, %__non_const_wrapper__.18.exit, %csroa.if.end14.i102, %__non_const_wrapper__.18.exit
  %.phi.i107 = phi i32 [ -1, %__non_const_wrapper__.18.exit ], [ -1, %__non_const_wrapper__.18.exit ], [ %.phi15.i101, %csroa.if.end14.i102 ], [ -1, %__non_const_wrapper__.18.exit ]
  %sub30.i = sub nsw i32 0, %.phi.i107
  %cond37.i = select i1 %tobool24.i, i32 %sub30.i, i32 %.phi.i107
  br label %Get_motion_code.v0.C.c.exit

if.end38.i:                                       ; preds = %if.end14.i
  %cmp40.i = icmp ult i32 %0, 100663296
  br i1 %cmp40.i, label %if.else.i, label %if.end43.i

if.end43.i:                                       ; preds = %if.end38.i
  %sub39.i = shl nuw nsw i32 %shr.i, 1
  %.mul.x18.i = add nsw i32 %sub39.i, -24
  %.mul.x.1.add21.i = or i32 %.mul.x18.i, 1
  switch i32 %.mul.x.1.add21.i, label %csroa.if.end29.i133 [
    i32 1, label %__non_const_wrapper__.20.exit
    i32 3, label %__non_const_wrapper__.20.exit
    i32 5, label %__non_const_wrapper__.20.exit
    i32 7, label %__non_const_wrapper__.20.exit
    i32 9, label %__non_const_wrapper__.20.exit
    i32 11, label %__non_const_wrapper__.20.exit
  ]

csroa.if.end29.i133:                              ; preds = %if.end43.i
  br label %__non_const_wrapper__.20.exit

__non_const_wrapper__.20.exit:                    ; preds = %if.end43.i, %if.end43.i, %csroa.if.end29.i133, %if.end43.i, %if.end43.i, %if.end43.i, %if.end43.i
  %.phi.i144 = phi i32 [ 9, %if.end43.i ], [ 9, %if.end43.i ], [ 9, %if.end43.i ], [ 9, %if.end43.i ], [ 9, %if.end43.i ], [ 8, %csroa.if.end29.i133 ], [ 9, %if.end43.i ]
  tail call void @Flush_Buffer.v0.C.c.c(i32 %.phi.i144)
  %call48.c.i.c = tail call i32 @Get_Bits1.v0.C.c.c()
  %tobool49.i = icmp ne i32 %call48.c.i.c, 0
  %trunc5 = trunc i32 %sub39.i to i10
  switch i10 %trunc5, label %csroa.if.end49.i182 [
    i10 24, label %__non_const_wrapper__.21.exit
    i10 26, label %csroa.if.end4.i196
    i10 28, label %csroa.if.end9.i194
    i10 30, label %csroa.if.end14.i192
    i10 32, label %csroa.if.end19.i190
    i10 34, label %csroa.if.end24.i188
    i10 36, label %csroa.if.end29.i186
    i10 38, label %csroa.if.end29.i186
    i10 40, label %csroa.if.end39.i184
    i10 42, label %csroa.if.end39.i184
  ]

csroa.if.end49.i182:                              ; preds = %__non_const_wrapper__.20.exit
  br label %csroa.if.end39.i184

csroa.if.end39.i184:                              ; preds = %csroa.if.end49.i182, %__non_const_wrapper__.20.exit, %__non_const_wrapper__.20.exit
  %.phi40.i = phi i32 [ 150994944, %__non_const_wrapper__.20.exit ], [ 134217728, %csroa.if.end49.i182 ], [ 150994944, %__non_const_wrapper__.20.exit ]
  br label %csroa.if.end29.i186

csroa.if.end29.i186:                              ; preds = %csroa.if.end39.i184, %__non_const_wrapper__.20.exit, %__non_const_wrapper__.20.exit
  %.phi30.i = phi i32 [ 167772160, %__non_const_wrapper__.20.exit ], [ %.phi40.i, %csroa.if.end39.i184 ], [ 167772160, %__non_const_wrapper__.20.exit ]
  br label %csroa.if.end24.i188

csroa.if.end24.i188:                              ; preds = %__non_const_wrapper__.20.exit, %csroa.if.end29.i186
  %.phi25.i187 = phi i32 [ %.phi30.i, %csroa.if.end29.i186 ], [ 184549376, %__non_const_wrapper__.20.exit ]
  br label %csroa.if.end19.i190

csroa.if.end19.i190:                              ; preds = %__non_const_wrapper__.20.exit, %csroa.if.end24.i188
  %.phi20.i189 = phi i32 [ %.phi25.i187, %csroa.if.end24.i188 ], [ 201326592, %__non_const_wrapper__.20.exit ]
  br label %csroa.if.end14.i192

csroa.if.end14.i192:                              ; preds = %__non_const_wrapper__.20.exit, %csroa.if.end19.i190
  %.phi15.i191 = phi i32 [ %.phi20.i189, %csroa.if.end19.i190 ], [ 218103808, %__non_const_wrapper__.20.exit ]
  br label %csroa.if.end9.i194

csroa.if.end9.i194:                               ; preds = %__non_const_wrapper__.20.exit, %csroa.if.end14.i192
  %.phi10.i193 = phi i32 [ %.phi15.i191, %csroa.if.end14.i192 ], [ 234881024, %__non_const_wrapper__.20.exit ]
  br label %csroa.if.end4.i196

csroa.if.end4.i196:                               ; preds = %__non_const_wrapper__.20.exit, %csroa.if.end9.i194
  %.phi5.i195 = phi i32 [ %.phi10.i193, %csroa.if.end9.i194 ], [ 251658240, %__non_const_wrapper__.20.exit ]
  br label %__non_const_wrapper__.21.exit

__non_const_wrapper__.21.exit:                    ; preds = %__non_const_wrapper__.20.exit, %csroa.if.end4.i196
  %.phi.i197 = phi i32 [ %.phi5.i195, %csroa.if.end4.i196 ], [ 268435456, %__non_const_wrapper__.20.exit ]
  %conv54.i = ashr exact i32 %.phi.i197, 24
  %sub55.i = sub nsw i32 0, %conv54.i
  %cond62.i = select i1 %tobool49.i, i32 %sub55.i, i32 %conv54.i
  br label %Get_motion_code.v0.C.c.exit

Get_motion_code.v0.C.c.exit:                      ; preds = %__non_const_wrapper__.17.exit, %__non_const_wrapper__.19.exit, %__non_const_wrapper__.21.exit
  %retval.0.i = phi i32 [ %cond.i, %__non_const_wrapper__.17.exit ], [ %cond37.i, %__non_const_wrapper__.19.exit ], [ %cond62.i, %__non_const_wrapper__.21.exit ]
  %cmp1 = icmp eq i32 %retval.0.i, 0
  br i1 %cmp1, label %if.else.i, label %cond.end

cond.end:                                         ; preds = %Get_motion_code.v0.C.c.exit
  %call2.c.c = tail call i32 @Get_Bits.v0.C.c.c(i32 200)
  %1 = load i32, i32* %PMV, align 4, !tbaa !2
  %cmp.i198 = icmp sgt i32 %retval.0.i, 0
  %sub.i199 = shl i32 %retval.0.i, 8
  br i1 %cmp.i198, label %if.then.i, label %if.then9.i

if.then.i:                                        ; preds = %cond.end
  %shl1.i = add i32 %sub.i199, -255
  %add2.i = add i32 %shl1.i, %call2.c.c
  %add3.i = add i32 %add2.i, %1
  %cmp4.i = icmp slt i32 %add3.i, 4096
  %sub7.i = add nsw i32 %add3.i, -8192
  %add3.sub7.i = select i1 %cmp4.i, i32 %add3.i, i32 %sub7.i
  br label %decode_motion_vector.v0.C.c.exit

if.else.i:                                        ; preds = %if.end38.i, %entry, %Get_motion_code.v0.C.c.exit
  %2 = load i32, i32* %PMV, align 4, !tbaa !2
  br label %decode_motion_vector.v0.C.c.exit

if.then9.i:                                       ; preds = %cond.end
  %shl12.i = xor i32 %sub.i199, -256
  %add13.neg.i = xor i32 %call2.c.c, -1
  %add14.neg.i = sub i32 %add13.neg.i, %shl12.i
  %sub15.i = add i32 %1, %add14.neg.i
  %cmp17.i = icmp slt i32 %sub15.i, -4096
  %add20.i = add nsw i32 %sub15.i, 8192
  %add20.sub15.i = select i1 %cmp17.i, i32 %add20.i, i32 %sub15.i
  br label %decode_motion_vector.v0.C.c.exit

decode_motion_vector.v0.C.c.exit:                 ; preds = %if.else.i, %if.then.i, %if.then9.i
  %vec.0.i = phi i32 [ %2, %if.else.i ], [ %add3.sub7.i, %if.then.i ], [ %add20.sub15.i, %if.then9.i ]
  store i32 %vec.0.i, i32* %PMV, align 4, !tbaa !2
  %call.c.i200.c = tail call i32 @Get_Bits1.v0.C.c.c()
  %tobool.i201 = icmp eq i32 %call.c.i200.c, 0
  br i1 %tobool.i201, label %if.end.i203, label %if.else.i511

if.end.i203:                                      ; preds = %decode_motion_vector.v0.C.c.exit
  %3 = load i32, i32* @ld_Bfr, align 4, !tbaa !2
  %shr.i240 = lshr i32 %3, 23
  %cmp.i202 = icmp ugt i32 %3, 536870911
  br i1 %cmp.i202, label %if.then2.i213, label %if.end14.i215

if.then2.i213:                                    ; preds = %if.end.i203
  %shr71.i204 = lshr i32 %3, 29
  %.mul.x.i205 = shl nuw nsw i32 %shr71.i204, 1
  %.mul.x.1.add.i206 = or i32 %.mul.x.i205, 1
  %trunc3 = trunc i32 %.mul.x.1.add.i206 to i4
  switch i4 %trunc3, label %csroa.if.end19.i268 [
    i4 1, label %__non_const_wrapper__.16.exit276
    i4 3, label %csroa.if.end4.i274
    i4 5, label %csroa.if.end9.i272
    i4 7, label %csroa.if.end9.i272
  ]

csroa.if.end19.i268:                              ; preds = %if.then2.i213
  br label %csroa.if.end9.i272

csroa.if.end9.i272:                               ; preds = %csroa.if.end19.i268, %if.then2.i213, %if.then2.i213
  %.phi10.i271 = phi i32 [ 2, %if.then2.i213 ], [ 1, %csroa.if.end19.i268 ], [ 2, %if.then2.i213 ]
  br label %csroa.if.end4.i274

csroa.if.end4.i274:                               ; preds = %if.then2.i213, %csroa.if.end9.i272
  %.phi5.i273 = phi i32 [ %.phi10.i271, %csroa.if.end9.i272 ], [ 3, %if.then2.i213 ]
  br label %__non_const_wrapper__.16.exit276

__non_const_wrapper__.16.exit276:                 ; preds = %if.then2.i213, %csroa.if.end4.i274
  %.phi.i275 = phi i32 [ %.phi5.i273, %csroa.if.end4.i274 ], [ 0, %if.then2.i213 ]
  tail call void @Flush_Buffer.v0.C.c.c(i32 %.phi.i275)
  %call4.c.i208.c = tail call i32 @Get_Bits1.v0.C.c.c()
  %tobool5.i209 = icmp ne i32 %call4.c.i208.c, 0
  %trunc4 = trunc i32 %.mul.x.i205 to i4
  switch i4 %trunc4, label %csroa.if.end19.i304 [
    i4 0, label %__non_const_wrapper__.17.exit312
    i4 2, label %csroa.if.end4.i310
    i4 4, label %csroa.if.end9.i308
    i4 6, label %csroa.if.end9.i308
  ]

csroa.if.end19.i304:                              ; preds = %__non_const_wrapper__.16.exit276
  br label %csroa.if.end9.i308

csroa.if.end9.i308:                               ; preds = %csroa.if.end19.i304, %__non_const_wrapper__.16.exit276, %__non_const_wrapper__.16.exit276
  %.phi10.i307 = phi i32 [ 2, %__non_const_wrapper__.16.exit276 ], [ 1, %csroa.if.end19.i304 ], [ 2, %__non_const_wrapper__.16.exit276 ]
  br label %csroa.if.end4.i310

csroa.if.end4.i310:                               ; preds = %__non_const_wrapper__.16.exit276, %csroa.if.end9.i308
  %.phi5.i309 = phi i32 [ %.phi10.i307, %csroa.if.end9.i308 ], [ 3, %__non_const_wrapper__.16.exit276 ]
  br label %__non_const_wrapper__.17.exit312

__non_const_wrapper__.17.exit312:                 ; preds = %__non_const_wrapper__.16.exit276, %csroa.if.end4.i310
  %.phi.i311 = phi i32 [ %.phi5.i309, %csroa.if.end4.i310 ], [ -1, %__non_const_wrapper__.16.exit276 ]
  %sub.i211 = sub nsw i32 0, %.phi.i311
  %cond.i212 = select i1 %tobool5.i209, i32 %sub.i211, i32 %.phi.i311
  br label %Get_motion_code.v0.C.c.exit239

if.end14.i215:                                    ; preds = %if.end.i203
  %cmp15.i214 = icmp ugt i32 %3, 201326591
  br i1 %cmp15.i214, label %if.then17.i225, label %if.end38.i227

if.then17.i225:                                   ; preds = %if.end14.i215
  %shr1872.i216 = lshr i32 %3, 26
  %.mul.x6.i217 = shl nuw nsw i32 %shr1872.i216, 1
  %.mul.x.1.add9.i218 = or i32 %.mul.x6.i217, 1
  %trunc1 = trunc i32 %.mul.x.1.add9.i218 to i7
  switch i7 %trunc1, label %csroa.if.end29.i338 [
    i7 1, label %__non_const_wrapper__.18.exit350
    i7 3, label %__non_const_wrapper__.18.exit350
    i7 5, label %__non_const_wrapper__.18.exit350
    i7 7, label %csroa.if.end14.i344
    i7 9, label %csroa.if.end14.i344
    i7 11, label %csroa.if.end14.i344
  ]

csroa.if.end29.i338:                              ; preds = %if.then17.i225
  br label %csroa.if.end14.i344

csroa.if.end14.i344:                              ; preds = %if.then17.i225, %if.then17.i225, %csroa.if.end29.i338, %if.then17.i225
  %.phi15.i343 = phi i32 [ 6, %if.then17.i225 ], [ 6, %if.then17.i225 ], [ 5, %csroa.if.end29.i338 ], [ 6, %if.then17.i225 ]
  br label %__non_const_wrapper__.18.exit350

__non_const_wrapper__.18.exit350:                 ; preds = %if.then17.i225, %if.then17.i225, %csroa.if.end14.i344, %if.then17.i225
  %.phi.i349 = phi i32 [ 0, %if.then17.i225 ], [ 0, %if.then17.i225 ], [ %.phi15.i343, %csroa.if.end14.i344 ], [ 0, %if.then17.i225 ]
  tail call void @Flush_Buffer.v0.C.c.c(i32 %.phi.i349)
  %call23.c.i220.c = tail call i32 @Get_Bits1.v0.C.c.c()
  %tobool24.i221 = icmp ne i32 %call23.c.i220.c, 0
  %trunc2 = trunc i32 %.mul.x6.i217 to i7
  switch i7 %trunc2, label %csroa.if.end29.i376 [
    i7 0, label %__non_const_wrapper__.19.exit388
    i7 2, label %__non_const_wrapper__.19.exit388
    i7 4, label %__non_const_wrapper__.19.exit388
    i7 6, label %csroa.if.end14.i382
    i7 8, label %csroa.if.end19.i380
    i7 10, label %csroa.if.end24.i378
  ]

csroa.if.end29.i376:                              ; preds = %__non_const_wrapper__.18.exit350
  br label %csroa.if.end24.i378

csroa.if.end24.i378:                              ; preds = %__non_const_wrapper__.18.exit350, %csroa.if.end29.i376
  %.phi25.i377 = phi i32 [ 4, %csroa.if.end29.i376 ], [ 5, %__non_const_wrapper__.18.exit350 ]
  br label %csroa.if.end19.i380

csroa.if.end19.i380:                              ; preds = %__non_const_wrapper__.18.exit350, %csroa.if.end24.i378
  %.phi20.i379 = phi i32 [ %.phi25.i377, %csroa.if.end24.i378 ], [ 6, %__non_const_wrapper__.18.exit350 ]
  br label %csroa.if.end14.i382

csroa.if.end14.i382:                              ; preds = %__non_const_wrapper__.18.exit350, %csroa.if.end19.i380
  %.phi15.i381 = phi i32 [ %.phi20.i379, %csroa.if.end19.i380 ], [ 7, %__non_const_wrapper__.18.exit350 ]
  br label %__non_const_wrapper__.19.exit388

__non_const_wrapper__.19.exit388:                 ; preds = %__non_const_wrapper__.18.exit350, %__non_const_wrapper__.18.exit350, %csroa.if.end14.i382, %__non_const_wrapper__.18.exit350
  %.phi.i387 = phi i32 [ -1, %__non_const_wrapper__.18.exit350 ], [ -1, %__non_const_wrapper__.18.exit350 ], [ %.phi15.i381, %csroa.if.end14.i382 ], [ -1, %__non_const_wrapper__.18.exit350 ]
  %sub30.i223 = sub nsw i32 0, %.phi.i387
  %cond37.i224 = select i1 %tobool24.i221, i32 %sub30.i223, i32 %.phi.i387
  br label %Get_motion_code.v0.C.c.exit239

if.end38.i227:                                    ; preds = %if.end14.i215
  %cmp40.i226 = icmp ult i32 %3, 100663296
  br i1 %cmp40.i226, label %if.else.i511, label %if.end43.i237

if.end43.i237:                                    ; preds = %if.end38.i227
  %sub39.i228 = shl nuw nsw i32 %shr.i240, 1
  %.mul.x18.i229 = add nsw i32 %sub39.i228, -24
  %.mul.x.1.add21.i230 = or i32 %.mul.x18.i229, 1
  switch i32 %.mul.x.1.add21.i230, label %csroa.if.end29.i430 [
    i32 1, label %__non_const_wrapper__.20.exit442
    i32 3, label %__non_const_wrapper__.20.exit442
    i32 5, label %__non_const_wrapper__.20.exit442
    i32 7, label %__non_const_wrapper__.20.exit442
    i32 9, label %__non_const_wrapper__.20.exit442
    i32 11, label %__non_const_wrapper__.20.exit442
  ]

csroa.if.end29.i430:                              ; preds = %if.end43.i237
  br label %__non_const_wrapper__.20.exit442

__non_const_wrapper__.20.exit442:                 ; preds = %if.end43.i237, %if.end43.i237, %csroa.if.end29.i430, %if.end43.i237, %if.end43.i237, %if.end43.i237, %if.end43.i237
  %.phi.i441 = phi i32 [ 9, %if.end43.i237 ], [ 9, %if.end43.i237 ], [ 9, %if.end43.i237 ], [ 9, %if.end43.i237 ], [ 9, %if.end43.i237 ], [ 8, %csroa.if.end29.i430 ], [ 9, %if.end43.i237 ]
  tail call void @Flush_Buffer.v0.C.c.c(i32 %.phi.i441)
  %call48.c.i232.c = tail call i32 @Get_Bits1.v0.C.c.c()
  %tobool49.i233 = icmp ne i32 %call48.c.i232.c, 0
  %trunc = trunc i32 %sub39.i228 to i10
  switch i10 %trunc, label %csroa.if.end49.i480 [
    i10 24, label %__non_const_wrapper__.21.exit500
    i10 26, label %csroa.if.end4.i498
    i10 28, label %csroa.if.end9.i496
    i10 30, label %csroa.if.end14.i494
    i10 32, label %csroa.if.end19.i492
    i10 34, label %csroa.if.end24.i490
    i10 36, label %csroa.if.end29.i488
    i10 38, label %csroa.if.end29.i488
    i10 40, label %csroa.if.end39.i484
    i10 42, label %csroa.if.end39.i484
  ]

csroa.if.end49.i480:                              ; preds = %__non_const_wrapper__.20.exit442
  br label %csroa.if.end39.i484

csroa.if.end39.i484:                              ; preds = %csroa.if.end49.i480, %__non_const_wrapper__.20.exit442, %__non_const_wrapper__.20.exit442
  %.phi40.i483 = phi i32 [ 150994944, %__non_const_wrapper__.20.exit442 ], [ 134217728, %csroa.if.end49.i480 ], [ 150994944, %__non_const_wrapper__.20.exit442 ]
  br label %csroa.if.end29.i488

csroa.if.end29.i488:                              ; preds = %csroa.if.end39.i484, %__non_const_wrapper__.20.exit442, %__non_const_wrapper__.20.exit442
  %.phi30.i487 = phi i32 [ 167772160, %__non_const_wrapper__.20.exit442 ], [ %.phi40.i483, %csroa.if.end39.i484 ], [ 167772160, %__non_const_wrapper__.20.exit442 ]
  br label %csroa.if.end24.i490

csroa.if.end24.i490:                              ; preds = %__non_const_wrapper__.20.exit442, %csroa.if.end29.i488
  %.phi25.i489 = phi i32 [ %.phi30.i487, %csroa.if.end29.i488 ], [ 184549376, %__non_const_wrapper__.20.exit442 ]
  br label %csroa.if.end19.i492

csroa.if.end19.i492:                              ; preds = %__non_const_wrapper__.20.exit442, %csroa.if.end24.i490
  %.phi20.i491 = phi i32 [ %.phi25.i489, %csroa.if.end24.i490 ], [ 201326592, %__non_const_wrapper__.20.exit442 ]
  br label %csroa.if.end14.i494

csroa.if.end14.i494:                              ; preds = %__non_const_wrapper__.20.exit442, %csroa.if.end19.i492
  %.phi15.i493 = phi i32 [ %.phi20.i491, %csroa.if.end19.i492 ], [ 218103808, %__non_const_wrapper__.20.exit442 ]
  br label %csroa.if.end9.i496

csroa.if.end9.i496:                               ; preds = %__non_const_wrapper__.20.exit442, %csroa.if.end14.i494
  %.phi10.i495 = phi i32 [ %.phi15.i493, %csroa.if.end14.i494 ], [ 234881024, %__non_const_wrapper__.20.exit442 ]
  br label %csroa.if.end4.i498

csroa.if.end4.i498:                               ; preds = %__non_const_wrapper__.20.exit442, %csroa.if.end9.i496
  %.phi5.i497 = phi i32 [ %.phi10.i495, %csroa.if.end9.i496 ], [ 251658240, %__non_const_wrapper__.20.exit442 ]
  br label %__non_const_wrapper__.21.exit500

__non_const_wrapper__.21.exit500:                 ; preds = %__non_const_wrapper__.20.exit442, %csroa.if.end4.i498
  %.phi.i499 = phi i32 [ %.phi5.i497, %csroa.if.end4.i498 ], [ 268435456, %__non_const_wrapper__.20.exit442 ]
  %conv54.i234 = ashr exact i32 %.phi.i499, 24
  %sub55.i235 = sub nsw i32 0, %conv54.i234
  %cond62.i236 = select i1 %tobool49.i233, i32 %sub55.i235, i32 %conv54.i234
  br label %Get_motion_code.v0.C.c.exit239

Get_motion_code.v0.C.c.exit239:                   ; preds = %__non_const_wrapper__.17.exit312, %__non_const_wrapper__.19.exit388, %__non_const_wrapper__.21.exit500
  %retval.0.i238 = phi i32 [ %cond.i212, %__non_const_wrapper__.17.exit312 ], [ %cond37.i224, %__non_const_wrapper__.19.exit388 ], [ %cond62.i236, %__non_const_wrapper__.21.exit500 ]
  %cmp8 = icmp eq i32 %retval.0.i238, 0
  br i1 %cmp8, label %if.else.i511, label %cond.end12

cond.end12:                                       ; preds = %Get_motion_code.v0.C.c.exit239
  %call10.c.c = tail call i32 @Get_Bits.v0.C.c.c(i32 200)
  %arrayidx16 = getelementptr inbounds i32, i32* %PMV, i64 1
  %4 = load i32, i32* %arrayidx16, align 4, !tbaa !2
  %shr = ashr i32 %4, 1
  store i32 %shr, i32* %arrayidx16, align 4, !tbaa !2
  %cmp.i501 = icmp sgt i32 %retval.0.i238, 0
  %sub.i502 = shl i32 %retval.0.i238, 8
  br i1 %cmp.i501, label %if.then.i509, label %if.then9.i520

if.then.i509:                                     ; preds = %cond.end12
  %shl1.i503 = add i32 %sub.i502, -255
  %add2.i504 = add i32 %shl1.i503, %call10.c.c
  %add3.i505 = add i32 %add2.i504, %shr
  %cmp4.i506 = icmp slt i32 %add3.i505, 4096
  %sub7.i507 = add nsw i32 %add3.i505, -8192
  %add3.sub7.i508 = select i1 %cmp4.i506, i32 %add3.i505, i32 %sub7.i507
  br label %decode_motion_vector.v0.C.c.exit522

if.else.i511:                                     ; preds = %if.end38.i227, %decode_motion_vector.v0.C.c.exit, %Get_motion_code.v0.C.c.exit239
  %arrayidx1620 = getelementptr inbounds i32, i32* %PMV, i64 1
  %5 = load i32, i32* %arrayidx1620, align 4, !tbaa !2
  %shr21 = ashr i32 %5, 1
  store i32 %shr21, i32* %arrayidx1620, align 4, !tbaa !2
  br label %decode_motion_vector.v0.C.c.exit522

if.then9.i520:                                    ; preds = %cond.end12
  %shl12.i513 = xor i32 %sub.i502, -256
  %add13.neg.i514 = xor i32 %call10.c.c, -1
  %add14.neg.i515 = sub i32 %add13.neg.i514, %shl12.i513
  %sub15.i516 = add i32 %shr, %add14.neg.i515
  %cmp17.i517 = icmp slt i32 %sub15.i516, -4096
  %add20.i518 = add nsw i32 %sub15.i516, 8192
  %add20.sub15.i519 = select i1 %cmp17.i517, i32 %add20.i518, i32 %sub15.i516
  br label %decode_motion_vector.v0.C.c.exit522

decode_motion_vector.v0.C.c.exit522:              ; preds = %if.else.i511, %if.then.i509, %if.then9.i520
  %arrayidx1625 = phi i32* [ %arrayidx1620, %if.else.i511 ], [ %arrayidx16, %if.then.i509 ], [ %arrayidx16, %if.then9.i520 ]
  %vec.0.i521 = phi i32 [ %shr21, %if.else.i511 ], [ %add3.sub7.i508, %if.then.i509 ], [ %add20.sub15.i519, %if.then9.i520 ]
  %shl = shl i32 %vec.0.i521, 1
  store i32 %shl, i32* %arrayidx1625, align 4, !tbaa !2
  ret void
}

; Function Attrs: norecurse nounwind
define i32 @Get_Bits.v0.C.c.c(i32 %N) local_unnamed_addr #2 {
entry:
  %0 = load i32, i32* @ld_Bfr, align 4, !tbaa !2
  %1 = sub i32 0, %N
  %rem.i = and i32 %1, 31
  %shr.i = lshr i32 %0, %rem.i
  tail call void @Flush_Buffer.v0.C.c.c(i32 %N)
  ret i32 %shr.i
}

; Function Attrs: norecurse nounwind
define void @Flush_Buffer.v0.C.c.c(i32 %N) local_unnamed_addr #2 {
entry:
  %0 = load i32, i32* @ld_Bfr, align 4, !tbaa !2
  %shl = shl i32 %0, %N
  store i32 %shl, i32* @ld_Bfr, align 4, !tbaa !2
  %1 = load i32, i32* @ld_Incnt, align 4, !tbaa !2
  %sub = sub nsw i32 %1, %N
  store i32 %sub, i32* @ld_Incnt, align 4, !tbaa !2
  %cmp = icmp slt i32 %sub, 25
  br i1 %cmp, label %if.then, label %if.end22

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** @ld_Rdptr, align 8, !tbaa !6
  %cmp1 = icmp ult i8* %2, getelementptr inbounds ([2048 x i8], [2048 x i8]* @ld_Rdbfr, i64 0, i64 2044)
  %3 = add i32 %N, 24
  br i1 %cmp1, label %do.body.preheader, label %do.body7.preheader

do.body.preheader:                                ; preds = %if.then
  br label %do.body

do.body7.preheader:                               ; preds = %if.then
  %4 = sub i32 %3, %1
  %5 = and i32 %4, -8
  %6 = add i32 %1, %5
  %7 = add i32 %6, 8
  br label %do.body7

do.body:                                          ; preds = %do.body.preheader, %do.body
  %8 = phi i32 [ %or, %do.body ], [ %shl, %do.body.preheader ]
  %9 = phi i8* [ %incdec.ptr, %do.body ], [ %2, %do.body.preheader ]
  %Incnt.0 = phi i32 [ %add, %do.body ], [ %sub, %do.body.preheader ]
  %incdec.ptr = getelementptr inbounds i8, i8* %9, i64 1
  store i8* %incdec.ptr, i8** @ld_Rdptr, align 8, !tbaa !6
  %10 = load i8, i8* %9, align 1, !tbaa !8
  %conv = zext i8 %10 to i32
  %sub3 = sub nsw i32 24, %Incnt.0
  %shl4 = shl i32 %conv, %sub3
  %or = or i32 %shl4, %8
  store i32 %or, i32* @ld_Bfr, align 4, !tbaa !2
  %add = add nsw i32 %Incnt.0, 8
  %cmp5 = icmp slt i32 %add, 25
  br i1 %cmp5, label %do.body, label %if.end21.loopexit

do.body7:                                         ; preds = %do.body7.preheader, %if.end
  %.pre3 = phi i32 [ %or15, %if.end ], [ %shl, %do.body7.preheader ]
  %11 = phi i8* [ %incdec.ptr11, %if.end ], [ %2, %do.body7.preheader ]
  %Incnt.1 = phi i32 [ %add16, %if.end ], [ %sub, %do.body7.preheader ]
  %cmp8 = icmp ult i8* %11, getelementptr inbounds ([2048 x i8], [2048 x i8]* @ld_Rdbfr, i64 1, i64 0)
  br i1 %cmp8, label %if.end, label %while.body.i.i.preheader

while.body.i.i.preheader:                         ; preds = %do.body7
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @ld_Rdbfr, i64 0, i64 0), i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @inRdbfr, i64 0, i64 0), i64 2048, i32 16, i1 false)
  store i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @ld_Rdbfr, i64 0, i64 0), i8** @ld_Rdptr, align 8, !tbaa !6
  %12 = load i32, i32* @System_Stream_Flag, align 4, !tbaa !2
  %tobool.i = icmp eq i32 %12, 0
  br i1 %tobool.i, label %if.end, label %if.then.i

if.then.i:                                        ; preds = %while.body.i.i.preheader
  %13 = load i8*, i8** @ld_Rdmax, align 8, !tbaa !6
  %add.ptr.i = getelementptr inbounds i8, i8* %13, i64 -2048
  store i8* %add.ptr.i, i8** @ld_Rdmax, align 8, !tbaa !6
  br label %if.end

if.end:                                           ; preds = %if.then.i, %while.body.i.i.preheader, %do.body7
  %14 = phi i8* [ %11, %do.body7 ], [ getelementptr inbounds ([2048 x i8], [2048 x i8]* @ld_Rdbfr, i64 0, i64 0), %while.body.i.i.preheader ], [ getelementptr inbounds ([2048 x i8], [2048 x i8]* @ld_Rdbfr, i64 0, i64 0), %if.then.i ]
  %incdec.ptr11 = getelementptr inbounds i8, i8* %14, i64 1
  store i8* %incdec.ptr11, i8** @ld_Rdptr, align 8, !tbaa !6
  %15 = load i8, i8* %14, align 1, !tbaa !8
  %conv12 = zext i8 %15 to i32
  %sub13 = sub nsw i32 24, %Incnt.1
  %shl14 = shl i32 %conv12, %sub13
  %or15 = or i32 %shl14, %.pre3
  store i32 %or15, i32* @ld_Bfr, align 4, !tbaa !2
  %add16 = add nsw i32 %Incnt.1, 8
  %cmp18 = icmp slt i32 %add16, 25
  br i1 %cmp18, label %do.body7, label %if.end21.loopexit2

if.end21.loopexit:                                ; preds = %do.body
  %16 = sub i32 %3, %1
  %17 = and i32 %16, -8
  %18 = sub i32 8, %N
  %19 = add i32 %18, %1
  %20 = add i32 %19, %17
  br label %if.end21

if.end21.loopexit2:                               ; preds = %if.end
  %21 = sub i32 %7, %N
  br label %if.end21

if.end21:                                         ; preds = %if.end21.loopexit2, %if.end21.loopexit
  %Incnt.2 = phi i32 [ %20, %if.end21.loopexit ], [ %21, %if.end21.loopexit2 ]
  store i32 %Incnt.2, i32* @ld_Incnt, align 4, !tbaa !2
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %entry
  ret void
}

; Function Attrs: norecurse nounwind
define i32 @Get_Bits1.v0.C.c.c() local_unnamed_addr #2 {
entry:
  %call.c.c = tail call i32 @Get_Bits.v0.C.c.c(i32 1)
  ret i32 %call.c.c
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #3

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { norecurse nounwind }
attributes #3 = { argmemonly nounwind }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"int", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !7, i64 0}
!7 = !{!"any pointer", !4, i64 0}
!8 = !{!4, !4, i64 0}
