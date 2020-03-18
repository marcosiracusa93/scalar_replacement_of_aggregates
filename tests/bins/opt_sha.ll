; ModuleID = './../tests/test_cases/sha.ll'
source_filename = "sha_driver.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

@indata = local_unnamed_addr constant [2 x [8192 x i8]] [[8192 x i8] c"KurtVonnegutsCommencementAddressatMITLadiesandgentlemenoftheclassof97WearsunscreenIfIcouldofferyouonlyonetipforthefuturesunscreenwouldbeitThelongtermbenefitsofsunscreenhavebeenprovedbyscientistswhereastherestofmyadvicehasnobasismorereliablethanmyownmeanderingexperienceIwilldispensethisadvicenowEnjoythepowerandbeautyofyouryouthOhnevermindYouwillnotunderstandthepowerandbeautyofyouryouthuntiltheyvefadedButtrustmein20yearsyoulllookbackatphotosofyourselfandrecallinawayyoucantgraspnowhowmuchpossibilitylaybeforeyouandhowfabulousyoureallylookedYouarenotasfatasyouimagineDontworryaboutthefutureOrworrybutknowthatKurtVonneguKurtVonnegutsCommencementAddressatMITLadiesandgentlemenoftheclassof97WearsunscreenIfIcouldofferyouonlyonetipforthefuturesunscreenwouldbeitThelongtermbenefitsofsunscreenhavebeenprovedbyscientistswhereastherestofmyadvicehasnobasismorereliablethanmyownmeanderingexperienceIwilldispensethisadvicenowEnjoythepowerandbeautyofyouryouthOhnevermindYouwillnotunderstandthepowerandbeautyofyouryouthuntiltheyvefadedButtrustmein20yearsyoulllookbackatphotosofyourselfandrecallinawayyoucantgraspnowhowmuchpossibilitylaybeforeyouandhowfabulousyoureallylookedYouarenotasfatasyouimagineDontworryaboutthefutureOrworrybutknowthatKurtVonnegutsCommencementAddressatMITLadiesandgentlemenoftheclassof97WearsunscreenIfIcouldofferyouonlyonetipforthefuturesunscreenwouldbeitThelongtermbenefitsofsunscreenhavebeenprovedbyscientistswhereastherestofmyadvicehasnobasismorereliablethanmyownmeanderingexperienceIwilldispensethisadvicenowEnjoythepowerandbeautyofyouryouthOhnevermindYouwillnotunderstandthepowerandbeautyofyouryouthuntiltheyvefadedButtrustmein20yearsyoulllookbackatphotosofyourselfandrecallinawayyoucantgraspnowhowmuchpossibilitylaybeforeyouandhowfabulousyoureallylookedYouarenotasfatasyouimagineDontworryaboutthefutureOrworrybutknowthatKurtVonnegutsCommencementAddressatMITLadiesandgentlemenoftheclassof97WearsunscreenIfIcouldofferyouonlyonetipforthefuturesunscreenwouldbeitThelongtermbenefitsofsunscreenhavebeenprovedbyscientistswhereastherestofmyadvicehasnobasismorereliablethanmyownmeanderingexperienceIwilldispensethisadvicenowEnjoythepowerandbeautyofyouryouthOhnevermindYouwillnotunderstandthepowerandbeautyofyouryouthuntiltheyvefadedButtrustmein20yearsyoulllookbackatphotosofyourselfandrecallinawayyoucantgraspnowhowmuchpossibilitylaybeforeyouandhowfabulousyoureallylookedYouarenotasfatasyouimagineDontworryaboutthefutureOrworryKurtVonnegutsCommencementAddressatMITLadiesandgentlemenoftheclassof97WearsunscreenIfIcouldofferyouonlyonetipforthefuturesunscreenwouldbeitThelongtermbenefitsofsunscreenhavebeenprovedbyscientistswhereastherestofmyadvicehasnobasismorereliablethanmyownmeanderingexperienceIwilldispensethisadvicenowEnjoythepowerandbeautyofyouryouthOhnevermindYouwillnotunderstandthepowerandbeautyofyouryouthuntiltheyvefadedButtrustmein20yearsyoulllookbackatphotosofyourselfandrecallinawayyoucantgraspnowhowmuchpossibilitylaybeforeyouandhowfabulousyoureallylookedYouarenotasfatasyouimagineDontworryaboutthefutureOrworrybutknowthatKurtVonneguKurtVonnegutsCommencementAddressatMITLadiesandgentlemenoftheclassof97WearsunscreenIfIcouldofferyouonlyonetipforthefuturesunscreenwouldbeitThelongtermbenefitsofsunscreenhavebeenprovedbyscientistswhereastherestofmyadvicehasnobasismorereliablethanmyownmeanderingexperienceIwilldispensethisadvicenowEnjoythepowerandbeautyofyouryouthOhnevermindYouwillnotunderstandthepowerandbeautyofyouryouthuntiltheyvefadedButtrustmein20yearsyoulllookbackatphotosofyourselfandrecallinawayyoucantgraspnowhowmuchpossibilitylaybeforeyouandhowfabulousyoureallylookedYouarenotasfatasyouimagineDontworryaboutthefutureOrworrybutknowthatKurtVonnegutsCommencementAddressatMITLadiesandgentlemenoftheclassof97WearsunscreenIfIcouldofferyouonlyonetipforthefuturesunscreenwouldbeitThelongtermbenefitsofsunscreenhavebeenprovedbyscientistswhereastherestofmyadvicehasnobasismorereliablethanmyownmeanderingexperienceIwilldispensethisadvicenowEnjoythepowerandbeautyofyouryouthOhnevermindYouwillnotunderstandthepowerandbeautyofyouryouthuntiltheyvefadedButtrustmein20yearsyoulllookbackatphotosofyourselfandrecallinawayyoucantgraspnowhowmuchpossibilitylaybeforeyouandhowfabulousyoureallylookedYouarenotasfatasyouimagineDontworryaboutthefutureOrworrybutknowthatKurtVonnegutsCommencementAddressatMITLadiesandgentlemenoftheclassof97WearsunscreenIfIcouldofferyouonlyonetipforthefuturesunscreenwouldbeitThelongtermbenefitsofsunscreenhavebeenprovedbyscientistswhereastherestofmyadvicehasnobasismorereliablethanmyownmeanderingexperienceIwilldispensethisadvicenowEnjoythepowerandbeautyofyouryouthOhnevermindYouwillnotunderstandthepowerandbeautyofyouryouthuntiltheyvefadedButtrustmein20yearsyoulllookbackatphotosofyourselfandrecallinawayyoucantgraspnowhowmuchpossibilitylaybeforeyouandhowfabulousyoureallylookedYouarenotasfatasyouimagineDontworryaboutthefutureOrworrybutknowthattsCommencementAddressatMITLadiesandgentlemenoftheclassof97WearsunscreenIfIcouldofferyouonlyonetipforthefutureKurtVonnegutsCommencementAddressatMITLadiesandgentlemenoftheclassof97WearsunscreenIfIcouldofferyouonlyonetipforthefuturesunscreenwouldbeitThelongtermbenefitsofsunscreenhavebeenprovedbyscientistswhereastherestofmyadvicehasnobasismorereliablethanmyownmeanderingexperienceIwilldispensethisadvicenowEnjoythepowerandbeautyofyouryouthOhnevermindYouwillnotunderstandthepowerandbeautyofyouryouthuntiltheyvefadedButtrustmein20yearsyoulllookbackatphotosofyourselfandrecallinawayyoucantgraspnowhowmuchpossibilitylaybeforeyouandhowfabulousyoureallylookedYouarenotasfatasyouimagineDontworryaboutthefutureOrworrybutknowthatKurtVonnegutsCommencementAddressatMITLadiesandgentlemenoftheclassof97WearsunscreenIfIcouldofferyouonlyonetipforthefuturesunscreenwouldbeitThelongtermbenefitsofsunscreenhavebeenprovedbyscientistswhereastherestofmyadvicehasnobasismorereliablethanmyownmeanderingexperienceIwilldispensethisadvicenowEnjoythepowerandbeautyofyouryouthOhnevermindYouwillnotunderstandthepowerandbeautyofyouryouthuntiltheyvefadedButtrustmein20yearsyoulllookbackatphotosofyourselfandrecallinawayyoucantgraspnowhowmuchpossibilitylaybeforeyouandhowfabulousyoureallylookedYouarenotasfatasyouimagineDontworryaboutthefutureOrworrybutknowthatKurtVonnegutsCommencementAddressatMITLadiesandgentlemenoftheclassof97WearsunscreenIfIcouldofferyouonlyonetipforthefuturesunscreenwouldbeitThelongtermbenefitsofsunscreenhavebeenprovedbyscientistswhereastherestofmyadvicehasnobasismorereliablethanmyownmeanderingexperienceIwilldispensethisadvicenowEnjoythepowerandbeautyofyouryouthOhnevermindYouwillnotunderstandthepoweraKurtVonnegutsCommencementAddressatMITLadiesandgentlemenoftheclassof97WearsunscreenIfIcouldofferyouonlyonetipforthefuturesunscreenwouldbeitThelongtermbenefitsofsunscreenhavebeenprovedbyscientistswhereastherestofmyadvicehasnobasismorereliablethanmyownmeanderingexperienceIwilldispensethisadvicenowEnjoythepowerandbeautyofyouryouthOhnevermindYouwillnotunderstandthepowerandbeautyofyouryouthuntiltheyvefadedButtrustmein20yearsyoulllookbackatphotosofyourselfandrecallinawayyoucantgraspnowhowmuchpossibilitylaybeforeyouandhowfabulousyoureallylookedYouarenotasfatasyouimagineDontworryaboutthefutureOrworrybutknowthatKurtVonneguKurtVonnegutsCommencementAddressatMITLadiesandgentlemenoftheclassof97WearsunscreenIfIcouldofferyouonlyonetipforthefuturesunscreenwouldbeitThelongtermbenefitsofsunscreenhavebeenprovedbyscientistswhereastherestofmyadvicehasnobasismorereliablethanmyownmeanderingexperienceIwilldispensethisadvicenowEnjoythepowerandbeautyofyouryouthOhnevermindYouwillnotunderstandthepowerandbeautyofyouryouthuntiltheyvefadedButtrustmein20yearsyoulllookbackatphotosofyourselfandrecallinawayyoucantgraspnowhowmuchpossibilitylaybeforeyouandhowfabulousyoureallylookedYouarenotasfatasyouimagineDontworryaboutthefutureOrworrybutknowthatKurtVonnegutsCommencementAddressatMITLadiesandgentlemenoftheclassof97WearsunscreenIfIcouldofferyouonlyonetipforthefuturesunscreenwouldbeitThelongtermbenefitsofsunscreenhavebeenprovedbyscientistswhereastherestofmyadvicehasnobasismorereliablethanmyownmeanderingexperienceIwilldispensethisadvicenowEnjoythepowerandbeautyofyouryouthOhnevermindYouwillnotunderstandthepowerandbeautyofyouryou", [8192 x i8] c"thuntiltheyvefadedButtrustmein20yearsyoulllookbackatphotosofyourselfandrecallinawayyoucantgraspnowhowmuchpossibilitylaybeforeyouandhowfabulousyoureallylookedYouarenotasfatasyouimagineDontworryaboutthefutureOrworrybutknowthatKurtVonnegutsCommencementAddressatMITLadiesandgentlemenoftheclassof97WearsunscreenIfIcouldofferyouonlyonetipforthefuturesunscreenwouldbeitThelongtermbenefitsofsunscreenhavebeenprovedbyscientistswhereastherestofmyadvicehasnobasismorereliablethanmyownmeanderingexperienceIwilldispensethisadvicenowEnjoythepowerandbeautyofyouryouthOhnevermindYouwillnotunderstandthepowerandbeautyofyouryouthuntiltheyvefadedButtrustmein20yearsyoulllookbackatphotosofyourselfandrecallinawayyoucantgraspnowhowmuchpossibilitylaybeforeyouandhowfabulousyoureallylookedYouarenotasfatasyouimagineDontworryaboutthefutureOrworrybutknowthattsCommencementAddressatMITLadiesandgentlemenoftheclassof97WearsunscreenIfIcouldofferyouonlyonetipforthefutureKurtVonnegutsCommencementAddressatMITLadiesandgentlemenoftheclassof97WearsunscreenIfIcouldofferyouonlyonetipforthefuturesunscreenwouldbeitThelongtermbenefitsofsunscreenhavebeenprovedbyscientistswhereastherestofmyadvicehasnobasismorereliablethanmyownmeanderingexperienceIwilldispensethisadvicenowEnjoythepowerandbeautyofyouryouthOhnevermindYouwillnotunderstandthepowerandbeautyofyouryouthuntiltheyvefadedButtrustmein20yearsyoulllookbackatphotosofyourselfandrecallinawayyoucantgraspnowhowmuchpossibilitylaybeforeyouandhowfabulousyoureallylookedYouarenotasfatasyouimagineDontworryaboutthefutureOrworrybutknowthatKurtVonnegutsCommencementAddressatMITLadiesandgentlemenoftheclassof97WearsunscreenIfIcouldofferyouonlyonetipforthefuturesunscreenwouldbeitThelongtermbenefitsofsunscreenhavebeenprovedbyscientistswhereastherestofmyadvicehasnobasismorereliablethanmyownmeanderingexperienceIwilldispensethisadvicenowEnjoythepowerandbeautyofyouryouthOhnevermindYouwillnotunderstandthepowerandbeautyofyouryouthuntiltheyvefadedButtrustmein20yearsyoulllookbackatphotosofyourselfandrecallinawayyoucantgraspnowhowmuchpossibilitylaybeforeyouandhowfabulousyoureallylookedYouarenotasfatasyouimagineDontworryaboutthefutureOrworrybutknowthatKurtVonnegutsCommencementAddressatMITLadiesandgentlemenoftheclassof97WearsunscreenIfIcouldofferyouonlyonetipforthefuturesunscreenwouldbeitThelongtermbenefitsofsunscreenhavebeenprovedbyscientistswhereastherestofmyadvicehasnobasismorereliablethanmyownmeanderingexperienceIwilldispensethisadvicenowEnjoythepowerandbeautyofyouryouthOhnevermindYouwillnotunderstandthepoweraKurtVonnegutsCommencementAddressatMITLadiesandgentlemenoftheclassof97WearsunscreenIfIcouldofferyouonlyonetipforthefuturesunscreenwouldbeitThelongtermbenefitsofsunscreenhavebeenprovedbyscientistswhereastherestofmyadvicehasnobasismorereliablethanmyownmeanderingexperienceIwilldispensethisadvicenowEnjoythepowerandbeautyofyouryouthOhnevermindYouwillnotunderstandthepowerandbeautyofyouryouthuntiltheyvefadedButtrustmein20yearsyoulllookbackatphotosofyourselfandrecallinawayyoucantgraspnowhowmuchpossibilitylaybeforeyouandhowfabulousyoureallylookedYouarenotasfatasyouimagineDontworryaboutthefutureOrworrybutknowthatKurtVonneguKurtVonnegutsCommencementAddressatMITLadiesandgentlemenoftheclassof97WearsunscreenIfIcouldofferyouonlyonetipforthefuturesunscreenwouldbeitThelongtermbenefitsofsunscreenhavebeenprovedbyscientistswhereastherestofmyadvicehasnobasismorereliablethanmyownmeanderingexperienceIwilldispensethisadvicenowEnjoythepowerandbeautyofyouryouthOhnevermindYouwillnotunderstandthepowerandbeautyofyouryouthuntiltheyvefadedButtrustmein20yearsyoulllookbackatphotosofyourselfandrecallinawayyoucantgraspnowhowmuchpossibilitylaybeforeyouandhowfabulousyoureallylookedYouarenotasfatasyouimagineDontworryaboutthefutureOrworrybutknowthatKurtVonnegutsCommencementAddressatMITLadiesandgentlemenoftheclassof97WearsunscreenIfIcouldofferyouonlyonetipforthefuturesunscreenwouldbeitThelongtermbenefitsofsunscreenhavebeenprovedbyscientistswhereastherestofmyadvicehasnobasismorereliablethanmyownmeanderingexperienceIwilldispensethisadvicenowEnjoythepowerandbeautyofyouryouthOhnevermindYouwillnotunderstandthepowerandbeautyofyouryouthuntiltheyvefadedButtrustmein20yearsyoulllookbackatphotosofyourselfandrecallinawayyoucantgraspnowhowmuchpossibilitylaybeforeyouandhowfabulousyoureallylookedYouarenotasfatasyouimagineDontworryaboutthefutureOrworrybutknowthatKurtVonnegutsCommencementAddressatMITLadiesandgentlemenoftheclassof97WearsunscreenIfIcouldofferyouonlyonetipforthefuturesunscreenwouldbeitThelongtermbenefitsofsunscreenhavebeenprovedbyscientistswhereastherestofmyadvicehasnobasismorereliablethanmyownmeanderingexperienceIwilldispensethisadvicenowEnjoythepowerandbeautyofyouryouthOhnevermindYouwillnotunderstandthepowerandbeautyofyouryouthuntiltheyvefadedButtrustmein20yearsyoulllookbackatphotosofyourselfandrecallinawayyoucantgraspnowhowmuchpossibilitylaybeforeyouandhowfabulousyoureallylookedYouarenotasfatasyouimagineDontworryaboutthefutureOrworrybutknowthattsCommencementAddressatMITLadiesandgentlemenoftheclassof97WearsunscreenIfIcouldofferyouonlyonetipforthefutureKurtVonnegutsCommencementAddressatMITLadiesandgentlemenoftheclassof97WearsunscreenIfIcouldofferyouonlyonetipforthefuturesunscreenwouldbeitThelongtermbenefitsofsunscreenhavebeenprovedbyscientistswhereastherestofmyadvicehasnobasismorereliablethanmyownmeanderingexperienceIwilldispensethisadvicenowEnjoythepowerandbeautyofyouryouthOhnevermindYouwillnotunderstandthepowerandbeautyofyouryouthuntiltheyvefadedButtrustmein20yearsyoulllookbackatphotosofyourselfandrecallinawayyoucantgraspnowhowmuchpossibilitylaybeforeyouandhowfabulousyoureallylookedYouarenotasfatasyouimagineDontworryaboutthefutureOrworrybutknowthatKurtVonnegutsCommencementAddressatMITLadiesandgentlemenoftheclassof97WearsunscreenIfIcouldofferyouonlyonetipforthefuturesunscreenwouldbeitThelongtermbenefitsofsunscreenhavebeenprovedbyscientistswhereastherestofmyadvicehasnobasismorereliablethanmyownmeanderingexperienceIwilldispensethisadvicenowEnjoythepowerandbeautyofyouryouthOhnevermindYouwillnotunderstandthepowerandbeautyofyouryouthuntiltheyvefadedButtrustmein20yearsyoulllookbackatphotosofyourselfandrecallinawayyoucantgraspnowhowmuchpossibilitylaybeforeyouandhowfabulousyoureallylookedYouarenotasfatasyouimagineDontworryaboutthefutureOrworrybutknowthatKurtVonnegutsCommencementAddressatMITLadiesandgentlemenoftheclassof97WearsunscreenIfIcouldofferyouonlyonetipforthefuturesunscreenwouldbeitThelongtermbenefitsofsunscreenhavebeenprovedbyscientistswhereastherestofmyadvicehasnobasismorereliablethanmyownmeanderingexperienceIwilldispensethisadvicenowEnjoythepowerandbeautyofyouryouthOhnevermindYouwillnotunderstandthepowerandbeautyofyouryouthuntiltheyvefadedButtrustmein20yearsyoulllookbackatphotosofyourselfandrecallinawayyoucantgraspnowhowmuchpossibilitylaybeforeyouandhowfabulousyoureallylookedYouarenotasfatasyouimagineDontworryaboutthefutureOrworrybutknowthatsunscreenwouldbeitThelongtermbenefitsofsunscreenhavebeenprovedbyscientistswhereastherestofmyadvicehasnobasismorereliablethanmyownmeanderingexperienceIwilldispensethisadvicenowEnjoythepowerandbeautyofyouryouthOhnevermindYouwillnotunderstandthepowerandbeautyofyouryouthuntiltheyvefadedButtrustmein20yearsyoulllookbackatphotosofyourselfandrecallinawayyoucantgraspnowhowmuchpossibilitylaybeforeyouandhowfabulousyoureallylookedYouarenotasfatasyouimagineDontworryaboutthefutureOrworrybutknowthatndbeautyofyouryouthuntiltheyvefadedButtrustmein20yearsyoulllookbackatphotosofyourselfandrecallinawayyoucantgraspnowhowmuchpossibilitylaybeforeyouandhowfabulousyoureallylookedYouarenotasfatasyouimagineDontworryaboutthefutureOrworrybutknowthatsunscreenwouldbeitThelongtermbenefitsofsunscreenhavebeenprovedbyscientistswhereastherestofmyadvicehasnobasismorereliablethanmyownmeanderingexperienceIwilldispensethisadvicenowEnjoythepowerandbeautyofyouryouthOhnevermindYouwillnotunderstandthepowerandbeautyofyouryouthuntiltheyvefadedButtrustmein20yearsyoulllookbackatphotosofyourselfandrecallinawayyoucantgraspnowhowmuchpossibilitylaybeforeyouandhowfabulousyoureallylookedYouarenotasfatasyouimagineDontworryaboutthefutureOrworrybutknowthatndbeautyofyouryouthuntiltheyvefadedButtrustmein20yearsyoullloo"], align 16
@sha_info_digest.0 = common local_unnamed_addr global i32 0, align 16
@sha_info_digest.1 = common local_unnamed_addr global i32 0, align 16
@sha_info_digest.2 = common local_unnamed_addr global i32 0, align 16
@sha_info_digest.3 = common local_unnamed_addr global i32 0, align 16
@sha_info_digest.4 = common local_unnamed_addr global i32 0, align 16
@sha_info_count_lo = common local_unnamed_addr global i32 0, align 4
@sha_info_count_hi = common local_unnamed_addr global i32 0, align 4
@sha_info_data = common global [16 x i32] zeroinitializer, align 16
@.str = private unnamed_addr constant [12 x i8] c"Result: %d\0A\00", align 1

; Function Attrs: noinline nounwind ssp uwtable
define i32 @main() local_unnamed_addr #0 {
entry:
  store i32 1732584193, i32* @sha_info_digest.0, align 16
  store i32 -271733879, i32* @sha_info_digest.1, align 16
  store i32 -1732584194, i32* @sha_info_digest.2, align 16
  store i32 271733878, i32* @sha_info_digest.3, align 16
  store i32 -1009589776, i32* @sha_info_digest.4, align 16
  store i32 0, i32* @sha_info_count_lo, align 4
  store i32 0, i32* @sha_info_count_hi, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %sha_update.v0.C.c.exit, %entry
  %0 = phi i32 [ 0, %entry ], [ %8, %sha_update.v0.C.c.exit ]
  %1 = phi i32 [ 0, %entry ], [ %7, %sha_update.v0.C.c.exit ]
  %indvars.iv.i = phi i64 [ 0, %entry ], [ %indvars.iv.next.i, %sha_update.v0.C.c.exit ]
  %arrayidx3.i = getelementptr inbounds [2 x [8192 x i8]], [2 x [8192 x i8]]* @indata, i64 0, i64 %indvars.iv.i, i64 0
  %add.i = add i32 %1, 65536
  %cmp.i = icmp ugt i32 %1, -65537
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  %inc.i = add i32 %0, 1
  store i32 %inc.i, i32* @sha_info_count_hi, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i
  %2 = phi i32 [ %inc.i, %if.then.i ], [ %0, %for.body.i ]
  store i32 %add.i, i32* @sha_info_count_lo, align 4
  store i32 %2, i32* @sha_info_count_hi, align 4
  br label %while.body.i

while.body.i:                                     ; preds = %local_memcpy.v0.C.c.exit, %if.end.i
  %buffer.addr.03.i = phi i8* [ %add.ptr.i, %local_memcpy.v0.C.c.exit ], [ %arrayidx3.i, %if.end.i ]
  %count.addr.02.i = phi i32 [ %sub.i, %local_memcpy.v0.C.c.exit ], [ 8192, %if.end.i ]
  br label %while.body.i8

while.body.i8:                                    ; preds = %while.body.i8, %while.body.i
  %m.04.i = phi i32 [ %dec.i, %while.body.i8 ], [ 16, %while.body.i ]
  %p2.03.i = phi i8* [ %incdec.ptr11.i, %while.body.i8 ], [ %buffer.addr.03.i, %while.body.i ]
  %p1.02.i = phi i32* [ %incdec.ptr16.i, %while.body.i8 ], [ getelementptr inbounds ([16 x i32], [16 x i32]* @sha_info_data, i64 0, i64 0), %while.body.i ]
  %dec.i = add nsw i32 %m.04.i, -1
  %incdec.ptr.i = getelementptr inbounds i8, i8* %p2.03.i, i64 1
  %3 = load i8, i8* %p2.03.i, align 1
  %conv.i = zext i8 %3 to i32
  %incdec.ptr2.i = getelementptr inbounds i8, i8* %p2.03.i, i64 2
  %4 = load i8, i8* %incdec.ptr.i, align 1
  %conv3.i = zext i8 %4 to i32
  %shl.i = shl nuw nsw i32 %conv3.i, 8
  %or5.i = or i32 %shl.i, %conv.i
  %incdec.ptr6.i = getelementptr inbounds i8, i8* %p2.03.i, i64 3
  %5 = load i8, i8* %incdec.ptr2.i, align 1
  %conv7.i = zext i8 %5 to i32
  %shl9.i = shl nuw nsw i32 %conv7.i, 16
  %or10.i = or i32 %or5.i, %shl9.i
  %incdec.ptr11.i = getelementptr inbounds i8, i8* %p2.03.i, i64 4
  %6 = load i8, i8* %incdec.ptr6.i, align 1
  %conv12.i = zext i8 %6 to i32
  %shl14.i = shl nuw i32 %conv12.i, 24
  %or15.i = or i32 %or10.i, %shl14.i
  store i32 %or15.i, i32* %p1.02.i, align 4
  %incdec.ptr16.i = getelementptr inbounds i32, i32* %p1.02.i, i64 1
  %cmp.i7 = icmp sgt i32 %m.04.i, 1
  br i1 %cmp.i7, label %while.body.i8, label %local_memcpy.v0.C.c.exit

local_memcpy.v0.C.c.exit:                         ; preds = %while.body.i8
  tail call fastcc void @sha_transform.v0.C.c.c() #4
  %add.ptr.i = getelementptr inbounds i8, i8* %buffer.addr.03.i, i64 64
  %sub.i = add nsw i32 %count.addr.02.i, -64
  %cmp4.i = icmp sgt i32 %sub.i, 63
  br i1 %cmp4.i, label %while.body.i, label %sha_update.v0.C.c.exit

sha_update.v0.C.c.exit:                           ; preds = %local_memcpy.v0.C.c.exit
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.i = icmp eq i64 %indvars.iv.next.i, 2
  %7 = load i32, i32* @sha_info_count_lo, align 4
  %8 = load i32, i32* @sha_info_count_hi, align 4
  br i1 %exitcond.i, label %sha_stream.v0.C.c.exit, label %for.body.i

sha_stream.v0.C.c.exit:                           ; preds = %sha_update.v0.C.c.exit
  %shr.i = lshr i32 %7, 3
  %and.i = and i32 %shr.i, 63
  %inc.i9 = add nuw nsw i32 %and.i, 1
  %idxprom1.i = zext i32 %and.i to i64
  %arrayidx.i = getelementptr inbounds [16 x i32], [16 x i32]* @sha_info_data, i64 0, i64 %idxprom1.i
  store i32 128, i32* %arrayidx.i, align 4
  %cmp.i10 = icmp ugt i32 %inc.i9, 56
  br i1 %cmp.i10, label %if.then.i12, label %if.else.i

if.then.i12:                                      ; preds = %sha_stream.v0.C.c.exit
  %sub.i11 = xor i32 %and.i, 63
  tail call void @local_memset.v0.C.c.c(i32* getelementptr inbounds ([16 x i32], [16 x i32]* @sha_info_data, i64 0, i64 0), i32 %sub.i11, i32 %inc.i9) #4
  tail call fastcc void @sha_transform.v0.C.c.c() #4
  tail call void @local_memset.v0.C.c.c(i32* getelementptr inbounds ([16 x i32], [16 x i32]* @sha_info_data, i64 0, i64 0), i32 56, i32 0) #4
  br label %sha_final.v0.C.c.exit

if.else.i:                                        ; preds = %sha_stream.v0.C.c.exit
  %sub1.i = sub nsw i32 55, %and.i
  tail call void @local_memset.v0.C.c.c(i32* getelementptr inbounds ([16 x i32], [16 x i32]* @sha_info_data, i64 0, i64 0), i32 %sub1.i, i32 %inc.i9) #4
  br label %sha_final.v0.C.c.exit

sha_final.v0.C.c.exit:                            ; preds = %if.then.i12, %if.else.i
  store i32 %8, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @sha_info_data, i64 0, i64 14), align 8
  store i32 %7, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @sha_info_data, i64 0, i64 15), align 4
  tail call fastcc void @sha_transform.v0.C.c.c() #4
  %9 = load i32, i32* @sha_info_digest.0, align 16
  %cmp346 = icmp ne i32 %9, 6969911
  %conv47 = zext i1 %cmp346 to i32
  %10 = load i32, i32* @sha_info_digest.1, align 16
  %cmp353 = icmp ne i32 %10, -1814260603
  %conv54 = zext i1 %cmp353 to i32
  %11 = load i32, i32* @sha_info_digest.2, align 16
  %cmp360 = icmp ne i32 %11, 742465810
  %conv61 = zext i1 %cmp360 to i32
  %12 = load i32, i32* @sha_info_digest.3, align 16
  %cmp367 = icmp ne i32 %12, 1677179459
  %conv68 = zext i1 %cmp367 to i32
  br label %for.body.outer

for.body.outer:                                   ; preds = %for.body.outer.backedge, %sha_final.v0.C.c.exit
  %main_result.06.ph = phi i32 [ 0, %sha_final.v0.C.c.exit ], [ %add48, %for.body.outer.backedge ]
  %i.05.ph = phi i32 [ 0, %sha_final.v0.C.c.exit ], [ %i.05.ph.be, %for.body.outer.backedge ]
  br label %for.body

for.body:                                         ; preds = %for.body.outer, %__non_const_wrapper__.8.exit
  %i.05 = phi i32 [ %inc, %__non_const_wrapper__.8.exit ], [ %i.05.ph, %for.body.outer ]
  switch i32 %i.05, label %__non_const_wrapper__.8.exit [
    i32 0, label %for.body.outer.backedge.loopexit84
    i32 1, label %for.body.outer.backedge.loopexit
    i32 2, label %__non_const_wrapper__.exit.thread44
    i32 3, label %__non_const_wrapper__.exit.thread45
    i32 4, label %__non_const_wrapper__.8.exit.thread72
  ]

for.body.outer.backedge.loopexit:                 ; preds = %for.body
  br label %for.body.outer.backedge

for.body.outer.backedge.loopexit84:               ; preds = %for.body
  br label %for.body.outer.backedge

for.body.outer.backedge:                          ; preds = %for.body.outer.backedge.loopexit84, %for.body.outer.backedge.loopexit, %__non_const_wrapper__.exit.thread44, %__non_const_wrapper__.exit.thread45
  %conv47.sink = phi i32 [ %conv61, %__non_const_wrapper__.exit.thread44 ], [ %conv68, %__non_const_wrapper__.exit.thread45 ], [ %conv54, %for.body.outer.backedge.loopexit ], [ %conv47, %for.body.outer.backedge.loopexit84 ]
  %i.05.ph.be = phi i32 [ 3, %__non_const_wrapper__.exit.thread44 ], [ 4, %__non_const_wrapper__.exit.thread45 ], [ 2, %for.body.outer.backedge.loopexit ], [ 1, %for.body.outer.backedge.loopexit84 ]
  %add48 = add nsw i32 %conv47.sink, %main_result.06.ph
  br label %for.body.outer

__non_const_wrapper__.exit.thread44:              ; preds = %for.body
  br label %for.body.outer.backedge

__non_const_wrapper__.exit.thread45:              ; preds = %for.body
  br label %for.body.outer.backedge

__non_const_wrapper__.8.exit.thread72:            ; preds = %for.body
  %13 = load i32, i32* @sha_info_digest.4, align 16
  %cmp373 = icmp ne i32 %13, -1384908510
  %conv74 = zext i1 %cmp373 to i32
  %add75 = add nsw i32 %conv74, %main_result.06.ph
  br label %for.end

__non_const_wrapper__.8.exit:                     ; preds = %for.body
  %inc = add nuw nsw i32 %i.05, 1
  %exitcond = icmp eq i32 %inc, 5
  br i1 %exitcond, label %for.end.loopexit, label %for.body

for.end.loopexit:                                 ; preds = %__non_const_wrapper__.8.exit
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %__non_const_wrapper__.8.exit.thread72
  %add78 = phi i32 [ %add75, %__non_const_wrapper__.8.exit.thread72 ], [ %main_result.06.ph, %for.end.loopexit ]
  %call = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %add78)
  ret i32 %add78
}

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #2

; Function Attrs: noinline nounwind
define internal fastcc void @sha_transform.v0.C.c.c() unnamed_addr #3 {
entry:
  %W = alloca [80 x i32], align 16
  %W47 = bitcast [80 x i32]* %W to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %W47, i8* bitcast ([16 x i32]* @sha_info_data to i8*), i64 64, i32 16, i1 false)
  br label %for.body5

for.body5:                                        ; preds = %for.body5, %entry
  %indvars.iv37 = phi i64 [ 16, %entry ], [ %indvars.iv.next38, %for.body5 ]
  %0 = add nsw i64 %indvars.iv37, -3
  %arrayidx7 = getelementptr inbounds [80 x i32], [80 x i32]* %W, i64 0, i64 %0
  %1 = load i32, i32* %arrayidx7, align 4
  %2 = add nsw i64 %indvars.iv37, -8
  %arrayidx10 = getelementptr inbounds [80 x i32], [80 x i32]* %W, i64 0, i64 %2
  %3 = load i32, i32* %arrayidx10, align 4
  %xor = xor i32 %3, %1
  %4 = add nsw i64 %indvars.iv37, -14
  %arrayidx13 = getelementptr inbounds [80 x i32], [80 x i32]* %W, i64 0, i64 %4
  %5 = load i32, i32* %arrayidx13, align 4
  %xor14 = xor i32 %xor, %5
  %6 = add nsw i64 %indvars.iv37, -16
  %arrayidx17 = getelementptr inbounds [80 x i32], [80 x i32]* %W, i64 0, i64 %6
  %7 = load i32, i32* %arrayidx17, align 4
  %xor18 = xor i32 %xor14, %7
  %arrayidx20 = getelementptr inbounds [80 x i32], [80 x i32]* %W, i64 0, i64 %indvars.iv37
  store i32 %xor18, i32* %arrayidx20, align 4
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1
  %exitcond43 = icmp eq i64 %indvars.iv.next38, 80
  br i1 %exitcond43, label %for.end23, label %for.body5

for.end23:                                        ; preds = %for.body5
  %8 = load i32, i32* @sha_info_digest.0, align 16
  %9 = load i32, i32* @sha_info_digest.1, align 16
  %10 = load i32, i32* @sha_info_digest.2, align 16
  %11 = load i32, i32* @sha_info_digest.3, align 16
  %12 = load i32, i32* @sha_info_digest.4, align 16
  br label %for.inc38

for.inc38:                                        ; preds = %for.inc38, %for.end23
  %indvars.iv34 = phi i64 [ 0, %for.end23 ], [ %indvars.iv.next35, %for.inc38 ]
  %A.024 = phi i32 [ %8, %for.end23 ], [ %add33, %for.inc38 ]
  %B.023 = phi i32 [ %9, %for.end23 ], [ %A.024, %for.inc38 ]
  %C.022 = phi i32 [ %10, %for.end23 ], [ %or37, %for.inc38 ]
  %D.021 = phi i32 [ %11, %for.end23 ], [ %C.022, %for.inc38 ]
  %E.020 = phi i32 [ %12, %for.end23 ], [ %D.021, %for.inc38 ]
  %shl35 = shl i32 %B.023, 30
  %shr36 = lshr i32 %B.023, 2
  %or37 = or i32 %shl35, %shr36
  %shl = shl i32 %A.024, 5
  %shr = lshr i32 %A.024, 27
  %or = or i32 %shl, %shr
  %and = and i32 %C.022, %B.023
  %neg = xor i32 %B.023, -1
  %and27 = and i32 %D.021, %neg
  %or28 = or i32 %and27, %and
  %arrayidx31 = getelementptr inbounds [80 x i32], [80 x i32]* %W, i64 0, i64 %indvars.iv34
  %13 = load i32, i32* %arrayidx31, align 4
  %add = add i32 %or, 1518500249
  %add29 = add i32 %add, %E.020
  %add32 = add i32 %add29, %or28
  %add33 = add i32 %add32, %13
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1
  %exitcond36 = icmp eq i64 %indvars.iv.next35, 20
  br i1 %exitcond36, label %for.inc61.preheader, label %for.inc38

for.inc61.preheader:                              ; preds = %for.inc38
  br label %for.inc61

for.inc61:                                        ; preds = %for.inc61.preheader, %for.inc61
  %indvars.iv31 = phi i64 [ %indvars.iv.next32, %for.inc61 ], [ 20, %for.inc61.preheader ]
  %A.118 = phi i32 [ %add56, %for.inc61 ], [ %add33, %for.inc61.preheader ]
  %B.117 = phi i32 [ %A.118, %for.inc61 ], [ %A.024, %for.inc61.preheader ]
  %C.116 = phi i32 [ %or60, %for.inc61 ], [ %or37, %for.inc61.preheader ]
  %D.115 = phi i32 [ %C.116, %for.inc61 ], [ %C.022, %for.inc61.preheader ]
  %E.114 = phi i32 [ %D.115, %for.inc61 ], [ %D.021, %for.inc61.preheader ]
  %shl58 = shl i32 %B.117, 30
  %shr59 = lshr i32 %B.117, 2
  %or60 = or i32 %shl58, %shr59
  %shl45 = shl i32 %A.118, 5
  %shr46 = lshr i32 %A.118, 27
  %or47 = or i32 %shl45, %shr46
  %xor48 = xor i32 %C.116, %B.117
  %xor49 = xor i32 %xor48, %D.115
  %arrayidx53 = getelementptr inbounds [80 x i32], [80 x i32]* %W, i64 0, i64 %indvars.iv31
  %14 = load i32, i32* %arrayidx53, align 4
  %add50 = add i32 %or47, 1859775393
  %add51 = add i32 %add50, %E.114
  %add54 = add i32 %add51, %xor49
  %add56 = add i32 %add54, %14
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1
  %exitcond33 = icmp eq i64 %indvars.iv.next32, 40
  br i1 %exitcond33, label %for.inc87.preheader, label %for.inc61

for.inc87.preheader:                              ; preds = %for.inc61
  br label %for.inc87

for.inc87:                                        ; preds = %for.inc87.preheader, %for.inc87
  %indvars.iv28 = phi i64 [ %indvars.iv.next29, %for.inc87 ], [ 40, %for.inc87.preheader ]
  %A.212 = phi i32 [ %add82, %for.inc87 ], [ %add56, %for.inc87.preheader ]
  %B.211 = phi i32 [ %A.212, %for.inc87 ], [ %A.118, %for.inc87.preheader ]
  %C.210 = phi i32 [ %or86, %for.inc87 ], [ %or60, %for.inc87.preheader ]
  %D.29 = phi i32 [ %C.210, %for.inc87 ], [ %C.116, %for.inc87.preheader ]
  %E.28 = phi i32 [ %D.29, %for.inc87 ], [ %D.115, %for.inc87.preheader ]
  %shl84 = shl i32 %B.211, 30
  %shr85 = lshr i32 %B.211, 2
  %or86 = or i32 %shl84, %shr85
  %shl68 = shl i32 %A.212, 5
  %shr69 = lshr i32 %A.212, 27
  %or70 = or i32 %shl68, %shr69
  %and721 = or i32 %D.29, %C.210
  %or73 = and i32 %and721, %B.211
  %and74 = and i32 %D.29, %C.210
  %or75 = or i32 %or73, %and74
  %arrayidx79 = getelementptr inbounds [80 x i32], [80 x i32]* %W, i64 0, i64 %indvars.iv28
  %15 = load i32, i32* %arrayidx79, align 4
  %add76 = add i32 %or70, -1894007588
  %add77 = add i32 %add76, %E.28
  %add80 = add i32 %add77, %15
  %add82 = add i32 %add80, %or75
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, 1
  %exitcond30 = icmp eq i64 %indvars.iv.next29, 60
  br i1 %exitcond30, label %for.inc110.preheader, label %for.inc87

for.inc110.preheader:                             ; preds = %for.inc87
  br label %for.inc110

for.inc110:                                       ; preds = %for.inc110.preheader, %for.inc110
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc110 ], [ 60, %for.inc110.preheader ]
  %A.36 = phi i32 [ %add105, %for.inc110 ], [ %add82, %for.inc110.preheader ]
  %B.35 = phi i32 [ %A.36, %for.inc110 ], [ %A.212, %for.inc110.preheader ]
  %C.34 = phi i32 [ %or109, %for.inc110 ], [ %or86, %for.inc110.preheader ]
  %D.33 = phi i32 [ %C.34, %for.inc110 ], [ %C.210, %for.inc110.preheader ]
  %E.32 = phi i32 [ %D.33, %for.inc110 ], [ %D.29, %for.inc110.preheader ]
  %shl107 = shl i32 %B.35, 30
  %shr108 = lshr i32 %B.35, 2
  %or109 = or i32 %shl107, %shr108
  %shl94 = shl i32 %A.36, 5
  %shr95 = lshr i32 %A.36, 27
  %or96 = or i32 %shl94, %shr95
  %xor97 = xor i32 %C.34, %B.35
  %xor98 = xor i32 %xor97, %D.33
  %arrayidx102 = getelementptr inbounds [80 x i32], [80 x i32]* %W, i64 0, i64 %indvars.iv
  %16 = load i32, i32* %arrayidx102, align 4
  %add99 = add i32 %or96, -899497514
  %add100 = add i32 %add99, %E.32
  %add103 = add i32 %add100, %xor98
  %add105 = add i32 %add103, %16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 80
  br i1 %exitcond, label %for.end112, label %for.inc110

for.end112:                                       ; preds = %for.inc110
  %add113 = add i32 %add105, %8
  store i32 %add113, i32* @sha_info_digest.0, align 16
  %add114 = add i32 %A.36, %9
  store i32 %add114, i32* @sha_info_digest.1, align 16
  %add115 = add i32 %or109, %10
  store i32 %add115, i32* @sha_info_digest.2, align 16
  %add116 = add i32 %C.34, %11
  store i32 %add116, i32* @sha_info_digest.3, align 16
  %add117 = add i32 %D.33, %12
  store i32 %add117, i32* @sha_info_digest.4, align 16
  ret void
}

; Function Attrs: noinline nounwind
define void @local_memset.v0.C.c.c(i32* nocapture %s, i32 %n, i32 %e) local_unnamed_addr #3 {
entry:
  %div = sdiv i32 %n, 4
  %cmp4 = icmp sgt i32 %e, 0
  br i1 %cmp4, label %while.body.preheader, label %while.cond1.preheader

while.body.preheader:                             ; preds = %entry
  %0 = xor i32 %e, -1
  %1 = icmp sgt i32 %0, -2
  %smax8 = select i1 %1, i32 %0, i32 -2
  %2 = add i32 %e, 1
  %3 = add i32 %2, %smax8
  %4 = zext i32 %3 to i64
  %5 = add nuw nsw i64 %4, 1
  %scevgep = getelementptr i32, i32* %s, i64 %5
  br label %while.cond1.preheader

while.cond1.preheader:                            ; preds = %while.body.preheader, %entry
  %p.0.lcssa = phi i32* [ %s, %entry ], [ %scevgep, %while.body.preheader ]
  %cmp31 = icmp sgt i32 %n, 3
  br i1 %cmp31, label %while.body4.preheader, label %while.end6

while.body4.preheader:                            ; preds = %while.cond1.preheader
  %p.0.lcssa7 = bitcast i32* %p.0.lcssa to i8*
  %6 = xor i32 %div, -1
  %7 = icmp sgt i32 %6, -2
  %smax = select i1 %7, i32 %6, i32 -2
  %8 = add nsw i32 %div, 1
  %9 = add nsw i32 %8, %smax
  %10 = zext i32 %9 to i64
  %11 = shl nuw nsw i64 %10, 2
  %12 = add nuw nsw i64 %11, 4
  tail call void @llvm.memset.p0i8.i64(i8* %p.0.lcssa7, i8 0, i64 %12, i32 4, i1 false)
  br label %while.end6

while.end6:                                       ; preds = %while.body4.preheader, %while.cond1.preheader
  ret void
}

attributes #0 = { noinline nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noinline nounwind }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
