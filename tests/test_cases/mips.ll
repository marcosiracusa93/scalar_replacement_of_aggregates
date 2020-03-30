; ModuleID = 'mips/mips.c'
source_filename = "mips/mips.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

@imem = constant [44 x i64] [i64 2409889792, i64 665124868, i64 614858756, i64 266368, i64 12726305, i64 202375190, i64 0, i64 872546314, i64 12, i64 1006702593, i64 875036672, i64 280704, i64 17385505, i64 2368339968, i64 350336, i64 17520673, i64 2372665344, i64 25847850, i64 295698435, i64 2905341952, i64 2909405184, i64 65011720, i64 666763252, i64 2948530184, i64 2947612676, i64 2947547136, i64 605028352, i64 705167368, i64 285212683, i64 638648321, i64 707264520, i64 285212678, i64 637796352, i64 639959040, i64 202375177, i64 640745473, i64 135266334, i64 638582785, i64 135266331, i64 2411659272, i64 2410741764, i64 2410676224, i64 666697740, i64 65011720], align 16
@A = constant [8 x i32] [i32 22, i32 5, i32 -9, i32 3, i32 -17, i32 38, i32 0, i32 11], align 16
@outData = constant [8 x i32] [i32 -17, i32 -9, i32 0, i32 3, i32 5, i32 11, i32 22, i32 38], align 16
@main_result = common global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind ssp uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
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
  store i32 0, i32* %retval, align 4
  store i32 0, i32* %Hi, align 4
  store i32 0, i32* %Lo, align 4
  store i32 0, i32* %pc, align 4
  br label %while.body

while.body:                                       ; preds = %entry
  store i32 0, i32* %n_inst, align 4
  store i32 0, i32* @main_result, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 32
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i64 0, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arrayidx1 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i64 0, i64 29
  store i32 2147479548, i32* %arrayidx1, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc9, %for.end
  %3 = load i32, i32* %i, align 4
  %cmp3 = icmp slt i32 %3, 64
  br i1 %cmp3, label %for.body4, label %for.end11

for.body4:                                        ; preds = %for.cond2
  %4 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %4 to i64
  %arrayidx6 = getelementptr inbounds [8 x i32], [8 x i32]* @A, i64 0, i64 %idxprom5
  %5 = load i32, i32* %arrayidx6, align 4
  %6 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %6 to i64
  %arrayidx8 = getelementptr inbounds [64 x i32], [64 x i32]* %dmem, i64 0, i64 %idxprom7
  store i32 %5, i32* %arrayidx8, align 4
  br label %for.inc9

for.inc9:                                         ; preds = %for.body4
  %7 = load i32, i32* %i, align 4
  %inc10 = add nsw i32 %7, 1
  store i32 %inc10, i32* %i, align 4
  br label %for.cond2

for.end11:                                        ; preds = %for.cond2
  store i32 4194304, i32* %pc, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %for.end11
  %8 = load i32, i32* %pc, align 4
  %and = and i32 %8, 255
  %shr = ashr i32 %and, 2
  %idxprom12 = sext i32 %shr to i64
  %arrayidx13 = getelementptr inbounds [44 x i64], [44 x i64]* @imem, i64 0, i64 %idxprom12
  %9 = load i64, i64* %arrayidx13, align 8
  %conv = trunc i64 %9 to i32
  store i32 %conv, i32* %ins, align 4
  %10 = load i32, i32* %pc, align 4
  %add = add nsw i32 %10, 4
  store i32 %add, i32* %pc, align 4
  %11 = load i32, i32* %ins, align 4
  %shr14 = lshr i32 %11, 26
  store i32 %shr14, i32* %op, align 4
  %12 = load i32, i32* %op, align 4
  switch i32 %12, label %sw.default151 [
    i32 0, label %sw.bb
    i32 2, label %sw.bb144
    i32 3, label %sw.bb147
  ]

sw.bb:                                            ; preds = %do.body
  %13 = load i32, i32* %ins, align 4
  %and15 = and i32 %13, 63
  store i32 %and15, i32* %funct, align 4
  %14 = load i32, i32* %ins, align 4
  %shr16 = lshr i32 %14, 6
  %and17 = and i32 %shr16, 31
  store i32 %and17, i32* %shamt, align 4
  %15 = load i32, i32* %ins, align 4
  %shr18 = lshr i32 %15, 11
  %and19 = and i32 %shr18, 31
  store i32 %and19, i32* %rd, align 4
  %16 = load i32, i32* %ins, align 4
  %shr20 = lshr i32 %16, 16
  %and21 = and i32 %shr20, 31
  store i32 %and21, i32* %rt, align 4
  %17 = load i32, i32* %ins, align 4
  %shr22 = lshr i32 %17, 21
  %and23 = and i32 %shr22, 31
  store i32 %and23, i32* %rs, align 4
  %18 = load i32, i32* %funct, align 4
  switch i32 %18, label %sw.default [
    i32 33, label %sw.bb24
    i32 35, label %sw.bb32
    i32 24, label %sw.bb39
    i32 25, label %sw.bb53
    i32 16, label %sw.bb68
    i32 18, label %sw.bb71
    i32 36, label %sw.bb74
    i32 37, label %sw.bb82
    i32 38, label %sw.bb89
    i32 0, label %sw.bb96
    i32 2, label %sw.bb101
    i32 4, label %sw.bb107
    i32 6, label %sw.bb115
    i32 42, label %sw.bb123
    i32 43, label %sw.bb132
    i32 8, label %sw.bb141
  ]

sw.bb24:                                          ; preds = %sw.bb
  %19 = load i32, i32* %rs, align 4
  %idxprom25 = sext i32 %19 to i64
  %arrayidx26 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i64 0, i64 %idxprom25
  %20 = load i32, i32* %arrayidx26, align 4
  %21 = load i32, i32* %rt, align 4
  %idxprom27 = sext i32 %21 to i64
  %arrayidx28 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i64 0, i64 %idxprom27
  %22 = load i32, i32* %arrayidx28, align 4
  %add29 = add nsw i32 %20, %22
  %23 = load i32, i32* %rd, align 4
  %idxprom30 = sext i32 %23 to i64
  %arrayidx31 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i64 0, i64 %idxprom30
  store i32 %add29, i32* %arrayidx31, align 4
  br label %sw.epilog

sw.bb32:                                          ; preds = %sw.bb
  %24 = load i32, i32* %rs, align 4
  %idxprom33 = sext i32 %24 to i64
  %arrayidx34 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i64 0, i64 %idxprom33
  %25 = load i32, i32* %arrayidx34, align 4
  %26 = load i32, i32* %rt, align 4
  %idxprom35 = sext i32 %26 to i64
  %arrayidx36 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i64 0, i64 %idxprom35
  %27 = load i32, i32* %arrayidx36, align 4
  %sub = sub nsw i32 %25, %27
  %28 = load i32, i32* %rd, align 4
  %idxprom37 = sext i32 %28 to i64
  %arrayidx38 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i64 0, i64 %idxprom37
  store i32 %sub, i32* %arrayidx38, align 4
  br label %sw.epilog

sw.bb39:                                          ; preds = %sw.bb
  %29 = load i32, i32* %rs, align 4
  %idxprom40 = sext i32 %29 to i64
  %arrayidx41 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i64 0, i64 %idxprom40
  %30 = load i32, i32* %arrayidx41, align 4
  %conv42 = sext i32 %30 to i64
  %31 = load i32, i32* %rt, align 4
  %idxprom43 = sext i32 %31 to i64
  %arrayidx44 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i64 0, i64 %idxprom43
  %32 = load i32, i32* %arrayidx44, align 4
  %conv45 = sext i32 %32 to i64
  %mul = mul nsw i64 %conv42, %conv45
  store i64 %mul, i64* %hilo, align 8
  %33 = load i64, i64* %hilo, align 8
  %and46 = and i64 %33, 4294967295
  %conv47 = trunc i64 %and46 to i32
  store i32 %conv47, i32* %Lo, align 4
  %34 = load i64, i64* %hilo, align 8
  %shr48 = ashr i64 %34, 32
  %conv49 = trunc i64 %shr48 to i32
  %conv50 = sext i32 %conv49 to i64
  %and51 = and i64 %conv50, 4294967295
  %conv52 = trunc i64 %and51 to i32
  store i32 %conv52, i32* %Hi, align 4
  br label %sw.epilog

sw.bb53:                                          ; preds = %sw.bb
  %35 = load i32, i32* %rs, align 4
  %idxprom54 = sext i32 %35 to i64
  %arrayidx55 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i64 0, i64 %idxprom54
  %36 = load i32, i32* %arrayidx55, align 4
  %conv56 = zext i32 %36 to i64
  %37 = load i32, i32* %rt, align 4
  %idxprom57 = sext i32 %37 to i64
  %arrayidx58 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i64 0, i64 %idxprom57
  %38 = load i32, i32* %arrayidx58, align 4
  %conv59 = zext i32 %38 to i64
  %mul60 = mul i64 %conv56, %conv59
  store i64 %mul60, i64* %hilo, align 8
  %39 = load i64, i64* %hilo, align 8
  %and61 = and i64 %39, 4294967295
  %conv62 = trunc i64 %and61 to i32
  store i32 %conv62, i32* %Lo, align 4
  %40 = load i64, i64* %hilo, align 8
  %shr63 = ashr i64 %40, 32
  %conv64 = trunc i64 %shr63 to i32
  %conv65 = sext i32 %conv64 to i64
  %and66 = and i64 %conv65, 4294967295
  %conv67 = trunc i64 %and66 to i32
  store i32 %conv67, i32* %Hi, align 4
  br label %sw.epilog

sw.bb68:                                          ; preds = %sw.bb
  %41 = load i32, i32* %Hi, align 4
  %42 = load i32, i32* %rd, align 4
  %idxprom69 = sext i32 %42 to i64
  %arrayidx70 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i64 0, i64 %idxprom69
  store i32 %41, i32* %arrayidx70, align 4
  br label %sw.epilog

sw.bb71:                                          ; preds = %sw.bb
  %43 = load i32, i32* %Lo, align 4
  %44 = load i32, i32* %rd, align 4
  %idxprom72 = sext i32 %44 to i64
  %arrayidx73 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i64 0, i64 %idxprom72
  store i32 %43, i32* %arrayidx73, align 4
  br label %sw.epilog

sw.bb74:                                          ; preds = %sw.bb
  %45 = load i32, i32* %rs, align 4
  %idxprom75 = sext i32 %45 to i64
  %arrayidx76 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i64 0, i64 %idxprom75
  %46 = load i32, i32* %arrayidx76, align 4
  %47 = load i32, i32* %rt, align 4
  %idxprom77 = sext i32 %47 to i64
  %arrayidx78 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i64 0, i64 %idxprom77
  %48 = load i32, i32* %arrayidx78, align 4
  %and79 = and i32 %46, %48
  %49 = load i32, i32* %rd, align 4
  %idxprom80 = sext i32 %49 to i64
  %arrayidx81 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i64 0, i64 %idxprom80
  store i32 %and79, i32* %arrayidx81, align 4
  br label %sw.epilog

sw.bb82:                                          ; preds = %sw.bb
  %50 = load i32, i32* %rs, align 4
  %idxprom83 = sext i32 %50 to i64
  %arrayidx84 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i64 0, i64 %idxprom83
  %51 = load i32, i32* %arrayidx84, align 4
  %52 = load i32, i32* %rt, align 4
  %idxprom85 = sext i32 %52 to i64
  %arrayidx86 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i64 0, i64 %idxprom85
  %53 = load i32, i32* %arrayidx86, align 4
  %or = or i32 %51, %53
  %54 = load i32, i32* %rd, align 4
  %idxprom87 = sext i32 %54 to i64
  %arrayidx88 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i64 0, i64 %idxprom87
  store i32 %or, i32* %arrayidx88, align 4
  br label %sw.epilog

sw.bb89:                                          ; preds = %sw.bb
  %55 = load i32, i32* %rs, align 4
  %idxprom90 = sext i32 %55 to i64
  %arrayidx91 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i64 0, i64 %idxprom90
  %56 = load i32, i32* %arrayidx91, align 4
  %57 = load i32, i32* %rt, align 4
  %idxprom92 = sext i32 %57 to i64
  %arrayidx93 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i64 0, i64 %idxprom92
  %58 = load i32, i32* %arrayidx93, align 4
  %xor = xor i32 %56, %58
  %59 = load i32, i32* %rd, align 4
  %idxprom94 = sext i32 %59 to i64
  %arrayidx95 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i64 0, i64 %idxprom94
  store i32 %xor, i32* %arrayidx95, align 4
  br label %sw.epilog

sw.bb96:                                          ; preds = %sw.bb
  %60 = load i32, i32* %rt, align 4
  %idxprom97 = sext i32 %60 to i64
  %arrayidx98 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i64 0, i64 %idxprom97
  %61 = load i32, i32* %arrayidx98, align 4
  %62 = load i32, i32* %shamt, align 4
  %shl = shl i32 %61, %62
  %63 = load i32, i32* %rd, align 4
  %idxprom99 = sext i32 %63 to i64
  %arrayidx100 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i64 0, i64 %idxprom99
  store i32 %shl, i32* %arrayidx100, align 4
  br label %sw.epilog

sw.bb101:                                         ; preds = %sw.bb
  %64 = load i32, i32* %rt, align 4
  %idxprom102 = sext i32 %64 to i64
  %arrayidx103 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i64 0, i64 %idxprom102
  %65 = load i32, i32* %arrayidx103, align 4
  %66 = load i32, i32* %shamt, align 4
  %shr104 = ashr i32 %65, %66
  %67 = load i32, i32* %rd, align 4
  %idxprom105 = sext i32 %67 to i64
  %arrayidx106 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i64 0, i64 %idxprom105
  store i32 %shr104, i32* %arrayidx106, align 4
  br label %sw.epilog

sw.bb107:                                         ; preds = %sw.bb
  %68 = load i32, i32* %rt, align 4
  %idxprom108 = sext i32 %68 to i64
  %arrayidx109 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i64 0, i64 %idxprom108
  %69 = load i32, i32* %arrayidx109, align 4
  %70 = load i32, i32* %rs, align 4
  %idxprom110 = sext i32 %70 to i64
  %arrayidx111 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i64 0, i64 %idxprom110
  %71 = load i32, i32* %arrayidx111, align 4
  %shl112 = shl i32 %69, %71
  %72 = load i32, i32* %rd, align 4
  %idxprom113 = sext i32 %72 to i64
  %arrayidx114 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i64 0, i64 %idxprom113
  store i32 %shl112, i32* %arrayidx114, align 4
  br label %sw.epilog

sw.bb115:                                         ; preds = %sw.bb
  %73 = load i32, i32* %rt, align 4
  %idxprom116 = sext i32 %73 to i64
  %arrayidx117 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i64 0, i64 %idxprom116
  %74 = load i32, i32* %arrayidx117, align 4
  %75 = load i32, i32* %rs, align 4
  %idxprom118 = sext i32 %75 to i64
  %arrayidx119 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i64 0, i64 %idxprom118
  %76 = load i32, i32* %arrayidx119, align 4
  %shr120 = ashr i32 %74, %76
  %77 = load i32, i32* %rd, align 4
  %idxprom121 = sext i32 %77 to i64
  %arrayidx122 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i64 0, i64 %idxprom121
  store i32 %shr120, i32* %arrayidx122, align 4
  br label %sw.epilog

sw.bb123:                                         ; preds = %sw.bb
  %78 = load i32, i32* %rs, align 4
  %idxprom124 = sext i32 %78 to i64
  %arrayidx125 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i64 0, i64 %idxprom124
  %79 = load i32, i32* %arrayidx125, align 4
  %80 = load i32, i32* %rt, align 4
  %idxprom126 = sext i32 %80 to i64
  %arrayidx127 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i64 0, i64 %idxprom126
  %81 = load i32, i32* %arrayidx127, align 4
  %cmp128 = icmp slt i32 %79, %81
  %conv129 = zext i1 %cmp128 to i32
  %82 = load i32, i32* %rd, align 4
  %idxprom130 = sext i32 %82 to i64
  %arrayidx131 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i64 0, i64 %idxprom130
  store i32 %conv129, i32* %arrayidx131, align 4
  br label %sw.epilog

sw.bb132:                                         ; preds = %sw.bb
  %83 = load i32, i32* %rs, align 4
  %idxprom133 = sext i32 %83 to i64
  %arrayidx134 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i64 0, i64 %idxprom133
  %84 = load i32, i32* %arrayidx134, align 4
  %85 = load i32, i32* %rt, align 4
  %idxprom135 = sext i32 %85 to i64
  %arrayidx136 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i64 0, i64 %idxprom135
  %86 = load i32, i32* %arrayidx136, align 4
  %cmp137 = icmp ult i32 %84, %86
  %conv138 = zext i1 %cmp137 to i32
  %87 = load i32, i32* %rd, align 4
  %idxprom139 = sext i32 %87 to i64
  %arrayidx140 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i64 0, i64 %idxprom139
  store i32 %conv138, i32* %arrayidx140, align 4
  br label %sw.epilog

sw.bb141:                                         ; preds = %sw.bb
  %88 = load i32, i32* %rs, align 4
  %idxprom142 = sext i32 %88 to i64
  %arrayidx143 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i64 0, i64 %idxprom142
  %89 = load i32, i32* %arrayidx143, align 4
  store i32 %89, i32* %pc, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %sw.bb
  store i32 0, i32* %pc, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb141, %sw.bb132, %sw.bb123, %sw.bb115, %sw.bb107, %sw.bb101, %sw.bb96, %sw.bb89, %sw.bb82, %sw.bb74, %sw.bb71, %sw.bb68, %sw.bb53, %sw.bb39, %sw.bb32, %sw.bb24
  br label %sw.epilog266

sw.bb144:                                         ; preds = %do.body
  %90 = load i32, i32* %ins, align 4
  %and145 = and i32 %90, 67108863
  store i32 %and145, i32* %tgtadr, align 4
  %91 = load i32, i32* %tgtadr, align 4
  %shl146 = shl i32 %91, 2
  store i32 %shl146, i32* %pc, align 4
  br label %sw.epilog266

sw.bb147:                                         ; preds = %do.body
  %92 = load i32, i32* %ins, align 4
  %and148 = and i32 %92, 67108863
  store i32 %and148, i32* %tgtadr, align 4
  %93 = load i32, i32* %pc, align 4
  %arrayidx149 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i64 0, i64 31
  store i32 %93, i32* %arrayidx149, align 4
  %94 = load i32, i32* %tgtadr, align 4
  %shl150 = shl i32 %94, 2
  store i32 %shl150, i32* %pc, align 4
  br label %sw.epilog266

sw.default151:                                    ; preds = %do.body
  %95 = load i32, i32* %ins, align 4
  %and152 = and i32 %95, 65535
  %conv153 = trunc i32 %and152 to i16
  store i16 %conv153, i16* %address, align 2
  %96 = load i32, i32* %ins, align 4
  %shr154 = lshr i32 %96, 16
  %and155 = and i32 %shr154, 31
  store i32 %and155, i32* %rt, align 4
  %97 = load i32, i32* %ins, align 4
  %shr156 = lshr i32 %97, 21
  %and157 = and i32 %shr156, 31
  store i32 %and157, i32* %rs, align 4
  %98 = load i32, i32* %op, align 4
  switch i32 %98, label %sw.default264 [
    i32 9, label %sw.bb158
    i32 12, label %sw.bb165
    i32 13, label %sw.bb172
    i32 14, label %sw.bb179
    i32 35, label %sw.bb186
    i32 43, label %sw.bb197
    i32 15, label %sw.bb208
    i32 4, label %sw.bb213
    i32 5, label %sw.bb224
    i32 1, label %sw.bb237
    i32 10, label %sw.bb248
    i32 11, label %sw.bb256
  ]

sw.bb158:                                         ; preds = %sw.default151
  %99 = load i32, i32* %rs, align 4
  %idxprom159 = sext i32 %99 to i64
  %arrayidx160 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i64 0, i64 %idxprom159
  %100 = load i32, i32* %arrayidx160, align 4
  %101 = load i16, i16* %address, align 2
  %conv161 = sext i16 %101 to i32
  %add162 = add nsw i32 %100, %conv161
  %102 = load i32, i32* %rt, align 4
  %idxprom163 = sext i32 %102 to i64
  %arrayidx164 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i64 0, i64 %idxprom163
  store i32 %add162, i32* %arrayidx164, align 4
  br label %sw.epilog265

sw.bb165:                                         ; preds = %sw.default151
  %103 = load i32, i32* %rs, align 4
  %idxprom166 = sext i32 %103 to i64
  %arrayidx167 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i64 0, i64 %idxprom166
  %104 = load i32, i32* %arrayidx167, align 4
  %105 = load i16, i16* %address, align 2
  %conv168 = zext i16 %105 to i32
  %and169 = and i32 %104, %conv168
  %106 = load i32, i32* %rt, align 4
  %idxprom170 = sext i32 %106 to i64
  %arrayidx171 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i64 0, i64 %idxprom170
  store i32 %and169, i32* %arrayidx171, align 4
  br label %sw.epilog265

sw.bb172:                                         ; preds = %sw.default151
  %107 = load i32, i32* %rs, align 4
  %idxprom173 = sext i32 %107 to i64
  %arrayidx174 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i64 0, i64 %idxprom173
  %108 = load i32, i32* %arrayidx174, align 4
  %109 = load i16, i16* %address, align 2
  %conv175 = zext i16 %109 to i32
  %or176 = or i32 %108, %conv175
  %110 = load i32, i32* %rt, align 4
  %idxprom177 = sext i32 %110 to i64
  %arrayidx178 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i64 0, i64 %idxprom177
  store i32 %or176, i32* %arrayidx178, align 4
  br label %sw.epilog265

sw.bb179:                                         ; preds = %sw.default151
  %111 = load i32, i32* %rs, align 4
  %idxprom180 = sext i32 %111 to i64
  %arrayidx181 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i64 0, i64 %idxprom180
  %112 = load i32, i32* %arrayidx181, align 4
  %113 = load i16, i16* %address, align 2
  %conv182 = zext i16 %113 to i32
  %xor183 = xor i32 %112, %conv182
  %114 = load i32, i32* %rt, align 4
  %idxprom184 = sext i32 %114 to i64
  %arrayidx185 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i64 0, i64 %idxprom184
  store i32 %xor183, i32* %arrayidx185, align 4
  br label %sw.epilog265

sw.bb186:                                         ; preds = %sw.default151
  %115 = load i32, i32* %rs, align 4
  %idxprom187 = sext i32 %115 to i64
  %arrayidx188 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i64 0, i64 %idxprom187
  %116 = load i32, i32* %arrayidx188, align 4
  %117 = load i16, i16* %address, align 2
  %conv189 = sext i16 %117 to i32
  %add190 = add nsw i32 %116, %conv189
  %and191 = and i32 %add190, 255
  %shr192 = ashr i32 %and191, 2
  %idxprom193 = sext i32 %shr192 to i64
  %arrayidx194 = getelementptr inbounds [64 x i32], [64 x i32]* %dmem, i64 0, i64 %idxprom193
  %118 = load i32, i32* %arrayidx194, align 4
  %119 = load i32, i32* %rt, align 4
  %idxprom195 = sext i32 %119 to i64
  %arrayidx196 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i64 0, i64 %idxprom195
  store i32 %118, i32* %arrayidx196, align 4
  br label %sw.epilog265

sw.bb197:                                         ; preds = %sw.default151
  %120 = load i32, i32* %rt, align 4
  %idxprom198 = sext i32 %120 to i64
  %arrayidx199 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i64 0, i64 %idxprom198
  %121 = load i32, i32* %arrayidx199, align 4
  %122 = load i32, i32* %rs, align 4
  %idxprom200 = sext i32 %122 to i64
  %arrayidx201 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i64 0, i64 %idxprom200
  %123 = load i32, i32* %arrayidx201, align 4
  %124 = load i16, i16* %address, align 2
  %conv202 = sext i16 %124 to i32
  %add203 = add nsw i32 %123, %conv202
  %and204 = and i32 %add203, 255
  %shr205 = ashr i32 %and204, 2
  %idxprom206 = sext i32 %shr205 to i64
  %arrayidx207 = getelementptr inbounds [64 x i32], [64 x i32]* %dmem, i64 0, i64 %idxprom206
  store i32 %121, i32* %arrayidx207, align 4
  br label %sw.epilog265

sw.bb208:                                         ; preds = %sw.default151
  %125 = load i16, i16* %address, align 2
  %conv209 = sext i16 %125 to i32
  %shl210 = shl i32 %conv209, 16
  %126 = load i32, i32* %rt, align 4
  %idxprom211 = sext i32 %126 to i64
  %arrayidx212 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i64 0, i64 %idxprom211
  store i32 %shl210, i32* %arrayidx212, align 4
  br label %sw.epilog265

sw.bb213:                                         ; preds = %sw.default151
  %127 = load i32, i32* %rs, align 4
  %idxprom214 = sext i32 %127 to i64
  %arrayidx215 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i64 0, i64 %idxprom214
  %128 = load i32, i32* %arrayidx215, align 4
  %129 = load i32, i32* %rt, align 4
  %idxprom216 = sext i32 %129 to i64
  %arrayidx217 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i64 0, i64 %idxprom216
  %130 = load i32, i32* %arrayidx217, align 4
  %cmp218 = icmp eq i32 %128, %130
  br i1 %cmp218, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb213
  %131 = load i32, i32* %pc, align 4
  %sub220 = sub nsw i32 %131, 4
  %132 = load i16, i16* %address, align 2
  %conv221 = sext i16 %132 to i32
  %shl222 = shl i32 %conv221, 2
  %add223 = add nsw i32 %sub220, %shl222
  store i32 %add223, i32* %pc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb213
  br label %sw.epilog265

sw.bb224:                                         ; preds = %sw.default151
  %133 = load i32, i32* %rs, align 4
  %idxprom225 = sext i32 %133 to i64
  %arrayidx226 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i64 0, i64 %idxprom225
  %134 = load i32, i32* %arrayidx226, align 4
  %135 = load i32, i32* %rt, align 4
  %idxprom227 = sext i32 %135 to i64
  %arrayidx228 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i64 0, i64 %idxprom227
  %136 = load i32, i32* %arrayidx228, align 4
  %cmp229 = icmp ne i32 %134, %136
  br i1 %cmp229, label %if.then231, label %if.end236

if.then231:                                       ; preds = %sw.bb224
  %137 = load i32, i32* %pc, align 4
  %sub232 = sub nsw i32 %137, 4
  %138 = load i16, i16* %address, align 2
  %conv233 = sext i16 %138 to i32
  %shl234 = shl i32 %conv233, 2
  %add235 = add nsw i32 %sub232, %shl234
  store i32 %add235, i32* %pc, align 4
  br label %if.end236

if.end236:                                        ; preds = %if.then231, %sw.bb224
  br label %sw.epilog265

sw.bb237:                                         ; preds = %sw.default151
  %139 = load i32, i32* %rs, align 4
  %idxprom238 = sext i32 %139 to i64
  %arrayidx239 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i64 0, i64 %idxprom238
  %140 = load i32, i32* %arrayidx239, align 4
  %cmp240 = icmp sge i32 %140, 0
  br i1 %cmp240, label %if.then242, label %if.end247

if.then242:                                       ; preds = %sw.bb237
  %141 = load i32, i32* %pc, align 4
  %sub243 = sub nsw i32 %141, 4
  %142 = load i16, i16* %address, align 2
  %conv244 = sext i16 %142 to i32
  %shl245 = shl i32 %conv244, 2
  %add246 = add nsw i32 %sub243, %shl245
  store i32 %add246, i32* %pc, align 4
  br label %if.end247

if.end247:                                        ; preds = %if.then242, %sw.bb237
  br label %sw.epilog265

sw.bb248:                                         ; preds = %sw.default151
  %143 = load i32, i32* %rs, align 4
  %idxprom249 = sext i32 %143 to i64
  %arrayidx250 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i64 0, i64 %idxprom249
  %144 = load i32, i32* %arrayidx250, align 4
  %145 = load i16, i16* %address, align 2
  %conv251 = sext i16 %145 to i32
  %cmp252 = icmp slt i32 %144, %conv251
  %conv253 = zext i1 %cmp252 to i32
  %146 = load i32, i32* %rt, align 4
  %idxprom254 = sext i32 %146 to i64
  %arrayidx255 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i64 0, i64 %idxprom254
  store i32 %conv253, i32* %arrayidx255, align 4
  br label %sw.epilog265

sw.bb256:                                         ; preds = %sw.default151
  %147 = load i32, i32* %rs, align 4
  %idxprom257 = sext i32 %147 to i64
  %arrayidx258 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i64 0, i64 %idxprom257
  %148 = load i32, i32* %arrayidx258, align 4
  %149 = load i16, i16* %address, align 2
  %conv259 = zext i16 %149 to i32
  %cmp260 = icmp ult i32 %148, %conv259
  %conv261 = zext i1 %cmp260 to i32
  %150 = load i32, i32* %rt, align 4
  %idxprom262 = sext i32 %150 to i64
  %arrayidx263 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i64 0, i64 %idxprom262
  store i32 %conv261, i32* %arrayidx263, align 4
  br label %sw.epilog265

sw.default264:                                    ; preds = %sw.default151
  store i32 0, i32* %pc, align 4
  br label %sw.epilog265

sw.epilog265:                                     ; preds = %sw.default264, %sw.bb256, %sw.bb248, %if.end247, %if.end236, %if.end, %sw.bb208, %sw.bb197, %sw.bb186, %sw.bb179, %sw.bb172, %sw.bb165, %sw.bb158
  br label %sw.epilog266

sw.epilog266:                                     ; preds = %sw.epilog265, %sw.bb147, %sw.bb144, %sw.epilog
  %arrayidx267 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i64 0, i64 0
  store i32 0, i32* %arrayidx267, align 16
  %151 = load i32, i32* %n_inst, align 4
  %add268 = add nsw i32 %151, 1
  store i32 %add268, i32* %n_inst, align 4
  br label %do.cond

do.cond:                                          ; preds = %sw.epilog266
  %152 = load i32, i32* %pc, align 4
  %cmp269 = icmp ne i32 %152, 0
  br i1 %cmp269, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %153 = load i32, i32* %n_inst, align 4
  %cmp271 = icmp ne i32 %153, 611
  %conv272 = zext i1 %cmp271 to i32
  %154 = load i32, i32* @main_result, align 4
  %add273 = add nsw i32 %154, %conv272
  store i32 %add273, i32* @main_result, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond274

for.cond274:                                      ; preds = %for.inc285, %do.end
  %155 = load i32, i32* %j, align 4
  %cmp275 = icmp slt i32 %155, 8
  br i1 %cmp275, label %for.body277, label %for.end287

for.body277:                                      ; preds = %for.cond274
  %156 = load i32, i32* %j, align 4
  %idxprom278 = sext i32 %156 to i64
  %arrayidx279 = getelementptr inbounds [64 x i32], [64 x i32]* %dmem, i64 0, i64 %idxprom278
  %157 = load i32, i32* %arrayidx279, align 4
  %158 = load i32, i32* %j, align 4
  %idxprom280 = sext i32 %158 to i64
  %arrayidx281 = getelementptr inbounds [8 x i32], [8 x i32]* @outData, i64 0, i64 %idxprom280
  %159 = load i32, i32* %arrayidx281, align 4
  %cmp282 = icmp ne i32 %157, %159
  %conv283 = zext i1 %cmp282 to i32
  %160 = load i32, i32* @main_result, align 4
  %add284 = add nsw i32 %160, %conv283
  store i32 %add284, i32* @main_result, align 4
  br label %for.inc285

for.inc285:                                       ; preds = %for.body277
  %161 = load i32, i32* %j, align 4
  %inc286 = add nsw i32 %161, 1
  store i32 %inc286, i32* %j, align 4
  br label %for.cond274

for.end287:                                       ; preds = %for.cond274
  %162 = load i32, i32* @main_result, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 %162)
  %163 = load i32, i32* @main_result, align 4
  ret i32 %163
}

declare i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
