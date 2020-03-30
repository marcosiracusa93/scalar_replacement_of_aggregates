; ModuleID = 'dfdiv/dfdiv.c'
source_filename = "dfdiv/dfdiv.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

%union.anon = type { double }

@float_rounding_mode = global i32 0, align 4
@float_exception_flags = global i32 0, align 4
@a_input = constant [22 x i64] [i64 9223090561878065152, i64 9218868437227405312, i64 9218868437227405312, i64 9218868437227405312, i64 4607182418800017408, i64 4607182418800017408, i64 0, i64 4607182418800017408, i64 0, i64 -9223372036854775808, i64 4613937818241073152, i64 -4609434218613702656, i64 4613937818241073152, i64 -4609434218613702656, i64 4611686018427387904, i64 -4611686018427387904, i64 4611686018427387904, i64 -4611686018427387904, i64 4607182418800017408, i64 -4616189618054758400, i64 4607182418800017408, i64 -4616189618054758400], align 16
@b_input = constant [22 x i64] [i64 4607182418800017408, i64 9221120237041090560, i64 9218868437227405312, i64 4607182418800017408, i64 9221120237041090560, i64 9218868437227405312, i64 0, i64 0, i64 4607182418800017408, i64 4607182418800017408, i64 4611686018427387904, i64 4611686018427387904, i64 -4611686018427387904, i64 -4611686018427387904, i64 4616189618054758400, i64 4616189618054758400, i64 -4607182418800017408, i64 -4607182418800017408, i64 4609434218613702656, i64 4609434218613702656, i64 -4613937818241073152, i64 -4613937818241073152], align 16
@z_output = constant [22 x i64] [i64 9223090561878065152, i64 9221120237041090560, i64 9223372036854775807, i64 9218868437227405312, i64 9221120237041090560, i64 0, i64 9223372036854775807, i64 9218868437227405312, i64 0, i64 -9223372036854775808, i64 4609434218613702656, i64 -4613937818241073152, i64 -4613937818241073152, i64 4609434218613702656, i64 4602678819172646912, i64 -4620693217682128896, i64 -4620693217682128896, i64 4602678819172646912, i64 4604180019048437077, i64 -4619192017806338731, i64 -4619192017806338731, i64 4604180019048437077], align 16
@.str = private unnamed_addr constant [71 x i8] c"a_input=%016llx b_input=%016llx expected=%016llx output=%016llx (%lf)\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@countLeadingZeros32.countLeadingZerosHigh = internal constant [256 x i32] [i32 8, i32 7, i32 6, i32 6, i32 5, i32 5, i32 5, i32 5, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16

; Function Attrs: noinline nounwind ssp uwtable
define void @shift64RightJamming(i64 %a, i32 %count, i64* %zPtr) #0 {
entry:
  %a.addr = alloca i64, align 8
  %count.addr = alloca i32, align 4
  %zPtr.addr = alloca i64*, align 8
  %z = alloca i64, align 8
  store i64 %a, i64* %a.addr, align 8
  store i32 %count, i32* %count.addr, align 4
  store i64* %zPtr, i64** %zPtr.addr, align 8
  %0 = load i32, i32* %count.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i64, i64* %a.addr, align 8
  store i64 %1, i64* %z, align 8
  br label %if.end10

if.else:                                          ; preds = %entry
  %2 = load i32, i32* %count.addr, align 4
  %cmp1 = icmp slt i32 %2, 64
  br i1 %cmp1, label %if.then2, label %if.else6

if.then2:                                         ; preds = %if.else
  %3 = load i64, i64* %a.addr, align 8
  %4 = load i32, i32* %count.addr, align 4
  %sh_prom = zext i32 %4 to i64
  %shr = lshr i64 %3, %sh_prom
  %5 = load i64, i64* %a.addr, align 8
  %6 = load i32, i32* %count.addr, align 4
  %sub = sub nsw i32 0, %6
  %and = and i32 %sub, 63
  %sh_prom3 = zext i32 %and to i64
  %shl = shl i64 %5, %sh_prom3
  %cmp4 = icmp ne i64 %shl, 0
  %conv = zext i1 %cmp4 to i32
  %conv5 = sext i32 %conv to i64
  %or = or i64 %shr, %conv5
  store i64 %or, i64* %z, align 8
  br label %if.end

if.else6:                                         ; preds = %if.else
  %7 = load i64, i64* %a.addr, align 8
  %cmp7 = icmp ne i64 %7, 0
  %conv8 = zext i1 %cmp7 to i32
  %conv9 = sext i32 %conv8 to i64
  store i64 %conv9, i64* %z, align 8
  br label %if.end

if.end:                                           ; preds = %if.else6, %if.then2
  br label %if.end10

if.end10:                                         ; preds = %if.end, %if.then
  %8 = load i64, i64* %z, align 8
  %9 = load i64*, i64** %zPtr.addr, align 8
  store i64 %8, i64* %9, align 8
  ret void
}

; Function Attrs: noinline nounwind ssp uwtable
define void @add128(i64 %a0, i64 %a1, i64 %b0, i64 %b1, i64* %z0Ptr, i64* %z1Ptr) #0 {
entry:
  %a0.addr = alloca i64, align 8
  %a1.addr = alloca i64, align 8
  %b0.addr = alloca i64, align 8
  %b1.addr = alloca i64, align 8
  %z0Ptr.addr = alloca i64*, align 8
  %z1Ptr.addr = alloca i64*, align 8
  %z1 = alloca i64, align 8
  store i64 %a0, i64* %a0.addr, align 8
  store i64 %a1, i64* %a1.addr, align 8
  store i64 %b0, i64* %b0.addr, align 8
  store i64 %b1, i64* %b1.addr, align 8
  store i64* %z0Ptr, i64** %z0Ptr.addr, align 8
  store i64* %z1Ptr, i64** %z1Ptr.addr, align 8
  %0 = load i64, i64* %a1.addr, align 8
  %1 = load i64, i64* %b1.addr, align 8
  %add = add i64 %0, %1
  store i64 %add, i64* %z1, align 8
  %2 = load i64, i64* %z1, align 8
  %3 = load i64*, i64** %z1Ptr.addr, align 8
  store i64 %2, i64* %3, align 8
  %4 = load i64, i64* %a0.addr, align 8
  %5 = load i64, i64* %b0.addr, align 8
  %add1 = add i64 %4, %5
  %6 = load i64, i64* %z1, align 8
  %7 = load i64, i64* %a1.addr, align 8
  %cmp = icmp ult i64 %6, %7
  %conv = zext i1 %cmp to i32
  %conv2 = sext i32 %conv to i64
  %add3 = add i64 %add1, %conv2
  %8 = load i64*, i64** %z0Ptr.addr, align 8
  store i64 %add3, i64* %8, align 8
  ret void
}

; Function Attrs: noinline nounwind ssp uwtable
define void @sub128(i64 %a0, i64 %a1, i64 %b0, i64 %b1, i64* %z0Ptr, i64* %z1Ptr) #0 {
entry:
  %a0.addr = alloca i64, align 8
  %a1.addr = alloca i64, align 8
  %b0.addr = alloca i64, align 8
  %b1.addr = alloca i64, align 8
  %z0Ptr.addr = alloca i64*, align 8
  %z1Ptr.addr = alloca i64*, align 8
  store i64 %a0, i64* %a0.addr, align 8
  store i64 %a1, i64* %a1.addr, align 8
  store i64 %b0, i64* %b0.addr, align 8
  store i64 %b1, i64* %b1.addr, align 8
  store i64* %z0Ptr, i64** %z0Ptr.addr, align 8
  store i64* %z1Ptr, i64** %z1Ptr.addr, align 8
  %0 = load i64, i64* %a1.addr, align 8
  %1 = load i64, i64* %b1.addr, align 8
  %sub = sub i64 %0, %1
  %2 = load i64*, i64** %z1Ptr.addr, align 8
  store i64 %sub, i64* %2, align 8
  %3 = load i64, i64* %a0.addr, align 8
  %4 = load i64, i64* %b0.addr, align 8
  %sub1 = sub i64 %3, %4
  %5 = load i64, i64* %a1.addr, align 8
  %6 = load i64, i64* %b1.addr, align 8
  %cmp = icmp ult i64 %5, %6
  %conv = zext i1 %cmp to i32
  %conv2 = sext i32 %conv to i64
  %sub3 = sub i64 %sub1, %conv2
  %7 = load i64*, i64** %z0Ptr.addr, align 8
  store i64 %sub3, i64* %7, align 8
  ret void
}

; Function Attrs: noinline nounwind ssp uwtable
define void @mul64To128(i64 %a, i64 %b, i64* %z0Ptr, i64* %z1Ptr) #0 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  %z0Ptr.addr = alloca i64*, align 8
  %z1Ptr.addr = alloca i64*, align 8
  %aHigh = alloca i32, align 4
  %aLow = alloca i32, align 4
  %bHigh = alloca i32, align 4
  %bLow = alloca i32, align 4
  %z0 = alloca i64, align 8
  %zMiddleA = alloca i64, align 8
  %zMiddleB = alloca i64, align 8
  %z1 = alloca i64, align 8
  store i64 %a, i64* %a.addr, align 8
  store i64 %b, i64* %b.addr, align 8
  store i64* %z0Ptr, i64** %z0Ptr.addr, align 8
  store i64* %z1Ptr, i64** %z1Ptr.addr, align 8
  %0 = load i64, i64* %a.addr, align 8
  %conv = trunc i64 %0 to i32
  store i32 %conv, i32* %aLow, align 4
  %1 = load i64, i64* %a.addr, align 8
  %shr = lshr i64 %1, 32
  %conv1 = trunc i64 %shr to i32
  store i32 %conv1, i32* %aHigh, align 4
  %2 = load i64, i64* %b.addr, align 8
  %conv2 = trunc i64 %2 to i32
  store i32 %conv2, i32* %bLow, align 4
  %3 = load i64, i64* %b.addr, align 8
  %shr3 = lshr i64 %3, 32
  %conv4 = trunc i64 %shr3 to i32
  store i32 %conv4, i32* %bHigh, align 4
  %4 = load i32, i32* %aLow, align 4
  %conv5 = zext i32 %4 to i64
  %5 = load i32, i32* %bLow, align 4
  %conv6 = zext i32 %5 to i64
  %mul = mul i64 %conv5, %conv6
  store i64 %mul, i64* %z1, align 8
  %6 = load i32, i32* %aLow, align 4
  %conv7 = zext i32 %6 to i64
  %7 = load i32, i32* %bHigh, align 4
  %conv8 = zext i32 %7 to i64
  %mul9 = mul i64 %conv7, %conv8
  store i64 %mul9, i64* %zMiddleA, align 8
  %8 = load i32, i32* %aHigh, align 4
  %conv10 = zext i32 %8 to i64
  %9 = load i32, i32* %bLow, align 4
  %conv11 = zext i32 %9 to i64
  %mul12 = mul i64 %conv10, %conv11
  store i64 %mul12, i64* %zMiddleB, align 8
  %10 = load i32, i32* %aHigh, align 4
  %conv13 = zext i32 %10 to i64
  %11 = load i32, i32* %bHigh, align 4
  %conv14 = zext i32 %11 to i64
  %mul15 = mul i64 %conv13, %conv14
  store i64 %mul15, i64* %z0, align 8
  %12 = load i64, i64* %zMiddleB, align 8
  %13 = load i64, i64* %zMiddleA, align 8
  %add = add i64 %13, %12
  store i64 %add, i64* %zMiddleA, align 8
  %14 = load i64, i64* %zMiddleA, align 8
  %15 = load i64, i64* %zMiddleB, align 8
  %cmp = icmp ult i64 %14, %15
  %conv16 = zext i1 %cmp to i32
  %conv17 = sext i32 %conv16 to i64
  %shl = shl i64 %conv17, 32
  %16 = load i64, i64* %zMiddleA, align 8
  %shr18 = lshr i64 %16, 32
  %add19 = add i64 %shl, %shr18
  %17 = load i64, i64* %z0, align 8
  %add20 = add i64 %17, %add19
  store i64 %add20, i64* %z0, align 8
  %18 = load i64, i64* %zMiddleA, align 8
  %shl21 = shl i64 %18, 32
  store i64 %shl21, i64* %zMiddleA, align 8
  %19 = load i64, i64* %zMiddleA, align 8
  %20 = load i64, i64* %z1, align 8
  %add22 = add i64 %20, %19
  store i64 %add22, i64* %z1, align 8
  %21 = load i64, i64* %z1, align 8
  %22 = load i64, i64* %zMiddleA, align 8
  %cmp23 = icmp ult i64 %21, %22
  %conv24 = zext i1 %cmp23 to i32
  %conv25 = sext i32 %conv24 to i64
  %23 = load i64, i64* %z0, align 8
  %add26 = add i64 %23, %conv25
  store i64 %add26, i64* %z0, align 8
  %24 = load i64, i64* %z1, align 8
  %25 = load i64*, i64** %z1Ptr.addr, align 8
  store i64 %24, i64* %25, align 8
  %26 = load i64, i64* %z0, align 8
  %27 = load i64*, i64** %z0Ptr.addr, align 8
  store i64 %26, i64* %27, align 8
  ret void
}

; Function Attrs: noinline nounwind ssp uwtable
define void @float_raise(i32 %flags) #0 {
entry:
  %flags.addr = alloca i32, align 4
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load i32, i32* %flags.addr, align 4
  %1 = load i32, i32* @float_exception_flags, align 4
  %or = or i32 %1, %0
  store i32 %or, i32* @float_exception_flags, align 4
  ret void
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @float64_is_nan(i64 %a) #0 {
entry:
  %a.addr = alloca i64, align 8
  store i64 %a, i64* %a.addr, align 8
  %0 = load i64, i64* %a.addr, align 8
  %shl = shl i64 %0, 1
  %cmp = icmp ult i64 -9007199254740992, %shl
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @float64_is_signaling_nan(i64 %a) #0 {
entry:
  %a.addr = alloca i64, align 8
  store i64 %a, i64* %a.addr, align 8
  %0 = load i64, i64* %a.addr, align 8
  %shr = lshr i64 %0, 51
  %and = and i64 %shr, 4095
  %cmp = icmp eq i64 %and, 4094
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %1 = load i64, i64* %a.addr, align 8
  %and1 = and i64 %1, 2251799813685247
  %tobool = icmp ne i64 %and1, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %tobool, %land.rhs ]
  %land.ext = zext i1 %2 to i32
  ret i32 %land.ext
}

; Function Attrs: noinline nounwind ssp uwtable
define i64 @extractFloat64Frac(i64 %a) #0 {
entry:
  %a.addr = alloca i64, align 8
  store i64 %a, i64* %a.addr, align 8
  %0 = load i64, i64* %a.addr, align 8
  %and = and i64 %0, 4503599627370495
  ret i64 %and
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @extractFloat64Exp(i64 %a) #0 {
entry:
  %a.addr = alloca i64, align 8
  store i64 %a, i64* %a.addr, align 8
  %0 = load i64, i64* %a.addr, align 8
  %shr = lshr i64 %0, 52
  %and = and i64 %shr, 2047
  %conv = trunc i64 %and to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @extractFloat64Sign(i64 %a) #0 {
entry:
  %a.addr = alloca i64, align 8
  store i64 %a, i64* %a.addr, align 8
  %0 = load i64, i64* %a.addr, align 8
  %shr = lshr i64 %0, 63
  %conv = trunc i64 %shr to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind ssp uwtable
define i64 @packFloat64(i32 %zSign, i32 %zExp, i64 %zSig) #0 {
entry:
  %zSign.addr = alloca i32, align 4
  %zExp.addr = alloca i32, align 4
  %zSig.addr = alloca i64, align 8
  store i32 %zSign, i32* %zSign.addr, align 4
  store i32 %zExp, i32* %zExp.addr, align 4
  store i64 %zSig, i64* %zSig.addr, align 8
  %0 = load i32, i32* %zSign.addr, align 4
  %conv = sext i32 %0 to i64
  %shl = shl i64 %conv, 63
  %1 = load i32, i32* %zExp.addr, align 4
  %conv1 = sext i32 %1 to i64
  %shl2 = shl i64 %conv1, 52
  %add = add i64 %shl, %shl2
  %2 = load i64, i64* %zSig.addr, align 8
  %add3 = add i64 %add, %2
  ret i64 %add3
}

; Function Attrs: noinline nounwind ssp uwtable
define i64 @float64_div(i64 %a, i64 %b) #0 {
entry:
  %retval = alloca i64, align 8
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  %aSign = alloca i32, align 4
  %bSign = alloca i32, align 4
  %zSign = alloca i32, align 4
  %aExp = alloca i32, align 4
  %bExp = alloca i32, align 4
  %zExp = alloca i32, align 4
  %aSig = alloca i64, align 8
  %bSig = alloca i64, align 8
  %zSig = alloca i64, align 8
  %rem0 = alloca i64, align 8
  %rem1 = alloca i64, align 8
  %term0 = alloca i64, align 8
  %term1 = alloca i64, align 8
  store i64 %a, i64* %a.addr, align 8
  store i64 %b, i64* %b.addr, align 8
  %0 = load i64, i64* %a.addr, align 8
  %call = call i64 @extractFloat64Frac(i64 %0)
  store i64 %call, i64* %aSig, align 8
  %1 = load i64, i64* %a.addr, align 8
  %call1 = call i32 @extractFloat64Exp(i64 %1)
  store i32 %call1, i32* %aExp, align 4
  %2 = load i64, i64* %a.addr, align 8
  %call2 = call i32 @extractFloat64Sign(i64 %2)
  store i32 %call2, i32* %aSign, align 4
  %3 = load i64, i64* %b.addr, align 8
  %call3 = call i64 @extractFloat64Frac(i64 %3)
  store i64 %call3, i64* %bSig, align 8
  %4 = load i64, i64* %b.addr, align 8
  %call4 = call i32 @extractFloat64Exp(i64 %4)
  store i32 %call4, i32* %bExp, align 4
  %5 = load i64, i64* %b.addr, align 8
  %call5 = call i32 @extractFloat64Sign(i64 %5)
  store i32 %call5, i32* %bSign, align 4
  %6 = load i32, i32* %aSign, align 4
  %7 = load i32, i32* %bSign, align 4
  %xor = xor i32 %6, %7
  store i32 %xor, i32* %zSign, align 4
  %8 = load i32, i32* %aExp, align 4
  %cmp = icmp eq i32 %8, 2047
  br i1 %cmp, label %if.then, label %if.end16

if.then:                                          ; preds = %entry
  %9 = load i64, i64* %aSig, align 8
  %tobool = icmp ne i64 %9, 0
  br i1 %tobool, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.then
  %10 = load i64, i64* %a.addr, align 8
  %11 = load i64, i64* %b.addr, align 8
  %call7 = call i64 @propagateFloat64NaN(i64 %10, i64 %11)
  store i64 %call7, i64* %retval, align 8
  br label %return

if.end:                                           ; preds = %if.then
  %12 = load i32, i32* %bExp, align 4
  %cmp8 = icmp eq i32 %12, 2047
  br i1 %cmp8, label %if.then9, label %if.end14

if.then9:                                         ; preds = %if.end
  %13 = load i64, i64* %bSig, align 8
  %tobool10 = icmp ne i64 %13, 0
  br i1 %tobool10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.then9
  %14 = load i64, i64* %a.addr, align 8
  %15 = load i64, i64* %b.addr, align 8
  %call12 = call i64 @propagateFloat64NaN(i64 %14, i64 %15)
  store i64 %call12, i64* %retval, align 8
  br label %return

if.end13:                                         ; preds = %if.then9
  call void @float_raise(i32 16)
  store i64 9223372036854775807, i64* %retval, align 8
  br label %return

if.end14:                                         ; preds = %if.end
  %16 = load i32, i32* %zSign, align 4
  %call15 = call i64 @packFloat64(i32 %16, i32 2047, i64 0)
  store i64 %call15, i64* %retval, align 8
  br label %return

if.end16:                                         ; preds = %entry
  %17 = load i32, i32* %bExp, align 4
  %cmp17 = icmp eq i32 %17, 2047
  br i1 %cmp17, label %if.then18, label %if.end24

if.then18:                                        ; preds = %if.end16
  %18 = load i64, i64* %bSig, align 8
  %tobool19 = icmp ne i64 %18, 0
  br i1 %tobool19, label %if.then20, label %if.end22

if.then20:                                        ; preds = %if.then18
  %19 = load i64, i64* %a.addr, align 8
  %20 = load i64, i64* %b.addr, align 8
  %call21 = call i64 @propagateFloat64NaN(i64 %19, i64 %20)
  store i64 %call21, i64* %retval, align 8
  br label %return

if.end22:                                         ; preds = %if.then18
  %21 = load i32, i32* %zSign, align 4
  %call23 = call i64 @packFloat64(i32 %21, i32 0, i64 0)
  store i64 %call23, i64* %retval, align 8
  br label %return

if.end24:                                         ; preds = %if.end16
  %22 = load i32, i32* %bExp, align 4
  %cmp25 = icmp eq i32 %22, 0
  br i1 %cmp25, label %if.then26, label %if.end35

if.then26:                                        ; preds = %if.end24
  %23 = load i64, i64* %bSig, align 8
  %cmp27 = icmp eq i64 %23, 0
  br i1 %cmp27, label %if.then28, label %if.end34

if.then28:                                        ; preds = %if.then26
  %24 = load i32, i32* %aExp, align 4
  %conv = sext i32 %24 to i64
  %25 = load i64, i64* %aSig, align 8
  %or = or i64 %conv, %25
  %cmp29 = icmp eq i64 %or, 0
  br i1 %cmp29, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.then28
  call void @float_raise(i32 16)
  store i64 9223372036854775807, i64* %retval, align 8
  br label %return

if.end32:                                         ; preds = %if.then28
  call void @float_raise(i32 2)
  %26 = load i32, i32* %zSign, align 4
  %call33 = call i64 @packFloat64(i32 %26, i32 2047, i64 0)
  store i64 %call33, i64* %retval, align 8
  br label %return

if.end34:                                         ; preds = %if.then26
  %27 = load i64, i64* %bSig, align 8
  call void @normalizeFloat64Subnormal(i64 %27, i32* %bExp, i64* %bSig)
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %if.end24
  %28 = load i32, i32* %aExp, align 4
  %cmp36 = icmp eq i32 %28, 0
  br i1 %cmp36, label %if.then38, label %if.end44

if.then38:                                        ; preds = %if.end35
  %29 = load i64, i64* %aSig, align 8
  %cmp39 = icmp eq i64 %29, 0
  br i1 %cmp39, label %if.then41, label %if.end43

if.then41:                                        ; preds = %if.then38
  %30 = load i32, i32* %zSign, align 4
  %call42 = call i64 @packFloat64(i32 %30, i32 0, i64 0)
  store i64 %call42, i64* %retval, align 8
  br label %return

if.end43:                                         ; preds = %if.then38
  %31 = load i64, i64* %aSig, align 8
  call void @normalizeFloat64Subnormal(i64 %31, i32* %aExp, i64* %aSig)
  br label %if.end44

if.end44:                                         ; preds = %if.end43, %if.end35
  %32 = load i32, i32* %aExp, align 4
  %33 = load i32, i32* %bExp, align 4
  %sub = sub nsw i32 %32, %33
  %add = add nsw i32 %sub, 1021
  store i32 %add, i32* %zExp, align 4
  %34 = load i64, i64* %aSig, align 8
  %or45 = or i64 %34, 4503599627370496
  %shl = shl i64 %or45, 10
  store i64 %shl, i64* %aSig, align 8
  %35 = load i64, i64* %bSig, align 8
  %or46 = or i64 %35, 4503599627370496
  %shl47 = shl i64 %or46, 11
  store i64 %shl47, i64* %bSig, align 8
  %36 = load i64, i64* %bSig, align 8
  %37 = load i64, i64* %aSig, align 8
  %38 = load i64, i64* %aSig, align 8
  %add48 = add i64 %37, %38
  %cmp49 = icmp ule i64 %36, %add48
  br i1 %cmp49, label %if.then51, label %if.end52

if.then51:                                        ; preds = %if.end44
  %39 = load i64, i64* %aSig, align 8
  %shr = lshr i64 %39, 1
  store i64 %shr, i64* %aSig, align 8
  %40 = load i32, i32* %zExp, align 4
  %inc = add nsw i32 %40, 1
  store i32 %inc, i32* %zExp, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.then51, %if.end44
  %41 = load i64, i64* %aSig, align 8
  %42 = load i64, i64* %bSig, align 8
  %call53 = call i64 @estimateDiv128To64(i64 %41, i64 0, i64 %42)
  store i64 %call53, i64* %zSig, align 8
  %43 = load i64, i64* %zSig, align 8
  %and = and i64 %43, 511
  %cmp54 = icmp ule i64 %and, 2
  br i1 %cmp54, label %if.then56, label %if.end63

if.then56:                                        ; preds = %if.end52
  %44 = load i64, i64* %bSig, align 8
  %45 = load i64, i64* %zSig, align 8
  call void @mul64To128(i64 %44, i64 %45, i64* %term0, i64* %term1)
  %46 = load i64, i64* %aSig, align 8
  %47 = load i64, i64* %term0, align 8
  %48 = load i64, i64* %term1, align 8
  call void @sub128(i64 %46, i64 0, i64 %47, i64 %48, i64* %rem0, i64* %rem1)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then56
  %49 = load i64, i64* %rem0, align 8
  %cmp57 = icmp slt i64 %49, 0
  br i1 %cmp57, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %50 = load i64, i64* %zSig, align 8
  %dec = add i64 %50, -1
  store i64 %dec, i64* %zSig, align 8
  %51 = load i64, i64* %rem0, align 8
  %52 = load i64, i64* %rem1, align 8
  %53 = load i64, i64* %bSig, align 8
  call void @add128(i64 %51, i64 %52, i64 0, i64 %53, i64* %rem0, i64* %rem1)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %54 = load i64, i64* %rem1, align 8
  %cmp59 = icmp ne i64 %54, 0
  %conv60 = zext i1 %cmp59 to i32
  %conv61 = sext i32 %conv60 to i64
  %55 = load i64, i64* %zSig, align 8
  %or62 = or i64 %55, %conv61
  store i64 %or62, i64* %zSig, align 8
  br label %if.end63

if.end63:                                         ; preds = %while.end, %if.end52
  %56 = load i32, i32* %zSign, align 4
  %57 = load i32, i32* %zExp, align 4
  %58 = load i64, i64* %zSig, align 8
  %call64 = call i64 @roundAndPackFloat64(i32 %56, i32 %57, i64 %58)
  store i64 %call64, i64* %retval, align 8
  br label %return

return:                                           ; preds = %if.end63, %if.then41, %if.end32, %if.then31, %if.end22, %if.then20, %if.end14, %if.end13, %if.then11, %if.then6
  %59 = load i64, i64* %retval, align 8
  ret i64 %59
}

; Function Attrs: noinline nounwind ssp uwtable
define internal i64 @propagateFloat64NaN(i64 %a, i64 %b) #0 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  %aIsNaN = alloca i32, align 4
  %aIsSignalingNaN = alloca i32, align 4
  %bIsNaN = alloca i32, align 4
  %bIsSignalingNaN = alloca i32, align 4
  store i64 %a, i64* %a.addr, align 8
  store i64 %b, i64* %b.addr, align 8
  %0 = load i64, i64* %a.addr, align 8
  %call = call i32 @float64_is_nan(i64 %0)
  store i32 %call, i32* %aIsNaN, align 4
  %1 = load i64, i64* %a.addr, align 8
  %call1 = call i32 @float64_is_signaling_nan(i64 %1)
  store i32 %call1, i32* %aIsSignalingNaN, align 4
  %2 = load i64, i64* %b.addr, align 8
  %call2 = call i32 @float64_is_nan(i64 %2)
  store i32 %call2, i32* %bIsNaN, align 4
  %3 = load i64, i64* %b.addr, align 8
  %call3 = call i32 @float64_is_signaling_nan(i64 %3)
  store i32 %call3, i32* %bIsSignalingNaN, align 4
  %4 = load i64, i64* %a.addr, align 8
  %or = or i64 %4, 2251799813685248
  store i64 %or, i64* %a.addr, align 8
  %5 = load i64, i64* %b.addr, align 8
  %or4 = or i64 %5, 2251799813685248
  store i64 %or4, i64* %b.addr, align 8
  %6 = load i32, i32* %aIsSignalingNaN, align 4
  %7 = load i32, i32* %bIsSignalingNaN, align 4
  %or5 = or i32 %6, %7
  %tobool = icmp ne i32 %or5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @float_raise(i32 16)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i32, i32* %bIsSignalingNaN, align 4
  %tobool6 = icmp ne i32 %8, 0
  br i1 %tobool6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %9 = load i64, i64* %b.addr, align 8
  br label %cond.end15

cond.false:                                       ; preds = %if.end
  %10 = load i32, i32* %aIsSignalingNaN, align 4
  %tobool7 = icmp ne i32 %10, 0
  br i1 %tobool7, label %cond.true8, label %cond.false9

cond.true8:                                       ; preds = %cond.false
  %11 = load i64, i64* %a.addr, align 8
  br label %cond.end13

cond.false9:                                      ; preds = %cond.false
  %12 = load i32, i32* %bIsNaN, align 4
  %tobool10 = icmp ne i32 %12, 0
  br i1 %tobool10, label %cond.true11, label %cond.false12

cond.true11:                                      ; preds = %cond.false9
  %13 = load i64, i64* %b.addr, align 8
  br label %cond.end

cond.false12:                                     ; preds = %cond.false9
  %14 = load i64, i64* %a.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false12, %cond.true11
  %cond = phi i64 [ %13, %cond.true11 ], [ %14, %cond.false12 ]
  br label %cond.end13

cond.end13:                                       ; preds = %cond.end, %cond.true8
  %cond14 = phi i64 [ %11, %cond.true8 ], [ %cond, %cond.end ]
  br label %cond.end15

cond.end15:                                       ; preds = %cond.end13, %cond.true
  %cond16 = phi i64 [ %9, %cond.true ], [ %cond14, %cond.end13 ]
  ret i64 %cond16
}

; Function Attrs: noinline nounwind ssp uwtable
define internal void @normalizeFloat64Subnormal(i64 %aSig, i32* %zExpPtr, i64* %zSigPtr) #0 {
entry:
  %aSig.addr = alloca i64, align 8
  %zExpPtr.addr = alloca i32*, align 8
  %zSigPtr.addr = alloca i64*, align 8
  %shiftCount = alloca i32, align 4
  store i64 %aSig, i64* %aSig.addr, align 8
  store i32* %zExpPtr, i32** %zExpPtr.addr, align 8
  store i64* %zSigPtr, i64** %zSigPtr.addr, align 8
  %0 = load i64, i64* %aSig.addr, align 8
  %call = call i32 @countLeadingZeros64(i64 %0)
  %sub = sub nsw i32 %call, 11
  store i32 %sub, i32* %shiftCount, align 4
  %1 = load i64, i64* %aSig.addr, align 8
  %2 = load i32, i32* %shiftCount, align 4
  %sh_prom = zext i32 %2 to i64
  %shl = shl i64 %1, %sh_prom
  %3 = load i64*, i64** %zSigPtr.addr, align 8
  store i64 %shl, i64* %3, align 8
  %4 = load i32, i32* %shiftCount, align 4
  %sub1 = sub nsw i32 1, %4
  %5 = load i32*, i32** %zExpPtr.addr, align 8
  store i32 %sub1, i32* %5, align 4
  ret void
}

; Function Attrs: noinline nounwind ssp uwtable
define internal i64 @estimateDiv128To64(i64 %a0, i64 %a1, i64 %b) #0 {
entry:
  %retval = alloca i64, align 8
  %a0.addr = alloca i64, align 8
  %a1.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  %b0 = alloca i64, align 8
  %b1 = alloca i64, align 8
  %rem0 = alloca i64, align 8
  %rem1 = alloca i64, align 8
  %term0 = alloca i64, align 8
  %term1 = alloca i64, align 8
  %z = alloca i64, align 8
  store i64 %a0, i64* %a0.addr, align 8
  store i64 %a1, i64* %a1.addr, align 8
  store i64 %b, i64* %b.addr, align 8
  %0 = load i64, i64* %b.addr, align 8
  %1 = load i64, i64* %a0.addr, align 8
  %cmp = icmp ule i64 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 -1, i64* %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %b.addr, align 8
  %shr = lshr i64 %2, 32
  store i64 %shr, i64* %b0, align 8
  %3 = load i64, i64* %b0, align 8
  %shl = shl i64 %3, 32
  %4 = load i64, i64* %a0.addr, align 8
  %cmp1 = icmp ule i64 %shl, %4
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %5 = load i64, i64* %a0.addr, align 8
  %6 = load i64, i64* %b0, align 8
  %div = udiv i64 %5, %6
  %shl2 = shl i64 %div, 32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ -4294967296, %cond.true ], [ %shl2, %cond.false ]
  store i64 %cond, i64* %z, align 8
  %7 = load i64, i64* %b.addr, align 8
  %8 = load i64, i64* %z, align 8
  call void @mul64To128(i64 %7, i64 %8, i64* %term0, i64* %term1)
  %9 = load i64, i64* %a0.addr, align 8
  %10 = load i64, i64* %a1.addr, align 8
  %11 = load i64, i64* %term0, align 8
  %12 = load i64, i64* %term1, align 8
  call void @sub128(i64 %9, i64 %10, i64 %11, i64 %12, i64* %rem0, i64* %rem1)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %cond.end
  %13 = load i64, i64* %rem0, align 8
  %cmp3 = icmp slt i64 %13, 0
  br i1 %cmp3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %14 = load i64, i64* %z, align 8
  %sub = sub i64 %14, 4294967296
  store i64 %sub, i64* %z, align 8
  %15 = load i64, i64* %b.addr, align 8
  %shl4 = shl i64 %15, 32
  store i64 %shl4, i64* %b1, align 8
  %16 = load i64, i64* %rem0, align 8
  %17 = load i64, i64* %rem1, align 8
  %18 = load i64, i64* %b0, align 8
  %19 = load i64, i64* %b1, align 8
  call void @add128(i64 %16, i64 %17, i64 %18, i64 %19, i64* %rem0, i64* %rem1)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %20 = load i64, i64* %rem0, align 8
  %shl5 = shl i64 %20, 32
  %21 = load i64, i64* %rem1, align 8
  %shr6 = lshr i64 %21, 32
  %or = or i64 %shl5, %shr6
  store i64 %or, i64* %rem0, align 8
  %22 = load i64, i64* %b0, align 8
  %shl7 = shl i64 %22, 32
  %23 = load i64, i64* %rem0, align 8
  %cmp8 = icmp ule i64 %shl7, %23
  br i1 %cmp8, label %cond.true9, label %cond.false10

cond.true9:                                       ; preds = %while.end
  br label %cond.end12

cond.false10:                                     ; preds = %while.end
  %24 = load i64, i64* %rem0, align 8
  %25 = load i64, i64* %b0, align 8
  %div11 = udiv i64 %24, %25
  br label %cond.end12

cond.end12:                                       ; preds = %cond.false10, %cond.true9
  %cond13 = phi i64 [ 4294967295, %cond.true9 ], [ %div11, %cond.false10 ]
  %26 = load i64, i64* %z, align 8
  %or14 = or i64 %26, %cond13
  store i64 %or14, i64* %z, align 8
  %27 = load i64, i64* %z, align 8
  store i64 %27, i64* %retval, align 8
  br label %return

return:                                           ; preds = %cond.end12, %if.then
  %28 = load i64, i64* %retval, align 8
  ret i64 %28
}

; Function Attrs: noinline nounwind ssp uwtable
define internal i64 @roundAndPackFloat64(i32 %zSign, i32 %zExp, i64 %zSig) #0 {
entry:
  %retval = alloca i64, align 8
  %zSign.addr = alloca i32, align 4
  %zExp.addr = alloca i32, align 4
  %zSig.addr = alloca i64, align 8
  %roundingMode = alloca i32, align 4
  %roundNearestEven = alloca i32, align 4
  %isTiny = alloca i32, align 4
  %roundIncrement = alloca i32, align 4
  %roundBits = alloca i32, align 4
  store i32 %zSign, i32* %zSign.addr, align 4
  store i32 %zExp, i32* %zExp.addr, align 4
  store i64 %zSig, i64* %zSig.addr, align 8
  %0 = load i32, i32* @float_rounding_mode, align 4
  store i32 %0, i32* %roundingMode, align 4
  %1 = load i32, i32* %roundingMode, align 4
  %cmp = icmp eq i32 %1, 0
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %roundNearestEven, align 4
  store i32 512, i32* %roundIncrement, align 4
  %2 = load i32, i32* %roundNearestEven, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.end16, label %if.then

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %roundingMode, align 4
  %cmp1 = icmp eq i32 %3, 1
  br i1 %cmp1, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  store i32 0, i32* %roundIncrement, align 4
  br label %if.end15

if.else:                                          ; preds = %if.then
  store i32 1023, i32* %roundIncrement, align 4
  %4 = load i32, i32* %zSign.addr, align 4
  %tobool4 = icmp ne i32 %4, 0
  br i1 %tobool4, label %if.then5, label %if.else9

if.then5:                                         ; preds = %if.else
  %5 = load i32, i32* %roundingMode, align 4
  %cmp6 = icmp eq i32 %5, 2
  br i1 %cmp6, label %if.then8, label %if.end

if.then8:                                         ; preds = %if.then5
  store i32 0, i32* %roundIncrement, align 4
  br label %if.end

if.end:                                           ; preds = %if.then8, %if.then5
  br label %if.end14

if.else9:                                         ; preds = %if.else
  %6 = load i32, i32* %roundingMode, align 4
  %cmp10 = icmp eq i32 %6, 3
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.else9
  store i32 0, i32* %roundIncrement, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.else9
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %if.end
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.then3
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %entry
  %7 = load i64, i64* %zSig.addr, align 8
  %and = and i64 %7, 1023
  %conv17 = trunc i64 %and to i32
  store i32 %conv17, i32* %roundBits, align 4
  %8 = load i32, i32* %zExp.addr, align 4
  %conv18 = trunc i32 %8 to i16
  %conv19 = zext i16 %conv18 to i32
  %cmp20 = icmp sle i32 2045, %conv19
  br i1 %cmp20, label %if.then22, label %if.end47

if.then22:                                        ; preds = %if.end16
  %9 = load i32, i32* %zExp.addr, align 4
  %cmp23 = icmp slt i32 2045, %9
  br i1 %cmp23, label %if.then30, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then22
  %10 = load i32, i32* %zExp.addr, align 4
  %cmp25 = icmp eq i32 %10, 2045
  br i1 %cmp25, label %land.lhs.true, label %if.end34

land.lhs.true:                                    ; preds = %lor.lhs.false
  %11 = load i64, i64* %zSig.addr, align 8
  %12 = load i32, i32* %roundIncrement, align 4
  %conv27 = sext i32 %12 to i64
  %add = add i64 %11, %conv27
  %cmp28 = icmp slt i64 %add, 0
  br i1 %cmp28, label %if.then30, label %if.end34

if.then30:                                        ; preds = %land.lhs.true, %if.then22
  call void @float_raise(i32 9)
  %13 = load i32, i32* %zSign.addr, align 4
  %call = call i64 @packFloat64(i32 %13, i32 2047, i64 0)
  %14 = load i32, i32* %roundIncrement, align 4
  %cmp31 = icmp eq i32 %14, 0
  %conv32 = zext i1 %cmp31 to i32
  %conv33 = sext i32 %conv32 to i64
  %sub = sub i64 %call, %conv33
  store i64 %sub, i64* %retval, align 8
  br label %return

if.end34:                                         ; preds = %land.lhs.true, %lor.lhs.false
  %15 = load i32, i32* %zExp.addr, align 4
  %cmp35 = icmp slt i32 %15, 0
  br i1 %cmp35, label %if.then37, label %if.end46

if.then37:                                        ; preds = %if.end34
  store i32 1, i32* %isTiny, align 4
  %16 = load i64, i64* %zSig.addr, align 8
  %17 = load i32, i32* %zExp.addr, align 4
  %sub38 = sub nsw i32 0, %17
  call void @shift64RightJamming(i64 %16, i32 %sub38, i64* %zSig.addr)
  store i32 0, i32* %zExp.addr, align 4
  %18 = load i64, i64* %zSig.addr, align 8
  %and39 = and i64 %18, 1023
  %conv40 = trunc i64 %and39 to i32
  store i32 %conv40, i32* %roundBits, align 4
  %19 = load i32, i32* %isTiny, align 4
  %tobool41 = icmp ne i32 %19, 0
  br i1 %tobool41, label %land.lhs.true42, label %if.end45

land.lhs.true42:                                  ; preds = %if.then37
  %20 = load i32, i32* %roundBits, align 4
  %tobool43 = icmp ne i32 %20, 0
  br i1 %tobool43, label %if.then44, label %if.end45

if.then44:                                        ; preds = %land.lhs.true42
  call void @float_raise(i32 4)
  br label %if.end45

if.end45:                                         ; preds = %if.then44, %land.lhs.true42, %if.then37
  br label %if.end46

if.end46:                                         ; preds = %if.end45, %if.end34
  br label %if.end47

if.end47:                                         ; preds = %if.end46, %if.end16
  %21 = load i32, i32* %roundBits, align 4
  %tobool48 = icmp ne i32 %21, 0
  br i1 %tobool48, label %if.then49, label %if.end50

if.then49:                                        ; preds = %if.end47
  %22 = load i32, i32* @float_exception_flags, align 4
  %or = or i32 %22, 1
  store i32 %or, i32* @float_exception_flags, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.then49, %if.end47
  %23 = load i64, i64* %zSig.addr, align 8
  %24 = load i32, i32* %roundIncrement, align 4
  %conv51 = sext i32 %24 to i64
  %add52 = add i64 %23, %conv51
  %shr = lshr i64 %add52, 10
  store i64 %shr, i64* %zSig.addr, align 8
  %25 = load i32, i32* %roundBits, align 4
  %xor = xor i32 %25, 512
  %cmp53 = icmp eq i32 %xor, 0
  %conv54 = zext i1 %cmp53 to i32
  %26 = load i32, i32* %roundNearestEven, align 4
  %and55 = and i32 %conv54, %26
  %neg = xor i32 %and55, -1
  %conv56 = sext i32 %neg to i64
  %27 = load i64, i64* %zSig.addr, align 8
  %and57 = and i64 %27, %conv56
  store i64 %and57, i64* %zSig.addr, align 8
  %28 = load i64, i64* %zSig.addr, align 8
  %cmp58 = icmp eq i64 %28, 0
  br i1 %cmp58, label %if.then60, label %if.end61

if.then60:                                        ; preds = %if.end50
  store i32 0, i32* %zExp.addr, align 4
  br label %if.end61

if.end61:                                         ; preds = %if.then60, %if.end50
  %29 = load i32, i32* %zSign.addr, align 4
  %30 = load i32, i32* %zExp.addr, align 4
  %31 = load i64, i64* %zSig.addr, align 8
  %call62 = call i64 @packFloat64(i32 %29, i32 %30, i64 %31)
  store i64 %call62, i64* %retval, align 8
  br label %return

return:                                           ; preds = %if.end61, %if.then30
  %32 = load i64, i64* %retval, align 8
  ret i64 %32
}

; Function Attrs: noinline nounwind ssp uwtable
define double @ullong_to_double(i64 %x) #0 {
entry:
  %x.addr = alloca i64, align 8
  %t = alloca %union.anon, align 8
  store i64 %x, i64* %x.addr, align 8
  %0 = load i64, i64* %x.addr, align 8
  %ll = bitcast %union.anon* %t to i64*
  store i64 %0, i64* %ll, align 8
  %d = bitcast %union.anon* %t to double*
  %1 = load double, double* %d, align 8
  ret double %1
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %main_result = alloca i32, align 4
  %i = alloca i32, align 4
  %x1 = alloca i64, align 8
  %x2 = alloca i64, align 8
  %result = alloca i64, align 8
  store i32 0, i32* %retval, align 4
  store i32 0, i32* %main_result, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 22
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [22 x i64], [22 x i64]* @a_input, i64 0, i64 %idxprom
  %2 = load i64, i64* %arrayidx, align 8
  store i64 %2, i64* %x1, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [22 x i64], [22 x i64]* @b_input, i64 0, i64 %idxprom1
  %4 = load i64, i64* %arrayidx2, align 8
  store i64 %4, i64* %x2, align 8
  %5 = load i64, i64* %x1, align 8
  %6 = load i64, i64* %x2, align 8
  %call = call i64 @float64_div(i64 %5, i64 %6)
  store i64 %call, i64* %result, align 8
  %7 = load i64, i64* %result, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %8 to i64
  %arrayidx4 = getelementptr inbounds [22 x i64], [22 x i64]* @z_output, i64 0, i64 %idxprom3
  %9 = load i64, i64* %arrayidx4, align 8
  %cmp5 = icmp ne i64 %7, %9
  %conv = zext i1 %cmp5 to i32
  %10 = load i32, i32* %main_result, align 4
  %add = add nsw i32 %10, %conv
  store i32 %add, i32* %main_result, align 4
  %11 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %11 to i64
  %arrayidx7 = getelementptr inbounds [22 x i64], [22 x i64]* @a_input, i64 0, i64 %idxprom6
  %12 = load i64, i64* %arrayidx7, align 8
  %13 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %13 to i64
  %arrayidx9 = getelementptr inbounds [22 x i64], [22 x i64]* @b_input, i64 0, i64 %idxprom8
  %14 = load i64, i64* %arrayidx9, align 8
  %15 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %15 to i64
  %arrayidx11 = getelementptr inbounds [22 x i64], [22 x i64]* @z_output, i64 0, i64 %idxprom10
  %16 = load i64, i64* %arrayidx11, align 8
  %17 = load i64, i64* %result, align 8
  %18 = load i64, i64* %result, align 8
  %call12 = call double @ullong_to_double(i64 %18)
  %call13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i32 0, i32 0), i64 %12, i64 %14, i64 %16, i64 %17, double %call12)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %19 = load i32, i32* %i, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %20 = load i32, i32* %main_result, align 4
  %call14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %20)
  %21 = load i32, i32* %main_result, align 4
  ret i32 %21
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind ssp uwtable
define internal i32 @countLeadingZeros64(i64 %a) #0 {
entry:
  %a.addr = alloca i64, align 8
  %shiftCount = alloca i32, align 4
  store i64 %a, i64* %a.addr, align 8
  store i32 0, i32* %shiftCount, align 4
  %0 = load i64, i64* %a.addr, align 8
  %cmp = icmp ult i64 %0, 4294967296
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %shiftCount, align 4
  %add = add nsw i32 %1, 32
  store i32 %add, i32* %shiftCount, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load i64, i64* %a.addr, align 8
  %shr = lshr i64 %2, 32
  store i64 %shr, i64* %a.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i64, i64* %a.addr, align 8
  %conv = trunc i64 %3 to i32
  %call = call i32 @countLeadingZeros32(i32 %conv)
  %4 = load i32, i32* %shiftCount, align 4
  %add1 = add nsw i32 %4, %call
  store i32 %add1, i32* %shiftCount, align 4
  %5 = load i32, i32* %shiftCount, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind ssp uwtable
define internal i32 @countLeadingZeros32(i32 %a) #0 {
entry:
  %a.addr = alloca i32, align 4
  %shiftCount = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 0, i32* %shiftCount, align 4
  %0 = load i32, i32* %a.addr, align 4
  %cmp = icmp ult i32 %0, 65536
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %shiftCount, align 4
  %add = add nsw i32 %1, 16
  store i32 %add, i32* %shiftCount, align 4
  %2 = load i32, i32* %a.addr, align 4
  %shl = shl i32 %2, 16
  store i32 %shl, i32* %a.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* %a.addr, align 4
  %cmp1 = icmp ult i32 %3, 16777216
  br i1 %cmp1, label %if.then2, label %if.end5

if.then2:                                         ; preds = %if.end
  %4 = load i32, i32* %shiftCount, align 4
  %add3 = add nsw i32 %4, 8
  store i32 %add3, i32* %shiftCount, align 4
  %5 = load i32, i32* %a.addr, align 4
  %shl4 = shl i32 %5, 8
  store i32 %shl4, i32* %a.addr, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.end
  %6 = load i32, i32* %a.addr, align 4
  %shr = lshr i32 %6, 24
  %idxprom = zext i32 %shr to i64
  %arrayidx = getelementptr inbounds [256 x i32], [256 x i32]* @countLeadingZeros32.countLeadingZerosHigh, i64 0, i64 %idxprom
  %7 = load i32, i32* %arrayidx, align 4
  %8 = load i32, i32* %shiftCount, align 4
  %add6 = add nsw i32 %8, %7
  store i32 %add6, i32* %shiftCount, align 4
  %9 = load i32, i32* %shiftCount, align 4
  ret i32 %9
}

attributes #0 = { noinline nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
