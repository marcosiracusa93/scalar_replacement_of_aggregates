; ModuleID = 'dfadd/dfadd.c'
source_filename = "dfadd/dfadd.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

%union.anon = type { double }
%struct.timeval = type { i64, i32 }

@float_rounding_mode = global i32 0, align 4
@float_exception_flags = global i32 0, align 4
@a_input = constant [46 x i64] [i64 9221120237041090560, i64 9218868437227405312, i64 4611686018427387904, i64 4611686018427387904, i64 4607182418800017408, i64 4607182418800017408, i64 0, i64 4609434218613702656, i64 9221120237041090560, i64 9218868437227405312, i64 0, i64 4609434218613702656, i64 -2251799813685248, i64 -4503599627370496, i64 -4611686018427387904, i64 -4611686018427387904, i64 -4616189618054758400, i64 -4616189618054758400, i64 -9223372036854775808, i64 -4613937818241073152, i64 -2251799813685248, i64 -4503599627370496, i64 -9223372036854775808, i64 -4613937818241073152, i64 9221120237041090560, i64 9218868437227405312, i64 4607182418800017408, i64 4607182418800017408, i64 4607182418800017408, i64 0, i64 4609434218613702656, i64 9221120237041090560, i64 9218868437227405312, i64 4607182418800017408, i64 4611686018427387904, i64 -4503599627370496, i64 -4503599627370496, i64 -4616189618054758400, i64 -4616189618054758400, i64 -4616189618054758400, i64 -9223372036854775808, i64 -4613937818241073152, i64 -2251799813685248, i64 -4503599627370496, i64 -4616189618054758400, i64 -4611686018427387904], align 16
@b_input = constant [46 x i64] [i64 4607182418800017408, i64 4607182418800017408, i64 0, i64 4609434218613702656, i64 9221120237041090560, i64 9218868437227405312, i64 4611686018427387904, i64 4611686018427387904, i64 9218868437227405312, i64 9218868437227405312, i64 0, i64 4607182418800017408, i64 -4616189618054758400, i64 -4616189618054758400, i64 -9223372036854775808, i64 -4613937818241073152, i64 -2251799813685248, i64 -4503599627370496, i64 -4611686018427387904, i64 -4611686018427387904, i64 -4503599627370496, i64 -4503599627370496, i64 -9223372036854775808, i64 -4616189618054758400, i64 -4503599627370496, i64 -4503599627370496, i64 -4616189618054758400, i64 -2251799813685248, i64 -4503599627370496, i64 -4616189618054758400, i64 -4611686018427387904, i64 -4616189618054758400, i64 -4616189618054758400, i64 -9223372036854775808, i64 -4613937818241073152, i64 9221120237041090560, i64 9218868437227405312, i64 4607182418800017408, i64 9221120237041090560, i64 9218868437227405312, i64 4607182418800017408, i64 4611686018427387904, i64 4607182418800017408, i64 4607182418800017408, i64 0, i64 4609434218613702656], align 16
@z_output = constant [46 x i64] [i64 9221120237041090560, i64 9218868437227405312, i64 4611686018427387904, i64 4615063718147915776, i64 9221120237041090560, i64 9218868437227405312, i64 4611686018427387904, i64 4615063718147915776, i64 9221120237041090560, i64 9218868437227405312, i64 0, i64 4612811918334230528, i64 -2251799813685248, i64 -4503599627370496, i64 -4611686018427387904, i64 -4608308318706860032, i64 -2251799813685248, i64 -4503599627370496, i64 -4611686018427387904, i64 -4608308318706860032, i64 -2251799813685248, i64 -4503599627370496, i64 -9223372036854775808, i64 -4610560118520545280, i64 9221120237041090560, i64 9223372036854775807, i64 0, i64 -2251799813685248, i64 -4503599627370496, i64 -4616189618054758400, i64 -4620693217682128896, i64 9221120237041090560, i64 9218868437227405312, i64 4607182418800017408, i64 4602678819172646912, i64 9221120237041090560, i64 9223372036854775807, i64 0, i64 9221120237041090560, i64 9218868437227405312, i64 4607182418800017408, i64 4602678819172646912, i64 -2251799813685248, i64 -4503599627370496, i64 -4616189618054758400, i64 -4620693217682128896], align 16
@.str = private unnamed_addr constant [11 x i8] c"\0ATime: %f\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"\0AResult: %d\0A\00", align 1
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
define i64 @float64_add(i64 %a, i64 %b) #0 {
entry:
  %retval = alloca i64, align 8
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  %aSign = alloca i32, align 4
  %bSign = alloca i32, align 4
  store i64 %a, i64* %a.addr, align 8
  store i64 %b, i64* %b.addr, align 8
  %0 = load i64, i64* %a.addr, align 8
  %call = call i32 @extractFloat64Sign(i64 %0)
  store i32 %call, i32* %aSign, align 4
  %1 = load i64, i64* %b.addr, align 8
  %call1 = call i32 @extractFloat64Sign(i64 %1)
  store i32 %call1, i32* %bSign, align 4
  %2 = load i32, i32* %aSign, align 4
  %3 = load i32, i32* %bSign, align 4
  %cmp = icmp eq i32 %2, %3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load i64, i64* %a.addr, align 8
  %5 = load i64, i64* %b.addr, align 8
  %6 = load i32, i32* %aSign, align 4
  %call2 = call i64 @addFloat64Sigs(i64 %4, i64 %5, i32 %6)
  store i64 %call2, i64* %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  %7 = load i64, i64* %a.addr, align 8
  %8 = load i64, i64* %b.addr, align 8
  %9 = load i32, i32* %aSign, align 4
  %call3 = call i64 @subFloat64Sigs(i64 %7, i64 %8, i32 %9)
  store i64 %call3, i64* %retval, align 8
  br label %return

return:                                           ; preds = %if.else, %if.then
  %10 = load i64, i64* %retval, align 8
  ret i64 %10
}

; Function Attrs: noinline nounwind ssp uwtable
define internal i64 @addFloat64Sigs(i64 %a, i64 %b, i32 %zSign) #0 {
entry:
  %retval = alloca i64, align 8
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  %zSign.addr = alloca i32, align 4
  %aExp = alloca i32, align 4
  %bExp = alloca i32, align 4
  %zExp = alloca i32, align 4
  %aSig = alloca i64, align 8
  %bSig = alloca i64, align 8
  %zSig = alloca i64, align 8
  %expDiff = alloca i32, align 4
  store i64 %a, i64* %a.addr, align 8
  store i64 %b, i64* %b.addr, align 8
  store i32 %zSign, i32* %zSign.addr, align 4
  %0 = load i64, i64* %a.addr, align 8
  %call = call i64 @extractFloat64Frac(i64 %0)
  store i64 %call, i64* %aSig, align 8
  %1 = load i64, i64* %a.addr, align 8
  %call1 = call i32 @extractFloat64Exp(i64 %1)
  store i32 %call1, i32* %aExp, align 4
  %2 = load i64, i64* %b.addr, align 8
  %call2 = call i64 @extractFloat64Frac(i64 %2)
  store i64 %call2, i64* %bSig, align 8
  %3 = load i64, i64* %b.addr, align 8
  %call3 = call i32 @extractFloat64Exp(i64 %3)
  store i32 %call3, i32* %bExp, align 4
  %4 = load i32, i32* %aExp, align 4
  %5 = load i32, i32* %bExp, align 4
  %sub = sub nsw i32 %4, %5
  store i32 %sub, i32* %expDiff, align 4
  %6 = load i64, i64* %aSig, align 8
  %shl = shl i64 %6, 9
  store i64 %shl, i64* %aSig, align 8
  %7 = load i64, i64* %bSig, align 8
  %shl4 = shl i64 %7, 9
  store i64 %shl4, i64* %bSig, align 8
  %8 = load i32, i32* %expDiff, align 4
  %cmp = icmp slt i32 0, %8
  br i1 %cmp, label %if.then, label %if.else13

if.then:                                          ; preds = %entry
  %9 = load i32, i32* %aExp, align 4
  %cmp5 = icmp eq i32 %9, 2047
  br i1 %cmp5, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.then
  %10 = load i64, i64* %aSig, align 8
  %tobool = icmp ne i64 %10, 0
  br i1 %tobool, label %if.then7, label %if.end

if.then7:                                         ; preds = %if.then6
  %11 = load i64, i64* %a.addr, align 8
  %12 = load i64, i64* %b.addr, align 8
  %call8 = call i64 @propagateFloat64NaN(i64 %11, i64 %12)
  store i64 %call8, i64* %retval, align 8
  br label %return

if.end:                                           ; preds = %if.then6
  %13 = load i64, i64* %a.addr, align 8
  store i64 %13, i64* %retval, align 8
  br label %return

if.end9:                                          ; preds = %if.then
  %14 = load i32, i32* %bExp, align 4
  %cmp10 = icmp eq i32 %14, 0
  br i1 %cmp10, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end9
  %15 = load i32, i32* %expDiff, align 4
  %dec = add nsw i32 %15, -1
  store i32 %dec, i32* %expDiff, align 4
  br label %if.end12

if.else:                                          ; preds = %if.end9
  %16 = load i64, i64* %bSig, align 8
  %or = or i64 %16, 2305843009213693952
  store i64 %or, i64* %bSig, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then11
  %17 = load i64, i64* %bSig, align 8
  %18 = load i32, i32* %expDiff, align 4
  call void @shift64RightJamming(i64 %17, i32 %18, i64* %bSig)
  %19 = load i32, i32* %aExp, align 4
  store i32 %19, i32* %zExp, align 4
  br label %if.end46

if.else13:                                        ; preds = %entry
  %20 = load i32, i32* %expDiff, align 4
  %cmp14 = icmp slt i32 %20, 0
  br i1 %cmp14, label %if.then15, label %if.else30

if.then15:                                        ; preds = %if.else13
  %21 = load i32, i32* %bExp, align 4
  %cmp16 = icmp eq i32 %21, 2047
  br i1 %cmp16, label %if.then17, label %if.end23

if.then17:                                        ; preds = %if.then15
  %22 = load i64, i64* %bSig, align 8
  %tobool18 = icmp ne i64 %22, 0
  br i1 %tobool18, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.then17
  %23 = load i64, i64* %a.addr, align 8
  %24 = load i64, i64* %b.addr, align 8
  %call20 = call i64 @propagateFloat64NaN(i64 %23, i64 %24)
  store i64 %call20, i64* %retval, align 8
  br label %return

if.end21:                                         ; preds = %if.then17
  %25 = load i32, i32* %zSign.addr, align 4
  %call22 = call i64 @packFloat64(i32 %25, i32 2047, i64 0)
  store i64 %call22, i64* %retval, align 8
  br label %return

if.end23:                                         ; preds = %if.then15
  %26 = load i32, i32* %aExp, align 4
  %cmp24 = icmp eq i32 %26, 0
  br i1 %cmp24, label %if.then25, label %if.else26

if.then25:                                        ; preds = %if.end23
  %27 = load i32, i32* %expDiff, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %expDiff, align 4
  br label %if.end28

if.else26:                                        ; preds = %if.end23
  %28 = load i64, i64* %aSig, align 8
  %or27 = or i64 %28, 2305843009213693952
  store i64 %or27, i64* %aSig, align 8
  br label %if.end28

if.end28:                                         ; preds = %if.else26, %if.then25
  %29 = load i64, i64* %aSig, align 8
  %30 = load i32, i32* %expDiff, align 4
  %sub29 = sub nsw i32 0, %30
  call void @shift64RightJamming(i64 %29, i32 %sub29, i64* %aSig)
  %31 = load i32, i32* %bExp, align 4
  store i32 %31, i32* %zExp, align 4
  br label %if.end45

if.else30:                                        ; preds = %if.else13
  %32 = load i32, i32* %aExp, align 4
  %cmp31 = icmp eq i32 %32, 2047
  br i1 %cmp31, label %if.then32, label %if.end38

if.then32:                                        ; preds = %if.else30
  %33 = load i64, i64* %aSig, align 8
  %34 = load i64, i64* %bSig, align 8
  %or33 = or i64 %33, %34
  %tobool34 = icmp ne i64 %or33, 0
  br i1 %tobool34, label %if.then35, label %if.end37

if.then35:                                        ; preds = %if.then32
  %35 = load i64, i64* %a.addr, align 8
  %36 = load i64, i64* %b.addr, align 8
  %call36 = call i64 @propagateFloat64NaN(i64 %35, i64 %36)
  store i64 %call36, i64* %retval, align 8
  br label %return

if.end37:                                         ; preds = %if.then32
  %37 = load i64, i64* %a.addr, align 8
  store i64 %37, i64* %retval, align 8
  br label %return

if.end38:                                         ; preds = %if.else30
  %38 = load i32, i32* %aExp, align 4
  %cmp39 = icmp eq i32 %38, 0
  br i1 %cmp39, label %if.then40, label %if.end42

if.then40:                                        ; preds = %if.end38
  %39 = load i32, i32* %zSign.addr, align 4
  %40 = load i64, i64* %aSig, align 8
  %41 = load i64, i64* %bSig, align 8
  %add = add i64 %40, %41
  %shr = lshr i64 %add, 9
  %call41 = call i64 @packFloat64(i32 %39, i32 0, i64 %shr)
  store i64 %call41, i64* %retval, align 8
  br label %return

if.end42:                                         ; preds = %if.end38
  %42 = load i64, i64* %aSig, align 8
  %add43 = add i64 4611686018427387904, %42
  %43 = load i64, i64* %bSig, align 8
  %add44 = add i64 %add43, %43
  store i64 %add44, i64* %zSig, align 8
  %44 = load i32, i32* %aExp, align 4
  store i32 %44, i32* %zExp, align 4
  br label %roundAndPack

if.end45:                                         ; preds = %if.end28
  br label %if.end46

if.end46:                                         ; preds = %if.end45, %if.end12
  %45 = load i64, i64* %aSig, align 8
  %or47 = or i64 %45, 2305843009213693952
  store i64 %or47, i64* %aSig, align 8
  %46 = load i64, i64* %aSig, align 8
  %47 = load i64, i64* %bSig, align 8
  %add48 = add i64 %46, %47
  %shl49 = shl i64 %add48, 1
  store i64 %shl49, i64* %zSig, align 8
  %48 = load i32, i32* %zExp, align 4
  %dec50 = add nsw i32 %48, -1
  store i32 %dec50, i32* %zExp, align 4
  %49 = load i64, i64* %zSig, align 8
  %cmp51 = icmp slt i64 %49, 0
  br i1 %cmp51, label %if.then52, label %if.end55

if.then52:                                        ; preds = %if.end46
  %50 = load i64, i64* %aSig, align 8
  %51 = load i64, i64* %bSig, align 8
  %add53 = add i64 %50, %51
  store i64 %add53, i64* %zSig, align 8
  %52 = load i32, i32* %zExp, align 4
  %inc54 = add nsw i32 %52, 1
  store i32 %inc54, i32* %zExp, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.then52, %if.end46
  br label %roundAndPack

roundAndPack:                                     ; preds = %if.end55, %if.end42
  %53 = load i32, i32* %zSign.addr, align 4
  %54 = load i32, i32* %zExp, align 4
  %55 = load i64, i64* %zSig, align 8
  %call56 = call i64 @roundAndPackFloat64(i32 %53, i32 %54, i64 %55)
  store i64 %call56, i64* %retval, align 8
  br label %return

return:                                           ; preds = %roundAndPack, %if.then40, %if.end37, %if.then35, %if.end21, %if.then19, %if.end, %if.then7
  %56 = load i64, i64* %retval, align 8
  ret i64 %56
}

; Function Attrs: noinline nounwind ssp uwtable
define internal i64 @subFloat64Sigs(i64 %a, i64 %b, i32 %zSign) #0 {
entry:
  %retval = alloca i64, align 8
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  %zSign.addr = alloca i32, align 4
  %aExp = alloca i32, align 4
  %bExp = alloca i32, align 4
  %zExp = alloca i32, align 4
  %aSig = alloca i64, align 8
  %bSig = alloca i64, align 8
  %zSig = alloca i64, align 8
  %expDiff = alloca i32, align 4
  store i64 %a, i64* %a.addr, align 8
  store i64 %b, i64* %b.addr, align 8
  store i32 %zSign, i32* %zSign.addr, align 4
  %0 = load i64, i64* %a.addr, align 8
  %call = call i64 @extractFloat64Frac(i64 %0)
  store i64 %call, i64* %aSig, align 8
  %1 = load i64, i64* %a.addr, align 8
  %call1 = call i32 @extractFloat64Exp(i64 %1)
  store i32 %call1, i32* %aExp, align 4
  %2 = load i64, i64* %b.addr, align 8
  %call2 = call i64 @extractFloat64Frac(i64 %2)
  store i64 %call2, i64* %bSig, align 8
  %3 = load i64, i64* %b.addr, align 8
  %call3 = call i32 @extractFloat64Exp(i64 %3)
  store i32 %call3, i32* %bExp, align 4
  %4 = load i32, i32* %aExp, align 4
  %5 = load i32, i32* %bExp, align 4
  %sub = sub nsw i32 %4, %5
  store i32 %sub, i32* %expDiff, align 4
  %6 = load i64, i64* %aSig, align 8
  %shl = shl i64 %6, 10
  store i64 %shl, i64* %aSig, align 8
  %7 = load i64, i64* %bSig, align 8
  %shl4 = shl i64 %7, 10
  store i64 %shl4, i64* %bSig, align 8
  %8 = load i32, i32* %expDiff, align 4
  %cmp = icmp slt i32 0, %8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %aExpBigger

if.end:                                           ; preds = %entry
  %9 = load i32, i32* %expDiff, align 4
  %cmp5 = icmp slt i32 %9, 0
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  br label %bExpBigger

if.end7:                                          ; preds = %if.end
  %10 = load i32, i32* %aExp, align 4
  %cmp8 = icmp eq i32 %10, 2047
  br i1 %cmp8, label %if.then9, label %if.end13

if.then9:                                         ; preds = %if.end7
  %11 = load i64, i64* %aSig, align 8
  %12 = load i64, i64* %bSig, align 8
  %or = or i64 %11, %12
  %tobool = icmp ne i64 %or, 0
  br i1 %tobool, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.then9
  %13 = load i64, i64* %a.addr, align 8
  %14 = load i64, i64* %b.addr, align 8
  %call11 = call i64 @propagateFloat64NaN(i64 %13, i64 %14)
  store i64 %call11, i64* %retval, align 8
  br label %return

if.end12:                                         ; preds = %if.then9
  call void @float_raise(i32 16)
  store i64 9223372036854775807, i64* %retval, align 8
  br label %return

if.end13:                                         ; preds = %if.end7
  %15 = load i32, i32* %aExp, align 4
  %cmp14 = icmp eq i32 %15, 0
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end13
  store i32 1, i32* %aExp, align 4
  store i32 1, i32* %bExp, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end13
  %16 = load i64, i64* %bSig, align 8
  %17 = load i64, i64* %aSig, align 8
  %cmp17 = icmp ult i64 %16, %17
  br i1 %cmp17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end16
  br label %aBigger

if.end19:                                         ; preds = %if.end16
  %18 = load i64, i64* %aSig, align 8
  %19 = load i64, i64* %bSig, align 8
  %cmp20 = icmp ult i64 %18, %19
  br i1 %cmp20, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.end19
  br label %bBigger

if.end22:                                         ; preds = %if.end19
  %20 = load i32, i32* @float_rounding_mode, align 4
  %cmp23 = icmp eq i32 %20, 3
  %conv = zext i1 %cmp23 to i32
  %call24 = call i64 @packFloat64(i32 %conv, i32 0, i64 0)
  store i64 %call24, i64* %retval, align 8
  br label %return

bExpBigger:                                       ; preds = %if.then6
  %21 = load i32, i32* %bExp, align 4
  %cmp25 = icmp eq i32 %21, 2047
  br i1 %cmp25, label %if.then27, label %if.end33

if.then27:                                        ; preds = %bExpBigger
  %22 = load i64, i64* %bSig, align 8
  %tobool28 = icmp ne i64 %22, 0
  br i1 %tobool28, label %if.then29, label %if.end31

if.then29:                                        ; preds = %if.then27
  %23 = load i64, i64* %a.addr, align 8
  %24 = load i64, i64* %b.addr, align 8
  %call30 = call i64 @propagateFloat64NaN(i64 %23, i64 %24)
  store i64 %call30, i64* %retval, align 8
  br label %return

if.end31:                                         ; preds = %if.then27
  %25 = load i32, i32* %zSign.addr, align 4
  %xor = xor i32 %25, 1
  %call32 = call i64 @packFloat64(i32 %xor, i32 2047, i64 0)
  store i64 %call32, i64* %retval, align 8
  br label %return

if.end33:                                         ; preds = %bExpBigger
  %26 = load i32, i32* %aExp, align 4
  %cmp34 = icmp eq i32 %26, 0
  br i1 %cmp34, label %if.then36, label %if.else

if.then36:                                        ; preds = %if.end33
  %27 = load i32, i32* %expDiff, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %expDiff, align 4
  br label %if.end38

if.else:                                          ; preds = %if.end33
  %28 = load i64, i64* %aSig, align 8
  %or37 = or i64 %28, 4611686018427387904
  store i64 %or37, i64* %aSig, align 8
  br label %if.end38

if.end38:                                         ; preds = %if.else, %if.then36
  %29 = load i64, i64* %aSig, align 8
  %30 = load i32, i32* %expDiff, align 4
  %sub39 = sub nsw i32 0, %30
  call void @shift64RightJamming(i64 %29, i32 %sub39, i64* %aSig)
  %31 = load i64, i64* %bSig, align 8
  %or40 = or i64 %31, 4611686018427387904
  store i64 %or40, i64* %bSig, align 8
  br label %bBigger

bBigger:                                          ; preds = %if.end38, %if.then21
  %32 = load i64, i64* %bSig, align 8
  %33 = load i64, i64* %aSig, align 8
  %sub41 = sub i64 %32, %33
  store i64 %sub41, i64* %zSig, align 8
  %34 = load i32, i32* %bExp, align 4
  store i32 %34, i32* %zExp, align 4
  %35 = load i32, i32* %zSign.addr, align 4
  %xor42 = xor i32 %35, 1
  store i32 %xor42, i32* %zSign.addr, align 4
  br label %normalizeRoundAndPack

aExpBigger:                                       ; preds = %if.then
  %36 = load i32, i32* %aExp, align 4
  %cmp43 = icmp eq i32 %36, 2047
  br i1 %cmp43, label %if.then45, label %if.end50

if.then45:                                        ; preds = %aExpBigger
  %37 = load i64, i64* %aSig, align 8
  %tobool46 = icmp ne i64 %37, 0
  br i1 %tobool46, label %if.then47, label %if.end49

if.then47:                                        ; preds = %if.then45
  %38 = load i64, i64* %a.addr, align 8
  %39 = load i64, i64* %b.addr, align 8
  %call48 = call i64 @propagateFloat64NaN(i64 %38, i64 %39)
  store i64 %call48, i64* %retval, align 8
  br label %return

if.end49:                                         ; preds = %if.then45
  %40 = load i64, i64* %a.addr, align 8
  store i64 %40, i64* %retval, align 8
  br label %return

if.end50:                                         ; preds = %aExpBigger
  %41 = load i32, i32* %bExp, align 4
  %cmp51 = icmp eq i32 %41, 0
  br i1 %cmp51, label %if.then53, label %if.else54

if.then53:                                        ; preds = %if.end50
  %42 = load i32, i32* %expDiff, align 4
  %dec = add nsw i32 %42, -1
  store i32 %dec, i32* %expDiff, align 4
  br label %if.end56

if.else54:                                        ; preds = %if.end50
  %43 = load i64, i64* %bSig, align 8
  %or55 = or i64 %43, 4611686018427387904
  store i64 %or55, i64* %bSig, align 8
  br label %if.end56

if.end56:                                         ; preds = %if.else54, %if.then53
  %44 = load i64, i64* %bSig, align 8
  %45 = load i32, i32* %expDiff, align 4
  call void @shift64RightJamming(i64 %44, i32 %45, i64* %bSig)
  %46 = load i64, i64* %aSig, align 8
  %or57 = or i64 %46, 4611686018427387904
  store i64 %or57, i64* %aSig, align 8
  br label %aBigger

aBigger:                                          ; preds = %if.end56, %if.then18
  %47 = load i64, i64* %aSig, align 8
  %48 = load i64, i64* %bSig, align 8
  %sub58 = sub i64 %47, %48
  store i64 %sub58, i64* %zSig, align 8
  %49 = load i32, i32* %aExp, align 4
  store i32 %49, i32* %zExp, align 4
  br label %normalizeRoundAndPack

normalizeRoundAndPack:                            ; preds = %aBigger, %bBigger
  %50 = load i32, i32* %zExp, align 4
  %dec59 = add nsw i32 %50, -1
  store i32 %dec59, i32* %zExp, align 4
  %51 = load i32, i32* %zSign.addr, align 4
  %52 = load i32, i32* %zExp, align 4
  %53 = load i64, i64* %zSig, align 8
  %call60 = call i64 @normalizeRoundAndPackFloat64(i32 %51, i32 %52, i64 %53)
  store i64 %call60, i64* %retval, align 8
  br label %return

return:                                           ; preds = %normalizeRoundAndPack, %if.end49, %if.then47, %if.end31, %if.then29, %if.end22, %if.end12, %if.then10
  %54 = load i64, i64* %retval, align 8
  ret i64 %54
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
  %x1 = alloca i64, align 8
  %x2 = alloca i64, align 8
  %result = alloca i64, align 8
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

for.cond:                                         ; preds = %for.inc12, %entry
  %2 = load i32, i32* %idx, align 4
  %3 = load i32, i32* %iters, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end14

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %main_result, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %4 = load i32, i32* %i, align 4
  %cmp3 = icmp slt i32 %4, 46
  br i1 %cmp3, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond2
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx5 = getelementptr inbounds [46 x i64], [46 x i64]* @a_input, i64 0, i64 %idxprom
  %6 = load i64, i64* %arrayidx5, align 8
  store i64 %6, i64* %x1, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %7 to i64
  %arrayidx7 = getelementptr inbounds [46 x i64], [46 x i64]* @b_input, i64 0, i64 %idxprom6
  %8 = load i64, i64* %arrayidx7, align 8
  store i64 %8, i64* %x2, align 8
  %9 = load i64, i64* %x1, align 8
  %10 = load i64, i64* %x2, align 8
  %call8 = call i64 @float64_add(i64 %9, i64 %10)
  store i64 %call8, i64* %result, align 8
  %11 = load i64, i64* %result, align 8
  %12 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %12 to i64
  %arrayidx10 = getelementptr inbounds [46 x i64], [46 x i64]* @z_output, i64 0, i64 %idxprom9
  %13 = load i64, i64* %arrayidx10, align 8
  %cmp11 = icmp ne i64 %11, %13
  %conv = zext i1 %cmp11 to i32
  %14 = load i32, i32* %main_result, align 4
  %add = add nsw i32 %14, %conv
  store i32 %add, i32* %main_result, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body4
  %15 = load i32, i32* %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond2

for.end:                                          ; preds = %for.cond2
  br label %for.inc12

for.inc12:                                        ; preds = %for.end
  %16 = load i32, i32* %idx, align 4
  %inc13 = add nsw i32 %16, 1
  store i32 %inc13, i32* %idx, align 4
  br label %for.cond

for.end14:                                        ; preds = %for.cond
  %call15 = call i32 @gettimeofday(%struct.timeval* %end, i8* null)
  %tv_sec = getelementptr inbounds %struct.timeval, %struct.timeval* %end, i32 0, i32 0
  %17 = load i64, i64* %tv_sec, align 8
  %tv_sec16 = getelementptr inbounds %struct.timeval, %struct.timeval* %start, i32 0, i32 0
  %18 = load i64, i64* %tv_sec16, align 8
  %sub = sub nsw i64 %17, %18
  %conv17 = sitofp i64 %sub to double
  %mul = fmul double %conv17, 1.000000e+06
  store double %mul, double* %time_taken, align 8
  %19 = load double, double* %time_taken, align 8
  %tv_usec = getelementptr inbounds %struct.timeval, %struct.timeval* %end, i32 0, i32 1
  %20 = load i32, i32* %tv_usec, align 8
  %tv_usec18 = getelementptr inbounds %struct.timeval, %struct.timeval* %start, i32 0, i32 1
  %21 = load i32, i32* %tv_usec18, align 8
  %sub19 = sub nsw i32 %20, %21
  %conv20 = sitofp i32 %sub19 to double
  %add21 = fadd double %19, %conv20
  %mul22 = fmul double %add21, 1.000000e-06
  store double %mul22, double* %time_taken, align 8
  %22 = load i32, i32* %iters, align 4
  %conv23 = sitofp i32 %22 to double
  %23 = load double, double* %time_taken, align 8
  %div = fdiv double %23, %conv23
  store double %div, double* %time_taken, align 8
  %24 = load double, double* %time_taken, align 8
  %call24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), double %24)
  %25 = load i32, i32* %main_result, align 4
  %call25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 %25)
  %26 = load i32, i32* %main_result, align 4
  ret i32 %26
}

declare i32 @gettimeofday(%struct.timeval*, i8*) #1

declare i32 @atoi(i8*) #1

declare i32 @printf(i8*, ...) #1

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
define internal i64 @normalizeRoundAndPackFloat64(i32 %zSign, i32 %zExp, i64 %zSig) #0 {
entry:
  %zSign.addr = alloca i32, align 4
  %zExp.addr = alloca i32, align 4
  %zSig.addr = alloca i64, align 8
  %shiftCount = alloca i32, align 4
  store i32 %zSign, i32* %zSign.addr, align 4
  store i32 %zExp, i32* %zExp.addr, align 4
  store i64 %zSig, i64* %zSig.addr, align 8
  %0 = load i64, i64* %zSig.addr, align 8
  %call = call i32 @countLeadingZeros64(i64 %0)
  %sub = sub nsw i32 %call, 1
  store i32 %sub, i32* %shiftCount, align 4
  %1 = load i32, i32* %zSign.addr, align 4
  %2 = load i32, i32* %zExp.addr, align 4
  %3 = load i32, i32* %shiftCount, align 4
  %sub1 = sub nsw i32 %2, %3
  %4 = load i64, i64* %zSig.addr, align 8
  %5 = load i32, i32* %shiftCount, align 4
  %sh_prom = zext i32 %5 to i64
  %shl = shl i64 %4, %sh_prom
  %call2 = call i64 @roundAndPackFloat64(i32 %1, i32 %sub1, i64 %shl)
  ret i64 %call2
}

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
