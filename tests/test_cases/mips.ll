; ModuleID = 'mips.c'
source_filename = "mips.c"
target datalayout = "e-m:o-p:32:32-f64:32:64-f80:128-n8:16:32-S128"
target triple = "i386-apple-macosx10.13.0"

@imem = constant [44 x i32] [i32 -1885077504, i32 665124868, i32 614858756, i32 266368, i32 12726305, i32 202375190, i32 0, i32 872546314, i32 12, i32 1006702593, i32 875036672, i32 280704, i32 17385505, i32 -1926627328, i32 350336, i32 17520673, i32 -1922301952, i32 25847850, i32 295698435, i32 -1389625344, i32 -1385562112, i32 65011720, i32 666763252, i32 -1346437112, i32 -1347354620, i32 -1347420160, i32 605028352, i32 705167368, i32 285212683, i32 638648321, i32 707264520, i32 285212678, i32 637796352, i32 639959040, i32 202375177, i32 640745473, i32 135266334, i32 638582785, i32 135266331, i32 -1883308024, i32 -1884225532, i32 -1884291072, i32 666697740, i32 65011720], align 4
@A = constant [8 x i32] [i32 22, i32 5, i32 -9, i32 3, i32 -17, i32 38, i32 0, i32 11], align 4
@outData = constant [8 x i32] [i32 -17, i32 -9, i32 0, i32 3, i32 5, i32 11, i32 22, i32 38], align 4
@main_result = common global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind ssp
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %hilo = alloca i64, align 8
  %reg = alloca [32 x i32], align 4
  %Hi = alloca i32, align 4
  %Lo = alloca i32, align 4
  %pc = alloca i32, align 4
  %dmem = alloca [64 x i32], align 4
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
  %arrayidx = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i32 0, i32 %1
  store i32 0, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arrayidx1 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i32 0, i32 29
  store i32 2147479548, i32* %arrayidx1, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc7, %for.end
  %3 = load i32, i32* %i, align 4
  %cmp3 = icmp slt i32 %3, 8
  br i1 %cmp3, label %for.body4, label %for.end9

for.body4:                                        ; preds = %for.cond2
  %4 = load i32, i32* %i, align 4
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* @A, i32 0, i32 %4
  %5 = load i32, i32* %arrayidx5, align 4
  %6 = load i32, i32* %i, align 4
  %arrayidx6 = getelementptr inbounds [64 x i32], [64 x i32]* %dmem, i32 0, i32 %6
  store i32 %5, i32* %arrayidx6, align 4
  br label %for.inc7

for.inc7:                                         ; preds = %for.body4
  %7 = load i32, i32* %i, align 4
  %inc8 = add nsw i32 %7, 1
  store i32 %inc8, i32* %i, align 4
  br label %for.cond2

for.end9:                                         ; preds = %for.cond2
  store i32 8, i32* %i, align 4
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc14, %for.end9
  %8 = load i32, i32* %i, align 4
  %cmp11 = icmp slt i32 %8, 64
  br i1 %cmp11, label %for.body12, label %for.end16

for.body12:                                       ; preds = %for.cond10
  %9 = load i32, i32* %i, align 4
  %arrayidx13 = getelementptr inbounds [64 x i32], [64 x i32]* %dmem, i32 0, i32 %9
  store i32 0, i32* %arrayidx13, align 4
  br label %for.inc14

for.inc14:                                        ; preds = %for.body12
  %10 = load i32, i32* %i, align 4
  %inc15 = add nsw i32 %10, 1
  store i32 %inc15, i32* %i, align 4
  br label %for.cond10

for.end16:                                        ; preds = %for.cond10
  store i32 4194304, i32* %pc, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %for.end16
  %11 = load i32, i32* %pc, align 4
  %and = and i32 %11, 255
  %shr = ashr i32 %and, 2
  %arrayidx17 = getelementptr inbounds [44 x i32], [44 x i32]* @imem, i32 0, i32 %shr
  %12 = load i32, i32* %arrayidx17, align 4
  store i32 %12, i32* %ins, align 4
  %13 = load i32, i32* %pc, align 4
  %add = add nsw i32 %13, 4
  store i32 %add, i32* %pc, align 4
  %14 = load i32, i32* %ins, align 4
  %shr18 = lshr i32 %14, 26
  store i32 %shr18, i32* %op, align 4
  %15 = load i32, i32* %op, align 4
  switch i32 %15, label %sw.default110 [
    i32 0, label %sw.bb
    i32 2, label %sw.bb103
    i32 3, label %sw.bb106
  ]

sw.bb:                                            ; preds = %do.body
  %16 = load i32, i32* %ins, align 4
  %and19 = and i32 %16, 63
  store i32 %and19, i32* %funct, align 4
  %17 = load i32, i32* %ins, align 4
  %shr20 = lshr i32 %17, 6
  %and21 = and i32 %shr20, 31
  store i32 %and21, i32* %shamt, align 4
  %18 = load i32, i32* %ins, align 4
  %shr22 = lshr i32 %18, 11
  %and23 = and i32 %shr22, 31
  store i32 %and23, i32* %rd, align 4
  %19 = load i32, i32* %ins, align 4
  %shr24 = lshr i32 %19, 16
  %and25 = and i32 %shr24, 31
  store i32 %and25, i32* %rt, align 4
  %20 = load i32, i32* %ins, align 4
  %shr26 = lshr i32 %20, 21
  %and27 = and i32 %shr26, 31
  store i32 %and27, i32* %rs, align 4
  %21 = load i32, i32* %funct, align 4
  switch i32 %21, label %sw.default [
    i32 33, label %sw.bb28
    i32 35, label %sw.bb33
    i32 24, label %sw.bb37
    i32 25, label %sw.bb45
    i32 16, label %sw.bb55
    i32 18, label %sw.bb57
    i32 36, label %sw.bb59
    i32 37, label %sw.bb64
    i32 38, label %sw.bb68
    i32 0, label %sw.bb72
    i32 2, label %sw.bb75
    i32 4, label %sw.bb79
    i32 6, label %sw.bb84
    i32 42, label %sw.bb89
    i32 43, label %sw.bb95
    i32 8, label %sw.bb101
  ]

sw.bb28:                                          ; preds = %sw.bb
  %22 = load i32, i32* %rs, align 4
  %arrayidx29 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i32 0, i32 %22
  %23 = load i32, i32* %arrayidx29, align 4
  %24 = load i32, i32* %rt, align 4
  %arrayidx30 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i32 0, i32 %24
  %25 = load i32, i32* %arrayidx30, align 4
  %add31 = add nsw i32 %23, %25
  %26 = load i32, i32* %rd, align 4
  %arrayidx32 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i32 0, i32 %26
  store i32 %add31, i32* %arrayidx32, align 4
  br label %sw.epilog

sw.bb33:                                          ; preds = %sw.bb
  %27 = load i32, i32* %rs, align 4
  %arrayidx34 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i32 0, i32 %27
  %28 = load i32, i32* %arrayidx34, align 4
  %29 = load i32, i32* %rt, align 4
  %arrayidx35 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i32 0, i32 %29
  %30 = load i32, i32* %arrayidx35, align 4
  %sub = sub nsw i32 %28, %30
  %31 = load i32, i32* %rd, align 4
  %arrayidx36 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i32 0, i32 %31
  store i32 %sub, i32* %arrayidx36, align 4
  br label %sw.epilog

sw.bb37:                                          ; preds = %sw.bb
  %32 = load i32, i32* %rs, align 4
  %arrayidx38 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i32 0, i32 %32
  %33 = load i32, i32* %arrayidx38, align 4
  %conv = sext i32 %33 to i64
  %34 = load i32, i32* %rt, align 4
  %arrayidx39 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i32 0, i32 %34
  %35 = load i32, i32* %arrayidx39, align 4
  %conv40 = sext i32 %35 to i64
  %mul = mul nsw i64 %conv, %conv40
  store i64 %mul, i64* %hilo, align 8
  %36 = load i64, i64* %hilo, align 8
  %and41 = and i64 %36, 4294967295
  %conv42 = trunc i64 %and41 to i32
  store i32 %conv42, i32* %Lo, align 4
  %37 = load i64, i64* %hilo, align 8
  %shr43 = ashr i64 %37, 32
  %conv44 = trunc i64 %shr43 to i32
  store i32 %conv44, i32* %Hi, align 4
  br label %sw.epilog

sw.bb45:                                          ; preds = %sw.bb
  %38 = load i32, i32* %rs, align 4
  %arrayidx46 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i32 0, i32 %38
  %39 = load i32, i32* %arrayidx46, align 4
  %conv47 = zext i32 %39 to i64
  %40 = load i32, i32* %rt, align 4
  %arrayidx48 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i32 0, i32 %40
  %41 = load i32, i32* %arrayidx48, align 4
  %conv49 = zext i32 %41 to i64
  %mul50 = mul i64 %conv47, %conv49
  store i64 %mul50, i64* %hilo, align 8
  %42 = load i64, i64* %hilo, align 8
  %and51 = and i64 %42, 4294967295
  %conv52 = trunc i64 %and51 to i32
  store i32 %conv52, i32* %Lo, align 4
  %43 = load i64, i64* %hilo, align 8
  %shr53 = ashr i64 %43, 32
  %conv54 = trunc i64 %shr53 to i32
  store i32 %conv54, i32* %Hi, align 4
  br label %sw.epilog

sw.bb55:                                          ; preds = %sw.bb
  %44 = load i32, i32* %Hi, align 4
  %45 = load i32, i32* %rd, align 4
  %arrayidx56 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i32 0, i32 %45
  store i32 %44, i32* %arrayidx56, align 4
  br label %sw.epilog

sw.bb57:                                          ; preds = %sw.bb
  %46 = load i32, i32* %Lo, align 4
  %47 = load i32, i32* %rd, align 4
  %arrayidx58 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i32 0, i32 %47
  store i32 %46, i32* %arrayidx58, align 4
  br label %sw.epilog

sw.bb59:                                          ; preds = %sw.bb
  %48 = load i32, i32* %rs, align 4
  %arrayidx60 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i32 0, i32 %48
  %49 = load i32, i32* %arrayidx60, align 4
  %50 = load i32, i32* %rt, align 4
  %arrayidx61 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i32 0, i32 %50
  %51 = load i32, i32* %arrayidx61, align 4
  %and62 = and i32 %49, %51
  %52 = load i32, i32* %rd, align 4
  %arrayidx63 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i32 0, i32 %52
  store i32 %and62, i32* %arrayidx63, align 4
  br label %sw.epilog

sw.bb64:                                          ; preds = %sw.bb
  %53 = load i32, i32* %rs, align 4
  %arrayidx65 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i32 0, i32 %53
  %54 = load i32, i32* %arrayidx65, align 4
  %55 = load i32, i32* %rt, align 4
  %arrayidx66 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i32 0, i32 %55
  %56 = load i32, i32* %arrayidx66, align 4
  %or = or i32 %54, %56
  %57 = load i32, i32* %rd, align 4
  %arrayidx67 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i32 0, i32 %57
  store i32 %or, i32* %arrayidx67, align 4
  br label %sw.epilog

sw.bb68:                                          ; preds = %sw.bb
  %58 = load i32, i32* %rs, align 4
  %arrayidx69 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i32 0, i32 %58
  %59 = load i32, i32* %arrayidx69, align 4
  %60 = load i32, i32* %rt, align 4
  %arrayidx70 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i32 0, i32 %60
  %61 = load i32, i32* %arrayidx70, align 4
  %xor = xor i32 %59, %61
  %62 = load i32, i32* %rd, align 4
  %arrayidx71 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i32 0, i32 %62
  store i32 %xor, i32* %arrayidx71, align 4
  br label %sw.epilog

sw.bb72:                                          ; preds = %sw.bb
  %63 = load i32, i32* %rt, align 4
  %arrayidx73 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i32 0, i32 %63
  %64 = load i32, i32* %arrayidx73, align 4
  %65 = load i32, i32* %shamt, align 4
  %shl = shl i32 %64, %65
  %66 = load i32, i32* %rd, align 4
  %arrayidx74 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i32 0, i32 %66
  store i32 %shl, i32* %arrayidx74, align 4
  br label %sw.epilog

sw.bb75:                                          ; preds = %sw.bb
  %67 = load i32, i32* %rt, align 4
  %arrayidx76 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i32 0, i32 %67
  %68 = load i32, i32* %arrayidx76, align 4
  %69 = load i32, i32* %shamt, align 4
  %shr77 = ashr i32 %68, %69
  %70 = load i32, i32* %rd, align 4
  %arrayidx78 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i32 0, i32 %70
  store i32 %shr77, i32* %arrayidx78, align 4
  br label %sw.epilog

sw.bb79:                                          ; preds = %sw.bb
  %71 = load i32, i32* %rt, align 4
  %arrayidx80 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i32 0, i32 %71
  %72 = load i32, i32* %arrayidx80, align 4
  %73 = load i32, i32* %rs, align 4
  %arrayidx81 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i32 0, i32 %73
  %74 = load i32, i32* %arrayidx81, align 4
  %shl82 = shl i32 %72, %74
  %75 = load i32, i32* %rd, align 4
  %arrayidx83 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i32 0, i32 %75
  store i32 %shl82, i32* %arrayidx83, align 4
  br label %sw.epilog

sw.bb84:                                          ; preds = %sw.bb
  %76 = load i32, i32* %rt, align 4
  %arrayidx85 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i32 0, i32 %76
  %77 = load i32, i32* %arrayidx85, align 4
  %78 = load i32, i32* %rs, align 4
  %arrayidx86 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i32 0, i32 %78
  %79 = load i32, i32* %arrayidx86, align 4
  %shr87 = ashr i32 %77, %79
  %80 = load i32, i32* %rd, align 4
  %arrayidx88 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i32 0, i32 %80
  store i32 %shr87, i32* %arrayidx88, align 4
  br label %sw.epilog

sw.bb89:                                          ; preds = %sw.bb
  %81 = load i32, i32* %rs, align 4
  %arrayidx90 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i32 0, i32 %81
  %82 = load i32, i32* %arrayidx90, align 4
  %83 = load i32, i32* %rt, align 4
  %arrayidx91 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i32 0, i32 %83
  %84 = load i32, i32* %arrayidx91, align 4
  %cmp92 = icmp slt i32 %82, %84
  %conv93 = zext i1 %cmp92 to i32
  %85 = load i32, i32* %rd, align 4
  %arrayidx94 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i32 0, i32 %85
  store i32 %conv93, i32* %arrayidx94, align 4
  br label %sw.epilog

sw.bb95:                                          ; preds = %sw.bb
  %86 = load i32, i32* %rs, align 4
  %arrayidx96 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i32 0, i32 %86
  %87 = load i32, i32* %arrayidx96, align 4
  %88 = load i32, i32* %rt, align 4
  %arrayidx97 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i32 0, i32 %88
  %89 = load i32, i32* %arrayidx97, align 4
  %cmp98 = icmp ult i32 %87, %89
  %conv99 = zext i1 %cmp98 to i32
  %90 = load i32, i32* %rd, align 4
  %arrayidx100 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i32 0, i32 %90
  store i32 %conv99, i32* %arrayidx100, align 4
  br label %sw.epilog

sw.bb101:                                         ; preds = %sw.bb
  %91 = load i32, i32* %rs, align 4
  %arrayidx102 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i32 0, i32 %91
  %92 = load i32, i32* %arrayidx102, align 4
  store i32 %92, i32* %pc, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %sw.bb
  store i32 0, i32* %pc, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb101, %sw.bb95, %sw.bb89, %sw.bb84, %sw.bb79, %sw.bb75, %sw.bb72, %sw.bb68, %sw.bb64, %sw.bb59, %sw.bb57, %sw.bb55, %sw.bb45, %sw.bb37, %sw.bb33, %sw.bb28
  br label %sw.epilog201

sw.bb103:                                         ; preds = %do.body
  %93 = load i32, i32* %ins, align 4
  %and104 = and i32 %93, 67108863
  store i32 %and104, i32* %tgtadr, align 4
  %94 = load i32, i32* %tgtadr, align 4
  %shl105 = shl i32 %94, 2
  store i32 %shl105, i32* %pc, align 4
  br label %sw.epilog201

sw.bb106:                                         ; preds = %do.body
  %95 = load i32, i32* %ins, align 4
  %and107 = and i32 %95, 67108863
  store i32 %and107, i32* %tgtadr, align 4
  %96 = load i32, i32* %pc, align 4
  %arrayidx108 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i32 0, i32 31
  store i32 %96, i32* %arrayidx108, align 4
  %97 = load i32, i32* %tgtadr, align 4
  %shl109 = shl i32 %97, 2
  store i32 %shl109, i32* %pc, align 4
  br label %sw.epilog201

sw.default110:                                    ; preds = %do.body
  %98 = load i32, i32* %ins, align 4
  %and111 = and i32 %98, 65535
  %conv112 = trunc i32 %and111 to i16
  store i16 %conv112, i16* %address, align 2
  %99 = load i32, i32* %ins, align 4
  %shr113 = lshr i32 %99, 16
  %and114 = and i32 %shr113, 31
  store i32 %and114, i32* %rt, align 4
  %100 = load i32, i32* %ins, align 4
  %shr115 = lshr i32 %100, 21
  %and116 = and i32 %shr115, 31
  store i32 %and116, i32* %rs, align 4
  %101 = load i32, i32* %op, align 4
  switch i32 %101, label %sw.default199 [
    i32 9, label %sw.bb117
    i32 12, label %sw.bb122
    i32 13, label %sw.bb127
    i32 14, label %sw.bb132
    i32 35, label %sw.bb137
    i32 43, label %sw.bb145
    i32 15, label %sw.bb153
    i32 4, label %sw.bb157
    i32 5, label %sw.bb166
    i32 1, label %sw.bb177
    i32 10, label %sw.bb187
    i32 11, label %sw.bb193
  ]

sw.bb117:                                         ; preds = %sw.default110
  %102 = load i32, i32* %rs, align 4
  %arrayidx118 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i32 0, i32 %102
  %103 = load i32, i32* %arrayidx118, align 4
  %104 = load i16, i16* %address, align 2
  %conv119 = sext i16 %104 to i32
  %add120 = add nsw i32 %103, %conv119
  %105 = load i32, i32* %rt, align 4
  %arrayidx121 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i32 0, i32 %105
  store i32 %add120, i32* %arrayidx121, align 4
  br label %sw.epilog200

sw.bb122:                                         ; preds = %sw.default110
  %106 = load i32, i32* %rs, align 4
  %arrayidx123 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i32 0, i32 %106
  %107 = load i32, i32* %arrayidx123, align 4
  %108 = load i16, i16* %address, align 2
  %conv124 = zext i16 %108 to i32
  %and125 = and i32 %107, %conv124
  %109 = load i32, i32* %rt, align 4
  %arrayidx126 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i32 0, i32 %109
  store i32 %and125, i32* %arrayidx126, align 4
  br label %sw.epilog200

sw.bb127:                                         ; preds = %sw.default110
  %110 = load i32, i32* %rs, align 4
  %arrayidx128 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i32 0, i32 %110
  %111 = load i32, i32* %arrayidx128, align 4
  %112 = load i16, i16* %address, align 2
  %conv129 = zext i16 %112 to i32
  %or130 = or i32 %111, %conv129
  %113 = load i32, i32* %rt, align 4
  %arrayidx131 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i32 0, i32 %113
  store i32 %or130, i32* %arrayidx131, align 4
  br label %sw.epilog200

sw.bb132:                                         ; preds = %sw.default110
  %114 = load i32, i32* %rs, align 4
  %arrayidx133 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i32 0, i32 %114
  %115 = load i32, i32* %arrayidx133, align 4
  %116 = load i16, i16* %address, align 2
  %conv134 = zext i16 %116 to i32
  %xor135 = xor i32 %115, %conv134
  %117 = load i32, i32* %rt, align 4
  %arrayidx136 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i32 0, i32 %117
  store i32 %xor135, i32* %arrayidx136, align 4
  br label %sw.epilog200

sw.bb137:                                         ; preds = %sw.default110
  %118 = load i32, i32* %rs, align 4
  %arrayidx138 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i32 0, i32 %118
  %119 = load i32, i32* %arrayidx138, align 4
  %120 = load i16, i16* %address, align 2
  %conv139 = sext i16 %120 to i32
  %add140 = add nsw i32 %119, %conv139
  %and141 = and i32 %add140, 255
  %shr142 = ashr i32 %and141, 2
  %arrayidx143 = getelementptr inbounds [64 x i32], [64 x i32]* %dmem, i32 0, i32 %shr142
  %121 = load i32, i32* %arrayidx143, align 4
  %122 = load i32, i32* %rt, align 4
  %arrayidx144 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i32 0, i32 %122
  store i32 %121, i32* %arrayidx144, align 4
  br label %sw.epilog200

sw.bb145:                                         ; preds = %sw.default110
  %123 = load i32, i32* %rt, align 4
  %arrayidx146 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i32 0, i32 %123
  %124 = load i32, i32* %arrayidx146, align 4
  %125 = load i32, i32* %rs, align 4
  %arrayidx147 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i32 0, i32 %125
  %126 = load i32, i32* %arrayidx147, align 4
  %127 = load i16, i16* %address, align 2
  %conv148 = sext i16 %127 to i32
  %add149 = add nsw i32 %126, %conv148
  %and150 = and i32 %add149, 255
  %shr151 = ashr i32 %and150, 2
  %arrayidx152 = getelementptr inbounds [64 x i32], [64 x i32]* %dmem, i32 0, i32 %shr151
  store i32 %124, i32* %arrayidx152, align 4
  br label %sw.epilog200

sw.bb153:                                         ; preds = %sw.default110
  %128 = load i16, i16* %address, align 2
  %conv154 = sext i16 %128 to i32
  %shl155 = shl i32 %conv154, 16
  %129 = load i32, i32* %rt, align 4
  %arrayidx156 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i32 0, i32 %129
  store i32 %shl155, i32* %arrayidx156, align 4
  br label %sw.epilog200

sw.bb157:                                         ; preds = %sw.default110
  %130 = load i32, i32* %rs, align 4
  %arrayidx158 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i32 0, i32 %130
  %131 = load i32, i32* %arrayidx158, align 4
  %132 = load i32, i32* %rt, align 4
  %arrayidx159 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i32 0, i32 %132
  %133 = load i32, i32* %arrayidx159, align 4
  %cmp160 = icmp eq i32 %131, %133
  br i1 %cmp160, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb157
  %134 = load i32, i32* %pc, align 4
  %sub162 = sub nsw i32 %134, 4
  %135 = load i16, i16* %address, align 2
  %conv163 = sext i16 %135 to i32
  %shl164 = shl i32 %conv163, 2
  %add165 = add nsw i32 %sub162, %shl164
  store i32 %add165, i32* %pc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb157
  br label %sw.epilog200

sw.bb166:                                         ; preds = %sw.default110
  %136 = load i32, i32* %rs, align 4
  %arrayidx167 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i32 0, i32 %136
  %137 = load i32, i32* %arrayidx167, align 4
  %138 = load i32, i32* %rt, align 4
  %arrayidx168 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i32 0, i32 %138
  %139 = load i32, i32* %arrayidx168, align 4
  %cmp169 = icmp ne i32 %137, %139
  br i1 %cmp169, label %if.then171, label %if.end176

if.then171:                                       ; preds = %sw.bb166
  %140 = load i32, i32* %pc, align 4
  %sub172 = sub nsw i32 %140, 4
  %141 = load i16, i16* %address, align 2
  %conv173 = sext i16 %141 to i32
  %shl174 = shl i32 %conv173, 2
  %add175 = add nsw i32 %sub172, %shl174
  store i32 %add175, i32* %pc, align 4
  br label %if.end176

if.end176:                                        ; preds = %if.then171, %sw.bb166
  br label %sw.epilog200

sw.bb177:                                         ; preds = %sw.default110
  %142 = load i32, i32* %rs, align 4
  %arrayidx178 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i32 0, i32 %142
  %143 = load i32, i32* %arrayidx178, align 4
  %cmp179 = icmp sge i32 %143, 0
  br i1 %cmp179, label %if.then181, label %if.end186

if.then181:                                       ; preds = %sw.bb177
  %144 = load i32, i32* %pc, align 4
  %sub182 = sub nsw i32 %144, 4
  %145 = load i16, i16* %address, align 2
  %conv183 = sext i16 %145 to i32
  %shl184 = shl i32 %conv183, 2
  %add185 = add nsw i32 %sub182, %shl184
  store i32 %add185, i32* %pc, align 4
  br label %if.end186

if.end186:                                        ; preds = %if.then181, %sw.bb177
  br label %sw.epilog200

sw.bb187:                                         ; preds = %sw.default110
  %146 = load i32, i32* %rs, align 4
  %arrayidx188 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i32 0, i32 %146
  %147 = load i32, i32* %arrayidx188, align 4
  %148 = load i16, i16* %address, align 2
  %conv189 = sext i16 %148 to i32
  %cmp190 = icmp slt i32 %147, %conv189
  %conv191 = zext i1 %cmp190 to i32
  %149 = load i32, i32* %rt, align 4
  %arrayidx192 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i32 0, i32 %149
  store i32 %conv191, i32* %arrayidx192, align 4
  br label %sw.epilog200

sw.bb193:                                         ; preds = %sw.default110
  %150 = load i32, i32* %rs, align 4
  %arrayidx194 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i32 0, i32 %150
  %151 = load i32, i32* %arrayidx194, align 4
  %152 = load i16, i16* %address, align 2
  %conv195 = zext i16 %152 to i32
  %cmp196 = icmp ult i32 %151, %conv195
  %conv197 = zext i1 %cmp196 to i32
  %153 = load i32, i32* %rt, align 4
  %arrayidx198 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i32 0, i32 %153
  store i32 %conv197, i32* %arrayidx198, align 4
  br label %sw.epilog200

sw.default199:                                    ; preds = %sw.default110
  store i32 0, i32* %pc, align 4
  br label %sw.epilog200

sw.epilog200:                                     ; preds = %sw.default199, %sw.bb193, %sw.bb187, %if.end186, %if.end176, %if.end, %sw.bb153, %sw.bb145, %sw.bb137, %sw.bb132, %sw.bb127, %sw.bb122, %sw.bb117
  br label %sw.epilog201

sw.epilog201:                                     ; preds = %sw.epilog200, %sw.bb106, %sw.bb103, %sw.epilog
  %arrayidx202 = getelementptr inbounds [32 x i32], [32 x i32]* %reg, i32 0, i32 0
  store i32 0, i32* %arrayidx202, align 4
  %154 = load i32, i32* %n_inst, align 4
  %add203 = add nsw i32 %154, 1
  store i32 %add203, i32* %n_inst, align 4
  br label %do.cond

do.cond:                                          ; preds = %sw.epilog201
  %155 = load i32, i32* %pc, align 4
  %cmp204 = icmp ne i32 %155, 0
  br i1 %cmp204, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %156 = load i32, i32* %n_inst, align 4
  %cmp206 = icmp ne i32 %156, 611
  %conv207 = zext i1 %cmp206 to i32
  %157 = load i32, i32* @main_result, align 4
  %add208 = add nsw i32 %157, %conv207
  store i32 %add208, i32* @main_result, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond209

for.cond209:                                      ; preds = %for.inc218, %do.end
  %158 = load i32, i32* %j, align 4
  %cmp210 = icmp slt i32 %158, 8
  br i1 %cmp210, label %for.body212, label %for.end220

for.body212:                                      ; preds = %for.cond209
  %159 = load i32, i32* %j, align 4
  %arrayidx213 = getelementptr inbounds [64 x i32], [64 x i32]* %dmem, i32 0, i32 %159
  %160 = load i32, i32* %arrayidx213, align 4
  %161 = load i32, i32* %j, align 4
  %arrayidx214 = getelementptr inbounds [8 x i32], [8 x i32]* @outData, i32 0, i32 %161
  %162 = load i32, i32* %arrayidx214, align 4
  %cmp215 = icmp ne i32 %160, %162
  %conv216 = zext i1 %cmp215 to i32
  %163 = load i32, i32* @main_result, align 4
  %add217 = add nsw i32 %163, %conv216
  store i32 %add217, i32* @main_result, align 4
  br label %for.inc218

for.inc218:                                       ; preds = %for.body212
  %164 = load i32, i32* %j, align 4
  %inc219 = add nsw i32 %164, 1
  store i32 %inc219, i32* %j, align 4
  br label %for.cond209

for.end220:                                       ; preds = %for.cond209
  %165 = load i32, i32* @main_result, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 %165)
  %166 = load i32, i32* @main_result, align 4
  ret i32 %166
}

declare i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind ssp "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
