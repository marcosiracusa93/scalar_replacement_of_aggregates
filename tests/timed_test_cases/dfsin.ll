; ModuleID = 'dfsin.c'
source_filename = "dfsin.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

%union.anon = type { double }

@float_rounding_mode = global i32 0, align 4
@float_exception_flags = global i32 0, align 4
@test_in = constant [36 x i64] [i64 0, i64 4595456230317446593, i64 4599959829944817089, i64 4602891377065459793, i64 4604463429572187585, i64 4606035482078915377, i64 4607394976692830289, i64 4608181002946194185, i64 4608967029199558081, i64 4609753055452921977, i64 4610539081706285873, i64 4611325107959649769, i64 4611898576320200785, i64 4612291589446882733, i64 4612684602573564681, i64 4613077615700246629, i64 4613470628826928577, i64 4613863641953610525, i64 4614256655080292473, i64 4614649668206974421, i64 4615042681333656369, i64 4615435694460338317, i64 4615828707587020265, i64 4616205669384230307, i64 4616402175947571281, i64 4616598682510912255, i64 4616795189074253229, i64 4616991695637594203, i64 4617188202200935177, i64 4617384708764276151, i64 4617581215327617125, i64 4617777721890958099, i64 4617974228454299073, i64 4618170735017640047, i64 4618367241580981021, i64 4618563748144321995], align 16
@test_out = constant [36 x i64] [i64 0, i64 4595424353983311309, i64 4599832905844899646, i64 4602678817326738065, i64 4603964934626362083, i64 4605075133481489574, i64 4605975682307795949, i64 4606639217416480941, i64 4607045578640063168, i64 4607182418293282730, i64 4607045579801131401, i64 4606639219569943220, i64 4605975685322773549, i64 4605075138685085801, i64 4603964939033565416, i64 4602678823104758728, i64 4599832915021762757, i64 4595424366569280812, i64 4514487953518840721, i64 -4627947708347468932, i64 -4623539145043636418, i64 -4620693229337249429, i64 -4619407106423282733, i64 -4618296906397976555, i64 -4617396355889189326, i64 -4616732821607866025, i64 -4616326459558573316, i64 -4616189619079881585, i64 -4616326458420041750, i64 -4616732815165379033, i64 -4617396348504650934, i64 -4618296894661077119, i64 -4619407090579186346, i64 -4620693208604826867, i64 -4623539110082393353, i64 -4627947641781066787], align 16
@.str = private unnamed_addr constant [53 x i8] c"input=%016llx expected=%016llx output=%016llx (%lf)\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"\0ATime: %f\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"\0AResult: %d\0A\00", align 1
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
define void @shift64ExtraRightJamming(i64 %a0, i64 %a1, i32 %count, i64* %z0Ptr, i64* %z1Ptr) #0 {
entry:
  %a0.addr = alloca i64, align 8
  %a1.addr = alloca i64, align 8
  %count.addr = alloca i32, align 4
  %z0Ptr.addr = alloca i64*, align 8
  %z1Ptr.addr = alloca i64*, align 8
  %z0 = alloca i64, align 8
  %z1 = alloca i64, align 8
  %negCount = alloca i32, align 4
  store i64 %a0, i64* %a0.addr, align 8
  store i64 %a1, i64* %a1.addr, align 8
  store i32 %count, i32* %count.addr, align 4
  store i64* %z0Ptr, i64** %z0Ptr.addr, align 8
  store i64* %z1Ptr, i64** %z1Ptr.addr, align 8
  %0 = load i32, i32* %count.addr, align 4
  %sub = sub nsw i32 0, %0
  %and = and i32 %sub, 63
  store i32 %and, i32* %negCount, align 4
  %1 = load i32, i32* %count.addr, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %a1.addr, align 8
  store i64 %2, i64* %z1, align 8
  %3 = load i64, i64* %a0.addr, align 8
  store i64 %3, i64* %z0, align 8
  br label %if.end20

if.else:                                          ; preds = %entry
  %4 = load i32, i32* %count.addr, align 4
  %cmp1 = icmp slt i32 %4, 64
  br i1 %cmp1, label %if.then2, label %if.else6

if.then2:                                         ; preds = %if.else
  %5 = load i64, i64* %a0.addr, align 8
  %6 = load i32, i32* %negCount, align 4
  %sh_prom = zext i32 %6 to i64
  %shl = shl i64 %5, %sh_prom
  %7 = load i64, i64* %a1.addr, align 8
  %cmp3 = icmp ne i64 %7, 0
  %conv = zext i1 %cmp3 to i32
  %conv4 = sext i32 %conv to i64
  %or = or i64 %shl, %conv4
  store i64 %or, i64* %z1, align 8
  %8 = load i64, i64* %a0.addr, align 8
  %9 = load i32, i32* %count.addr, align 4
  %sh_prom5 = zext i32 %9 to i64
  %shr = lshr i64 %8, %sh_prom5
  store i64 %shr, i64* %z0, align 8
  br label %if.end19

if.else6:                                         ; preds = %if.else
  %10 = load i32, i32* %count.addr, align 4
  %cmp7 = icmp eq i32 %10, 64
  br i1 %cmp7, label %if.then9, label %if.else14

if.then9:                                         ; preds = %if.else6
  %11 = load i64, i64* %a0.addr, align 8
  %12 = load i64, i64* %a1.addr, align 8
  %cmp10 = icmp ne i64 %12, 0
  %conv11 = zext i1 %cmp10 to i32
  %conv12 = sext i32 %conv11 to i64
  %or13 = or i64 %11, %conv12
  store i64 %or13, i64* %z1, align 8
  br label %if.end

if.else14:                                        ; preds = %if.else6
  %13 = load i64, i64* %a0.addr, align 8
  %14 = load i64, i64* %a1.addr, align 8
  %or15 = or i64 %13, %14
  %cmp16 = icmp ne i64 %or15, 0
  %conv17 = zext i1 %cmp16 to i32
  %conv18 = sext i32 %conv17 to i64
  store i64 %conv18, i64* %z1, align 8
  br label %if.end

if.end:                                           ; preds = %if.else14, %if.then9
  store i64 0, i64* %z0, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.end, %if.then2
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %if.then
  %15 = load i64, i64* %z1, align 8
  %16 = load i64*, i64** %z1Ptr.addr, align 8
  store i64 %15, i64* %16, align 8
  %17 = load i64, i64* %z0, align 8
  %18 = load i64*, i64** %z0Ptr.addr, align 8
  store i64 %17, i64* %18, align 8
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
define i64 @int32_to_float64(i32 %a) #0 {
entry:
  %retval = alloca i64, align 8
  %a.addr = alloca i32, align 4
  %zSign = alloca i32, align 4
  %absA = alloca i32, align 4
  %shiftCount = alloca i32, align 4
  %zSig = alloca i64, align 8
  store i32 %a, i32* %a.addr, align 4
  %0 = load i32, i32* %a.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 0, i64* %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %a.addr, align 4
  %cmp1 = icmp slt i32 %1, 0
  %conv = zext i1 %cmp1 to i32
  store i32 %conv, i32* %zSign, align 4
  %2 = load i32, i32* %zSign, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %3 = load i32, i32* %a.addr, align 4
  %sub = sub nsw i32 0, %3
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %4 = load i32, i32* %a.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ %4, %cond.false ]
  store i32 %cond, i32* %absA, align 4
  %5 = load i32, i32* %absA, align 4
  %call = call i32 @countLeadingZeros32(i32 %5)
  %add = add nsw i32 %call, 21
  store i32 %add, i32* %shiftCount, align 4
  %6 = load i32, i32* %absA, align 4
  %conv2 = zext i32 %6 to i64
  store i64 %conv2, i64* %zSig, align 8
  %7 = load i32, i32* %zSign, align 4
  %8 = load i32, i32* %shiftCount, align 4
  %sub3 = sub nsw i32 1074, %8
  %9 = load i64, i64* %zSig, align 8
  %10 = load i32, i32* %shiftCount, align 4
  %sh_prom = zext i32 %10 to i64
  %shl = shl i64 %9, %sh_prom
  %call4 = call i64 @packFloat64(i32 %7, i32 %sub3, i64 %shl)
  store i64 %call4, i64* %retval, align 8
  br label %return

return:                                           ; preds = %cond.end, %if.then
  %11 = load i64, i64* %retval, align 8
  ret i64 %11
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
define i64 @float64_mul(i64 %a, i64 %b) #0 {
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
  %zSig0 = alloca i64, align 8
  %zSig1 = alloca i64, align 8
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
  br i1 %cmp, label %if.then, label %if.end15

if.then:                                          ; preds = %entry
  %9 = load i64, i64* %aSig, align 8
  %tobool = icmp ne i64 %9, 0
  br i1 %tobool, label %if.then8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %10 = load i32, i32* %bExp, align 4
  %cmp6 = icmp eq i32 %10, 2047
  br i1 %cmp6, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %11 = load i64, i64* %bSig, align 8
  %tobool7 = icmp ne i64 %11, 0
  br i1 %tobool7, label %if.then8, label %if.end

if.then8:                                         ; preds = %land.lhs.true, %if.then
  %12 = load i64, i64* %a.addr, align 8
  %13 = load i64, i64* %b.addr, align 8
  %call9 = call i64 @propagateFloat64NaN(i64 %12, i64 %13)
  store i64 %call9, i64* %retval, align 8
  br label %return

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false
  %14 = load i32, i32* %bExp, align 4
  %conv = sext i32 %14 to i64
  %15 = load i64, i64* %bSig, align 8
  %or = or i64 %conv, %15
  %cmp10 = icmp eq i64 %or, 0
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end
  call void @float_raise(i32 16)
  store i64 9223372036854775807, i64* %retval, align 8
  br label %return

if.end13:                                         ; preds = %if.end
  %16 = load i32, i32* %zSign, align 4
  %call14 = call i64 @packFloat64(i32 %16, i32 2047, i64 0)
  store i64 %call14, i64* %retval, align 8
  br label %return

if.end15:                                         ; preds = %entry
  %17 = load i32, i32* %bExp, align 4
  %cmp16 = icmp eq i32 %17, 2047
  br i1 %cmp16, label %if.then18, label %if.end30

if.then18:                                        ; preds = %if.end15
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
  %21 = load i32, i32* %aExp, align 4
  %conv23 = sext i32 %21 to i64
  %22 = load i64, i64* %aSig, align 8
  %or24 = or i64 %conv23, %22
  %cmp25 = icmp eq i64 %or24, 0
  br i1 %cmp25, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end22
  call void @float_raise(i32 16)
  store i64 9223372036854775807, i64* %retval, align 8
  br label %return

if.end28:                                         ; preds = %if.end22
  %23 = load i32, i32* %zSign, align 4
  %call29 = call i64 @packFloat64(i32 %23, i32 2047, i64 0)
  store i64 %call29, i64* %retval, align 8
  br label %return

if.end30:                                         ; preds = %if.end15
  %24 = load i32, i32* %aExp, align 4
  %cmp31 = icmp eq i32 %24, 0
  br i1 %cmp31, label %if.then33, label %if.end39

if.then33:                                        ; preds = %if.end30
  %25 = load i64, i64* %aSig, align 8
  %cmp34 = icmp eq i64 %25, 0
  br i1 %cmp34, label %if.then36, label %if.end38

if.then36:                                        ; preds = %if.then33
  %26 = load i32, i32* %zSign, align 4
  %call37 = call i64 @packFloat64(i32 %26, i32 0, i64 0)
  store i64 %call37, i64* %retval, align 8
  br label %return

if.end38:                                         ; preds = %if.then33
  %27 = load i64, i64* %aSig, align 8
  call void @normalizeFloat64Subnormal(i64 %27, i32* %aExp, i64* %aSig)
  br label %if.end39

if.end39:                                         ; preds = %if.end38, %if.end30
  %28 = load i32, i32* %bExp, align 4
  %cmp40 = icmp eq i32 %28, 0
  br i1 %cmp40, label %if.then42, label %if.end48

if.then42:                                        ; preds = %if.end39
  %29 = load i64, i64* %bSig, align 8
  %cmp43 = icmp eq i64 %29, 0
  br i1 %cmp43, label %if.then45, label %if.end47

if.then45:                                        ; preds = %if.then42
  %30 = load i32, i32* %zSign, align 4
  %call46 = call i64 @packFloat64(i32 %30, i32 0, i64 0)
  store i64 %call46, i64* %retval, align 8
  br label %return

if.end47:                                         ; preds = %if.then42
  %31 = load i64, i64* %bSig, align 8
  call void @normalizeFloat64Subnormal(i64 %31, i32* %bExp, i64* %bSig)
  br label %if.end48

if.end48:                                         ; preds = %if.end47, %if.end39
  %32 = load i32, i32* %aExp, align 4
  %33 = load i32, i32* %bExp, align 4
  %add = add nsw i32 %32, %33
  %sub = sub nsw i32 %add, 1023
  store i32 %sub, i32* %zExp, align 4
  %34 = load i64, i64* %aSig, align 8
  %or49 = or i64 %34, 4503599627370496
  %shl = shl i64 %or49, 10
  store i64 %shl, i64* %aSig, align 8
  %35 = load i64, i64* %bSig, align 8
  %or50 = or i64 %35, 4503599627370496
  %shl51 = shl i64 %or50, 11
  store i64 %shl51, i64* %bSig, align 8
  %36 = load i64, i64* %aSig, align 8
  %37 = load i64, i64* %bSig, align 8
  call void @mul64To128(i64 %36, i64 %37, i64* %zSig0, i64* %zSig1)
  %38 = load i64, i64* %zSig1, align 8
  %cmp52 = icmp ne i64 %38, 0
  %conv53 = zext i1 %cmp52 to i32
  %conv54 = sext i32 %conv53 to i64
  %39 = load i64, i64* %zSig0, align 8
  %or55 = or i64 %39, %conv54
  store i64 %or55, i64* %zSig0, align 8
  %40 = load i64, i64* %zSig0, align 8
  %shl56 = shl i64 %40, 1
  %cmp57 = icmp sle i64 0, %shl56
  br i1 %cmp57, label %if.then59, label %if.end61

if.then59:                                        ; preds = %if.end48
  %41 = load i64, i64* %zSig0, align 8
  %shl60 = shl i64 %41, 1
  store i64 %shl60, i64* %zSig0, align 8
  %42 = load i32, i32* %zExp, align 4
  %dec = add nsw i32 %42, -1
  store i32 %dec, i32* %zExp, align 4
  br label %if.end61

if.end61:                                         ; preds = %if.then59, %if.end48
  %43 = load i32, i32* %zSign, align 4
  %44 = load i32, i32* %zExp, align 4
  %45 = load i64, i64* %zSig0, align 8
  %call62 = call i64 @roundAndPackFloat64(i32 %43, i32 %44, i64 %45)
  store i64 %call62, i64* %retval, align 8
  br label %return

return:                                           ; preds = %if.end61, %if.then45, %if.then36, %if.end28, %if.then27, %if.then20, %if.end13, %if.then12, %if.then8
  %46 = load i64, i64* %retval, align 8
  ret i64 %46
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
define i32 @float64_le(i64 %a, i64 %b) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  %aSign = alloca i32, align 4
  %bSign = alloca i32, align 4
  store i64 %a, i64* %a.addr, align 8
  store i64 %b, i64* %b.addr, align 8
  %0 = load i64, i64* %a.addr, align 8
  %call = call i32 @extractFloat64Exp(i64 %0)
  %cmp = icmp eq i32 %call, 2047
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %1 = load i64, i64* %a.addr, align 8
  %call1 = call i64 @extractFloat64Frac(i64 %1)
  %tobool = icmp ne i64 %call1, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %entry
  %2 = load i64, i64* %b.addr, align 8
  %call2 = call i32 @extractFloat64Exp(i64 %2)
  %cmp3 = icmp eq i32 %call2, 2047
  br i1 %cmp3, label %land.lhs.true4, label %if.end

land.lhs.true4:                                   ; preds = %lor.lhs.false
  %3 = load i64, i64* %b.addr, align 8
  %call5 = call i64 @extractFloat64Frac(i64 %3)
  %tobool6 = icmp ne i64 %call5, 0
  br i1 %tobool6, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true4, %land.lhs.true
  call void @float_raise(i32 16)
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true4, %lor.lhs.false
  %4 = load i64, i64* %a.addr, align 8
  %call7 = call i32 @extractFloat64Sign(i64 %4)
  store i32 %call7, i32* %aSign, align 4
  %5 = load i64, i64* %b.addr, align 8
  %call8 = call i32 @extractFloat64Sign(i64 %5)
  store i32 %call8, i32* %bSign, align 4
  %6 = load i32, i32* %aSign, align 4
  %7 = load i32, i32* %bSign, align 4
  %cmp9 = icmp ne i32 %6, %7
  br i1 %cmp9, label %if.then10, label %if.end13

if.then10:                                        ; preds = %if.end
  %8 = load i32, i32* %aSign, align 4
  %tobool11 = icmp ne i32 %8, 0
  br i1 %tobool11, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.then10
  %9 = load i64, i64* %a.addr, align 8
  %10 = load i64, i64* %b.addr, align 8
  %or = or i64 %9, %10
  %shl = shl i64 %or, 1
  %cmp12 = icmp eq i64 %shl, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.then10
  %11 = phi i1 [ true, %if.then10 ], [ %cmp12, %lor.rhs ]
  %lor.ext = zext i1 %11 to i32
  store i32 %lor.ext, i32* %retval, align 4
  br label %return

if.end13:                                         ; preds = %if.end
  %12 = load i64, i64* %a.addr, align 8
  %13 = load i64, i64* %b.addr, align 8
  %cmp14 = icmp eq i64 %12, %13
  br i1 %cmp14, label %lor.end18, label %lor.rhs15

lor.rhs15:                                        ; preds = %if.end13
  %14 = load i32, i32* %aSign, align 4
  %15 = load i64, i64* %a.addr, align 8
  %16 = load i64, i64* %b.addr, align 8
  %cmp16 = icmp ult i64 %15, %16
  %conv = zext i1 %cmp16 to i32
  %xor = xor i32 %14, %conv
  %tobool17 = icmp ne i32 %xor, 0
  br label %lor.end18

lor.end18:                                        ; preds = %lor.rhs15, %if.end13
  %17 = phi i1 [ true, %if.end13 ], [ %tobool17, %lor.rhs15 ]
  %lor.ext19 = zext i1 %17 to i32
  store i32 %lor.ext19, i32* %retval, align 4
  br label %return

return:                                           ; preds = %lor.end18, %lor.end, %if.then
  %18 = load i32, i32* %retval, align 4
  ret i32 %18
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @float64_ge(i64 %a, i64 %b) #0 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  store i64 %a, i64* %a.addr, align 8
  store i64 %b, i64* %b.addr, align 8
  %0 = load i64, i64* %b.addr, align 8
  %1 = load i64, i64* %a.addr, align 8
  %call = call i32 @float64_le(i64 %0, i64 %1)
  ret i32 %call
}

; Function Attrs: noinline nounwind ssp uwtable
define i64 @float64_neg(i64 %x) #0 {
entry:
  %x.addr = alloca i64, align 8
  store i64 %x, i64* %x.addr, align 8
  %0 = load i64, i64* %x.addr, align 8
  %neg = xor i64 %0, -1
  %and = and i64 %neg, -9223372036854775808
  %1 = load i64, i64* %x.addr, align 8
  %and1 = and i64 %1, 9223372036854775807
  %or = or i64 %and, %and1
  ret i64 %or
}

; Function Attrs: noinline nounwind ssp uwtable
define i64 @float64_abs(i64 %x) #0 {
entry:
  %x.addr = alloca i64, align 8
  store i64 %x, i64* %x.addr, align 8
  %0 = load i64, i64* %x.addr, align 8
  %and = and i64 %0, 9223372036854775807
  ret i64 %and
}

; Function Attrs: noinline nounwind ssp uwtable
define i64 @local_sin(i64 %rad) #0 {
entry:
  %rad.addr = alloca i64, align 8
  %app = alloca i64, align 8
  %diff = alloca i64, align 8
  %m_rad2 = alloca i64, align 8
  %inc = alloca i32, align 4
  store i64 %rad, i64* %rad.addr, align 8
  %0 = load i64, i64* %rad.addr, align 8
  store i64 %0, i64* %diff, align 8
  store i64 %0, i64* %app, align 8
  store i32 1, i32* %inc, align 4
  %1 = load i64, i64* %rad.addr, align 8
  %2 = load i64, i64* %rad.addr, align 8
  %call = call i64 @float64_mul(i64 %1, i64 %2)
  %call1 = call i64 @float64_neg(i64 %call)
  store i64 %call1, i64* %m_rad2, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %3 = load i64, i64* %diff, align 8
  %4 = load i64, i64* %m_rad2, align 8
  %call2 = call i64 @float64_mul(i64 %3, i64 %4)
  %5 = load i32, i32* %inc, align 4
  %mul = mul nsw i32 2, %5
  %6 = load i32, i32* %inc, align 4
  %mul3 = mul nsw i32 2, %6
  %add = add nsw i32 %mul3, 1
  %mul4 = mul nsw i32 %mul, %add
  %call5 = call i64 @int32_to_float64(i32 %mul4)
  %call6 = call i64 @float64_div(i64 %call2, i64 %call5)
  store i64 %call6, i64* %diff, align 8
  %7 = load i64, i64* %app, align 8
  %8 = load i64, i64* %diff, align 8
  %call7 = call i64 @float64_add(i64 %7, i64 %8)
  store i64 %call7, i64* %app, align 8
  %9 = load i32, i32* %inc, align 4
  %inc8 = add nsw i32 %9, 1
  store i32 %inc8, i32* %inc, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %10 = load i64, i64* %diff, align 8
  %call9 = call i64 @float64_abs(i64 %10)
  %call10 = call i32 @float64_ge(i64 %call9, i64 4532020583610935537)
  %tobool = icmp ne i32 %call10, 0
  br i1 %tobool, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %11 = load i64, i64* %app, align 8
  ret i64 %11
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
  %t_begin = alloca i64, align 8
  %main_result = alloca i32, align 4
  %i = alloca i32, align 4
  %result = alloca i64, align 8
  %t_end = alloca i64, align 8
  %time_taken = alloca double, align 8
  store i32 0, i32* %retval, align 4
  %call = call i64 @"\01_clock"()
  store i64 %call, i64* %t_begin, align 8
  store i32 0, i32* %main_result, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 36
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [36 x i64], [36 x i64]* @test_in, i64 0, i64 %idxprom
  %2 = load i64, i64* %arrayidx, align 8
  %call1 = call i64 @local_sin(i64 %2)
  store i64 %call1, i64* %result, align 8
  %3 = load i64, i64* %result, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %4 to i64
  %arrayidx3 = getelementptr inbounds [36 x i64], [36 x i64]* @test_out, i64 0, i64 %idxprom2
  %5 = load i64, i64* %arrayidx3, align 8
  %cmp4 = icmp ne i64 %3, %5
  %conv = zext i1 %cmp4 to i32
  %6 = load i32, i32* %main_result, align 4
  %add = add nsw i32 %6, %conv
  store i32 %add, i32* %main_result, align 4
  %7 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %7 to i64
  %arrayidx6 = getelementptr inbounds [36 x i64], [36 x i64]* @test_in, i64 0, i64 %idxprom5
  %8 = load i64, i64* %arrayidx6, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %9 to i64
  %arrayidx8 = getelementptr inbounds [36 x i64], [36 x i64]* @test_out, i64 0, i64 %idxprom7
  %10 = load i64, i64* %arrayidx8, align 8
  %11 = load i64, i64* %result, align 8
  %12 = load i64, i64* %result, align 8
  %call9 = call double @ullong_to_double(i64 %12)
  %call10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i32 0, i32 0), i64 %8, i64 %10, i64 %11, double %call9)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call11 = call i64 @"\01_clock"()
  store i64 %call11, i64* %t_end, align 8
  %14 = load i64, i64* %t_end, align 8
  %conv12 = uitofp i64 %14 to double
  %15 = load i64, i64* %t_begin, align 8
  %conv13 = uitofp i64 %15 to double
  %sub = fsub double %conv12, %conv13
  %div = fdiv double %sub, 1.000000e+06
  store double %div, double* %time_taken, align 8
  %16 = load double, double* %time_taken, align 8
  %call14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), double %16)
  %17 = load i32, i32* %main_result, align 4
  %call15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i32 %17)
  %18 = load i32, i32* %main_result, align 4
  ret i32 %18
}

declare i64 @"\01_clock"() #1

declare i32 @printf(i8*, ...) #1

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

attributes #0 = { noinline nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
