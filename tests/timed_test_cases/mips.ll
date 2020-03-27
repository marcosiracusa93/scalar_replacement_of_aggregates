; ModuleID = 'mips.c'
source_filename = "mips.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

@imem = constant [44 x i64] [i64 2409889792, i64 665124868, i64 614858756, i64 266368, i64 12726305, i64 202375190, i64 0, i64 872546314, i64 12, i64 1006702593, i64 875036672, i64 280704, i64 17385505, i64 2368339968, i64 350336, i64 17520673, i64 2372665344, i64 25847850, i64 295698435, i64 2905341952, i64 2909405184, i64 65011720, i64 666763252, i64 2948530184, i64 2947612676, i64 2947547136, i64 605028352, i64 705167368, i64 285212683, i64 638648321, i64 707264520, i64 285212678, i64 637796352, i64 639959040, i64 202375177, i64 640745473, i64 135266334, i64 638582785, i64 135266331, i64 2411659272, i64 2410741764, i64 2410676224, i64 666697740, i64 65011720], align 16
@A = constant [8 x i32] [i32 22, i32 5, i32 -9, i32 3, i32 -17, i32 38, i32 0, i32 11], align 16
@outData = constant [8 x i32] [i32 -17, i32 -9, i32 0, i32 3, i32 5, i32 11, i32 22, i32 38], align 16
@.str = private unnamed_addr constant [11 x i8] c"\0ATime: %f\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"\0AResult: %d\0A\00", align 1
@main_result = common global i32 0, align 4

; Function Attrs: noinline nounwind ssp uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %main_result = alloca i32, align 4
  %t_begin = alloca i64, align 8
  %iters = alloca i32, align 4
  %idx = alloca i32, align 4
  %hilo = alloca i64, align 8
  %reg = alloca [32 x i32], align 16
  %Hi = alloca i32, align 4
  %Lo = alloca i32, align 4
  %pc = alloca i32, align 4
  %dmem = alloca [64 x i32], align 16
  %j = alloca i32, align 4
  %ins = alloca i32, align 4
  %op = alloca i32, align 4
  %rs = alloca i32, align 4
  %rt = alloca i32, align 4
  %rd = alloca i32, align 4
  %shamt = alloca i32, align 4
  %funct = alloca i32, align 4
  %address = alloca i16, align 2
  %tgtadr = alloca i32, align 4
  %i = alloca i32, align 4
  %n_inst = alloca i32, align 4
  %t_end = alloca i64, align 8
  %time_taken = alloca double, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 0, i32* %main_result, align 4
  %call = call i64 @"\01_clock"()
  store i64 %call, i64* %t_begin, align 8
  %0 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %0, i64 1
  %1 = load i8*, i8** %arrayidx, align 8
  %call1 = call i32 @atoi(i8* %1)
  store i32 %call1, i32* %iters, align 4
  store i32 0, i32* %idx, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc301, %entry
  %2 = load i32, i32* %idx, align 4
  %3 = load i32, i32* %iters, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end303

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %Hi, align 4
  store i32 0, i32* %Lo, align 4
  store i32 0, i32* %pc, align 4
  br label %while.body

while.body:                                       ; preds = %for.body
  store i32 0, i32* %n_inst, align 4
  store i32 0, i32* %main_result, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %while.body
  %4 = load i32, i32* %i, align 4
  %cmp3 = icmp slt i32 %4, 32
  br i1 %cmp3, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond2
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx5 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i64 0, i64 %idxprom
  store i32 0, i32* %arrayidx5, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body4
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond2

for.end:                                          ; preds = %for.cond2
  %arrayidx6 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i64 0, i64 29
  store i32 2147479548, i32* %arrayidx6, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc14, %for.end
  %7 = load i32, i32* %i, align 4
  %cmp8 = icmp slt i32 %7, 64
  br i1 %cmp8, label %for.body9, label %for.end16

for.body9:                                        ; preds = %for.cond7
  %8 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %8 to i64
  %arrayidx11 = getelementptr inbounds [8 x i32], [8 x i32]* @A, i64 0, i64 %idxprom10
  %9 = load i32, i32* %arrayidx11, align 4
  %10 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %10 to i64
  %arrayidx13 = getelementptr inbounds [64 x i32], [64 x i32]* %dmem, i64 0, i64 %idxprom12
  store i32 %9, i32* %arrayidx13, align 4
  br label %for.inc14

for.inc14:                                        ; preds = %for.body9
  %11 = load i32, i32* %i, align 4
  %inc15 = add nsw i32 %11, 1
  store i32 %inc15, i32* %i, align 4
  br label %for.cond7

for.end16:                                        ; preds = %for.cond7
  store i32 4194304, i32* %pc, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %for.end16
  %12 = load i32, i32* %pc, align 4
  %and = and i32 %12, 255
  %shr = ashr i32 %and, 2
  %idxprom17 = sext i32 %shr to i64
  %arrayidx18 = getelementptr inbounds [44 x i64], [44 x i64]* @imem, i64 0, i64 %idxprom17
  %13 = load i64, i64* %arrayidx18, align 8
  %conv = trunc i64 %13 to i32
  store i32 %conv, i32* %ins, align 4
  %14 = load i32, i32* %pc, align 4
  %add = add nsw i32 %14, 4
  store i32 %add, i32* %pc, align 4
  %15 = load i32, i32* %ins, align 4
  %shr19 = lshr i32 %15, 26
  store i32 %shr19, i32* %op, align 4
  %16 = load i32, i32* %op, align 4
  switch i32 %16, label %sw.default156 [
    i32 0, label %sw.bb
    i32 2, label %sw.bb149
    i32 3, label %sw.bb152
  ]

sw.bb:                                            ; preds = %do.body
  %17 = load i32, i32* %ins, align 4
  %and20 = and i32 %17, 63
  store i32 %and20, i32* %funct, align 4
  %18 = load i32, i32* %ins, align 4
  %shr21 = lshr i32 %18, 6
  %and22 = and i32 %shr21, 31
  store i32 %and22, i32* %shamt, align 4
  %19 = load i32, i32* %ins, align 4
  %shr23 = lshr i32 %19, 11
  %and24 = and i32 %shr23, 31
  store i32 %and24, i32* %rd, align 4
  %20 = load i32, i32* %ins, align 4
  %shr25 = lshr i32 %20, 16
  %and26 = and i32 %shr25, 31
  store i32 %and26, i32* %rt, align 4
  %21 = load i32, i32* %ins, align 4
  %shr27 = lshr i32 %21, 21
  %and28 = and i32 %shr27, 31
  store i32 %and28, i32* %rs, align 4
  %22 = load i32, i32* %funct, align 4
  switch i32 %22, label %sw.default [
    i32 33, label %sw.bb29
    i32 35, label %sw.bb37
    i32 24, label %sw.bb44
    i32 25, label %sw.bb58
    i32 16, label %sw.bb73
    i32 18, label %sw.bb76
    i32 36, label %sw.bb79
    i32 37, label %sw.bb87
    i32 38, label %sw.bb94
    i32 0, label %sw.bb101
    i32 2, label %sw.bb106
    i32 4, label %sw.bb112
    i32 6, label %sw.bb120
    i32 42, label %sw.bb128
    i32 43, label %sw.bb137
    i32 8, label %sw.bb146
  ]

sw.bb29:                                          ; preds = %sw.bb
  %23 = load i32, i32* %rs, align 4
  %idxprom30 = sext i32 %23 to i64
  %arrayidx31 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i64 0, i64 %idxprom30
  %24 = load i32, i32* %arrayidx31, align 4
  %25 = load i32, i32* %rt, align 4
  %idxprom32 = sext i32 %25 to i64
  %arrayidx33 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i64 0, i64 %idxprom32
  %26 = load i32, i32* %arrayidx33, align 4
  %add34 = add nsw i32 %24, %26
  %27 = load i32, i32* %rd, align 4
  %idxprom35 = sext i32 %27 to i64
  %arrayidx36 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i64 0, i64 %idxprom35
  store i32 %add34, i32* %arrayidx36, align 4
  br label %sw.epilog

sw.bb37:                                          ; preds = %sw.bb
  %28 = load i32, i32* %rs, align 4
  %idxprom38 = sext i32 %28 to i64
  %arrayidx39 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i64 0, i64 %idxprom38
  %29 = load i32, i32* %arrayidx39, align 4
  %30 = load i32, i32* %rt, align 4
  %idxprom40 = sext i32 %30 to i64
  %arrayidx41 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i64 0, i64 %idxprom40
  %31 = load i32, i32* %arrayidx41, align 4
  %sub = sub nsw i32 %29, %31
  %32 = load i32, i32* %rd, align 4
  %idxprom42 = sext i32 %32 to i64
  %arrayidx43 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i64 0, i64 %idxprom42
  store i32 %sub, i32* %arrayidx43, align 4
  br label %sw.epilog

sw.bb44:                                          ; preds = %sw.bb
  %33 = load i32, i32* %rs, align 4
  %idxprom45 = sext i32 %33 to i64
  %arrayidx46 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i64 0, i64 %idxprom45
  %34 = load i32, i32* %arrayidx46, align 4
  %conv47 = sext i32 %34 to i64
  %35 = load i32, i32* %rt, align 4
  %idxprom48 = sext i32 %35 to i64
  %arrayidx49 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i64 0, i64 %idxprom48
  %36 = load i32, i32* %arrayidx49, align 4
  %conv50 = sext i32 %36 to i64
  %mul = mul nsw i64 %conv47, %conv50
  store i64 %mul, i64* %hilo, align 8
  %37 = load i64, i64* %hilo, align 8
  %and51 = and i64 %37, 4294967295
  %conv52 = trunc i64 %and51 to i32
  store i32 %conv52, i32* %Lo, align 4
  %38 = load i64, i64* %hilo, align 8
  %shr53 = ashr i64 %38, 32
  %conv54 = trunc i64 %shr53 to i32
  %conv55 = sext i32 %conv54 to i64
  %and56 = and i64 %conv55, 4294967295
  %conv57 = trunc i64 %and56 to i32
  store i32 %conv57, i32* %Hi, align 4
  br label %sw.epilog

sw.bb58:                                          ; preds = %sw.bb
  %39 = load i32, i32* %rs, align 4
  %idxprom59 = sext i32 %39 to i64
  %arrayidx60 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i64 0, i64 %idxprom59
  %40 = load i32, i32* %arrayidx60, align 4
  %conv61 = zext i32 %40 to i64
  %41 = load i32, i32* %rt, align 4
  %idxprom62 = sext i32 %41 to i64
  %arrayidx63 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i64 0, i64 %idxprom62
  %42 = load i32, i32* %arrayidx63, align 4
  %conv64 = zext i32 %42 to i64
  %mul65 = mul i64 %conv61, %conv64
  store i64 %mul65, i64* %hilo, align 8
  %43 = load i64, i64* %hilo, align 8
  %and66 = and i64 %43, 4294967295
  %conv67 = trunc i64 %and66 to i32
  store i32 %conv67, i32* %Lo, align 4
  %44 = load i64, i64* %hilo, align 8
  %shr68 = ashr i64 %44, 32
  %conv69 = trunc i64 %shr68 to i32
  %conv70 = sext i32 %conv69 to i64
  %and71 = and i64 %conv70, 4294967295
  %conv72 = trunc i64 %and71 to i32
  store i32 %conv72, i32* %Hi, align 4
  br label %sw.epilog

sw.bb73:                                          ; preds = %sw.bb
  %45 = load i32, i32* %Hi, align 4
  %46 = load i32, i32* %rd, align 4
  %idxprom74 = sext i32 %46 to i64
  %arrayidx75 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i64 0, i64 %idxprom74
  store i32 %45, i32* %arrayidx75, align 4
  br label %sw.epilog

sw.bb76:                                          ; preds = %sw.bb
  %47 = load i32, i32* %Lo, align 4
  %48 = load i32, i32* %rd, align 4
  %idxprom77 = sext i32 %48 to i64
  %arrayidx78 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i64 0, i64 %idxprom77
  store i32 %47, i32* %arrayidx78, align 4
  br label %sw.epilog

sw.bb79:                                          ; preds = %sw.bb
  %49 = load i32, i32* %rs, align 4
  %idxprom80 = sext i32 %49 to i64
  %arrayidx81 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i64 0, i64 %idxprom80
  %50 = load i32, i32* %arrayidx81, align 4
  %51 = load i32, i32* %rt, align 4
  %idxprom82 = sext i32 %51 to i64
  %arrayidx83 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i64 0, i64 %idxprom82
  %52 = load i32, i32* %arrayidx83, align 4
  %and84 = and i32 %50, %52
  %53 = load i32, i32* %rd, align 4
  %idxprom85 = sext i32 %53 to i64
  %arrayidx86 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i64 0, i64 %idxprom85
  store i32 %and84, i32* %arrayidx86, align 4
  br label %sw.epilog

sw.bb87:                                          ; preds = %sw.bb
  %54 = load i32, i32* %rs, align 4
  %idxprom88 = sext i32 %54 to i64
  %arrayidx89 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i64 0, i64 %idxprom88
  %55 = load i32, i32* %arrayidx89, align 4
  %56 = load i32, i32* %rt, align 4
  %idxprom90 = sext i32 %56 to i64
  %arrayidx91 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i64 0, i64 %idxprom90
  %57 = load i32, i32* %arrayidx91, align 4
  %or = or i32 %55, %57
  %58 = load i32, i32* %rd, align 4
  %idxprom92 = sext i32 %58 to i64
  %arrayidx93 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i64 0, i64 %idxprom92
  store i32 %or, i32* %arrayidx93, align 4
  br label %sw.epilog

sw.bb94:                                          ; preds = %sw.bb
  %59 = load i32, i32* %rs, align 4
  %idxprom95 = sext i32 %59 to i64
  %arrayidx96 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i64 0, i64 %idxprom95
  %60 = load i32, i32* %arrayidx96, align 4
  %61 = load i32, i32* %rt, align 4
  %idxprom97 = sext i32 %61 to i64
  %arrayidx98 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i64 0, i64 %idxprom97
  %62 = load i32, i32* %arrayidx98, align 4
  %xor = xor i32 %60, %62
  %63 = load i32, i32* %rd, align 4
  %idxprom99 = sext i32 %63 to i64
  %arrayidx100 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i64 0, i64 %idxprom99
  store i32 %xor, i32* %arrayidx100, align 4
  br label %sw.epilog

sw.bb101:                                         ; preds = %sw.bb
  %64 = load i32, i32* %rt, align 4
  %idxprom102 = sext i32 %64 to i64
  %arrayidx103 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i64 0, i64 %idxprom102
  %65 = load i32, i32* %arrayidx103, align 4
  %66 = load i32, i32* %shamt, align 4
  %shl = shl i32 %65, %66
  %67 = load i32, i32* %rd, align 4
  %idxprom104 = sext i32 %67 to i64
  %arrayidx105 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i64 0, i64 %idxprom104
  store i32 %shl, i32* %arrayidx105, align 4
  br label %sw.epilog

sw.bb106:                                         ; preds = %sw.bb
  %68 = load i32, i32* %rt, align 4
  %idxprom107 = sext i32 %68 to i64
  %arrayidx108 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i64 0, i64 %idxprom107
  %69 = load i32, i32* %arrayidx108, align 4
  %70 = load i32, i32* %shamt, align 4
  %shr109 = ashr i32 %69, %70
  %71 = load i32, i32* %rd, align 4
  %idxprom110 = sext i32 %71 to i64
  %arrayidx111 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i64 0, i64 %idxprom110
  store i32 %shr109, i32* %arrayidx111, align 4
  br label %sw.epilog

sw.bb112:                                         ; preds = %sw.bb
  %72 = load i32, i32* %rt, align 4
  %idxprom113 = sext i32 %72 to i64
  %arrayidx114 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i64 0, i64 %idxprom113
  %73 = load i32, i32* %arrayidx114, align 4
  %74 = load i32, i32* %rs, align 4
  %idxprom115 = sext i32 %74 to i64
  %arrayidx116 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i64 0, i64 %idxprom115
  %75 = load i32, i32* %arrayidx116, align 4
  %shl117 = shl i32 %73, %75
  %76 = load i32, i32* %rd, align 4
  %idxprom118 = sext i32 %76 to i64
  %arrayidx119 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i64 0, i64 %idxprom118
  store i32 %shl117, i32* %arrayidx119, align 4
  br label %sw.epilog

sw.bb120:                                         ; preds = %sw.bb
  %77 = load i32, i32* %rt, align 4
  %idxprom121 = sext i32 %77 to i64
  %arrayidx122 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i64 0, i64 %idxprom121
  %78 = load i32, i32* %arrayidx122, align 4
  %79 = load i32, i32* %rs, align 4
  %idxprom123 = sext i32 %79 to i64
  %arrayidx124 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i64 0, i64 %idxprom123
  %80 = load i32, i32* %arrayidx124, align 4
  %shr125 = ashr i32 %78, %80
  %81 = load i32, i32* %rd, align 4
  %idxprom126 = sext i32 %81 to i64
  %arrayidx127 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i64 0, i64 %idxprom126
  store i32 %shr125, i32* %arrayidx127, align 4
  br label %sw.epilog

sw.bb128:                                         ; preds = %sw.bb
  %82 = load i32, i32* %rs, align 4
  %idxprom129 = sext i32 %82 to i64
  %arrayidx130 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i64 0, i64 %idxprom129
  %83 = load i32, i32* %arrayidx130, align 4
  %84 = load i32, i32* %rt, align 4
  %idxprom131 = sext i32 %84 to i64
  %arrayidx132 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i64 0, i64 %idxprom131
  %85 = load i32, i32* %arrayidx132, align 4
  %cmp133 = icmp slt i32 %83, %85
  %conv134 = zext i1 %cmp133 to i32
  %86 = load i32, i32* %rd, align 4
  %idxprom135 = sext i32 %86 to i64
  %arrayidx136 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i64 0, i64 %idxprom135
  store i32 %conv134, i32* %arrayidx136, align 4
  br label %sw.epilog

sw.bb137:                                         ; preds = %sw.bb
  %87 = load i32, i32* %rs, align 4
  %idxprom138 = sext i32 %87 to i64
  %arrayidx139 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i64 0, i64 %idxprom138
  %88 = load i32, i32* %arrayidx139, align 4
  %89 = load i32, i32* %rt, align 4
  %idxprom140 = sext i32 %89 to i64
  %arrayidx141 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i64 0, i64 %idxprom140
  %90 = load i32, i32* %arrayidx141, align 4
  %cmp142 = icmp ult i32 %88, %90
  %conv143 = zext i1 %cmp142 to i32
  %91 = load i32, i32* %rd, align 4
  %idxprom144 = sext i32 %91 to i64
  %arrayidx145 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i64 0, i64 %idxprom144
  store i32 %conv143, i32* %arrayidx145, align 4
  br label %sw.epilog

sw.bb146:                                         ; preds = %sw.bb
  %92 = load i32, i32* %rs, align 4
  %idxprom147 = sext i32 %92 to i64
  %arrayidx148 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i64 0, i64 %idxprom147
  %93 = load i32, i32* %arrayidx148, align 4
  store i32 %93, i32* %pc, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %sw.bb
  store i32 0, i32* %pc, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb146, %sw.bb137, %sw.bb128, %sw.bb120, %sw.bb112, %sw.bb106, %sw.bb101, %sw.bb94, %sw.bb87, %sw.bb79, %sw.bb76, %sw.bb73, %sw.bb58, %sw.bb44, %sw.bb37, %sw.bb29
  br label %sw.epilog271

sw.bb149:                                         ; preds = %do.body
  %94 = load i32, i32* %ins, align 4
  %and150 = and i32 %94, 67108863
  store i32 %and150, i32* %tgtadr, align 4
  %95 = load i32, i32* %tgtadr, align 4
  %shl151 = shl i32 %95, 2
  store i32 %shl151, i32* %pc, align 4
  br label %sw.epilog271

sw.bb152:                                         ; preds = %do.body
  %96 = load i32, i32* %ins, align 4
  %and153 = and i32 %96, 67108863
  store i32 %and153, i32* %tgtadr, align 4
  %97 = load i32, i32* %pc, align 4
  %arrayidx154 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i64 0, i64 31
  store i32 %97, i32* %arrayidx154, align 4
  %98 = load i32, i32* %tgtadr, align 4
  %shl155 = shl i32 %98, 2
  store i32 %shl155, i32* %pc, align 4
  br label %sw.epilog271

sw.default156:                                    ; preds = %do.body
  %99 = load i32, i32* %ins, align 4
  %and157 = and i32 %99, 65535
  %conv158 = trunc i32 %and157 to i16
  store i16 %conv158, i16* %address, align 2
  %100 = load i32, i32* %ins, align 4
  %shr159 = lshr i32 %100, 16
  %and160 = and i32 %shr159, 31
  store i32 %and160, i32* %rt, align 4
  %101 = load i32, i32* %ins, align 4
  %shr161 = lshr i32 %101, 21
  %and162 = and i32 %shr161, 31
  store i32 %and162, i32* %rs, align 4
  %102 = load i32, i32* %op, align 4
  switch i32 %102, label %sw.default269 [
    i32 9, label %sw.bb163
    i32 12, label %sw.bb170
    i32 13, label %sw.bb177
    i32 14, label %sw.bb184
    i32 35, label %sw.bb191
    i32 43, label %sw.bb202
    i32 15, label %sw.bb213
    i32 4, label %sw.bb218
    i32 5, label %sw.bb229
    i32 1, label %sw.bb242
    i32 10, label %sw.bb253
    i32 11, label %sw.bb261
  ]

sw.bb163:                                         ; preds = %sw.default156
  %103 = load i32, i32* %rs, align 4
  %idxprom164 = sext i32 %103 to i64
  %arrayidx165 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i64 0, i64 %idxprom164
  %104 = load i32, i32* %arrayidx165, align 4
  %105 = load i16, i16* %address, align 2
  %conv166 = sext i16 %105 to i32
  %add167 = add nsw i32 %104, %conv166
  %106 = load i32, i32* %rt, align 4
  %idxprom168 = sext i32 %106 to i64
  %arrayidx169 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i64 0, i64 %idxprom168
  store i32 %add167, i32* %arrayidx169, align 4
  br label %sw.epilog270

sw.bb170:                                         ; preds = %sw.default156
  %107 = load i32, i32* %rs, align 4
  %idxprom171 = sext i32 %107 to i64
  %arrayidx172 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i64 0, i64 %idxprom171
  %108 = load i32, i32* %arrayidx172, align 4
  %109 = load i16, i16* %address, align 2
  %conv173 = zext i16 %109 to i32
  %and174 = and i32 %108, %conv173
  %110 = load i32, i32* %rt, align 4
  %idxprom175 = sext i32 %110 to i64
  %arrayidx176 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i64 0, i64 %idxprom175
  store i32 %and174, i32* %arrayidx176, align 4
  br label %sw.epilog270

sw.bb177:                                         ; preds = %sw.default156
  %111 = load i32, i32* %rs, align 4
  %idxprom178 = sext i32 %111 to i64
  %arrayidx179 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i64 0, i64 %idxprom178
  %112 = load i32, i32* %arrayidx179, align 4
  %113 = load i16, i16* %address, align 2
  %conv180 = zext i16 %113 to i32
  %or181 = or i32 %112, %conv180
  %114 = load i32, i32* %rt, align 4
  %idxprom182 = sext i32 %114 to i64
  %arrayidx183 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i64 0, i64 %idxprom182
  store i32 %or181, i32* %arrayidx183, align 4
  br label %sw.epilog270

sw.bb184:                                         ; preds = %sw.default156
  %115 = load i32, i32* %rs, align 4
  %idxprom185 = sext i32 %115 to i64
  %arrayidx186 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i64 0, i64 %idxprom185
  %116 = load i32, i32* %arrayidx186, align 4
  %117 = load i16, i16* %address, align 2
  %conv187 = zext i16 %117 to i32
  %xor188 = xor i32 %116, %conv187
  %118 = load i32, i32* %rt, align 4
  %idxprom189 = sext i32 %118 to i64
  %arrayidx190 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i64 0, i64 %idxprom189
  store i32 %xor188, i32* %arrayidx190, align 4
  br label %sw.epilog270

sw.bb191:                                         ; preds = %sw.default156
  %119 = load i32, i32* %rs, align 4
  %idxprom192 = sext i32 %119 to i64
  %arrayidx193 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i64 0, i64 %idxprom192
  %120 = load i32, i32* %arrayidx193, align 4
  %121 = load i16, i16* %address, align 2
  %conv194 = sext i16 %121 to i32
  %add195 = add nsw i32 %120, %conv194
  %and196 = and i32 %add195, 255
  %shr197 = ashr i32 %and196, 2
  %idxprom198 = sext i32 %shr197 to i64
  %arrayidx199 = getelementptr inbounds [64 x i32], [64 x i32]* %dmem, i64 0, i64 %idxprom198
  %122 = load i32, i32* %arrayidx199, align 4
  %123 = load i32, i32* %rt, align 4
  %idxprom200 = sext i32 %123 to i64
  %arrayidx201 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i64 0, i64 %idxprom200
  store i32 %122, i32* %arrayidx201, align 4
  br label %sw.epilog270

sw.bb202:                                         ; preds = %sw.default156
  %124 = load i32, i32* %rt, align 4
  %idxprom203 = sext i32 %124 to i64
  %arrayidx204 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i64 0, i64 %idxprom203
  %125 = load i32, i32* %arrayidx204, align 4
  %126 = load i32, i32* %rs, align 4
  %idxprom205 = sext i32 %126 to i64
  %arrayidx206 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i64 0, i64 %idxprom205
  %127 = load i32, i32* %arrayidx206, align 4
  %128 = load i16, i16* %address, align 2
  %conv207 = sext i16 %128 to i32
  %add208 = add nsw i32 %127, %conv207
  %and209 = and i32 %add208, 255
  %shr210 = ashr i32 %and209, 2
  %idxprom211 = sext i32 %shr210 to i64
  %arrayidx212 = getelementptr inbounds [64 x i32], [64 x i32]* %dmem, i64 0, i64 %idxprom211
  store i32 %125, i32* %arrayidx212, align 4
  br label %sw.epilog270

sw.bb213:                                         ; preds = %sw.default156
  %129 = load i16, i16* %address, align 2
  %conv214 = sext i16 %129 to i32
  %shl215 = shl i32 %conv214, 16
  %130 = load i32, i32* %rt, align 4
  %idxprom216 = sext i32 %130 to i64
  %arrayidx217 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i64 0, i64 %idxprom216
  store i32 %shl215, i32* %arrayidx217, align 4
  br label %sw.epilog270

sw.bb218:                                         ; preds = %sw.default156
  %131 = load i32, i32* %rs, align 4
  %idxprom219 = sext i32 %131 to i64
  %arrayidx220 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i64 0, i64 %idxprom219
  %132 = load i32, i32* %arrayidx220, align 4
  %133 = load i32, i32* %rt, align 4
  %idxprom221 = sext i32 %133 to i64
  %arrayidx222 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i64 0, i64 %idxprom221
  %134 = load i32, i32* %arrayidx222, align 4
  %cmp223 = icmp eq i32 %132, %134
  br i1 %cmp223, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb218
  %135 = load i32, i32* %pc, align 4
  %sub225 = sub nsw i32 %135, 4
  %136 = load i16, i16* %address, align 2
  %conv226 = sext i16 %136 to i32
  %shl227 = shl i32 %conv226, 2
  %add228 = add nsw i32 %sub225, %shl227
  store i32 %add228, i32* %pc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb218
  br label %sw.epilog270

sw.bb229:                                         ; preds = %sw.default156
  %137 = load i32, i32* %rs, align 4
  %idxprom230 = sext i32 %137 to i64
  %arrayidx231 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i64 0, i64 %idxprom230
  %138 = load i32, i32* %arrayidx231, align 4
  %139 = load i32, i32* %rt, align 4
  %idxprom232 = sext i32 %139 to i64
  %arrayidx233 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i64 0, i64 %idxprom232
  %140 = load i32, i32* %arrayidx233, align 4
  %cmp234 = icmp ne i32 %138, %140
  br i1 %cmp234, label %if.then236, label %if.end241

if.then236:                                       ; preds = %sw.bb229
  %141 = load i32, i32* %pc, align 4
  %sub237 = sub nsw i32 %141, 4
  %142 = load i16, i16* %address, align 2
  %conv238 = sext i16 %142 to i32
  %shl239 = shl i32 %conv238, 2
  %add240 = add nsw i32 %sub237, %shl239
  store i32 %add240, i32* %pc, align 4
  br label %if.end241

if.end241:                                        ; preds = %if.then236, %sw.bb229
  br label %sw.epilog270

sw.bb242:                                         ; preds = %sw.default156
  %143 = load i32, i32* %rs, align 4
  %idxprom243 = sext i32 %143 to i64
  %arrayidx244 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i64 0, i64 %idxprom243
  %144 = load i32, i32* %arrayidx244, align 4
  %cmp245 = icmp sge i32 %144, 0
  br i1 %cmp245, label %if.then247, label %if.end252

if.then247:                                       ; preds = %sw.bb242
  %145 = load i32, i32* %pc, align 4
  %sub248 = sub nsw i32 %145, 4
  %146 = load i16, i16* %address, align 2
  %conv249 = sext i16 %146 to i32
  %shl250 = shl i32 %conv249, 2
  %add251 = add nsw i32 %sub248, %shl250
  store i32 %add251, i32* %pc, align 4
  br label %if.end252

if.end252:                                        ; preds = %if.then247, %sw.bb242
  br label %sw.epilog270

sw.bb253:                                         ; preds = %sw.default156
  %147 = load i32, i32* %rs, align 4
  %idxprom254 = sext i32 %147 to i64
  %arrayidx255 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i64 0, i64 %idxprom254
  %148 = load i32, i32* %arrayidx255, align 4
  %149 = load i16, i16* %address, align 2
  %conv256 = sext i16 %149 to i32
  %cmp257 = icmp slt i32 %148, %conv256
  %conv258 = zext i1 %cmp257 to i32
  %150 = load i32, i32* %rt, align 4
  %idxprom259 = sext i32 %150 to i64
  %arrayidx260 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i64 0, i64 %idxprom259
  store i32 %conv258, i32* %arrayidx260, align 4
  br label %sw.epilog270

sw.bb261:                                         ; preds = %sw.default156
  %151 = load i32, i32* %rs, align 4
  %idxprom262 = sext i32 %151 to i64
  %arrayidx263 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i64 0, i64 %idxprom262
  %152 = load i32, i32* %arrayidx263, align 4
  %153 = load i16, i16* %address, align 2
  %conv264 = zext i16 %153 to i32
  %cmp265 = icmp ult i32 %152, %conv264
  %conv266 = zext i1 %cmp265 to i32
  %154 = load i32, i32* %rt, align 4
  %idxprom267 = sext i32 %154 to i64
  %arrayidx268 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i64 0, i64 %idxprom267
  store i32 %conv266, i32* %arrayidx268, align 4
  br label %sw.epilog270

sw.default269:                                    ; preds = %sw.default156
  store i32 0, i32* %pc, align 4
  br label %sw.epilog270

sw.epilog270:                                     ; preds = %sw.default269, %sw.bb261, %sw.bb253, %if.end252, %if.end241, %if.end, %sw.bb213, %sw.bb202, %sw.bb191, %sw.bb184, %sw.bb177, %sw.bb170, %sw.bb163
  br label %sw.epilog271

sw.epilog271:                                     ; preds = %sw.epilog270, %sw.bb152, %sw.bb149, %sw.epilog
  %arrayidx272 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i64 0, i64 0
  store i32 0, i32* %arrayidx272, align 16
  %155 = load i32, i32* %n_inst, align 4
  %add273 = add nsw i32 %155, 1
  store i32 %add273, i32* %n_inst, align 4
  br label %do.cond

do.cond:                                          ; preds = %sw.epilog271
  %156 = load i32, i32* %pc, align 4
  %cmp274 = icmp ne i32 %156, 0
  br i1 %cmp274, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %157 = load i32, i32* %n_inst, align 4
  %cmp276 = icmp ne i32 %157, 611
  %conv277 = zext i1 %cmp276 to i32
  %158 = load i32, i32* %main_result, align 4
  %add278 = add nsw i32 %158, %conv277
  store i32 %add278, i32* %main_result, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond279

for.cond279:                                      ; preds = %for.inc290, %do.end
  %159 = load i32, i32* %j, align 4
  %cmp280 = icmp slt i32 %159, 8
  br i1 %cmp280, label %for.body282, label %for.end292

for.body282:                                      ; preds = %for.cond279
  %160 = load i32, i32* %j, align 4
  %idxprom283 = sext i32 %160 to i64
  %arrayidx284 = getelementptr inbounds [64 x i32], [64 x i32]* %dmem, i64 0, i64 %idxprom283
  %161 = load i32, i32* %arrayidx284, align 4
  %162 = load i32, i32* %j, align 4
  %idxprom285 = sext i32 %162 to i64
  %arrayidx286 = getelementptr inbounds [8 x i32], [8 x i32]* @outData, i64 0, i64 %idxprom285
  %163 = load i32, i32* %arrayidx286, align 4
  %cmp287 = icmp ne i32 %161, %163
  %conv288 = zext i1 %cmp287 to i32
  %164 = load i32, i32* %main_result, align 4
  %add289 = add nsw i32 %164, %conv288
  store i32 %add289, i32* %main_result, align 4
  br label %for.inc290

for.inc290:                                       ; preds = %for.body282
  %165 = load i32, i32* %j, align 4
  %inc291 = add nsw i32 %165, 1
  store i32 %inc291, i32* %j, align 4
  br label %for.cond279

for.end292:                                       ; preds = %for.cond279
  %call293 = call i64 @"\01_clock"()
  store i64 %call293, i64* %t_end, align 8
  %166 = load i64, i64* %t_end, align 8
  %conv294 = uitofp i64 %166 to double
  %167 = load i64, i64* %t_begin, align 8
  %conv295 = uitofp i64 %167 to double
  %sub296 = fsub double %conv294, %conv295
  %div = fdiv double %sub296, 1.000000e+06
  %168 = load i32, i32* %iters, align 4
  %conv297 = sitofp i32 %168 to double
  %div298 = fdiv double %div, %conv297
  store double %div298, double* %time_taken, align 8
  %169 = load double, double* %time_taken, align 8
  %call299 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), double %169)
  %170 = load i32, i32* %main_result, align 4
  %call300 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 %170)
  %171 = load i32, i32* %main_result, align 4
  store i32 %171, i32* %retval, align 4
  br label %for.end303

for.inc301:                                       ; No predecessors!
  %172 = load i32, i32* %idx, align 4
  %inc302 = add nsw i32 %172, 1
  store i32 %inc302, i32* %idx, align 4
  br label %for.cond

for.end303:                                       ; preds = %for.end292, %for.cond
  %173 = load i32, i32* %retval, align 4
  ret i32 %173
}

declare i64 @"\01_clock"() #1

declare i32 @atoi(i8*) #1

declare i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
